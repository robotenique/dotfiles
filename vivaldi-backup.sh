#!/bin/bash
# This script just do a backup of my vivaldi profile. I usually put this inside the cron.weekly.
data=$(date +%d-%m-%Y)
cd /home/juliano/Documents/vivaldi-profile
/bin/cp --recursive /home/juliano/.config/vivaldi/Default .
git add .
git commit -m "update vivaldi-profile - $data"
git push
