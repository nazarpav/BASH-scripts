#! /bin/bash
function userEDIT()
{
choise=0;
var=false;
while [ $var == false ]
do
clear;
echo -e "\e[32m==============\e[0m\e[31mUSER EDIT\e[0m\e[32m===============\e[0m"
echo -e "\n\e[32mNAME :: 1\e[0m";
echo -e "\n\e[32mUID :: 2\e[0m";
echo -e "\n\e[32mGID :: 3\e[0m";
echo -e "\n\e[32mEXIT :: 0\e[0m";
read choise;
case $choise in
1)
echo -e "\e[37mEnter name \e[0m";
read name;
echo -e "\e[37mEnter name \e[0m";
read newname;
usermod name -l newname;
;;
2) 
echo -e "\e[37mEnter uid \e[0m";
read uid;
echo -e "\e[37mEnter newuid \e[0m";
read newuid;
usermod uid -u newuid;
;;
3) 
echo -e "\e[37mEnter group \e[0m";
read group;
echo -e "\e[37mEnter name \e[0m";
read newgroup;
usermod group -g newgroup;
;;
0)let var=true ;;
*)echo -e "\e[31mEROR!!![0m";
esac
done
}

function userDELL()
{
choise=0;
var=false;
while [ $var == false ]
do
clear;
echo -e "\e[32m==============\e[0m\e[31mUSER ADD\e[0m\e[32m===============\e[0m"
echo -e "\n\e[32mBY UID :: 1\e[0m";
echo -e "\n\e[32mEXIT :: 0\e[0m";
read choise;
case $choise in 
1)
echo -e "\n\e[32mENTER URERNAME :: \e[0m";
read username;
userdel $username;
;;
0)
let var=true;
;;
*) echo -e "\e[31mERROR[0m";
esac
done
}

function userADD()
{
choise=0;
var=false;
while [ $var == false ]
do
clear;
echo -e "\e[32m==============\e[0m\e[31mUSER ADD\e[0m\e[32m===============\e[0m"
echo -e "\n\e[36m1\e[0m\e[31m-BY UID\e[0m";
echo -e "\n\e[36m2\e[0m\e[31m-BY GID\e[0m";
echo -e "\n\e[36m3\e[0m\e[31m-EXIT\e[0m";
read choise;
case $choise in
1)	
	clear;
	echo -e "\e[33mEnter username\e[0m :: ";
	read username;
	useradd $username
	;;
2) 
	clear;
	echo -e "\e[33mEnter username\e[0m :: ";
	read username;
	echo -e "\e[33mEnter usergroup\e[0m :: ";
	read usergroup;	
	useradd -u $username -g $usergroup;
	
	echo -e "\e[33mCheck users - 1 \e[0m :: ";
	read varib;
	if [ varib==1 ]
	then
 	less /etc/shadow ;
	/bin/sleep 3;
	
	fi

;;
3)
clear; 
let var=true ;;
esac;
done

}
clear;
echo -e "\e[33mCreate user - 1 \e[0m";
echo -e "\e[33mDell user - 2 :: \e[0m";
echo -e "\e[33mEdit user - 3 :: \e[0m";
echo -e "\e[33mEXIT - 0 :: \e[0m";
read choice;
case $choice in
1)
userADD;
;;
2)
userDELL;
;;
3)
userEDIT;
;;
0)
echo -e "\e[34mGOODD\e[0m\e[33mBYE\e[0m " ;;
*)
clear;
 echo -e "\e[31mERROR\e[0m";
echo '\x07'; 
/bin/sleep 3;
;;
esac



