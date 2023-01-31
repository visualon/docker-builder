# escape=`

# Use the latest buildpack.
FROM ghcr.io/visualon/buildpack:3.2.2@sha256:a651748ef4f32da24ecf6ecb65ac3c05d26d554ab688d0eb8e54ec56ab366e63

LABEL `
  org.opencontainers.image.source="https://github.com/visualon/docker-builder" `
  org.opencontainers.image.url="https://github.com/visualon/docker-builder"

ENV DOTNET_CLI_UI_LANGUAGE=en-us

COPY src\ c:\

# required for jenkins
RUN prepare-user 'jenkins-slave$'
RUN git config --system safe.directory "*"

# renovate: datasource=github-releases packageName=PowerShell/PowerShell
RUN install-tool powershell v7.3.2

# renovate: datasource=github-releases packageName=nodejs/node versioning=node
RUN install-tool node 18.13.0

# renovate: datasource=npm
RUN install-npm corepack 0.15.3
RUN corepack -v && corepack enable && yarn -v

# renovate: datasource=adoptium-java packageName=java-jre
RUN install-tool java 11.0.18+10

# renovate: datasource=github-releases packageName=facebook/zstd
RUN install-tool zstd 1.5.2

# renovate: datasource=github-releases packageName=minio/mc
RUN install-tool minio-client RELEASE.2022-12-24T15-21-38Z

# install last to get latest vs updates
RUN install-tool vs-tools
