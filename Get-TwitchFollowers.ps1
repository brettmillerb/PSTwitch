function Get-TwitchFollowers {
    [CmdletBinding()]
    param (
        $UserName,

        $Token = $Script:Token
    )

    $userId = Get-TwitchUser -UserName $UserName | Select-Object -ExpandProperty UserId
    $followersUri = "{0}/users/follows?to_id={1}" -f $Script:Uri, $userId

    $followersUri | Write-Verbose

    $followersResult = Invoke-RestMethod -Uri $followersUri -Headers $Script:Headers -Method Get

    if ($followersResult.data) {
        $followersResult.data | ForEach-Object {
            [PSCustomObject]@{
                UserName   = $_.from_name
                UserId     = $_.from_id
                FollowedAt = $_.followed_at
            }
        }
    }
}