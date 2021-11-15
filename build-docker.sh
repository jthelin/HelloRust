#!/bin/bash

# Get the directory path of this script.
CMD_HOME=$( dirname "$(realpath -s "$0")" )
REPO_ROOT=${CMD_HOME}/..

docker build --tag hellorust "${REPO_ROOT}" --file "${REPO_ROOT}/Dockerfile"
