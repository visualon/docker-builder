# escape=`

# Use the latest buildpack.
FROM ghcr.io/visualon/buildpack:9.0.42@sha256:8bc8a7718b0ba9694dc289a348ad6bb96550985b55f9e2427b40d53111649ec4

LABEL `
  org.opencontainers.image.source="https://github.com/visualon/docker-builder" `
  org.opencontainers.image.url="https://github.com/visualon/docker-builder"

ENV DOTNET_CLI_UI_LANGUAGE=en-us

COPY src\ c:\

# required for jenkins
RUN prepare-user 'jenkins-slave$'
RUN git config --system safe.directory "*"

# renovate: datasource=github-releases packageName=PowerShell/PowerShell
RUN install-tool powershell v7.5.2

# renovate: datasource=node
RUN install-tool node 22.17.0

# renovate: datasource=npm
RUN install-npm pnpm 10.12.4

# renovate: datasource=java-version packageName=java-jre
RUN install-tool java 21.0.7+6.0.LTS

# renovate: datasource=github-releases packageName=facebook/zstd
RUN install-tool zstd v1.5.7

# renovate: datasource=github-releases packageName=minio/mc
RUN install-tool minio-client RELEASE.2024-07-26T13-08-44Z

# install last to get latest vs updates
ARG VS_DOTNET_VERSIONS="8.0;9.0"
RUN install-tool vs-tools
