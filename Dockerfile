# Use the official Node.js image as the base image
FROM node:18

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json and package-lock.json files
COPY package*.json ./

# Install dependencies
RUN yarn install

# Copy the rest of the application files
COPY . .


EXPOSE 3000

# Start the Vite development server
CMD ["yarn", "start"]
