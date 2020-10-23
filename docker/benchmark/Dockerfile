FROM ruby:2.6

RUN mkdir -p /app

WORKDIR /app

ADD Gemfile /app

RUN gem install bundler
RUN bundle install

ADD benchmark.rb /app
