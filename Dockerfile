# Use an official Nginx image
FROM nginx:alpine

# Remove the existing default Nginx configuration
# This ensures your custom config is the only one in effect
RUN rm /etc/nginx/conf.d/default.conf

# Copy your custom Nginx configuration file
COPY default.conf /etc/nginx/conf.d/default.conf

# Copy your main HTML file
# Ensure this is named index.html in your repository
COPY index.html /usr/share/nginx/html/index.html

# Copy your favicon (optional)
COPY favicon.ico /usr/share/nginx/html/favicon.ico

# Expose port 80
EXPOSE 80

# Command to run Nginx
CMD ["nginx", "-g", "daemon off;"]
