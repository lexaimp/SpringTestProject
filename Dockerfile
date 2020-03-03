FROM tomcat:9.0.31-jdk8-openjdk-slim
COPY target/SpringTestProject-*.war /usr/local/tomcat/webapps/