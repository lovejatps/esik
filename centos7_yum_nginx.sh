
#################Environment to prepare#########################
yum -y install gcc gcc-c++ autoconf automake
yum -y install zlib zlib-devel openssl openssl-devel pcre-devel
#################Environment to prepare#########################
#sudo groupadd -r nginx
#sudo useradd -s /sbin/nologin -g nginx -r nginx-user


wget  http://nginx.org/packages/centos/7/noarch/RPMS/nginx-release-centos-7-0.el7.ngx.noarch.rpm
rpm -ivh nginx-release-centos-7-0.el7.ngx.noarch.rpm
sed -i '3,$d' /etc/yum.repos.d/nginx.repo
echo  'name=nginx repo' >> /etc/yum.repos.d/nginx.repo
echo  'baseurl=http://nginx.org/packages/mainline/centos/$releasever/$basearch/' >> /etc/yum.repos.d/nginx.repo
echo  'gpgcheck=0' >> /etc/yum.repos.d/nginx.repo
echo  'enabled=1' >> /etc/yum.repos.d/nginx.repo
yum install nginx
