FROM ubuntu:20.04

# Build layer
RUN apt-get update && apt-get install -y python3-pip
RUN pip3 install flask

# Deploy layer
FROM nginx:latest

# Copy the application code
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start the Nginx server
CMD ["nginx", "-g", "daemon off;"]
