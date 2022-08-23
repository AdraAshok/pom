FROM tomcat 
MAINTAINER ASHOKAKKI
RUN mv webapps webapps2
RUN mv webapps.dist/ webapps
COPY target/*.war /usr/local/tomcat/webapps
EXPOSE 8080
CMD ["catalina.sh", "run"]
