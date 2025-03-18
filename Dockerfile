# Use an official Node.js runtime as the base image
FROM node:18

# Set the working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application
COPY . .

# Set environment variable for Cloud Run (default is 8080)
ENV PORT=8080

# Expose the port Cloud Run listens on
EXPOSE 8080

# Start the application
CMD ["node", "app.js"]
