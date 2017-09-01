FROM debian:7
MAINTAINER Serhio <syrus.sergey@gmail.com>

RUN apt-get -y -q update && apt-get -y -q install cron

ADD cronfile /etc/cron.d/cronjob

RUN touch /var/log/cron.log

CMD ["cron", "-f"]
