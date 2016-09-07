wget http://219.238.4.227/files/801400000259E7EF/mirrors.hust.edu.cn/apache/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz
tar -zxvf apache-maven-3.3.9-bin.tar.gz
mv apache-maven-3.3.9 /usr/local/maven3
cd /usr/local/maven3

echo "export M2_HOME=/usr/local/maven3" >> /etc/profile
echo "export PATH=$PATH:$JAVA_HOME/bin:$M2_HOME/bin" >> /etc/profile
