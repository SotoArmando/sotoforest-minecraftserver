FROM alpine:3.17
RUN mkdir -p /opt/java
RUN mkdir -p /opt/java/app
RUN cd /opt/java

RUN apk update && apk upgrade
RUN apk add openjdk17
RUN chmod 777 -R /opt/java/app
WORKDIR /opt/java/app
COPY ./ /opt/java/app
RUN ls
EXPOSE 25565
CMD ["java", "-Xmx1536m", "-jar", "/opt/java/app/fabric-server-launch.jar"]
