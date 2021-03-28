FROM debian:testing
MAINTAINER climent

# additional files
##################

ENV LANG en_US.UTF-8
RUN apt update && apt upgrade --yes && apt install --yes locales && apt install --yes build-essential git sudo vim git-buildpackage

#RUN ["/sbin/apk", "add", "--no-cache", "bash"]
#RUN ["/bin/bash", "/root/install3.sh"]

RUN ["/usr/sbin/adduser", "--disabled-password", "--home", "/home/build", "build"]
RUN ["/usr/sbin/adduser", "build", "sudo"]

# map / to host defined config path (used to store configuration from app)
VOLUME /home/build

# run tini to manage graceful exit and zombie reaping
#ENTRYPOINT ["/sbin/tini", "-g", "--"]

# run script to set uid, gid and permissions
#CMD ["/bin/bash", "/usr/local/bin/init.sh"]
