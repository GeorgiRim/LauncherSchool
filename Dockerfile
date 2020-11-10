FROM openjdk:8
#COPY ./launcher/ /usr/launcher/
WORKDIR /usr/launcher
#VOLUME ./launcher:/user/launcher/data
#ADD ./launcher/* /user/launcher/
RUN apt update && apt install openjfx && curl -s http://mirror.keeperjerry.ru/launcher/v1/setup.sh | sh
#RUN javac Main.java

CMD ["java", "-Xmx512M", "-jar", "LaunchServer.jar"]