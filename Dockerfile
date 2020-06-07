FROM rakudo-star:2020.01-alpine

RUN apk --update add \
    curl \
    git

RUN zef install Uzu

CMD [ "uzu", "build" ]
