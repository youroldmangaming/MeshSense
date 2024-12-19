#!/bin/bash

# Set environment variables
export PORT=5921
export DEV_API_URL=http://localhost:5920
export DEV_UI_URL=http://localhost:5921

# Start UI service
echo "Starting UI service..."
cd /app/MeshSense/ui
PORT=5921 npm run dev &

# Start API service
echo "Starting API service..."
cd /app/MeshSense/api
ACCESS_KEY=${ACCESS_KEY} PORT=5920 npm run dev & &

# Keep container running
wait

