# Use the Node.js Debian image
FROM node:18

# Install required dependencies
RUN apt-get update && apt-get install -y build-essential cmake python3

# Install n and switch Node.js versions
RUN npm install -g n && n 16.20.1

# Set working directory
WORKDIR /app

# Copy project files
COPY . .

# Install project dependencies
RUN npm ci --verbose

# Default command to run your app
CMD ["npm", "start"]
