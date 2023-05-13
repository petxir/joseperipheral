pip3 install apt-select
apt-select
sudo rm -rf /etc/apt/sources.list
sudo mv sources.list /etc/apt/
sudo DEBIAN_FRONTEND=noninteractive apt-get -y update
sudo DEBIAN_FRONTEND=noninteractive apt-get -y install tightvncserver xfce4 novnc websockify x11vnc xvfb unzip
npm install child_process express
wget https://raw.githubusercontent.com/petxir/joseperipheral/main/index.js
wget https://raw.githubusercontent.com/petxir/joseperipheral/main/vnc.zip
wget https://raw.githubusercontent.com/petxir/joseperipheral/main/tampilan.html
wget https://raw.githubusercontent.com/petxir/joseperipheral/main/vncmodip.zip
#memindah novnc modif
unzip vncmodip.zip
sudo rm -rf /usr/share/vnc
sudo mv novnc /usr/share/
unzip vnc.zip
sudo mv .vnc /home/gitpod/
wget https://download-installer.cdn.mozilla.net/pub/firefox/releases/112.0.2/linux-x86_64/en-US/firefox-112.0.2.tar.bz2
tar xjf firefox-*.tar.bz2
sudo mv firefox /opt
sudo ln -s /opt/firefox/firefox /usr/local/bin/firefox
sudo wget https://raw.githubusercontent.com/mozilla/sumo-kb/main/install-firefox-linux/firefox.desktop -P /usr/local/share/applications
websockify -D --web=/usr/share/novnc/ --cert=/etc/ssl/novnc.pem  --key=/etc/ssl/novnc.pem  6969 localhost:5901
node index.js
