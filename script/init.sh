#/bin/sh

yum -y update

yum -y install git zsh telnet vim unzip nc lrzsz  salt-minion  


useradd xiaodong.zhou
echo "xiaodong.zhou:uc.0079aml" |chpasswd

chmod 700 /etc/sudoers
echo "xiaodong.zhou    ALL=(ALL)       ALL" >> /etc/sudoers
chmod 400 /etc/sudoers

ssh-keygen -t rsa -N '' -f /root/.ssh/id_rsa

su -c "ssh-keygen -N '' -f /home/xiaodong.zhou/.ssh/id_rsa" xiaodong.zhou

su -c "git clone https://github.com/zxd0079/item.git ~/item" xiaodong.zhou

chmod +x /home/xiaodong.zhou/item/rcfile/run.sh

su -c "/home/xiaodong.zhou/item/rcfile/run.sh" xiaodong.zhou


rm -rf /home/xiaodong.zhou/item

sed -i 's/#Port 22/Port 22444/g' /etc/ssh/sshd_config



