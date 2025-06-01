#!/bin/bash
echo "Begin";
mkdir -p /backup/;
tar -czf /backup/$(hostname -s)-$(date +'%y.%m.%d-%H.%M.%S').tgz -C /etc/NetworkManager system-connections;
echo "End"

# tar -tf - просмотр архива
# tar -xvzf - распакоука
