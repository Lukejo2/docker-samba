# docker-samba
Simple Dockerfile running a basic Samba server for a shared volume

## Overview

Installs Samba 4.x+ on Alpine and shares the directory /shared. Meant to be run with a docker volume at /shared or a kubernetes deployment with a volume at /shared.

## Limitations

This configuration is open for guests. The smb.conf could be modified to allow more samba options.
