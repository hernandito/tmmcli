#!/bin/sh

if [ ! -f /mnt/cron.conf ]; then
#set time to 12:30AM run
    echo "0 */2 * * * /config/tinyMediaManagerCMD.sh -updateMovies -updateTv -scrapeNew > /mnt/cron.conf
fi
chmod -R 777 /config/
chmod 600 /mnt/cron.conf
crontab /mnt/cron.conf

exec "$@"
