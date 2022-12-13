# escape=`

# Use the latest buildpack.
FROM ghcr.io/visualon/buildpack:3.0.6@sha256:fad35c2903ce429b444df2583e9d7f3185fc8a57c8d4e843be40df25054e519a

LABEL `
  org.opencontainers.image.source="https://github.com/visualon/docker-builder" `
  org.opencontainers.image.url="https://github.com/visualon/docker-builder"

ENV DOTNET_CLI_UI_LANGUAGE=en-us

COPY src\ c:\

# required for jenkins
RUN prepare-user 'jenkins-slave$'
RUN git config --system safe.directory "*"

# renovate: datasource=github-releases lookupName=PowerShell/PowerShell
RUN install-tool powershell v7.3.0

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
RUN install-tool minio-client RELEASE.2022-12-13T00-23-28Z

# install last to get latest vs updates
RUN install-tool vs-tools
