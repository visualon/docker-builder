# escape=`

# Use the latest buildpack.
FROM ghcr.io/visualon/buildpack:2.3.4@sha256:aab53ceef45712800b29a43ee914a00592a56b5ddd6127359a0825fca1b2d102

LABEL `
  org.opencontainers.image.source="https://github.com/visualon/docker-builder" `
  org.opencontainers.image.url="https://github.com/visualon/docker-builder"


COPY src\ c:\

# required for jenkins
RUN prepare-user 'jenkins-slave$'
RUN git config --system safe.directory "*"

# renovate: datasource=github-releases lookupName=PowerShell/PowerShell
RUN install-tool powershell v7.2.4

# renovate: datasource=github-releases lookupName=nodejs/node versioning=node
RUN install-tool node 16.15.1

# renovate: datasource=npm
RUN install-npm corepack 0.10.0
RUN corepack -v && corepack enable && yarn -v

# renovate: datasource=adoptium-java lookupName=java-jre
RUN install-tool java 11.0.15+10

# renovate: datasource=github-releases lookupName=facebook/zstd
RUN install-tool zstd 1.5.2

# renovate: datasource=github-releases lookupName=minio/mc
RUN install-tool minio-client RELEASE.2022-05-09T04-08-26Z

# install last to get latest vs updates
RUN install-tool vs-tools
