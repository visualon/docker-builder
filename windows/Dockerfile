# escape=`

# Use the latest buildpack.
FROM ghcr.io/visualon/buildpack:4.1.88@sha256:3738c7bd1997bc6a21fcfa44a3000c1db56722629c06f732f0ba2648a23556f1

LABEL `
  org.opencontainers.image.source="https://github.com/visualon/docker-builder" `
  org.opencontainers.image.url="https://github.com/visualon/docker-builder"

ENV DOTNET_CLI_UI_LANGUAGE=en-us

COPY src\ c:\

# required for jenkins
RUN prepare-user 'jenkins-slave$'
RUN git config --system safe.directory "*"

# renovate: datasource=github-releases packageName=PowerShell/PowerShell
RUN install-tool powershell v7.3.8

# renovate: datasource=node
RUN install-tool node 18.18.1

# renovate: datasource=npm
RUN install-npm corepack 0.21.0
RUN corepack -v && corepack enable && yarn -v

# renovate: datasource=adoptium-java packageName=java-jre
RUN install-tool java 11.0.20+101

# renovate: datasource=github-releases packageName=facebook/zstd
RUN install-tool zstd v1.5.5

# renovate: datasource=github-releases packageName=minio/mc
RUN install-tool minio-client RELEASE.2023-10-04T06-52-56Z

# install last to get latest vs updates
RUN install-tool vs-tools
