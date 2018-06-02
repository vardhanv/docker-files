FROM ubuntu:bionic


RUN  \
    export DEBIAN_FRONTEND=noninteractive && \
    echo "US/Pacific" > /etc/timezone && \
    apt-get update && \
    apt-get dist-upgrade -y && \
    apt-get install -y --no-install-recommends tzdata && \
    dpkg-reconfigure --frontend noninteractive tzdata && \
    apt-get install -y --no-install-recommends build-essential software-properties-common apt-utils apt-transport-https && \
    add-apt-repository ppa:ubuntu-toolchain-r/test -y && \
    apt-get update -y  && \
    apt-get install -y  --no-install-recommends git-core vim  \ 
    curl \ 
    cmake \
    cscope \ 
    gdb \
    sudo \
    git \
    wget \
    ssh \
    openssh-server \
    net-tools \
    doxygen \ 
    libboost-all-dev \
    libgflags-dev \
    libgoogle-glog-dev \
    libhdf5-serial-dev \
    libopencv-dev \
    libprotobuf-dev \
    libsnappy-dev \
    protobuf-compiler \
    python3-dev \
    python3-numpy \
    python3-pip \
    python3-setuptools \
    python3-scipy  \
    python3-skimage \
    graphviz

RUN apt-get install gcc-7 g++-7 -y && \
    update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-7 60 --slave /usr/bin/g++ g++ /usr/bin/g++-7 && \ 
    update-alternatives --config gcc 

