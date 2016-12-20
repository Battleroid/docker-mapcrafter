FROM ubuntu:latest

WORKDIR ["/data"]
VOLUME ["/data"]

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install python wget apt-transport-https apt-utils -y
RUN echo "deb http://packages.mapcrafter.org/ubuntu $(cat /etc/lsb-release | grep -i codename | cut -d'=' -f2) main" | tee /etc/apt/sources.list.d/mapcrafter.list
RUN wget -O /etc/apt/trusted.gpg.d/mapcrafter.gpg http://packages.mapcrafter.org/ubuntu/keyring.gpg
RUN apt-get update
RUN apt-get install mapcrafter -y

ENTRYPOINT ["mapcrafter"]
CMD ["--help"]
