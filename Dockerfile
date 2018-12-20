FROM kalilinux/kali-linux-docker

LABEL MAINTAINER="Joaquin Polo <joaquin.polo@gmail.com>"
ENV DEBIAN_FRONTEND noninteractive
RUN set -x \
    && apt-get -yqq update \
    && apt-get -yqq dist-upgrade \
    && apt-get install -yqq metasploit-framework \
    && apt-get -yqq update \
    && apt-get -yqq dist-upgrade \
    && apt-get clean \
    && wget https://github.com/v1s1t0r1sh3r3/airgeddon/archive/master.zip \
    && unzip master.zip \
    && cd airgeddon-master


CMD ["bash", "airgeddon.sh"]
