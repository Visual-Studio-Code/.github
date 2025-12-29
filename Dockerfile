# Use the official Python base image
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy the Python script into the container
COPY hello.py .

# Expose port 5000 for the Flask app
EXPOSE 5000

# Run the Python script
CMD ["python", "hello.py"]
