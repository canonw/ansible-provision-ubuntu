#!/bin/bash

# Install required tools to setup playbook

set -o xtrace

cd "$(cd "$(dirname "$0")"; pwd -P)/../"

# Prepare APT dependencies
if [ -x "$(command -v apt-get)" ]; then
    apt-get update
    apt-get -y install ca-certificates curl gcc libffi-dev libssl-dev make python3 python3-dev python3-testresources cowsay sudo
fi

# Install PIP
curl -skL https://bootstrap.pypa.io/get-pip.py | python3

# Install PIP dependencies
pip3 install --upgrade --ignore-installed  --requirement requirements.txt


