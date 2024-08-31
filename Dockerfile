# Use an official Node.js runtime as the base image
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /src

# Copy the package.json and package-lock.json files to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Build the React app for production
RUN npm run build

# Use a lightweight web server to serve the static files
# Install the 'serve' package globally
RUN npm install -g serve

# Expose the port that your React app runs on
EXPOSE 3000

# Command to run the web server and serve the React app
CMD ["serve", "-s", "build", "-l", "3000"]
