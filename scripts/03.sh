#!/bin/sh
clear
echo  "_____Menu_____\n"
echo  "1.network\n"
echo  "2.scrpits\n"
echo  "3.system\n"
echo  "exit\n"
read -p 'which files do you want : ' USER_R
while [ -z $USER_R ] || [ $USER_R != '1' ] && [ $USER_R != '2' ] && [ $USER_R != '3' ] && [ $USER_R != 'exit' ]
do
	clear
	echo  "1.network\n"
	echo  "2.scrpits\n"
	echo  "3.system\n"
	echo  "exit"
	read -p '				which files do you want : ' USER_R
	if [ $USER_R = "exit" ] || [ $EXE = "exit"]
		then 
		clear
		echo "\nSee you next time! ;)"
		exit
	fi
done 
clear 
while [ -z $USER_R ] || [ $USER_R != "exit" ]
do
				if [ $USER_R = "exit" ]
				then 
					clear
					echo "\nSee you next time! ;)"
					break
				fi
				if [ $USER_R = '1' ]
				then 
					while [ -z $EXE ] || [ $EXE != 'menu' ]
					do
						echo  "_____NETWORK EXERCISES_____\n"
						ls -1 /Users/gogrkovi/42_files/42_docs/Init/network/
						echo "menu"
						echo "\n" 
						read -p 'Whish exrecises do you want see ? : ' EXE
						clear 
						if [ $EXE = "menu" ]
						then
						$USER_R = "exit"
						sh /Users/gogrkovi/42_files/42_docs/Init/scripts/03.sh
						exit
						fi
						if [ $EXE != 'menu' ]
						then 
						echo "RESULT : \n" 
						cat /Users/gogrkovi/42_files/42_docs/Init/network/$EXE
						fi
					done
				fi
				if [ $USER_R = '2' ]
				then 
					while [ -z $EXE ] || [ $EXE != 'menu' ]
					do
						echo  "_____SCRIPTS EXERCISES_____\n"
						ls -1 /Users/gogrkovi/42_files/42_docs/Init/scripts/
						echo "menu"
						echo "\n" 
						read -p 'Whish exrecises do you want see ? : ' EXE
						clear
						if [ $EXE = "menu" ]
						then
						$USER_R = "exit"
						sh /Users/gogrkovi/42_files/42_docs/Init/scripts/03.sh
						exit
						fi
						if [ $EXE != "menu" ]
						then 
						echo "RESULT : \n" 
						cat /Users/gogrkovi/42_files/42_docs/Init/scripts/$EXE	
						fi
					done
				fi
				if [ $USER_R = '3' ]
				then 
					while [ -z $EXE ] || [ $EXE != 'menu' ]
					do
						echo "_____SYSTEM EXERCISES_____\n"
						ls -1 /Users/gogrkovi/42_files/42_docs/Init/system/
						echo "menu"
						echo "\n" 
						read -p 'Whish exrecises do you want see ? : ' EXE
						clear
						if [ $EXE = "menu" ]
						then 
						$USER_R = "exit"
						sh /Users/gogrkovi/42_files/42_docs/Init/scripts/03.sh
						exit
						fi
						if [ $EXE != "menu" ]
						then
						echo "RESULT : \n"
						cat /Users/gogrkovi/42_files/42_docs/Init/system/$EXE
						fi
					done
				fi
done
clear
echo "\nSee you next time! ;)"