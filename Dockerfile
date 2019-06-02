# JKA Kibana based on the official Kibana image, itself based on CentOS 7
FROM docker.elastic.co/kibana/kibana:6.8.0
LABEL maintainer="Fabien Crespel <fabien@crespel.net>"

# Files
COPY ./root /

# Optimize Kibana before building final image
RUN /usr/local/bin/kibana-docker --optimize
