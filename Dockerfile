FROM ruby:2.7.1

RUN mkdir /myapp
WORKDIR /myapp
COPY . /myapp
COPY Gemfile /myapp/Gemfile
RUN bundle install

