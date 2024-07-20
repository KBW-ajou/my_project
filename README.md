# my_project

## How to Run the Project using Docker

1. **Build the Docker image**

   ```bash
   docker build -t my_project_image .

## Run the Docker container
docker run -it --name my_project_container -p 8888:8888 my_project_image
