#!/bin/bash
docker stop ssh ldapserver &> /dev/null
docker rm ssh ldapserver &> /dev/null
echo "Net!"
