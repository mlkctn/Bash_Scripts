#!/bin/bash
# Description: Format the output of admin commands

date | awk '{print $1}'
uptime | awk '{print $3}'
df -h | grep root
