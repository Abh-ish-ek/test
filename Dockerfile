# Use the official Node.js 18 image
FROM node:18

# Create and change to the app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./
RUN npm install

# Install Playwright dependencies
RUN npx playwright install-deps

# Copy the rest of the app's source code
COPY . .

# Install Playwright
RUN npx playwright install

# Expose the port the app runs on
EXPOSE 3000

# Run the application
CMD ["npm", "start"]
