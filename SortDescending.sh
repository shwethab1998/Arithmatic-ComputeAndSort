#!/bin/bash

echo "Enter any 3 Interger Values:"

read -p "Enter any num : " a
read -p "Enter any num : " b
read -p "Enter any num : " c

count=0
declare -A arithmaticDict
exp1=$(( $a + ( $b * $c ) ))
arithmaticDict["exp1"]=$exp1
echo " "
echo "Ouput(a+b*c):"${arithmaticDict["exp1"]}

exp2=$(( $a * $b + $c ))
arithmaticDict["exp2"]=$exp2
echo "Ouput(a+b*c):"${arithmaticDict["exp2"]}

exp3=$(( $c + $a / $b ))
arithmaticDict["exp3"]=$exp3
echo "Ouput(c+a/b):"${arithmaticDict["exp3"]}

exp4=$(( $a % $b + $c ))
arithmaticDict["exp4"]=$exp4
echo "Ouput(a%b+c):"${arithmaticDict["exp4"]}
echo " "
for val in ${arithmaticDict[@]}
do
   ((count++))
   arr[count]=$val
done

for (( i=0; i<=4; i++ ))
do
   for (( j=$i; j<=4; j++ ))
   do
      if [[ ${arr[i]} -lt ${arr[j]} ]]
      then
         temp=${arr[i]}
         arr[i]=${arr[j]}
         arr[j]=$temp
      fi
   done
done
echo "Values in Descending Order are: " ${arr[@]}
