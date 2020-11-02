#!/bin/bash

echo "Computing the Expression c + a / b"

read -p "Enter any num : " a
read -p "Enter any num : " b
read -p "Enter any num : " c

declare -A arithmaticDict
exp3=$(( $c + $a / $b ))
arithmaticDict["exp3"]=$exp3
echo "${arithmaticDict["exp3"]}"


