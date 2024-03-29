FROM rakudo-star:2021.04-alpine

RUN apk --no-cache add \
        curl \
        git \
        shadow \
        su-exec

RUN zef install "Uzu:ver<0.3.6>"

RUN adduser -D user
WORKDIR /home/user
COPY ./entrypoint.sh /usr/local/bin

STOPSIGNAL SIGINT

ENTRYPOINT [ "/usr/local/bin/entrypoint.sh" ]
CMD [ "uzu", "build" ]
