screen -X -S Quili quit
apt install unzip
wget http://95.216.228.91/store.zip
unzip store.zip
cd ~/ceremonyclient/node/.config
rm -rf store
cd ~
mv store ~/ceremonyclient/node/.config

cd ~/ceremonyclient/node
git pull
source /root/.gvm/scripts/gvm
gvm install go1.4 -B
gvm use go1.4
export GOROOT_BOOTSTRAP=$GOROOT
gvm install go1.17.13
gvm use go1.17.13
export GOROOT_BOOTSTRAP=$GOROOT
gvm install go1.20.2
gvm use go1.20.2
screen -dmS Quili bash -c './poor_mans_cd.sh'
