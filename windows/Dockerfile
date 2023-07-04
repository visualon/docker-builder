# escape=`

# Use the latest buildpack.
FROM ghcr.io/visualon/buildpack:4.1.10@sha256:fed9078619d6686e3a95e4ff919f8b99bafa1f49ab6f2f47f97a685ed597bca1

LABEL `
  org.opencontainers.image.source="https://github.com/visualon/docker-builder" `
  org.opencontainers.image.url="https://github.com/visualon/docker-builder"

ENV DOTNET_CLI_UI_LANGUAGE=en-us

COPY src\ c:\

# required for jenkins
RUN prepare-user 'jenkins-slave$'
RUN git config --system safe.directory "*"

# renovate: datasource=github-releases packageName=PowerShell/PowerShell
RUN install-tool powershell v7.3.5

# renovate: datasource=node
RUN install-tool node 18.16.1

# renovate: datasource=npm
RUN install-npm corepack 0.19.0
RUN corepack -v && corepack enable && yarn -v

# renovate: datasource=adoptium-java packageName=java-jre
RUN install-tool java 11.0.19+7

# renovate: datasource=github-releases packageName=facebook/zstd
RUN install-tool zstd v1.5.5

# renovate: datasource=github-releases packageName=minio/mc
RUN install-tool minio-client RELEASE.2023-06-28T21-54-17Z

# install last to get latest vs updates
RUN install-tool vs-tools
