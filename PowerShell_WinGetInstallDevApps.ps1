. ([ScriptBlock]::Create((irm "$Domain/_utils.ps1")))
Write-Log "Install Develope Apps, Coding, IDE, Tools..."

<#
--accept-package-agreements     
--disable-interactivity
--location
--verbose, --verbose-logs
--nowarn, ignore-warnings
#>
## IDE, Editor
Write-Log "IDE, Editor apps installing..."
winget install --id=ByteDance.Trae --exact --accept-package-agreements --accept-source-agreements --disable-interactivity --silent
winget install --id=Microsoft.VisualStudioCode --exact --accept-package-agreements --accept-source-agreements --disable-interactivity --silent
winget install --id=Google.GoogleWebDesigner  --exact --accept-package-agreements --accept-source-agreements --disable-interactivity --silent
winget install --id=Notepad++.Notepad++  --exact --accept-package-agreements --accept-source-agreements --disable-interactivity --silent
winget install --id=GlassDevtools.Void  --exact --accept-package-agreements --accept-source-agreements --disable-interactivity --silent
winget install --id=Google.AndroidStudio  --exact --accept-package-agreements --accept-source-agreements --disable-interactivity --silent
winget install --id=Microsoft.VisualStudio.2022.Community  --exact --accept-package-agreements --accept-source-agreements --disable-interactivity --silent
## Dev Frameworks, Libraries
Write-Log "Develope Frameworks, Libraries installing..."
winget install --id=CoreyButler.NVMforWindows  --exact --accept-package-agreements --accept-source-agreements --disable-interactivity --silent
winget install --id=Microsoft.NuGet  --exact --accept-package-agreements --accept-source-agreements --disable-interactivity --silent
winget install --id=Python.PythonInstallManager  --exact --accept-package-agreements --accept-source-agreements --disable-interactivity --silent
## Dev Tools
Write-Log "Develope Tools installing..."
winget install --id=Microsoft.PowerShell  --exact --accept-package-agreements --accept-source-agreements --disable-interactivity --silent
winget install --id=HaystackSoftware.HaystackEditor  --exact --accept-package-agreements --accept-source-agreements --disable-interactivity --silent
winget install --id=Microsoft.AIShell  --exact --accept-package-agreements --accept-source-agreements --disable-interactivity --silent    # https://github.com/PowerShell/AIShell
winget install --id=Microsoft.WindowsTerminal  --exact --accept-package-agreements --accept-source-agreements --disable-interactivity --silent
winget install --id=WinSCP.WinSCP  --exact --accept-package-agreements --accept-source-agreements --disable-interactivity --silent
winget install --id=cURL.cURL  --exact --accept-package-agreements --accept-source-agreements --disable-interactivity --silent
winget install --id=pnpm.pnpm  --exact --accept-package-agreements --accept-source-agreements --disable-interactivity --silent
winget install --id=Postman.Postman  --exact --accept-package-agreements --accept-source-agreements --disable-interactivity --silent
winget install --id=DBeaver.DBeaver.Community --exact --accept-package-agreements --accept-source-agreements --disable-interactivity --silent
winget install --id=Bitvise.SSH.Client  --exact --accept-package-agreements --accept-source-agreements --disable-interactivity --silent
winget install --id=Docker.DockerCLI  --exact --accept-package-agreements --accept-source-agreements --disable-interactivity --silent
winget install --id=Docker.DockerCompose  --exact --accept-package-agreements --accept-source-agreements --disable-interactivity --silent
winget install --id=Docker.DockerDesktop  --exact --accept-package-agreements --accept-source-agreements --disable-interactivity --silent
winget install --id=Frontesque.scrcpy+  --exact --accept-package-agreements --accept-source-agreements --disable-interactivity --silent
winget install --id=Genymobile.scrcpy  --exact --accept-package-agreements --accept-source-agreements --disable-interactivity --silent
winget install --id=Barry-ran.QtScrcpy  --exact --accept-package-agreements --accept-source-agreements --disable-interactivity --silent
winget install --id=Git.Git  --exact --accept-package-agreements --accept-source-agreements --disable-interactivity --silent
winget install --id=GitExtensionsTeam.GitExtensions  --exact --accept-package-agreements --accept-source-agreements --disable-interactivity --silent
winget install --id=GitHub.GitHubDesktop  --exact --accept-package-agreements --accept-source-agreements --disable-interactivity --silent
winget install --id=Microsoft.Git  --exact --accept-package-agreements --accept-source-agreements --disable-interactivity --silent
## System Tools
Write-Log "System Tools installing..."
winget install --id=DucFabulous.UltraViewer  --exact --accept-package-agreements --accept-source-agreements --disable-interactivity --silent
winget install --id=Cloudflare.Warp  --exact --accept-package-agreements --accept-source-agreements --disable-interactivity --silent
winget install --id=FastStone.Viewer  --exact --accept-package-agreements --accept-source-agreements --disable-interactivity --silent
winget install --id=Google.Chrome  --exact --accept-package-agreements --accept-source-agreements --disable-interactivity --silent
winget install --id=Google.Chrome.Dev  --exact --accept-package-agreements --accept-source-agreements --disable-interactivity --silent
winget install --id=Google.GoogleUpdater  --exact --accept-package-agreements --accept-source-agreements --disable-interactivity --silent
winget install --id=Microsoft.Edge.Dev  --exact --accept-package-agreements --accept-source-agreements --disable-interactivity --silent
winget install --id=Microsoft.Sysinternals  --exact --accept-package-agreements --accept-source-agreements --disable-interactivity --silent
winget install --id=GlavSoft.RemoteRipple  --exact --accept-package-agreements --accept-source-agreements --disable-interactivity --silent
winget install --id=TigerVNC.TigerVNC  --exact --accept-package-agreements --accept-source-agreements --disable-interactivity --silent
winget install --id=mRemoteNG.mRemoteNG  --exact --accept-package-agreements --accept-source-agreements --disable-interactivity --silent
winget install --id=Microsoft.WindowsApplicationDriver  --exact --accept-package-agreements --accept-source-agreements --disable-interactivity --silent
winget install --id=Microsoft.NetMon  --exact --accept-package-agreements --accept-source-agreements --disable-interactivity --silent
winget install --id=Microsoft.winfile  --exact --accept-package-agreements --accept-source-agreements --disable-interactivity --silent
## AI Tools
Write-Log "AI Tools installing..."
winget install --id=9NT1R1C2HH7J --exact --source=msstore --accept-package-agreements --accept-source-agreements --disable-interactivity --silent
winget install --id=kangfenmao.CherryStudio  --exact --accept-package-agreements --accept-source-agreements --disable-interactivity --silent
winget install --id=ElementLabs.LMStudio  --exact --accept-package-agreements --accept-source-agreements --disable-interactivity --silent
winget install --id=Khoj.Khoj  --exact --accept-package-agreements --accept-source-agreements --disable-interactivity --silent
winget install --id=Microsoft.FoundryLocal  --exact --accept-package-agreements --accept-source-agreements --disable-interactivity --silent   # https://github.com/microsoft/Foundry-Local
winget install --id=Microsoft.Promptflow  --exact --accept-package-agreements --accept-source-agreements --disable-interactivity --silent
## Utilities
Write-Log "Utilities installing..."
winget install --id=KeePassXCTeam.KeePassXC  --exact --accept-package-agreements --accept-source-agreements --disable-interactivity --silent
winget install --id=Microsoft.DevHome  --exact --accept-package-agreements --accept-source-agreements --disable-interactivity --silent
winget install --id=Microsoft.PowerToys  --exact --accept-package-agreements --accept-source-agreements --disable-interactivity --silent
## Communication
Write-Log "Communication apps installing..."
winget install --id=Discord.Discord  --exact --accept-package-agreements --accept-source-agreements --disable-interactivity --silent
winget install --id=MehediHassan.Tweeten  --exact --accept-package-agreements --accept-source-agreements --disable-interactivity --silent
winget install --id=VNGCorp.Zalo  --exact --accept-package-agreements --accept-source-agreements --disable-interactivity --silent
winget install --id=Telegram.TelegramDesktop.Beta  --exact --accept-package-agreements --accept-source-agreements --disable-interactivity --silent
