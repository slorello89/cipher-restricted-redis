FROM redis

WORKDIR /redis
RUN mkdir /etc/redis
ADD . ./
RUN chmod 777 entrypoint.sh
EXPOSE 6379

CMD [ "/redis/entrypoint.sh" ]