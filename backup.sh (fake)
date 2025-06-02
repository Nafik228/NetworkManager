#!/bin/bash
echo "Begin";
mkdir -p /backup/;
tar -czf /backup/$(hostname -s)-$(date +'%y.%m.%d-%H.%M.%S').tgz /etc;
echo "End"

# tar -xvzf - распакоука
