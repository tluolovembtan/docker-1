#IMAGE tomcat-8.0.32
#DESCRIPTION tomcat-8.0.32
#docker build -t registry.aliyuncs.com/wzwdev/tomcat:8.0.32 .
#docker run --name tomcat -d -p 80:80 --restart=always registry.aliyuncs.com/wzwdev/tomcat:8.0.32

FROM registry.aliyuncs.com/wzwdev/jdk:1.8.0
MAINTAINER wzwdev "wzwdev@126.com"

ADD http://101.37.82.250:50080/oss/tomcat-8.0.32.tar.gz /alidata/server/
RUN cd /alidata/server/ && tar -zxf tomcat-8.0.32.tar.gz && rm -f tomcat-8.0.32.tar.gz

ADD files/run.sh /run.sh
RUN chmod +x /run.sh
CMD /run.sh && /usr/sbin/sshd -D

EXPOSE 22 80 
