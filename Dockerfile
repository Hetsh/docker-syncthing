FROM hetsh/alpine:20260805-11
ARG LAST_UPGRADE="2026-11-08T07:43:47+01:00"
RUN apk upgrade --no-cache && \
	apk add --no-cache \
		syncthing=2.1.7-r0

ENTRYPOINT ["syncthing", "--gui-address=0.0.0.0:8384", "--no-browser", "--home=/data"]
