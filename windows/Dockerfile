# escape=`

# Use the latest buildpack.
FROM ghcr.io/visualon/buildpack:4.1.1@sha256:e471bf9b83a7603d06f3e0947c973aae7faf5e3ca37fb8991089550c98ff910c

LABEL `
  org.opencontainers.image.source="https://github.com/visualon/docker-builder" `
  org.opencontainers.image.url="https://github.com/visualon/docker-builder"

ENV DOTNET_CLI_UI_LANGUAGE=en-us

COPY src\ c:\

# required for jenkins
RUN prepare-user 'jenkins-slave$'
RUN git config --system safe.directory "*"

# renovate: datasource=github-releases packageName=PowerShell/PowerShell
RUN install-tool powershell v7.3.4

# renovate: datasource=node
RUN install-tool node 18.16.0

# renovate: datasource=npm
RUN install-npm corepack 0.18.1
RUN corepack -v && corepack enable && yarn -v

# renovate: datasource=adoptium-java packageName=java-jre
RUN install-tool java 11.0.19+7

# renovate: datasource=github-releases packageName=facebook/zstd
RUN install-tool zstd v1.5.5

# renovate: datasource=github-releases packageName=minio/mc
RUN install-tool minio-client RELEASE.2023-06-15T15-08-26Z

# install last to get latest vs updates
RUN install-tool vs-tools
