# ARG BUILDX_VERSION=0.4.2
# ARG DOCKER_VERSION=stable
ARG BUILDX_PLATFORMS=linux/arm64,linux/amd64

FROM docker:stable

COPY --from=docker/buildx-bin:latest /buildx /usr/libexec/docker/cli-plugins/docker-buildx

RUN docker buildx version

CMD docker run --privileged --rm tonistiigi/binfmt --install all
