# Use official Nginx image
FROM nginx:alpine

# Set working directory in the container
WORKDIR /usr/share/nginx/html

# Remove default nginx index page
RUN rm -rf ./*

# Copy your static site files to the container
COPY index.html .
COPY styles.css .

# Expose port 80 to the outside world
EXPOSE 80

# Start Nginx (default CMD from base image is fine)
