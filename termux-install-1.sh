#!/bin/sh

RED='\033[0;31m'
pkg i -y git
pkg i -y nodejs
mkdir hemnid
cd hemnid
git clone https://github.com/hemnidk/hamster.git
cd hamster 
npm i
npm run build
sh config.sh
pkg i -y cronie
pkg i -y termux-services
echo "${RED}RESTART APP\!\!\!"
