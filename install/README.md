# Install

To install a BeLL-Apps community on your system (x86 or amd64 architecture) just follow the instruction of your Operating System:

## Windows

```
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/dogi/ole--vagrant-community/master/windows/install.bat', 'install.bat')" && start install.bat && exit
```
```
@powershell -Command "(New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/dogi/ole--vagrant-community/master/windows/install.ps1', 'install.ps1')" && @powershell -NoProfile -ExecutionPolicy Bypass -Command ".\install.ps1"
```
Paste one of the above lines at a [Command prompt](http://www.howtogeek.com/235101/10-ways-to-open-the-command-prompt-in-windows-10/).

## MacOSX

```
/usr/bin/bash -e "$(curl -fsSL https://raw.githubusercontent.com/dogi/ole--vagrant-community/master/macosx/install.sh)"
```
Paste that at a [Terminal prompt](http://blog.teamtreehouse.com/introduction-to-the-mac-os-x-command-line).

## Ubuntu

```
/usr/bin/bash -e "$(curl -fsSL https://raw.githubusercontent.com/dogi/ole--vagrant-community/master/ubuntu/install.sh)"
```
Paste that at a [Terminal prompt](http://askubuntu.com/questions/183775/how-do-i-open-a-terminal).
