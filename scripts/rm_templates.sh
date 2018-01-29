#!/bin/bash
set -x
IFS=!
ARRAY=(`find composes/* -printf %f!`)
COUNT="0"

for i in ${ARRAY[*]}; do
    rm -rf /tmp/${i}
done

rm -rf /tmp/nginx