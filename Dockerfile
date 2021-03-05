FROM ruby:2.5
RUN apt-get update && apt-get install -y \
    build-essential \
    node.js \
    postgresql-client \
    yarn
WORKDIR /product-register
#gemfileはrails特有のファイル
COPY Gemfile Gemfile.lock /product-register/
RUN bundle install