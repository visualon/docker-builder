FROM ghcr.io/visualon/buildpack:8.1.38@sha256:8e019925623c0ffa46d66a7fb27bc5ec05c2570c099c381c8bfd354f426ca9a1

LABEL \
  org.opencontainers.image.source="https://github.com/visualon/docker-builder" \
  org.opencontainers.image.url="https://github.com/visualon/docker-builder"

# .NET SDK MSBuild requires US.UTF-8 locale to execute tasks
# https://github.com/dotnet/msbuild/issues/4194
RUN set -ex; install-apt locales; locale-gen en_US.UTF-8

ENV DOTNET_CLI_UI_LANGUAGE=en-us

# renovate: datasource=github-releases packageName=moby/moby
RUN install-tool docker v27.5.1

# renovate: datasource=github-releases packageName=PowerShell/PowerShell
RUN install-tool powershell v7.5.0

# renovate: datasource=dotnet packageName=dotnet-sdk
RUN install-tool dotnet 6.0.428

# renovate: datasource=dotnet packageName=dotnet-sdk
RUN install-tool dotnet 8.0.407

# renovate: datasource=dotnet packageName=dotnet-sdk
RUN install-tool dotnet 9.0.201

# renovate: datasource=node
RUN install-tool node 22.14.0

# renovate: datasource=npm
RUN install-tool pnpm 10.6.3

# renovate: datasource=github-releases packageName=docker/compose
RUN install-tool docker-compose v2.34.0

# renovate: datasource=docker packageName=hashicorp/terraform versioning=docker
#RUN install-tool terraform 0.14.7

# renovate: datasource=github-releases packageName=fluxcd/flux2
RUN install-tool flux v2.5.1

# renovate: datasource=github-releases packageName=kubernetes/kubernetes
RUN install-tool kubectl v1.32.3

# renovate: datasource=github-releases packageName=docker/buildx
RUN install-tool buildx v0.21.3

# renovate: datasource=github-releases packageName=kubernetes-sigs/kustomize
RUN install-tool kustomize 5.6.0

# renovate: datasource=github-releases packageName=visualon/skopeo-prebuild
RUN install-tool skopeo 1.18.0

# renovate: datasource=java-version packageName=java-jre
RUN install-tool java 21.0.6+7.0.LTS

RUN install-apt zstd

# renovate: datasource=github-releases packageName=minio/mc
RUN install-tool minio-client RELEASE.2024-07-26T13-08-44Z
