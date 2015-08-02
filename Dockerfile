#
# CentOS Dockerfile
#
# https://github.com/ossianpe/docker-build-centos
#
# Run with:
#    docker build -t="dockerfile/centos" .
#

# Pull base image.
FROM centos:6.6

# Install.
RUN \
  yum install -y make automake gcc gcc-c++ kernel-devel && \
  yum install -y byobu curl git htop man unzip vim wget

# Add files.
ADD ./root/.bashrc /root/.bashrc
ADD ./root/.gitconfig /root/.gitconfig
ADD ./root/.scripts /root/.scripts

# Set environment variables.
ENV HOME /root

# Define working directory.
WORKDIR /root

# Define default command.
CMD ["bash"]
