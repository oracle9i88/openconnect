#!/bin/sh

echo "${ANYCONNECT_PASSWORD}" | /usr/sbin/openconnect -u ${ANYCONNECT_USER} --non-inter --passwd-on-stdin ${ANYCONNECT_SERVER}