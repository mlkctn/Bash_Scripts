#!/bin/bash

# Author:Melik Cetin
# Date Created: 12/05/2025
# Description: This script backs up the "scripts" directory in the user's home directory to a specified backup location.

# Edit this variable to change the backup location
currentdir="/home/user/scripts"



echo "Hello, ${USER^}"
echo "I will now back up your home directory, $HOME"
echo "You are running this script from $currentdir"

tar -cf $currentdir/scripts_backup_"$(date +%d-%m-%Y_%H-%M-%S)".tar -C $HOME scripts/ 2>/dev/null

echo "Backup Completed Successfully."
exit 0