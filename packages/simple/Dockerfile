ARG DEBIAN_VERSION=debian:bullseye
ARG VERSION=1.0

FROM ${DEBIAN_VERSION} as base

CMD ["/bin/bash"]

FROM base as staging
RUN apt-get update && \
    apt-get install -y squashfs-tools
RUN mkdir -p /work/usr/lib/systemd/system/
RUN mkdir -p /work/usr/lib/extension-release.d  && echo -e 'ID=debian\nSYSEXT_LEVEL=1.0' >/work/usr/lib/extension-release.d/extension-release.simple-test
COPY assets/simple-test.service /work/usr/lib/systemd/system
RUN mkdir -p /output && mksquashfs /work /output/simple-test.raw -noappend

FROM busybox
COPY --from=staging /output /output
CMD ["cp", "/output/simple-test.raw", "/out"]
