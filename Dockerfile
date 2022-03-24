FROM rabbitmq:3.9.13

WORKDIR /

ENV RABBITMQ_DEFAULT_USER=admin
ENV RABBITMQ_DEFAULT_PASS=admin

RUN apt-get update; \
	apt-get install --yes --no-install-recommends \
		nano \
	;

COPY enabled_plugin /etc/rabbitmq/enabled_plugins

COPY run.sh ./run.sh
RUN chmod +x ./run.sh

COPY misc.sh /usr/bin/misc.sh
RUN chmod +x /usr/bin/misc.sh

EXPOSE 4369 5671 5672 15691 15692 25672

ENTRYPOINT ["./run.sh"]
