FROM ruby:2.4.1

ENV app /cryptospike
RUN mkdir -p $app

WORKDIR $app
