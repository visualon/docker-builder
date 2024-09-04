FROM ghcr.io/visualon/buildpack:5.3.21@sha256:70b11a40cc63b4e44ace96e6bae970c2ac4346433bd202be9d228c3a9d47ddb5

LABEL \
  org.opencontainers.image.source="https://github.com/visualon/docker-builder" \
  org.opencontainers.image.url="https://github.com/visualon/docker-builder"

# .NET SDK MSBuild requires US.UTF-8 locale to execute tasks
# https://github.com/dotnet/msbuild/issues/4194
RUN set -ex; install-apt locales; locale-gen en_US.UTF-8

ENV DOTNET_CLI_UI_LANGUAGE=en-us

# renovate: datasource=github-releases packageName=moby/moby
RUN install-tool docker v27.2.0

# renovate: datasource=github-releases packageName=PowerShell/PowerShell
RUN install-tool powershell v7.4.5

# renovate: datasource=dotnet packageName=dotnet-sdk
RUN install-tool dotnet 6.0.425

# renovate: datasource=dotnet packageName=dotnet-sdk
RUN install-tool dotnet 8.0.401

# renovate: datasource=node
RUN install-tool node 20.17.0

# renovate: datasource=npm
RUN install-tool corepack 0.29.3

# renovate: datasource=github-releases packageName=docker/compose
RUN install-tool docker-compose v2.29.2

# renovate: datasource=docker packageName=hashicorp/terraform versioning=docker
#RUN install-tool terraform 0.14.7

# renovate: datasource=github-releases packageName=fluxcd/flux2
RUN install-tool flux v2.3.0

# renovate: datasource=github-releases packageName=kubernetes/kubernetes
RUN install-tool kubectl v1.31.0

# renovate: datasource=github-releases packageName=docker/buildx
RUN install-tool buildx v0.16.2

# renovate: datasource=github-releases packageName=kubernetes-sigs/kustomize
RUN install-tool kustomize 5.4.3

# renovate: datasource=github-releases packageName=visualon/skopeo-prebuild
RUN install-tool skopeo 1.16.1

# renovate: datasource=java-version packageName=java-jre
RUN install-tool java 21.0.4+7.0.LTS

RUN install-apt zstd

# renovate: datasource=github-releases packageName=minio/mc
RUN install-tool minio-client RELEASE.2024-07-26T13-08-44Z
