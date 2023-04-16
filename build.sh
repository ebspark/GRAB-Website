#!/bin/bash

if [ -z ${GRAB_SERVER_URL+x} ]; then GRAB_SERVER_URL="https://grab-api-dev.slindev.workers.dev/grab/v1/"; fi
if [ -z ${GRAB_PAGE_URL+x} ]; then GRAB_PAGE_URL="https://develop.grab-website.pages.dev"; fi

echo "const SERVER_URL = '${GRAB_SERVER_URL}'" > website/src/configuration.js
echo "const PAGE_URL = '${GRAB_PAGE_URL}'" >> website/src/configuration.js
echo "const VIEWER_PATH = '/levels/viewer/'" >> website/src/configuration.js
echo "const MAX_FORMAT_VERSION = 7" >> website/src/configuration.js

cd website
npm run build
