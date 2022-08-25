FROM ubuntu

RUN apt-get update
RUN apt-get install git -y 
RUN apt-get install gcc -y
RUN apt-get install make -y
RUN DEBIAN_FRONTEND=noninteractive apt-get install pkg-config -y --assume-yes
RUN apt-get install libssl-dev -y
RUN git clone https://github.com/redis/redis 
WORKDIR /redis
RUN git checkout 7.0.4
RUN make BUILD_TLS=yes
RUN mkdir /etc/redis
ADD . ./
RUN chmod 777 entrypoint.sh
EXPOSE 6379

CMD [ "/redis/entrypoint.sh" ]