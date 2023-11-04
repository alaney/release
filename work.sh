#!/bin/bash

if ! type "jq" > /dev/null; then
    echo please install jq
fi

echo $VERSION
pushd ../ui-webserver

branch=$(git symbolic-ref HEAD | sed -e 's,.*/\(.*\),\1,')
projectName=$(git config --local remote.origin.url|sed -n 's#.*/\([^.]*\)\.git#\1#p')

popd