FROM nginx:stable-alpine

# Remove the default Nginx configurations
RUN rm -f /etc/nginx/conf.d/*

# Remove the default Nginx configuration
RUN rm -f /etc/nginx/nginx.conf

# Copy your custom configurations
COPY /nginx /etc/nginx

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]