FROM ghcr.io/visualon/buildpack:5.1.2@sha256:5b5086ba9c2e97063e02eff76e2f37e03f19772bf8336489513c46a11db806f8

LABEL \
  org.opencontainers.image.source="https://github.com/visualon/docker-builder" \
  org.opencontainers.image.url="https://github.com/visualon/docker-builder"

# .NET SDK MSBuild requires US.UTF-8 locale to execute tasks
# https://github.com/dotnet/msbuild/issues/4194
RUN set -ex; install-apt locales; locale-gen en_US.UTF-8

ENV DOTNET_CLI_UI_LANGUAGE=en-us

# renovate: datasource=github-releases packageName=moby/moby
RUN install-tool docker v25.0.5

# renovate: datasource=github-releases packageName=PowerShell/PowerShell
RUN install-tool powershell v7.4.1

# renovate: datasource=dotnet packageName=dotnet-sdk
RUN install-tool dotnet 6.0.420

# renovate: datasource=dotnet packageName=dotnet-sdk
RUN install-tool dotnet 8.0.203

# renovate: datasource=node
RUN install-tool node 20.12.1

# renovate: datasource=npm
RUN install-tool corepack 0.26.0

# renovate: datasource=github-releases packageName=docker/compose
RUN install-tool docker-compose v2.26.1

# renovate: datasource=docker packageName=hashicorp/terraform versioning=docker
#RUN install-tool terraform 0.14.7

# renovate: datasource=github-releases packageName=fluxcd/flux2
RUN install-tool flux v2.2.3

# renovate: datasource=github-releases packageName=kubernetes/kubernetes
RUN install-tool kubectl v1.29.3

# renovate: datasource=github-releases packageName=docker/buildx
RUN install-tool buildx v0.13.1

# renovate: datasource=github-releases packageName=kubernetes-sigs/kustomize
RUN install-tool kustomize 5.3.0

# renovate: datasource=github-releases packageName=visualon/skopeo-prebuild
RUN install-tool skopeo 1.15.0

# renovate: datasource=java-version packageName=java-jre
RUN install-tool java 17.0.10+7

RUN install-apt zstd

# renovate: datasource=github-releases packageName=minio/mc
RUN install-tool minio-client RELEASE.2024-03-30T15-29-52Z
