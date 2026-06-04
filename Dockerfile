FROM hetsh/alpine:20260127-7
ARG LAST_UPGRADE="2026-06-04T16:20:54+02:00"
RUN apk upgrade --no-cache && \
	apk add --no-cache \
		syncthing=2.1.0-r0

ENTRYPOINT ["syncthing", "--gui-address=0.0.0.0:8384", "--no-browser", "--home=/data"]
