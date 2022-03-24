#!/bin/bash

echo "Waiting on RabbitMQ to start. After 30s, vhost will be created" 
sleep 20

echo "Creating new inothing vhost"
rabbitmqctl add_vhost /inothing
