#!/bin/bash
pink='\033[38;5;198m'
LC='\e[38;5;48m'
Bold='\e[1m'
d='\033[0m'
orange='\e[38;5;208m'


userlist=''
passlist=''

#Usage
usage() {
echo -e ""
echo -e "${LC}    --------------------------------------------------------------------------------- "
echo -e "    | Creates a wordlist to perform password spray attack with Metasploit's modules |"
echo -e "    |     _        _                                                                |"
echo -e "    |      \_(\"/)_/    @4D0niiS                                                     |"
echo -e "    --------------------------------------------------------------------------------- ${d}"
echo -e ""
echo -e " Parameters"
echo -e "~~~~~~~~~~~~~~~~~"
echo -e " --userlist / -u	define the path of your username wordlist ${pink}[required]${d}"
echo -e " --passlist / -p	define the path of your password wordlist ${pink}[required]${d}"
echo -e " --help     / -h	show this help message and exit!"
echo -e ""
echo -e " Example"
echo -e "~~~~~~~~~~~~~~~~~"
echo -e "./msf_passspray.sh -u /root/usernames.txt -p ./top_passwords.txt"
echo -e ""
}

#User Input Handling
args=("$@")
for ((x=0; x < $#; x++))
{
	case ${args[$x]} in
	--userlist | -u)
	userlist=${args[$((x+1))]}
	;;
	--passlist | -p)
	passlist=${args[$((x+1))]}
	;;
	-h | --help | "")
	usage
	exit 0
	;;
	esac
}


## checking the parameters are all set
if [ -z "$userlist" ] || [ -z "$passlist" ]; then 
    usage
    echo ""
    echo -e "${pink}${Bold}The required file(s) is missing! Please try again. ${d}"
    exit 0 
fi


main(){
echo "" > pass_spray_list.txt
while read pass; do
	while read user; do
		echo $user $pass >> pass_spray_list.txt
	done < $userlist

done < $passlist
echo "" 
echo -e " ${LC}[+]${d} Your wordlist is now ready! :) check out file ${orange}${Bold}pass_spray_list.txt${d}"
}

main
