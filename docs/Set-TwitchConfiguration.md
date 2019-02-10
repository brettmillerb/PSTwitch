---
external help file: PSTwitch-help.xml
Module Name: PSTwitch
online version:
schema: 2.0.0
---

# Set-TwitchConfiguration

## SYNOPSIS
Set the configuration for the Twitch module

## SYNTAX

```
Set-TwitchConfiguration [[-Token] <String>] [<CommonParameters>]
```

## DESCRIPTION
Set the module scoped configuration for Twitch API access. Consists of API ClientID, API Uri and Headers

## EXAMPLES

### Example 1
```powershell
PS C:\> $token = Import-CliXml -Path $home\twitchtoken.xml
PS C:\> Set-TwitchConfiguration -Token $token
```

This command gets the token value from an XML file stored on desktop then sets the token value as a module scoped variable so that it can be used by all other commands in the module.

## PARAMETERS

### -Token
ClientID Token obtained from the developer portal.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable.
For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None

## OUTPUTS

### System.Object
## NOTES

## RELATED LINKS
