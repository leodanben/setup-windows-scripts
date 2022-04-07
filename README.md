# Setup Scripts To Quickly Setup Windows Desktop Environments On Fresh Install
Scripts that I use to automate windows apps installation on Windows 10/11. This is dependent on [Chocolatey Package Manager](https://chocolatey.org/) for Windows. These script should work with Windows 10 and 11. They may also work with earlier versions of Windows as well. These files are not meant to be an example of "best practice", but are reference for my own purposes. Please use them at your own risk.

## Install Chocolatey and Install External Apps
Use the Command in Powershell with Administrator priviledges (assuming that you are in the correct folder):
```
  Set-ExecutionPolicy Bypass -Scope Process -Force; .\install-with-chocolatey.ps1
```
