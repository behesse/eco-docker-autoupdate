#!/bin/bash
crontab -u steam /opt/config/crontab
/usr/bin/supervisord -c /opt/config/supervisord.conf
