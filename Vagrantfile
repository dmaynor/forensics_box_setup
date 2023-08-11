Vagrant.configure("2") do |config|
  config.vm.box = "your_windows_box_name"

  # Networking
  config.vm.network "private_network", type: "dhcp"  # Adds a private NIC

  config.vm.provider :vmware_desktop do |vmware, override|
    vmware.gui = true

    # Logic to determine CPU and RAM based on host machine
    total_host_cpu = `nproc`.to_i  # Fetch total CPU cores of the host machine
    total_host_ram = `grep MemTotal /proc/meminfo | awk '{print $2}'`.to_i / 1024  # Fetch total RAM in MB

    # Use half the total cores and RAM for VM, with a minimum of 1 core and 1024MB RAM
    vmware.cpus = [total_host_cpu / 2, 1].max  
    vmware.memory = [total_host_ram / 2, 1024].max  

    # Generate a random "NSA-style" name
    def generate_nsa_style_name
      words = ["Eagle", "Falcon", "Shield", "Hammer", "Blizzard", "Torch", "Thunder", "Viper", "Stingray", "Condor"]
      "#{words.sample}-#{words.sample}"
    end

    vm_name = ENV['VM_NAME'] || generate_nsa_style_name
    config.vm.hostname = vm_name

    # Additional provisioning for post-setup
    override.vm.provision "shell", path: "post_setup.ps1"
  end

  config.vm.provision "shell", path: "provision.ps1"
end
