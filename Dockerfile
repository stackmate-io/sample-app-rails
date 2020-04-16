FROM ruby:2.5-alpine

RUN apk add --update build-base nodejs npm postgresql-dev
RUN npm install -g yarn

RUN mkdir /railsapp
WORKDIR /railsapp

COPY Gemfile Gemfile.lock ./
RUN bundle install --binstubs

COPY . .

COPY package.json yarn.lock ./
RUN yarn install --check-files
