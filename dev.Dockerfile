FROM node:18-alpine AS builder

# Create a working directory
WORKDIR /app

# Install required packages for node image
RUN apk --no-cache add curl g++ git make openssh python3

# Copy over only package.json and yarn.lock (to leverage Docker caching)
COPY package.json yarn.lock ./

# Install dependencies
RUN yarn install --frozen-lockfile

# Copy the rest of the application files
COPY . .

# Build the project (only the necessary production output)
RUN yarn build

# Stage 2: Create a minimal production image
FROM node:18-alpine AS prod

# Create a working directory
WORKDIR /app

# Install only production dependencies to reduce image size
COPY --from=builder /app/package.json /app/yarn.lock ./
RUN yarn install --production --frozen-lockfile && yarn cache clean

# Copy the built application from the builder stage
COPY --from=builder /app/.output /app/.output

# Set environment variables for production
ENV NODE_ENV=production
ENV NUXT_HOST=0.0.0.0
ENV NUXT_PORT=3000

# Expose port 3000
EXPOSE 3000/tcp

# Start the application
CMD ["node", ".output/server/index.mjs"]
