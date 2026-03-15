FROM intel/oneapi-basekit:2025.0.2-0-devel-ubuntu24.04

ARG user=jupyter

SHELL ["/bin/bash", "-c"]
RUN apt-get update && \
    apt-get install -y wget && \
    apt update && \
    apt install -y intel-oneapi-compiler-fpga && \
    apt-get clean

RUN userdel ubuntu
RUN useradd -m $user -s /bin/bash

USER $user

CMD ["/bin/bash"]
