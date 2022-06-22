#! /bin/bash

# if [ a -gt b ] : if (a > b)  COMPARISON
# if [ -$option $FILE_NAME ]   option trus if --\
		# -d (directory)
	   	# -f (-e -- exists) is a file
		#


#read -p " keybord preference --> Overwrite (y/n)? " per # read permition to change keybord setting 

PROCESSES="KEYBORD MOUSE"

#if [ "$per" == "yes" ]
#then
#	echo ok
#else
#	echo ko
#fi

# CASE STATEMENT


# FOR LOOP

for PROCESS in $PROCESSES
	do
		read -p " $PROCESS preference --> Overwrite (y/n)? " per
		case "$per" in
		[yY] | [yY][eE][sS])
			echo ok
			;;
		[nN] | [nN][oO])
			echo ko
			;;
		*)
		esac
	done
# RENAME FILES

FILES=$(ls *.o)
TONAME="."

for FILE in $FILES
	do
		mv $FILE $TONAME$FILE
	done

