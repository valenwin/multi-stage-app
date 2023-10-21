# Multi-stage Docker build

[multi-stage-app](https://hub.docker.com/repository/docker/vlysenok/multi-stage-app/general)

## Start application locally

- **Build Docker image**

  ```bash
  docker build -t multi-stage-app .
  ```
- **Run Docker container**

  ```bash
  docker run -p 5001:5001 multi-stage-app
  ```
## Dockerhub image

- **Pull public image**

  ```bash
  docker login --username your-dockerhub-username
  ```
  ```bash
  docker pull your-dockerhub-username/multi-stage-app:latest
  ```
- **Push new image tag**

  ```bash
  docker push your-dockerhub-username/multi-stage-app:tagname
  ```