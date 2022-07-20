FROM eclipse-temurin:17.0.3_7-jdk
VOLUME /tmp
ADD target/workshop-pipelines.jar app.jar
ENTRYPOINT exec java $JAVA_OPTS -jar /app.jar

# Pull the minimal Ubuntu image
#FROM ubuntu

# Install Nginx
#RUN apt-get -y update && apt-get -y install nginx

# Copy the Nginx config
#COPY ./nginx /etc/nginx/nginx.conf.default

# Expose the port for access
#EXPOSE 80/tcp

# Run the Nginx server
#CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
