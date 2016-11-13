FROM openjdk:7
RUN apt-get update && apt-get install -y vim curl net-tools
WORKDIR /usr/src/skinny-gateway
COPY skinny-gateway.war /usr/src/skinny-gateway
EXPOSE 8080
CMD ["/usr/lib/jvm/java-7-openjdk-amd64/bin/java", "-jar", "/usr/src/skinny-gateway/skinny-gateway.war"]
