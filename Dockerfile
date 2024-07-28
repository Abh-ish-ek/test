# Use the official Node.js 18 image
FROM node:18

# Create and change to the app directory
WORKDIR /usr/src/app

# Add a non-root user to avoid running as root
RUN useradd -ms /bin/bash myuser

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Install Playwright dependencies
RUN npx playwright install-deps

# Copy the rest of the app's source code
COPY . .

# Change file ownership to the non-root user
RUN chown -R myuser:myuser /usr/src/app

# Switch to the non-root user
USER myuser

# Install Playwright
RUN npx playwright install

# Expose the port the app runs on
EXPOSE 3000

# Run the application
CMD ["npm", "start"]
