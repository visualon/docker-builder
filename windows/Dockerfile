# escape=`

# Use the latest buildpack.
FROM ghcr.io/visualon/buildpack:2.4.20@sha256:1d1122322bd9e7031c26b5c258b8516f9033cb57b5edf991201d21f12328e9b0

LABEL `
  org.opencontainers.image.source="https://github.com/visualon/docker-builder" `
  org.opencontainers.image.url="https://github.com/visualon/docker-builder"

ENV DOTNET_CLI_UI_LANGUAGE=en-us

COPY src\ c:\

# required for jenkins
RUN prepare-user 'jenkins-slave$'
RUN git config --system safe.directory "*"

# renovate: datasource=github-releases lookupName=PowerShell/PowerShell
RUN install-tool powershell v7.2.6

# renovate: datasource=github-releases lookupName=nodejs/node versioning=node
RUN install-tool node 16.17.0

# renovate: datasource=npm
RUN install-npm corepack 0.13.0
RUN corepack -v && corepack enable && yarn -v

# renovate: datasource=adoptium-java lookupName=java-jre
RUN install-tool java 11.0.16+8

# renovate: datasource=github-releases lookupName=facebook/zstd
RUN install-tool zstd 1.5.2

# renovate: datasource=github-releases lookupName=minio/mc
RUN install-tool minio-client RELEASE.2022-08-23T05-45-20Z

# install last to get latest vs updates
RUN install-tool vs-tools
