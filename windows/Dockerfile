# escape=`

# Use the latest buildpack.
FROM ghcr.io/visualon/buildpack:9.0.2@sha256:28dfde0c863c7461609535c972b2af4f4464aaa2923cfa9dfc0d9e717a0fb6f0

LABEL `
  org.opencontainers.image.source="https://github.com/visualon/docker-builder" `
  org.opencontainers.image.url="https://github.com/visualon/docker-builder"

ENV DOTNET_CLI_UI_LANGUAGE=en-us

COPY src\ c:\

# required for jenkins
RUN prepare-user 'jenkins-slave$'
RUN git config --system safe.directory "*"

# renovate: datasource=github-releases packageName=PowerShell/PowerShell
RUN install-tool powershell v7.5.0

# renovate: datasource=node
RUN install-tool node 22.14.0

# renovate: datasource=npm
RUN install-npm pnpm 10.7.1

# renovate: datasource=java-version packageName=java-jre
RUN install-tool java 21.0.6+7.0.LTS

# renovate: datasource=github-releases packageName=facebook/zstd
RUN install-tool zstd v1.5.7

# renovate: datasource=github-releases packageName=minio/mc
RUN install-tool minio-client RELEASE.2024-07-26T13-08-44Z

# install last to get latest vs updates
ARG VS_DOTNET_VERSIONS="8.0;9.0"
RUN install-tool vs-tools
