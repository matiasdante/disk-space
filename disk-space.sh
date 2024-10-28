#!/bin/bash

# Scanning
DIRECTORIOS=("/path" "2path" "3path")
LIMIT_DAYS=30
LIMIT_SIZE="+100M"

clear

echo "Starting clean up."
sleep 2
clear
echo "Starting clean up.."
sleep 2
clear
echo "Starting clean up..."
sleep 2

for DIR in "${DIRECTORIOS[@]}"; do 
    if [ -d "$DIR"]; then
        echo "Scanning $DIR ."
        sleep 2
        clear
        echo "Scanning $DIR .."
        sleep 2
        clear
        echo "Scanning $DIR ..."
        sleep 2
        clear
        
        find "$DIR" -type f -mtime +$LIMIT_DAYS -exec rm -v {} \;
        echo "Deleting files in $DIR over $LIMIT_DAYS days ."
        sleep 2
        clear
        echo "Deleting files in $DIR over $LIMIT_DAYS days .."
        sleep 2
        clear
        echo "Deleting files in $DIR over $LIMIT_DAYS days ..."
        sleep 2
        clear

        find "$DIR" -type f -size LIMIT_SIZE -exec rm -v {} \;
        echo "Deleting files in $DIR over $LIMIT_SIZE"
        sleep 2
        clear
        echo "Deleting files in $DIR over $LIMIT_SIZE"
        sleep 2
        clear
        echo "Deleting files in $DIR over $LIMIT_SIZE"
        sleep 2
        clear

    else
        echo "Directory $DIR not found, skipping ."
        sleep 2
        clear
        echo "Directory $DIR not found, skipping .."
        sleep 2
        clear
        echo "Directory $DIR not found, skipping ..."
        sleep 2
        clear
    fi
done

echo "Clean Up Complete"
