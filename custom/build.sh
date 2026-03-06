#!/bin/bash
# shellcheck disable=SC2034

# This file will be sourced by scripts/build.sh to customize the build process


IMG_NAME="hetsh/syncthing"
function test_image {
	docker run \
		--rm \
		--publish 8384:8384/tcp \
	"$IMG_ID"
}
