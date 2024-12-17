# Specify a base image
FROM node:18-alpine

# Set working directory inside the container
WORKDIR /app

# Install build tools and required dependencies
RUN apk add --no-cache build-base cmake python3

# Optional: Install an alternative Node.js version
RUN npm install -g n && n 16.20.1

# Copy project files to the container
COPY . .

# Install Node.js dependencies
RUN npm ci --verbose

# Specify the command to run your app
CMD ["npm", "start"]
