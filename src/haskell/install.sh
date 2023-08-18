#!/bin/bash
set -e

sudo apt-get update
sudo apt-get install -y --no-install-recommends \
    git curl xz-utils gcc make libtinfo5 libgmp-dev\
    zlib1g-dev bash sudo procps lsb-release ca-certificates\
    build-essential libffi-dev libgmp-dev libgmp10 libncurses-dev\
    libncurses5 libtinfo5 libicu-dev libncurses-dev z3 locales locales-all
