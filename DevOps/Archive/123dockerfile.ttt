# Use Python 3.10 image
FROM python:3.10

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set the working directory to /code
WORKDIR /code

# Copy the requirements.txt file into the container at /code
COPY requirements.txt /code/

# Install any dependencies specified in requirements.txt
RUN pip install -r requirements.txt

# Copy all files in the current directory to /code
COPY . /code/
