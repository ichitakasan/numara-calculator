FROM lipanski/docker-static-website:latest

# Copy your static files
COPY build/ www/

CMD ["/busybox-httpd", "-f", "-v", "-p", "8080", "-h", "www"]