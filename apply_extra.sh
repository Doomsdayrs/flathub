#!/bin/bash -e

echo "Preparing"

INSTALLER="/app/extra/gravitymark.run"

TARGET_DIR="/app/extra/bin"
mkdir -p $TARGET_DIR

ls -a /app/extra/
chmod +x $INSTALLER
yes | exec $INSTALLER --quiet --noexec --noprogress --nox11 --target $TARGET_DIR
