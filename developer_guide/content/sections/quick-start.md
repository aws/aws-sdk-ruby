# Quick Start

## Installation

```language-bash
$ gem install aws-sdk
```

```language-ruby
gem 'aws-sdk', '~> 2'
```

## Configuration

```language-ruby
require 'aws-sdk'

Aws.config[:region] = 'us-west-2'
Aws.config[:credentials] = Aws::Credentials.new('akid', 'secret')
```

## Make an API request

```language-ruby
s3 = Aws::S3::Client.new
resp = s3.list_buckets
resp.buckets.map(&:name)
#=> ['aws-sdk', ...]
```

