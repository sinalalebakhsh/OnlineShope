# Dockerfile
# Use the official Python image from the Docker Hub
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the current directory contents into the container at /app
COPY . .

# Expose the port Gunicorn will run on
EXPOSE 8000

# Define the command to run the application
CMD ["gunicorn", "config.wsgi:application", "--bind", "0.0.0.0:8000"]
