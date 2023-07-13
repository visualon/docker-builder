# escape=`

# Use the latest buildpack.
FROM ghcr.io/visualon/buildpack:4.1.23@sha256:78a716e4b5411dcfa1d92e341553f47aea91e3ad106b176348fe99b743596c4d

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
RUN install-tool minio-client RELEASE.2023-07-11T23-30-44Z

# install last to get latest vs updates
RUN install-tool vs-tools
