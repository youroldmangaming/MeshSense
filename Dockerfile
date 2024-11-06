FROM node:23.1.0

# Install dependencies
RUN apt-get update && apt-get install -y \
    libfuse2 \
    curl \
    ca-certificates \
    git \
    && rm -rf /var/lib/apt/lists/*

# Create app directory
WORKDIR /app

# Clone the MeshSense repository
RUN git clone https://github.com/Affirmatech/MeshSense.git

# Install dependencies
WORKDIR /app/MeshSense
RUN ./update.mjs

# Copy the startup script
COPY start.sh /start.sh
RUN chmod +x /start.sh

# Set the entry point to our startup script
CMD ["/start.sh"]
