#!/bin/bash
cv=$(grep buildid "/opt/eco/steamapps/appmanifest_739590.acf" | tr '"' ' ' | awk '{print $2}')
rv=$(/home/steam/steamcmd/steamcmd.sh +login anonymous +app_info_update 1 +app_info_print 739590 +quit cat version.txt | grep -EA 1000 "^\s+\"branches\"$" | grep -EA 5 "^\s+\"public\"$" | grep -m 1 -EB 10 "^\s+}$" | grep -E "^\s+\"buildid\"\s+" | tr '"' ' ' | awk '{print $2}')
echo $cv
echo $rv

if [ -n "${rv}" ] && [ "${cv}" != "${rv}" ]; then
    echo "update"
    /home/steam/steamcmd/steamcmd.sh +force_install_dir /opt/eco +login anonymous +app_update 739590 -beta 9.5.1 validate +quit
    grep buildid "/opt/eco/steamapps/appmanifest_739590.acf" | tr '"' ' ' | awk '{print $2}'
fi