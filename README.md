# AWS SDK for Ruby - Version 2

[![Gitter](https://badges.gitter.im/Join Chat.svg)](https://gitter.im/aws/aws-sdk-ruby?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge) [![Build Status](https://travis-ci.org/aws/aws-sdk-ruby.svg?branch=master)](https://travis-ci.org/aws/aws-sdk-ruby) [![Code Climate](https://codeclimate.com/github/aws/aws-sdk-ruby.svg)](https://codeclimate.com/github/aws/aws-sdk-ruby) [![Coverage Status](https://coveralls.io/repos/aws/aws-sdk-ruby/badge.svg?branch=master)](https://coveralls.io/r/aws/aws-sdk-ruby?branch=master)
[![Dependency Status](https://www.versioneye.com/ruby/aws-sdk/badge.svg)](https://www.versioneye.com/ruby/aws-sdk)

This is version 2 of the `aws-sdk` gem.  **Version 1 can be found in the
[aws-sdk-v1 branch](https://github.com/aws/aws-sdk-ruby/tree/aws-sdk-v1).**

## Links of Interest

* [Developer Guide](http://docs.aws.amazon.com/sdk-for-ruby/latest/DeveloperGuide/aws-ruby-sdk-about-ruby-sdk.html)
* [API Docs](http://docs.aws.amazon.com/sdkforruby/api/frames.html)
* [Change Log](https://github.com/aws/aws-sdk-ruby/blob/master/CHANGELOG.md)
* [Upgrading Notes](https://github.com/aws/aws-sdk-ruby/blob/master/UPGRADING.md)
* [Gitter Channel](https://gitter.im/aws/aws-sdk-ruby)

## NameError: uninitialized constant AWS

If you receive this error, you likely have upgraded to version 2 of the
`aws-sdk` gem unintentionally. Version 2 uses the `Aws` namespace, not `AWS`.
This allows version 1 and version 2 to be used in the same application.

* [Additional Information](http://ruby.awsblog.com/post/TxFKSK2QJE6RPZ/Upcoming-Stable-Release-of-AWS-SDK-for-Ruby-Version-2)
* [Migration Guide](https://github.com/aws/aws-sdk-ruby/blob/master/MIGRATING.md)

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
* Unless `ENV['AWS_SDK_CONFIG_OPT_OUT']` is set, the shared configuration files (`~/.aws/credentials` and `~/.aws/config`) will be checked for a `role_arn` and `source_profile`, which if present will be used to attempt to assume a role.
* The shared credentials ini file at `~/.aws/credentials` ([more information](http://blogs.aws.amazon.com/security/post/Tx3D6U6WSFGOK2H/A-New-and-Standardized-Way-to-Manage-Credentials-in-the-AWS-SDKs))
    * Unless `ENV['AWS_SDK_CONFIG_OPT_OUT']` is set, the shared configuration ini file at `~/.aws/config` will also be parsed for credentials.
* From an instance profile when running on EC2, or from the ECS credential provider when running in an ECS container with that feature enabled.

The SDK searches the following locations for a region:

* `ENV['AWS_REGION']`
* Unless `ENV['AWS_SDK_CONFIG_OPT_OUT']` is set, the shared configuration files (`~/.aws/credentials` and `~/.aws/config`) will also be checked for a region selection.

**The region is used to construct an SSL endpoint**. If you need to connect to a non-standard endpoint, you may specify the `:endpoint` option.

### Configuration Options

You can configure default credentials and region via `Aws.config`. **In version 2, `Aws.config` is a vanilla Ruby hash, not a method like it was in version 1**. The `Aws.config` hash takes precedence over environment variables.

```ruby
require 'aws-sdk'

Aws.config.update({
  region: 'us-west-2',
  credentials: Aws::Credentials.new('akid', 'secret')
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
require 'aws-sdk'
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

Waiters are utility methods that poll for a particular state. To invoke a
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

| Gem Name                             | Service Name                             | Service Module                    | API Version |
| ------------------------------------ | ---------------------------------------- | --------------------------------- | ----------- |
| aws-sdk-acm                          | AWS Certificate Manager                  | Aws::ACM                          | 2015-12-08  |
| aws-sdk-apigateway                   | Amazon API Gateway                       | Aws::APIGateway                   | 2015-07-09  |
| aws-sdk-applicationautoscaling       | Application Auto Scaling                 | Aws::ApplicationAutoScaling       | 2016-02-06  |
| aws-sdk-applicationdiscoveryservice  | AWS Application Discovery Service        | Aws::ApplicationDiscoveryService  | 2015-11-01  |
| aws-sdk-autoscaling                  | Auto Scaling                             | Aws::AutoScaling                  | 2011-01-01  |
| aws-sdk-cloudformation               | AWS CloudFormation                       | Aws::CloudFormation               | 2010-05-15  |
| aws-sdk-cloudfront                   | Amazon CloudFront                        | Aws::CloudFront                   | 2016-08-20  |
| aws-sdk-cloudhsm                     | Amazon CloudHSM                          | Aws::CloudHSM                     | 2014-05-30  |
| aws-sdk-cloudsearch                  | Amazon CloudSearch                       | Aws::CloudSearch                  | 2013-01-01  |
| aws-sdk-cloudsearchdomain            | Amazon CloudSearch Domain                | Aws::CloudSearchDomain            | 2013-01-01  |
| aws-sdk-cloudtrail                   | AWS CloudTrail                           | Aws::CloudTrail                   | 2013-11-01  |
| aws-sdk-cloudwatch                   | Amazon CloudWatch                        | Aws::CloudWatch                   | 2010-08-01  |
| aws-sdk-cloudwatchevents             | Amazon CloudWatch Events                 | Aws::CloudWatchEvents             | 2015-10-07  |
| aws-sdk-cloudwatchlogs               | Amazon CloudWatch Logs                   | Aws::CloudWatchLogs               | 2014-03-28  |
| aws-sdk-codecommit                   | AWS CodeCommit                           | Aws::CodeCommit                   | 2015-04-13  |
| aws-sdk-codedeploy                   | AWS CodeDeploy                           | Aws::CodeDeploy                   | 2014-10-06  |
| aws-sdk-codepipeline                 | AWS CodePipeline                         | Aws::CodePipeline                 | 2015-07-09  |
| aws-sdk-cognitoidentity              | Amazon Cognito Identity                  | Aws::CognitoIdentity              | 2014-06-30  |
| aws-sdk-cognitoidentityprovider      | Amazon Cognito Identity Provider         | Aws::CognitoIdentityProvider      | 2016-04-18  |
| aws-sdk-cognitosync                  | Amazon Cognito Sync                      | Aws::CognitoSync                  | 2014-06-30  |
| aws-sdk-configservice                | AWS Config                               | Aws::ConfigService                | 2014-11-12  |
| aws-sdk-databasemigrationservice     | AWS Database Migration Service           | Aws::DatabaseMigrationService     | 2016-01-01  |
| aws-sdk-datapipeline                 | AWS Data Pipeline                        | Aws::DataPipeline                 | 2012-10-29  |
| aws-sdk-devicefarm                   | AWS Device Farm                          | Aws::DeviceFarm                   | 2015-06-23  |
| aws-sdk-directconnect                | AWS Direct Connect                       | Aws::DirectConnect                | 2012-10-25  |
| aws-sdk-directoryservice             | AWS Directory Service                    | Aws::DirectoryService             | 2015-04-16  |
| aws-sdk-dynamodb                     | Amazon DynamoDB                          | Aws::DynamoDB                     | 2012-08-10  |
| aws-sdk-dynamodbstreams              | Amazon DynamoDB Streams                  | Aws::DynamoDBStreams              | 2012-08-10  |
| aws-sdk-ec2                          | Amazon Elastic Compute Cloud             | Aws::EC2                          | 2016-04-01  |
| aws-sdk-ecr                          | Amazon EC2 Container Registry            | Aws::ECR                          | 2015-09-21  |
| aws-sdk-ecs                          | Amazon EC2 Container Service             | Aws::ECS                          | 2014-11-13  |
| aws-sdk-efs                          | Amazon Elastic File System               | Aws::EFS                          | 2015-02-01  |
| aws-sdk-elasticache                  | Amazon ElastiCache                       | Aws::ElastiCache                  | 2015-02-02  |
| aws-sdk-elasticbeanstalk             | AWS Elastic Beanstalk                    | Aws::ElasticBeanstalk             | 2010-12-01  |
| aws-sdk-elasticloadbalancing         | Elastic Load Balancing                   | Aws::ElasticLoadBalancing         | 2012-06-01  |
| aws-sdk-elasticloadbalancingv2       | Elastic Load Balancing                   | Aws::ElasticLoadBalancingV2       | 2015-12-01  |
| aws-sdk-elasticsearchservice         | Amazon Elasticsearch Service             | Aws::ElasticsearchService         | 2015-01-01  |
| aws-sdk-elastictranscoder            | Amazon Elastic Transcoder                | Aws::ElasticTranscoder            | 2012-09-25  |
| aws-sdk-emr                          | Amazon Elastic MapReduce                 | Aws::EMR                          | 2009-03-31  |
| aws-sdk-firehose                     | Amazon Kinesis Firehose                  | Aws::Firehose                     | 2015-08-04  |
| aws-sdk-gamelift                     | Amazon GameLift                          | Aws::GameLift                     | 2015-10-01  |
| aws-sdk-glacier                      | Amazon Glacier                           | Aws::Glacier                      | 2012-06-01  |
| aws-sdk-iam                          | AWS Identity and Access Management       | Aws::IAM                          | 2010-05-08  |
| aws-sdk-importexport                 | AWS Import/Export                        | Aws::ImportExport                 | 2010-06-01  |
| aws-sdk-inspector                    | Amazon Inspector                         | Aws::Inspector                    | 2016-02-16  |
| aws-sdk-iot                          | AWS IoT                                  | Aws::IoT                          | 2015-05-28  |
| aws-sdk-iotdataplane                 | AWS IoT Data Plane                       | Aws::IoTDataPlane                 | 2015-05-28  |
| aws-sdk-kinesis                      | Amazon Kinesis                           | Aws::Kinesis                      | 2013-12-02  |
| aws-sdk-kinesisanalytics             | Amazon Kinesis Analytics                 | Aws::KinesisAnalytics             | 2015-08-14  |
| aws-sdk-kms                          | AWS Key Management Service               | Aws::KMS                          | 2014-11-01  |
| aws-sdk-lambda                       | AWS Lambda                               | Aws::Lambda                       | 2015-03-31  |
| aws-sdk-lambdapreview                | AWS Lambda                               | Aws::LambdaPreview                | 2014-11-11  |
| aws-sdk-machinelearning              | Amazon Machine Learning                  | Aws::MachineLearning              | 2014-12-12  |
| aws-sdk-marketplacecommerceanalytics | AWS Marketplace Commerce Analytics       | Aws::MarketplaceCommerceAnalytics | 2015-07-01  |
| aws-sdk-marketplacemetering          | AWSMarketplace Metering                  | Aws::MarketplaceMetering          | 2016-01-14  |
| aws-sdk-opsworks                     | AWS OpsWorks                             | Aws::OpsWorks                     | 2013-02-18  |
| aws-sdk-rds                          | Amazon Relational Database Service       | Aws::RDS                          | 2014-10-31  |
| aws-sdk-redshift                     | Amazon Redshift                          | Aws::Redshift                     | 2012-12-01  |
| aws-sdk-route53                      | Amazon Route 53                          | Aws::Route53                      | 2013-04-01  |
| aws-sdk-route53domains               | Amazon Route 53 Domains                  | Aws::Route53Domains               | 2014-05-15  |
| aws-sdk-s3                           | Amazon Simple Storage Service            | Aws::S3                           | 2006-03-01  |
| aws-sdk-servicecatalog               | AWS Service Catalog                      | Aws::ServiceCatalog               | 2015-12-10  |
| aws-sdk-ses                          | Amazon Simple Email Service              | Aws::SES                          | 2010-12-01  |
| aws-sdk-simpledb                     | Amazon SimpleDB                          | Aws::SimpleDB                     | 2009-04-15  |
| aws-sdk-snowball                     | Amazon Import/Export Snowball            | Aws::Snowball                     | 2016-06-30  |
| aws-sdk-sns                          | Amazon Simple Notification Service       | Aws::SNS                          | 2010-03-31  |
| aws-sdk-sqs                          | Amazon Simple Queue Service              | Aws::SQS                          | 2012-11-05  |
| aws-sdk-ssm                          | Amazon Simple Systems Management Service | Aws::SSM                          | 2014-11-06  |
| aws-sdk-storagegateway               | AWS Storage Gateway                      | Aws::StorageGateway               | 2013-06-30  |
| aws-sdk-sts                          | AWS Security Token Service               | Aws::STS                          | 2011-06-15  |
| aws-sdk-support                      | AWS Support                              | Aws::Support                      | 2013-04-15  |
| aws-sdk-swf                          | Amazon Simple Workflow Service           | Aws::SWF                          | 2012-01-25  |
| aws-sdk-waf                          | AWS WAF                                  | Aws::WAF                          | 2015-08-24  |
| aws-sdk-workspaces                   | Amazon WorkSpaces                        | Aws::WorkSpaces                   | 2015-04-08  |

## License

This library is distributed under the
[Apache License, version 2.0](http://www.apache.org/licenses/LICENSE-2.0.html)

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
