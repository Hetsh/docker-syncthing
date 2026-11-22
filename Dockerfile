FROM hetsh/alpine:20260805-13
ARG LAST_UPGRADE="2026-11-22T08:35:48+01:00"
RUN apk upgrade --no-cache && \
	apk add --no-cache \
		syncthing=2.1.7-r0

ENTRYPOINT ["syncthing", "--gui-address=0.0.0.0:8384", "--no-browser", "--home=/data"]
