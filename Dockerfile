FROM hetsh/alpine:20260127-7
ARG LAST_UPGRADE="2026-05-17T14:16:26+02:00"
RUN apk upgrade --no-cache && \
	apk add --no-cache \
		syncthing=2.0.16-r2

ENTRYPOINT ["syncthing", "--gui-address=0.0.0.0:8384", "--no-browser", "--home=/data"]
