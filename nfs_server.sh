ip="192.168.1.203"
yum install -y nfs-utils
mkdir /home/hbrc/images
chown -R hbrc:hrbc /home/hbrc/images/
echo "/home/hbrc/images $ip(rw,sync,fsid=0)" >> /etc/exports
systemctl start nfs-server.service
