# Base image using Python 3.9 on Debian Buster
FROM python:3.9-slim-buster

# Set the working directory inside the container to /app
WORKDIR /app

# Copy the requirements.txt file to the /app directory
COPY ./requirements.txt /app

# Install the Python dependencies specified in requirements.txt
RUN pip install -r requirements.txt

# Copy the entire application code to the /app directory
COPY . .

# Expose port 5000 for the Flask application
EXPOSE 5000

# Set the environment variable FLASK_APP to app.py
ENV FLASK_APP=app.py

# Run the Flask application with "flask run" command, listening on all available network interfaces
CMD ["flask", "run", "--host", "0.0.0.0"]

