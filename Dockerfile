# Use an official Node.js runtime as the base image
FROM node:20

# Copy package.json and package-lock.json to the container
# COPY package-lock.json ./

# Install application dependencies
RUN npm install -g npm@latest

# RUN  npx update-browserslist-db@latest

# Copy the rest of your application's source code to the container
COPY . .

# Expose the port your app will run on
EXPOSE 3000

# Define the command to run your application
CMD ["npm", "start"]
