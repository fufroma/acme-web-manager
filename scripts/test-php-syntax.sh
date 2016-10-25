#!/bin/bash

# Check for syntax error in PHP files

echo -e "\e[1;34mChecking syntax error\e[00m"
output=$(find . -name '*.php' -not -path "./vendor/*" -not -path "./var/cache/*" -exec php --syntax-check {} \; | grep -v 'No syntax errors detected in')
if [[ $output ]]
then 
    echo -e '\e[00;31mPlease check files syntax\e[00m'
    exit 1
else 
    echo -e "\e[1;32mSyntax is OK\e[00m"
fi
