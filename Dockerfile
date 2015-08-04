# change to your ruby version
FROM ruby:2.2

# install nodejs
RUN apt-get update && apt-get install -y nodejs --no-install-recommends && rm -rf /var/lib/apt/lists/*

# install database clients
RUN apt-get update && apt-get install -y mysql-client postgresql-client sqlite3 --no-install-recommends && rm -rf /var/lib/apt/lists/*

# Change to your rails version
ENV RAILS_VERSION 4.2.3

RUN gem install rails --version $RAILS_VERSION

# Uncomment if you want to use wkhtmltoimage, imagekit
# RUN apt-get update && apt-get install -y lsb

ENV app /usr/src/app
RUN mkdir $app
WORKDIR $app

ENV BUNDLE_PATH /box

ADD . $app

EXPOSE 3000

CMD ["bundle", "exec", "rails", "s", "-b", "0.0.0.0"]






