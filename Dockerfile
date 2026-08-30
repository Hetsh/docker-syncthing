FROM hetsh/alpine:20260805-2
ARG LAST_UPGRADE="2026-08-30T11:13:14+02:00"
RUN apk upgrade --no-cache && \
	apk add --no-cache \
		syncthing=2.1.3-r0

ENTRYPOINT ["syncthing", "--gui-address=0.0.0.0:8384", "--no-browser", "--home=/data"]
