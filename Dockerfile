FROM tomcat:11.0

COPY target/MathQuizAppDevOps-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/MathQuizAppDevOps.war

EXPOSE 8080

CMD ["catalina.sh","run"]