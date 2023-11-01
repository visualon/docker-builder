# escape=`

# Use the latest buildpack.
FROM ghcr.io/visualon/buildpack:4.1.97@sha256:400c2ad0d0ad4f5a74d0cd3268ef83e67ad79e20394bf35e6754f36d99d034ab

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
RUN install-tool minio-client RELEASE.2023-10-30T18-43-32Z

# install last to get latest vs updates
RUN install-tool vs-tools
