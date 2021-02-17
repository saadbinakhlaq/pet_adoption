# Dockerfile
FROM ruby:2.7
LABEL maintainer="saad.18@gmail.com"
RUN apt-get update -qq && apt-get install -y \
  build-essential \
  vim \
  postgresql-client
ENV APPDIR /opt/app
RUN mkdir -p $APPDIR
WORKDIR $APPDIR
COPY Gemfile /opt/app/Gemfile
COPY Gemfile.lock /opt/app/Gemfile.lock
RUN bundle install
COPY . /opt/app

EXPOSE 8080
CMD ["rails", "s", "-p", "8080", "-b", "0.0.0.0"]