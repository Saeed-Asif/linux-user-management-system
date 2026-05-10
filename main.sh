#!/bin/bash

# Root validation
if [ "$EUID" -ne 0 ]
then
    echo "Please run this script as root or with sudo."
    exit 1
fi

LOG_FILE="logs/script.log"

log_message() {
    echo "$(date '+%Y-%m-%d %H:%M:%S') : $1" >> "$LOG_FILE"
}

echo "===================================="
echo " User Management & Backup System "
echo "===================================="

while true
do
    echo
    echo "========== MENU =========="
    echo "1. Create User"
    echo "2. Delete User"
    echo "3. List Users"
    echo "4. Backup Directory"
    echo "5. Exit"
    echo "=========================="

    read -p "Enter your choice: " choice

    case $choice in
        1)
            read -p "Enter new username: " username

            # Check if user already exists
            if id "$username" &>/dev/null
            then
                echo "User already exists."
                log_message "Failed to create user: $username already exists"

            else
                useradd -m "$username"

                if [ $? -eq 0 ]
                then
                    echo "User created successfully."
                    log_message "User created: $username"
                else
                    echo "Failed to create user."
                    log_message "Failed to create user: $username"
                fi
            fi
            ;;

        2)

	    read -p "Enter username to delete: " username

	    # Check if user exists
	    if ! id "$username" &>/dev/null
	    then
	        echo "User does not exist."
	        log_message "Delete failed: $username does not exist"

	    else
	        # Safety check: prevent root deletion
	        if [ "$username" == "root" ]
	        then
	            echo "Cannot delete root user!"
	            log_message "Attempted root deletion blocked"
	        else

	            # Confirmation step (VERY IMPORTANT)
	            read -p "Are you sure you want to delete $username? (y/n): " confirm

	            if [ "$confirm" == "y" ]
	            then
	                userdel -r "$username"

	                if [ $? -eq 0 ]
	                then
	                    echo "User deleted successfully."
	                    log_message "User deleted: $username"
	                else
	                    echo "Failed to delete user."
	                    log_message "Delete failed for: $username"
	                fi

	            else
	                echo "Deletion cancelled."
	                log_message "Deletion cancelled for: $username"
	            fi
	        fi
	    fi
	    ;;
        3)
            echo "List Users selected"
            log_message "Selected List Users"
            ;;

        4)
            echo "Backup Directory selected"
            log_message "Selected Backup Directory"
            ;;

        5)
            echo "Exiting..."
            log_message "Script exited"
            exit 0
            ;;

        *)
            echo "Invalid option"
            log_message "Invalid menu option entered"
            ;;
    esac
done
