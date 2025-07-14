# Use an official Nginx image
FROM nginx:alpine

# Copy your HTML file(s) to the Nginx web root
# Assuming i.html is in a 'public' folder next to your Dockerfile
COPY public/i.html /usr/share/nginx/html/

# Or if i.html is directly in the same folder as your Dockerfile
# COPY i.html /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Command to run Nginx (default for nginx image)
CMD ["nginx", "-g", "daemon off;"]
