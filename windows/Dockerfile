# escape=`

# Use the latest buildpack.
FROM ghcr.io/visualon/buildpack:11.2.49@sha256:bf510ddd27c9e337daaa5a6d0760bd3db1985b4cf670c633272b535e82db617c

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
