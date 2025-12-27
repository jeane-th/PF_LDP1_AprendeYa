
FROM tomcat:9.0-jdk11

COPY ./dist/PF_LDP1_AprendeYa.war /usr/local/tomcat/webapps/ROOT.war
COPY ./lib/mysql-connector-java.jar /usr/local/tomcat/lib/

EXPOSE 8080
CMD ["catalina.sh", "run"]

