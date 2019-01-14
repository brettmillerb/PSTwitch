function Get-TwitchLiveStream {
    [CmdletBinding()]
    param (
        $UserName,
        $Token = $Script:Token
    )

    $streamsUri = "{0}/streams?user_login={1}" -f $Script:Uri, $UserName

    $streamsResults = Invoke-RestMethod -Uri $streamsUri -Headers $script:Headers

    if ($streamsResults.data) {
        [PSCustomObject]@{
            UserName    = $streamsResults.data.user_name
            StreamTitle = $streamsResults.data.title
            ViewerCount = $streamsResults.data.viewer_count
            StartedAt   = $streamsResults.data.started_at
        }
    }
    else {
        "No Live Stream Available"
    }
}