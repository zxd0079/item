#!/bin/sh
for user in $(more /tmp/user/name.txt)
do
useradd $user
echo $user "is created"
echo "123" |passwd --stdin $user
echo $user "passwd is changed"
done
