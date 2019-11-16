# JKA Kibana based on the official Kibana image, itself based on CentOS 7
FROM docker.elastic.co/kibana/kibana:7.4.2
LABEL maintainer="Fabien Crespel <fabien@crespel.net>"

# Files
COPY ./root /
