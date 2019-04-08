#! /bin/bash
ovner()
{
echo -e "\e[32menter ovner> \e[0m\e[31m- 1 :: \e[0m";
read ovner;
echo -e "\e[32menter group> \e[0m\e[31m- 1 :: \e[0m";
read group;
echo -e "\e[32menter way to file> \e[0m\e[31m- 1 :: \e[0m";
read way;
chown $ovner:$group -R $way;
if (( $? != 0 ))
then
	echo -e "\n\e[31mEror!\e[0m";
/bin/sleep 2;
else
echo -e "\n\e[32mGreat!\e[0m";
fi
}
accest()
{
echo -e "\e[32menter block (o,g,u)> \e[0m\e[31m- 1 :: \e[0m";
read block;
echo -e "\e[32menter accest(rwx,rw-,r--,)> \e[0m\e[31m- 1 :: \e[0m";
read accest;
echo -e "\e[32menter name to file> \e[0m\e[31m- 1 :: \e[0m";
read name;
echo -e "\e[32m (- or + accest)?(1=+\2=-)> \e[0m\e[31m- 1 :: \e[0m";
read var;
if (( var==1 ))
then
chmod $block+$accest -R $name;
if (( $? != 0 ))
then
	echo -e "\n\e[31mEror!\e[0m";
/bin/sleep 2;
else
echo -e "\n\e[32mGreat!\e[0m";
/bin/sleep 2;
fi
elif (( var==2 ))
then
chmod $block-$accest -R $name;
if (( $? != 0 ))
then
	echo -e "\n\e[31mEror!\e[0m";
/bin/sleep 2;
else
echo -e "\n\e[32mGreat!\e[0m";
/bin/sleep 2;
fi
else
	echo -e "\n\e[31mEror!\e[0m";
 fi
}
showinfo()
{
ls -l;
/bin/sleep 3;
}
varib=true;
while [ $varib == true ]
do
clear;
echo -e "\e[32mmod ovner \e[0m\e[31m- 1 :: \e[0m";
echo -e "\e[32mmod accest   \e[0m\e[31m- 2 :: \e[0m";
echo -e "\e[32mshow information dir   \e[0m\e[31m- 3 :: \e[0m";
echo -e "\e[31mEXIT - 0 :: \e[0m";
read choice;
case $choice in
1)
ovner;
;;
2)
accest;
;;
3)
showinfo;
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


