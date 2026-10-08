# escape=`

# Use the latest buildpack.
FROM ghcr.io/visualon/buildpack:11.2.47@sha256:ef01be319a38380136db698a9ccd2b6a74f070924a6e07561d6516cb164f67fd

LABEL `
  org.opencontainers.image.source="https://github.com/visualon/docker-builder" `
  org.opencontainers.image.url="https://github.com/visualon/docker-builder"

ENV DOTNET_CLI_UI_LANGUAGE=en-us

COPY src\ c:\

# required for jenkins
RUN prepare-user 'jenkins-slave$'
RUN git config --system safe.directory "*"

# renovate: datasource=github-releases packageName=PowerShell/PowerShell
RUN install-tool powershell v7.6.6

# renovate: datasource=node
RUN install-tool node 24.21.0

# renovate: datasource=npm
RUN install-npm pnpm 11.28.4

# renovate: datasource=java-version packageName=java-jre?os=windows&architecture=x64
RUN install-tool java 21.0.12+8.0.LTS

# renovate: datasource=github-releases packageName=facebook/zstd
RUN install-tool zstd v1.5.7

# renovate: datasource=github-releases packageName=minio/mc
RUN install-tool minio-client RELEASE.2024-07-26T13-08-44Z

# install last to get latest vs updates
ARG VS_DOTNET_VERSIONS="8.0;10.0"
RUN install-tool vs-tools
