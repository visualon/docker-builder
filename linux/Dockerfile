FROM ghcr.io/alerque/git-warp-time:v0.8.5@sha256:d9fc9ae6ed418c1f348cd6e6adc15b11ca86c24251f5605f96c67e708e40a4a3 AS git-warp-time

FROM ghcr.io/visualon/buildpack:9.0.23@sha256:384d432a61d4b0639d2e08a5bfdb1230cac720c866e71f22dfe0c78c7e7c6fed

LABEL \
  org.opencontainers.image.source="https://github.com/visualon/docker-builder" \
  org.opencontainers.image.url="https://github.com/visualon/docker-builder"

# .NET SDK MSBuild requires US.UTF-8 locale to execute tasks
# https://github.com/dotnet/msbuild/issues/4194
RUN set -ex; install-apt locales; locale-gen en_US.UTF-8

ENV DOTNET_CLI_UI_LANGUAGE=en-us

# renovate: datasource=github-releases packageName=moby/moby
RUN install-tool docker v28.1.1

# renovate: datasource=github-releases packageName=PowerShell/PowerShell
RUN install-tool powershell v7.5.1

# renovate: datasource=dotnet packageName=dotnet-sdk
RUN install-tool dotnet 8.0.410

# renovate: datasource=dotnet packageName=dotnet-sdk
RUN install-tool dotnet 9.0.300

# renovate: datasource=node
RUN install-tool node 22.16.0

# renovate: datasource=npm
RUN install-tool pnpm 10.11.0

# renovate: datasource=github-releases packageName=docker/compose
RUN install-tool docker-compose v2.36.1

# renovate: datasource=docker packageName=hashicorp/terraform versioning=docker
#RUN install-tool terraform 0.14.7

# renovate: datasource=github-releases packageName=fluxcd/flux2
RUN install-tool flux v2.5.1

# renovate: datasource=github-releases packageName=kubernetes/kubernetes
RUN install-tool kubectl v1.33.1

# renovate: datasource=github-releases packageName=docker/buildx
RUN install-tool buildx v0.24.0

# renovate: datasource=github-releases packageName=kubernetes-sigs/kustomize
RUN install-tool kustomize 5.6.0

# renovate: datasource=github-releases packageName=visualon/skopeo-prebuild
RUN install-tool skopeo 1.18.0

# renovate: datasource=java-version packageName=java-jre
RUN install-tool java 21.0.7+6.0.LTS

RUN install-apt zstd

# renovate: datasource=github-releases packageName=minio/mc
RUN install-tool minio-client RELEASE.2024-07-26T13-08-44Z

# https://github.com/alerque/git-warp-time
COPY --from=git-warp-time /usr/local/bin/git-warp-time /usr/local/bin/git-warp-time
RUN git-warp-time --version
