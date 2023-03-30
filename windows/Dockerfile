# escape=`

# Use the latest buildpack.
FROM ghcr.io/visualon/buildpack:3.5.2@sha256:44a530f39920fad19310992762689325458d6162de22ae3a1ec794197d4233ff

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
RUN install-tool minio-client RELEASE.2023-03-23T20-03-04Z

# install last to get latest vs updates
RUN install-tool vs-tools
