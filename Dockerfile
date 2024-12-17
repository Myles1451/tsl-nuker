# Use the Node.js Alpine image
FROM node:18-alpine

# Install required dependencies including bash
RUN apk add --no-cache build-base cmake python3 bash

# Install n and use it to switch Node.js versions
RUN npm install -g n && bash -c "n 16.20.1"

# Set working directory
WORKDIR /app

# Copy project files
COPY . .

# Install project dependencies
RUN npm ci --verbose

# Default command to run your app
CMD ["npm", "start"]
