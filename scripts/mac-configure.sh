#disable spotlight indexing
sudo mdutil -i off -a
sudo spctl --master-disable
brew install socat

#Create new account
sudo dscl . -create /Users/vncuser
sudo dscl . -create /Users/vncuser UserShell /bin/bash
sudo dscl . -create /Users/vncuser RealName "VNC User"
sudo dscl . -create /Users/vncuser UniqueID 1001
sudo dscl . -create /Users/vncuser PrimaryGroupID 80
sudo dscl . -create /Users/vncuser NFSHomeDirectory /Users/vncuser
sudo dscl . -passwd /Users/vncuser $1
sudo dscl . -passwd /Users/vncuser $1
sudo createhomedir -c -u vncuser > /dev/null

#Enable VNC
sudo /System/Library/CoreServices/RemoteManagement/ARDAgent.app/Contents/Resources/kickstart -configure -allowAccessFor -allUsers -privs -all
sudo /System/Library/CoreServices/RemoteManagement/ARDAgent.app/Contents/Resources/kickstart -configure -clientopts -setvnclegacy -vnclegacy yes 

#VNC password - http://hints.macworld.com/article.php?story=20071103011608872
echo $2 | perl -we 'BEGIN { @k = unpack "C*", pack "H*", "1734516E8BA8C5E2FF1C39567390ADCA"}; $_ = <>; chomp; s/^(.{8}).*/$1/; @p = unpack "C*", $_; foreach (@k) { printf "%02X", $_ ^ (shift @p || 0) }; print "\n"' | sudo tee /Library/Preferences/com.apple.VNCSettings.txt

#Start VNC/reset changes
sudo /System/Library/CoreServices/RemoteManagement/ARDAgent.app/Contents/Resources/kickstart -restart -agent -console
sudo /System/Library/CoreServices/RemoteManagement/ARDAgent.app/Contents/Resources/kickstart -activate

#start piping
#curl -L https://github.com/nwtgck/piping-server-pkg/releases/download/v1.12.3/piping-server-pkg-mac-x64.tar.gz | tar xzvf -
#sudo xattr -d com.apple.quarantine ./piping-server-pkg-mac-x64/piping-server
#./piping-server-pkg-mac-x64/piping-server -s https://ppng.io server -p 5900 fkunn1326 fkunn1327

socat 'EXEC:curl -NsS http\://ppng.io/xxx!!EXEC:curl -NsST - http\://ppng.io/yyy' TCP:127.0.0.1:5900
