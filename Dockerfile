FROM alpine:latest

LABEL maintainer="7digital <no-reply@7digital.com>"

ENV PATH="/opt/bin:$PATH" \
    SOURCE_URL="https://github.com/jay0lee/GAM.git" \
	SOURCE_TAG="v5.30"

ADD .bashrc /root/.bashrc

RUN apk add --update --no-cache bash curl git python3 py3-cryptography py-openssl py-pip \
    && rm -rf /var/cache/apk/*

RUN mkdir -p /opt/bin \
    && git clone --branch ${SOURCE_TAG} ${SOURCE_URL} /opt/gam \
    && ln -s /opt/gam/src/gam.py /opt/bin/gam \
    && touch /opt/gam/src/{nobrowser.txt,noupdatecheck.txt}

RUN cd /opt/gam/src && \
	pip3 install -r requirements.txt

WORKDIR /root
ENTRYPOINT ["/bin/bash"]
