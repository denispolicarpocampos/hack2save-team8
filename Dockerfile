FROM ruby:2.4.1

RUN apt-get update && apt-get install -qq -y --no-install-recommends \
      build-essential nodejs libpq-dev

RUN mkdir -p /var/www/hack2save-team8
WORKDIR /var/www/hack2save-team8
COPY . /var/www/hack2save-team8

RUN bundle install

CMD puma -C config/puma.rb
