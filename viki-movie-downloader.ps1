<#
.SYNOPSIS
    Script to Download movie downlodable files from github
#>

#----------------------------
# Vars
#----------------------------

[bool]$gitInstalled     = [boolean](Get-Command -name git.exe -ea SilentlyContinue)
[string]$cloneDir    = "$Env:USERPROFILE\downloads\newMovies"

#----------------------------
# Vars
#----------------------------

if(! $gitInstalled){
    Write-Output "git is not installed, please install git before executing this script"
    exit 10
}
else{
    Write-Output "git is installed, Going ahead.."
}

#Clone the repo
if(Test-Path $cloneDir){Remove-Item -Path $cloneDir -Force -Recurse}
git clone https://github.com/hclpandv/movies-playground.git $cloneDir
