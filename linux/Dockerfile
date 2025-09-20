FROM ghcr.io/alerque/git-warp-time:v0.8.5@sha256:d9fc9ae6ed418c1f348cd6e6adc15b11ca86c24251f5605f96c67e708e40a4a3 AS git-warp-time

FROM ghcr.io/visualon/buildpack:9.0.80@sha256:2329ff6051da1835b9e424d6ba24ecda31d2b549529e3147d41fc5b13e7104c5

LABEL \
  org.opencontainers.image.source="https://github.com/visualon/docker-builder" \
  org.opencontainers.image.url="https://github.com/visualon/docker-builder"

# .NET SDK MSBuild requires US.UTF-8 locale to execute tasks
# https://github.com/dotnet/msbuild/issues/4194
RUN set -ex; install-apt locales; locale-gen en_US.UTF-8

ENV DOTNET_CLI_UI_LANGUAGE=en-us

# renovate: datasource=github-releases packageName=moby/moby
RUN install-tool docker v28.4.0

# renovate: datasource=github-releases packageName=PowerShell/PowerShell
RUN install-tool powershell v7.5.3

# renovate: datasource=dotnet packageName=dotnet-sdk
RUN install-tool dotnet 8.0.414

# renovate: datasource=dotnet packageName=dotnet-sdk
RUN install-tool dotnet 9.0.305

# renovate: datasource=node
RUN install-tool node 22.19.0

# renovate: datasource=npm
RUN install-tool pnpm 10.16.1

# renovate: datasource=github-releases packageName=docker/compose
RUN install-tool docker-compose v2.39.4

# renovate: datasource=github-releases packageName=hashicorp/terraform
RUN install-tool terraform v1.13.3

# renovate: datasource=github-releases packageName=fluxcd/flux2
RUN install-tool flux v2.6.4

# renovate: datasource=github-releases packageName=kubernetes/kubernetes
RUN install-tool kubectl v1.34.1

# renovate: datasource=github-releases packageName=docker/buildx
RUN install-tool buildx v0.28.0

# renovate: datasource=github-releases packageName=kubernetes-sigs/kustomize
RUN install-tool kustomize 5.7.1

# renovate: datasource=github-releases packageName=visualon/skopeo-prebuild
RUN install-tool skopeo 1.20.0

# renovate: datasource=java-version packageName=java-jre
RUN install-tool java 21.0.8+9.0.LTS

RUN install-apt zstd

# renovate: datasource=github-releases packageName=minio/mc
RUN install-tool minio-client RELEASE.2024-07-26T13-08-44Z

# https://github.com/alerque/git-warp-time
COPY --from=git-warp-time /usr/local/bin/git-warp-time /usr/local/bin/git-warp-time
RUN git-warp-time --version

# required for docfx pdf (uses playwright chrome)
RUN install-apt \
  libasound2t64 \
  libatk1.0-0t64 \
  libatk-bridge2.0-0t64 \
  libatspi2.0-0t64 \
  libdbus-1-3 \
  libgbm1 \
  libglib2.0-0t64 \
  libnspr4 \
  libnss3 \
  libx11-6 \
  libxcb1 \
  libxcomposite1 \
  libxdamage1 \
  libxext6 \
  libxfixes3 \
  libxkbcommon0 \
  libxrandr2 \
  ;
