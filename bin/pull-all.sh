#!/bin/bash
for REPO in "`ls /home/opps/mirror/*`"; do (cd "$REPO"; git pull); done;