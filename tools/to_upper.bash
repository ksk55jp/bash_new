#!/bin/bash
# set variables 
#declare -r TRUE=0
#declare -r FALSE=1
#declare -r PASSWD_FILE=/etc/passwd

##################################################################
# Purpose: Converts a string to upper case
# Arguments:
#   $1 -> String to convert to upper case
##################################################################
function to_upper() 
{
    local str="$@"
    local output     
    #output=$(tr '[A-Z]' '[a-z]'<<<"${str}")
    output=$(tr '[a-z]' '[A-Z]'<<<"${str}")
    echo $output
}

export to_upper
