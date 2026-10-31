FROM ghcr.io/alerque/git-warp-time:v1.0.0@sha256:4e533607444a5d6cf7a313d255309728b166a34a17d570391fc68c82acc6fd1c AS git-warp-time

FROM ghcr.io/visualon/buildpack:11.2.92@sha256:68153fdfcdf6f5bd61eb92370952d79b86d96fcf59079c6a9d6cd25d6bcb1720

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
RUN install-tool powershell v7.6.9

# renovate: datasource=dotnet packageName=dotnet-sdk
RUN install-tool dotnet 8.0.427

# renovate: datasource=dotnet packageName=dotnet-sdk
RUN install-tool dotnet 10.0.403

# renovate: datasource=node
RUN install-tool node 24.22.2

# renovate: datasource=npm
RUN install-tool pnpm 11.28.9

# renovate: datasource=github-releases packageName=docker/compose
RUN install-tool docker-compose v5.6.1

# renovate: datasource=github-releases packageName=hashicorp/terraform
RUN install-tool terraform v1.17.0

# renovate: datasource=github-releases packageName=opentofu/opentofu
RUN install-tool tofu 1.13.2

# renovate: datasource=github-releases packageName=fluxcd/flux2
RUN install-tool flux v2.10.0

# renovate: datasource=github-releases packageName=kubernetes/kubernetes
RUN install-tool kubectl v1.37.2

# renovate: datasource=github-releases packageName=docker/buildx
RUN install-tool buildx v0.38.1

# renovate: datasource=github-releases packageName=kubernetes-sigs/kustomize
RUN install-tool kustomize 5.8.3

# renovate: datasource=github-releases packageName=visualon/skopeo-prebuild
RUN install-tool skopeo 1.24.1

# renovate: datasource=github-releases packageName=getsops/sops
RUN install-tool sops v3.13.3

# renovate: datasource=java-version packageName=java-jre?os=linux&architecture=x64
RUN install-tool java 21.0.13+9.0.LTS

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
