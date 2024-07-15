# escape=`

# Use the latest buildpack.
FROM ghcr.io/visualon/buildpack:5.1.59@sha256:627ec8954d33b6c189a3d9c5fa7558a630c659b1b86aea4448cb3f1c5ded62a0

LABEL `
  org.opencontainers.image.source="https://github.com/visualon/docker-builder" `
  org.opencontainers.image.url="https://github.com/visualon/docker-builder"

ENV DOTNET_CLI_UI_LANGUAGE=en-us

COPY src\ c:\

# required for jenkins
RUN prepare-user 'jenkins-slave$'
RUN git config --system safe.directory "*"

# renovate: datasource=github-releases packageName=PowerShell/PowerShell
RUN install-tool powershell v7.4.3

# renovate: datasource=node
RUN install-tool node 20.15.1

# renovate: datasource=npm
RUN install-npm corepack 0.28.2
RUN corepack -v && corepack enable && yarn -v

# renovate: datasource=java-version packageName=java-jre
RUN install-tool java 17.0.11+9

# renovate: datasource=github-releases packageName=facebook/zstd
RUN install-tool zstd v1.5.6

# renovate: datasource=github-releases packageName=minio/mc
RUN install-tool minio-client RELEASE.2024-07-11T18-01-28Z

# install last to get latest vs updates
ARG VS_DOTNET_VERSIONS="6.0;8.0"
RUN install-tool vs-tools
