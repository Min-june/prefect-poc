# Use the official CUDA base image
FROM nvidia/cuda:11.2.2-cudnn8-runtime-ubuntu20.04

# Set the working directory
WORKDIR /app

# Install necessary packages
RUN apt-get update && apt-get -y install tzdata
ENV TZ=Etc/UTC
RUN dpkg-reconfigure --frontend noninteractive tzdata


RUN apt-get install -y python3-pip && \
    rm -rf /var/lib/apt/lists/*


# Install Prefect
RUN pip3 install prefect

# Copy any additional files needed (e.g., Prefect flow scripts)
COPY . /app

# Set the entrypoint to the Prefect agent
ENTRYPOINT ["prefect", "worker", "start", "--pool", "GPUJobPool"]