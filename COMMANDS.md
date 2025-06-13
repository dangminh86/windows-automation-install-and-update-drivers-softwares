## [PowerShell] script tải và chạy tự động active windows, office

> https://massgrave.dev/command_line_switches

```
& ([ScriptBlock]::Create((irm https://get.activated.win))) /HWID
```

## PowerShell cài đặt các bản updates và drivers (Windows built-in)
Có thể sẽ yêu cầu NuGet, dùng lệnh sau để cài đặt NuGet
```
Install-PackageProvider -Name NuGet -Force
```
```
Set-PSRepository -Name "PSGallery" -InstallationPolicy Trusted

Install-Module -Name PSWindowsUpdate -Force -Confirm:$false
Import-Module PSWindowsUpdate -Force -Confirm:$false
Add-WUServiceManager -MicrosoftUpdate
Get-WindowsUpdate -MicrosoftUpdate -AcceptAll -Install -AutoReboot

```


## Cài đặt Snappy Driver
```
winget install --id=SnappyDriverInstaller.Origin -e
```