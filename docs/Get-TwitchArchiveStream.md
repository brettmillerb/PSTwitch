---
external help file: PSTwitch-help.xml
Module Name: PSTwitch
online version:
schema: 2.0.0
---

# Get-TwitchArchiveStream

## SYNOPSIS
Gets information about previous/archived streams.

## SYNTAX

### Standard (Default)
```
Get-TwitchArchiveStream -UserName <String> [-Token <Object>] [<CommonParameters>]
```

### Pipeline
```
Get-TwitchArchiveStream -InputObject <PSObject> [-Token <Object>] [<CommonParameters>]
```

## DESCRIPTION
Returns previous or archived streams by a user/broadcaster.

## EXAMPLES

### Example 1
```powershell
PS C:\> Get-TwitchArchiveStream -UserName brettmillerit


UserName      StreamTitle                Url
--------      -----------                ---
brettmillerit PSTwitch Powershell Module https://www.twitch.tv/videos/378015327
brettmillerit PSTwitch Powershell Module https://www.twitch.tv/videos/377367237

```

This command returns information about archived or previouse streams from a particular user/broadcaster.

## PARAMETERS

### -InputObject
Specifies Twitch user objects representing the user live streams to be retrieved. Enter a variable that contains the objects, or type a command or expression that gets the objects. You can also pipe a Twitch user object to this parameter.

```yaml
Type: PSObject
Parameter Sets: Pipeline
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -Token
ClientID Token obtained from the developer portal.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UserName
User login name. Usually their broadcaster or channel name.

```yaml
Type: String
Parameter Sets: Standard
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable.
For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### System.Management.Automation.PSObject

## OUTPUTS

### System.Object
## NOTES

## RELATED LINKS
