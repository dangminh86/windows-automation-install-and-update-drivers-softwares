. ([ScriptBlock]::Create((irm "$Domain/_utils.ps1")))

Write-Log "Config computer's power usage"
powercfg -change -monitor-timeout-ac 0  # Screen off khi cắm sạc
powercfg -change -monitor-timeout-dc 0  # Screen off khi dùng pin
powercfg -change -standby-timeout-ac 0  # Sleep khi cắm sạc
powercfg -change -standby-timeout-dc 0  # Sleep khi dùng pin
