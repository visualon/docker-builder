FROM ghcr.io/visualon/buildpack:8.1.7@sha256:c3ccc01e67654da90061c8475726b537854bbcb24d05d9b3f1a0d4b0df4b2c5f

LABEL \
  org.opencontainers.image.source="https://github.com/visualon/docker-builder" \
  org.opencontainers.image.url="https://github.com/visualon/docker-builder"

# .NET SDK MSBuild requires US.UTF-8 locale to execute tasks
# https://github.com/dotnet/msbuild/issues/4194
RUN set -ex; install-apt locales; locale-gen en_US.UTF-8

ENV DOTNET_CLI_UI_LANGUAGE=en-us

# renovate: datasource=github-releases packageName=moby/moby
RUN install-tool docker v27.4.1

# renovate: datasource=github-releases packageName=PowerShell/PowerShell
RUN install-tool powershell v7.4.6

# renovate: datasource=dotnet packageName=dotnet-sdk
RUN install-tool dotnet 6.0.428

# renovate: datasource=dotnet packageName=dotnet-sdk
RUN install-tool dotnet 8.0.404

# renovate: datasource=dotnet packageName=dotnet-sdk
RUN install-tool dotnet 9.0.101

# renovate: datasource=node
RUN install-tool node 22.12.0

# renovate: datasource=npm
RUN install-tool pnpm 9.15.3

# renovate: datasource=github-releases packageName=docker/compose
RUN install-tool docker-compose v2.32.2

# renovate: datasource=docker packageName=hashicorp/terraform versioning=docker
#RUN install-tool terraform 0.14.7

# renovate: datasource=github-releases packageName=fluxcd/flux2
RUN install-tool flux v2.4.0

# renovate: datasource=github-releases packageName=kubernetes/kubernetes
RUN install-tool kubectl v1.32.0

# renovate: datasource=github-releases packageName=docker/buildx
RUN install-tool buildx v0.19.3

# renovate: datasource=github-releases packageName=kubernetes-sigs/kustomize
RUN install-tool kustomize 5.5.0

# renovate: datasource=github-releases packageName=visualon/skopeo-prebuild
RUN install-tool skopeo 1.17.0

# renovate: datasource=java-version packageName=java-jre
RUN install-tool java 21.0.5+11.0.LTS

RUN install-apt zstd

# renovate: datasource=github-releases packageName=minio/mc
RUN install-tool minio-client RELEASE.2024-07-26T13-08-44Z
