FROM ruby:2.4.1

RUN apt-get update && apt-get install -qq -y --no-install-recommends \
  vim build-essential nodejs mysql-client

RUN mkdir /app

WORKDIR /app

ADD Gemfile /app
ADD Gemfile.lock /app

COPY ./Dockerfiles/docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]

ENV BUNDLE_PATH=/bundle \
  BUNDLE_BIN=/bundle/bin \
  GEM_HOME=/bundle

ENV PATH="${BUNDLE_BIN}:${PATH}"
