#!/bin/bash
# edt ASIX-M06 2019-2020
# -------------------

docker run --rm --name ldapserver -h ldapserver --net ldapnet -d isx46420653/ldapserver:latest

docker run --rm --name ssh -h ssh --net ldapnet -p 2022:22 -v homes:/tmp/home --privileged -d isx46420653/ssh19:base
