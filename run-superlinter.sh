#!/bin/bash

# Get the directory path of this script.
CMD_HOME=$( dirname "$(realpath -s "$0")" )
REPO_ROOT=${CMD_HOME}

docker run -e RUN_LOCAL=true -v "${REPO_ROOT}":/tmp/lint github/super-linter:v4
