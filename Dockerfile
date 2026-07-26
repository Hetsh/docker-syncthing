FROM hetsh/alpine:20260127-10
ARG LAST_UPGRADE="2026-07-26T11:17:40+02:00"
RUN apk upgrade --no-cache && \
	apk add --no-cache \
		syncthing=2.1.2-r1

ENTRYPOINT ["syncthing", "--gui-address=0.0.0.0:8384", "--no-browser", "--home=/data"]
