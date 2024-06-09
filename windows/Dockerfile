# escape=`

# Use the latest buildpack.
FROM ghcr.io/visualon/buildpack:5.1.48@sha256:fdc4709ec81bb0ede0c48d45c3110cf072cc27ec758cf572da7e68e6dd3b14f2

LABEL `
  org.opencontainers.image.source="https://github.com/visualon/docker-builder" `
  org.opencontainers.image.url="https://github.com/visualon/docker-builder"

ENV DOTNET_CLI_UI_LANGUAGE=en-us

COPY src\ c:\

# required for jenkins
RUN prepare-user 'jenkins-slave$'
RUN git config --system safe.directory "*"

# renovate: datasource=github-releases packageName=PowerShell/PowerShell
RUN install-tool powershell v7.4.2

# renovate: datasource=node
RUN install-tool node 20.14.0

# renovate: datasource=npm
RUN install-npm corepack 0.28.2
RUN corepack -v && corepack enable && yarn -v

# renovate: datasource=java-version packageName=java-jre
RUN install-tool java 17.0.11+9

# renovate: datasource=github-releases packageName=facebook/zstd
RUN install-tool zstd v1.5.6

# renovate: datasource=github-releases packageName=minio/mc
RUN install-tool minio-client RELEASE.2024-06-05T18-13-30Z

# install last to get latest vs updates
ARG VS_DOTNET_VERSIONS="6.0;8.0"
RUN install-tool vs-tools
