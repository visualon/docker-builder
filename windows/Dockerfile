# escape=`

# Use the latest buildpack.
FROM ghcr.io/visualon/buildpack:11.2.0@sha256:2db8463336925591d5fe055672f6b8e1f3705339110bca5ced84e554c732978b

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
RUN install-npm pnpm 11.9.0

# renovate: datasource=java-version packageName=java-jre?os=windows&architecture=x64
RUN install-tool java 21.0.11+10.0.LTS

# renovate: datasource=github-releases packageName=facebook/zstd
RUN install-tool zstd v1.5.7

# renovate: datasource=github-releases packageName=minio/mc
RUN install-tool minio-client RELEASE.2024-07-26T13-08-44Z

# install last to get latest vs updates
ARG VS_DOTNET_VERSIONS="8.0;10.0"
RUN install-tool vs-tools
