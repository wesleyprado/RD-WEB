FROM ruby:2.6.5

ENV LANG C.UTF-8

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /YourProjectPath

WORKDIR /YourProjectPath

ADD Gemfile /YourProjectPath/Gemfile
ADD Gemfile.lock /YourProjectPath/Gemfile.lock

RUN gem install bundler:2.1.4
RUN bundle install
ADD . /YourProjectPath