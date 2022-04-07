# Setup Scripts To Quickly Setup Windows Desktop Environments On Fresh Install
Scripts that I use to automate windows apps installation on Windows 10/11. This is dependent on [Chocolatey Package Manager](https://chocolatey.org/) for Windows. These script should work with Windows 10 and 11. They may also work with earlier versions of Windows as well. These files are not meant to be an example of "best practice", but are reference for my own purposes. Please use them at your own risk.

## Install Chocolatey and Install External Apps
Use the Command in Powershell with Administrator priviledges (assuming that you are in the correct folder):
```
  Set-ExecutionPolicy Bypass -Scope Process -Force; .\install-with-chocolatey.ps1
```
This script install commonly used applications, downloading them from the [Chocolatey Community Repositories](https://community.chocolatey.org/packages), and then installing them locally. It currently installs the following packages:

1. PHP 
2. VS Code 
3. JetBrains ToolBox 
4. JetBrains PhpStorm
5. Google Chrome 
6. Office365 Installer 
7. Microsoft Teams 
8. WhatsApp Messenger 
9. Android Studio (by Jetbrains) 
10. Python 
11. Visual Studio 2022 Community Edition 
12. Docker Desktop 
13. Draw.io 
14. Inkscape 
15. Gimp
16. MySQL Workbench 
17. OBS Studio 
18. Screaming Frog SEO Spider
19. Windows Linux Subsystem 2
20. OpenSuse for WSL 
21. Ubuntu 20.04 for WSL 
22. VirtualBox 
23. VirtualBox Guest Editions 
24. Vagrant 
25. Spotify 
26. Twitch Studio
27. Flutter
