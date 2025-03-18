# Use Node.js base image
FROM node:18

# Set working directory
WORKDIR /usr/src/app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the app files
COPY . .

# Expose port 8080
EXPOSE 8080

# Start the application using bin/www
CMD ["node", "bin/www"]
