#!/bin/bash

echo "Computing the Expression a + b * c"

read -p "Enter any num : " a
read -p "Enter any num : " b
read -p "Enter any num : " c

declare -A arithmaticDict
exp1=$(( $a + ( $b * $c ) ))
arithmaticDict["exp1"]=$exp1
echo "${arithmaticDict["exp1"]}"
