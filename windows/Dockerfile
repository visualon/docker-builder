# escape=`

# Use the latest buildpack.
FROM ghcr.io/visualon/buildpack:4.1.96@sha256:657118d5bf0da169bfa1764d7453990ece146ab128924f58fbc6b83052f6c15a

LABEL `
  org.opencontainers.image.source="https://github.com/visualon/docker-builder" `
  org.opencontainers.image.url="https://github.com/visualon/docker-builder"

ENV DOTNET_CLI_UI_LANGUAGE=en-us

COPY src\ c:\

# required for jenkins
RUN prepare-user 'jenkins-slave$'
RUN git config --system safe.directory "*"

# renovate: datasource=github-releases packageName=PowerShell/PowerShell
RUN install-tool powershell v7.3.9

# renovate: datasource=node
RUN install-tool node 18.18.2

# renovate: datasource=npm
RUN install-npm corepack 0.22.0
RUN corepack -v && corepack enable && yarn -v

# renovate: datasource=adoptium-java packageName=java-jre
RUN install-tool java 11.0.21+9

# renovate: datasource=github-releases packageName=facebook/zstd
RUN install-tool zstd v1.5.5

# renovate: datasource=github-releases packageName=minio/mc
RUN install-tool minio-client RELEASE.2023-10-24T21-42-22Z

# install last to get latest vs updates
RUN install-tool vs-tools
