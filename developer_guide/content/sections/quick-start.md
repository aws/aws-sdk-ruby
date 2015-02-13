---
title: Quick Start
---

## Installation

```bash
$ gem install aws-sdk
```

```ruby
gem 'aws-sdk', '~> 2'
```

## Configuration

```ruby
require 'aws-sdk'

# comment here
Aws.config[:region] = 'us-west-2'
Aws.config[:credentials] = Aws::Credentials.new('akid', 'secret')
```

## Make an API request

```ruby
s3 = Aws::S3::Client.new
resp = s3.list_buckets
resp.buckets.map(&:name)
#=> ['aws-sdk', ...]
```
