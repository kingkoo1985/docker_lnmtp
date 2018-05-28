###构建镜像
docker build -t kingkoo/nginx:1.12.1 .


###开放端口
firewall-cmd --zone=public --add-port=80/tcp --permanent 
firewall-cmd --reload