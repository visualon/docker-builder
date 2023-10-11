FROM ghcr.io/visualon/buildpack:4.1.86@sha256:0840a2474ae97df5105c0e0ac4ee71dcc3bf336309776f722dcc3f4d81c85a06

LABEL \
  org.opencontainers.image.source="https://github.com/visualon/docker-builder" \
  org.opencontainers.image.url="https://github.com/visualon/docker-builder"

# .NET SDK MSBuild requires US.UTF-8 locale to execute tasks
# https://github.com/dotnet/msbuild/issues/4194
RUN set -ex; install-apt locales; locale-gen en_US.UTF-8

ENV DOTNET_CLI_UI_LANGUAGE=en-us

# renovate: datasource=github-releases packageName=moby/moby
RUN install-tool docker v24.0.6

# renovate: datasource=github-releases packageName=PowerShell/PowerShell
RUN install-tool powershell v7.3.7

# renovate: datasource=dotnet packageName=dotnet-sdk
RUN install-tool dotnet 3.1.426

# renovate: datasource=dotnet packageName=dotnet-sdk
RUN install-tool dotnet 6.0.415

# renovate: datasource=dotnet packageName=dotnet-sdk
RUN install-tool dotnet 7.0.402

# renovate: datasource=node
RUN install-tool node 18.18.0

# renovate: datasource=npm
RUN install-tool corepack 0.20.0

# renovate: datasource=github-releases packageName=docker/compose
RUN install-tool docker-compose v2.22.0

# renovate: datasource=docker packageName=hashicorp/terraform versioning=docker
#RUN install-tool terraform 0.14.7

# renovate: datasource=github-releases packageName=kubernetes/kubernetes
RUN install-tool kubectl v1.28.2

# renovate: datasource=github-releases packageName=docker/buildx
RUN install-tool buildx v0.11.2

# renovate: datasource=github-releases packageName=kubernetes-sigs/kustomize
RUN install-tool kustomize 5.1.1

# renovate: datasource=github-releases packageName=visualon/skopeo-prebuild
RUN install-tool skopeo 1.13.3

# renovate: datasource=adoptium-java packageName=java-jre
RUN install-tool java 11.0.20+101

RUN install-apt zstd

# renovate: datasource=github-releases packageName=minio/mc
RUN install-tool minio-client RELEASE.2023-10-04T06-52-56Z
