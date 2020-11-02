#!/bin/bash

echo "Computing the Expression a % b +c"

read -p "Enter any num : " a
read -p "Enter any num : " b
read -p "Enter any num : " c

declare -A arithmaticDict
exp4=$(( $a % $b + $c ))
arithmaticDict["exp4"]=$exp4
echo "${arithmaticDict["exp4"]}"
