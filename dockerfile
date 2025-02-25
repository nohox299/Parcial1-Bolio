# Use the official Node.js image from the Docker Hub
FROM node:23

# Create and change to the app directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY ./appordinario/package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY ./appordinario .

# Expose the port the app runs on
EXPOSE 3000

# Command to run the application
CMD ["npm", "run", "dev"]