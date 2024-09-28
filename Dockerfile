# Stage 1: Build the app using Node 20 Alpine
FROM node:20-alpine AS builder

# Create a working directory
WORKDIR /app

# Install required packages for node image
RUN apk --no-cache add curl g++ git make openssh python3

# Copy over only package.json and yarn.lock (to leverage Docker caching)
COPY package.json yarn.lock /app/

# Install dependencies
RUN yarn install --frozen-lockfile --production

# Copy the rest of the application files
COPY . ./app

# Build the project
RUN yarn build

# Stage 2: Create a minimal production image
FROM node:20-alpine

# Create a work directory in /app
WORKDIR /app

# Install only production dependencies
COPY package.json yarn.lock /app/
RUN yarn install --production --frozen-lockfile

# Copy the built application from the builder stage
COPY --from=builder /app/.output /app/.output

# Define the host and port for the server
ENV NUXT_HOST=0.0.0.0
ENV NUXT_PORT=3000

# Expose port 3000
EXPOSE 3000

# Define the command to run the application
ENTRYPOINT ["node", ".output/server/index.mjs"]
