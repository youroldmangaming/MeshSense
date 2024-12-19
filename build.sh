chmod 777 start.sh
#docker compose up --build

docker build . -t y0mg/meshsense
docker login
docker push y0mg/meshsense
