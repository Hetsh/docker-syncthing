FROM hetsh/alpine:20260805-8
ARG LAST_UPGRADE="2026-10-18T07:51:21+02:00"
RUN apk upgrade --no-cache && \
	apk add --no-cache \
		syncthing=2.1.6-r0

ENTRYPOINT ["syncthing", "--gui-address=0.0.0.0:8384", "--no-browser", "--home=/data"]
