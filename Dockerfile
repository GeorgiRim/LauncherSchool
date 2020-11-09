FROM openjdk:8
#COPY . /usr/launcher
WORKDIR /usr/launcher
RUN curl -s http://mirror.keeperjerry.ru/launcher/v1/setup.sh | sh
#RUN javac Main.java
CMD ["java", "-Xmx512M", "-jar", "LaunchServer.jar"]