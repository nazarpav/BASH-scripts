#! /bin/bash
function userEDIT()
{
choise=0;
var=false;
while [ $var == false ]
do
clear;
echo -e "\e[32m==============\e[0m\e[31mUSER EDIT\e[0m\e[32m===============\e[0m"
echo -e "\n\e[32mNAME \e[0m\e[31m:: 1\e[0m";
echo -e "\n\e[32mUID \e[0m\e[31m:: 2\e[0m";
echo -e "\n\e[32mGID \e[0m\e[31m:: 3\e[0m";
echo -e "\n\e[32mChnge password \e[0m\e[31m:: 4\e[0m";
echo -e "\n\e[31mEXIT \e[0m\e[32m:: 0\e[0m";
read choise;
case $choise in
1)
echo -e "\e[37mEnter name \e[0m";
read name;
cat /etc/passwd | grep $name;
if (( $? != 0 ))
then
	echo -e "\n\e[31mUser not Exit!\e[0m";
break;
fi
echo -e "\e[37mEnter new name \e[0m";
read newname;
usermod $name -l $newname;
;;
2) 
echo -e "\e[37mEnter name for change uid \e[0m";
read name;
echo -e "\e[37mEnter newuid \e[0m";
read newuid;
usermod $name -u $newuid;
;;
3) 
echo -e "\e[37mEnter name for change group \e[0m";
read name;
echo -e "\e[37mEnter newgroup \e[0m";
read newgroup;
usermod $name -g $newgroup;
;;
4) 
	echo -e "\e[31mCHANGE PASSWORD!!!\e[0m"
	echo -e "\e[32mEnter username: \e[0m"
     	read newUserName
     	cat /etc/passwd | grep $newUserName
	if (( $? == 0 ))
 	then
      	 passwd $newUserName;
	else
	echo -e "\e[31mEROR!!!\e[0m";
	/bin/sleep 1; 
	fi
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
echo -e "\n\e[32mBY UID \e[0m\e[31m:: 1\e[0m";
echo -e "\n\e[32mEXIT \e[0m\e[31m:: 0\e[0m";
read choise;

case $choise in 
1)
echo -e "\n\e[32mENTER URERNAME :: \e[0m";
read username;

cat /etc/passwd | grep $username;
if (( $? != 0 ))
then
	echo -e "\n\e[31mUser not Exit!\e[0m";
/bin/sleep 3;
break;
fi
userdel $username -r;
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
echo -e "\n\e[32m1\e[0m\e[31m-BY NAME\e[0m";
echo -e "\n\e[32m2\e[0m\e[31m-BY UID\e[0m";
echo -e "\n\e[32m3\e[0m\e[31m-BY GID\e[0m";
echo -e "\n\e[32m4\e[0m\e[31m-Check Users\e[0m";
echo -e "\n\e[32m5\e[0m\e[31m-EXIT\e[0m";
read choise;
case $choise in
1)	
	clear;
	echo -e "\e[33mEnter username\e[0m :: ";
	read username;
	useradd $username;
	;;
2)
clear;
echo -e "\e[33mEnter username\e[0m ::"
read username;
echo -e "\e[33mEnter UID\e[0m :: ";
read UIDD;
useradd $username -u $UIDD; 
;;
3) 
	clear;
	echo -e "\e[33mEnter username\e[0m :: ";
	read username;
	echo -e "\e[33mEnter usergroup\e[0m :: ";
	read usergroup;	
	useradd $username -g $usergroup;
;;
4)
clear
less /etc/shadow;
/bin/sleep 1;
;;
5)
clear; 
let var=true ;;
esac;
done

}

varib=true;
while [ $varib == true ]
do
clear;
echo -e "\e[32mCreate user \e[0m\e[31m- 1 :: \e[0m";
echo -e "\e[32mDell user   \e[0m\e[31m- 2 :: \e[0m";
echo -e "\e[32mEdit user   \e[0m\e[31m- 3 :: \e[0m";
echo -e "\e[32mCheck user  \e[0m\e[31m- 4 :: \e[0m";
echo -e "\e[31mEXIT - 0 :: \e[0m";
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
4)
clear
cat /etc/passwd;
/bin/sleep 4;
;;
0)
echo -e "\e[34mGOOD\e[0m\e[31mBYE\e[0m";
let varib=false;
/bin/sleep 1;
;; 
*)
clear;
 echo -e "\e[31mERROR\e[0m"; 
/bin/sleep 2;
;;
esac

done


