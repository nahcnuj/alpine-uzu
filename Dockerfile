FROM rakudo-star:2020.01-alpine

RUN apk --no-cache add \
        curl \
        git \
        su-exec

RUN zef install Uzu

WORKDIR /home/user
COPY ./entrypoint.sh /usr/local/bin

STOPSIGNAL SIGINT

ENTRYPOINT [ "/usr/local/bin/entrypoint.sh" ]
CMD [ "build" ]
