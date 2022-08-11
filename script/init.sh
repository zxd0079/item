#/bin/sh

systemctl stop firewalld 
systemctl disable firewalld

sed -i '/SELINUX/{s/permissive/disabled/g}' /etc/selinux/config

sed -i 's/^MAILTO=root/MAILTO=""/g' /etc/crontab

echo "* soft nofile 65535"  >> /etc/security/limits.conf
echo "* hard nofile 65535"  >> /etc/security/limits.conf

ulimit -a

#echo "0" > /proc/sys/vm/swappiness

yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo 

yum-config-manager --add-repo https://mirrors.aliyun.com/docker-ce/linux/centos/docker-ce.repo

yum makecache fast

yum -y install git zsh telnet vim unzip nc lrzsz  salt-minion  yum-utils device-mapper-persistent-data lvm2

yum remove docker  docker-common docker-selinux docker-engine

#yum install -y docker-ce-19.03.9-3.el7 docker-ce-cli-19.03.9-3.el7 

yum install -y docker-ce-19.03.9-3.el7 docker-ce-cli-19.03.9-3.el7 docker-compose containerd.io

echo "ulimit -HSn 999999" >> /etc/sysconfig/docker
echo "net.ipv4.ip_local_port_range = 1024 65535" >> /etc/sysctl.conf
echo "net.ipv4.tcp_tw_recycle = 1" >> /etc/sysctl.conf
echo "net.ipv4.tcp_tw_reuse = 1" >> /etc/sysctl.conf
echo "net.core.rmem_max = 16777216" >> /etc/sysctl.conf
echo "net.core.wmem_max = 16777216" >> /etc/sysctl.conf
echo "net.ipv4.tcp_max_syn_backlog = 4096" >> /etc/sysctl.conf
echo "net.ipv4.tcp_syncookies = 1" >> /etc/sysctl.conf
echo "net.core.somaxconn = 1024" >> /etc/sysctl.conf
echo "net.ipv4.tcp_window_scaling = 1" >> /etc/sysctl.conf
echo "net.ipv4.tcp_rmem = 4096 87380 16777216" >> /etc/sysctl.conf
echo "net.ipv4.tcp_wmem = 4096 16384 16777216" >> /etc/sysctl.conf

sysctl -p


mkdir /server

#for le in $(ls /dev/sd[b-z])
#do
#mkfs.ext4 ${le} &>/dev/null
#sleep 5
#echo -e "${le}  /server ext4 defaults  0 0\n" >> /etc/fstab
#mount -a &>/dev/null
#done

mkdir /server/docker

mkdir /etc/docker

touch /etc/docker/daemon.json

cat /etc/docker/daemon.json <<EOF
{
  "registry-mirrors": ["https://u34p19q1.mirror.aliyuncs.com"]
  "data-root": "/server/docker"
}
EOF



systemctl start docker
systemctl enable docker


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

sed -i 's/PermitRootLogin no/PermitRootLogin yes/g' /etc/ssh/sshd_config

systemctl restart sshd



