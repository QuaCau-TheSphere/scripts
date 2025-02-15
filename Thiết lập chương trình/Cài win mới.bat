ECHO Y | REG ADD "HKLM\Software\Microsoft\Windows\CurrentVersion\AppHost" /v EnableWebContentEvaluation /t REG_DWORD /d 0
ECHO Y | REG ADD "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\ Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\PhishingFilter" /v EnabledV9 /t REG_DWORD /d 0

winget install -e --id Mozilla.Firefox.DeveloperEdition

winget install notepad++ 
winget install -e --id RobertFFrasca.PDFKeeper
winget install -e --id SumatraPDF.SumatraPDF
winget install -e --id Obsidian.Obsidian

winget install -e --id Zoom.Zoom
winget install -e --id Discord.Discord.Development
winget install -e --id VNGCorp.Zalo
winget install -e --id Telegram.TelegramDesktop
winget install -e --id Rambox.Rambox.Community

winget install Microsoft.WindowsTerminal 
winget install -e --id Microsoft.PowerShell.Preview
winget install -e --id VSCodium.VSCodium
winget install -e --id GNU.Emacs
winget install -e --id Neovim.Neovim
winget install -e --id pit-ray.win-vind
winget install -e --id AutoHotkey.AutoHotkey
winget install -e --id GitHub.cli
winget install -e --id Git.Git
winget install -e --id JesseDuffield.lazygit
winget install -e --id DenoLand.Deno
winget install -e --id OpenJS.NodeJS
winget install -e --id GoLang.Go.1.18
winget install -e --id Hugo.Hugo.Extended
winget install -e --id Docker.DockerDesktop
winget install -e --id Anaconda.Miniconda3

winget install -e --id M2Team.NanaZip
winget install -e --id SoftDeluxe.FreeDownloadManager
winget install -e --id WinDirStat.WinDirStat
winget install -e --id Audacity.Audacity
winget install -e --id ManicTime.ManicTime
winget install -e --id Sandboxie.Classic
winget install -e --id ProtonTechnologies.ProtonVPN

winget install sharex.sharex --accept-source-agreements --accept-package-agreements 
winget install VideoLAN.VLC
winget install copyq
winget install -e --id GNU.MidnightCommander
winget install -e --id TheDocumentFoundation.LibreOffice
winget install -e --id Inkscape.Inkscape
winget install -e --id GIMP.GIMP
winget install -e --id KDE.Krita

winget install -e --id WinMerge.WinMerge.Beta
winget install -e --id SyncTrayzor.SyncTrayzor
winget install -e --id Nextcloud.NextcloudDesktop
winget install -e --id liberodark.ODrive

deno install --allow-run --allow-env --allow-read --name lume --force --reload --global https://deno.land/x/lume_cli/mod.ts
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned
[Console]::OutputEncoding = [System.Text.UTF8Encoding]::new()
