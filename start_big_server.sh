#!/bin/bash

set -u

CONFIG=/home/delarson/server/jes.conf
JAR=/home/delarson/cromwell-29.jar

LOG_MODE=standard java -Xmx25000M -Dconfig.file=$CONFIG -jar $JAR server 2>&1
