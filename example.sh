#!/bin/bash

echo "===================="
echo "|   HACKER TOOLS   |"
echo "===================="
echo "          \ "
echo "           \  ^__^ "
echo "            \ (OO)\______  "
echo "              (__)\      )\/\ "
echo "                   ||---W|   "
echo "                   ||   ||"
echo "\n"

while :
do
echo "    ==============="
echo "    |  MAIN MENU  |"
echo "    ==============="
echo " (1) Information Gathering"
echo " (2) Vulnerability Analysis"
echo " (3) Web Application Analysis"
echo " (4) Database Assessment"
echo " (5) Password Attacks"
echo " (6) Wireless Attacks"
echo " (7) Reverse Engineering"
echo " (8) Explotation Tools"
echo " (9) Sniffing e Spoofing"
echo "(10) Post Explotation"
echo "(11) Forensics"
echo "(12) Reporting Tools"
echo "(13) Exit"
read main

	if [ "$main" = "1" ] ; then
		echo "    ==========================="
		echo "    |  INFORMATION GATHERING  |"
		echo "    ==========================="
		echo "(1) Dmitry"
		echo "(2) IKE"
		echo "(3) P0f"
		echo "(4) NetDiscover"
		echo "(5) Nmap"
		echo "(6) Maltego"
		echo "(7) Recon"
		echo "(8) Sparta"
		echo "(9) Exit"
		read menu1

		if [ "$menu1" = "1" ] ; then
			echo "Enter a domain"
			read x
			dmitry $x
			echo ""; fi

		if [ "$menu1" = "2" ] ; then
			echo "Enter a network IP"
			echo "Enter a network ID"
			read x
			read y
			ike-scan $x -M -A --id $y
			echo ""; fi

		if [ "$menu1" = "3" ] ; then
			p0f -L
			echo "Enter a network interface"
			read x
			p0f -i $x
			echo ""; fi

		if [ "$menu1" = "4" ] ; then
			echo "Enter a network IP"
			read x
			netdiscover -r $x/24
			echo ""; fi

		if [ "$menu1" = "5" ] ; then
			echo "Enter a network IP"
			read x
			nmap -v -n -Pn -sS -sV -g 53 -O $x -p-
			echo ""; fi
		
		if [ "$menu1" = "6" ] ; then
			echo "Starting....."
			maltego
			echo ""; fi

		if [ "$menu1" = "7" ] ; then
			echo "Starting....."
			recon-ng
			echo ""; fi

		if [ "$menu1" = "8" ] ; then
			echo "Starting....."
			sparta
			echo ""; fi

		if [ "$menu1" = "9" ] ; then
			clear
			exit 0; fi
	fi

	if [ "$main" = "2" ] ; then
		echo "    ============================"
		echo "    |  VULNERABILITY ANALYSIS  |"
		echo "    ============================"
		echo "(1) Golismero"
		echo "(2) Lynis"
		echo "(3) Nikto"
		echo "(4) UnixPrivesc"
		echo "(5) Exit"
		read menu2

		if [ "$menu2" = "1" ] ; then
			echo "Enter a domain"
			read x
			golismero $x
			echo ""; fi

		if [ "$menu2" = "2" ] ; then
			echo "Enter a network IP"
			read x
			lynis audit system remote $x
			echo ""; fi

		if [ "$menu2" = "3" ] ; then
			echo "Enter a domain"
			read x
			nikto --url $x
			echo ""; fi

		if [ "$menu2" = "4" ] ; then
			echo "Starting....."
			unix-privesc-check detailed
			echo ""; fi

		if [ "$menu2" = "5" ] ; then
			clear
			exit 0; fi
	fi

	if [ "$main" = "3" ] ; then
		echo "    ============================"
		echo "    |  WEB APPLICATION ANALYSIS |"
		echo "    ============================"
		echo " (1) Burpsuite"
		echo " (2) Commix"
		echo " (3) HtTrack"
		echo " (4) OWASP-ZAP"
		echo " (5) Paros"
		echo " (6) Skipfish"
		echo " (7) SqlMap"
		echo " (8) Webscarab"
		echo " (9) WpScan"
		echo "(10) Exit"
		read menu3

		if [ "$menu3" = "1" ] ; then
			echo "Starting....."
			burpsuite
			echo ""; fi

		if [ "$menu3" = "2" ] ; then
			echo "Enter a domain"
			read x
			commix --url http://www.$x
			echo ""; fi

		if [ "$menu3" = "3" ] ; then
			echo "Enter a domain"
			read x
			httrack $x 
			echo ""; fi

		if [ "$menu3" = "4" ] ; then
			echo "Starting....."
			owasp-zap
			echo ""; fi

		if [ "$menu3" = "5" ] ; then
			echo "Starting....."
			paros
			echo ""; fi

		if [ "$menu3" = "6" ] ; then
			echo "Enter a domain"
			read x
			skipfish -o 202 http://www.$x
			echo ""; fi

		if [ "$menu3" = "7" ] ; then
			echo "Enter a domain"
			read x
			sqlmap --url $x
			echo ""; fi

		if [ "$menu3" = "8" ] ; then
			echo "Starting....."
			webscarab
			echo ""; fi

		if [ "$menu3" = "9" ] ; then
			echo "Enter a domain"
			read x
			wpscan --url http://www.$x
			echo ""; fi

		if [ "$menu3" = "10" ] ; then
			clear
			exit 0; fi
	fi

	if [ "$main" = "4" ] ; then
		echo "    ========================="
		echo "    |  DATABASE ASSESSMENT  |"
		echo "    ========================="
		echo " (1) BbqSql"
		echo " (2) JSQL"
		echo " (3) MDB"
		echo " (4) OsScanner"
		echo " (5) SidGuesser"
		echo " (6) SqlDict"
		echo " (7) SqLite"
		echo " (8) SqlMap"
		echo " (9) SqlNinja"
		echo "(10) SqlSus"
		echo "(11) Exit"
		read menu4

		if [ "$menu4" = "1" ] ; then
			echo "Starting....."
			bbqsql
			echo ""; fi

		if [ "$menu4" = "2" ] ; then
			echo "Starting....."
			jsql
			echo ""; fi

		if [ "$menu4" = "3" ] ; then
			echo "Enter the name of the database"
			read x
			mdb-sql $x
			echo ""; fi

		if [ "$menu4" = "4" ] ; then
			echo "Enter a network IP"
			read x
			oscanner -s $x
			echo ""; fi

		if [ "$menu4" = "5" ] ; then
			echo "Enter a network IP"
			read x
			sidguess -i $x -d /usr/share/wordlists/rockyou.txt.gz
			echo ""; fi

		if [ "$menu4" = "6" ] ; then
			echo "Starting....."
			sqldict
			echo ""; fi

		if [ "$menu4" = "7" ] ; then
			echo "Enter file path"
			read x
			sqlite3 $x 
			echo ""; fi

		if [ "$menu4" = "8" ] ; then
			echo "Enter a domain"
			read x
			sqlmap --url $x
			echo ""; fi

		if [ "$menu4" = "9" ] ; then
			echo "Starting....."
			sqlninja -m s -v -d 1 -f /usr/share/doc/sqlninja/sqlninja.conf.example.gz
			echo ""; fi

		if [ "$menu4" = "10" ] ; then
			echo "Enter a filename"
			read x
			sqlsus -g $x
			sqlsus $x
			echo ""; fi

		if [ "$menu4" = "11" ] ; then
			clear
			exit 0; fi
	fi

	if [ "$main" = "5" ] ; then
		echo "    ======================"
		echo "    |  PASSWORD ATTACKS  |"
		echo "    ======================"
		echo " (1) Cewl"
		echo " (2) Crunch"
		echo " (3) hashcat"
		echo " (4) John"
		echo " (5) Johnny"
		echo " (6) Medusa"
		echo " (7) Ncrack"
		echo " (8) OphCrack"
		echo " (9) Pyrit"
		echo "(10) Rainbow"
		echo "(11) Rcracki"
		echo "(12) Wordlists"
		echo "(13) Exit"
		read menu5

		if [ "$menu5" = "1" ] ; then
			echo "Enter a domain"
			read x
			cewl http://www.$x
			echo ""; fi

		if [ "$menu5" = "2" ] ; then
			echo "Enter a minimum number"
			read a
			echo "Enter a maximum number"
			read b
			crunch $a $b
			echo ""; fi

		if [ "$menu5" = "3" ] ; then
			echo "Enter file path"
			read x
			hashcat -m 18200 --force -a 0 $x /usr/share/wordlists/rockyou.txt.gz
			echo ""; fi

		if [ "$menu5" = "4" ] ; then
			echo "Enter file path"
			read x
			john --format=nt $x
			echo ""; fi

		if [ "$menu5" = "5" ] ; then
			echo "Starting....."
			johnny
			echo ""; fi

		if [ "$menu5" = "6" ] ; then
			medusa -d
			echo "Enter a module"
			read a
			echo "Enter a domain"
			read b
			medusa -h $b -u admin -M $a -P /usr/share/wordlists/rockyou.txt.gz
			echo ""; fi

		if [ "$menu5" = "7" ] ; then
			echo "Enter a domain"
			read x
			ncrack -v -T5 http://www.$x
			echo ""; fi

		if [ "$menu5" = "8" ] ; then
			echo "Starting....."
			ophcrack
			echo ""; fi

		if [ "$menu5" = "9" ] ; then
			echo "Enter file path"
			read x
			pyrit -r $x analyze
			echo ""; fi

		if [ "$menu5" = "10" ] ; then
			echo "Enter the hash file path"
			read x
			rcrack -l $x
			echo ""; fi

		if [ "$menu5" = "11" ] ; then
			echo "Enter the hash file path"
			read x
			rcracki_mt -l $x
			echo ""; fi

		if [ "$menu5" = "12" ] ; then
			echo "Wordlists"
			wordlists
			echo ""; fi

		if [ "$menu5" = "13" ] ; then
			clear
			exit 0; fi
	fi

	if [ "$main" = "6" ] ; then
		echo "    ======================"
		echo "    |  WIRELESS ATTACKS  |"
		echo "    ======================"
		echo  "(1) AirCrack"
		echo  "(2) Chirp"
		echo  "(3) CowPatty"
		echo  "(4) Fern"
		echo  "(5) Giskismet"
		echo  "(6) Kismet"
		echo  "(7) Mdk3"
		echo  "(8) Mfoc"
		echo  "(9) Mfterm"
		echo "(10) PixieWps"
		echo "(11) Reaver"
		echo "(12) Wifite"
		echo "(13) Exit"
		read menu6

		if [ "$menu6" = "1" ] ; then
			echo "Enter file path"
			read x
			aircrack-ng $x -w /usr/share/wordlists/rockyou.txt.gz
			echo ""; fi

		if [ "$menu6" = "2" ] ; then
			echo "Starting....."
			chirpw
			echo ""; fi

		if [ "$menu6" = "3" ] ; then
			echo "Enter file path"
			read x
			cowpatty -r $x -f /usr/share/wordlists/rockyou.txt.gz
			echo ""; fi

		if [ "$menu6" = "4" ] ; then
			echo "Starting....."
			fern-wifi-cracker
			echo ""; fi

		if [ "$menu6" = "5" ] ; then
			echo "Starting....."
			giskismet -h
			echo ""; fi

		if [ "$menu6" = "6" ] ; then
			echo "Starting....."
			kismet
			echo ""; fi

		if [ "$menu6" = "7" ] ; then
			echo "Starting....."
			mdk3
			echo ""; fi

		if [ "$menu6" = "8" ] ; then
			echo "Enter file path"
			read x
			mfoc -O $x
			echo ""; fi

		if [ "$menu6" = "9" ] ; then
			echo "Enter file path"
			read x
			mfterm --keys=$x --dict=/usr/share/wordlists/rockyou.txt.gz
			echo ""; fi

		if [ "$menu6" = "10" ] ; then
			echo "Starting....."
			pixiewps -h
			echo ""; fi

		if [ "$menu6" = "11" ] ; then
			echo "Enter an interface"
			read a
			echo "Digte o BSSID"
			read b
			reaver -i $a -b $b -vv
			echo ""; fi

		if [ "$menu6" = "12" ] ; then
			echo "Enter an interface"
			read x
			wifite -i $x
			echo ""; fi

		if [ "$menu6" = "13" ] ; then
			clear
			exit 0; fi
	fi

	if [ "$main" = "7" ] ; then
		echo "    ========================="
		echo "    |  REVERSE ENGINEERING  |"
		echo "    ========================="
		echo " (1) ApkTool"
		echo " (2) Clang"
		echo " (3) Clang++"
		echo " (4) Dex2jar"
		echo " (5) Edb"
		echo " (6) Flasm"
		echo " (7) JavaSnoop"
		echo " (8) NASM"
		echo " (9) OllyDbg"
		echo "(10) Radare2"
		echo "(11) Exit"
		read menu7

		if [ "$menu7" = "1" ] ; then
			echo "Starting....."
			apktool -h
			echo ""; fi

		if [ "$menu7" = "2" ] ; then
			echo "Starting....."
			clang --help
			echo ""; fi

		if [ "$menu7" = "3" ] ; then
			echo "Starting....."
			clang++ --help
			echo ""; fi

		if [ "$menu7" = "4" ] ; then
			echo "Starting....."
			d2j-dex2jar -h
			echo ""; fi

		if [ "$menu7" = "5" ] ; then
			echo "Starting....."
			edb
			echo ""; fi

		if [ "$menu7" = "6" ] ; then
			echo "Starting....."
			flasm
			echo ""; fi

		if [ "$menu7" = "7" ] ; then
			echo "Starting....."
			javasnoop
			echo ""; fi

		if [ "$menu7" = "8" ] ; then
			echo "Starting....."
			nasm -h
			echo ""; fi

		if [ "$menu7" = "9" ] ; then
			echo "Starting....."
			ollydbg
			echo ""; fi

		if [ "$menu7" = "10" ] ; then
			echo "Starting....."
			radare2 -h
			echo ""; fi

		if [ "$menu7" = "11" ] ; then
			clear
			exit 0; fi
	fi

	if [ "$main" = "8" ] ; then
		echo "    ========================"
		echo "    |  EXPLOITATION TOOLS  |"
		echo "    ========================"
		echo "(1) Armitage"
		echo "(2) Beef"
		echo "(3) Metasploit"
		echo "(4) MFS Payload"
		echo "(5) Searchsploit"
		echo "(6) SeeToolKit"
		echo "(7) SqlMap"
		echo "(8) Termineter"
		echo "(9) Exit"
		read menu8

		if [ "$menu8" = "1" ] ; then
			echo "Starting....."
			armitage
			echo ""; fi

		if [ "$menu8" = "2" ] ; then
			echo "Starting....."
			beef-xss
			echo ""; fi

		if [ "$menu8" = "3" ] ; then
			echo "Starting....."
			msfconsole
			echo ""; fi

		if [ "$menu8" = "4" ] ; then
			echo "Starting....."
			msfpc
			echo ""; fi

		if [ "$menu8" = "5" ] ; then
			echo "Starting....."
			searchsploit
			echo ""; fi

		if [ "$menu8" = "6" ] ; then
			echo "Starting....."
			seetoolkit
			echo ""; fi

		if [ "$menu8" = "7" ] ; then
			echo "Enter a domain"
			read x
			sqlmap --url $x
			echo ""; fi

		if [ "$menu8" = "8" ] ; then
			echo "Starting....."
			termineter
			echo ""; fi

		if [ "$menu8" = "9" ] ; then
			clear
			exit 0; fi
	fi

	if [ "$main" = "9" ] ; then
		echo "    ========================="
		echo "    |  SNIFFING & SPOOFING  |"
		echo "    ========================="
		echo "(1) Driftnet"
		echo "(2) Ettercap"
		echo "(3) Hamster"
		echo "(4) Macchanger"
		echo "(5) MitmProxy"
		echo "(6) NetSniff"
		echo "(7) Responder"
		echo "(8) WireShark"
		echo "(9) Exit"
		read menu9

		if [ "$menu9" = "1" ] ; then
			echo "Starting....."
			drifnet
			echo ""; fi

		if [ "$menu9" = "2" ] ; then
			echo "Starting....."
			ettercap -h
			echo ""; fi

		if [ "$menu9" = "3" ] ; then
			echo "Starting....."
			hamster
			echo ""; fi

		if [ "$menu9" = "4" ] ; then
			echo "Starting....."
			macchanger -h
			echo ""; fi

		if [ "$menu9" = "5" ] ; then
			echo "Starting....."
			mitmproxy -h
			echo ""; fi

		if [ "$menu9" = "6" ] ; then
			echo "Starting....."
			netsniff-ng -h
			echo ""; fi

		if [ "$menu9" = "7" ] ; then
			echo "Starting....."
			responder -h
			echo ""; fi

		if [ "$menu9" = "8" ] ; then
			echo "Starting....."
			wireshark -k
			echo ""; fi

		if [ "$menu9" = "9" ] ; then
			clear
			exit 0; fi
	fi

	if [ "$main" = "10" ] ; then
		echo "    ======================"
		echo "    |  POST EXPLOITATION |"
		echo "    ======================"
		echo " (1) BackDoor"
		echo " (2) Exe2Hex"
		echo " (3) MimiKatz"
		echo " (4) Nishang"
		echo " (5) PowerSploit"
		echo " (6) ProxyChains"
		echo " (7) Shellter"
		echo " (8) Veil"
		echo " (9) Weevely"
		echo "(10) Exit"
		read menu10

		if [ "$menu10" = "1" ] ; then
			echo "Starting....."
			backdoor-factory
			echo ""; fi

		if [ "$menu10" = "2" ] ; then
			echo "Starting....."
			exe2hex
			echo ""; fi

		if [ "$menu10" = "3" ] ; then
			echo "Starting....."
			mimikatz
			echo ""; fi

		if [ "$menu10" = "4" ] ; then
			echo "Starting....."
			cd /usr/share/nishang && ls -l
			echo ""; fi

		if [ "$menu10" = "5" ] ; then
			echo "Starting....."
			powersploit
			echo ""; fi

		if [ "$menu10" = "6" ] ; then
			echo "Enter a command"
			read a
			echo "Enter an option"
			read b
			proxychains $a $b
			echo ""; fi

		if [ "$menu10" = "7" ] ; then
			echo "Starting....."
			shellter
			echo ""; fi

		if [ "$menu10" = "8" ] ; then
			echo "Starting....."
			veil
			echo ""; fi

		if [ "$menu10" = "9" ] ; then
			echo "Starting....."
			weevely --help
			echo ""; fi

		if [ "$menu10" = "10" ] ; then
			clear
			exit 0; fi
	fi

	if [ "$main" = "11" ] ; then
		echo "    ==============="
		echo "    |  FORENSICS  |"
		echo "    ==============="
		echo " (1) Autopsy"
		echo " (2) Binwalk"
		echo " (3) Bulk"
		echo " (4) ChkRootKit"
		echo " (5) Foremost"
		echo " (6) Galleta"
		echo " (7) HashDeep"
		echo " (8) Volafox"
		echo " (9) Volatility"
		echo "(10) Exit"
		read menu11

		if [ "$menu11" = "1" ] ; then
			echo "Starting....."
			autopsy -h
			echo ""; fi

		if [ "$menu11" = "2" ] ; then
			echo "Starting....."
			binwalk
			echo ""; fi

		if [ "$menu11" = "3" ] ; then
			echo "Starting....."
			bulk_extractor -h
			echo ""; fi

		if [ "$menu11" = "4" ] ; then
			echo "Starting....."
			chkrootkit -h
			echo ""; fi

		if [ "$menu11" = "5" ] ; then
			echo "Starting....."
			foremost -h
			echo ""; fi

		if [ "$menu11" = "6" ] ; then
			echo "Starting....."
			galleta
			echo ""; fi

		if [ "$menu11" = "7" ] ; then
			echo "Starting....."
			hashdeep -h
			echo ""; fi

		if [ "$menu11" = "8" ] ; then
			echo "Starting....."
			volafox
			echo ""; fi

		if [ "$menu11" = "9" ] ; then
			echo "Starting....."
			volatility -h
			echo ""; fi

		if [ "$menu11" = "10" ] ; then
			clear
			exit 0; fi
	fi

	if [ "$main" = "12" ] ; then
		echo "    ====================="
		echo "    |  REPORTING TOOLS  |"
		echo "    ====================="
		echo "(1) Cutycapt"
		echo "(2) Dradis"
		echo "(3) Faraday"
		echo "(4) Maltego"
		echo "(5) Pipal"
		echo "(6) RecordMyDesktop"
		echo "(7) Exit"
		read menu12

		if [ "$menu12" = "1" ] ; then
			echo "Enter a domain"
			read x
			cutycapt --url=http://www.$x --out=imagem.png
			echo ""; fi

		if [ "$menu12" = "2" ] ; then
			echo "Starting....."
			dradis
			echo ""; fi

		if [ "$menu12" = "3" ] ; then
			echo "Starting....."
			python-faraday --help
			echo ""; fi

		if [ "$menu12" = "4" ] ; then
			echo "Starting....."
			maltego
			echo ""; fi

		if [ "$menu12" = "5" ] ; then
			echo "Enter file path"
			read x
			pipal $x
			echo ""; fi

		if [ "$menu12" = "6" ] ; then
			echo "Starting....."
			recordmydesktop
			echo ""; fi

		if [ "$menu12" = "7" ] ; then
			clear
			exit 0; fi
	fi

	if [ "$main" = "13" ] ; then
		clear
		exit 0; fi
done
