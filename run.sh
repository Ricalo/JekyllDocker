#!/bin/bash          

set -o errexit
set -o pipefail
set -o nounset
# set -o xtrace

set -x
bundle install
jekyll build
# Validate HTML, but continue execution even if htmlproofer reports errors
htmlproofer ./_site || true
jekyll "$@"
