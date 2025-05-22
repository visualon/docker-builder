# escape=`

# Use the latest buildpack.
FROM ghcr.io/visualon/buildpack:9.0.23@sha256:384d432a61d4b0639d2e08a5bfdb1230cac720c866e71f22dfe0c78c7e7c6fed

LABEL `
  org.opencontainers.image.source="https://github.com/visualon/docker-builder" `
  org.opencontainers.image.url="https://github.com/visualon/docker-builder"

ENV DOTNET_CLI_UI_LANGUAGE=en-us

COPY src\ c:\

# required for jenkins
RUN prepare-user 'jenkins-slave$'
RUN git config --system safe.directory "*"

# renovate: datasource=github-releases packageName=PowerShell/PowerShell
RUN install-tool powershell v7.5.1

# renovate: datasource=node
RUN install-tool node 22.15.1

# renovate: datasource=npm
RUN install-npm pnpm 10.11.0

# renovate: datasource=java-version packageName=java-jre
RUN install-tool java 21.0.7+6.0.LTS

# renovate: datasource=github-releases packageName=facebook/zstd
RUN install-tool zstd v1.5.7

# renovate: datasource=github-releases packageName=minio/mc
RUN install-tool minio-client RELEASE.2024-07-26T13-08-44Z

# install last to get latest vs updates
ARG VS_DOTNET_VERSIONS="8.0;9.0"
RUN install-tool vs-tools
