#!/bin/bash
crontab -u steam /opt/config/crontab
su -m steam -c "/opt/scripts/update.sh"
/usr/bin/supervisord -c /opt/config/supervisord.conf
