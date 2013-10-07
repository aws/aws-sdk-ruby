# AWS SDK for Ruby Core [![Build Status](https://travis-ci.org/aws/aws-sdk-core-ruby.png?branch=master)](https://travis-ci.org/aws/aws-sdk-core-ruby) [![Code Climate](https://codeclimate.com/github/aws/aws-sdk-core-ruby.png)](https://codeclimate.com/github/aws/aws-sdk-core-ruby)

Version 2.0 of the official AWS SDK for Ruby. For the current supported version
of the official SDK, see [aws/aws-sdk-ruby](http://github.com/aws/aws-sdk-ruby).

## Installing

There is currently no RubyGem published for this release, but the code can be
installed via Bundler with the following Gemfile contents:

```ruby
gem 'aws-sdk-core', github: 'aws/aws-sdk-core-ruby'
```

And `bundle install`.

Note: the AWS SDK for Ruby requires Ruby 1.9 or greater.

## Usage

```ruby
require 'aws-sdk-core'

response = Aws.ec2.describe_instances
p response.data.reservations.first.instances.first
```

You can also use `bin/aws-rb` to evaluate code through a REPL:

```ruby
$ bundle exec bin/aws-rb
Aws> client = Aws.ec2
=> #<Aws::EC2::Client::V20130615>
Aws> client.describe_instances.data.reservations.first.instances.first
=> #<struct
 instance_id="i-1234567",
 image_id="ami-7654321",
 state=#<struct  code=16, name="running">,
 ...>
```

## License

The AWS SDK for Ruby Core is distributed under the
[Apache License, Version 2.0](http://www.apache.org/licenses/LICENSE-2.0).
