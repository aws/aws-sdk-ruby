# AWS SDK for Ruby - Version 2

[![Gitter](https://badges.gitter.im/Join Chat.svg)](https://gitter.im/aws/aws-sdk-ruby?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge) [![Build Status](https://travis-ci.org/aws/aws-sdk-ruby.png?branch=master)](https://travis-ci.org/aws/aws-sdk-ruby) [![Code Climate](https://codeclimate.com/github/aws/aws-sdk-ruby.png)](https://codeclimate.com/github/aws/aws-sdk-ruby) [![Coverage Status](https://coveralls.io/repos/aws/aws-sdk-ruby/badge.svg?branch=master)](https://coveralls.io/r/aws/aws-sdk-ruby?branch=master)

This is version 2 of the `aws-sdk` gem.  **Version 1 can be found in the
[aws-sdk-v1 branch](https://github.com/aws/aws-sdk-ruby/tree/aws-sdk-v1).**

## Links of Interest

* [Documentation](http://docs.aws.amazon.com/sdkforruby/api/frames.html)
* [Change Log](https://github.com/aws/aws-sdk-ruby/blob/master/CHANGELOG.md)
* [Upgrading Notes](https://github.com/aws/aws-sdk-ruby/blob/master/UPGRADING.md)
* [Issues](http://github.com/aws/aws-sdk-ruby/issues)
* [Feature Requests](https://github.com/aws/aws-sdk-ruby/blob/master/FEATURE_REQUESTS.md)
* [Gitter Channel](https://gitter.im/aws/aws-sdk-ruby)
* [License](http://aws.amazon.com/apache2.0/)

## NameError: uninitialized constant AWS

If you receive this error, you likely have upgraded to version 2 of the
`aws-sdk` gem unintentionally. Version 2 uses the `Aws` namespace, not `AWS`.
This allows version 1 and version 2 to be used in the same application.

See [this blog post](http://ruby.awsblog.com/post/TxFKSK2QJE6RPZ/Upcoming-Stable-Release-of-AWS-SDK-for-Ruby-Version-2) for more information.

## Installation

The AWS SDK for Ruby is available as the `aws-sdk` gem from RubyGems. Please
use a major version when expressing a dependency on `aws-sdk`.

```ruby
gem 'aws-sdk', '~> 2'
```

## Configuration

You need to configure `:credentials` and a `:region` to make API calls. It is recommended that you provide these via your environment. This makes it easier to rotate credentials and it keeps your secrets out of source control.

The SDK searches the following locations for credentials:

* `ENV['AWS_ACCESS_KEY_ID']` and `ENV['AWS_SECRET_ACCESS_KEY']`
* The shared credentials ini file at `~/.aws/credentials` ([more information](http://blogs.aws.amazon.com/security/post/Tx3D6U6WSFGOK2H/A-New-and-Standardized-Way-to-Manage-Credentials-in-the-AWS-SDKs))
* From an instance profile when running on EC2

The SDK searches the following locations for a region:

* `ENV['AWS_REGION']`

### Configuration Options

You can configure default credentials and region via `Aws.config`. **In version 2, `Aws.config` is a vanilla Ruby hash, not a method like it was in version 1**.

```ruby
Aws.config.update({
  region: 'us-west-2',
  credentials: Aws::Credentials.new('akid', 'secret'),
})
```

Valid region and credentials options are:

* `:region` - A string like `us-west-2`. See [this document](http://docs.aws.amazon.com/general/latest/gr/rande.html) for a list of supported regions by service.
* `:credentials` - An instance of one of the following classes:
  * [`Aws::Credentials`](http://docs.aws.amazon.com/sdkforruby/api/Aws/Credentials.html)
  * [`Aws::SharedCredentials`](http://docs.aws.amazon.com/sdkforruby/api/Aws/SharedCredentials.html)
  * [`Aws::InstanceProfileCredentials`](http://docs.aws.amazon.com/sdkforruby/api/Aws/InstanceProfileCredentials.html)
  * [`Aws::AssumeRoleCredentials`](http://docs.aws.amazon.com/sdkforruby/api/Aws/AssumeRoleCredentials.html)

You may also pass configuration options directly to resource and client constructors. These options take precedence over the environment and `Aws.config` defaults.

```ruby
# resource constructors
ec2 = Aws::EC2::Resource.new(region:'us-west-2', credentials: credentials)

# client constructors
ec2 = Aws::EC2::Client.new(region:'us-west-2', credentials: credentials)
```

Please take care to **never commit credentials to source control**.  We strongly recommended loading credentials from an external source.

```ruby
require 'json'
creds = JSON.load(File.read('secrets.json'))
Aws.config[:credentials] = Aws::Credentials.new(creds['AccessKeyId'], creds['SecretAccessKey'])
```

## API Clients (aws-sdk-core gem)

Construct a service client to make API calls. Each client provides a 1-to-1
mapping of methods to API operations. Refer to the
[API documentation](http://docs.aws.amazon.com/sdkforruby/api/frames.html)
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

## Resource Interfaces (aws-sdk-resources gem)

Resource interfaces are object oriented classes that represent actual
resources in AWS. Resource interfaces built on top of API clients and provide
additional functionality.

```ruby
s3 = Aws::S3::Resource.new

# reference an existing bucket by name
bucket = s3.bucket('aws-sdk')

# enumerate every object in a bucket
bucket.objects.each do |obj|
  puts "#{obj.key} => #{obj.etag}"
end

# batch operations, delete objects in batches of 1k
bucket.objects(prefix: '/tmp-files/').delete

# single object operations
obj = bucket.object('hello')
obj.put(body:'Hello World!')
obj.etag
obj.delete
```

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

| Service Name                             | Service Class        | API Version |
| ---------------------------------------- | -------------------- | ----------- |
| AWS CloudFormation                       | CloudFormation       | 2010-05-15  |
| AWS CloudTrail                           | CloudTrail           | 2013-11-01  |
| AWS CodeDeploy                           | CodeDeploy           | 2014-10-06  |
| AWS Config                               | ConfigService        | 2014-11-12  |
| AWS Data Pipeline                        | DataPipeline         | 2012-10-29  |
| AWS Direct Connect                       | DirectConnect        | 2012-10-25  |
| AWS Elastic Beanstalk                    | ElasticBeanstalk     | 2010-12-01  |
| AWS Identity and Access Management       | IAM                  | 2010-05-08  |
| AWS Import/Export                        | ImportExport         | 2010-06-01  |
| AWS Key Management Service               | KMS                  | 2014-11-01  |
| AWS Lambda                               | Lambda               | 2015-03-31  |
| AWS Lambda                               | LambdaPreview        | 2014-11-11  |
| AWS OpsWorks                             | OpsWorks             | 2013-02-18  |
| AWS Security Token Service               | STS                  | 2011-06-15  |
| AWS Storage Gateway                      | StorageGateway       | 2013-06-30  |
| AWS Support                              | Support              | 2013-04-15  |
| Amazon CloudFront                        | CloudFront           | 2014-11-06  |
| Amazon CloudHSM                          | CloudHSM             | 2014-05-30  |
| Amazon CloudSearch                       | CloudSearch          | 2013-01-01  |
| Amazon CloudSearch Domain                | CloudSearchDomain    | 2013-01-01  |
| Amazon CloudWatch                        | CloudWatch           | 2010-08-01  |
| Amazon CloudWatch Logs                   | CloudWatchLogs       | 2014-03-28  |
| Amazon Cognito Identity                  | CognitoIdentity      | 2014-06-30  |
| Amazon Cognito Sync                      | CognitoSync          | 2014-06-30  |
| Amazon DynamoDB                          | DynamoDB             | 2012-08-10  |
| Amazon EC2 Container Service             | ECS                  | 2014-11-13  |
| Amazon ElastiCache                       | ElastiCache          | 2015-02-02  |
| Amazon Elastic Compute Cloud             | EC2                  | 2015-03-01  |
| Amazon Elastic MapReduce                 | EMR                  | 2009-03-31  |
| Amazon Elastic Transcoder                | ElasticTranscoder    | 2012-09-25  |
| Amazon Glacier                           | Glacier              | 2012-06-01  |
| Amazon Kinesis                           | Kinesis              | 2013-12-02  |
| Amazon Machine Learning                  | MachineLearning      | 2014-12-12  |
| Amazon Redshift                          | Redshift             | 2012-12-01  |
| Amazon Relational Database Service       | RDS                  | 2014-10-31  |
| Amazon Route 53                          | Route53              | 2013-04-01  |
| Amazon Route 53 Domains                  | Route53Domains       | 2014-05-15  |
| Amazon Simple Email Service              | SES                  | 2010-12-01  |
| Amazon Simple Notification Service       | SNS                  | 2010-03-31  |
| Amazon Simple Queue Service              | SQS                  | 2012-11-05  |
| Amazon Simple Storage Service            | S3                   | 2006-03-01  |
| Amazon Simple Systems Management Service | SSM                  | 2014-11-06  |
| Amazon Simple Workflow Service           | SWF                  | 2012-01-25  |
| Amazon SimpleDB                          | SimpleDB             | 2009-04-15  |
| Amazon WorkSpaces                        | WorkSpaces           | 2015-04-08  |
| Auto Scaling                             | AutoScaling          | 2011-01-01  |
| Elastic Load Balancing                   | ElasticLoadBalancing | 2012-06-01  |

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
