FROM arm64v8/node:16-alpine

# Set working directory in container
WORKDIR /usr/src/

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy application files
COPY . .

# Expose the application port
EXPOSE 8000

# Start the application
CMD ["npm", "run", "start:docker"]