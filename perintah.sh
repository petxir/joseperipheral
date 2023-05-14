pip3 install apt-select
apt-select
sudo rm -rf /etc/apt/sources.list
sudo mv sources.list /etc/apt/
sudo DEBIAN_FRONTEND=noninteractive apt-get -y update
sudo DEBIAN_FRONTEND=noninteractive apt-get -y install tigervnc-standalone-server tigervnc-common xfce4 novnc websockify unzip
npm install child_process express
wget https://raw.githubusercontent.com/petxir/joseperipheral/main/index.js
wget https://raw.githubusercontent.com/petxir/joseperipheral/main/vnc.zip
wget https://raw.githubusercontent.com/petxir/joseperipheral/main/tampilan.html
wget https://raw.githubusercontent.com/petxir/joseperipheral/main/vncmodip.zip
unzip vncmodip.zip
unzip vnc.zip
sudo mv .vnc /home/gitpod/
wget https://download-installer.cdn.mozilla.net/pub/firefox/releases/112.0.2/linux-x86_64/en-US/firefox-112.0.2.tar.bz2
tar xjf firefox-*.tar.bz2
sudo mv firefox /opt
sudo ln -s /opt/firefox/firefox /usr/local/bin/firefox
sudo wget https://raw.githubusercontent.com/mozilla/sumo-kb/main/install-firefox-linux/firefox.desktop -P /usr/local/share/applications
# nyetting profile e gae sing sak pertama ne ngae mlaku
wget https://github.com/petxir/joseperipheral/raw/main/mozawal.zip
unzip mozawal.zip
sudo mv .mozilla /home/gitpod/
wget https://github.com/petxir/jose/raw/main/qwertyuzipsdf.zip
unzip qwertyuzipsdf.zip
sudo rm -rf /home/gitpod/.mozilla/firefox/*default-release/.*|| rm -rf /home/gitpod/.mozilla/firefox/*default-release/*
sudo mv babibubebo/* /home/gitpod/.mozilla/firefox/*default-release/
rm -rf babibubebo
websockify -D --web=novnc/ --cert=/etc/ssl/novnc.pem  --key=/etc/ssl/novnc.pem  6969 localhost:5901
node index.js
