FROM ghcr.io/visualon/buildpack:4.2.4@sha256:98591c150452b6c77c090718263ad38141b4a0f1feafcd0760ed41f25eec9d28

LABEL \
  org.opencontainers.image.source="https://github.com/visualon/docker-builder" \
  org.opencontainers.image.url="https://github.com/visualon/docker-builder"

# .NET SDK MSBuild requires US.UTF-8 locale to execute tasks
# https://github.com/dotnet/msbuild/issues/4194
RUN set -ex; install-apt locales; locale-gen en_US.UTF-8

ENV DOTNET_CLI_UI_LANGUAGE=en-us

# renovate: datasource=github-releases packageName=moby/moby
RUN install-tool docker v24.0.7

# renovate: datasource=github-releases packageName=PowerShell/PowerShell
RUN install-tool powershell v7.3.10

# renovate: datasource=dotnet packageName=dotnet-sdk
RUN install-tool dotnet 6.0.417

# renovate: datasource=dotnet packageName=dotnet-sdk
RUN install-tool dotnet 8.0.100

# renovate: datasource=node
RUN install-tool node 20.9.0

# renovate: datasource=npm
RUN install-tool corepack 0.23.0

# renovate: datasource=github-releases packageName=docker/compose
RUN install-tool docker-compose v2.23.1

# renovate: datasource=docker packageName=hashicorp/terraform versioning=docker
#RUN install-tool terraform 0.14.7

# renovate: datasource=github-releases packageName=kubernetes/kubernetes
RUN install-tool kubectl v1.28.4

# renovate: datasource=github-releases packageName=docker/buildx
RUN install-tool buildx v0.11.2

# renovate: datasource=github-releases packageName=kubernetes-sigs/kustomize
RUN install-tool kustomize 5.2.1

# renovate: datasource=github-releases packageName=visualon/skopeo-prebuild
RUN install-tool skopeo 1.13.3

# renovate: datasource=adoptium-java packageName=java-jre
RUN install-tool java 11.0.21+9

RUN install-apt zstd

# renovate: datasource=github-releases packageName=minio/mc
RUN install-tool minio-client RELEASE.2023-11-15T22-45-58Z
