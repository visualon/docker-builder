# escape=`

# Use the latest buildpack.
FROM ghcr.io/visualon/buildpack:9.0.0@sha256:6514c7879a51029b229696af42bf6199dd0beeeea0e4df52e0953302ccdaba18

LABEL `
  org.opencontainers.image.source="https://github.com/visualon/docker-builder" `
  org.opencontainers.image.url="https://github.com/visualon/docker-builder"

ENV DOTNET_CLI_UI_LANGUAGE=en-us

COPY src\ c:\

# required for jenkins
RUN prepare-user 'jenkins-slave$'
RUN git config --system safe.directory "*"

# renovate: datasource=github-releases packageName=PowerShell/PowerShell
RUN install-tool powershell v7.5.0

# renovate: datasource=node
RUN install-tool node 22.14.0

# renovate: datasource=npm
RUN install-npm pnpm 10.7.0

# renovate: datasource=java-version packageName=java-jre
RUN install-tool java 21.0.6+7.0.LTS

# renovate: datasource=github-releases packageName=facebook/zstd
RUN install-tool zstd v1.5.7

# renovate: datasource=github-releases packageName=minio/mc
RUN install-tool minio-client RELEASE.2024-07-26T13-08-44Z

# install last to get latest vs updates
ARG VS_DOTNET_VERSIONS="8.0;9.0"
RUN install-tool vs-tools
