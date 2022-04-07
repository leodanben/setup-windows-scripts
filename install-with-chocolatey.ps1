# Run This Script Using The Following Command
# Set-ExecutionPolicy Bypass -Scope Process -Force; .\install-with-chocolatey.ps1

# Install Chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

# Install External Apps Using Chocolatey
choco install php vscode jetbrainstoolbox phpstorm googlechrome microsoft-office-deployment microsoft-teams whatsapp androidstudio python visualstudio2022community docker-desktop drawio inkscape gimp mysql.workbench obs-studio screamingfrog wsl2 wsl-opensuse wsl-ubuntu-2004 virtualbox virtualbox-guest-additions-guest vagrant spotify twitch -y
