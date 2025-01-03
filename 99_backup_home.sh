#!/usr/bin/env bash

sudo rsync -axvP \
     --exclude '.bashrc' \
     --exclude '.docker/' \
     --exclude '.cache/' \
     --exclude '.cargo/' \
     /home/ec2-user/ /pv/ec2-user-home/

echo && echo "[${0}] complete on $(date)"
