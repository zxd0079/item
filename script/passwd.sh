!/bin/sh
for pw in $(more /tmp/user/pw.txt)
do
echo $pw |chpasswd
echo "$pw is succse"
done

