#!/bin/bash
echo "Begin";mkdir -p /opt/backup;tar -czf /opt/backup/$(hostname -s)-$(date +'%y.%m.%d-%H:%M:%S').tgz /etc;echo "End"
