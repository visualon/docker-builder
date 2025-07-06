# escape=`

# Use the latest buildpack.
FROM ghcr.io/visualon/buildpack:9.0.38@sha256:4c7d8997918f9f5627a3bfe3ed1ba30afccf7dcba02987f48d27533704ca8c6b

LABEL `
  org.opencontainers.image.source="https://github.com/visualon/docker-builder" `
  org.opencontainers.image.url="https://github.com/visualon/docker-builder"

ENV DOTNET_CLI_UI_LANGUAGE=en-us

COPY src\ c:\

# required for jenkins
RUN prepare-user 'jenkins-slave$'
RUN git config --system safe.directory "*"

# renovate: datasource=github-releases packageName=PowerShell/PowerShell
RUN install-tool powershell v7.5.2

# renovate: datasource=node
RUN install-tool node 22.17.0

# renovate: datasource=npm
RUN install-npm pnpm 10.12.4

# renovate: datasource=java-version packageName=java-jre
RUN install-tool java 21.0.7+6.0.LTS

# renovate: datasource=github-releases packageName=facebook/zstd
RUN install-tool zstd v1.5.7

# renovate: datasource=github-releases packageName=minio/mc
RUN install-tool minio-client RELEASE.2024-07-26T13-08-44Z

# install last to get latest vs updates
ARG VS_DOTNET_VERSIONS="8.0;9.0"
RUN install-tool vs-tools
