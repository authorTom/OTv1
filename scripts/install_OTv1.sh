#!/bin/bash
# Toms installation script v 0.1

check_exit_status() {

	if [ $? -eq 0 ]
	then
		echo
		echo "Success"
		echo
	else
		echo
		echo "[ERROR] Process Failed!"
		echo

		read -p "The last command exited with an error. Exit script? (yes/no) " answer

            if [ "$answer" == "yes" ]
            then
                exit 1
            fi
	fi
}

install() {

        sudo apt-get update;
	check_exit_status

        sudo apt-get upgrade -y;
	check_exit_status

        sudo apt-get install nano net-tools git xinit openbox nitrogen obmenu xcompmgr terminator -y;
	check_exit_status

}

housekeeping() {

	sudo apt-get autoremove -y;
	check_exit_status

	sudo apt-get autoclean -y;
	check_exit_status

	sudo updatedb;
	check_exit_status
}

leave() {

	echo
	echo "--------------------"
	echo "- Installation Complete! -"
	echo "--------------------"
	echo
	exit
}

install
housekeeping
leave
