#!/usr/bin/env bash
VERSION=$1
ARTIFACT=$2
echo "$VERSION $ARTIFACT"
echo $VERSION > release.version
git add .
git commit -m 'release update'
#git push

FILE=`$ARTIFACT-$VERSION`.tgz
tar cvzf $FILE *
echo 'deploy done'