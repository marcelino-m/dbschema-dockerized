# Run as :
# docker run -it --rm -e DISPLAY=$DISPLAY --net=host  -v /tmp/.X11-unix:/tmp/.X11-unix -v $HOME:/home/dbschema/home marcelino/dbschema

FROM debian:stretch

ENV HOME /home/dbschema
ENV USER dbschema

RUN apt-get update && apt-get install -y \
        default-jre \
        --no-install-recommends \
        && rm -rf /var/lib/apt/lists/* \
        && useradd --create-home --home-dir $HOME $USER

ADD  DbSchema $HOME/.src
RUN  chown -R $USER:$USER $HOME

USER    $USER
WORKDIR $HOME


ENTRYPOINT .src/DbSchema
