#!/bin/sh
# Refresh the UW mirror (https://ece.uwaterloo.ca/~agurfink/ece750t29/) from the
# `uw-site` branch that GitHub builds on every push. Needs only curl, tar, rsync.
#   On ecelinux:   sh publish-uw.sh
#   From the Mac:  ssh agurfink@ecelinux4.uwaterloo.ca 'sh -s' < publish-uw.sh
# Replaces the contents of DEST, so wait for the GitHub build to finish first.
set -eu
REPO=agurfinkel/uw-ece750t29-1271
DEST="$HOME/public_html/ece750t29"
TMP=$(mktemp -d)
trap 'rm -rf "$TMP"' EXIT
curl -fsSL "https://github.com/$REPO/archive/refs/heads/uw-site.tar.gz" | tar -xz -C "$TMP" --strip-components=1
mkdir -p "$DEST"
rsync -a --delete "$TMP"/ "$DEST"/
chmod -R a+rX "$DEST"
echo "Updated $DEST"
