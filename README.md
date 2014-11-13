# AWS SDK for Ruby - V2

[![Gitter](https://badges.gitter.im/Join Chat.svg)](https://gitter.im/aws/aws-sdk-core-ruby?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge) [![Build Status](https://travis-ci.org/aws/aws-sdk-core-ruby.png?branch=master)](https://travis-ci.org/aws/aws-sdk-core-ruby) [![Code Climate](https://codeclimate.com/github/aws/aws-sdk-core-ruby.png)](https://codeclimate.com/github/aws/aws-sdk-core-ruby) [![Coverage Status](https://coveralls.io/repos/aws/aws-sdk-core-ruby/badge.png?branch=master)](https://coveralls.io/r/aws/aws-sdk-core-ruby?branch=master)

This repository contains the code for the V2 AWS SDK for Ruby. For v1 of the 
AWS SDK for Ruby, see [aws/aws-sdk-ruby](http://github.com/aws/aws-sdk-ruby).

## Links of Interest

* [Documentation](http://docs.amazonwebservices.com/sdkforruby/api/frames.html)
* [Release Notes](http://aws.amazon.com/releasenotes/SDK/Ruby/Core)
* [Upgrading Notes](https://github.com/aws/aws-sdk-core-ruby/blob/master/UPGRADING.md)
* [Issues](http://github.com/aws/aws-sdk-core-ruby/issues)
* [Forums](https://forums.aws.amazon.com/forum.jspa?forumID=125)
* [License](http://aws.amazon.com/apache2.0/)

## V2 Preview Release

The V2 AWS SDK for Ruby is currently available as a preview-release. The code
is organized into multiple gems. Installing the preview release of `aws-sdk`
will install two other gems:

* `aws-sdk` - *preview*
* `aws-sdk-resources` - *preview*
* `aws-sdk-core` - **stable**

**Note:** Version 2 of the AWS SDK for Ruby requires Ruby 1.9.3+

## Using V1 and V2 Together

Version 2 uses a the `Aws` namespace, allowing it to be used in the same
application as the v1 AWS SDK for Ruby.

```ruby
AWS::S3 # v1
Aws::S3 # v2
```

Here is an example that demonstrates using V1 and V2 together:

```ruby
# in Gemfile
gem 'aws-sdk-v1'
gem 'aws-sdk', '2.0.6.pre'

# in application
require 'aws-sdk-v1'
require 'aws-sdk'
```

## Configuration

To use the Ruby SDK, you must configure a region and credentials.

### Region

You can construct a service client with a region:

```ruby
ec2 = Aws::EC2::Client.new(region:'us-west-2')
```

Alternatively, a default region can be loaded from one of the following
locations:

* `Aws.config[:region]`
* `ENV['AWS_REGION']`

See [this document](http://docs.amazonwebservices.com/general/latest/gr/rande.html)
for a list of supported regions by service.

### Credentials

You can construct a client with credentials like so:

```ruby
s3 = Aws::S3::Client.new(credentials: credentials)
```

The credentials object may be an instance of:

* `Aws::Credentials`
* `Aws::SharedCredentials`
* `Aws::InstanceProfileCredentials`
* `Aws::AssumeRoleCredentials`

Default credentials are searched for in the following locations:

* `Aws.config[:credentials]`
* `ENV['AWS_ACCESS_KEY_ID']` and `ENV['AWS_SECRET_ACCESS_KEY']`
* The shared credentials ini file at `HOME/.aws/credentials`
* From an instance profile when running on EC2

Please take care to **never commit credentials to source control**.  We
strongly recommended loading credentials from an external source.

```ruby
require 'json'
creds = JSON.load(File.read('secrets.json'))
creds = Aws::Credentials.new(creds['AccessKeyId'], creds['SecretAccessKey'])
```

## Clients (aws-sdk-core) - **stable**

Construct a service client to make API calls. Each client provides a 1-to-1
mapping of methods to API operations. Refer to the
[API documentation](http://docs.amazonwebservices.com/sdkforruby/api/frames.html)
for a complete list of available methods.

```ruby
# list buckets in Amazon S3
s3 = Aws::S3::Client.new
resp = s3.list_buckets
resp.buckets.map(&:name)
#=> ["bucket-1", "bucket-2", ...]
```

API methods accept a hash of additional request parameters and return
structured response data.

```ruby
# list the first two objects in a bucket
resp = s3.list_objects(bucket: 'aws-sdk-core', max_keys: 2)
resp.contents.each do |object|
  puts "#{object.key} => #{object.etag}"
end
```

### Paging Responses

Many AWS operations limit the number of results returned with each response.
To make it easy to get the next page of results, every AWS response object
is enumerable:

```ruby
# yields one response object per API call made, this will enumerate
# EVERY object in the named bucket
s3.list_objects(bucket:'aws-sdk').each do |response|
  puts response.contents.map(&:key)
end
```

If you prefer to control paging yourself, response objects have helper methods
that control paging:

```ruby
# make a request that returns a truncated response
resp = s3.list_objects(bucket:'aws-sdk')

resp.last_page? #=> false
resp.next_page? #=> true
resp = resp.next_page # send a request for the next response page
resp = resp.next_page until resp.last_page?
```

### Waiters

Waiters are a utility methods that poll for a particular state. To invoke a
waiter, call `#wait_until` on a client:

```ruby
begin
  ec2.wait_until(:instance_running, instance_ids:['i-12345678'])
  puts "instance running"
rescue Aws::Waiters::Errors::WaiterFailed => error
  puts "failed waiting for instance running: #{error.message}"
end
```

Waiters have sensible default polling intervals and maximum attempts. You can
configure these per call to `#wait_until`. You can also register callbacks
that are triggered before each polling attempt and before waiting.
See the API documentation for more examples and for a list of supported
waiters per service.

## Resources (aws-sdk-resource) - *preview release*

Resource interfaces are object oriented classes that represent actual
resources in AWS. Resource interfaces built ontop of API clients and provide
additional functionality.

```ruby
s3 = Aws::S3::Resource.new

# reference an existing bucket
bucket = s3.bucket('aws-sdk')

# enumerate every object in a bucket
bucket.objects.each do |obj|
  puts "#{object.key} => #{obj.etag}"
end

# batch operations, delete objects in batches of 1k
bucket.objects(prefix: '/tmp-files/').delete

# single object operations
obj = bucket.object('hello')
obj.put(body:'Hello World!')
obj.etag
obj.delete
```

Resource interfaces are currently in a preview period. While quite stable,
expect possible minor changes before a final stable version is released.
Currently there are Resource-oriented interfaces for:

* `Aws::S3`
* `Aws::IAM`
* `Aws::EC2` - partial
* `Aws::SQS`
* `Aws::SNS`
* `Aws::Glacier`
* `Aws::OpsWorld`
* `Aws::CloudFormation`

## REPL - AWS Interactive Console

The `aws-sdk-core` gem ships with a REPL that provides a simple way to test
the Ruby SDK. You can access the REPL by running `aws.rb` from the command line.

```ruby
$ aws.rb
Aws> ec2.describe_instances.reservations.first.instances.first
[Aws::EC2::Client 200 0.216615 0 retries] describe_instances()
<struct
 instance_id="i-1234567",
 image_id="ami-7654321",
 state=<struct  code=16, name="running">,
 ...>
```

You can enable HTTP wire logging by setting the verbose flag:

```
$ aws.rb -v
```

In the REPL, every service class has a helper that returns a new client object.
Simply downcase the service module name for the helper:

* `Aws::S3` => `s3`
* `Aws::EC2` => `ec2`
* etc

## Versioning

This project uses [semantic versioning](http://semver.org/). You can safely
express a dependency on a major version and expect all minor and patch versions
to be backwards compatible.

## Supported Services

| Service Name                        | Service Class             | API Versions                   |
| ----------------------------------- | ------------------------- | ------------------------------ |
| Amazon CloudFront                   | CloudFront                | 2014-10-21                     |
| Amazon CloudSearch                  | CloudSearch               | 2013-01-01                     |
| Amazon CloudSearch Domain           | CloudSearchDomain         | 2013-01-01                     |
| Amazon CloudWatch                   | CloudWatch                | 2010-08-01                     |
| Amazon CloudWatch Logs              | CloudWatchLogs            | 2014-03-28                     |
| Amazon Cognito Identity             | CognitoIdentity           | 2014-06-30                     |
| Amazon Cognito Sync                 | CognitoSync               | 2014-06-30                     |
| Amazon DynamoDB                     | DynamoDB                  | 2012-08-10                     |
| Amazon Elastic Compute Cloud        | EC2                       | 2014-10-01                     |
| Amazon Elastic MapReduce            | EMR                       | 2009-03-31                     |
| Amazon Elastic Transcoder           | ElasticTranscoder         | 2012-09-25                     |
| Amazon ElastiCache                  | ElastiCache               | 2014-09-30                     |
| Amazon Glacier                      | Glacier                   | 2012-06-01                     |
| Amazon Kinesis                      | Kinesis                   | 2013-12-02                     |
| Amazon Redshift                     | Redshift                  | 2012-12-01                     |
| Amazon Relational Database Service  | RDS                       | 2014-09-01                     |
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
| AWS CodeDeploy                      | CodeDeploy                | 2014-10-06                     |
| AWS Config                          | ConfigService             | 2014-10-17                     |
| AWS Data Pipeline                   | DataPipeline              | 2012-10-29                     |
| AWS Direct Connect                  | DirectConnect             | 2012-10-25                     |
| AWS Elastic Beanstalk               | ElasticBeanstalk          | 2010-12-01                     |
| AWS Identity and Access Management  | IAM                       | 2010-05-08                     |
| AWS Import/Export                   | ImportExport              | 2010-06-01                     |
| AWS Key Management Service          | KMS                       | 2014-11-01                     |
| AWS Lambda                          | Lambda                    | 2014-11-11                     |
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
