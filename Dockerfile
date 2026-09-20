FROM hetsh/alpine:20260805-5
ARG LAST_UPGRADE="2026-09-20T08:28:26+02:00"
RUN apk upgrade --no-cache && \
	apk add --no-cache \
		syncthing=2.1.5-r0

ENTRYPOINT ["syncthing", "--gui-address=0.0.0.0:8384", "--no-browser", "--home=/data"]
