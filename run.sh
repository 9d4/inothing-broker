#!/bin/bash

docker-entrypoint.sh rabbitmq-server &

echo "Waiting on RabbitMQ to start"
sleep 20

echo "Creating new inothing vhost"
rabbitmqctl add_vhost /inothing
