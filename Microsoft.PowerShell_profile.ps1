<#ShellProfile, Using a CI/CD approach for less keypresses#> 



<#$nameof = pwd | sls C:#>
$currentDate = Get-Date

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
function vim {  $nameof = pwd;  
Start-Process "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Vim 9.1\Vim.lnk" $nameof} 
function lcommit {git init; git add ./*; git commit -m "making the band"; git push;}
function lpull {git inti; git pull;}
function shellem {Copy-Item -Path $PROFILE -Destination ~\gh\SP\; cd ~\gh\SP;  lcommit; cd ~; clear; . $PROFILE}
function shellme {Start-Process "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Vim 9.1\Vim.lnk" $PROFILE}
function wimip {curl ifconfig.me/ip | Select-Object Content}
function vscode {  $nameof = pwd; Start-Process  "~\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Visual Studio Code\Visual Studio Code.lnk" $nameof}




<# https://powershellcommands.com/change-powershell-color #>
<#Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" -Name "SystemUsesLightTheme" -Value 0#>
<# . $PROFILE reload profile,#>
<# how to define a global scope value in PS using$the issue is with $nameof when used outside of the inner function it doesn't call the path for some reason it works with Get-date assigned it to $currentdate; found out you can when you assing path to a variable function recognizes it but when using path it's self it doesn't; expo prior to discovery,need another research;#>
<#function testit {$timy = Read-Host 'what time do think it is right now'; echo $timy} fetched user input #>
<# function vim {saps "C:\Program Files\Vim\vim91\vim.exe" }// ?pid #>
