﻿# Uninstall Bonjour
choco uninstall bonjour -y


# Remove VirtualBox, OLE community VM, and OLE community box,
# only if the user agrees
$vb = Read-Host 'Are you sure you want to remove Virtualbox? (Y)es, (N)o'

if ($vb.ToUpper() -eq 'Y') {
    choco uninstall virtualbox -y
}
  
$vm = Read-Host 'Do you want to remove the virtual machine? (Y)es, (N)o'

if ($vm.ToUpper() -eq 'Y') {
    C:\HashiCorp\Vagrant\bin\vagrant.exe destroy ole/jessie64 -f
}

$box = Read-Host 'Do you want to remove also all the files? (Y)es, (N)o'

if ($box.ToUpper() -eq 'Y') {
    C:\HashiCorp\Vagrant\bin\vagrant.exe box remove ole/jessie64 -f
}

# Only uninstall Git if the user agrees
$git = Read-Host 'Are you sure you want to remove Git? (Y)es, (N)o'

if ($git.ToUpper() -eq 'Y') {
    choco uninstall git, git.install -y
}

# Uninstall vagrant
choco uninstall vagrant -y

# Uninstall chocolatey
choco uninstall chocolatey -y

# Remove ole--vagrant-community and chocolatey folder and subfolders
"$HOME\ole--vagrant-community", "$env:ALLUSERSPROFILE\chocolatey" | % {
    Get-ChildItem -Path $_ -Recurse | Remove-Item -Force -Recurse
    Remove-Item $_ -Force -Recurse
    }

# Remove vagrant job from Startup
Unregister-ScheduledJob VagrantUp -Force

# Remove desktop icon
Remove-Item C:\Users\*\Desktop\MyBeLL.lnk –Force
