FROM ubuntu:latest
MAINTAINER jusrob <jrob48@gmail.com>

ENV LANG en_US.UTF-8
ENV TERM linux
RUN locale-gen $LANG

RUN apt-get update -q  && \
    apt-get install python python-dev python-pip python-lxml libffi-dev libssl-dev git-core -qy && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /var/tmp/*

RUN pip install pyopenssl

RUN git clone https://github.com/RuudBurger/CouchPotatoServer.git /couchpotato

VOLUME ["/data"]
EXPOSE 5050

CMD /usr/bin/python /couchpotato/CouchPotato.py --console_log --data_dir=/data --config_file=/data/couchpotato.ini
