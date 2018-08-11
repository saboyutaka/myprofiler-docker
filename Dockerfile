FROM debian:stretch

RUN apt-get update && \
    apt-get install -y wget

RUN wget https://github.com/KLab/myprofiler/releases/download/0.1/myprofiler.linux_amd64.tar.gz && \
    tar xf myprofiler.linux_amd64.tar.gz && \
    mv myprofiler /usr/local/bin/ && \
    rm myprofiler.linux_amd64.tar.gz

ENTRYPOINT ["myprofiler"]
