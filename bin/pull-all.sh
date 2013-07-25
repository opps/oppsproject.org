#!/bin/bash
find /home/opps/mirror/ -type d -name .git | xargs -n 1 dirname | sort | while read line; do echo $line && cd $line && git pull; done