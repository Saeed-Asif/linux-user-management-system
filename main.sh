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
            echo "Delete User selected"
            log_message "Selected Delete User"
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
