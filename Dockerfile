# Build stage
FROM node:20-alpine AS build
WORKDIR /app

# Install dependencies
COPY package*.json ./
# Do not omit optional deps: Rollup uses platform-specific optional packages
RUN npm ci

# Copy source and build
COPY . .
RUN npm run build

# Serve stage
FROM nginx:1.27-alpine
# Nginx config for SPA routing and caching
COPY nginx.conf /etc/nginx/conf.d/default.conf
# Copy built app
COPY --from=build /app/dist /usr/share/nginx/html
EXPOSE 80
# Default command provided by base image

