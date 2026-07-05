FROM hetsh/alpine:20260127-9
ARG LAST_UPGRADE="2026-07-05T15:16:17+02:00"
RUN apk upgrade --no-cache && \
	apk add --no-cache \
		syncthing=2.1.1-r0

ENTRYPOINT ["syncthing", "--gui-address=0.0.0.0:8384", "--no-browser", "--home=/data"]
