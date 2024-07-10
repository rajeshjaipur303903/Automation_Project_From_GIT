# Use the official Nginx image from the Docker Hub
FROM nginx:latest

# Copy the custom index.html to the Nginx html directory
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
