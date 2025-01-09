# escape=`

# Use the latest buildpack.
FROM ghcr.io/visualon/buildpack:8.1.6@sha256:c76c857924aa753bbb5b1b5975c99d3d6f3dfecb9fffccc7b622534099d93199

LABEL `
  org.opencontainers.image.source="https://github.com/visualon/docker-builder" `
  org.opencontainers.image.url="https://github.com/visualon/docker-builder"

ENV DOTNET_CLI_UI_LANGUAGE=en-us

COPY src\ c:\

# required for jenkins
RUN prepare-user 'jenkins-slave$'
RUN git config --system safe.directory "*"

# renovate: datasource=github-releases packageName=PowerShell/PowerShell
RUN install-tool powershell v7.4.6

# renovate: datasource=node
RUN install-tool node 22.13.0

# renovate: datasource=npm
RUN install-npm pnpm 9.15.3

# renovate: datasource=java-version packageName=java-jre
RUN install-tool java 21.0.5+11.0.LTS

# renovate: datasource=github-releases packageName=facebook/zstd
RUN install-tool zstd v1.5.6

# renovate: datasource=github-releases packageName=minio/mc
RUN install-tool minio-client RELEASE.2024-07-26T13-08-44Z

# install last to get latest vs updates
ARG VS_DOTNET_VERSIONS="6.0;8.0;9.0"
RUN install-tool vs-tools
