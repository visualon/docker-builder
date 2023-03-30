# escape=`

# Use the latest buildpack.
FROM ghcr.io/visualon/buildpack:3.4.0@sha256:c9aeee3cdcda7cb6ab4c9bd23095958efef7a1cac3953afd3e93ee1f5e66a1fe

LABEL `
  org.opencontainers.image.source="https://github.com/visualon/docker-builder" `
  org.opencontainers.image.url="https://github.com/visualon/docker-builder"

ENV DOTNET_CLI_UI_LANGUAGE=en-us

COPY src\ c:\

# required for jenkins
RUN prepare-user 'jenkins-slave$'
RUN git config --system safe.directory "*"

# renovate: datasource=github-releases packageName=PowerShell/PowerShell
RUN install-tool powershell v7.3.3

# renovate: datasource=node
RUN install-tool node 18.15.0

# renovate: datasource=npm
RUN install-npm corepack 0.17.1
RUN corepack -v && corepack enable && yarn -v

# renovate: datasource=adoptium-java packageName=java-jre
RUN install-tool java 11.0.18+10

# renovate: datasource=github-releases packageName=facebook/zstd
RUN install-tool zstd v1.5.4

# renovate: datasource=github-releases packageName=minio/mc
RUN install-tool minio-client RELEASE.2022-12-24T15-21-38Z

# install last to get latest vs updates
RUN install-tool vs-tools
