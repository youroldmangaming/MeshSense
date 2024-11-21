#!/bin/bash

# Set environment variables
export PORT=5921
export DEV_API_URL=http://localhost:5920
export DEV_UI_URL=http://localhost:5921

# Start UI service
echo "Starting UI service..."
cd /app/MeshSense/ui
npm run dev &

# Start API service
echo "Starting API service..."
cd /app/MeshSense/api
npm run dev &

# Keep container running
wait


