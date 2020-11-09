FROM openjdk:8
#COPY ./launcher/ /usr/launcher/
WORKDIR /usr/launcher
#VOLUME ./launcher:/user/launcher/data
RUN ln -l /user/launcher/data/* /user/launcher/ curl -s http://mirror.keeperjerry.ru/launcher/v1/setup.sh | sh
#RUN javac Main.java
CMD ["java", "-Xmx512M", "-jar", "LaunchServer.jar"]