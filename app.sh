#!/bin/sh
if [ "$MODE" = "DEVE" ]; then
    java -jar app.jar < input.txt
else
    java -jar app.jar
fi
