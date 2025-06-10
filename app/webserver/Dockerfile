# Use an official Node.js runtime as a parent image
FROM node:18-alpine

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json (if using)
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy web server static files and server.js
COPY . .

# Expose the port the app runs on
EXPOSE 80

# Command to run the application
CMD [ "node", "server.js" ]
