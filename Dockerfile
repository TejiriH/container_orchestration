# Use the official Nginx image from Docker Hub
FROM nginx:latest

# Copy HTML and CSS files to Nginx's default directory
COPY ./index.html /usr/share/nginx/html/index.html
COPY ./styles.css /usr/share/nginx/html/styles.css

# Expose port 80 to the outside world
EXPOSE 80

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]
