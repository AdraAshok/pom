FROM tomcat 
MAINTAINER ASHOKAKKI
RUN mv webapps webapps2
RUN mv webapps.dist/ webapps
COPY /home/runner/work/pom/pom/target/mvn-web-1.0.war /usr/local/tomcat/webapps
EXPOSE 8080
CMD ["catalina.sh", "run"]
