#!/bin/bash

set -euo pipefail
echo "running flake8"
flake8 "$@"
