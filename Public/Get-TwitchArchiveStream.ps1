function Get-TwitchArchiveStream {
    [CmdletBinding(DefaultParameterSetName = 'Standard')]
    param (
        [Parameter(Mandatory,
            ParameterSetName = 'Standard')]
        [string]
        $UserName,

        [Parameter(Mandatory,
            ParameterSetName = 'Pipeline',
            ValueFromPipeline,
            ValueFromPipelineByPropertyName)]
        [psobject]
        $InputObject,

        $Token = $Script:Token
    )

    process {
        foreach ($user in $InputObject) {
            $archiveUri = "{0}/videos?user_id={1}" -f $Script:Uri, $user.UserID
            
            $archiveResults = Invoke-RestMethod -Uri $archiveUri -Headers $script:Headers
            
            $archiveResults.data | ForEach-Object {
                [PSCustomObject]@{
                    UserName    = $_.user_name
                    StreamTitle = $_.title
                    Url         = $_.url
                }
            }
        }
        if ($PSBoundParameters.ContainsKey('UserName')) {
            $userId = Get-TwitchUser -UserName $UserName | Select-Object -ExpandProperty UserId
            $archiveUri = "{0}/videos?user_id={1}" -f $Script:Uri, $userId
            
            $archiveResults = Invoke-RestMethod -Uri $archiveUri -Headers $script:Headers
            
            if ($archiveResults.data) {
                $archiveResults.data | ForEach-Object {
                    [PSCustomObject]@{
                        UserName    = $_.user_name
                        StreamTitle = $_.title
                        Url         = $_.url
                    }
                }
            }
        }
    }
}