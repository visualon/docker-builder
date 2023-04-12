FROM ghcr.io/visualon/buildpack:3.5.10@sha256:de4441669053af69e7abb30bd57bec78f48a85afc62640f072743dc66ccf726d

LABEL \
  org.opencontainers.image.source="https://github.com/visualon/docker-builder" \
  org.opencontainers.image.url="https://github.com/visualon/docker-builder"

# .NET SDK MSBuild requires US.UTF-8 locale to execute tasks
# https://github.com/dotnet/msbuild/issues/4194
RUN set -ex; install-apt locales; locale-gen en_US.UTF-8

ENV DOTNET_CLI_UI_LANGUAGE=en-us

# renovate: datasource=github-releases packageName=moby/moby
RUN install-tool docker v23.0.3

# renovate: datasource=github-releases packageName=PowerShell/PowerShell
RUN install-tool powershell v7.3.3

# renovate: datasource=dotnet packageName=dotnet-sdk
RUN install-tool dotnet 3.1.426

# renovate: datasource=dotnet packageName=dotnet-sdk
RUN install-tool dotnet 6.0.408

# renovate: datasource=dotnet packageName=dotnet-sdk
RUN install-tool dotnet 7.0.203

# renovate: datasource=node
RUN install-tool node 18.15.0

# renovate: datasource=npm
RUN install-tool corepack 0.17.2

# renovate: datasource=github-releases packageName=docker/compose
RUN install-tool docker-compose v2.17.2

# renovate: datasource=docker packageName=hashicorp/terraform versioning=docker
#RUN install-tool terraform 0.14.7

# renovate: datasource=github-tags packageName=kubernetes/kubectl
RUN install-tool kubectl 1.20.1

# renovate: datasource=github-releases packageName=docker/buildx
RUN install-tool buildx v0.10.4

# renovate: datasource=github-releases packageName=kubernetes-sigs/kustomize
RUN install-tool kustomize 4.0.4

# renovate: datasource=github-releases packageName=visualon/skopeo-prebuild
RUN install-tool skopeo 1.11.2

# renovate: datasource=adoptium-java packageName=java-jre
RUN install-tool java 11.0.18+10

RUN install-apt zstd

# renovate: datasource=github-releases packageName=minio/mc
RUN install-tool minio-client RELEASE.2023-04-06T16-51-10Z
