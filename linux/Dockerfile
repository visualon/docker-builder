FROM ghcr.io/visualon/buildpack:8.1.13@sha256:b423453c8e48a81f563682c6ad427d396d46c36b5c35c194d61486af95aa40e7

LABEL \
  org.opencontainers.image.source="https://github.com/visualon/docker-builder" \
  org.opencontainers.image.url="https://github.com/visualon/docker-builder"

# .NET SDK MSBuild requires US.UTF-8 locale to execute tasks
# https://github.com/dotnet/msbuild/issues/4194
RUN set -ex; install-apt locales; locale-gen en_US.UTF-8

ENV DOTNET_CLI_UI_LANGUAGE=en-us

# renovate: datasource=github-releases packageName=moby/moby
RUN install-tool docker v27.5.0

# renovate: datasource=github-releases packageName=PowerShell/PowerShell
RUN install-tool powershell v7.4.6

# renovate: datasource=dotnet packageName=dotnet-sdk
RUN install-tool dotnet 6.0.428

# renovate: datasource=dotnet packageName=dotnet-sdk
RUN install-tool dotnet 8.0.405

# renovate: datasource=dotnet packageName=dotnet-sdk
RUN install-tool dotnet 9.0.102

# renovate: datasource=node
RUN install-tool node 22.13.1

# renovate: datasource=npm
RUN install-tool pnpm 10.0.0

# renovate: datasource=github-releases packageName=docker/compose
RUN install-tool docker-compose v2.32.4

# renovate: datasource=docker packageName=hashicorp/terraform versioning=docker
#RUN install-tool terraform 0.14.7

# renovate: datasource=github-releases packageName=fluxcd/flux2
RUN install-tool flux v2.4.0

# renovate: datasource=github-releases packageName=kubernetes/kubernetes
RUN install-tool kubectl v1.32.1

# renovate: datasource=github-releases packageName=docker/buildx
RUN install-tool buildx v0.20.0

# renovate: datasource=github-releases packageName=kubernetes-sigs/kustomize
RUN install-tool kustomize 5.6.0

# renovate: datasource=github-releases packageName=visualon/skopeo-prebuild
RUN install-tool skopeo 1.17.0

# renovate: datasource=java-version packageName=java-jre
RUN install-tool java 21.0.5+11.0.LTS

RUN install-apt zstd

# renovate: datasource=github-releases packageName=minio/mc
RUN install-tool minio-client RELEASE.2024-07-26T13-08-44Z
