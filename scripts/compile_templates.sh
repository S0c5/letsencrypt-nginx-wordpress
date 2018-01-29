#!/bin/bash

export $(cat config.env | xargs) > /dev/null 2>&1
export upstream='$upstream'
export proxy_add_x_forwarded_for='$proxy_add_x_forwarded_for'
export host='$host'
export request_uri='$request_uri'
export remote_addr='$remote_addr'
export host='$host'
export scheme='$scheme'

export ssl_certificate_pem=/etc/nginx/certs/live/$host_name/fullchain.pem
export ssl_certificate_key=/etc/nginx/certs/live/$host_name/privkey.pem

IFS=!
ARRAY=(`find composes/* -printf %f!`)
COUNT="0"
for i in ${ARRAY[*]}; do
    envsubst < composes/${i} > /tmp/${i}
done

envsubst < nginx/nginx.conf.tpl > nginx/nginx.conf
rsync -r nginx  /tmp/