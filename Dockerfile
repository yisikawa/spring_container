FROM openjdk:8
ENV https_proxy "http://dng-proxy-o.denso.co.jp:8080"
ENV http_proxy "http://dng-proxy-o.denso.co.jp:8080"
ARG JAR_FILE=geko-1.0.0-SNAPSHOT.jar 
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]