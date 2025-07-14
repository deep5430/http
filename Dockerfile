# Use an official Nginx image
FROM nginx:alpine

# Copy your HTML file(s) to the Nginx web root
COPY i.html /usr/share/nginx/html/

# Add this line to copy your favicon
COPY favicon.ico /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Command to run Nginx
CMD ["nginx", "-g", "daemon off;"]
