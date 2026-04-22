FROM ghcr.io/alerque/git-warp-time:v1.0.0@sha256:4e533607444a5d6cf7a313d255309728b166a34a17d570391fc68c82acc6fd1c AS git-warp-time

FROM ghcr.io/visualon/buildpack:11.1.53@sha256:e9ce870c5b324068eb53d56cd67c0c6642d4d7212bbff9271d446f0495a5b8e3

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
RUN install-tool powershell v7.6.1

# renovate: datasource=dotnet packageName=dotnet-sdk
RUN install-tool dotnet 8.0.420

# renovate: datasource=dotnet packageName=dotnet-sdk
RUN install-tool dotnet 9.0.313

# renovate: datasource=dotnet packageName=dotnet-sdk
RUN install-tool dotnet 10.0.203

# renovate: datasource=node
RUN install-tool node 24.14.1

# renovate: datasource=npm
RUN install-tool pnpm 10.33.1

# renovate: datasource=github-releases packageName=docker/compose
RUN install-tool docker-compose v5.1.3

# renovate: datasource=github-releases packageName=hashicorp/terraform
RUN install-tool terraform v1.14.9

# renovate: datasource=github-releases packageName=opentofu/opentofu
RUN install-tool tofu 1.11.6

# renovate: datasource=github-releases packageName=fluxcd/flux2
RUN install-tool flux v2.8.6

# renovate: datasource=github-releases packageName=kubernetes/kubernetes
RUN install-tool kubectl v1.36.0

# renovate: datasource=github-releases packageName=docker/buildx
RUN install-tool buildx v0.33.0

# renovate: datasource=github-releases packageName=kubernetes-sigs/kustomize
RUN install-tool kustomize 5.8.1

# renovate: datasource=github-releases packageName=visualon/skopeo-prebuild
RUN install-tool skopeo 1.22.2

# renovate: datasource=github-releases packageName=getsops/sops
RUN install-tool sops v3.12.2

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
