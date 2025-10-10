function sl {clear}
function p { Set-Location .. ; clear; Get-ChildItem;}
function x {exit}
function cl { clear; Get-ChildItem}
function home {cd ~}


function hub {cd ~\gh}
function vim {Start-Process "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Vim 9.1\Vim.lnk" }


function lcommit {git init; git add ./*; git commit -m "making the band"; git push;}
function lpull {git inti; git pull;}
function shellem {Copy-Item -Path $PROFILE -Destination ~\gh\SP\; cd ~\gh\SP;  lcommit; home; clear}
function shellme {Start-Process "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Vim 9.1\Vim.lnk" $PROFILE}
<# https://powershellcommands.com/change-powershell-color #>
