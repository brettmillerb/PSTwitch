---
external help file: PSTwitch-help.xml
Module Name: PSTwitch
online version:
schema: 2.0.0
---

# Get-TwitchUser

## SYNOPSIS
Gets information about a specified Twitch user.

## SYNTAX

```
Get-TwitchUser [[-UserName] <String>] [[-Token] <Object>]
```

## DESCRIPTION
Gets information about a specified Twitch user from their login name.

## EXAMPLES

### Example 1
```powershell
PS C:\> Get-TwitchUser -Username brettmillerit


UserId    UserName      Description ViewCount
------    --------      ----------- ---------
408843336 brettmillerit Powershell        120

```

This command finds the Twitch user based on their Twitch login name.

## PARAMETERS

### -Token
ClientID Token obtained from the developer portal.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UserName
User login name. Usually their broadcaster or channel name.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

## INPUTS

### None

## OUTPUTS

### System.Object
## NOTES

## RELATED LINKS
