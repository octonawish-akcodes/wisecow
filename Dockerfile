FROM ubuntu:20.04

# Install dependencies
RUN apt-get update && \
    apt-get install -y \
    fortune-mod \
    cowsay \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Copy the application script
COPY wisecow.sh /usr/local/bin/wisecow.sh

# Make the script executable
RUN chmod +x /usr/local/bin/wisecow.sh

# Expose the application port
EXPOSE 4499

# Run the application
CMD ["/usr/local/bin/wisecow.sh"]
