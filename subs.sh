#!/bin/bash
echo ""
echo -n -e "\e[1;36m=>Enter Your Target: \e[0m"
read domain
echo ""
mkdir /CHANGE YOUR LOCATION/$domain
echo -e "\e[0;33m=> GRABBING SUBDOMAINS USING SUBFINDER...\e[0m"
subfinder -d $domain | tee -a /CHANGE YOUR LOCATION//$domain/subfinder.txt
echo ""
echo -e "\e[0;32m=> GRABBING SUBDOMAINS USING ASSETFINDER...\e[0m"
assetfinder -subs-only $domain | tee -a /CHANGE YOUR LOCATION//$domain/assetfinder.txt

echo ""
echo -e "\e[0;32m=> GRABBING SUBDOMAINS USING xsubfind3r...\e[0m"
assetfinder -subs-only $domain | tee -a /CHANGE YOUR LOCATION//$domain/xsubfind3r.txt

echo ""
echo -e "\e[0;35m=> GRABBING SUBDOMAINS USING FINDOMAIN...\e[0m"
findomain -t $domain -q | tee -a /CHANGE YOUR LOCATION//$domain/findomain.txt

#echo ""
#echo -e "\e[0;35m=> GRABBING SUBDOMAINS USING AMASS...\e[0m"
#amass enum -d $domain | tee -a /CHANGE YOUR LOCATION/$domain/amass.txt
