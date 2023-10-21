# Multi-stage Docker build

## Start application locally

- **Build Docker image**

  ```bash
  docker build -t multi-stage-app .

- **Run Docker container**

  ```bash
  docker run -p 5000:5000 multi-stage-app
