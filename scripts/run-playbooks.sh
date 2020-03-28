#!/bin/bash

set -o xtrace

cd "$(cd "$(dirname "$0")"; pwd -P)/../"

ansible-playbook -i hosts playbook.yml --ask-become-pass

