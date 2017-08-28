#!/bin/bash

set -eo pipefail

SOURCE="/home/delarson/genotype_and_copynumber/scripts/Post_Merge_Sx_only.wdl"
INPUTS="$1"
OPTIONS="$2"
DEPENDENCIES="/home/delarson/gen_cn_config/wdl_dependencies.zip"

curl -v "localhost:8000/api/workflows/v1" -F workflowSource=@${SOURCE} -F workflowInputs=@${INPUTS} -F workflowOptions=@${OPTIONS} -F workflowDependencies=@${DEPENDENCIES}
