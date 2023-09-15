FROM node:20-alpine AS builder
WORKDIR /app
COPY package*.json .
COPY . .
RUN npm install
RUN npm run build

EXPOSE 5000

# Start the Svelte a
RUN npm run start