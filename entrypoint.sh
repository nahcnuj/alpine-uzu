#!/usr/bin/env sh
set -e

export USER=user
export HOME=/home/${USER}

uid=$(stat -c "%u" .)
gid=$(stat -c "%g" .)

if [ "${uid}" -ne 0 ]; then
    if [ "$(id -g ${USER})" -ne ${gid} ]; then
        # change builder's and HOME's gid to pwd's one
        getent group ${gid} >/dev/null 2>&1 || groupmod -g ${gid} ${USER}
        chgrp -R ${gid} ${HOME}
    fi
    if [ "$(id -u ${USER})" -ne ${uid} ]; then
        # change builder's uid to pwd's one
        usermod -u ${uid} ${USER}
    fi
fi

# change owner under HOME to builder
find ${HOME} \
    | xargs -r chown -f ${uid}:${gid} \
    || true

su-exec ${USER} $@
