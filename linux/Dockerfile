FROM ghcr.io/visualon/buildpack:latest@sha256:1ffee9a2c31316aa54c7d2db059abc2c43e58a948930f9bf21c7f9de49baa01f

LABEL \
  org.opencontainers.image.source="https://github.com/visualon/docker-builder" \
  org.opencontainers.image.url="https://github.com/visualon/docker-builder"

# renovate: datasource=github-releases lookupName=moby/moby
RUN install-tool docker v20.10.9

# renovate: datasource=github-releases lookupName=PowerShell/PowerShell
RUN install-tool powershell v7.1.5

# renovate: datasource=docker lookupName=mcr.microsoft.com/dotnet/sdk versioning=docker
RUN install-tool dotnet 5.0.402

# renovate: datasource=github-releases lookupName=nodejs/node versioning=node
RUN install-tool node 14.18.1

# renovate: datasource=npm versioning=npm
RUN install-tool yarn 1.22.15

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
RUN install-tool skopeo v1.5.0

# renovate: datasource=adoptium-java lookupName=java-jre
RUN install-tool java 11.0.12+7
