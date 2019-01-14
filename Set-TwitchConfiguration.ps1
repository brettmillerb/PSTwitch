function Set-TwitchConfiguration {
    [CmdletBinding()]
    param (
        [string]
        $Token
    )

    $Script:Token = $Token
    $Script:Uri = "https://api.twitch.tv/helix"
    $Script:Headers = @{"Client-ID" = $Token}
}