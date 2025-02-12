FROM clojure:temurin-21-tools-deps-jammy

WORKDIR /app

RUN mkdir -p /app/lib

COPY lib/bcprov-jdk18on-1.77.jar /app/lib/
COPY lib/digicert-jce-1.0.jar /app/lib/