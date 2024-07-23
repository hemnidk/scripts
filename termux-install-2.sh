#!/bin/sh

sv-enable crond
echo '* * * * * cd hemnid/hamster && npm run exec' | crontab -
