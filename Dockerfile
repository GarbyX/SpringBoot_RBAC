#Build environment

FROM openjdk:8-alpine

EXPOSE 9500

RUN mkdir /app
COPY ./compiled/*.jar /app/app.jar

ENTRYPOINT ["java","-jar","/app/app.jar"]


#FROM maven:3.6.3-jdk-11 AS MAVEN_BUILD
#COPY pom.xml /build/
#COPY etranzact_checks.xml /build/
#COPY src /build/src/
#COPY settings.xml /build/
#WORKDIR /build/
#RUN mvn -B -f ./pom.xml package -s ./settings.xml -DskipTests

#
##Production packaging
#FROM java:8-jre-alpine
#WORKDIR /app
#EXPOSE 8080
#COPY --from=MAVEN_BUILD /build/target/capstoneApi-0.0.1-SNAPSHOT*.jar /app/eNairaApi-0.0.1-SNAPSHOT.jar
#ENTRYPOINT ["java", "-jar", "eNairaApi-0.0.1-SNAPSHOT.jar"]