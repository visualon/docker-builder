# escape=`

# Use the latest buildpack.
FROM ghcr.io/visualon/buildpack:3.5.15@sha256:2fea6b088d08cb7bb098563be39270fb0866ed1060be29709403f07c9e03aee1

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
RUN install-tool java 11.0.19+7

# renovate: datasource=github-releases packageName=facebook/zstd
RUN install-tool zstd v1.5.5

# renovate: datasource=github-releases packageName=minio/mc
RUN install-tool minio-client RELEASE.2023-04-12T02-21-51Z

# install last to get latest vs updates
RUN install-tool vs-tools
