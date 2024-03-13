# escape=`

# Use the latest buildpack.
FROM ghcr.io/visualon/buildpack:5.0.19@sha256:ccb6797afee7c512b0d4f6a54baf6fdd4282c82e8161749167694a96a36c401b

LABEL `
  org.opencontainers.image.source="https://github.com/visualon/docker-builder" `
  org.opencontainers.image.url="https://github.com/visualon/docker-builder"

ENV DOTNET_CLI_UI_LANGUAGE=en-us

COPY src\ c:\

# required for jenkins
RUN prepare-user 'jenkins-slave$'
RUN git config --system safe.directory "*"

# renovate: datasource=github-releases packageName=PowerShell/PowerShell
RUN install-tool powershell v7.4.1

# renovate: datasource=node
RUN install-tool node 20.11.1

# renovate: datasource=npm
RUN install-npm corepack 0.26.0
RUN corepack -v && corepack enable && yarn -v

# renovate: datasource=java-version packageName=java-jre
RUN install-tool java 17.0.9+9.1

# renovate: datasource=github-releases packageName=facebook/zstd
RUN install-tool zstd v1.5.5

# renovate: datasource=github-releases packageName=minio/mc
RUN install-tool minio-client RELEASE.2024-03-09T06-43-06Z

# install last to get latest vs updates
ARG VS_DOTNET_VERSIONS="6.0;8.0"
RUN install-tool vs-tools
