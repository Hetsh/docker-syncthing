FROM hetsh/alpine:20260127-3
ARG LAST_UPGRADE="2026-03-13T18:08:55+01:00"
RUN apk upgrade --no-cache && \
	apk add --no-cache \
		syncthing=2.0.15-r0

ENTRYPOINT ["syncthing", "--gui-address=0.0.0.0:8384", "--no-browser", "--home=/data"]
