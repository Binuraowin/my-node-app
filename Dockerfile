FROM node:18-alpine
WORKDIR /app

# Copy package files first
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy source code
COPY app.js .

EXPOSE 8000
CMD ["node", "app.js"]