#! /bin/bash

EXAMPLE_NAME=$1
PLATFORM=$2

# TODO if a different example is in the temp-project folder it should be nuked first.
if [ -d temp-project ] && [ "$(head --lines=1 temp-project/README.md)" != "$PLATFORM" ]; then
    rm -rf temp-project
fi

cp -r Template temp-project && \
cp -r examples/$EXAMPLE_NAME/* temp-project && \
cd temp-project && lime test $PLATFORM 