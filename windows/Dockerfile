# escape=`

# Use the latest buildpack.
FROM ghcr.io/visualon/buildpack:2.4.21@sha256:03da7fa1355036be5c7d778227e03d3ca292cc5d80e826facd9d89fd556a70cc

LABEL `
  org.opencontainers.image.source="https://github.com/visualon/docker-builder" `
  org.opencontainers.image.url="https://github.com/visualon/docker-builder"

ENV DOTNET_CLI_UI_LANGUAGE=en-us

COPY src\ c:\

# required for jenkins
RUN prepare-user 'jenkins-slave$'
RUN git config --system safe.directory "*"

# renovate: datasource=github-releases lookupName=PowerShell/PowerShell
RUN install-tool powershell v7.2.6

# renovate: datasource=github-releases lookupName=nodejs/node versioning=node
RUN install-tool node 16.17.0

# renovate: datasource=npm
RUN install-npm corepack 0.13.0
RUN corepack -v && corepack enable && yarn -v

# renovate: datasource=adoptium-java lookupName=java-jre
RUN install-tool java 11.0.16+8

# renovate: datasource=github-releases lookupName=facebook/zstd
RUN install-tool zstd 1.5.2

# renovate: datasource=github-releases lookupName=minio/mc
RUN install-tool minio-client RELEASE.2022-08-28T20-08-11Z

# install last to get latest vs updates
RUN install-tool vs-tools
