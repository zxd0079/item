#!/bin/sh
export PROD_VISIT=prod.servers-Visit@tingjiandan.com-v201510128
date=`date +%y%m%d%H%M`
item=$1
home=/server/apps
bakup=/server/backup/$item
pid=`ps -ef|grep $item|grep -v grep|grep -v tail|grep -v vim|grep -v less|grep -v nohup|grep -v /bin/sh|awk '{print $2}'`
lb=192.168.1.1
kill $pid
sleep 15
cd $home
[ -d ${bakup} ] || mkdir -p ${bakup}
cp -r ./$item-bin.zip $bakup/$date.zip
rm -rf ./$item ./$item-bin.zip
scp -P22444 xiaodong.zhou@$lb:/tmp/war/$item/$item-bin.zip ./
unzip $item-bin.zip
cd $item
nohup /server/jdk8/bin/java -jar ./$item.jar &