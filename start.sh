#!/bin/bash

set -e

WORKDIR=${WORKDIR:-`pwd`}
CRON_SCHEDULE=${CRON_SCHEDULE:-* * * * *}
CRON_CMD=${CRON_CMD:-/cron_command.sh}
STDOUT_LOC=${STDOUT_LOC:-/proc/1/fd/1}  
STDERR_LOC=${STDERR_LOC:-/proc/1/fd/2}

echo "${CRON_SCHEDULE} cd ${WORKDIR} && ${CRON_CMD} > ${STDOUT_LOC} 2> ${STDERR_LOC}" | crontab -  
exec cron -f
