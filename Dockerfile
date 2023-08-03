# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory inside the container
WORKDIR /usr/src/app

# Install dependencies
COPY package*.json ./
RUN npm install

# Copy all the source code to the container's working directory
#COPY . .

# Expose the port your React app will run on (usually 3000)
EXPOSE 3000

# Start the development server
CMD ["npm", "start"]
