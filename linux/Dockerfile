FROM ghcr.io/visualon/buildpack:3.2.12@sha256:978fea29d618909e9596820572a9d8edc85d1297d6f73803b3c6111334898501

LABEL \
  org.opencontainers.image.source="https://github.com/visualon/docker-builder" \
  org.opencontainers.image.url="https://github.com/visualon/docker-builder"

# .NET SDK MSBuild requires US.UTF-8 locale to execute tasks
# https://github.com/dotnet/msbuild/issues/4194
RUN set -ex; install-apt locales; locale-gen en_US.UTF-8

ENV DOTNET_CLI_UI_LANGUAGE=en-us

# renovate: datasource=github-releases packageName=moby/moby
RUN install-tool docker v20.10.23

# renovate: datasource=github-releases packageName=PowerShell/PowerShell
RUN install-tool powershell v7.3.2

# renovate: datasource=dotnet packageName=dotnet-sdk
RUN install-tool dotnet 3.1.426

# renovate: datasource=dotnet packageName=dotnet-sdk
RUN install-tool dotnet 6.0.405

# renovate: datasource=dotnet packageName=dotnet-sdk
RUN install-tool dotnet 7.0.200

# renovate: datasource=github-releases packageName=nodejs/node versioning=node
RUN install-tool node 18.14.0

# renovate: datasource=npm
RUN install-tool corepack 0.15.3

# renovate: datasource=github-releases packageName=docker/compose
RUN install-tool docker-compose v2.16.0

# renovate: datasource=docker packageName=hashicorp/terraform versioning=docker
#RUN install-tool terraform 0.14.7

# renovate: datasource=github-tags packageName=kubernetes/kubectl
RUN install-tool kubectl 1.20.1

# renovate: datasource=github-releases packageName=docker/buildx
RUN install-tool buildx v0.10.2

# renovate: datasource=github-releases packageName=kubernetes-sigs/kustomize
RUN install-tool kustomize 4.0.4

# renovate: datasource=github-releases packageName=visualon/skopeo-prebuild
RUN install-tool skopeo 1.10.0

# renovate: datasource=adoptium-java packageName=java-jre
RUN install-tool java 11.0.18+10

RUN install-apt zstd

# renovate: datasource=github-releases packageName=minio/mc
RUN install-tool minio-client RELEASE.2022-12-24T15-21-38Z
