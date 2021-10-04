FROM ghcr.io/visualon/buildpack:latest@sha256:140c10a861cbc183796bd8d247bdef8d959f306129e80a919bf7072fdb2233a0

LABEL \
  org.opencontainers.image.source="https://github.com/visualon/docker-builder" \
  org.opencontainers.image.url="https://github.com/visualon/docker-builder"

# renovate: datasource=github-releases lookupName=moby/moby
RUN install-tool docker v20.10.9

# renovate: datasource=github-releases lookupName=PowerShell/PowerShell
RUN install-tool powershell v7.1.4

# renovate: datasource=docker lookupName=mcr.microsoft.com/dotnet/sdk versioning=docker
RUN install-tool dotnet 5.0.401

# renovate: datasource=github-releases lookupName=nodejs/node versioning=node
RUN install-tool node 14.18.0

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
RUN install-tool skopeo v1.4.1

# renovate: datasource=adoptium-java lookupName=java-jre
RUN install-tool java 11.0.12+7
