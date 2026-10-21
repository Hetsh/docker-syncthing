FROM hetsh/alpine:20260805-9
ARG LAST_UPGRADE="2026-10-21T20:55:40+02:00"
RUN apk upgrade --no-cache && \
	apk add --no-cache \
		syncthing=2.1.6-r0

ENTRYPOINT ["syncthing", "--gui-address=0.0.0.0:8384", "--no-browser", "--home=/data"]
