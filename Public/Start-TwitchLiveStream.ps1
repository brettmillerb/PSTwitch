function Start-TwitchLiveStream {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory,
            ParameterSetName = 'Standard')]
        $username,

        [Parameter(Mandatory,
            ParameterSetName = 'Pipeline',
            ValueFromPipeline)]
        $InputObject
    )
    process {
        if ($PSCmdlet.ParameterSetName -eq 'Pipeline') {
            $streamer = $_.UserName
        }
        else {
            $streamer = $username
        }
        $liveStreamUri = "{0}/{1}" -f 'https://twitch.tv', $streamer
    }
    end {
        Start-Process -FilePath $liveStreamUri
    }
}