FROM java:latest

RUN apt-get update && apt-get install -y --no-install-recommends openjfx && rm -rf /var/lib/apt/lists/*

ADD target/test-jar-with-dependencies.jar /test-jar-with-dependencies.jar

CMD ["java", "-jar", "/test-jar-with-dependencies.jar"]
