#!/usr/bin/env bash
# file: readfile.sh
# usage: ./readfile.sh

filename="softwares"
set -euo pipefail

# 1st argument = path to the file
FILE="${filename <file>}"

# Halt if file doesn't exists or is not readable
if [[ ! -r "$FILE" ]]; then
echo "Error: '$FILE' does not exist or is not readable" >&2
exit 1
fi

# @TODO use the content of this file to pass to the ansible playbook
# Dump its contents to the terminal for now
cat "$FILE"
