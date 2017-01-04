#!/bin/bash          

set -o errexit
set -o pipefail
set -o nounset
# set -o xtrace

set -x
bundle install
jekyll build
htmlproofer --url-ignore "/feed.xml" ./_site
jekyll serve "$@"
