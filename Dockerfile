FROM progrium/busybox

RUN opkg-install bash openssh-client curl coreutils-base64
ENV SHELL /bin/bash
ADD setup setup
ADD install_pmx_agent install_pmx_agent
RUN chmod +x setup
RUN chmod +x install_pmx_agent
CMD "./setup"
