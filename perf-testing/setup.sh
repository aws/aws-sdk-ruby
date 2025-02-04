#!/bin/bash

sudo yum -y install \
  zip unzip \
  tar \
  make \
  gcc \
  git \
  libicu \
  libxml2 libxml2-devel \
  gcc-c++ glibc-headers openssl-devel readline libyaml-devel readline-devel zlib zlib-devel libffi-devel \
  rustc \
  awscli wget

curl -L https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.1.tar.gz | tar xz && \
  cd ruby-3.4.1 && \
  ./configure --enable-yjit && make && make install

cd ..

git clone https://github.com/aws/aws-sdk-ruby.git
cd aws-sdk-ruby
git switch -c cbor-perf-testing
bundle config set —local path 'vendor/bundle' && bundle install