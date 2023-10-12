# escape=`

# Use the latest buildpack.
FROM ghcr.io/visualon/buildpack:4.1.86@sha256:0840a2474ae97df5105c0e0ac4ee71dcc3bf336309776f722dcc3f4d81c85a06

LABEL `
  org.opencontainers.image.source="https://github.com/visualon/docker-builder" `
  org.opencontainers.image.url="https://github.com/visualon/docker-builder"

ENV DOTNET_CLI_UI_LANGUAGE=en-us

COPY src\ c:\

# required for jenkins
RUN prepare-user 'jenkins-slave$'
RUN git config --system safe.directory "*"

# renovate: datasource=github-releases packageName=PowerShell/PowerShell
RUN install-tool powershell v7.3.7

# renovate: datasource=node
RUN install-tool node 18.18.1

# renovate: datasource=npm
RUN install-npm corepack 0.20.0
RUN corepack -v && corepack enable && yarn -v

# renovate: datasource=adoptium-java packageName=java-jre
RUN install-tool java 11.0.20+101

# renovate: datasource=github-releases packageName=facebook/zstd
RUN install-tool zstd v1.5.5

# renovate: datasource=github-releases packageName=minio/mc
RUN install-tool minio-client RELEASE.2023-10-04T06-52-56Z

# install last to get latest vs updates
RUN install-tool vs-tools
