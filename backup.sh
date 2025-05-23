#!/bin/bash
echo "Begin";mkdir -p /opt/backup;tar -czf /opt/backup/$(hostname -s)-$(date +'%Y-%m-%d_%H:%M:%S').tgz /etc;echo "End"
