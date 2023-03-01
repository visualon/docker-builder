# escape=`

# Use the latest buildpack.
FROM ghcr.io/visualon/buildpack:3.2.22@sha256:43377427f926b2eed21d094fc702fc43c84318c8c9859386ec8c5a2a167a81be

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

# renovate: datasource=github-releases packageName=nodejs/node versioning=node
RUN install-tool node 18.14.2

# renovate: datasource=npm
RUN install-npm corepack 0.17.0
RUN corepack -v && corepack enable && yarn -v

# renovate: datasource=adoptium-java packageName=java-jre
RUN install-tool java 11.0.18+10

# renovate: datasource=github-releases packageName=facebook/zstd
RUN install-tool zstd 1.5.2

# renovate: datasource=github-releases packageName=minio/mc
RUN install-tool minio-client RELEASE.2022-12-24T15-21-38Z

# install last to get latest vs updates
RUN install-tool vs-tools
