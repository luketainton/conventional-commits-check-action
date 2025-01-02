#!/bin/sh -l

set -e

PRTITLE="$1"
echo "PRTITLE" > /tmp/prtitle.txt
conventional-pre-commit --no-color --force-scope --strict --verbose /tmp/prtitle.txt
