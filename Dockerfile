# Container image that runs your code
FROM alpine:3.10

WORKDIR /build
RUN apt-get update
RUN apt-get -qq -y clang-tidy
RUN echo "Inside Dockerfile, setting up Docker image"
RUN which clang++
RUN which clang-tidy

# Copies your code file from your action repository to the filesystem path `/` of the container
# COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]

ADD entrypoint.sh /entrypoint.sh
COPY . .
CMD ["bash", "/entrypoint.sh"]
