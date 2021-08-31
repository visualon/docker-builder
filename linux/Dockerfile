FROM ghcr.io/visualon/buildpack:latest@sha256:dde62e70d3c6befd94cbf744ae792854321671b87fc5f72ef0a5787e10ea34a3

LABEL \
  org.opencontainers.image.source="https://github.com/visualon/docker-builder" \
  org.opencontainers.image.url="https://github.com/visualon/docker-builder"

RUN install-apt mono-devel

# Required for nuget client
RUN set -ex; \
  mkdir -p /root/.config/NuGet; \
  echo $'<?xml version="1.0" encoding="utf-8"?>\n<configuration>\n</configuration>\n' > /root/.config/NuGet/NuGet.Config; \
  cat /root/.config/NuGet/NuGet.Config;
  

# renovate: datasource=docker versioning=docker
RUN install-tool docker 20.10.8

# renovate: datasource=github-releases lookupName=PowerShell/PowerShell
RUN install-tool powershell v7.1.4

# renovate: datasource=docker lookupName=mcr.microsoft.com/dotnet/sdk versioning=docker
RUN install-tool dotnet 5.0.400

# renovate: datasource=docker versioning=docker
RUN install-tool node 14.17.5

# renovate: datasource=npm versioning=npm
RUN install-tool yarn 1.22.11

# renovate: datasource=github-releases lookupName=docker/compose
RUN install-tool docker-compose 1.29.2

# renovate: datasource=docker lookupName=hashicorp/terraform versioning=docker
#RUN install-tool terraform 0.14.7

# renovate: datasource=github-tags lookupName=kubernetes/kubectl
RUN install-tool kubectl 1.20.1

# renovate: datasource=github-releases lookupName=docker/buildx
RUN install-tool buildx 0.6.3

# renovate: datasource=github-releases lookupName=kubernetes-sigs/kustomize
RUN install-tool kustomize 4.0.4

# renovate: datasource=github-releases lookupName=containers/skopeo
RUN install-tool skopeo v1.4.1
