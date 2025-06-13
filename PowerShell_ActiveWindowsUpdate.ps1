Install-PackageProvider -Name NuGet -Force
Set-PSRepository -Name "PSGallery" -InstallationPolicy Trusted

Install-Module -Name PSWindowsUpdate -Force -Confirm:$false
Import-Module PSWindowsUpdate -Force -Confirm:$false
Add-WUServiceManager -MicrosoftUpdate
Get-WindowsUpdate -MicrosoftUpdate -AcceptAll -Install -AutoReboot
