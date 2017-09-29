FROM ruby:2.4.1

RUN apt-get update && apt-get install -qq -y --no-install-recommends \
  vim build-essential nodejs mysql-client

RUN mkdir /app

WORKDIR /app

ADD Gemfile /app

RUN bundle install
