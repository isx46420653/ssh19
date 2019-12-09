#! /bin/bash
# @edt ASIX M06 2018-2019
# Instal·lacio
# -------------------------------------

# Creem els usuaris locals
for user in local1 local2 local3
do
  useradd $user
  echo "$user" | passwd --stdin $user
done

# Information Provider a LDAP
bash /opt/docker/auth.sh

# Crear homes del LDAP
#bash /opt/docker/users.sh
