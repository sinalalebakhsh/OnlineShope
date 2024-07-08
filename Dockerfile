# For Django5 use python:3.10 
FROM python:3.10
# For Django4 use python:3.9 OR between 3.0 to 3.9
# FROM python:3.9

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /code

# Copy the requirements.txt file into the container at /code
COPY requirements.txt /code/

# Install any dependencies specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt
# RUN pip install -r requirements.txt

COPY . /code/