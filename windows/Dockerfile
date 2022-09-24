# escape=`

# Use the latest buildpack.
FROM ghcr.io/visualon/buildpack:2.4.27@sha256:2c2b03f1740bdb603388e51ddf6a81f6d7d30cd0e98946c5e78be99319d271bd

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
RUN install-tool node 16.17.1

# renovate: datasource=npm
RUN install-npm corepack 0.14.2
RUN corepack -v && corepack enable && yarn -v

# renovate: datasource=adoptium-java lookupName=java-jre
RUN install-tool java 11.0.16+8

# renovate: datasource=github-releases lookupName=facebook/zstd
RUN install-tool zstd 1.5.2

# renovate: datasource=github-releases lookupName=minio/mc
RUN install-tool minio-client RELEASE.2022-09-16T09-16-47Z

# install last to get latest vs updates
RUN install-tool vs-tools
