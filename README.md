# AWS SDK for Ruby - Version 3

[![Gitter](https://badges.gitter.im/aws/aws-sdk-ruby.svg)](https://gitter.im/aws/aws-sdk-ruby?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge) [![Build Status](https://travis-ci.org/aws/aws-sdk-ruby.svg?branch=master)](https://travis-ci.org/aws/aws-sdk-ruby) [![Code Climate](https://codeclimate.com/github/aws/aws-sdk-ruby.svg)](https://codeclimate.com/github/aws/aws-sdk-ruby) [![Coverage Status](https://coveralls.io/repos/aws/aws-sdk-ruby/badge.svg?branch=master)](https://coveralls.io/r/aws/aws-sdk-ruby?branch=master)
[![Dependency Status](https://www.versioneye.com/ruby/aws-sdk/badge.svg)](https://www.versioneye.com/ruby/aws-sdk)

This is version 3 of the `aws-sdk` gem. Version 2 can be found at branch:

* [Version 2 branch](https://github.com/aws/aws-sdk-ruby/tree/version-2).

## Links of Interest

* [Developer Guide](http://docs.aws.amazon.com/sdk-for-ruby/latest/DeveloperGuide/aws-ruby-sdk-about-ruby-sdk.html)
* [AWS Developer Blog](https://aws.amazon.com/blogs/developer/category/ruby/)
* [API Docs](http://docs.aws.amazon.com/sdk-for-ruby/v3/api/frames.html)
* [Upgrading Notes](https://github.com/aws/aws-sdk-ruby/blob/master/UPGRADING.md)
* [Gitter Channel](https://gitter.im/aws/aws-sdk-ruby)

## Change Log

Change Log now can be found at each gem root path, e.g. change log for `aws-sdk-s3` gem can be found at `/gems/aws-sdk-s3/CHANGELOG.md` [here](https://github.com/aws/aws-sdk-ruby/blob/master/gems/aws-sdk-s3/CHANGELOG.md). The change log is also accessible via RubyGems.org page under "LINKS" section for changelog.

## Installation

The AWS SDK for Ruby is available from RubyGems. `aws-sdk` gem contains every available AWS service gem support. Please use a major version when expressing a dependency on `aws-sdk`.

```ruby
gem 'aws-sdk', '~> 3'
```

With version 3 modularization, you can also pick the specific AWS service gem to install. Please use a major version when expressing a dependency on service gems.

```ruby
gem 'aws-sdk-s3', '~> 1'
gem 'aws-sdk-ec2', '~> 1'
```

## Upgrading Guide

Version 3 modularizes the monolithic SDK into service specific gems. Aside from gem packaging differences, version 3 interfaces are backwards compatible with version 2. Following guide contains instructions for both version 1 and version 2 SDK.

### Upgrade from version 2

1. If you depend on `aws-sdk` or `aws-sdk-resources`, you don't need to change anything. Meanwhile we recommend you to revisit following options to explore modularization benefits.

2. If you depend on `aws-sdk-core`, you **must** replace this dependency with one of following options. This is because `aws-sdk-core` now only contains shared utilities.

#### Options

1. If you want to keep every AWS service gems in your project, simply keep/switch to `aws-sdk`

```ruby
# Gemfile
gem 'aws-sdk', '~> 3'

# or in code
require 'aws-sdk'
```

2. If you want to choose several AWS service gems in your project specifically, try following:

```ruby
# Gemfile
gem 'aws-sdk-s3', '~> 1'
gem 'aws-sdk-ec2', '~> 1'
...

# or in code
require 'aws-sdk-s3'
require 'aws-sdk-ec2'
...
```

### Upgrade from version 1

If you are using SDK version 1 and version 2 together in your application guided by our official [blog post](https://aws.amazon.com/blogs/developer/upcoming-stable-release-of-aws-sdk-for-ruby-version-2/), then you might have either `aws-sdk ~> 2` or `aws-sdk-resources ~> 2` exists in your project, you can simply update it to `~> 3` or using separate service gems as described in version 2 upgrade options.

For addtional information of migrating from Version 1 to Version 2, please follow [V1 to V2 migration guide](https://github.com/aws/aws-sdk-ruby/blob/master/MIGRATING.md).

### Addtional Information

* [Introduction Blog](https://aws.amazon.com/blogs/developer/aws-sdk-for-ruby-modularization-version-3-2/)
* [V2 to V3 Upgrade Blog Guide](https://aws.amazon.com/blogs/developer/upgrading-from-version-2-to-version-3-of-the-aws-sdk-for-ruby-2/)
* [Upgrade Release Notes](https://github.com/aws/aws-sdk-ruby/blob/master/UPGRADING.md)

## Getting Help

Please use these community resources for getting help. We use the GitHub issues for tracking bugs and feature requests and have limited bandwidth to address them.

* Ask a question on StackOverflow and [tag it](http://stackoverflow.com/questions/tagged/aws-sdk-ruby) with `aws-sdk-ruby`
* Come join the AWS SDK for Ruby [Gitter Channel](https://gitter.im/aws/aws-sdk-ruby)
* Open a support ticket with [AWS Support](https://console.aws.amazon.com/support/home), if it turns out that you may have found a bug, please open an issue
* If in doubt as to whether your issue is a question about how to use AWS or a potential SDK issue, feel free to open a GitHub issue on this repo.

## Opening Issues

If you encounter a bug with `aws-sdk-ruby` we would like to hear about it. Search the existing issues and try to make sure your problem doesn’t already exist before opening a new issue. It’s helpful if you include the version of `aws-sdk-ruby`, ruby version and OS you’re using. Please include a stack trace and reduced repro case when appropriate, too.

The GitHub issues are intended for bug reports and feature requests. For help and questions with using `aws-sdk-ruby` please make use of the resources listed in the Getting Help section.

[`FEATURE_REQUEST.md`](https://github.com/aws/aws-sdk-ruby/blob/master/FEATURE\_REQUESTS.md) in particular is a good way to signal your interest in a feature or issue. There are limited resources available for handling issues and by keeping the list of open issues lean we can respond in a timely manner.

## Configuration

You will need to configure credentials and a region, either in configuration files or environment variables, to make API calls. It is recommended that you provide these via your environment. This makes it easier to rotate credentials and it keeps your secrets out of source control.

The SDK searches the following locations for credentials:

* `ENV['AWS_ACCESS_KEY_ID']` and `ENV['AWS_SECRET_ACCESS_KEY']`
* Unless `ENV['AWS_SDK_CONFIG_OPT_OUT']` is set, the shared configuration files (`~/.aws/credentials` and `~/.aws/config`) will be checked for a `role_arn` and `source_profile`, which if present will be used to attempt to assume a role.
* The shared credentials ini file at `~/.aws/credentials` ([more information](http://blogs.aws.amazon.com/security/post/Tx3D6U6WSFGOK2H/A-New-and-Standardized-Way-to-Manage-Credentials-in-the-AWS-SDKs))
    * Unless `ENV['AWS_SDK_CONFIG_OPT_OUT']` is set, the shared configuration ini file at `~/.aws/config` will also be parsed for credentials.
* From an instance profile when running on EC2, or from the ECS credential provider when running in an ECS container with that feature enabled.
* If using `~/.aws/config` or `~/.aws/credentials` a `:profile` option can be used to choose the proper credentials.

The SDK searches the following locations for a region:

* `ENV['AWS_REGION']`
* Unless `ENV['AWS_SDK_CONFIG_OPT_OUT']` is set, the shared configuration files (`~/.aws/credentials` and `~/.aws/config`) will also be checked for a region selection.

**The region is used to construct an SSL endpoint**. If you need to connect to a non-standard endpoint, you may specify the `:endpoint` option.

### Configuration Options

You can also configure default credentials and region via `Aws.config`. **In version 2, `Aws.config` is a vanilla Ruby hash, not a method like it was in version 1**. The `Aws.config` hash takes precedence over environment variables.

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
  * [`Aws::Credentials`](http://docs.aws.amazon.com/sdk-for-ruby/v3/api/Aws/Credentials.html)
  * [`Aws::SharedCredentials`](http://docs.aws.amazon.com/sdk-for-ruby/v3/api/Aws/SharedCredentials.html)
  * [`Aws::InstanceProfileCredentials`](http://docs.aws.amazon.com/sdk-for-ruby/v3/api/Aws/InstanceProfileCredentials.html)
  * [`Aws::AssumeRoleCredentials`](http://docs.aws.amazon.com/sdk-for-ruby/v3/api/Aws/AssumeRoleCredentials.html)

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

## API Clients

Construct a service client to make API calls. Each client provides a 1-to-1
mapping of methods to API operations. Refer to the
[API documentation](http://docs.aws.amazon.com/sdk-for-ruby/v3/api/frames.html)
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

## Resource Interfaces

Resource interfaces are object oriented classes that represent actual
resources in AWS. Resource interfaces built on top of API clients and provide
additional functionality. Each service gem contains its own resource interface.

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

The `aws-sdk` gem ships with a REPL that provides a simple way to test
the Ruby SDK. You can access the REPL by running `aws-v3.rb` from the command line.

```ruby
$ aws-v3.rb
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
$ aws-v3.rb -v
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

| Service Name                                | Service Module                       | gem_name                                | API Version |
| ------------------------------------------- | ------------------------------------ | --------------------------------------- | ----------- |
| AWS AppSync                                 | Aws::AppSync                         | aws-sdk-appsync                         | 2017-07-25  |
| AWS Application Discovery Service           | Aws::ApplicationDiscoveryService     | aws-sdk-applicationdiscoveryservice     | 2015-11-01  |
| AWS Auto Scaling Plans                      | Aws::AutoScalingPlans                | aws-sdk-autoscalingplans                | 2018-01-06  |
| AWS Batch                                   | Aws::Batch                           | aws-sdk-batch                           | 2016-08-10  |
| AWS Budgets                                 | Aws::Budgets                         | aws-sdk-budgets                         | 2016-10-20  |
| AWS Certificate Manager                     | Aws::ACM                             | aws-sdk-acm                             | 2015-12-08  |
| AWS Cloud9                                  | Aws::Cloud9                          | aws-sdk-cloud9                          | 2017-09-23  |
| AWS CloudFormation                          | Aws::CloudFormation                  | aws-sdk-cloudformation                  | 2010-05-15  |
| AWS CloudHSM V2                             | Aws::CloudHSMV2                      | aws-sdk-cloudhsmv2                      | 2017-04-28  |
| AWS CloudTrail                              | Aws::CloudTrail                      | aws-sdk-cloudtrail                      | 2013-11-01  |
| AWS CodeBuild                               | Aws::CodeBuild                       | aws-sdk-codebuild                       | 2016-10-06  |
| AWS CodeCommit                              | Aws::CodeCommit                      | aws-sdk-codecommit                      | 2015-04-13  |
| AWS CodeDeploy                              | Aws::CodeDeploy                      | aws-sdk-codedeploy                      | 2014-10-06  |
| AWS CodePipeline                            | Aws::CodePipeline                    | aws-sdk-codepipeline                    | 2015-07-09  |
| AWS CodeStar                                | Aws::CodeStar                        | aws-sdk-codestar                        | 2017-04-19  |
| AWS Config                                  | Aws::ConfigService                   | aws-sdk-configservice                   | 2014-11-12  |
| AWS Cost Explorer Service                   | Aws::CostExplorer                    | aws-sdk-costexplorer                    | 2017-10-25  |
| AWS Cost and Usage Report Service           | Aws::CostandUsageReportService       | aws-sdk-costandusagereportservice       | 2017-01-06  |
| AWS Data Pipeline                           | Aws::DataPipeline                    | aws-sdk-datapipeline                    | 2012-10-29  |
| AWS Database Migration Service              | Aws::DatabaseMigrationService        | aws-sdk-databasemigrationservice        | 2016-01-01  |
| AWS Device Farm                             | Aws::DeviceFarm                      | aws-sdk-devicefarm                      | 2015-06-23  |
| AWS Direct Connect                          | Aws::DirectConnect                   | aws-sdk-directconnect                   | 2012-10-25  |
| AWS Directory Service                       | Aws::DirectoryService                | aws-sdk-directoryservice                | 2015-04-16  |
| AWS Elastic Beanstalk                       | Aws::ElasticBeanstalk                | aws-sdk-elasticbeanstalk                | 2010-12-01  |
| AWS Elemental MediaConvert                  | Aws::MediaConvert                    | aws-sdk-mediaconvert                    | 2017-08-29  |
| AWS Elemental MediaLive                     | Aws::MediaLive                       | aws-sdk-medialive                       | 2017-10-14  |
| AWS Elemental MediaPackage                  | Aws::MediaPackage                    | aws-sdk-mediapackage                    | 2017-10-12  |
| AWS Elemental MediaStore                    | Aws::MediaStore                      | aws-sdk-mediastore                      | 2017-09-01  |
| AWS Elemental MediaStore Data Plane         | Aws::MediaStoreData                  | aws-sdk-mediastoredata                  | 2017-09-01  |
| AWS Glue                                    | Aws::Glue                            | aws-sdk-glue                            | 2017-03-31  |
| AWS Greengrass                              | Aws::Greengrass                      | aws-sdk-greengrass                      | 2017-06-07  |
| AWS Health APIs and Notifications           | Aws::Health                          | aws-sdk-health                          | 2016-08-04  |
| AWS Identity and Access Management          | Aws::IAM                             | aws-sdk-iam                             | 2010-05-08  |
| AWS Import/Export                           | Aws::ImportExport                    | aws-sdk-importexport                    | 2010-06-01  |
| AWS IoT                                     | Aws::IoT                             | aws-sdk-iot                             | 2015-05-28  |
| AWS IoT Data Plane                          | Aws::IoTDataPlane                    | aws-sdk-iotdataplane                    | 2015-05-28  |
| AWS IoT Jobs Data Plane                     | Aws::IoTJobsDataPlane                | aws-sdk-iotjobsdataplane                | 2017-09-29  |
| AWS Key Management Service                  | Aws::KMS                             | aws-sdk-kms                             | 2014-11-01  |
| AWS Lambda                                  | Aws::LambdaPreview                   | aws-sdk-lambdapreview                   | 2014-11-11  |
| AWS Lambda                                  | Aws::Lambda                          | aws-sdk-lambda                          | 2015-03-31  |
| AWS Marketplace Commerce Analytics          | Aws::MarketplaceCommerceAnalytics    | aws-sdk-marketplacecommerceanalytics    | 2015-07-01  |
| AWS Marketplace Entitlement Service         | Aws::MarketplaceEntitlementService   | aws-sdk-marketplaceentitlementservice   | 2017-01-11  |
| AWS Migration Hub                           | Aws::MigrationHub                    | aws-sdk-migrationhub                    | 2017-05-31  |
| AWS Mobile                                  | Aws::Mobile                          | aws-sdk-mobile                          | 2017-07-01  |
| AWS OpsWorks                                | Aws::OpsWorks                        | aws-sdk-opsworks                        | 2013-02-18  |
| AWS OpsWorks for Chef Automate              | Aws::OpsWorksCM                      | aws-sdk-opsworkscm                      | 2016-11-01  |
| AWS Organizations                           | Aws::Organizations                   | aws-sdk-organizations                   | 2016-11-28  |
| AWS Price List Service                      | Aws::Pricing                         | aws-sdk-pricing                         | 2017-10-15  |
| AWS Resource Groups                         | Aws::ResourceGroups                  | aws-sdk-resourcegroups                  | 2017-11-27  |
| AWS Resource Groups Tagging API             | Aws::ResourceGroupsTaggingAPI        | aws-sdk-resourcegroupstaggingapi        | 2017-01-26  |
| AWS Security Token Service                  | Aws::STS                             | aws-sdk-core                            | 2011-06-15  |
| AWS Server Migration Service                | Aws::SMS                             | aws-sdk-sms                             | 2016-10-24  |
| AWS Service Catalog                         | Aws::ServiceCatalog                  | aws-sdk-servicecatalog                  | 2015-12-10  |
| AWS Shield                                  | Aws::Shield                          | aws-sdk-shield                          | 2016-06-02  |
| AWS Step Functions                          | Aws::States                          | aws-sdk-states                          | 2016-11-23  |
| AWS Storage Gateway                         | Aws::StorageGateway                  | aws-sdk-storagegateway                  | 2013-06-30  |
| AWS Support                                 | Aws::Support                         | aws-sdk-support                         | 2013-04-15  |
| AWS WAF                                     | Aws::WAF                             | aws-sdk-waf                             | 2015-08-24  |
| AWS WAF Regional                            | Aws::WAFRegional                     | aws-sdk-wafregional                     | 2016-11-28  |
| AWS X-Ray                                   | Aws::XRay                            | aws-sdk-xray                            | 2016-04-12  |
| AWSMarketplace Metering                     | Aws::MarketplaceMetering             | aws-sdk-marketplacemetering             | 2016-01-14  |
| AWSServerlessApplicationRepository          | Aws::ServerlessApplicationRepository | aws-sdk-serverlessapplicationrepository | 2017-09-08  |
| Alexa For Business                          | Aws::AlexaForBusiness                | aws-sdk-alexaforbusiness                | 2017-11-09  |
| Amazon API Gateway                          | Aws::APIGateway                      | aws-sdk-apigateway                      | 2015-07-09  |
| Amazon AppStream                            | Aws::AppStream                       | aws-sdk-appstream                       | 2016-12-01  |
| Amazon Athena                               | Aws::Athena                          | aws-sdk-athena                          | 2017-05-18  |
| Amazon CloudDirectory                       | Aws::CloudDirectory                  | aws-sdk-clouddirectory                  | 2016-05-10  |
| Amazon CloudFront                           | Aws::CloudFront                      | aws-sdk-cloudfront                      | 2017-03-25  |
| Amazon CloudHSM                             | Aws::CloudHSM                        | aws-sdk-cloudhsm                        | 2014-05-30  |
| Amazon CloudSearch                          | Aws::CloudSearch                     | aws-sdk-cloudsearch                     | 2013-01-01  |
| Amazon CloudSearch Domain                   | Aws::CloudSearchDomain               | aws-sdk-cloudsearchdomain               | 2013-01-01  |
| Amazon CloudWatch                           | Aws::CloudWatch                      | aws-sdk-cloudwatch                      | 2010-08-01  |
| Amazon CloudWatch Events                    | Aws::CloudWatchEvents                | aws-sdk-cloudwatchevents                | 2015-10-07  |
| Amazon CloudWatch Logs                      | Aws::CloudWatchLogs                  | aws-sdk-cloudwatchlogs                  | 2014-03-28  |
| Amazon Cognito Identity                     | Aws::CognitoIdentity                 | aws-sdk-cognitoidentity                 | 2014-06-30  |
| Amazon Cognito Identity Provider            | Aws::CognitoIdentityProvider         | aws-sdk-cognitoidentityprovider         | 2016-04-18  |
| Amazon Cognito Sync                         | Aws::CognitoSync                     | aws-sdk-cognitosync                     | 2014-06-30  |
| Amazon Comprehend                           | Aws::Comprehend                      | aws-sdk-comprehend                      | 2017-11-27  |
| Amazon DynamoDB                             | Aws::DynamoDB                        | aws-sdk-dynamodb                        | 2012-08-10  |
| Amazon DynamoDB Accelerator (DAX)           | Aws::DAX                             | aws-sdk-dax                             | 2017-04-19  |
| Amazon DynamoDB Streams                     | Aws::DynamoDBStreams                 | aws-sdk-dynamodbstreams                 | 2012-08-10  |
| Amazon EC2 Container Registry               | Aws::ECR                             | aws-sdk-ecr                             | 2015-09-21  |
| Amazon EC2 Container Service                | Aws::ECS                             | aws-sdk-ecs                             | 2014-11-13  |
| Amazon ElastiCache                          | Aws::ElastiCache                     | aws-sdk-elasticache                     | 2015-02-02  |
| Amazon Elastic Compute Cloud                | Aws::EC2                             | aws-sdk-ec2                             | 2016-11-15  |
| Amazon Elastic File System                  | Aws::EFS                             | aws-sdk-efs                             | 2015-02-01  |
| Amazon Elastic MapReduce                    | Aws::EMR                             | aws-sdk-emr                             | 2009-03-31  |
| Amazon Elastic Transcoder                   | Aws::ElasticTranscoder               | aws-sdk-elastictranscoder               | 2012-09-25  |
| Amazon Elasticsearch Service                | Aws::ElasticsearchService            | aws-sdk-elasticsearchservice            | 2015-01-01  |
| Amazon GameLift                             | Aws::GameLift                        | aws-sdk-gamelift                        | 2015-10-01  |
| Amazon Glacier                              | Aws::Glacier                         | aws-sdk-glacier                         | 2012-06-01  |
| Amazon GuardDuty                            | Aws::GuardDuty                       | aws-sdk-guardduty                       | 2017-11-28  |
| Amazon Import/Export Snowball               | Aws::Snowball                        | aws-sdk-snowball                        | 2016-06-30  |
| Amazon Inspector                            | Aws::Inspector                       | aws-sdk-inspector                       | 2016-02-16  |
| Amazon Kinesis                              | Aws::Kinesis                         | aws-sdk-kinesis                         | 2013-12-02  |
| Amazon Kinesis Analytics                    | Aws::KinesisAnalytics                | aws-sdk-kinesisanalytics                | 2015-08-14  |
| Amazon Kinesis Firehose                     | Aws::Firehose                        | aws-sdk-firehose                        | 2015-08-04  |
| Amazon Kinesis Video Streams                | Aws::KinesisVideo                    | aws-sdk-kinesisvideo                    | 2017-09-30  |
| Amazon Kinesis Video Streams Archived Media | Aws::KinesisVideoArchivedMedia       | aws-sdk-kinesisvideoarchivedmedia       | 2017-09-30  |
| Amazon Kinesis Video Streams Media          | Aws::KinesisVideoMedia               | aws-sdk-kinesisvideomedia               | 2017-09-30  |
| Amazon Lex Model Building Service           | Aws::LexModelBuildingService         | aws-sdk-lexmodelbuildingservice         | 2017-04-19  |
| Amazon Lex Runtime Service                  | Aws::Lex                             | aws-sdk-lex                             | 2016-11-28  |
| Amazon Lightsail                            | Aws::Lightsail                       | aws-sdk-lightsail                       | 2016-11-28  |
| Amazon Machine Learning                     | Aws::MachineLearning                 | aws-sdk-machinelearning                 | 2014-12-12  |
| Amazon Mechanical Turk                      | Aws::MTurk                           | aws-sdk-mturk                           | 2017-01-17  |
| Amazon Pinpoint                             | Aws::Pinpoint                        | aws-sdk-pinpoint                        | 2016-12-01  |
| Amazon Polly                                | Aws::Polly                           | aws-sdk-polly                           | 2016-06-10  |
| Amazon Redshift                             | Aws::Redshift                        | aws-sdk-redshift                        | 2012-12-01  |
| Amazon Rekognition                          | Aws::Rekognition                     | aws-sdk-rekognition                     | 2016-06-27  |
| Amazon Relational Database Service          | Aws::RDS                             | aws-sdk-rds                             | 2014-10-31  |
| Amazon Route 53                             | Aws::Route53                         | aws-sdk-route53                         | 2013-04-01  |
| Amazon Route 53 Auto Naming                 | Aws::ServiceDiscovery                | aws-sdk-servicediscovery                | 2017-03-14  |
| Amazon Route 53 Domains                     | Aws::Route53Domains                  | aws-sdk-route53domains                  | 2014-05-15  |
| Amazon SageMaker Runtime                    | Aws::SageMakerRuntime                | aws-sdk-sagemakerruntime                | 2017-05-13  |
| Amazon SageMaker Service                    | Aws::SageMaker                       | aws-sdk-sagemaker                       | 2017-07-24  |
| Amazon Simple Email Service                 | Aws::SES                             | aws-sdk-ses                             | 2010-12-01  |
| Amazon Simple Notification Service          | Aws::SNS                             | aws-sdk-sns                             | 2010-03-31  |
| Amazon Simple Queue Service                 | Aws::SQS                             | aws-sdk-sqs                             | 2012-11-05  |
| Amazon Simple Storage Service               | Aws::S3                              | aws-sdk-s3                              | 2006-03-01  |
| Amazon Simple Systems Manager (SSM)         | Aws::SSM                             | aws-sdk-ssm                             | 2014-11-06  |
| Amazon Simple Workflow Service              | Aws::SWF                             | aws-sdk-swf                             | 2012-01-25  |
| Amazon SimpleDB                             | Aws::SimpleDB                        | aws-sdk-simpledb                        | 2009-04-15  |
| Amazon Transcribe Service                   | Aws::TranscribeService               | aws-sdk-transcribeservice               | 2017-10-26  |
| Amazon Translate                            | Aws::Translate                       | aws-sdk-translate                       | 2017-07-01  |
| Amazon WorkDocs                             | Aws::WorkDocs                        | aws-sdk-workdocs                        | 2016-05-01  |
| Amazon WorkMail                             | Aws::WorkMail                        | aws-sdk-workmail                        | 2017-10-01  |
| Amazon WorkSpaces                           | Aws::WorkSpaces                      | aws-sdk-workspaces                      | 2015-04-08  |
| AmazonMQ                                    | Aws::MQ                              | aws-sdk-mq                              | 2017-11-27  |
| Application Auto Scaling                    | Aws::ApplicationAutoScaling          | aws-sdk-applicationautoscaling          | 2016-02-06  |
| Auto Scaling                                | Aws::AutoScaling                     | aws-sdk-autoscaling                     | 2011-01-01  |
| Elastic Load Balancing                      | Aws::ElasticLoadBalancingV2          | aws-sdk-elasticloadbalancingv2          | 2015-12-01  |
| Elastic Load Balancing                      | Aws::ElasticLoadBalancing            | aws-sdk-elasticloadbalancing            | 2012-06-01  |

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
