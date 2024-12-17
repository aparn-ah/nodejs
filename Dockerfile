# Base image for Node.js
FROM node:20

# Set working directory
WORKDIR /usr/src/app

# Copy package files for installation
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy source code into the container
COPY . .

# Expose the port the app runs on
EXPOSE 3000

# Command to start the Node.js application
CMD ["npm", "start"]

