# Use official Node.js image as the base image
FROM node:16-alpine

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package.json ./
COPY package-lock.json ./

# Install dependencies
RUN npm install -f

# Copy source code
COPY . .

# Build the project
RUN npm run build

# Expose port
EXPOSE 3336

# Command to run the application
CMD ["npm", "start"]
