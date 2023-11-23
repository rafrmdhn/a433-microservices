#!/bin/bash

# Membangun Docker Image
docker build -t karsajobs:latest .

# Menampilkan daftar images Docker yang ada
docker images ls

# Menyematkan tag pada image untuk digunakan saat push ke GitHub Container Registry
docker tag karsajobs-ui:latest ghcr.io/rafrmdhn/karsajobs:latest

# Melakukan login ke GitHub Container Registry menggunakan credentials yang disediakan
echo $REGISTRY_PASS  | docker login ghcr.io --username rafrmdhn --password-stdin

# Mengunggah image ke GitHub Container Registry
docker push ghcr.io/rafrmdhn/karsajobs:latest