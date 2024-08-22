# Use the official Python image from the Docker Hub
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . .

# Install the required Python packages
RUN pip install Flask

# Make port 8080 available to the world outside this container
EXPOSE 8080

# Define the command to run the application
CMD ["python", "hello.py"]
