# escape=`

# Use the latest buildpack.
FROM ghcr.io/visualon/buildpack:3.0.4@sha256:7a41c114fb6bee7d74a2e2102ad855c783e92b395cb71595a4fc563cae12c4e0

LABEL `
  org.opencontainers.image.source="https://github.com/visualon/docker-builder" `
  org.opencontainers.image.url="https://github.com/visualon/docker-builder"

ENV DOTNET_CLI_UI_LANGUAGE=en-us

COPY src\ c:\

# required for jenkins
RUN prepare-user 'jenkins-slave$'
RUN git config --system safe.directory "*"

# renovate: datasource=github-releases lookupName=PowerShell/PowerShell
RUN install-tool powershell v7.2.7

# renovate: datasource=github-releases lookupName=nodejs/node versioning=node
RUN install-tool node 18.12.1

# renovate: datasource=npm
RUN install-npm corepack 0.15.2
RUN corepack -v && corepack enable && yarn -v

# renovate: datasource=adoptium-java lookupName=java-jre
RUN install-tool java 11.0.17+8

# renovate: datasource=github-releases lookupName=facebook/zstd
RUN install-tool zstd 1.5.2

# renovate: datasource=github-releases lookupName=minio/mc
RUN install-tool minio-client RELEASE.2022-12-02T23-48-47Z

# install last to get latest vs updates
RUN install-tool vs-tools
