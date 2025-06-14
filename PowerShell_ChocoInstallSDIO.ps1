param (
    [string]$DriverPackDirectory
)
. ([ScriptBlock]::Create((irm "$Domain/_utils.ps1")))
Write-Log "Install SDIO using Chocolatey and update Drivers..."

# Install SDIO
choco install sdio -y
Write-Log "Complete install `"sdio`" package"

# Autoupdate script to update latest SDIO exe and drivers
Write-Log "Copy and run script autoupdate.bat"
$path="C:\ProgramData\chocolatey\lib\sdio\tools"
Copy-Item $path\scripts\autoupdate.bat -Destination $path -Force
& $path\autoupdate.bat

# Run utilities SDIO
Write-Log "Run SDIO to update drivers"
$path = "C:\ProgramData\chocolatey\lib\sdio\tools"
$file = Get-ChildItem -Path $path -Filter "SDIO_x64_R*.*" | Sort-Object Name -Descending | Select-Object -First 1
if (-not $file) {
    Write-Log "❌ Không tìm thấy thư mục SDIO_x64_R* tại: $path" "ERROR"
    Exit 1
}
<#
LOG_VERBOSE_ARGS	0x0001	1	Sections: "Settings".
LOG_VERBOSE_SYSINFO	0x0002	2	Sections: "Windows", "Environment".
LOG_VERBOSE_DEVICES	0x0004	4	Sections: "DeviceInfo".
LOG_VERBOSE_MATCHER	0x0008	8	Sections: "{matcher_print".
LOG_VERBOSE_MANAGER	0x0010	16	Sections: "{manager_print".
LOG_VERBOSE_DRP	0x0020	32	Sections: "Driverpacks".
LOG_VERBOSE_TIMES	0x0040	64	Sections: "Times".
LOG_VERBOSE_LOG_ERR	0x0080	128	Error messages.
LOG_VERBOSE_LOG_CON	0x0100	256	Misc messages.
LOG_VERBOSE_LAGCOUNTER	0x0200	512	GUI lag counter.
LOG_VERBOSE_DEVSYNC	0x0400	1024	Sections: "{Updated".
LOG_VERBOSE_BATCH	0x0800	2048	Batch processing of snapshots.
1+2+4+32+64+128+256+1024=1511
#>
$sdioParams = @(
    '-verbose:1511',    
    '-checkupdates',                                 # Hiển thị cửa sổ SDIO để chọn Drivers muốn cài đặt
    '-expertmode',
    '-reindex',
    #'-nogui', '-autoupdate', '-autoinstall'        # Tự động cập nhật Driver Packs (40GB+) và cài đặt Driver
    )
if ($PSBoundParameters.ContainsKey('DriverPackDirectory')) { 
    New-Item -ItemType Directory -Path $DriverPackDirectory -Force | Out-Null
    $sdioParams += "-drp_dir:'$DriverPackDirectory'"
    $sdioParams += "-index_dir:'$DriverPackDirectory'"
    $sdioParams += "-data_dir:'$DriverPackDirectory'"
    $sdioParams += "-output_dir:'$DriverPackDirectory'"
    $sdioParams += "-log_dir:'$DriverPackDirectory'"
    $sdioParams += "-extractdir:'$DriverPackDirectory'"
}
#Write-Host $file.FullName
#C:\ProgramData\chocolatey\lib\sdio\tools\SDIO_x64
#Start-Process $file.FullName -Verb RunAs -ArgumentList "-nogui -autoupdate -autoinstall -norestorepnt"
& $file.FullName $sdioParams
#Copy-Item $path\scripts\autoupdate.bat -Destination $path -Force
#Copy-Item $path\scripts\scan_driver_packs.bat -Destination $path -Force