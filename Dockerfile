# Use the official Python base image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file
COPY requirements.txt .

# Install the Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code
COPY . .

# Expose the port on which the application will run
EXPOSE 8000

# Set the entry point command
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
