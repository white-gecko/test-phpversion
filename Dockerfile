FROM debian:jessie

# Let the conatiner know that there is no tty
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update

RUN apt-get install -y \
    php5=5.6.7+dfsg-1 php5-fpm=5.6.7+dfsg-1 php5-common=5.6.7+dfsg-1 php5-cli=5.6.7+dfsg-1

CMD ["/usr/bin/php", "-v"]
