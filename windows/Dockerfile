# escape=`

# Use the latest buildpack.
FROM ghcr.io/visualon/buildpack:2.4.37@sha256:2d8a203a99ac660870b9fb43d28c0c58301d7daec791f85b2130e85ad317111c

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
RUN install-tool node 16.18.0

# renovate: datasource=npm
RUN install-npm corepack 0.15.1
RUN corepack -v && corepack enable && yarn -v

# renovate: datasource=adoptium-java lookupName=java-jre
RUN install-tool java 11.0.17+8

# renovate: datasource=github-releases lookupName=facebook/zstd
RUN install-tool zstd 1.5.2

# renovate: datasource=github-releases lookupName=minio/mc
RUN install-tool minio-client RELEASE.2022-10-29T10-09-23Z

# install last to get latest vs updates
RUN install-tool vs-tools
