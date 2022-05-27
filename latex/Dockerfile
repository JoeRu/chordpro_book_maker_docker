
FROM registry.gitlab.com/islandoftex/images/texlive:latest

RUN apt-get update \
    && apt-get autoremove -y && apt-get clean -y && rm -rf /var/lib/apt/lists/* /tmp/library-scripts

# [Optional] Uncomment this section to install additional packages.
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends git pandoc imagemagick

COPY *.sh /usr/bin/
RUN chmod +x /usr/bin/*.sh

COPY test.tex /root/
WORKDIR /root/
RUN lualatex test.tex
