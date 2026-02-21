FROM ghcr.io/alerque/git-warp-time:v0.8.5@sha256:d9fc9ae6ed418c1f348cd6e6adc15b11ca86c24251f5605f96c67e708e40a4a3 AS git-warp-time

FROM ghcr.io/visualon/buildpack:11.1.13@sha256:21fb840448f5aa86341cad7ff3cba1c587ece720e2afbdf78244a8f935f9fefd

LABEL \
  org.opencontainers.image.source="https://github.com/visualon/docker-builder" \
  org.opencontainers.image.url="https://github.com/visualon/docker-builder"

# .NET SDK MSBuild requires US.UTF-8 locale to execute tasks
# https://github.com/dotnet/msbuild/issues/4194
RUN set -ex; install-apt locales; locale-gen en_US.UTF-8

ENV DOTNET_CLI_UI_LANGUAGE=en-us

# renovate: datasource=github-releases packageName=moby/moby
RUN install-tool docker v28.5.2

# renovate: datasource=github-releases packageName=PowerShell/PowerShell
RUN install-tool powershell v7.5.4

# renovate: datasource=dotnet packageName=dotnet-sdk
RUN install-tool dotnet 8.0.418

# renovate: datasource=dotnet packageName=dotnet-sdk
RUN install-tool dotnet 9.0.311

# renovate: datasource=dotnet packageName=dotnet-sdk
RUN install-tool dotnet 10.0.103

# renovate: datasource=node
RUN install-tool node 24.13.1

# renovate: datasource=npm
RUN install-tool pnpm 10.30.0

# renovate: datasource=github-releases packageName=docker/compose
RUN install-tool docker-compose v2.40.3

# renovate: datasource=github-releases packageName=hashicorp/terraform
RUN install-tool terraform v1.14.5

# renovate: datasource=github-releases packageName=opentofu/opentofu
RUN install-tool tofu 1.11.5

# renovate: datasource=github-releases packageName=fluxcd/flux2
RUN install-tool flux v2.7.5

# renovate: datasource=github-releases packageName=kubernetes/kubernetes
RUN install-tool kubectl v1.35.1

# renovate: datasource=github-releases packageName=docker/buildx
RUN install-tool buildx v0.31.1

# renovate: datasource=github-releases packageName=kubernetes-sigs/kustomize
RUN install-tool kustomize 5.8.1

# renovate: datasource=github-releases packageName=visualon/skopeo-prebuild
RUN install-tool skopeo 1.22.0

# renovate: datasource=github-releases packageName=getsops/sops
RUN install-tool sops v3.11.0

# renovate: datasource=java-version packageName=java-jre?os=linux&architecture=x64
RUN install-tool java 21.0.10+7.0.LTS

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
