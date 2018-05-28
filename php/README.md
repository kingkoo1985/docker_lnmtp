###构建镜像
docker build -t kingkoo/php:5.6 .


###开放端口
firewall-cmd --zone=public --add-port=3306/tcp --permanent 
firewall-cmd --reload