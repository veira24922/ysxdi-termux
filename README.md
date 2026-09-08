# YSXDI for Termux
YSXDI (Yet Simple XFCE Desktop Installer) is a automated bash script that lets you install XFCE without the need to type too many commands (like me being lazy) on Termux (without proot-distro). This script additionally installs LibreWolf, LibreOffice and Micro *(yeah, this is my favorite editor because it is easier than vim in my opinion)*.

# Installing
To run the install script, use this bash command:
``curl -o ysxdi-installer.sh https://raw.githubusercontent.com/veira24922/ysxdi-termux/refs/heads/main/ysxdi-installer.sh && bash ysxdi-installer.sh``

The script will ask if you would confirm this installation, then proceed.

# Running
To run XFCE manually, use this bash command:
``bash ~/xfce-start.sh``

# Installing Turnip
For Adreno users, they can manually install Freedreno/Turnip by running this command:
``pkg install tur-repo -y && pkg install mesa-vulkan-icd-freedreno vulkan-tools -y``

Once then, the user need to configure the ˋˋ˜/.bashrcˋˋ file with these exports:
```bash
export GALLIUM_DRIVER=zink
export MESA_LOADER_DRIVER_OVERRIDE=zink
export TU_DEBUG=sysmem
```

*Restarting Termux is recommended for the changes to apply in order*
 filThis will start the desktop on X11.
