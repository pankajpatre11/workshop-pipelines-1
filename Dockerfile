#FROM eclipse-temurin:17.0.3_7-jdk
#VOLUME /tmp
#ADD target/workshop-pipelines.jar app.jar
#ENTRYPOINT exec java $JAVA_OPTS -jar /app.jar

FROM nginx
RUN rm /etc/nginx/nginx.conf /etc/nginx/conf.d/default.conf
COPY content /usr/share/nginx/html
COPY conf /etc/nginx
VOLUME /var/log/nginx/log
