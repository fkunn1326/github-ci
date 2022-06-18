# First, install required packages...
sudo apt update
sudo apt install -y socat xfce4 xfce4-goodies xfonts-base xubuntu-icon-theme xubuntu-wallpapers gnome-icon-theme x11-apps x11-common x11-session-utils x11-utils x11-xserver-utils x11-xkb-utils dbus-user-session dbus-x11 gnome-system-monitor gnome-control-center libpam0g libxt6 libxext6

# Second, install TurboVNC
wget https://jaist.dl.sourceforge.net/project/virtualgl/3.0.1/virtualgl_3.0.1_amd64.deb
sudo dpkg -i turbovnc_2.2.5_amd64.deb

# Fourth, generate and copy passwd file and xstartup script
export PATH=$PATH:/opt/TurboVNC/bin
mkdir $HOME/.vnc
cp ./resources/xstartup $HOME/.vnc/xstartup.turbovnc
echo $VNC_USER_PASSWORD | vncpasswd -f > $HOME/.vnc/passwd
chmod 0600 $HOME/.vnc/passwd

# Fifth and last, set up auth token from argument
exit
