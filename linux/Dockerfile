FROM ghcr.io/visualon/buildpack:latest@sha256:fa24b608cabbdf0ab3bdf3ab03c33cb1c2090848e25ddace642afe4013ec6706

LABEL \
  org.opencontainers.image.source="https://github.com/visualon/docker-builder" \
  org.opencontainers.image.url="https://github.com/visualon/docker-builder"


# renovate: datasource=docker versioning=docker
RUN install-tool docker 20.10.5

# renovate: datasource=github-releases lookupName=PowerShell/PowerShell
RUN install-tool powershell v7.1.3

# renovate: datasource=docker lookupName=mcr.microsoft.com/dotnet/sdk versioning=docker
RUN install-tool dotnet 5.0.202

# renovate: datasource=docker versioning=docker
RUN install-tool node 14.16.1

# renovate: datasource=npm versioning=npm
RUN install-tool yarn 1.22.10

# renovate: datasource=github-releases lookupName=docker/compose
RUN install-tool docker-compose 1.29.0

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
