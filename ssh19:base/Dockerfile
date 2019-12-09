# SSH
FROM fedora:27
LABEL version="1.0"
LABEL author="Pau Martín"
LABEL subject="SSH server 2019-2020"
RUN dnf -y install vim passwd procps tree iproute nmap nss-pam-ldapd authconfig openssh-clients openssh-server
RUN mkdir /opt/docker
COPY * /opt/docker/
RUN chmod +x /opt/docker/startup.sh
WORKDIR /opt/docker
CMD /opt/docker/startup.sh
