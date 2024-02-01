FROM ghcr.io/visualon/buildpack:4.2.39@sha256:e800b1f516a402ca85fc079742d139ff96c5bcb610912890f7d6422e2fa257c3

LABEL \
  org.opencontainers.image.source="https://github.com/visualon/docker-builder" \
  org.opencontainers.image.url="https://github.com/visualon/docker-builder"

# .NET SDK MSBuild requires US.UTF-8 locale to execute tasks
# https://github.com/dotnet/msbuild/issues/4194
RUN set -ex; install-apt locales; locale-gen en_US.UTF-8

ENV DOTNET_CLI_UI_LANGUAGE=en-us

# renovate: datasource=github-releases packageName=moby/moby
RUN install-tool docker v24.0.8

# renovate: datasource=github-releases packageName=PowerShell/PowerShell
RUN install-tool powershell v7.4.1

# renovate: datasource=dotnet packageName=dotnet-sdk
RUN install-tool dotnet 6.0.418

# renovate: datasource=dotnet packageName=dotnet-sdk
RUN install-tool dotnet 8.0.101

# renovate: datasource=node
RUN install-tool node 20.11.0

# renovate: datasource=npm
RUN install-tool corepack 0.24.1

# renovate: datasource=github-releases packageName=docker/compose
RUN install-tool docker-compose v2.24.5

# renovate: datasource=docker packageName=hashicorp/terraform versioning=docker
#RUN install-tool terraform 0.14.7

# renovate: datasource=github-releases packageName=fluxcd/flux2
RUN install-tool flux v2.2.2

# renovate: datasource=github-releases packageName=kubernetes/kubernetes
RUN install-tool kubectl v1.29.1

# renovate: datasource=github-releases packageName=docker/buildx
RUN install-tool buildx v0.12.1

# renovate: datasource=github-releases packageName=kubernetes-sigs/kustomize
RUN install-tool kustomize 5.3.0

# renovate: datasource=github-releases packageName=visualon/skopeo-prebuild
RUN install-tool skopeo 1.14.1

# renovate: datasource=java-version packageName=java-jre
RUN install-tool java 17.0.10+7

RUN install-apt zstd

# renovate: datasource=github-releases packageName=minio/mc
RUN install-tool minio-client RELEASE.2023-12-29T20-15-29Z
