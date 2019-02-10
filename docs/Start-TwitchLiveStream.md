---
external help file: PSTwitch-help.xml
Module Name: PSTwitch
online version:
schema: 2.0.0
---

# Start-TwitchLiveStream

## SYNOPSIS
Opens live stream in default browser.

## SYNTAX

### Standard
```
Start-TwitchLiveStream -username <Object> [<CommonParameters>]
```

### Pipeline
```
Start-TwitchLiveStream -InputObject <Object> [<CommonParameters>]
```

## DESCRIPTION
Opens a particular users current live stream in the default browser

## EXAMPLES

### Example 1
```powershell
PS C:\> Start-TwitchLiveStream -Username brettmillerit
```

This command opens the current live stream of a particular user in the default browser.

### Example 2
```powershell
PS C:\> Get-TwitchUser -Username brettmillerit | Start-TwitchLiveStream
```

This command pipes the result of `Get-TwitchUser` to `Start-TwitchLiveStream` and opens the live stream  in the default browser.

## PARAMETERS

### -InputObject
Specifies Twitch user objects representing the user live streams to be retrieved. Enter a variable that contains the objects, or type a command or expression that gets the objects. You can also pipe a Twitch user object to this parameter.

```yaml
Type: Object
Parameter Sets: Pipeline
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -username
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

### System.Object

## OUTPUTS

### System.Object
## NOTES

## RELATED LINKS
