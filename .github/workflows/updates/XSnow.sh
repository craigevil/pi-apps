#!/bin/bash

webVer=$(wget -qO- https://www.ratrabbit.nl/ratrabbit/xsnow/downloads/index.html | grep "Download debian package for Raspbian (buster): "  | sed 's/<p>//g ; s+</p>++g' | sed 's+Download debian package for Raspbian (buster): <a href="./../../../downloads/xsnow/xsnow_3.4.3~pre1-1_armhf.deb">++g ; s+</a>++g' | grep -oP '^[^\_]*\_\K[^\_]+')
armhf_url="https://www.ratrabbit.nl/downloads/xsnow/xsnow_${webVer}_armhf.deb"
arm64_url="https://www.ratrabbit.nl/downloads/xsnow/xsnow_${webVer}_arm64.deb"

source $GITHUB_WORKSPACE/.github/workflows/update_github_script.sh
