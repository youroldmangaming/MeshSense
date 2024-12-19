chmod 777 start.sh
#docker login
#docker buildx create --use
#docker buildx build --platform linux/amd64,linux/arm64 -t y0mg/meshsense --push .


docker build . -t y0mg/meshsense
docker login
docker push y0mg/meshsense
