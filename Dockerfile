############################################################################
#   Source:  https://github.com/haukehein/phusion_passenger-customizable   #
############################################################################

# Get this from:  https://github.com/phusion/passenger-docker
FROM phusion/passenger-customizable:0.9.19
MAINTAINER haukehein <BitCrusher@gmx-topmail.de>

ENV HOME /root
RUN apt-get update && \
apt-get upgrade -y -o Dpkg::Options::="--force-confold" && \
apt-get upgrade  -y && \
apt-get -y autoremove && \
apt-get clean && \
rm -rf /tmp/* /var/tmp/* /var/lib/apt/lists/* && \
echo -e "Done.\nUSAGE:  docker run -it <image> /bin/bash"