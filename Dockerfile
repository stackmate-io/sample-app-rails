FROM ruby:2.5-alpine

RUN apk add --update build-base nodejs npm postgresql-dev
RUN npm install -g yarn

RUN mkdir /railsapp
WORKDIR /railsapp

COPY Gemfile Gemfile.lock ./
COPY package.json yarn.lock ./

RUN bundle install --binstubs

COPY . .

CMD puma -C config/puma.rb
RUN yarn install --check-files
