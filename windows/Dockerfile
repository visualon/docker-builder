# escape=`

# Use the latest buildpack.
FROM ghcr.io/visualon/buildpack:2.4.2@sha256:9c94c88a02480018a39233e149ec576c3f5f2d97ba75d3c9c6c92b607ac81aa3

LABEL `
  org.opencontainers.image.source="https://github.com/visualon/docker-builder" `
  org.opencontainers.image.url="https://github.com/visualon/docker-builder"


COPY src\ c:\

# required for jenkins
RUN prepare-user 'jenkins-slave$'
RUN git config --system safe.directory "*"

# renovate: datasource=github-releases lookupName=PowerShell/PowerShell
RUN install-tool powershell v7.2.5

# renovate: datasource=github-releases lookupName=nodejs/node versioning=node
RUN install-tool node 16.15.1

# renovate: datasource=npm
RUN install-npm corepack 0.11.2
RUN corepack -v && corepack enable && yarn -v

# renovate: datasource=adoptium-java lookupName=java-jre
RUN install-tool java 11.0.15+10

# renovate: datasource=github-releases lookupName=facebook/zstd
RUN install-tool zstd 1.5.2

# renovate: datasource=github-releases lookupName=minio/mc
RUN install-tool minio-client RELEASE.2022-05-09T04-08-26Z

# install last to get latest vs updates
RUN install-tool vs-tools
