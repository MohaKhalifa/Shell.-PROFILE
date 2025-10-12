function xl {Clear-Host}
function p { Set-Location .. ; clear; Get-ChildItem;}
function x {exit}
function cl { clear; Get-ChildItem}
function home {cd ~; clear}
function offme {Stop-Computer -Force}


function hub {cd ~\gh; cl}
function man {Get-Help}
function vim {saps "C:\Program Files\Vim\vim91\vim.exe" }


function lcommit {git init; git add ./*; git commit -m "making the band"; git push;}
function lpull {git inti; git pull;}
function shellem {Copy-Item -Path $PROFILE -Destination ~\gh\SP\; cd ~\gh\SP;  lcommit; & $PROFILE}
function shellme {Start-Process "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Vim 9.1\Vim.lnk" $PROFILE}
<# https://powershellcommands.com/change-powershell-color #>
<#Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" -Name "SystemUsesLightTheme" -Value 0#>
