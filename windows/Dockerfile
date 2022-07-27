# escape=`

# Use the latest buildpack.
FROM ghcr.io/visualon/buildpack:2.4.11@sha256:f272d91d519ef6569c619cde649c2904859db3b7d5afc5c6531d7c56370cafcd

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
RUN install-npm corepack 0.12.1
RUN corepack -v && corepack enable && yarn -v

# renovate: datasource=adoptium-java lookupName=java-jre
RUN install-tool java 11.0.16+8

# renovate: datasource=github-releases lookupName=facebook/zstd
RUN install-tool zstd 1.5.2

# renovate: datasource=github-releases lookupName=minio/mc
RUN install-tool minio-client RELEASE.2022-07-24T02-25-13Z

# install last to get latest vs updates
RUN install-tool vs-tools
