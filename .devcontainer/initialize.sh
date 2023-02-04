#!/bin/bash

set -euxo pipefail
export HOME=/

echo " # This is the user config file" > $HOME/.gitconfig
git config --global --add safe.directory /var/lib/docker/codespacemount/workspace/data-platform-handbook/themes/hugo-theme-relearn
git submodule update --init