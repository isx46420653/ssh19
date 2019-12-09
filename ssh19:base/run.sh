#!/bin/bash
# edt ASIX-M06 2019-2020
# -------------------

docker run --name ldapserver -h ldapserver --net ldapnet -d isx46420653/ldapserver:latest

