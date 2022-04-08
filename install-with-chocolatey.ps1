# Run This Script Using The Following Command
# Set-ExecutionPolicy Bypass -Scope Process -Force; .\install-with-chocolatey.ps1

# Setup WSL2
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
wsl --set-default-version 2

# Install Chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

# Install External Apps Using Chocolatey
# Remove for next test - android-sdk androidstudio flutter androidstudio virtualbox-guest-additions-guest
# Possible for Docker hugo jekyll nodejs mongodb nginx elasticsearch
choco install php vscode jetbrainstoolbox phpstorm googlechrome microsoft-office-deployment microsoft-teams whatsapp python3 visualstudio2022community docker-desktop drawio inkscape gimp mysql.workbench obs-studio screamingfrog wsl2 wsl-opensuse wsl-ubuntu-2004 virtualbox vagrant spotify twitch firefox google-drive-file-stream notepadplusplus zoom skype filezilla libreoffice-fresh vlc git awscli slack inkscape postman audacity kubernetes-cli terraform vmware-workstation-player kubernetes-kompose minikube jenkins sonos-controller pip signal sourcetree intellijidea-ultimate clion-ide datagrip webstorm goland rufus telegram github-desktop bitwarden discord etcher authy-desktop composer vivaldi shotcut brackets krita openshot gh displaylink gitkraken musescore kindle barrier -y
