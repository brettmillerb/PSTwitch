function Get-TwitchFollowers {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory,
            ParameterSetName = 'Standard',
            ValueFromPipeline,
            ValueFromPipelineByPropertyName)]
        $UserName,

        [switch]
        $All,

        $Token = $Script:Token
    )

    $userId = Get-TwitchUser -UserName $UserName | Select-Object -ExpandProperty UserId
    $followersUri = "{0}/users/follows?to_id={1}" -f $Script:Uri, $userId

    $invokeRestMethodSplat = @{
        Method  = 'Get'
        Headers = $Script:Headers
        Uri     = $followersUri
    }

    $followersResult = Invoke-RestMethod @invokeRestMethodSplat

    if ($All) {
        while ($followersResult.data) {
            $followLinkUri = "{0}&after={1}" -f $Script:Uri, $followersResult.pagination.cursor
            $followLinkResult = Invoke-RestMethod -Uri $followLinkUri -Headers $Script:Headers
            $null = $followersResult.Add($followLinkResult)
        }
    }
    $followersResult.data | ForEach-Object {
        [PSCustomObject]@{
            UserName   = $_.from_name
            UserId     = $_.from_id
            FollowedAt = $_.followed_at
        }
    }
}