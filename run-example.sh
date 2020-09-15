#! /bin/bash

EXAMPLE_NAME=$1
PLATFORM=$2

# If a different example is in the temp-project folder it needs to be nuked first.
if [ -d temp-project ]; then
    LAST_EXAMPLE_NAME="$(head --lines=1 temp-project/README.md)"
    if [ $LAST_EXAMPLE_NAME != "$EXAMPLE_NAME" ]; then
        # Prompt for confirmation before deleting the last example build.
        # Source: https://stackoverflow.com/a/1885534
        read -p "temp-project already contains a build of example $LAST_EXAMPLE_NAME. Clear it and continue? " -n 1 -r
        echo    # (optional) move to a new line
        if [[ $REPLY =~ ^[Yy]$ ]]
        then
            rm -rf temp-project
        else
            exit 0
        fi
    fi
fi

cp -r Template temp-project && \
cp -r examples/$EXAMPLE_NAME/* temp-project && \
cd temp-project && lime test $PLATFORM 