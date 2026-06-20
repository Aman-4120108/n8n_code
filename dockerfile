FROM n8nio/n8n:latest

USER root

RUN mkdir -p /usr/local/python && \
    wget https://www.python.org/ftp/python/3.12.11/Python-3.12.11.tgz && \
    tar -xzf Python-3.12.11.tgz && \
    cd Python-3.12.11 && \
    ./configure --enable-optimizations && \
    make -j$(nproc) && \
    make install

RUN python3 --version

USER node