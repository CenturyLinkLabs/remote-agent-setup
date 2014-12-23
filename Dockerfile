FROM progrium/busybox

RUN opkg-install bash openssh-client curl coreutils-base64
ENV SHELL /bin/bash
ADD setup setup
RUN chmod +x setup
CMD "./setup"

#docker run -e ETCD_API=172.17.42.1:4001 cakk/agent
