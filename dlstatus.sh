#!/bin/bash

DROPLETS="dl01 dl02 dl03 dl04 dl05 dl06 dl07 dl08 dl09 dl10 dl11"

for droplet in $DROPLETS ; do
  var=$(ping -q -c 1 -W 1 $droplet)
    if  [[ $? -eq 0 ]] ; then
         echo $droplet is alive
    else
         echo $droplet is dead
    fi
done

exit 0






