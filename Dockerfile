# FROM golang:1.18

# WORKDIR /app

# COPY . .

# RUN apt-get update -y && apt-get install -y iputils-ping

# RUN go build -o hello .

# CMD ["./hello"]

FROM docker
COPY --from=docker/buildx-bin /buildx /usr/lib/docker/cli-plugins/docker-buildx
RUN docker buildx version