# escape=`

# Use the latest buildpack.
FROM ghcr.io/visualon/buildpack:11.2.4@sha256:36b12235d33f79de2afd23c0b9742516504e414fd748d0fc00ec68a00a4596e8

LABEL `
  org.opencontainers.image.source="https://github.com/visualon/docker-builder" `
  org.opencontainers.image.url="https://github.com/visualon/docker-builder"

ENV DOTNET_CLI_UI_LANGUAGE=en-us

COPY src\ c:\

# required for jenkins
RUN prepare-user 'jenkins-slave$'
RUN git config --system safe.directory "*"

# renovate: datasource=github-releases packageName=PowerShell/PowerShell
RUN install-tool powershell v7.6.3

# renovate: datasource=node
RUN install-tool node 24.18.0

# renovate: datasource=npm
RUN install-npm pnpm 11.10.0

# renovate: datasource=java-version packageName=java-jre?os=windows&architecture=x64
RUN install-tool java 21.0.11+10.0.LTS

# renovate: datasource=github-releases packageName=facebook/zstd
RUN install-tool zstd v1.5.7

# renovate: datasource=github-releases packageName=minio/mc
RUN install-tool minio-client RELEASE.2024-07-26T13-08-44Z

# install last to get latest vs updates
ARG VS_DOTNET_VERSIONS="8.0;10.0"
RUN install-tool vs-tools
