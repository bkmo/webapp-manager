#!/bin/bash
# !!! For development you can load the extension on about:debugging as a temporary addon
# by pointing it to the manifest.json instead of signing the whole extension

# For production, you need to sign the firefox extension using the `web-ext` package
# You can acquire credentials for signing here: https://addons.mozilla.org/en-US/developers/addon/api/key/
# https://stackoverflow.com/questions/34608873/how-to-sign-a-firefox-extension
set -e

web-ext sign -s firefox-extension --api-key 17497112:277 --api-secret d27210efbd913e243bb0aaee8eac0ef31da54abab6c4b721c1a903f5ab147466

mv web-ext-artifacts/* firefox-extension.xpi
rm -r web-ext-artifacts
