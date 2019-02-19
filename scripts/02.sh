#!/bin/sh
read -p 'Which user to delete :' USER_ID
ligne_to_kill=`w | grep $USER_ID | awk '{print $1}'`
if [ -z $ligne_to_kill ]
then
	echo "$USER_ID is not connected"
else
	pkill -U $USER_ID
	echo "$USER_ID killed successfully"
	PID_USER=`top -b -n 1 | grep $USER_ID | awk '{print $1}'`
	if [ $PID_USER ]
	then
		kill $PID_USER
	fi;
	userdel -r $USER_ID
	echo "$USER_ID deleted successfully"
fi;
exit
