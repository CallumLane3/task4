FROM python:3.9-slim

WORKDIR /app

# Install git and essential dependencies
RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

# Copy project files into the container workspace
COPY . /app

# Ensure the entrypoint script is executable
RUN chmod +x ./.github/scripts/entrypoint.sh

# Set the default entrypoint
ENTRYPOINT ["./.github/scripts/entrypoint.sh"]