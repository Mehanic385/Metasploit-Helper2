#../usr/bin/bash
r='\033[91m' #merah
g='\033[32;1m' #hijau
b='\033[34;1m' #biru
p='\033[35;1m' #purple
cy='\033[36;1m' #cyan
w='\033[00m' #putih
y='\033[33m' #kuning

clear
echo "IF U FIND ->"$y" (y/n)"$w""
echo
echo "Please select 'y' for yes and installing requirements"
read -p"Are you understand ? (y/n) > " pin
if [ $pin = y ]
then
pkg update && pkg upgrade
pkg install wget curl -y
pkg install ruby -y
gem install lolcat
pkg install python2 -y
pip2 install requests
pip2 install mechanize
pip2 install colorama
pkg install git -y
pkg install curl -y
pkg install wget -y
pkg install root-repo -y
pkg install unstable-repo -y
pkg install x11-repo
python2 dog.pyc
fi

if [ $iqbal = n ]
then
echo $r"[GOBLOK] You are stupid !"
exit
fi
