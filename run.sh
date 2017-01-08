#!/bin/bash          

set -o errexit
set -o pipefail
set -o nounset
# set -o xtrace

set -x
env NOKOGIRI_USE_SYSTEM_LIBRARIES=true bundle install
# Validate HTML in a folder outside of the mapped volume
# serve the site at the same time
jekyll build --destination ../test && htmlproofer ./_site || true &
jekyll "$@"
