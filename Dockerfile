FROM kitpages/fizen-web

MAINTAINER Kitpages <system@kitpages.fr>

RUN apt-get -qqq update && DEBIAN_FRONTEND=noninteractive apt-get install -qqq -y \
    build-essential \
    curl \
 && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN curl -sSL https://get.docker.com | sh
