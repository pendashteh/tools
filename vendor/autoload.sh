#!/usr/bin/env bash
for project in $(ls $(dirname $BASH_SOURCE)); do
  if [ -f $project/$project ]; then
    source $project/$project
  fi
done
