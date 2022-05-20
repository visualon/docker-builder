# escape=`

# Use the latest buildpack.
FROM ghcr.io/visualon/buildpack:2.3.0@sha256:f58d4a3c619b0f10747d3a753b01563ffec39af95a63be28263035cf4700b4df

LABEL `
  org.opencontainers.image.source="https://github.com/visualon/docker-builder" `
  org.opencontainers.image.url="https://github.com/visualon/docker-builder"


COPY src\ c:\

# required for jenkins
RUN prepare-user 'jenkins-slave$'
RUN git config --system safe.directory "*"

# renovate: datasource=github-releases lookupName=PowerShell/PowerShell
RUN install-tool powershell v7.2.4

# renovate: datasource=github-releases lookupName=nodejs/node versioning=node
RUN install-tool node 16.15.0

# renovate: datasource=npm
RUN install-npm corepack 0.10.0
RUN corepack -v && corepack enable && yarn -v

# renovate: datasource=adoptium-java lookupName=java-jre
RUN install-tool java 11.0.15+10

# install last to get latest vs updates
RUN install-tool vs-tools
