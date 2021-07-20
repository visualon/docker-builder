FROM ghcr.io/visualon/buildpack:latest@sha256:bcdf95ca29ea036eab5fdfb3e04e9a4686d267d408111b69dd8dbcbdfcb7c4e7

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
RUN install-tool docker 20.10.7

# renovate: datasource=github-releases lookupName=PowerShell/PowerShell
RUN install-tool powershell v7.1.3

# renovate: datasource=docker lookupName=mcr.microsoft.com/dotnet/sdk versioning=docker
RUN install-tool dotnet 5.0.302

# renovate: datasource=docker versioning=docker
RUN install-tool node 14.17.3

# renovate: datasource=npm versioning=npm
RUN install-tool yarn 1.22.10

# renovate: datasource=github-releases lookupName=docker/compose
RUN install-tool docker-compose 1.29.2

# renovate: datasource=docker lookupName=hashicorp/terraform versioning=docker
#RUN install-tool terraform 0.14.7

# renovate: datasource=github-tags lookupName=kubernetes/kubectl
RUN install-tool kubectl 1.20.1

# renovate: datasource=github-releases lookupName=docker/buildx
#RUN install-tool buildx 0.5.1

# renovate: datasource=github-releases lookupName=kubernetes-sigs/kustomize
RUN install-tool kustomize 4.0.4

# renovate: datasource=github-releases lookupName=containers/skopeo
RUN install-tool skopeo v1.3.1
