# escape=`

# Use the latest buildpack.
FROM ghcr.io/visualon/buildpack:5.3.9@sha256:50b830e82c36925fbb062550047c3ec36dcc8e23e9d5ff1fb291375f1c0fb666

LABEL `
  org.opencontainers.image.source="https://github.com/visualon/docker-builder" `
  org.opencontainers.image.url="https://github.com/visualon/docker-builder"

ENV DOTNET_CLI_UI_LANGUAGE=en-us

COPY src\ c:\

# required for jenkins
RUN prepare-user 'jenkins-slave$'
RUN git config --system safe.directory "*"

# renovate: datasource=github-releases packageName=PowerShell/PowerShell
RUN install-tool powershell v7.4.4

# renovate: datasource=node
RUN install-tool node 20.16.0

# renovate: datasource=npm
RUN install-npm corepack 0.29.3
RUN corepack -v && corepack enable && yarn -v

# renovate: datasource=java-version packageName=java-jre
RUN install-tool java 21.0.4+7.0.LTS

# renovate: datasource=github-releases packageName=facebook/zstd
RUN install-tool zstd v1.5.6

# renovate: datasource=github-releases packageName=minio/mc
RUN install-tool minio-client RELEASE.2024-07-26T13-08-44Z

# install last to get latest vs updates
ARG VS_DOTNET_VERSIONS="6.0;8.0"
RUN install-tool vs-tools
