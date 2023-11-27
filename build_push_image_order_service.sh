# Perintah untuk membuat Docker image dari Dockerfile yang tadi dibuat, dengan nama image item-app, dan memiliki tag v1.
docker build -t order-service:latest .

# Melihat daftar image di lokal.
docker images

# Mengubah nama image agar sesuai dengan format github packages.
docker tag order-service:latest ghcr.io/rafrmdhn/order-service:latest

export CR_PAT=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

# Login ke Docker Hub/ github packages
echo $CR_PAT | docker login ghcr.io --username rafrmdhn --password-stdin

# Mengunggah image ke Docker Hub
docker push ghcr.io/rafrmdhn/order-service:latest