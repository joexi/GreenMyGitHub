#! /bin/sh

URL_TO_REPOSITORY=$1
LOCAL_PATH_TO_REPOSITORY=$2
DAY_TO_GREEN=$3
USER_NAME=$4
USER_PASSWORD=$5

cd ${PATH_TO_REPOSITORY}

for i in {0..${DAY_TO_GREEN}}
do

day=`date -v-1d +%d`
month=`date -v-1d +%m`
year=`date -v-1d +%Y`

date ${month}${day}0000${year}.01

file_name="$(date +%Y-%m-%d:%H:%M:%S).txt"

touch ${file_name}

git add ${file_name}

git commit -m ${file_name}

git push https://${USER_NAME}:${USER_PASSWORD}@${URL_TO_REPOSITORY}

done
