FROM ghcr.io/visualon/buildpack:4.2.18@sha256:ef2338a33578ff7ed0ce65f2e21b95f97503588beaa988dc0539a0ee80a4b88c

LABEL \
  org.opencontainers.image.source="https://github.com/visualon/docker-builder" \
  org.opencontainers.image.url="https://github.com/visualon/docker-builder"

# .NET SDK MSBuild requires US.UTF-8 locale to execute tasks
# https://github.com/dotnet/msbuild/issues/4194
RUN set -ex; install-apt locales; locale-gen en_US.UTF-8

ENV DOTNET_CLI_UI_LANGUAGE=en-us

# renovate: datasource=github-releases packageName=moby/moby
RUN install-tool docker v24.0.7

# renovate: datasource=github-releases packageName=PowerShell/PowerShell
RUN install-tool powershell v7.4.0

# renovate: datasource=dotnet packageName=dotnet-sdk
RUN install-tool dotnet 6.0.417

# renovate: datasource=dotnet packageName=dotnet-sdk
RUN install-tool dotnet 8.0.100

# renovate: datasource=node
RUN install-tool node 20.10.0

# renovate: datasource=npm
RUN install-tool corepack 0.23.0

# renovate: datasource=github-releases packageName=docker/compose
RUN install-tool docker-compose v2.23.3

# renovate: datasource=docker packageName=hashicorp/terraform versioning=docker
#RUN install-tool terraform 0.14.7

# renovate: datasource=github-releases packageName=kubernetes/kubernetes
RUN install-tool kubectl v1.28.4

# renovate: datasource=github-releases packageName=docker/buildx
RUN install-tool buildx v0.12.0

# renovate: datasource=github-releases packageName=kubernetes-sigs/kustomize
RUN install-tool kustomize 5.2.1

# renovate: datasource=github-releases packageName=visualon/skopeo-prebuild
RUN install-tool skopeo 1.14.0

# renovate: datasource=java-version packageName=java-jre
RUN install-tool java 17.0.9+9

RUN install-apt zstd

# renovate: datasource=github-releases packageName=minio/mc
RUN install-tool minio-client RELEASE.2023-12-02T11-24-10Z
