# Use a stable Node.js version explicitly
FROM node:18.17.1

# Set the working directory
WORKDIR /app

# Copy only the package.json and package-lock.json first to optimize caching
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the app
COPY . .

# Expose the app's port (adjust as per your app)
EXPOSE 3000

# Run the application
CMD ["npm", "start"]
