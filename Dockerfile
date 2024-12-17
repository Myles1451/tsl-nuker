# Use a specific version of Node.js 18
FROM node:18.17.1

# Set working directory
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the application
COPY . .

# Expose the desired port
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
