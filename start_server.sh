#!/bin/bash

set -u

CONFIG=/home/delarson/server/jes.conf
JAR=/home/delarson/cromwell-26.jar

LOG_MODE=standard java -Xmx6750M -Dconfig.file=$CONFIG -jar $JAR server 2>&1
