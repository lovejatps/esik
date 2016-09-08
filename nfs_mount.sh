serverfilepath="/home/hbrc/images"
path="/home/hbrc/imagedir/"
ip="192.168.1.204"
yum install nfs-utils
mount $ip:$serverfilepath $path
