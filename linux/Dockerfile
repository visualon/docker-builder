FROM ghcr.io/visualon/buildpack:5.0.4@sha256:1197fdd35bc73de5e7eb2012f877235bd712c4d75f3134b603f3cdd9ed2f3121

LABEL \
  org.opencontainers.image.source="https://github.com/visualon/docker-builder" \
  org.opencontainers.image.url="https://github.com/visualon/docker-builder"

# .NET SDK MSBuild requires US.UTF-8 locale to execute tasks
# https://github.com/dotnet/msbuild/issues/4194
RUN set -ex; install-apt locales; locale-gen en_US.UTF-8

ENV DOTNET_CLI_UI_LANGUAGE=en-us

# renovate: datasource=github-releases packageName=moby/moby
RUN install-tool docker v25.0.3

# renovate: datasource=github-releases packageName=PowerShell/PowerShell
RUN install-tool powershell v7.4.1

# renovate: datasource=dotnet packageName=dotnet-sdk
RUN install-tool dotnet 6.0.419

# renovate: datasource=dotnet packageName=dotnet-sdk
RUN install-tool dotnet 8.0.201

# renovate: datasource=node
RUN install-tool node 20.11.1

# renovate: datasource=npm
RUN install-tool corepack 0.24.1

# renovate: datasource=github-releases packageName=docker/compose
RUN install-tool docker-compose v2.24.6

# renovate: datasource=docker packageName=hashicorp/terraform versioning=docker
#RUN install-tool terraform 0.14.7

# renovate: datasource=github-releases packageName=fluxcd/flux2
RUN install-tool flux v2.2.3

# renovate: datasource=github-releases packageName=kubernetes/kubernetes
RUN install-tool kubectl v1.29.2

# renovate: datasource=github-releases packageName=docker/buildx
RUN install-tool buildx v0.12.1

# renovate: datasource=github-releases packageName=kubernetes-sigs/kustomize
RUN install-tool kustomize 5.3.0

# renovate: datasource=github-releases packageName=visualon/skopeo-prebuild
RUN install-tool skopeo 1.14.2

# renovate: datasource=java-version packageName=java-jre
RUN install-tool java 17.0.10+7

RUN install-apt zstd

# renovate: datasource=github-releases packageName=minio/mc
RUN install-tool minio-client RELEASE.2024-02-14T21-19-52Z
