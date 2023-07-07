FROM ghcr.io/visualon/buildpack:4.1.18@sha256:fcc855c85a1d69a38d22c99efd852001c31f4194beed0962e7240676cb3e6eab

LABEL \
  org.opencontainers.image.source="https://github.com/visualon/docker-builder" \
  org.opencontainers.image.url="https://github.com/visualon/docker-builder"

# .NET SDK MSBuild requires US.UTF-8 locale to execute tasks
# https://github.com/dotnet/msbuild/issues/4194
RUN set -ex; install-apt locales; locale-gen en_US.UTF-8

ENV DOTNET_CLI_UI_LANGUAGE=en-us

# renovate: datasource=github-releases packageName=moby/moby
RUN install-tool docker v24.0.3

# renovate: datasource=github-releases packageName=PowerShell/PowerShell
RUN install-tool powershell v7.3.5

# renovate: datasource=dotnet packageName=dotnet-sdk
RUN install-tool dotnet 3.1.426

# renovate: datasource=dotnet packageName=dotnet-sdk
RUN install-tool dotnet 6.0.411

# renovate: datasource=dotnet packageName=dotnet-sdk
RUN install-tool dotnet 7.0.305

# renovate: datasource=node
RUN install-tool node 18.16.1

# renovate: datasource=npm
RUN install-tool corepack 0.19.0

# renovate: datasource=github-releases packageName=docker/compose
RUN install-tool docker-compose v2.19.1

# renovate: datasource=docker packageName=hashicorp/terraform versioning=docker
#RUN install-tool terraform 0.14.7

# renovate: datasource=github-releases packageName=kubernetes/kubernetes
RUN install-tool kubectl v1.27.3

# renovate: datasource=github-releases packageName=docker/buildx
RUN install-tool buildx v0.11.1

# renovate: datasource=github-releases packageName=kubernetes-sigs/kustomize
RUN install-tool kustomize 4.5.7

# renovate: datasource=github-releases packageName=visualon/skopeo-prebuild
RUN install-tool skopeo 1.12.0

# renovate: datasource=adoptium-java packageName=java-jre
RUN install-tool java 11.0.19+7

RUN install-apt zstd

# renovate: datasource=github-releases packageName=minio/mc
RUN install-tool minio-client RELEASE.2023-06-28T21-54-17Z
