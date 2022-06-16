FROM ghcr.io/visualon/buildpack:2.3.5@sha256:0845f2be4d5001a7ee386886b51ecd60d67d8e33769d7122e98b4490556d04f7

LABEL \
  org.opencontainers.image.source="https://github.com/visualon/docker-builder" \
  org.opencontainers.image.url="https://github.com/visualon/docker-builder"

# renovate: datasource=github-releases lookupName=moby/moby
RUN install-tool docker v20.10.17

# renovate: datasource=github-releases lookupName=PowerShell/PowerShell
RUN install-tool powershell v7.2.4

# renovate: datasource=docker lookupName=mcr.microsoft.com/dotnet/sdk versioning=docker
RUN install-tool dotnet 3.1.420

# renovate: datasource=docker lookupName=mcr.microsoft.com/dotnet/sdk versioning=docker
RUN install-tool dotnet 5.0.408

# renovate: datasource=docker lookupName=mcr.microsoft.com/dotnet/sdk versioning=docker
RUN install-tool dotnet 6.0.301

# renovate: datasource=github-releases lookupName=nodejs/node versioning=node
RUN install-tool node 16.15.1

# renovate: datasource=npm
RUN install-tool corepack 0.10.0

# renovate: datasource=github-releases lookupName=docker/compose
RUN install-tool docker-compose 1.29.2

# renovate: datasource=docker lookupName=hashicorp/terraform versioning=docker
#RUN install-tool terraform 0.14.7

# renovate: datasource=github-tags lookupName=kubernetes/kubectl
RUN install-tool kubectl 1.20.1

# renovate: datasource=github-releases lookupName=docker/buildx
RUN install-tool buildx v0.8.2

# renovate: datasource=github-releases lookupName=kubernetes-sigs/kustomize
RUN install-tool kustomize 4.0.4

# renovate: datasource=github-releases lookupName=containers/skopeo
RUN install-tool skopeo v1.8.0

# renovate: datasource=adoptium-java lookupName=java-jre
RUN install-tool java 11.0.15+10

RUN install-apt zstd

# renovate: datasource=github-releases lookupName=minio/mc
RUN install-tool minio-client RELEASE.2022-05-09T04-08-26Z
