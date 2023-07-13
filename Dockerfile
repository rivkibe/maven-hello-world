FROM openjdk:11.0.6-jre-buster
COPY target/myapp*.jar app.jar
RUN addgroup --system --gid 1002 app && adduser --system --uid 1002 --gid 1002 appuser
USER 1002
ENTRYPOINT java -jar /app.jar
