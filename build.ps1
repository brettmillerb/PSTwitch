param (
    $sourceFolder = $PSScriptRoot,

    $destinationFolder = 'output',

    $destinationFolder = 'output',
    
    [switch]
    $BootStrap
)

if ($BootStrap) {
    if (-not (Get-Module -ListAvailable -Name platyPS)) {
        Find-Module -Name PlatyPs | Install-Module -Scope CurrentUser -Force
    }
}

$manifestFileInfo = Get-ChildItem -Path $PSScriptRoot -Filter *.psd1
$moduleManifest = Import-PowerShellDataFile -Path $manifestFileInfo
$destinationPath = Join-Path -Path $sourceFolder -ChildPath $destinationFolder
$helpPath = Join-Path -Path $destinationPath -ChildPath 'en-US'

$publicFunctions = Get-ChildItem -Path $PSScriptRoot -Include Public -Recurse | Get-ChildItem -Filter *.ps1

if (Test-Path -Path $destinationPath) {
    Remove-Item -Path $destinationPath -Force -Confirm:$false -Recurse
}

$null = New-Item -ItemType Directory -Path $destinationPath

$publicFunctions | ForEach-Object {
    Get-Content $_.FullName | Add-Content -Path (Join-Path -Path $destinationPath -ChildPath $moduleManifest.RootModule)
}

$content = Get-Content -Path $manifestFileInfo.FullName
$content -replace "^FunctionsToExport = '[*]'$", ("FunctionsToExport = @('{0}'`r`n)" -f ($publicFunctions.BaseName -join "',`r`n`t'")) |
    Set-Content -Path (Join-Path -Path $destinationPath -ChildPath $manifestFileInfo.Name)

$null = New-ExternalHelp -Path (join-path -Path $sourceFolder -ChildPath 'docs') -OutputPath $helpPath