The video driver screen had the driver selections disabled. To fix this: 

sudo apt-get remove "nvidia*" 

Then reboot. After rebooting the `xserver.xorg-video-nouveau` open source driver is selected. This is the driver that made 4K work with the Asus MG28UQ. See video-driver.png to see this driver selected. 
