#!/bin/bash

# Remove unused packages
sudo apt autoremove -y

# Clean package cache
sudo apt clean

# Remove old kernels
sudo apt-get autoremove --purge

# Clear the thumbnail cache
rm -r ~/.cache/thumbnails/*

# Clear the package manager cache
sudo rm -rf /var/lib/apt/lists/*

# Remove old log files
sudo find /var/log -type f -regex '.*\.gz$' -delete
sudo find /var/log -type f -regex '.*\.[0-9]+$' -delete

# Clean up temporary files
sudo rm -rf /tmp/*

# Clear the trash
rm -rf ~/.local/share/Trash/*

# Remove old configuration files
sudo find /etc -type f -name '*.dpkg-*' -delete

# Clear systemd journal logs
sudo journalctl --vacuum-time=7d

# Display a message indicating the completion of the cleaning process
echo "Cleanup completed successfully!"
