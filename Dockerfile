# Build stage
FROM python:3.9 AS builder

# Set a working directory
WORKDIR /app

# Final stage
FROM python:3.9-slim

# Set a working directory
WORKDIR /app

# Copy only the necessary files and dependencies from the builder stage
COPY --from=builder /app /app

# Copy the application source code and install dependencies
COPY . .
COPY requirements.txt /app
RUN pip install -r /app/requirements.txt

# Specify the command to run your application
CMD ["python", "app.py"]
