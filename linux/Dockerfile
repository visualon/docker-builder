FROM ghcr.io/visualon/buildpack:latest@sha256:3e1d90d1621e3288dd8bb9d3693e07316b31d56d0d2235ae60c50fd77f2f4e59

LABEL \
  org.opencontainers.image.source="https://github.com/visualon/docker-builder" \
  org.opencontainers.image.url="https://github.com/visualon/docker-builder"

# renovate: datasource=github-releases lookupName=moby/moby
RUN install-tool docker 20.10.8

# renovate: datasource=github-releases lookupName=PowerShell/PowerShell
RUN install-tool powershell v7.1.4

# renovate: datasource=docker lookupName=mcr.microsoft.com/dotnet/sdk versioning=docker
RUN install-tool dotnet 5.0.400

# renovate: datasource=github-releases lookupName=nodejs/node versioning=node
RUN install-tool node 14.17.6

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

# renovate: datasource=adoptium-java lookupName=java-jre
RUN install-tool java 11.0.12+7
