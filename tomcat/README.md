###构建镜像
docker build -t kingkoo/tomcat:8.0 .


###开放端口
firewall-cmd --zone=public --add-port=8080/tcp --permanent 
firewall-cmd --reload