FROM ubuntu:latest
WORKDIR /server
COPY paper-1.20.2-260.jar .
RUN chmod +x start
COPY start /bin/
RUN apt-get update
RUN apt-get -y install openjdk-17-jdk 
RUN apt-get clean 
RUN rm -rf /var/lib/apt/lists/*
RUN java -jar paper-1.20.2-260.jar
RUN rm eula.txt
RUN echo eula=true > eula.txt
