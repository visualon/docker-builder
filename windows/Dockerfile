# escape=`

# Use the latest buildpack.
FROM ghcr.io/visualon/buildpack:2.4.14@sha256:24db86c90a1778fb915ea01c8022cbefa3c284de68a69e78e375f1e048c3fc47

LABEL `
  org.opencontainers.image.source="https://github.com/visualon/docker-builder" `
  org.opencontainers.image.url="https://github.com/visualon/docker-builder"

ENV DOTNET_CLI_UI_LANGUAGE=en-us

COPY src\ c:\

# required for jenkins
RUN prepare-user 'jenkins-slave$'
RUN git config --system safe.directory "*"

# renovate: datasource=github-releases lookupName=PowerShell/PowerShell
RUN install-tool powershell v7.2.5

# renovate: datasource=github-releases lookupName=nodejs/node versioning=node
RUN install-tool node 16.16.0

# renovate: datasource=npm
RUN install-npm corepack 0.12.2
RUN corepack -v && corepack enable && yarn -v

# renovate: datasource=adoptium-java lookupName=java-jre
RUN install-tool java 11.0.16+8

# renovate: datasource=github-releases lookupName=facebook/zstd
RUN install-tool zstd 1.5.2

# renovate: datasource=github-releases lookupName=minio/mc
RUN install-tool minio-client RELEASE.2022-07-29T19-17-16Z

# install last to get latest vs updates
RUN install-tool vs-tools
