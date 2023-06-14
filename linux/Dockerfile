FROM ghcr.io/visualon/buildpack:3.5.25@sha256:475d9bd8fd6738caa2396ed08d3cb862f1680cdcc88be5a5c2b927e701a71428

LABEL \
  org.opencontainers.image.source="https://github.com/visualon/docker-builder" \
  org.opencontainers.image.url="https://github.com/visualon/docker-builder"

# .NET SDK MSBuild requires US.UTF-8 locale to execute tasks
# https://github.com/dotnet/msbuild/issues/4194
RUN set -ex; install-apt locales; locale-gen en_US.UTF-8

ENV DOTNET_CLI_UI_LANGUAGE=en-us

# renovate: datasource=github-releases packageName=moby/moby
RUN install-tool docker v23.0.6

# renovate: datasource=github-releases packageName=PowerShell/PowerShell
RUN install-tool powershell v7.3.4

# renovate: datasource=dotnet packageName=dotnet-sdk
RUN install-tool dotnet 3.1.426

# renovate: datasource=dotnet packageName=dotnet-sdk
RUN install-tool dotnet 6.0.410

# renovate: datasource=dotnet packageName=dotnet-sdk
RUN install-tool dotnet 7.0.304

# renovate: datasource=node
RUN install-tool node 18.16.0

# renovate: datasource=npm
RUN install-tool corepack 0.18.0

# renovate: datasource=github-releases packageName=docker/compose
RUN install-tool docker-compose v2.18.1

# renovate: datasource=docker packageName=hashicorp/terraform versioning=docker
#RUN install-tool terraform 0.14.7

# renovate: datasource=github-tags packageName=kubernetes/kubectl
RUN install-tool kubectl 1.20.1

# renovate: datasource=github-releases packageName=docker/buildx
RUN install-tool buildx v0.10.5

# renovate: datasource=github-releases packageName=kubernetes-sigs/kustomize
RUN install-tool kustomize 4.0.4

# renovate: datasource=github-releases packageName=visualon/skopeo-prebuild
RUN install-tool skopeo 1.12.0

# renovate: datasource=adoptium-java packageName=java-jre
RUN install-tool java 11.0.19+7

RUN install-apt zstd

# renovate: datasource=github-releases packageName=minio/mc
RUN install-tool minio-client RELEASE.2023-05-30T22-41-38Z
