FROM openjdk:8-alpine
#COPY ./launcher/ /usr/launcher/
WORKDIR /usr/launcher
#VOLUME ./launcher:/user/launcher/data
#ADD ./launcher/* /user/launcher/
RUN apk --no-cache add curl && curl -s http://mirror.keeperjerry.ru/launcher/v1/setup.sh | sh
#RUN javac Main.java
CMD ["java", "-Xmx512M", "-jar", "LaunchServer.jar"]