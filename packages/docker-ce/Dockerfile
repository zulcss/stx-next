ARG DEBIAN_VERSION=debian:bullseye

FROM ${DEBIAN_VERSION} as base

CMD ["/bin/bash"]

FROM base as staging
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
	squashfs-tools zstd

FROM staging as build
WORKDIR /deb
RUN apt-get download docker.io containerd tini runc
RUN mkdir -p /work
RUN for f in /deb/*.deb; do dpkg -x $f /work ; done
RUN mv /work/lib /work/usr
RUN mv /work/etc /work/usr
RUN mkdir -p /work/usr/lib/extension-release.d  && \
	echo -e 'ID=debian\nSYSEXT_LEVEL=1.0' >/work/usr/lib/extension-release.d/extension-release.docker
RUN mkdir -p /output && mksquashfs /work /output/docker-ce.raw -noappend -comp zstd

FROM busybox
COPY --from=build /output /output
CMD [ "cp", "/output/docker-ce.raw", "/out"]
