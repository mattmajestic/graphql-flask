# Use the official Python base image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements.txt file into the container
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the backend files into the container
COPY . .

# Expose the port on which the Flask app will run
EXPOSE 5000

# Set environment variable to avoid buffering stdout/stderr
ENV PYTHONUNBUFFERED=1

# Command to start the Flask app
CMD ["python", "app.py"]
