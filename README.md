# Windows Forensic Workstation with Vagrant

This tool automates the setup of a Windows forensic workstation using Vagrant and VMware Workstation. It provisions a Windows VM with essential forensic tools, sets up a virtual environment, and configures system settings for forensic analysis.

## Features:

- Provisions a Windows VM with VMware Workstation on Linux.
- Installs essential forensic tools via Chocolatey.
- Configures VM with dynamic CPU & RAM based on host machine resources.
- Allows custom VM naming or uses an NSA-style random name.
- Configures networking with NAT & private NIC.
- Disables Windows Defender and Windows Firewall for analysis purposes.

## Prerequisites:

- VMware Workstation on Linux
- Vagrant
- Vagrant VMware Desktop Plugin
- A suitable Windows Vagrant box for VMware Workstation

## Setup:

1. Clone the repository:
   ```
   git clone <repository-url>
   cd <repository-directory>
   ```

2. Start the VM:
   - With a specific name: `VM_NAME="YourMachineName" vagrant up`
   - With a random NSA-style name: `vagrant up`

## Directory Structure:

- `Vagrantfile`: Main configuration file for VM setup.
- `provision.ps1`: PowerShell script to install forensic tools and configure Windows features.
- `post_setup.ps1`: PowerShell script to disable security tools for forensic purposes.

## Notes:

- Ensure you've acquired the necessary licenses and permissions for the software and tools you're using.
- Always use this tool in a controlled and safe environment, especially since security features are disabled.
