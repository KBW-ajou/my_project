# Use the official Ubuntu image as a base image
FROM ubuntu:latest

# Set the working directory
WORKDIR /app

# Install Python and pip
RUN apt-get update && \
    apt-get install -y python3 python3-pip python3-venv

# Create and activate virtual environment
RUN python3 -m venv myenv
RUN /bin/bash -c "source myenv/bin/activate"

# Copy the requirements file
COPY requirements.txt .

# Install Python dependencies
RUN myenv/bin/pip install -r requirements.txt

# Copy the project files
COPY . .

# Expose Jupyter Notebook port
EXPOSE 8888

# Set the entry point
CMD ["myenv/bin/jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]