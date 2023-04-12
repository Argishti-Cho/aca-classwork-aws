#!/bin/bash 

# -e whenever the scripts retuens 1 this will exit the code with error
# -x shows the outputs of the script in each command line
# if we do $(whoami) or other $(linuxcommand) then echo $(linuxcommand) outpure will be the command output and eval will make the variable value as a command

# $(( 1+1 )) in double brachets you can do calculations
# one symbol > overwrite the file content and double symbols >> appends at the end of the file

# var1=12

# function myf() {
#     local var1=3
#     echo "somthing!"
#     echo ${var1}
# }

# myf
# echo ${var1}

#to chek the exut code of the previous command type $? it will show the digit like 0 or 1