#!/bin/bash


opcion="ninguna"

echo ""

#Opcion1 IP ###############################################
function opcion1
{

echo ""
echo -e "[\e[31m+\e[0m] \e[33m Ingrese la IP \e[0m"
echo ""
read v1
echo ""

if [[ $v1 == $v1 ]]
then
	nmap --script smb-vuln-conficker.nse,smb-vuln-cve2009-3103.nse,smb-vuln-cve-2017-7494.nse,smb-vuln-ms06-025.nse,smb-vuln-ms07-029.nse,smb-vuln-ms08-067.nse,smb-vuln-ms10-054.nse,smb-vuln-ms10-061.nse,smb-vuln-ms17-010.nse,smb-vuln-regsvc-dos.nse,smb-vuln-webexec.nse -p445 $v1 #| grep 'Nmap scan report for \| State: \| IDs: \| Risk factor:'
fi

   read
   return 0

}

#Opcion2 RED ###############################################
function opcion2
{

echo ""
echo -e "[\e[31m+\e[0m] \e[33m Ingrese la IP de RED - \e[0m CIDR"
echo ""
read v2
echo ""

if [[ $v2 == $v2 ]]
then
	nmap --script smb-vuln-conficker.nse,smb-vuln-cve2009-3103.nse,smb-vuln-cve-2017-7494.nse,smb-vuln-ms06-025.nse,smb-vuln-ms07-029.nse,smb-vuln-ms08-067.nse,smb-vuln-ms10-054.nse,smb-vuln-ms10-061.nse,smb-vuln-ms17-010.nse,smb-vuln-regsvc-dos.nse,smb-vuln-webexec.nse -p445 $v2 #| grep 'Nmap scan report for \| State: \| IDs: \| Risk factor:'
fi

   read
   return 0

}

while [ $opcion != "3"  ]
    do

	echo ""
	echo -e "	\e[33m[\e[0m	Escaner de Vulns SMB	\e[33m]\e[0m	"
	echo ""

	echo -e "\e[31m \nMenu \e[0m"
	echo -e "\t1) [\e[31m+\e[0m] \e[33msigle IP\e[0m"
	echo -e "\t2) [\e[31m+\e[0m] \e[33mAll Network\e[0m"
	echo -e "\t3) [\e[31m-\e[0m] \e[33mSalir\n\e[0m"
	echo -e "\e[31m \tOpcion: \e[0m \c"

	read opcion

if [ -z $opcion ] ; then opcion="ninguna" ; fi

        case $opcion in
		"1" )
                      opcion1
  		      ;;
		"2" )
		      opcion2
		      ;;
		"*" )
		      ;;

	esac

	/usr/bin/clear
done
