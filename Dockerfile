FROM python:3.6.0-alpine

# ENV http_proxy 'http://url:port'
# ENV https_proxy 'http://url:port'

# breathe includes Sphinx
RUN pip install breathe parse_cmake && \
    apk update && \
    apk upgrade && \
    apk add --no-cache doxygen && \
    mkdir /docs

VOLUME /openmw

WORKDIR /openmw/docs

CMD ["/bin/ash"]
