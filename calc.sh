#! /usr/bin/bash
source /home/libs/calc.sh
var=false;
while [ $var == false ]
do
clear;
echo -e "\e[31mCalculator>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>\e[0m";

echo -e "\e[32mSumma> 1\e[0m";
echo -e "\e[32mMinus> 2\e[0m";
echo -e "\e[32mMultiplication> 3\e[0m";
echo -e "\e[32mDivision> 4\e[0m";
echo -e "\e[32mExit> 0\e[0m";
read choise;
if (( $choise == 0))
then 
break;
fi
echo -e "\e[32mEnter two nums>\e[0m";
read num1;
read num2;
case $choise in
1)
Sum $num1 $num2;
;;
2)
minus $num1 $num2;
;;
3)
multiplication $num1 $num2;
;;
4)
division $num1 $num2;
;;
0)
let var=true;
;;
*)
echo -e "\e[31mERORRRRRR!!!!\e[0m";
;;
esac
/bin/sleep 2;
done

