#!/usr/bin/env bash
#
# run.sh - Generate a VM image via Packer.
#

PACKER_LOG=1; export PACKER_LOG
PACKER_LOG_PATH=./packer.log; export PACKER_LOG_PATH

# My data directory is here. Packer will not start up if this 
# directory exists, so remove it:
dest_dir="/data/templates/os/centos/7"
if [ -d "$dest_dir" ]; then
	rm -rfv "$dest_dir"
fi

# Check for variable files and use them if they exist:
if [ -f secrets.json ] && [ -f variables.json ]; then
    packer build -var-file secrets.json \
        -var-file variables.json \
        packer.json
else
        packer build packer.json
fi

