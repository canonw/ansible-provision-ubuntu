#!/bin/bash

# Update role variables to groups_vars

set -o xtrace

cd "$(cd "$(dirname "$0")"; pwd -P)/../"

[[ -s "group_vars/all.yml" ]] && mv -f "group_vars/all.yml" "group_vars/all.yml~"

cat \
  <(echo -e "---\n") \
  <(cat group_vars/groups.yml | grep -v '^---$' | grep -v '^[[:space:]]*$') \
  > group_vars/all.yml

cat \
  <(echo -e "\n# cat from roles defaults") \
  <(cat roles/*/defaults/main.yml | grep -v '^---$' | grep -v '^[[:space:]]*$') \
  >> group_vars/all.yml

