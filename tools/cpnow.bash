#!/bin/bash
# set variables 

##################################################################
# Purpose: copy target file with timestamp
# Example: there is a memo.txt in current directory and you exec 
#          $ cpnow memo.txt
#          then memo.txt.20170414162055 is created on the same dir
# Arguments:
#   $1 -> filename that you want to take copy
##################################################################
function cpnow() 
{
   # validate $argc
   #echo "number of argument is $#"
   if [ $# -ne 1 ]; then
    echo "usage cpnow fileToCopy"
    return;
   fi
    local orgfilename="$@"
   #echo "given parameter is ${orgfilename}"
   #test the target file is there or not
   if [ -f ${orgfilename} -a -r ${orgfilename} ]; then
    echo "fileexists and readable" > /dev/null
    else
    echo "readable and regular file NOT exists."
    echo "NOP"
    return;
   fi
   #define copyfilename    
    local copyfilename="${orgfilename}.$( date "+%Y%m%d%H%M%S")"    
    #output=$(tr '[A-Z]' '[a-z]'<<<"${str}")
    cp -fp $orgfilename $copyfilename
}

export cpnow
