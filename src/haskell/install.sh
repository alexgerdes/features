#!/bin/bash
set -e

echo "Activating feature 'haskell'"

export PATH=~/.local/bin/:~/.cabal/bin:~/.ghcup/bin:$PATH
export GHC_VERSION=${GHC}
export BOOTSTRAP_HASKELL_NONINTERACTIVE=yes
export BOOTSTRAP_HASKELL_NO_UPGRADE=no
export BOOTSTRAP_HASKELL_INSTALL_NO_STACK=yes
export BOOTSTRAP_HASKELL_GHC_VERSION=$GHC_VERSION

sudo apt-get update
sudo apt-get install -y --no-install-recommends \
    git curl xz-utils gcc make libtinfo5 libgmp-dev\
    zlib1g-dev bash sudo procps lsb-release ca-certificates\
    build-essential libffi-dev libgmp-dev libgmp10 libncurses-dev\
    libncurses5 libtinfo5 libicu-dev libncurses-dev z3 locales locales-all

# Install ghcup
curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh

# Install global packages.
cabal install --global --lib QuickCheck random ansi-terminal
