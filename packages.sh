#!bin/bash

PACKAGES=$1

mkdir ${PACKAGES}_DEB

cd ${PACKAGES}_DEB


apt-get download $(apt-cache depends --recurse --no-recommends --no-suggests --no-conflicts --no-breaks --no-replaces --no-enhances --no-pre-depends ${PACKAGES} | grep "^\w" | sort -u) && echo "${PACKAGES} download"

cd ..
