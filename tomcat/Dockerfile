FROM centos:7.3
MAINTAINER kingkoo1985@163.com

ENV JAVA_HOME /usr/local/jdk1.8.0_171

ADD apache-tomcat-8.0.46.tar.gz /usr/local
COPY server.xml /usr/local/apache-tomcat-8.0.46/conf
RUN sed -i '1a JAVA_OPTS="-Djava.security.egd=file:/dev/./urandom"' /usr/local/apache-tomcat-8.0.46/bin/catalina.sh 

RUN rm -f /usr/local/*.tar.gz

WORKDIR /usr/local/apache-tomcat-8.0.46
EXPOSE 8080
ENTRYPOINT ["./bin/catalina.sh", "run"]
