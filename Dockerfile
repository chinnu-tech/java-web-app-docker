FROM tomcat:8.0.20-jre8
# Dummy text to test
RUN yum install maven -y
RUN mvn clean package 
COPY target/java-web-app*.war /usr/local/tomcat/webapps/java-web-app.war
