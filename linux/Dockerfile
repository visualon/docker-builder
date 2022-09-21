FROM ghcr.io/visualon/buildpack:2.4.27@sha256:2c2b03f1740bdb603388e51ddf6a81f6d7d30cd0e98946c5e78be99319d271bd

LABEL \
  org.opencontainers.image.source="https://github.com/visualon/docker-builder" \
  org.opencontainers.image.url="https://github.com/visualon/docker-builder"

# .NET SDK MSBuild requires US.UTF-8 locale to execute tasks
# https://github.com/dotnet/msbuild/issues/4194
RUN set -ex; install-apt locales; locale-gen en_US.UTF-8

ENV DOTNET_CLI_UI_LANGUAGE=en-us

# renovate: datasource=github-releases lookupName=moby/moby
RUN install-tool docker v20.10.18

# renovate: datasource=github-releases lookupName=PowerShell/PowerShell
RUN install-tool powershell v7.2.6

# renovate: datasource=docker lookupName=mcr.microsoft.com/dotnet/sdk versioning=docker
RUN install-tool dotnet 3.1.423

# renovate: datasource=docker lookupName=mcr.microsoft.com/dotnet/sdk versioning=docker
RUN install-tool dotnet 5.0.408

# renovate: datasource=docker lookupName=mcr.microsoft.com/dotnet/sdk versioning=docker
RUN install-tool dotnet 6.0.401

# renovate: datasource=github-releases lookupName=nodejs/node versioning=node
RUN install-tool node 16.17.0

# renovate: datasource=npm
RUN install-tool corepack 0.14.1

# renovate: datasource=github-releases lookupName=docker/compose
RUN install-tool docker-compose v2.11.1

# renovate: datasource=docker lookupName=hashicorp/terraform versioning=docker
#RUN install-tool terraform 0.14.7

# renovate: datasource=github-tags lookupName=kubernetes/kubectl
RUN install-tool kubectl 1.20.1

# renovate: datasource=github-releases lookupName=docker/buildx
RUN install-tool buildx v0.9.1

# renovate: datasource=github-releases lookupName=kubernetes-sigs/kustomize
RUN install-tool kustomize 4.0.4

# renovate: datasource=github-releases lookupName=visualon/skopeo-prebuild
RUN install-tool skopeo 1.9.2

# renovate: datasource=adoptium-java lookupName=java-jre
RUN install-tool java 11.0.16+8

RUN install-apt zstd

# renovate: datasource=github-releases lookupName=minio/mc
RUN install-tool minio-client RELEASE.2022-09-16T09-16-47Z
