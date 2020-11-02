#!/bin/bash

echo "Computing the Expression a * b + c"

read -p "Enter any num : " a
read -p "Enter any num : " b
read -p "Enter any num : " c

declare -A arithmaticDict
exp2=$(( $a * $b + $c  ))
arithmaticDict["exp2"]=$exp2
echo "${arithmaticDict["exp2"]}"
