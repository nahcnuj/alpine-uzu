FROM rakudo-star:2020.01-alpine

RUN apk --no-cache add \
        curl \
        git \
        su-exec

RUN zef install Uzu

WORKDIR /home/user
COPY entrypoint.sh .

STOPSIGNAL SIGINT

ENTRYPOINT [ "./entrypoint.sh" ]
CMD [ "build" ]
