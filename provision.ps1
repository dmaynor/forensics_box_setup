# Ensure the execution policy is set to allow the script to run
Set-ExecutionPolicy Bypass -Scope Process -Force

# Install Chocolatey
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072
iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# Install the required Chocolatey packages
choco install regripper hasher-erz logfileparser usnjrnl2csv fulleventlogview loki-scanner hindsight hindsight-gui hibernation-recon bulk-extractor volatility3 fastfinder ericzimmermantools autopsy sandboxie -y

# Enable Virtual Machine Platform and WSL
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all
wsl --set-default-version 2
