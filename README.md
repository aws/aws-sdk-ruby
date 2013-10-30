# AWS SDK Core [![Build Status](https://travis-ci.org/aws/aws-sdk-core-ruby.png?branch=master)](https://travis-ci.org/aws/aws-sdk-core-ruby) [![Code Climate](https://codeclimate.com/github/aws/aws-sdk-core-ruby.png)](https://codeclimate.com/github/aws/aws-sdk-core-ruby)

Version 2.0 of the official AWS SDK for Ruby. For the version 1.0 of the Ruby SDK, see [aws/aws-sdk-ruby](http://github.com/aws/aws-sdk-ruby).

## Installing

There is currently no RubyGem published for this release, but the code can be
installed via Bundler with the following Gemfile contents:

```ruby
gem 'aws-sdk-core', github: 'aws/aws-sdk-core-ruby'
```

Note: AWS SDK Core requires Ruby 1.9.3+.

## Usage

```ruby
require 'aws-sdk-core'

response = Aws.ec2.describe_instances
p response.reservations.first.instances.first
```

You can also use `bin/aws.rb` to evaluate code through a REPL:

```ruby
$ bundle exec bin/aws.rb
Aws> Aws.ec2.describe_instances.reservations.first.instances.first
=> <struct
 instance_id="i-1234567",
 image_id="ami-7654321",
 state=<struct  code=16, name="running">,
 ...>

Aws> Aws.s3.list_buckets.buckets.map(&:name)
=> ["bucket-1", "bucket-2", ...]
```

## Supported Services

| Service Name                        | Service Class             | API Versions                   |
| ----------------------------------- | ------------------------- | ------------------------------ |
| Amazon CloudFront                   | Aws::CloudFront           | 2012-05-05 &mdash; 2013-08-26  |
| Amazon CloudSearch                  | Aws::CloudSearch          | 2011-02-01                     |
| Amazon CloudWatch                   | Aws::CloudWatch           | 2010-08-01                     |
| Amazon DynamoDB                     | Aws::DynamoDB             | 2011-12-05 &mdash; 2012-08-10  |
| Amazon Elastic Compute Cloud        | Aws::EC2                  | 2013-06-15 &mdash; 2013-10-01  |
| Amazon Elastic MapReduce            | Aws::EMR                  | 2009-03-31                     |
| Amazon Elastic Transcoder           | Aws::ElasticTranscoder    | 2012-09-25                     |
| Amazon ElastiCache                  | Aws::ElastiCache          | 2012-11-15 &mdash; 2013-06-15  |
| Amazon Glacier                      | Aws::Glacier              | 2012-06-01                     |
| Amazon Redshift                     | Aws::Redshift             | 2012-12-01                     |
| Amazon Relational Database Service  | Aws::RDS                  | 2013-01-10 &mdash; 2013-05-15  |
| Amazon Route 53                     | Aws::Route53              | 2012-12-12                     |
| Amazon Simple Email Service         | Aws::SES                  | 2010-12-01                     |
| Amazon Simple Notification Service  | Aws::SNS                  | 2010-03-31                     |
| Amazon Simple Queue Service         | Aws::SQS                  | 2012-11-05                     |
| Amazon Simple Storage Service       | Aws::S3                   | 2006-03-01                     |
| Amazon Simple Workflow Service      | Aws::SWF                  | 2012-01-25                     |
| Amazon SimpleDB                     | Aws::SDB                  | 2009-04-15                     |
| Auto Scaling                        | Aws::AutoScaling          | 2011-01-01                     |
| AWS CloudFormation                  | Aws::CloudFormation       | 2010-05-15                     |
| AWS Data Pipeline                   | Aws::DataPipeline         | 2012-10-29                     |
| AWS Direct Connect                  | Aws::DirectConnect        | 2012-10-25                     |
| AWS Elastic Beanstalk               | Aws::ElasticBeanstalk     | 2010-12-01                     |
| AWS Identity and Access Management  | Aws::IAM                  | 2010-05-08                     |
| AWS Import/Export                   | Aws::ImportExport         | 2010-06-01                     |
| AWS OpsWorks                        | Aws::OpsWorks             | 2013-02-18                     |
| AWS Security Token Service          | Aws::STS                  | 2011-06-15                     |
| AWS Storage Gateway                 | Aws::StorageGateway       | 2012-06-30                     |
| AWS Support                         | Aws::Support              | 2013-04-15                     |
| Elastic Load Balancing              | Aws::ElasticLoadBalancing | 2012-06-01                     |

## License

AWS SDK Core is distributed under the
[Apache License, Version 2.0](http://www.apache.org/licenses/LICENSE-2.0).
