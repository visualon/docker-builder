FROM ghcr.io/visualon/buildpack:2.0.27@sha256:20d48cd54abbec27dba1ecdb012bed6769950de920d22828c69db3ef07f2e776

LABEL \
  org.opencontainers.image.source="https://github.com/visualon/docker-builder" \
  org.opencontainers.image.url="https://github.com/visualon/docker-builder"

# renovate: datasource=github-releases lookupName=moby/moby
RUN install-tool docker v20.10.12

# renovate: datasource=github-releases lookupName=PowerShell/PowerShell
RUN install-tool powershell v7.2.1

# renovate: datasource=docker lookupName=mcr.microsoft.com/dotnet/sdk versioning=docker
RUN install-tool dotnet 3.1.417

# renovate: datasource=docker lookupName=mcr.microsoft.com/dotnet/sdk versioning=docker
RUN install-tool dotnet 5.0.405

# renovate: datasource=docker lookupName=mcr.microsoft.com/dotnet/sdk versioning=docker
RUN install-tool dotnet 6.0.200

# renovate: datasource=github-releases lookupName=nodejs/node versioning=node
RUN install-tool node 14.19.0

# renovate: datasource=npm versioning=npm
RUN install-tool yarn 1.22.17

# renovate: datasource=github-releases lookupName=docker/compose
RUN install-tool docker-compose 1.29.2

# renovate: datasource=docker lookupName=hashicorp/terraform versioning=docker
#RUN install-tool terraform 0.14.7

# renovate: datasource=github-tags lookupName=kubernetes/kubectl
RUN install-tool kubectl 1.20.1

# renovate: datasource=github-releases lookupName=docker/buildx
RUN install-tool buildx v0.7.1

# renovate: datasource=github-releases lookupName=kubernetes-sigs/kustomize
RUN install-tool kustomize 4.0.4

# renovate: datasource=github-releases lookupName=containers/skopeo
RUN install-tool skopeo v1.6.1

# renovate: datasource=adoptium-java lookupName=java-jre
RUN install-tool java 11.0.14+9
