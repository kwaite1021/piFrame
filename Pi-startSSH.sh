#/bin/bash
#Updated 28OCT2017
#Depends on bash, nmap, grep
#Please place this file on your local computer
#If you recieve the error 'No route to host', ensure pi is on and has booted
#------------ SSH to Pi -----------------------
read -p "Press S to scan for your pi, or press enter for last known address" -n 1 -s reply
echo
if [[ $reply =~ ^[Ss]$ ]]
  then
    # Get local Hostname
    echo $(hostname -I) > hostname.txt
    LOurl=$(cut -c -12 hostname.txt)
    echo "Local address: "$LOurl
    echo "Please wait for nmap to scan (~ 1 minute)"
    nmap -sn $LOurl/24 > PIIP.txt
    piCount=$(grep -c "raspberrypi" PIIP.txt)
    if [ $piCount -eq 1 ]
      then
        piADD=$(grep -i "raspberrypi" PIIP.txt | grep -oE '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}')
        echo $piADD > piaddress.txt
        echo "Found a pi on "$piADD" attempting connection..."
        ssh pi@$piADD
      else
        echo "Sorry, pi not found on network (device ON & booted?)"
    fi
  else
    #Try using the last known address if file exists
    if [ -e piaddress.txt ]
    then
      piLadd=$(grep -oE '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' piaddress.txt)
      echo "Attempting SSH connection using last address "$piLadd
      ssh pi@$piLadd
    else
      echo "No address file, re-run this let nmap scan"
    fi
fi
