FROM ghcr.io/visualon/buildpack:latest@sha256:4d88c09d6e3efd09ee4de788aa842c09f4dde6c25b89563a2371a0849582dba9

LABEL \
  org.opencontainers.image.source="https://github.com/visualon/docker-builder" \
  org.opencontainers.image.url="https://github.com/visualon/docker-builder"


# renovate: datasource=docker versioning=docker
RUN install-tool docker 20.10.6

# renovate: datasource=github-releases lookupName=PowerShell/PowerShell
RUN install-tool powershell v7.1.3

# renovate: datasource=docker lookupName=mcr.microsoft.com/dotnet/sdk versioning=docker
RUN install-tool dotnet 5.0.202

# renovate: datasource=docker versioning=docker
RUN install-tool node 14.16.1

# renovate: datasource=npm versioning=npm
RUN install-tool yarn 1.22.10

# renovate: datasource=github-releases lookupName=docker/compose
RUN install-tool docker-compose 1.29.1

# renovate: datasource=docker lookupName=hashicorp/terraform versioning=docker
#RUN install-tool terraform 0.14.7

# renovate: datasource=github-tags depName=kubernetes/kubectl
RUN install-tool kubectl 1.20.1

# renovate: datasource=github-releases depName=docker/buildx
#RUN install-tool buildx 0.5.1

# renovate: datasource=github-releases depName=kubernetes-sigs/kustomize
RUN install-tool kustomize 4.0.4

# renovate: datasource=github-releases depName=containers/skopeo
RUN install-tool skopeo v1.2.2
