FROM hetsh/alpine:20260127-2
ARG LAST_UPGRADE="2026-02-15T15:53:33+01:00"
RUN apk upgrade --no-cache && \
	apk add --no-cache \
		syncthing=2.0.14-r0

ENTRYPOINT ["syncthing", "--gui-address=0.0.0.0:8384", "--no-browser", "--config=/config", "--data=/data"]
