# escape=`

# Use the latest buildpack.
FROM ghcr.io/visualon/buildpack:3.5.10@sha256:de4441669053af69e7abb30bd57bec78f48a85afc62640f072743dc66ccf726d

LABEL `
  org.opencontainers.image.source="https://github.com/visualon/docker-builder" `
  org.opencontainers.image.url="https://github.com/visualon/docker-builder"

ENV DOTNET_CLI_UI_LANGUAGE=en-us

COPY src\ c:\

# required for jenkins
RUN prepare-user 'jenkins-slave$'
RUN git config --system safe.directory "*"

# renovate: datasource=github-releases packageName=PowerShell/PowerShell
RUN install-tool powershell v7.3.4

# renovate: datasource=node
RUN install-tool node 18.16.0

# renovate: datasource=npm
RUN install-npm corepack 0.17.2
RUN corepack -v && corepack enable && yarn -v

# renovate: datasource=adoptium-java packageName=java-jre
RUN install-tool java 11.0.18+10

# renovate: datasource=github-releases packageName=facebook/zstd
RUN install-tool zstd v1.5.5

# renovate: datasource=github-releases packageName=minio/mc
RUN install-tool minio-client RELEASE.2023-04-12T02-21-51Z

# install last to get latest vs updates
RUN install-tool vs-tools
