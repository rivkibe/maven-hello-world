FROM maven:3 as build_image
COPY myapp /myapp
WORKDIR /myapp
RUN mvn clean package

FROM openjdk:11.0.6-jre-buster
COPY --from=build_image /myapp/target/myapp*.jar app.jar
EXPOSE 8080
RUN addgroup --system --gid 1002 app && adduser --system --uid 1002 --gid 1002 appuser
USER 1002
ENTRYPOINT java -jar /app.jar
