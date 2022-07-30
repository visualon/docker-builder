FROM ghcr.io/visualon/buildpack:2.4.12@sha256:e995662fc67ab0f68e587fdcbf54bad94b9e5e23cb80e5ffc7645ea6f9508145

LABEL \
  org.opencontainers.image.source="https://github.com/visualon/docker-builder" \
  org.opencontainers.image.url="https://github.com/visualon/docker-builder"

# .NET SDK MSBuild requires US.UTF-8 locale to execute tasks
# https://github.com/dotnet/msbuild/issues/4194
RUN set -ex; install-apt locales; locale-gen en_US.UTF-8

ENV DOTNET_CLI_UI_LANGUAGE=en-us

# renovate: datasource=github-releases lookupName=moby/moby
RUN install-tool docker v20.10.17

# renovate: datasource=github-releases lookupName=PowerShell/PowerShell
RUN install-tool powershell v7.2.5

# renovate: datasource=docker lookupName=mcr.microsoft.com/dotnet/sdk versioning=docker
RUN install-tool dotnet 3.1.421

# renovate: datasource=docker lookupName=mcr.microsoft.com/dotnet/sdk versioning=docker
RUN install-tool dotnet 5.0.408

# renovate: datasource=docker lookupName=mcr.microsoft.com/dotnet/sdk versioning=docker
RUN install-tool dotnet 6.0.302

# renovate: datasource=github-releases lookupName=nodejs/node versioning=node
RUN install-tool node 16.16.0

# renovate: datasource=npm
RUN install-tool corepack 0.12.1

# renovate: datasource=github-releases lookupName=docker/compose
RUN install-tool docker-compose v2.7.0

# renovate: datasource=docker lookupName=hashicorp/terraform versioning=docker
#RUN install-tool terraform 0.14.7

# renovate: datasource=github-tags lookupName=kubernetes/kubectl
RUN install-tool kubectl 1.20.1

# renovate: datasource=github-releases lookupName=docker/buildx
RUN install-tool buildx v0.8.2

# renovate: datasource=github-releases lookupName=kubernetes-sigs/kustomize
RUN install-tool kustomize 4.0.4

# renovate: datasource=github-releases lookupName=visualon/skopeo-prebuild
RUN install-tool skopeo 1.9.1

# renovate: datasource=adoptium-java lookupName=java-jre
RUN install-tool java 11.0.16+8

RUN install-apt zstd

# renovate: datasource=github-releases lookupName=minio/mc
RUN install-tool minio-client RELEASE.2022-07-29T19-17-16Z
