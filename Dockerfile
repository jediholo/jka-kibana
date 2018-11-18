# JKA Kibana based on the official Kibana image, itself based on CentOS 7
FROM docker.elastic.co/kibana/kibana:6.5.0
LABEL maintainer="Fabien Crespel <fabien@crespel.net>"

# Files
COPY ./root /

# Optimize Kibana before building final image
# https://github.com/elastic/kibana/issues/6057
RUN /usr/local/bin/kibana-docker 2>&1 | grep -m 1 "Optimization of .* complete"
