#!/usr/bin/env bash

# Inputs
JAR=$1

jarsigner -J-Djava.class.path=/app/lib/digicert-jce-1.0.jar:/app/lib/bcprov-jdk18on-1.77.jar \
  -keystore NONE \
  -storetype DIGICERT \
  -storepass changeit \
  -providerClass com.digicert.jce.Provider \
  -signedjar "${JAR%.*}-signed.jar"\
  -sigalg SHA256withRSA \
  -tsa "http://timestamp.digicert.com" \
  "$JAR" \
  "$SM_KEYPAIR" \
  --verbose \
  --debug
