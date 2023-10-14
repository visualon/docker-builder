# escape=`

# Use the latest buildpack.
FROM ghcr.io/visualon/buildpack:4.1.92@sha256:c9453e6dacbeada9891f741183083ab68f0ebc1ce8dc2ade337b51b4cecc08d4

LABEL `
  org.opencontainers.image.source="https://github.com/visualon/docker-builder" `
  org.opencontainers.image.url="https://github.com/visualon/docker-builder"

ENV DOTNET_CLI_UI_LANGUAGE=en-us

COPY src\ c:\

# required for jenkins
RUN prepare-user 'jenkins-slave$'
RUN git config --system safe.directory "*"

# renovate: datasource=github-releases packageName=PowerShell/PowerShell
RUN install-tool powershell v7.3.8

# renovate: datasource=node
RUN install-tool node 18.18.2

# renovate: datasource=npm
RUN install-npm corepack 0.21.0
RUN corepack -v && corepack enable && yarn -v

# renovate: datasource=adoptium-java packageName=java-jre
RUN install-tool java 11.0.20+101

# renovate: datasource=github-releases packageName=facebook/zstd
RUN install-tool zstd v1.5.5

# renovate: datasource=github-releases packageName=minio/mc
RUN install-tool minio-client RELEASE.2023-10-14T01-57-03Z

# install last to get latest vs updates
RUN install-tool vs-tools
