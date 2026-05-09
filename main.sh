#!/bin/bash

# Root validation
if [ "$EUID" -ne 0 ]
then
    echo "Please run as root"
    exit 1
fi

echo "=================================="
echo " User Management & Backup System "
echo "=================================="
