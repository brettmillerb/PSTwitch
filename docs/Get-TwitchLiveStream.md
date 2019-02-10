---
external help file: PSTwitch-help.xml
Module Name: PSTwitch
online version:
schema: 2.0.0
---

# Get-TwitchLiveStream

## SYNOPSIS
Gets information about active streams.

## SYNTAX

### Standard (Default)
```
Get-TwitchLiveStream -UserName <Object> [-Token <Object>] [<CommonParameters>]
```

### Pipeline
```
Get-TwitchLiveStream -InputObject <PSObject> [-Token <Object>] [<CommonParameters>]
```

## DESCRIPTION
Returns current live streams by a user/broadcaster.

## EXAMPLES

### Example 1
```powershell
PS C:\> Get-TwitchLiveStream -UserName brettmillerit

UserName      StreamTitle                ViewerCount StartedAt
--------      -----------                ----------- ---------
brettmillerit PSTwitch Powershell Module           5 09/02/2019 22:43:52
```

This command returns information about a current live stream from a particular user/broadcaster.

### Example 2
```powershell
PS C:\> Get-TwitchLiveStream -UserName brettmillerit

No Live Stream Available
```

This command returns a statement that the user is not currently streaming live

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
Type: Object
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
