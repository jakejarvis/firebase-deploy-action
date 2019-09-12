#!/bin/sh

set -e

if [ -z "$FIREBASE_TOKEN" ]; then
  echo "FIREBASE_TOKEN is not set. Quitting."
  exit 1
fi

if [ -n "$FIREBASE_PROJECT_ID" ]; then
  firebase use --add $FIREBASE_PROJECT_ID
fi

sh -c "firebase deploy $*"
