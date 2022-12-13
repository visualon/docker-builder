FROM ghcr.io/visualon/buildpack:3.0.5@sha256:16f1d0d3b9204646272b8ad02e85eecafe4daeff381fa7337b31bdde40856091

LABEL \
  org.opencontainers.image.source="https://github.com/visualon/docker-builder" \
  org.opencontainers.image.url="https://github.com/visualon/docker-builder"

# .NET SDK MSBuild requires US.UTF-8 locale to execute tasks
# https://github.com/dotnet/msbuild/issues/4194
RUN set -ex; install-apt locales; locale-gen en_US.UTF-8

ENV DOTNET_CLI_UI_LANGUAGE=en-us

# renovate: datasource=github-releases lookupName=moby/moby
RUN install-tool docker v20.10.21

# renovate: datasource=github-releases lookupName=PowerShell/PowerShell
RUN install-tool powershell v7.3.0

# renovate: datasource=dotnet lookupName=dotnet-sdk
RUN install-tool dotnet 3.1.425

# renovate: datasource=dotnet lookupName=dotnet-sdk
RUN install-tool dotnet 6.0.403

# renovate: datasource=dotnet lookupName=dotnet-sdk
RUN install-tool dotnet 7.0.100

# renovate: datasource=github-releases lookupName=nodejs/node versioning=node
RUN install-tool node 18.12.1

# renovate: datasource=npm
RUN install-tool corepack 0.15.2

# renovate: datasource=github-releases lookupName=docker/compose
RUN install-tool docker-compose v2.14.0

# renovate: datasource=docker lookupName=hashicorp/terraform versioning=docker
#RUN install-tool terraform 0.14.7

# renovate: datasource=github-tags lookupName=kubernetes/kubectl
RUN install-tool kubectl 1.20.1

# renovate: datasource=github-releases lookupName=docker/buildx
RUN install-tool buildx v0.9.1

# renovate: datasource=github-releases lookupName=kubernetes-sigs/kustomize
RUN install-tool kustomize 4.0.4

# renovate: datasource=github-releases lookupName=visualon/skopeo-prebuild
RUN install-tool skopeo 1.10.0

# renovate: datasource=adoptium-java lookupName=java-jre
RUN install-tool java 11.0.17+8

RUN install-apt zstd

# renovate: datasource=github-releases lookupName=minio/mc
RUN install-tool minio-client RELEASE.2022-12-13T00-23-28Z
