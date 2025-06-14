Write-Log "Activating Windows..."
#irm https://get.activated.win | iex
& ([ScriptBlock]::Create((irm https://get.activated.win))) /HWID