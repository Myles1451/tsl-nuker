RUN apt-get update && apt-get install -y build-essential cmake
RUN npm install -g n
RUN n 16.20.1  # Adjust Node.js version if needed
RUN chown -R root:root /root/.npm
RUN npm ci --verbose --no-optional
