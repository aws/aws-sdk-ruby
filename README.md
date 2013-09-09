# AWS SDK for Ruby v2.0 [![Build Status](https://travis-ci.org/aws/aws-sdk-ruby-core.png?branch=master)](https://travis-ci.org/aws/aws-sdk-ruby-core)

Version 2.0 of the official AWS SDK for Ruby. For the current supported version
of the official SDK, see [aws/aws-sdk-ruby](http://github.com/aws/aws-sdk-ruby).

## Installing

There is currently no RubyGem published for this release, but the code can be
installed via Bundler with the following Gemfile contents:

```ruby
gem 'aws-sdk-core', github: 'aws/aws-sdk-core'
gem 'seahorse', github: 'aws/seahorse'
```

And `bundle install`.

Note: the AWS SDK for Ruby requires Ruby 1.9 or greater.

## Usage

```ruby
ec2 = Aws::EC2::Client.new
p ec2.describe_instances.data.reservations.first.instances.first
```

## Contributing

The AWS SDK for Ruby is split up into two packages, the core client codebase
for AWS services contained in this repository, and the underlying HTTP REST
service client library called [Seahorse](http://github.com/aws/seahorse).

If you want to help build out AWS specific functionality of the SDK, this is
the repository to play around with. Note that you will still need a checkout
of the Seahorse repository, but this will be automatically setup for you
by running:

```sh
$ git clone git://github.com/aws/aws-sdk-ruby-core
$ cd aws-sdk-ruby-core
$ rake setup
```

You can then run the tests with:

```sh
$ rake test
```

## License

The AWS SDK for Ruby is distributed under the
[Apache License, Version 2.0](http://www.apache.org/licenses/LICENSE-2.0).
