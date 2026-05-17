# Use the official lightweight Nginx image from Docker Hub
FROM nginx:alpine

# Copy the static web files from local src directory to Nginx serving directory
COPY ./src /usr/share/nginx/html

# Expose port 80 to allow incoming web traffic
EXPOSE 80

# Start Nginx server automatically when the container launches
CMD ["nginx", "-g", "daemon off;"]