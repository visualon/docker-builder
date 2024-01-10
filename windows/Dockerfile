# escape=`

# Use the latest buildpack.
FROM ghcr.io/visualon/buildpack:4.2.34@sha256:229c169905f46f30caf3cbef035e1d753ca55cc43730ea2e5a517a121b29d3e1

LABEL `
  org.opencontainers.image.source="https://github.com/visualon/docker-builder" `
  org.opencontainers.image.url="https://github.com/visualon/docker-builder"

ENV DOTNET_CLI_UI_LANGUAGE=en-us

COPY src\ c:\

# required for jenkins
RUN prepare-user 'jenkins-slave$'
RUN git config --system safe.directory "*"

# renovate: datasource=github-releases packageName=PowerShell/PowerShell
RUN install-tool powershell v7.4.0

# renovate: datasource=node
RUN install-tool node 20.10.0

# renovate: datasource=npm
RUN install-npm corepack 0.24.0
RUN corepack -v && corepack enable && yarn -v

# renovate: datasource=java-version packageName=java-jre
RUN install-tool java 17.0.9+9.1

# renovate: datasource=github-releases packageName=facebook/zstd
RUN install-tool zstd v1.5.5

# renovate: datasource=github-releases packageName=minio/mc
RUN install-tool minio-client RELEASE.2023-12-29T20-15-29Z

# install last to get latest vs updates
ARG VS_DOTNET_VERSIONS="6.0;8.0"
RUN install-tool vs-tools
