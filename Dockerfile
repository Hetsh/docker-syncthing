FROM hetsh/alpine:20260805-6
ARG LAST_UPGRADE="2026-09-27T14:38:56+02:00"
RUN apk upgrade --no-cache && \
	apk add --no-cache \
		syncthing=2.1.5-r0

ENTRYPOINT ["syncthing", "--gui-address=0.0.0.0:8384", "--no-browser", "--home=/data"]
