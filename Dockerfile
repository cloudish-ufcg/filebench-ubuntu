FROM ubuntu:latest

MAINTAINER Vinicius Barbosa vinicius.barbosa.silva@ccc.ufcg.edu.br

# instal dependencies
RUN apt-get update && apt-get install -y bison flex


# instal filebench

RUN wget https://github.com/filebench/filebench/releases/download/1.5-alpha3/filebench-1.5-alpha3.zip && unzip filebench-1.5-alpha3.zip && cd cd filebench-1.5-alpha3 && ./configure && make && sudo make install


# to keep the container running in detached mode
CMD ["tail", "-f", "/dev/null"]
