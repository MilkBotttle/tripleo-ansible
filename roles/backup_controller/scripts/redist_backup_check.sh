#! /bin/bash

# Check redis lastsave time every 3 sec
# if the time does not change meaning complete
# exit 0
set -u

REDIS_IP=$1
REDIS_AUTH=$2

FIRST_TIME=$(redis-clie -a $REDIS_AUTH -h $REDIS_IP lastsave)

sleep 3

while true;
do
    LAST_TIME=$(redis-clie -a $REDIS_AUTH -h $REDIS_IP lastsave)
    if [[ $FIRST_TIME == $LAST_TIME ]]
    then
        echo "bgsave complete"
        exit 0
    fi
done

