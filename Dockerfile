FROM redis:4-alpine
MAINTAINER Dan Richards <dan.richards@lush.co.uk>

ENV REDIS_MASTER_SERVICE_HOST redis-master
ENV REDIS_MASTER_SERVICE_PORT 6379

ADD start.sh /start.sh

RUN chmod a+x /start.sh

CMD ["ash", "/start.sh"]
