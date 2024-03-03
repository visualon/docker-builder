# escape=`

# Use the latest buildpack.
FROM ghcr.io/visualon/buildpack:5.0.13@sha256:78c71cf50486ff4e7e99c65b7494de4ed354c59c463dbb803221a665554f3cd9

LABEL `
  org.opencontainers.image.source="https://github.com/visualon/docker-builder" `
  org.opencontainers.image.url="https://github.com/visualon/docker-builder"

ENV DOTNET_CLI_UI_LANGUAGE=en-us

COPY src\ c:\

# required for jenkins
RUN prepare-user 'jenkins-slave$'
RUN git config --system safe.directory "*"

# renovate: datasource=github-releases packageName=PowerShell/PowerShell
RUN install-tool powershell v7.4.1

# renovate: datasource=node
RUN install-tool node 20.11.1

# renovate: datasource=npm
RUN install-npm corepack 0.25.2
RUN corepack -v && corepack enable && yarn -v

# renovate: datasource=java-version packageName=java-jre
RUN install-tool java 17.0.9+9.1

# renovate: datasource=github-releases packageName=facebook/zstd
RUN install-tool zstd v1.5.5

# renovate: datasource=github-releases packageName=minio/mc
RUN install-tool minio-client RELEASE.2024-02-24T01-33-20Z

# install last to get latest vs updates
ARG VS_DOTNET_VERSIONS="6.0;8.0"
RUN install-tool vs-tools
