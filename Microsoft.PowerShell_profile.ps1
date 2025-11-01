function xl {Clear-Host}
function ll {ls -hidden}
function p { Set-Location .. ; clear; Get-ChildItem;}
function x {exit}
function cl { clear; Get-ChildItem}
function home {cd ~; clear}
function offme {Stop-Computer -Force}
function book {cd ~\audioBooks; clear}


function hub {cd ~\gh; cl}
function man {Get-Help -Name}
<# function vim {saps "C:\Program Files\Vim\vim91\vim.exe" }// ?pid #>
$currentDate = Get-Date

function makeGithubWebpage 
{
cd ~\gh;
$projectname = Read-Host "whats the project name"
$amiin = gh auth status | Select-Object "Logged in to githu.com account MohaKhalifa"
mkdir $projectname;
cd $projectname;
if ($amiin -eq $null) 
{
gh auth login;

}
function proceedWithIt {echo "we making a webpage via and files will be uploaded to github.";
git init;
echo "" >>index.html;
<#how to curl txt and pipe in local file; easy but n lazy gotta get some onions for dinner#>
echo "" >>index.js;
echo "" styles.css;
$companyName = Read-Host 'Company name';
$commity = echo "A webpage for $companyName created on $currentDate" >> README.md;
git add .\*;
git commit -m "$commity";
git add origin main
git push;
}
else {
proceedWithIt
}
}
<#function testit {$timy = Read-Host 'what time do think it is right now'; echo $timy}#>


function lcommit {git init; git add ./*; git commit -m "making the band"; git push;}
function lpull {git inti; git pull;}
function shellem {Copy-Item -Path $PROFILE -Destination ~\gh\SP\; cd ~\gh\SP;  lcommit; cd ~; clear; . $PROFILE}
function shellme {Start-Process "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Vim 9.1\Vim.lnk" $PROFILE}
function wimip {curl ifconfig.me/ip | Select-Object Content}
<# https://powershellcommands.com/change-powershell-color #>
<#Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" -Name "SystemUsesLightTheme" -Value 0#>
<# . $PROFILE reload profile,#>
