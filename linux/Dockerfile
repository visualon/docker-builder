FROM ghcr.io/visualon/buildpack:5.1.23@sha256:3a1f703b9fb68c3354ea625aca04672e23f8179dfc5b4b626891b06c7347bd71

LABEL \
  org.opencontainers.image.source="https://github.com/visualon/docker-builder" \
  org.opencontainers.image.url="https://github.com/visualon/docker-builder"

# .NET SDK MSBuild requires US.UTF-8 locale to execute tasks
# https://github.com/dotnet/msbuild/issues/4194
RUN set -ex; install-apt locales; locale-gen en_US.UTF-8

ENV DOTNET_CLI_UI_LANGUAGE=en-us

# renovate: datasource=github-releases packageName=moby/moby
RUN install-tool docker v25.0.5

# renovate: datasource=github-releases packageName=PowerShell/PowerShell
RUN install-tool powershell v7.4.2

# renovate: datasource=dotnet packageName=dotnet-sdk
RUN install-tool dotnet 6.0.421

# renovate: datasource=dotnet packageName=dotnet-sdk
RUN install-tool dotnet 8.0.204

# renovate: datasource=node
RUN install-tool node 20.13.0

# renovate: datasource=npm
RUN install-tool corepack 0.28.0

# renovate: datasource=github-releases packageName=docker/compose
RUN install-tool docker-compose v2.27.0

# renovate: datasource=docker packageName=hashicorp/terraform versioning=docker
#RUN install-tool terraform 0.14.7

# renovate: datasource=github-releases packageName=fluxcd/flux2
RUN install-tool flux v2.2.3

# renovate: datasource=github-releases packageName=kubernetes/kubernetes
RUN install-tool kubectl v1.30.0

# renovate: datasource=github-releases packageName=docker/buildx
RUN install-tool buildx v0.14.0

# renovate: datasource=github-releases packageName=kubernetes-sigs/kustomize
RUN install-tool kustomize 5.4.1

# renovate: datasource=github-releases packageName=visualon/skopeo-prebuild
RUN install-tool skopeo 1.15.0

# renovate: datasource=java-version packageName=java-jre
RUN install-tool java 17.0.11+9

RUN install-apt zstd

# renovate: datasource=github-releases packageName=minio/mc
RUN install-tool minio-client RELEASE.2024-04-29T09-56-05Z
