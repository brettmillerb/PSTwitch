function Get-TwitchUserEvents {
    [CmdletBinding()]
    param (
        [string]
        $UserName,

        $Token = $script:Token
    )

    $eventsUri = '{0}/v5/channels/{1}/events' -f 
}

$token = Import-Clixml -Path 'C:\Users\brett.miller\OneDrive - Sage Software, Inc\Desktop\TwitchToken.xml'

$uri = 'https://api.twitch.tv/v5/channels/81844533/events'

$Headers = @{"Client-ID" = $Token}

$result = Invoke-RestMethod -Method Get -Uri $uri -Headers $Headers

$result.events