docker run -d \
  --name meshsense \
  -p 5921:5921 \
  -p 5920:5920 \
  -e PORT=5921 \
  -e DEV_UI_URL="http://localhost:5921" \
  -e ACCESS_KEY="noSecrets" \
  --tty \
  --interactive \
  --privileged \
  y0mg/meshsense





