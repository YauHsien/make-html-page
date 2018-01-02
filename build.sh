#!/bin/bash
command=$1
prefix=$2
if [ "${command}" = "create" ] || [ "${command}" = "new" ]; then
    make scaffold prefix=${prefix}
elif [ "${command}" = "apply" ] || [ "${command}" = "generate" ] || [ "${command}" = "gen" ]; then
    make page prefix=${prefix}
fi;
