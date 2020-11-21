#!/bin/bash
#Copyright NeonDevelopment & SsmidgeXYZ 2020
#PORT
read -p "Would you like to deny or to accept a port? Type deny to deny and accept to accept. " denyaccept
echo

echo;echo
echo "You entered $denyaccept"
echo
read -p "Is this correct? y/n " denyacceptans
echo
if [ $denyacceptans == "y" ]
    then
    echo
    else
    echo
fi



#Port


read -p "What is the port you would like to $denyaccept " port
echo


echo;echo
echo "You entered $port "
read -p "Is this correct? y/n " portans
echo

if [ $portans == "y" ]
    then
    echo
fi

if [ $portans == "n" ]
    then 
    echo "Canceling..."
    exit 0
    echo
fi


if [[ $denyaccept == *"deny"* ]]; then
        echo Successfully denied $port
        ufw deny $port
        exit 0
fi

if [[ $denyaccept == *"allow"* ]]; then
        ufw allow $port
        echo Successfully allowed $port
        exit 0
fi



exit 0
