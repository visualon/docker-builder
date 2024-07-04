FROM ghcr.io/visualon/buildpack:5.1.55@sha256:9558256d2894872a3727b3ab30e39f7c640f3171fdb7c726c0695aab61fb4a4f

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
RUN install-tool powershell v7.4.3

# renovate: datasource=dotnet packageName=dotnet-sdk
RUN install-tool dotnet 6.0.423

# renovate: datasource=dotnet packageName=dotnet-sdk
RUN install-tool dotnet 8.0.302

# renovate: datasource=node
RUN install-tool node 20.15.0

# renovate: datasource=npm
RUN install-tool corepack 0.28.2

# renovate: datasource=github-releases packageName=docker/compose
RUN install-tool docker-compose v2.28.1

# renovate: datasource=docker packageName=hashicorp/terraform versioning=docker
#RUN install-tool terraform 0.14.7

# renovate: datasource=github-releases packageName=fluxcd/flux2
RUN install-tool flux v2.3.0

# renovate: datasource=github-releases packageName=kubernetes/kubernetes
RUN install-tool kubectl v1.30.2

# renovate: datasource=github-releases packageName=docker/buildx
RUN install-tool buildx v0.15.1

# renovate: datasource=github-releases packageName=kubernetes-sigs/kustomize
RUN install-tool kustomize 5.4.2

# renovate: datasource=github-releases packageName=visualon/skopeo-prebuild
RUN install-tool skopeo 1.15.1

# renovate: datasource=java-version packageName=java-jre
RUN install-tool java 17.0.11+9

RUN install-apt zstd

# renovate: datasource=github-releases packageName=minio/mc
RUN install-tool minio-client RELEASE.2024-07-03T20-17-25Z
