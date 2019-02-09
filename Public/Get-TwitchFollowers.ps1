function Get-TwitchFollowers {
    [CmdletBinding(DefaultParameterSetName = 'Standard')]
    param (
        [parameter(Mandatory,
            ParameterSetName = 'Standard')]
        [string]
        $UserName,

        [Parameter(Mandatory,
            ParameterSetName = 'Pipeline',
            ValueFromPipeline,
            ValueFromPipelineByPropertyName)]
        $InputObject,

        [switch]
        $All,

        $Token = $Script:Token
    )

    process {
        if ($PSCmdlet.ParameterSetName -eq 'Pipeline') {
            $userId = Get-TwitchUser -UserName $_.UserName
            $followersUri = "{0}/users/follows?to_id={1}" -f $Script:Uri, $_.UserId
        }
        else {
            $userId = Get-TwitchUser -UserName $UserName | Select-Object -ExpandProperty UserId
            $followersUri = "{0}/users/follows?to_id={1}" -f $Script:Uri, $userId
        }

        $followersResult = [System.Collections.Generic.List[psobject]]::new()
        $results = Invoke-RestMethod -Uri $followersUri -Headers $Script:Headers
        $cursor = $results.pagination.cursor
        $followersResult.Add($results.data)
        if ($all) {
            do {
                $cursorURI = "{0}&after={1}" -f $followersURI, $cursor
                $results = Invoke-RestMethod -Uri $cursorURI -Headers $script:Headers
                $followersResult.Add($results.data)
                $cursor = $results.pagination.cursor
                if (-not $cursor) {
                    break
                }
            }
            until ($followersResult.Count -eq $Results.total)
        }
    }
    end {
        $followersResult | ForEach-Object {
            $_ | Select-Object -property @(
                @{name='FollowerUserId';expression={$_.from_id}},
                @{name='FollowerUserName';expression={$_.from_name}},
                @{name='UserName';expression={$_.to_name}},
                @{name='FollowedOn';expression={$_.followed_at}}
            )
        }
    }
}