FROM node:20-alpine AS builder
WORKDIR /app
COPY package*.json .
COPY . .
RUN npm install
RUN export NODE_ENV=production
RUN npm run build
# Start the Svelte a
RUN npm run start -- --host 0.0.0.0