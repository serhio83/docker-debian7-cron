FROM debian:7
MAINTAINER Serhio <syrus.sergey@gmail.com>

RUN export DEBIAN_FRONTEND=noninteractive \
	&& apt-get -qqy update \
	&& apt-get -qqy upgrade \
	&& apt-get -qqy install cron

ADD start.sh /start.sh
ADD cron_command.sh /cron_command.sh

CMD ["/start.sh"]
