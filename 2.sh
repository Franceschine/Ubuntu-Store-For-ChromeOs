#!/bin/bash
echo "Ubuntu store installer for crostini (49 commands)"
echo "1" && sudo wget https://raw.githubusercontent.com/Franceschine/Ubuntu-Store-For-ChromeOs/main/cros.list
echo "2" && sudo wget https://raw.githubusercontent.com/Franceschine/Ubuntu-Store-For-ChromeOs/main/update-cros
echo "3" && sudo apt update
echo "4" && sudo NEEDRESTART_MODE=a apt upgrade -y
echo "5" && sudo cp cros.list /etc/apt/sources.list.d/
echo "6" && sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 78BD65473CB3BD13
echo "7" && sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 4EB27DB2A3B88B8B
echo "8" && sudo apt update
echo "9" && sudo apt download cros-ui-config cros-guest-tools cros-im cros-adapta cros-apt-config cros-garcon cros-host-fonts cros-notificationd cros-sommelier cros-logging cros-pipe-config cros-sommelier-config cros-sudo-config cros-systemd-overrides cros-vmstat-metrics cros-wayland cros-tast-tests cros-sftp cros-pulse-config cros-xdg-desktop-portal
echo "10" && sudo apt download gnome-software
echo "11" && sudo NEEDRESTART_MODE=a apt install libgtk-3-0 -y
echo "12" && sudo NEEDRESTART_MODE=a dpkg --configure -a
echo "13" && sudo dpkg-deb -x  cros-im_*_amd64.deb 1
echo "14" && sudo dpkg-deb --control  cros-im_*_amd64.deb 1/DEBIAN
echo "15" && sudo sed -i 's/, qtbase-abi-5-15-2//g' 1/DEBIAN/control
echo "16" && sudo dpkg -b 1 1.deb
echo "17" && sudo NEEDRESTART_MODE=a apt install libd3dadapter9-mesa -y
echo "18" && sudo NEEDRESTART_MODE=a apt install libxatracker2 -y
echo "19" && sudo NEEDRESTART_MODE=a apt install mesa-va-drivers -y
echo "20" && sudo NEEDRESTART_MODE=a apt install mesa-vdpau-drivers -y
echo "21" && sudo NEEDRESTART_MODE=a apt install mesa-vulkan-drivers -y
echo "22" && sudo NEEDRESTART_MODE=a apt install libgl1-mesa-dri -y
echo "23" && sudo NEEDRESTART_MODE=a apt install adwaita-icon-theme-full
echo "24" && sudo NEEDRESTART_MODE=a apt install ./cros-adapta_*_all.deb -y
echo "25" && sudo NEEDRESTART_MODE=a apt install ./cros-ui-config_*_all.deb -y
echo "26" && sudo dpkg --configure -a 
echo "27" && sudo dpkg --force-overwrite -i cros-ui-config_*_all.deb 
echo "28" && sudo NEEDRESTART_MODE=a apt install ./1.deb -y
echo "29" && sudo NEEDRESTART_MODE=a apt install ./cros-apt-config_*_all.deb -y
echo "30" && sudo NEEDRESTART_MODE=a apt install ./cros-garcon_*_all.deb -y
echo "31" && sudo NEEDRESTART_MODE=a apt install ./cros-host-fonts_*_all.deb -y
echo "32" && sudo NEEDRESTART_MODE=a apt install ./cros-notificationd_*_all.deb -y
echo "33" && sudo NEEDRESTART_MODE=a apt install ./cros-sommelier_*_all.deb -y
echo "34" && sudo NEEDRESTART_MODE=a apt install ./cros-logging_*_all.deb -y
echo "35" && sudo NEEDRESTART_MODE=a apt install ./cros-pipe-config_*_all.deb -y
echo "36" && sudo NEEDRESTART_MODE=a apt install ./cros-sommelier-config_*_all.deb -y
echo "37" && sudo NEEDRESTART_MODE=a apt install ./cros-sudo-config_*_all.deb -y
echo "38" && sudo NEEDRESTART_MODE=a apt install ./cros-systemd-overrides_*_all.deb -y
echo "39" && sudo NEEDRESTART_MODE=a apt install ./cros-vmstat-metrics_*_all.deb -y
echo "40" && sudo NEEDRESTART_MODE=a apt install ./cros-wayland_*_all.deb -y
echo "41" && sudo NEEDRESTART_MODE=a apt install ./cros-pulse-config_*_all.deb -y
echo "42" && sudo NEEDRESTART_MODE=a apt install ./cros-guest-tools_*_all.deb -y
echo "43" && sudo NEEDRESTART_MODE=a apt install ./cros-tast-tests_*_all.deb -y
echo "44" && sudo NEEDRESTART_MODE=a apt install ./cros-sftp_*_all.deb -y
echo "45" && sudo NEEDRESTART_MODE=a apt install ./cros-xdg-desktop-portal_*_all.deb -y
echo "46" && sudo NEEDRESTART_MODE=a apt install ./gnome-software_*_amd64.deb -y
echo "47" && ln -sf /mnt/chromeos/MyFiles ~
echo "48" && sudo rm -rf /root/*
echo "49" && sudo reboot
