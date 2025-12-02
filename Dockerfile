FROM eclipse-temurin:8-jre
ENV MODE="DEVE"

# Copy jar (remove leading slash!)
COPY target/calculator-1.0-SNAPSHOT-jar-with-dependencies.jar app.jar

COPY input.txt .
COPY app.sh .
RUN chmod 755 app.sh

ENTRYPOINT ["./app.sh"]
