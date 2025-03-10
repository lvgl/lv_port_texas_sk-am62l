FROM debian:12

# Set environment variables to avoid interactive prompts during package installations
ENV DEBIAN_FRONTEND=noninteractive

# Update package list and install necessary packages, including Git
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    gcc-aarch64-linux-gnu \
    g++-aarch64-linux-gnu \
    cmake \
    build-essential \
    ca-certificates \
    curl \
    git \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Verify that GCC, G++, and CMake are installed
RUN aarch64-linux-gnu-gcc --version && aarch64-linux-gnu-g++ --version && cmake --version

CMD ["/app/native_build/scripts/build_app.sh"]