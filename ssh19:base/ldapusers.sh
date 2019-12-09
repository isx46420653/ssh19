#!/bin/bash

# Creem els HOMES dels usuaris LDAP
for user in pau pere anna marta jordi admin
do
  # Creem l'usuari SAMBA a la BD local
  echo -e "$user\n$user" | smbpasswd -a $user
  line=$(getent passwd $user)
  gid=$(echo $line | cut -d: -f4)
  home=$(echo $line | cut -d: -f6)
  # Creem el HOME, canviem permisos i afegim XIXA
  if [ ! -d $home ];then 
    mkdir -p $home
    cp -ra /etc/skel/ $home
    chown -R $user.$gid $home
  fi
done
