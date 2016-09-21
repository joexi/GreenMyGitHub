

#! /bin/sh
cd /path

for i in {1..14}
do

day=`date -v-1d +%d`
month=`date -v-1d +%m`
year=`date -v-1d +%Y`

date ${month}${day}0000${year}.01

f_name="$(date +%Y-%m-%d:%H:%M:%S).txt"

echo ${f_name}

touch ${f_name}

git add ${f_name}

git commit -m ${f_name}

git push https://u:p@github.com/user/repo.git

done
