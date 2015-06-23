FROM debian:jessie

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get -y install npm nodejs-legacy
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/* \
           /tmp/* \
           /var/tmp/*

RUN npm install -g gulp bower

COPY run-gulp.sh /root/run-gulp.sh

RUN mkdir -p /var/www/.config

# Define working directory.
WORKDIR /data

# Define default command.
CMD ["true"]

