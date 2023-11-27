# Perintah untuk membuat Docker image dari Dockerfile yang tadi dibuat, dengan nama image item-app, dan memiliki tag v1.
docker build -t shipping-service:latest .

# Melihat daftar image di lokal.
docker images

# Mengubah nama image agar sesuai dengan format github packages.
docker tag shipping-service:latest ghcr.io/rafrmdhn/shipping-service:latest

export CR_PAT=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

# Login ke Docker Hub/ github packages
echo $CR_PAT | docker login ghcr.io --username rafrmdhn --password-stdin

# Mengunggah image ke Docker Hub
docker push ghcr.io/rafrmdhn/shipping-service:latest