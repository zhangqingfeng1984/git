#!/usr/bin/env bash
VERSION=$1
ARTIFACT=$2
echo "$VERSION $ARTIFACT"
echo $VERSION > release.version
git add .
git commit -m 'release update'
git push

tar cvzf `$ARTIFACT-$VERSION.tgz` *
echo 'deploy done'