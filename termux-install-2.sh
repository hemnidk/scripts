#!/bin/sh

RED='\033[0;31m'
sv-enable crond
echo '* * * * * cd hemnid/hamster && npm run exec' | crontab -
echo "${RED}ENJOY\!\!\!"
