# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed dependencies specified in requirements.txt
RUN pip install --no-cache-dir Flask requests

# Make port 5252 available to the world outside this container
EXPOSE 5252

# Run the Flask application
CMD ["python", "exercise.py"]
