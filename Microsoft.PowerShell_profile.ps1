<#ShellProfile, Using a CI/CD approach for less keypresses#> 
$curdate = Get-Date;


<#$nameof = pwd | sls C:#>
<#
start interactive session in ps; argumental program




Get SQL;
??? foss backend users can verify;
?git on own webpage;

TD:
A:______: DL:Novemeber 30th the basic: finale Project ToBD 
Languages: HTML, CSS, JS, Node.js, Flutter
Create an extention for definitions using duckduckgo search make it lightweight add event listener for selected items;
make sure no conflictions are made; beware vimium and ytstuff upload on chrome webstore and ff
add history, remiders if possible;
use apis if possible; make accs or local files easily syncronizable;
idnetify articles level using llm and scope hard words; highlit the words you had in the past;
market the stuff; project

Only when toggled on; retreive only if user wants to;

Related books; Articles; Goodreads;
Book summmaries;
Social Media idioligies adapted;
how to get clout with the stuff;;
Articulations
use cases;
examples


B: Make Responise UI for ADB;




appearantly the value of assigned to items gets stored when the shell session starts ///conclution if for loop inefficent that's why you need to put them inside functions BigBrainOnBradFR#>


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
function pm {
cd ~\gh;
$projectname = Read-Host "whats the project name"
$amiin = gh auth status | Select-Object "Logged in to githu.com account MohaKhalifa"
mkdir $projectname;
cd $projectname;
function proceedWithIt {echo "we making a webpage and, files will be uploaded to github";
git init;
gh repo create $prjectname --public --source=. --remote=upstream; <#get Some Education on the remote upstream etc.. debugged for 5 miniutes#>
cp ~\bases\base.html index.html;
cp ~\bases\base.js index.js;
cp ~\bases\base.css styles.css;
$companyName = Read-Host 'Company name';
$commity = echo "A webpage for $companyName created on $currentDate"; 
$commity >> README.md;
<#10minutes in comity and -m#>
git add .\*;
git commit -m $commity;
git push --set-upstream upstream master;
}
<#githubpages and powershell; for public repos#  condition the public and private.# and condition the pag

AYNTKA; gb; roadmaps and link clou; make structure with pm;
e #>


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
function lcommit { $currenttime = Get-Date; git init; git add ./*; git commit -m $currenttime; git push}
function lpull {git init; git pull;}
function shellem {Copy-Item -Path $PROFILE -Destination ~\gh\SP\; cd ~\gh\SP;  lcommit; cd ~; clear; x}
function shellme {Start-Process "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Vim 9.1\Vim.lnk" $PROFILE; clear}
function wimip {curl ifconfig.me/ip | Select-Object Content}
function vscode {  $nameof = pwd; Start-Process  "~\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Visual Studio Code\Visual Studio Code.lnk" $nameof}



<#

$P: Propuse, DL: Deadline 


IDEAS:

A:$compinfo = Get-ComputerInfo reorganize using sls and get imagery thought github with if statemtents create bin and uplead winget. hyg neofetch//:
B::: AYNTKA:::::::::::::::: low very
C: make scriptPS: ls ~\gh, index each; check repo uptodate with main. if more dif; Decision Lcommit/Lpush


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
F: rm -recurse -force dir and files PS;



#>
