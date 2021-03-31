#!/usr/bin/env bash

local old_name=$1

local new_name=$2

[ -z "${old_name}${new_name}" ] && echo "Usage: cmd [old_name] [new_name]" && exit

# Rename the local branch to the new name
git branch -m <old_name> <new_name>

# Delete the old branch on remote - where <remote> is, for example, origin
git push <remote> --delete <old_name>

# Or shorter way to delete remote branch [:]
git push <remote> :<old_name>

# Push the new branch to remote
git push <remote> <new_name>

# Reset the upstream branch for the new_name local branch
git push <remote> -u <new_name>

