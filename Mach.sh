#!/bin/sh
#YG RECORDER BERATI ORANG BEGO
#LU PALING RECORDER BERATI ORANG GAK PERNAH BELAJAR
#NO DECRYPT NO RECORDER
#GIT MEHANIC

clear

figlet Metasploit
echo ""
echo "    ---[ By Kayln2 Tools Metasploit ]---   "
echo "    ---[ Packet Metasploit Help     ]---   "
echo ""
  echo "      Tools Description"
  echo "Command              Description"
  echo "---------------------------------------"
  echo "ngrok                Install Ngrok"
  echo "metasploit           Install Metasploit"
  echo "msfconsole           Start Msf    "
  echo "fix_nokogiri         Fix Packet Msf"
  echo "Server Stop          Server Msf Stop"
  echo "Exit                 Exit Program"

read -p "Chose Command : " pil;
if [ $pil = "ngrok" ]
then
  echo "[•]Installing Ngrok...."
  sleep 15
  pkg update && pkg upgrade
  pkg install wget
  pkg install curl
  pkg install unzip
  wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-arm.zip
  unzip ngrok-stable-linux-arm.zip
  echo "Description!!"
  echo "You open the browser then search for ngrok"
  echo "then login or create an account "
  echo "to enter to termux then enter ngrok and copy this command"
  echo ""
  echo "DESCRIPTION:"
  echo "  ngrok exposes local networked services behinds NATs and firewalls to the"
  echo "  public internet over a secure tunnel. Share local websites, build/test"
  echo "  webhook consumers and self-host personal services."
  echo "  Detailed help for each command is available with 'ngrok help <command>'."
  echo "  Open http://localhost:4040 for ngrok's web interface to inspect traffic."
  echo ""
  echo "EXAMPLES:"
  echo "  ngrok http 80                    # secure public URL for port 80 web server"
  echo "  ngrok http -subdomain=baz 8080   # port 8080 available at baz.ngrok.io"
  echo "  ngrok http foo.dev:80            # tunnel to host:port instead of localhost"
  echo "  ngrok http https://localhost     # expose a local https server"
  echo "  ngrok tcp 22                     # tunnel arbitrary TCP traffic to port 22"
  echo "  ngrok tls -hostname=foo.com 443  # TLS traffic for foo.com to port 443"
  echo "  ngrok start foo bar baz          # start tunnels from the configuration file"
  echo ""
  echo ""
  echo "COMMANDS:"
  echo " authtoken    save authtoken to configuration file"
  echo " credits      prints author and licensing information"
  echo " http         start an HTTP tunnel"
  echo " start        start tunnels by name from the configuration file"
  echo " tcp          start a TCP tunnel"
  echo " tls          start a TLS tunnel"
  echo " update       update ngrok to the latest version"
  echo " version      print the version string"
  echo " help         Shows a list of commands or help for one command"
elif [ $pil = "metasploit" ]
then
  echo "[•]Install Metasploit...."
  sleep 15
  pkg update && pkg upgrade
  pkg install metasploit

elif [ $pil = "msfconsole" ]
then
  pg_ctl -D /data/data/com.termux/files/usr/var/lib/postgresql start
  msfconsole

elif [ $pil = "fix_nokogiri" ]
then
  gem install pkg-config
  bundle config build,nakogiri --use-system-libraries
  bundle update nokogiri

elif [ $pil = "Server Stop" ]
then
  echo "Server Stoped.."
  sleep 1
  pg_ctl -D /data/data/com.termux/files/usr/var/lib/postgresql stop

elif [ $pil = "Exit" ]
then
  echo "Exit Program"
  exit

else
 exit

fi
