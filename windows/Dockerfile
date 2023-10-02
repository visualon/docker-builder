# escape=`

# Use the latest buildpack.
FROM ghcr.io/visualon/buildpack:4.1.79@sha256:432d941048823b1a364d2797e543bbdd575f23e88ba5d331404ba07a25be1e59

LABEL `
  org.opencontainers.image.source="https://github.com/visualon/docker-builder" `
  org.opencontainers.image.url="https://github.com/visualon/docker-builder"

ENV DOTNET_CLI_UI_LANGUAGE=en-us

COPY src\ c:\

# required for jenkins
RUN prepare-user 'jenkins-slave$'
RUN git config --system safe.directory "*"

# renovate: datasource=github-releases packageName=PowerShell/PowerShell
RUN install-tool powershell v7.3.7

# renovate: datasource=node
RUN install-tool node 18.18.0

# renovate: datasource=npm
RUN install-npm corepack 0.20.0
RUN corepack -v && corepack enable && yarn -v

# renovate: datasource=adoptium-java packageName=java-jre
RUN install-tool java 11.0.20+101

# renovate: datasource=github-releases packageName=facebook/zstd
RUN install-tool zstd v1.5.5

# renovate: datasource=github-releases packageName=minio/mc
RUN install-tool minio-client RELEASE.2023-09-29T16-41-22Z

# install last to get latest vs updates
RUN install-tool vs-tools
