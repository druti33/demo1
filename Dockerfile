FROM tomcat:9
COPY target/*.jar /webapps/
EXPOSE 8089
CMD ["catalina.sh", "run"]
