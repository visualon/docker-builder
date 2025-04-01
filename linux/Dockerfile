FROM ghcr.io/alerque/git-warp-time:v0.8.5@sha256:d9fc9ae6ed418c1f348cd6e6adc15b11ca86c24251f5605f96c67e708e40a4a3 AS git-warp-time

FROM ghcr.io/visualon/buildpack:9.0.2@sha256:28dfde0c863c7461609535c972b2af4f4464aaa2923cfa9dfc0d9e717a0fb6f0

LABEL \
  org.opencontainers.image.source="https://github.com/visualon/docker-builder" \
  org.opencontainers.image.url="https://github.com/visualon/docker-builder"

# .NET SDK MSBuild requires US.UTF-8 locale to execute tasks
# https://github.com/dotnet/msbuild/issues/4194
RUN set -ex; install-apt locales; locale-gen en_US.UTF-8

ENV DOTNET_CLI_UI_LANGUAGE=en-us

# renovate: datasource=github-releases packageName=moby/moby
RUN install-tool docker v28.0.4

# renovate: datasource=github-releases packageName=PowerShell/PowerShell
RUN install-tool powershell v7.5.0

# renovate: datasource=dotnet packageName=dotnet-sdk
RUN install-tool dotnet 8.0.407

# renovate: datasource=dotnet packageName=dotnet-sdk
RUN install-tool dotnet 9.0.202

# renovate: datasource=node
RUN install-tool node 22.14.0

# renovate: datasource=npm
RUN install-tool pnpm 10.7.0

# renovate: datasource=github-releases packageName=docker/compose
RUN install-tool docker-compose v2.34.0

# renovate: datasource=docker packageName=hashicorp/terraform versioning=docker
#RUN install-tool terraform 0.14.7

# renovate: datasource=github-releases packageName=fluxcd/flux2
RUN install-tool flux v2.5.1

# renovate: datasource=github-releases packageName=kubernetes/kubernetes
RUN install-tool kubectl v1.32.3

# renovate: datasource=github-releases packageName=docker/buildx
RUN install-tool buildx v0.22.0

# renovate: datasource=github-releases packageName=kubernetes-sigs/kustomize
RUN install-tool kustomize 5.6.0

# renovate: datasource=github-releases packageName=visualon/skopeo-prebuild
RUN install-tool skopeo 1.18.0

# renovate: datasource=java-version packageName=java-jre
RUN install-tool java 21.0.6+7.0.LTS

RUN install-apt zstd

# renovate: datasource=github-releases packageName=minio/mc
RUN install-tool minio-client RELEASE.2024-07-26T13-08-44Z

# https://github.com/alerque/git-warp-time
COPY --from=git-warp-time /usr/local/bin/git-warp-time /usr/local/bin/git-warp-time
RUN git-warp-time --version
