FROM pataquets/ubuntu:trusty

RUN \
  apt-get update && \
  DEBIAN_FRONTEND=noninteractive \
    apt-get -y install \
      stunnel \
  && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/

ENTRYPOINT [ "stunnel", "-f" ]
CMD [ "--help" ]
