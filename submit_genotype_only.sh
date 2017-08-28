#!/bin/bash

set -eo pipefail

SOURCE="/home/delarson/partial-workflows/scripts/Genotype_only.wdl"
INPUTS="$1"
OPTIONS="$2"
DEPENDENCIES="/home/delarson/general-config/wdl_dependencies.zip"

curl -v "localhost:8000/api/workflows/v1" -F wdlSource=@${SOURCE} -F workflowInputs=@${INPUTS} -F workflowOptions=@${OPTIONS} -F wdlDependencies=@${DEPENDENCIES}
