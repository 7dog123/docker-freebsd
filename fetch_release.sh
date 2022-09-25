#!/usr/bin/env bash
set -eux -o pipefail

. VERSION

WORKDIR="$(dirname "$(pwd)/$0")"
pushd "$WORKDIR"
  curl -O -q https://download.freebsd.org/ftp/releases/amd64/${RELVER}/base.txz
  curl -O -q https://download.freebsd.org/ftp/releases/amd64/${RELVER}/lib32.txz
popd
