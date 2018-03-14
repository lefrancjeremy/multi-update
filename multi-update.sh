#!/bin/bash

# Fermeture lors d'un code retour différent de 0
set -e;
true;

#PASSWORD=$(whiptail --title "Password Box" --passwordbox "Entrer votre mot de passe utilisateur" 10 60 3>&1 1>&2 2>&3)

#echo "test sorti"

# exitstatus=$?
# if [ $exitstatus = 0 ]; then
# 	#echo "sorti distrib"
# 	#exit 1
# 	OPTION=$(whiptail --title "Menu Box" --menu "Choisissez votre distriubtion linux" 15 60 4 \
# 	"1" "Ubuntu" \
# 	"2" "Fedora" \
# 	"3" "Manjaro" \
# 	"4" "Arch linux"  3>&1 1>&2 2>&3)

# exitstatus=$?
# if [ $exitstatus = 0 ]; then
#     echo "Vous avez choisi la distribution : " $OPTION
# else
#     echo "vous avez annulé dans la condition if (choix distrib!!)"
# fi

# else
#     echo "Vous avez annulez else (mot de passe!!)"
# fi


#OPTION=$(whiptail --title "Menu Box" --menu "Choisissez votre distriubtion linux" 15 60 4 \
#"1" "Ubuntu" \
#"2" "Fedora" \
#"3" "Manjaro" \
#"4" "Arch linux"  3>&1 1>&2 2>&3)
 
#exitstatus=$?
#if [ $exitstatus = 0 ]; then
#    echo "Vous avez choisi la distribution : " $OPTION
#else
#    echo "vous avez annulé"
#fi



echo "
              .__   __  .__                            .___       __          
  _____  __ __|  |_/  |_|__|           __ ________   __| _/____ _/  |_  ____  
 /     \|  |  \  |\   __\  |   ______ |  |  \____ \ / __ |\__  \|   __\/ __ \ 
|  Y Y  \  |  /  |_|  | |  |  /_____/ |  |  /  |_> > /_/ | / __ \|  | \  ___/ 
|__|_|  /____/|____/__| |__|          |____/|   __/\____ |(____  /__|  \___  >
      \/                                    |__|        \/     \/          \/ 

"

echo "Coded by Lefsec"
echo "For more information help or -h"
printf "\nPlease talk to me ...\n\n"
while :
do
  read INPUT_STRING
  case $INPUT_STRING in

	help | -h)
		echo "
.__           .__          
|  |__   ____ |  | ______  
|  |  \_/ __ \|  | \____ \ 
|   Y  \  ___/|  |_|  |_> >
|___|  /\___  >____/   __/ 
     \/     \/     |__|    
"
		
		echo -e "\033[34mexit | 0\033[0m"
		echo -e "\033[34maptitude | 1\033[0m"
		echo -e "\033[34mapt | 2\033[0m"
		echo -e "\033[34mapt-get | 3\033[0m"
		echo -e "\033[34mpacman | 4\033[0m"
		echo -e "\033[34mdnf | 5\033[0m"
 		;;

	aptitude | 1)
		echo "
               __  .__  __            .___      
_____  _______/  |_|__|/  |_ __ __  __| _/____  
\__  \ \____ \   __\  \   __\  |  \/ __ |/ __ \ 
 / __ \|  |_> >  | |  ||  | |  |  / /_/ \  ___/ 
(____  /   __/|__| |__||__| |____/\____ |\___  >
     \/|__|                            \/    \/ 
"
		sudo aptitude update
		sudo aptitude upgrade
		sudo aptitude dist-upgrade
		sudo aptitude clean
		sudo aptitude autoclean
		echo -e "\033[31mYour update with aptitude is successful.\033[0m"
		;;

	apt | 2)
		echo "
               __   
_____  _______/  |_ 
\__  \ \____ \   __\ 
 / __ \|  |_> >  |  
(____  /   __/|__|  
     \/|__|         
"
		sudo apt update
		sudo apt upgrade
		sudo apt dist-upgrade
		sudo apt clean
		sudo apt autoclean
		sudo apt autoremove
		echo -e "\033[31mYour update with apt is successful.\033[0m"
		;;

	apt-get | 3)
		echo "
               __                           __   
_____  _______/  |_            ____   _____/  |_ 
\__  \ \____ \   __\  ______  / ___\_/ __ \   __|
 / __ \|  |_> >  |   /_____/ / /_/  >  ___/|  |  
(____  /   __/|__|           \___  / \___  >__|  
     \/|__|                 /_____/      \/      
"
		sudo apt-get update
		sudo apt-get upgrade
		sudo apt-get dist-upgrade
		sudo apt-get clean
		sudo apt-get autoclean
		sudo apt-get autoremove
		echo -e "\033[31mYour update with apt-get is successful.\033[0m"
		;;

	pacman | 4)
		echo "
                                           
___________    ____   _____ _____    ____  
\____ \__  \ _/ ___\ /     \|__  \  /    \ 
|  |_> > __ \|  \___|  Y Y  \/ __ \|   |  \ 
|   __(____  /\___  >__|_|  (____  /___|  /
|__|       \/     \/      \/     \/     \/ 
"
		sudo pacman -Syu
		sudo pacman -Scc
		sudo pacman -Qdtq
		echo -e "\033[31mYour update with pacman is successful.\033[0m"
		;;

	dnf | 5)
		echo "
    .___      _____ 
  __| _/_____/ ____\ 
 / __ |/    \   __\ 
/ /_/ |   |  \  |   
\____ |___|  /__|   
     \/    \/       
"
		sudo dnf upgrade
		sudo dnf distro-sync
		sudo dnf clean all
		sudo dnf autoremove
		echo -e "\033[31mYour update with dnf is successful.\033[0m"
		;;


	exit | 0)
		echo "
              .__  __   
  ____ ___  __|__|/  |_ 
_/ __ \|  \/  /  \   __\ 
\  ___/ >    <|  ||  |  
 \___  >__/\_ \__||__|  
     \/      \/         
"
		echo -e "\033[31mBye...\033[0m"
		break
		;;

	*)
		echo "Sorry, I don't understand."
		;;
  esac
done

exit 0
