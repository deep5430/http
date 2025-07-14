# Use an official Nginx image
FROM nginx:alpine

# Remove the default Nginx configuration (optional, but good if you have a custom one)
# RUN rm /etc/nginx/conf.d/default.conf

# Copy your HTML file(s) to the Nginx web root
# Since i.html is directly in the same folder as your Dockerfile (the build context)
COPY i.html /usr/share/nginx/html/

# Expose port 80 (standard for web servers)
EXPOSE 80

# Command to run Nginx (default for nginx image, often omitted but good to be explicit)
CMD ["nginx", "-g", "daemon off;"]
