# Start the UI service in the background
cd /app/MeshSense/ui && PORT=5921 DEV_API_URL=http://localhost:5920 npm run dev &

# Start the API service
cd /app/MeshSense/api && \
export DEV_UI_URL=http://localhost:5921 && \
PORT=5920 npm run dev
