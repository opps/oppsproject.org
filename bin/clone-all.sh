#!/bin/bash
GITHUB_ORGANIZATION="opps"
GIT_CLONE_CMD="git clone --quiet --recursive "
REPOLIST=`curl --silent https://api.github.com/orgs/${GITHUB_ORGANIZATION}/repos -q | grep "\"ssh_url\"" | awk -F': "' '{print $2}' | sed -e 's/",//g'`
 
for REPO in $REPOLIST; do
    ${GIT_CLONE_CMD}${REPO}
done