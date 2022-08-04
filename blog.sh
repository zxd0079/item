#!/bin/bash
des=/server/log_bak
host=`hostname`
cd /server/logs
for sou in `ls`
do
[ -d ${des}/${sou} ] || mkdir ${des}/${sou}
des2=${des}/${sou}
find ${sou}  -regex ".*[0-9]" -exec mv {} {}.$host \;
mv ${sou}/*.$host ${des2}
done