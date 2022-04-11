# Run This Script Using The Following Command
# Set-ExecutionPolicy Bypass -Scope Process -Force; .\install-with-chocolatey.ps1
Workflow Install-Applications{
    Install-Chocolatey
    Enable-WSL
    Restart-Computer -wait
    Install-Remaining
}

Workflow Install-Remaining{
    Parallel{
        Install-APITools
        Install-Drivers
        Install-UserTools
        Install-PythonTools
        Install-PHPTools
        Install-GitTools
        Install-OfficeTools
        Install-CloudTools
        Install-CommsTools
        Install-MediaTools
        Install-TestingTools
        Install-VMtools
        Install-WSLEnvs
        Install-Browsers
        Install-IDEs
    }
}

Workflow Install-Chocolatey{
    Sequence{
        # Install Chocolatey
        # Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
    }
}

Workflow Enable-WSL{
    Sequence{
        # Setup WSL2
        dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
        dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
        wsl --set-default-version 2
        choco install wsl2
    }
}

Workflow Install-IDEs{
    Parallel{
        choco install jetbrainstoolbox phpstorm intellijidea-ultimate clion-ide datagrip webstorm goland -y
        choco install visualstudio2022community -y
        choco install vscode brackets notepadplusplus mysql.workbench -y
    }
}

Workflow Install-Browsers{
    Parallel{
        choco install googlechrome firefox vivaldi filezilla -y
    }
}

Workflow Install-WSLEnvs{
    Parallel{
        choco install wsl-opensuse wsl-ubuntu-2004 -y
    }
}

Workflow Install-VMtools{
    Parallel{
        choco install docker-desktop virtualbox vagrant vmware-workstation-player -y
    }
}

Workflow Install-TestingTools{
    Parallel{
        choco install screamingfrog -y
    }
}

Workflow Install-MediaTools{
    Parallel{
        choco install obs-studio vlc audacity shotcut openshot -y
        choco install drawio inkscape gimp krita -y
        choco install sonos-controller musescore kindle -y
    }
}

Workflow Install-CommsTools{
    Parallel{
        choco install microsoft-teams zoom skype slack telegram discord twitch signal -y
    }
}

Workflow Install-CloudTools{
    Parallel{
        choco install kubernetes-cli terraform kubernetes-kompose minikube jenkins awscli -y
    }
}

Workflow Install-OfficeTools{
    Parallel{
        choco install libreoffice-fresh microsoft-office-deployment -y
    }
}

Workflow Install-GitTools{
    Parallel{
        choco install git sourcetree github-desktop gitkraken gh -y
    }
}

Workflow Install-PHPTools{
    Parallel{
        choco install php composer -y
    }
}

Workflow Install-PythonTools{
    Parallel{
        choco install python3 pip -y
    }
}

Workflow Install-UserTools {
    Parallel{
        choco install google-drive-file-stream bitwarden authy-desktop -y
    }
}

Workflow Install-Drivers{
    Parallel{
        choco install barrier displaylink rufuc etcher -y
    }
}

Workflow Install-APITools{
    Parallel{
        choco install postman -y
    }
}

# Install External Apps Using Chocolatey
# Remove for next test - android-sdk androidstudio flutter androidstudio virtualbox-guest-additions-guest spotify
# Possible for Docker hugo jekyll nodejs mongodb nginx elasticsearch

Install-Applications
