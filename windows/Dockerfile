# escape=`

# Use the latest buildpack.
FROM ghcr.io/visualon/buildpack:4.1.6@sha256:a3275d8dd976c3467af0c87aa23004f1e6ba8d90e2edb03b0d693d00248c3d6a

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
RUN install-tool node 18.16.1

# renovate: datasource=npm
RUN install-npm corepack 0.18.1
RUN corepack -v && corepack enable && yarn -v

# renovate: datasource=adoptium-java packageName=java-jre
RUN install-tool java 11.0.19+7

# renovate: datasource=github-releases packageName=facebook/zstd
RUN install-tool zstd v1.5.5

# renovate: datasource=github-releases packageName=minio/mc
RUN install-tool minio-client RELEASE.2023-06-23T18-12-07Z

# install last to get latest vs updates
RUN install-tool vs-tools
