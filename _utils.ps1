function Refresh-PathEnv {
    # Refresh PATH environment
    $machinePath = [System.Environment]::GetEnvironmentVariable("Path", "Machine")
    $userPath = [System.Environment]::GetEnvironmentVariable("Path", "User")
    $env:Path = "$machinePath;$userPath"
}

function Invoke-RemoteScript {
    param (
        [Parameter(Position = 0, Mandatory = $true)]
        [string]$Url,

        [Parameter(Position = 1)]
        [hashtable]$Arguments
    )
    Write-Log "========================================================" "DEBUG"
    Write-Log "Fetching and executing script from " "DEBUG"
    Write-Log "[$Url]" "Debug"
    try {
        
        Refresh-PathEnv

        $scriptText = Invoke-RestMethod -Uri $Url -UseBasicParsing
        $scriptBlock = [ScriptBlock]::Create($scriptText)
        & $scriptBlock @Arguments
        
    }
    catch {
        Write-Log "❌ Error: $($_.Exception.Message)" "ERROR"
    }
}

<#
Tên màu	Hiển thị
Black	    ⚫ Đen
DarkBlue	🔵 Xanh đậm
DarkGreen	🟢 Lục đậm
DarkCyan	🟢🔵 Xanh cyan đậm
DarkRed	    🔴 Đỏ đậm
DarkMagenta	🟣 Tím đậm
DarkYellow	🟡 Vàng đậm
Gray	    ⚪ Xám sáng
DarkGray	⚫ Xám đậm
Blue	    🔵 Xanh tươi
Green	    🟢 Lục tươi
Cyan	    🟢🔵 Cyan sáng
Red	        🔴 Đỏ tươi
Magenta	    🟣 Tím sáng
Yellow	    🟡 Vàng sáng
White	    ⚪ Trắng sáng
#>
function Write-Log {
	param (
		[string]$Message,
		[string]$Level = "INFO"
	)

	$Level = $Level.ToUpper()

	switch ($Level) {
		"INFO"		{ $color = "Cyan" }
		"OK" 		{ $color = "Green" }
		"WARN"		{ $color = "Yellow" }
		"ERROR"		{ $color = "Red" }
        "DEBUG"     { $color = "Magenta" }
		default		{ $color = "White" }
	}

	$timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
	Write-Host "[$timestamp][$Level] $Message" -Foreground $color
}