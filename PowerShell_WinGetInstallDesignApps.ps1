


. ([ScriptBlock]::Create((irm "$Domain/_utils.ps1")))
Write-Log "Install Design Apps, Tools..."

<#
--accept-package-agreements     
--disable-interactivity
--location
--verbose, --verbose-logs
--nowarn, ignore-warnings
#>

winget install --id=Stacher.youtube-dl  -e --accept-package-agreements --accept-source-agreements --disable-interactivity -silent
winget install --id=yt-dlp.yt-dlp  -e --accept-package-agreements --accept-source-agreements --disable-interactivity -silent
# https://github.com/yt-dlp/yt-dlp/
# https://github.com/blackjack4494/yt-dlc
# https://github.com/ytdl-org/youtube-dl

winget install --id=MediaHuman.YouTubeToMP3Converter  -e --accept-package-agreements --accept-source-agreements --disable-interactivity -silent
winget install --id=MediaHuman.YouTubeDownloader  -e --accept-package-agreements --accept-source-agreements --disable-interactivity -silent
winget install --id=MediaHuman.mTube  -e --accept-package-agreements --accept-source-agreements --disable-interactivity -silent

winget install --id=MehediHassan.Tweeten  -e --accept-package-agreements --accept-source-agreements --disable-interactivity -silent
winget install --id=OBSProject.OBSStudio  -e --accept-package-agreements --accept-source-agreements --disable-interactivity -silent
winget install --id=VictorIX.BlenderLauncher  -e --accept-package-agreements --accept-source-agreements --disable-interactivity -silent


winget install --id=Unity.UnityHub  -e --accept-package-agreements --accept-source-agreements --disable-interactivity -silent




winget install --id=Microsoft.WindowsApplicationDriver  -e --accept-package-agreements --accept-source-agreements --disable-interactivity -silent