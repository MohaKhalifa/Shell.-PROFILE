<#ShellProfile, Using a CI/CD approach for less keypresses#> 



<#$nameof = pwd | sls C:#>
<#appearantly the value of assigned to items gets stored when the shell session starts ///conclution if for loop inefficent that's why you need to put them inside functions BigBrainOnBradFR#>


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
function makeGithubWebpage {
cd ~\gh;
$projectname = Read-Host "whats the project name"
$amiin = gh auth status | Select-Object "Logged in to githu.com account MohaKhalifa"
mkdir $projectname;
cd $projectname;
function proceedWithIt {echo "we making a webpage and, files will be uploaded to github";
git init;
gh repo create $prjectname --public source=. --remote-upstream; 
cp ~\base.html >>index.html;
cp ~\base.js index.js;
cp ~\base.css styles.css;
$companyName = Read-Host 'Company name';
$commity = echo "A webpage for $companyName created on $currentDate" >> README.md;
git add .\*;
git commit -m "$commity";
git push --set-upstream upstream master;
}


if ($amiin -eq $null) 
{
gh auth login;
proceedWithIt;
}
else {
$currentDate = Get-Date;
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



<#

$P: Propuse, DL: Deadline 


IDEAS:

A:$compinfo = Get-ComputerInfo reorganize using sls and get imagery thought github with if statemtents create bin and uplead winget. hyg neofetch//:
B::: AYNTKA:::::::::::::::: low very


TBDONE:
A: https://powershellcommands.com/change-powershell-color //P: to change powershell coloring;might TBdecalared;

??????:
A: how to define a global scope value in PS using$the issue is with $nameof when used outside of the inner function it doesn't call the path for some reason it works with Get-date assigned it to $currentdate; found out you can when you assing path to a variable function recognizes it but when using path it's self it doesn't; expo prior to discovery,need another research;
Do an unlike Bash and brag assigning values.
B: Get vim navigation in dir;
C: Get vimrc; show line num in sidebar;
D: HKLM Manipulation: No activate the color scheme taskbar etc...: cd HKLM:
::E:  <#how to curl<how to download a file it's self in powershell aka refrenced file on the web.> txt and pipe in local file; easy but n lazy gotta get some onions for dinner

TB Declared:
A: function testit {$timy = Read-Host 'what time do think it is right now'; echo $timy} fetched user input
B: . $PROFILE reload profile
C: Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" -Name "SystemUsesLightTheme" -Value 0 //Changes the system color scheme AKA theme; there's another one for the in application colors; res and up;
D: use alias for simple command to avoid issues with the file path;
E: MD man for gh

#>
