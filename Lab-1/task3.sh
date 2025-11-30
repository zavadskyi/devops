#!/bin/bash

DIR_NAME=$(date +%Y-%m-%d)

if [ -d "$DIR_NAME" ]; then
  echo "Directory exists: $DIR_NAME"
else
  mkdir "$DIR_NAME"
  echo "Directory created: $DIR_NAME"
fi
