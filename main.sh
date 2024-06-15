#!/bin/bash
echo "[1] Information Gathering"
echo "[2] Vulnerability Assessment"
echo "[3] Web Application Analysis"
echo "[4] Password Attack"
echo "[5] Exploitation Tools"
echo "[6] Sniffing And Spoofing"


read -p "Enter Your Choice :" choice

case $choice in
        1)
                echo "		[1] Nmap"
		echo "		[2] Recon-Ng"
		echo "		[3] The Harvester"
		echo "		[4] Hping3"
		echo "		[5] Back"
		read -p "Enter Your Choice" c1
		case $c1 in
			1)
				read -p "Options With IP Address" op
				nmap $op;;
			2)
				recon-ng;;
			3)
				read -p "Options With Domain" op
				theHarvester $op;;
			4) 
				read -p "options with Domain" op
				hping3 $op;;
			5)
				cd ..;;

			*)
				echo "Invalid Option";;
		esac;;
				

        2)
                echo "		[1]Wireshark"
		echo "		[2]Nikto"
		echo "		[3]Nmap"
		read -p "Enter Your Choice: " c2
		case $c2 in
			1)
				wireshark;;
			2)
				read -p "Enter Your Option" op
				nikto $op;;
			3)
				read -p "Option With Ip Address" op
			        nmap $op;;
			*)
				echo "Invalid";;
		esac;;
	3)
		echo "		[1]burpsuite"
		echo "		[2]nikto"
		echo "		[3]Dirbuster"
		read -p "Enter Your Choice :" c3
		case $c3 in
			1)
				burpsuite;;
			2)
				read -p "Enter Your Option" op
				nikto $op;;
			3)
				dirbuster;;
			*)
				echo "Invalid";;

		esac;;

        4)
		echo "		[1]John The Ripper"
		echo "		[2]Dirbuster"
		echo "		[3]HashCat"
		echo "		[4]Hydra"
		echo "		[5]Ophcrack"
		read -p "Enter Your Choice :" c3
		case $c3 in
			1)
				read -p "Enter Your Option" op
				john $op;;
			2)
				dirbuster;;
			3)
				read -p "Enter Your Option" op
				hashcat $op;;
			4)
				read -p "Enter Your Choice" op
				hydra $op;;
			5)
				ophcrack;;
			*)
				echo "Invalid";;
		esac;;	


        5)
		echo "		[1]Metasploit Framework"
		echo "		[2]Sqlmap"
		echo "		[3]Beef"
		read -p "Enter Your Choice :" c4
		case $c4 in
			1)
				msfconsole;;
			2)
				read -p "Enter Your Option With IP address" op
				sqlmap $op;;
			3)
				read -p "Enter Your Option" op
				beef $op;;
			*)
				echo "Invalid";;
		esac;;
	6)
		echo "		[1]Wireshark"
		echo "		[2]Tcpdump"
		echo "		[3]Zaproxy"
		read -p "Enter Your Choice :" c5
		case $c5 in
			1)
				wireshark;;
			2)
				read -p "Enter Your Interface with Option" op
				tcpdump $op;;
			3)
				zaproxy;;
			*)
				echo "Invalid";;
		esac;;
		
        *) 
                echo "Invalid"
esac
      
