#!/bin/bash

while [ 1 ]
do
    echo "Running rsync...."
    rsync -av -e ssh *gz pwlab.ucsf.edu:/raid/solberg/josset
    if [ "$?" = "0" ] ; then
	echo "rsync completed normally"
	exit
    else
	echo "Rsync failure. Backing off and retrying..."
	sleep 180
    fi
done
