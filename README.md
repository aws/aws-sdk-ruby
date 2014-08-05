# AWS SDK Core [![Build Status](https://travis-ci.org/aws/aws-sdk-core-ruby.png?branch=master)](https://travis-ci.org/aws/aws-sdk-core-ruby) [![Code Climate](https://codeclimate.com/github/aws/aws-sdk-core-ruby.png)](https://codeclimate.com/github/aws/aws-sdk-core-ruby) [![Coverage Status](https://coveralls.io/repos/aws/aws-sdk-core-ruby/badge.png)](https://coveralls.io/r/aws/aws-sdk-core-ruby)

This library is in a developer preview period.

We are working on version 2 of the official AWS SDK for Ruby.  This library
is the first part of our v2 strategy.  AWS SDK Core is an updated set of
service clients.  Our goal is to make them more flexible and extensible
than the clients in version 1 of the Ruby SDK.

For version 1.0 of the Ruby SDK, see [aws/aws-sdk-ruby](http://github.com/aws/aws-sdk-ruby).

### 2.0.0.rc14 Upgrading Notes

RC14 simplifies the API versioning strategy. This may require small changes for
users that use the API version locking options. Also, there are minor changes
when configuring raw endpoints.

* Versioned client classes removed, e.g. `Aws::S3::Client::V20060301.new` should
  be replaced with `Aws::S3::Client.new` The `:api_version` constructor option
  is no longer accepted.

* Aws helper methods for client construction deprecated; For example,
  calling `Aws.s3` will generate a deprecation warning. Call `Aws::S3::Client.new`
  instead. Top-level helpers will be removed as of v2.0.0 final.

* When configuring an `:endpoint` directly, you must now specify the
  HTTP scheme, e.g. "http://localhost:3000", instead of "localhost:3000".
  Please note, this should only be done for testing. Normally you only
  need to configure a `:region`.

### 2.0.0.rc11 Upgrading Notes

RC 11 requires a few minor updates.  These should be the final public-facing
changes before 2.0.0 final.

* The prefered constructor for services is now using the client
  class, example:

      # deprecated, will be removed for 2.0.0 final
      Aws::S3.new

      # preferred
      Aws::S3::Client.new

* The `:raw_json` option for JSON protocol based services has been
  renamed to `:simple_json`

* The short name for Aws::SimpleDB has been renamed from `sdb` to
  `simpledb`.

## Links of Interest

* [Documentation](http://docs.amazonwebservices.com/sdkforruby/api/frames.html)
* [Release Notes](http://aws.amazon.com/releasenotes/SDK/Ruby/Core)
* [Issues](http://github.com/aws/aws-sdk-core-ruby/issues)
* [Forums](https://forums.aws.amazon.com/forum.jspa?forumID=125)
* [License](http://aws.amazon.com/apache2.0/)

## Installation

You can install the AWS SDK Core from rubygems:

    gem install aws-sdk-core --pre

If you are using Bundler, we recommend that you express a major version
dependency (this library uses [semantic versioning](http://semver.org/)):

    gem 'aws-sdk-core', '~> 2.0'

Until the final release becomes available on Rubygems, leave off the version
dependency in your Gemfile so Bundler can find it.

**Note:** AWS SDK Core requires Ruby 1.9.3+.

## Configuration

To use the Ruby SDK, you must configure a region and your AWS account
access credentials.

### Region

You can export a default region to ENV:

```
export AWS_REGION='us-west-2'
```

Or you can configure a region in code:

```ruby
# default region
Aws.config[:region] = 'us-west-2'

# per-service :region
s3 = Aws::S3::Client.new(region:'us-east-1')
```

### Credentials

Please take care to never commit credentials to source control.  We
strongly recommended loading credentials from an external source.  By default,
the Ruby SDK will attempt to load credentials from the following
sources:

* `ENV['AWS_ACCESS_KEY_ID']` and `ENV['AWS_SECRET_ACCESS_KEY']`
* The shared credentials ini file at `HOME/.aws/credentials`
* From an instance profile when running on EC2

Alternatively, you can specify your credentials directly using one of the
following credential classes:

* `Aws::Credentials`
* `Aws::SharedCredentials`
* `Aws::InstanceProfileCredentials`

```ruby
# default credentials
Aws.config[:credentials] = Aws::SharedCredentials.new(profile_name:'myprofile')

# per-service :credentials
s3 = Aws::S3::Client.new(credentials: Aws::SharedCredentials.new(profile_name:'myprofile')
```

## Basic Usage

To make a request, you need to construct a service client.

```ruby
s3 = Aws::S3::Client.new
```

Each client provides one method per API operation. Refer to the
[API documentation](http://docs.amazonwebservices.com/sdkforruby/api/frames.html)
for a complete list of available methods.

```ruby
# get a list of buckets in Amazon S3
resp = s3.list_buckets
puts resp.buckets.map(&:name)
```

API methods accept a request params as a hash, and return structured responses.

```ruby
resp = s3.list_objects(bucket: 'aws-sdk-core', max_keys: 2)
resp.contents.each do |object|
  puts "#{object.key} => #{object.etag}"
end
```

## Paging Responses

Many AWS operations limit the number of results returned with each response.
A simple paging interface is provided that works with every AWS request.

```ruby
# yields once per response, even works with non-paged requests
s3.list_objects(bucket:'aws-sdk').each do |resp|
  puts resp.contents.map(&:key)
end
```

If you prefer to control paging yourself, all returned responses have the
same helper methods:

```ruby
# make a request that returns a truncated response
resp = s3.list_objects(bucket:'aws-sdk')

resp.last_page? #=> false
resp.next_page? #=> true
resp = resp.next_page # send a request for the next response page
resp = resp.next_page until resp.last_page?
```

## Interactive Console

AWS SDK Core ships with a REPL that acts as an interactive console. You
can access the REPL by running `aws.rb` from the command line.

```ruby
$ aws.rb
Aws> ec2.describe_instances.reservations.first.instances.first
<struct
 instance_id="i-1234567",
 image_id="ami-7654321",
 state=<struct  code=16, name="running">,
 ...>
```

Call `#service_classes` to get a list of available service helpers and
the class they construct.

```ruby
Aws> service_clients
{:autoscaling=>Aws::AutoScaling::Client,
 :cloudformation=>Aws::CloudFormation::Client,
 :cloudfront=>Aws::CloudFront::Client,
 :cloudsearch=>Aws::CloudSearch::Client,
 ...
 :swf=>Aws::SWF::Client}
```

## Versioning

This project uses [semantic versioning](http://semver.org/). When the project
leaves the developer preview state, we will continue by versioning from
`2.0`.  Until then, all versions will be suffixed by a release candidate
version.

## Supported Services

| Service Name                        | Service Class             | API Versions                   |
| ----------------------------------- | ------------------------- | ------------------------------ |
| Amazon CloudFront                   | CloudFront                | 2014-05-31                     |
| Amazon CloudSearch                  | CloudSearch               | 2013-01-01                     |
| Amazon CloudSearch Domain           | CloudSearchDomain         | 2013-01-01                     |
| Amazon CloudWatch                   | CloudWatch                | 2010-08-01                     |
| Amazon CloudWatch Logs              | CloudWatchLogs            | 2014-03-28                     |
| Amazon Cognito Identity             | CognitoIdentity           | 2014-06-30                     |
| Amazon Cognito Sync                 | CognitoSync               | 2014-06-30                     |
| Amazon DynamoDB                     | DynamoDB                  | 2012-08-10                     |
| Amazon Elastic Compute Cloud        | EC2                       | 2014-06-15                     |
| Amazon Elastic MapReduce            | EMR                       | 2009-03-31                     |
| Amazon Elastic Transcoder           | ElasticTranscoder         | 2012-09-25                     |
| Amazon ElastiCache                  | ElastiCache               | 2014-07-15                     |
| Amazon Glacier                      | Glacier                   | 2012-06-01                     |
| Amazon Kinesis                      | Kinesis                   | 2013-12-02                     |
| Amazon Redshift                     | Redshift                  | 2012-12-01                     |
| Amazon Relational Database Service  | RDS                       | 2013-09-09                     |
| Amazon Route 53                     | Route53                   | 2013-04-01                     |
| Amazon Route 53 Domains             | Route53Domains            | 2014-05-15                     |
| Amazon Simple Email Service         | SES                       | 2010-12-01                     |
| Amazon Simple Notification Service  | SNS                       | 2010-03-31                     |
| Amazon Simple Queue Service         | SQS                       | 2012-11-05                     |
| Amazon Simple Storage Service       | S3                        | 2006-03-01                     |
| Amazon Simple Workflow Service      | SWF                       | 2012-01-25                     |
| Amazon SimpleDB                     | SimpleDB                  | 2009-04-15                     |
| Auto Scaling                        | AutoScaling               | 2011-01-01                     |
| AWS CloudFormation                  | CloudFormation            | 2010-05-15                     |
| AWS CloudTrail                      | CloudTrail                | 2013-11-01                     |
| AWS Data Pipeline                   | DataPipeline              | 2012-10-29                     |
| AWS Direct Connect                  | DirectConnect             | 2012-10-25                     |
| AWS Elastic Beanstalk               | ElasticBeanstalk          | 2010-12-01                     |
| AWS Identity and Access Management  | IAM                       | 2010-05-08                     |
| AWS Import/Export                   | ImportExport              | 2010-06-01                     |
| AWS OpsWorks                        | OpsWorks                  | 2013-02-18                     |
| AWS Security Token Service          | STS                       | 2011-06-15                     |
| AWS Storage Gateway                 | StorageGateway            | 2013-06-30                     |
| AWS Support                         | Support                   | 2013-04-15                     |
| Elastic Load Balancing              | ElasticLoadBalancing      | 2012-06-01                     |

## License

This library is distributed under the
[apache license, version 2.0](http://www.apache.org/licenses/LICENSE-2.0.html)

```no-highlight
copyright 2013. amazon web services, inc. all rights reserved.

licensed under the apache license, version 2.0 (the "license");
you may not use this file except in compliance with the license.
you may obtain a copy of the license at

    http://www.apache.org/licenses/license-2.0

unless required by applicable law or agreed to in writing, software
distributed under the license is distributed on an "as is" basis,
without warranties or conditions of any kind, either express or implied.
see the license for the specific language governing permissions and
limitations under the license.
```
