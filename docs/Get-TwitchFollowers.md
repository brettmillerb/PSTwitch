---
external help file: PSTwitch-help.xml
Module Name: PSTwitch
online version:
schema: 2.0.0
---

# Get-TwitchFollowers

## SYNOPSIS
Get the followers of a particular Twitch user

## SYNTAX

### Standard (Default)
```
Get-TwitchFollowers -UserName <String> [-All] [-Token <Object>] [<CommonParameters>]
```

### Pipeline
```
Get-TwitchFollowers -InputObject <Object> [-All] [-Token <Object>] [<CommonParameters>]
```

## DESCRIPTION
Get the followers of a particular Twitch user. Returns the first 20 by default.

## EXAMPLES

### Example 1
```powershell
PS C:\> Get-TwitchFollowers -UserName brettmillerit

FollowerUserId FollowerUserName  UserName      FollowedOn
-------------- ----------------  --------      ----------
244966004      chrisk59          brettmillerit 09/02/2019 23:06:08
415476624      gratefuldead0ps   brettmillerit 09/02/2019 22:49:29
413185456      rchaganti         brettmillerit 09/02/2019 15:34:34
251912423      veronicageek      brettmillerit 09/02/2019 11:14:02
142792318      corbob            brettmillerit 09/02/2019 04:55:16
414173591      juddmissile       brettmillerit 09/02/2019 03:21:52
24614598       Skullcrusher4life brettmillerit 08/02/2019 23:45:39
400348165      adilio_           brettmillerit 08/02/2019 22:52:00
403789625      potatoqualitee    brettmillerit 08/02/2019 22:47:19
255308339      alan_ps1          brettmillerit 31/01/2019 23:31:14
409831328      gaelcolas         brettmillerit 24/01/2019 13:08:36
175396446      gep13             brettmillerit 22/01/2019 15:12:49
53043985       Sk82jack          brettmillerit 19/01/2019 11:07:08
196777512      ctmcisco          brettmillerit 18/01/2019 20:11:35
403845811      sporticia         brettmillerit 17/01/2019 22:56:58
84649399       enriarg           brettmillerit 15/01/2019 15:23:50
403866101      dkooll            brettmillerit 14/01/2019 07:31:22
409370068      adegutis          brettmillerit 14/01/2019 04:18:53
239643343      glennsarti        brettmillerit 14/01/2019 02:02:06
48020394       DjHalibut         brettmillerit 13/01/2019 20:55:23
```

This command gets the followers of a particular Twitch user. By default this returns the first 20 followers.

### Example 2
```powershell
PS C:\> Get-Twitchuser -Username brettmillerit | Get-TwitchFollowers
```

This command pipes the result of `Get-Twitchuser` to `Get-TwitchFollowers` to return the followers of the particular user.

## PARAMETERS

### -All
If set then returns all followers of a particular user

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -InputObject
Specifies Twitch user objects representing the user live streams to be retrieved. Enter a variable that contains the objects, or type a command or expression that gets the objects. You can also pipe a Twitch user object to this parameter

```yaml
Type: Object
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

### System.Object

## OUTPUTS

### System.Object
## NOTES

## RELATED LINKS
