#Copyright NeonDevelopment & SsmidgeXYZ 2020
#PORT
read -p "Would you like to deny or to accept a port? Type deny to deny and accept to accept." denyaccept

echo;echo
echo "You entered $denyaccept"
read -p "Is this correct? y/n " denyacceptans
if [ $denyacceptans == "y" ]
then
echo
else
if [ $denyacceptans == "n" ]
then 
echo "Canceling..."
exit
echo
fi



#Port


read -p "What is the port you would like to $denyaccept"? port


echo;echo
echo "You entered $port"
read -p "Is this correct? y/n " portans
if [ $portans == "y" ]
then
echo
if [ $portans == "n" ]
then 
echo "Canceling..."
exit
echo
fi



while(true); do
    if [$denyaccept == "deny"]
    then
        ufw deny $port
    fi

    if [$denyaccept == "allow"]
    then
    ufw allow $port
    fi
done

#Copyright NeonDevelopment & SsmidgeXYZ 2020
