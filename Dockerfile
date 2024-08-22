# Use the official Python image from the Docker Hub
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container
COPY . /app

# Install Flask inside the container
RUN pip install Flask

# Expose port 5000 to the outside world
EXPOSE 5000

# Run the Flask app
CMD ["python", "app.py"]
