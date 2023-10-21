# Build stage
FROM python:3.8 AS builder

# Set a working directory
WORKDIR /app

# Copy the requirements file and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application source code
COPY . .

# Build your application
RUN python app.py build

# Final stage
FROM python:3.8-slim

# Set a working directory
WORKDIR /app

# Copy only the necessary files and dependencies from the builder stage
COPY --from=builder /app /app

# Specify the command to run your application
CMD ["python", "app.py"]
