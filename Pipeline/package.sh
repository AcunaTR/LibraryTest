#!/bin/sh

function packageFail {
    echo "Maven package failed"
}
trap packageFail ERROR

CURDIR=`pwd`

docker run --rm \
           -v "${CURDIR}/:/build" \
           --workdir /build/Library-Code \
           maven:3.5.2-jdk-8 mvn package
