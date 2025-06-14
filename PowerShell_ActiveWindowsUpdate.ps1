Write-Log "Installing NuGet..."
Install-PackageProvider -Name NuGet -Force

Write-Log "Add PSGallery to Trusted zone" "INFO"
Set-PSRepository -Name "PSGallery" -InstallationPolicy Trusted

Write-Log "Install module PSWindowsUpdate"
Install-Module -Name PSWindowsUpdate -Force -Confirm:$false

Write-Log "Import module PSWindowsUpdate"
Import-Module PSWindowsUpdate -Force

Write-Log "Add service MicrosoftUpdate"
Add-WUServiceManager -MicrosoftUpdate -Confirm:$false

Write-Log "Get windows update..."
Get-WindowsUpdate -MicrosoftUpdate -AcceptAll -Install -AutoReboot

Write-Log "Script completed. Clean script file after 3 seconds..." "OK"
Start-Sleep -Seconds 3
if ( $MyInvocation.MyCommand.Path -and (Test-Path $MyInvocation.MyCommand.Path) ) {
    Remove-Item -Path $MyInvocation.MyCommand.Path -Force
    Write-Log "Script file deleted: $($MyInvocation.MyCommand.Path)" "INFO"
} else {
    Write-Log "Script is executed inline, nothing to delete." "WARN"
}