#!/bin/bash

# melakukan build dari dockerfila
docker build -t item-app:v1 .

# cek list docker images yang ada
docker images

# mengubah nama image agar sesuai dengan format Github Packages
docker tag item-app:v1 ghcr.io/rafrmdhn/item-app:v1

export CR_PAT=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

# push docker images ke Github Package
echo $CR_PAT | docker login ghcr.io --username rafrmdhn --password-stdin
docker tag item-app:v1 rafrmdhn/item-app:v1

# mengunggah image ke Github Package
docker push ghcr.io/rafrmdhn/item-app:v1