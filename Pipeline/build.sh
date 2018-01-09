#!/bin/sh

function buildFail {
    echo "Maven build failed"
}
trap buildFail ERROR

CURDIR=`pwd`

aws s3 cp s3://acuna-lambda/Acuna-Library-1.0.0.jar ./LibraryCode/libs

docker run --rm \
           -v "${CURDIR}/:/build" \
           --workdir /build/LibraryCode \
           maven:3.5.2-jdk-8 mvn compile