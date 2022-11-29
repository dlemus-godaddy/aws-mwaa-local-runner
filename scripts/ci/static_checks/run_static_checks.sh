#!/usr/bin/env bash

set -eo pipefail

if (($# < 1)); then
    echo
    echo "Missing SHAs of incoming commit!"
    exit 1
fi

COMMIT_SHA="${1}"

shift


python -m pip install --user pre-commit flake8==3.9.1 flake8-colors==0.1.9 \
    --constraint "https://raw.githubusercontent.com/apache/airflow/constraints-2.2.2/constraints-3.7.txt"
export PATH=~/.local/bin:${PATH}

if [[ $# == "0" ]]; then
    pre-commit run --all-files --show-diff-on-failure --color always \
        --from-ref "${COMMIT_SHA}^" --to-ref "${COMMIT_SHA}"
else
    for pre_commit_check in "${@}"; do
        pre-commit run "${pre_commit_check}" --all-files --show-diff-on-failure --color always \
            --from-ref "${COMMIT_SHA}^" --to-ref "${COMMIT_SHA}"
    done
fi
