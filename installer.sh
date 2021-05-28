#!/bin/bash

# By Skyline

echo "Installing zenity"
sudo apt install zenity
if zenity --question --title "Installer" --text "Do you want to install AndroidTools?" --ok-label=Yes --cancel-label=No --no-wrap
then
    sudo cp -r androidtools /usr/bin/
    sudo chmod +x /usr/bin/androidtools
    cd ~/.local/share/applications/
    echo "[Desktop Entry]
Type=Application
Encoding=UTF-8
Name=AndroidTools
Comment=Use some ADB and Fastboot commands without using the terminal.
Exec=androidtools
Icon=tools
Terminal=false" >> androidtools.desktop
    chmod +x androidtools.desktop
    zenity --info --title "Success" --text "Successfully installed AndroidTools" --no-wrap
else
    exit 1
fi 
