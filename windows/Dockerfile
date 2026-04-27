# escape=`

# Use the latest buildpack.
FROM ghcr.io/visualon/buildpack:11.1.63@sha256:89e039a98641b69123ad07bf895bc5b0e8049f0678b219a5686227c3e32f6c50

LABEL `
  org.opencontainers.image.source="https://github.com/visualon/docker-builder" `
  org.opencontainers.image.url="https://github.com/visualon/docker-builder"

ENV DOTNET_CLI_UI_LANGUAGE=en-us

COPY src\ c:\

# required for jenkins
RUN prepare-user 'jenkins-slave$'
RUN git config --system safe.directory "*"

# renovate: datasource=github-releases packageName=PowerShell/PowerShell
RUN install-tool powershell v7.6.1

# renovate: datasource=node
RUN install-tool node 24.15.0

# renovate: datasource=npm
RUN install-npm pnpm 10.33.2

# renovate: datasource=java-version packageName=java-jre?os=windows&architecture=x64
RUN install-tool java 21.0.10+7.0.LTS

# renovate: datasource=github-releases packageName=facebook/zstd
RUN install-tool zstd v1.5.7

# renovate: datasource=github-releases packageName=minio/mc
RUN install-tool minio-client RELEASE.2024-07-26T13-08-44Z

# install last to get latest vs updates
ARG VS_DOTNET_VERSIONS="8.0;9.0;10.0"
RUN install-tool vs-tools
