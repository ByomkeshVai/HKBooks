FROM node:16-alpine

# Set the working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Bundle app source
COPY . .

# Build the application
RUN npm run build

# Expose the port the app runs on
EXPOSE 6000

# Define the command to run the app
CMD ["node", "dist/index.js"]