# Use the official Python image as a base image
FROM python:3.8-slim

# Set environment variables for proxy (if required)
# Uncomment the following lines if you are behind a proxy and replace with your proxy details
# ENV http_proxy=http://your-proxy-url:port
# ENV https_proxy=https://your-proxy-url:port

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install the required Python packages
# Increase pip timeout and use a specific mirror
RUN pip install --default-timeout=100 Flask -i https://pypi.tuna.tsinghua.edu.cn/simple

# Make port 8080 available to the world outside this container
EXPOSE 8080

# Define environment variable
ENV NAME World

# Run the application
CMD ["python", "hello.py"]