#!/bin/bash
echo -e "ip=\c" > ./.env
ip addr | awk '/^[0-9]+: / {}; /inet.*global/ {print gensub(/(.*)\/(.*)/, "\\1", "g", $2)}'|head -1 >> ./.env
echo -e "pwd=\c" >> ./.env
oldpwd=`pwd`
cd ..
newpwd=`pwd`
cd $oldpwd
echo -e $newpwd >> ./.env

docker-compose -f ./gitlab-ce.yml up -d && docker-compose -f ./gitlab-runner.yml up -d