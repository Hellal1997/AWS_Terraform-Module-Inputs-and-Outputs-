# Use an official base image
FROM ubuntu:22.04

# Set the working directory
WORKDIR /app

# Copy the application files
COPY . .

# Install dependencies (if needed)
RUN apt-get update && apt-get install -y \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Command to run the application
CMD ["bash"]
