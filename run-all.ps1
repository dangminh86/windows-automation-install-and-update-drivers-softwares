param (
    [string]$DriverPackDirectory
)
### Constants ###
$ErrorActionPreference = 'Stop'
$Domain = "http://192.168.1.80:9999"
### Load utilities ###
. ([ScriptBlock]::Create((irm "$Domain/_utils.ps1")))

$params = @{}

# ------------------------------------------------------------------------------
Write-Log "==============   START   ===================" "Success"

# Config screen-off and sleep
Invoke-RemoteScript "$Domain/PowerShell_PowerConfig.ps1"

# Active Windows
#Invoke-RemoteScript "$Domain/PowerShell_ActiveWindows.ps1"

# Active Windows Update and update Windows
#Invoke-RemoteScript "$Domain/PowerShell_ActiveWindowsUpdate.ps1"

# Cài đặt Chocolatey
#Invoke-RemoteScript "$Domain/PowerShell_InstallChocolatey.ps1"

# Cài đặt SDIO bằng Chocolatey và cập nhật Drivers thiết bị
#if ($PSBoundParameters.ContainsKey('DriverPackDirectory')) { $params.DriverPackDirectory = $DriverPackDirectory }
#Invoke-RemoteScript "$Domain/PowerShell_ChocoInstallSDIO.ps1" $params

Invoke-RemoteScript "$Domain/PowerShell_WinGetInstallDevApps.ps1"