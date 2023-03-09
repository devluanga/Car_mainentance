# Use an official Python runtime as a parent image
FROM python:3.9-slim-buster

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 8000 for the Django development server
EXPOSE 8000

# Set environment variables for Django
ENV DJANGO_SETTINGS_MODULE=myproject.settings
ENV PYTHONPATH=/app

# Run the Django development server when the container launches
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
