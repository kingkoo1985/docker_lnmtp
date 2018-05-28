# docker_lnmtp

centos 下docker 一键部署php和tomcat环境
###安装docker
https://docs.docker.com/install/linux/docker-ce/centos/#prerequisites

###安装docker-compose
https://github.com/docker/compose/releases/

###运行容器
docker-compose -f docker-compose.yml up -d

###删除镜像
docker rmi --force $(docker images | grep kingkoo | awk '{print $3}')

###修改
docker exec -it kingkoo/nginx /bin/bash
docker commit af1cbccfff53 kingkoo/nginx:1.12.1