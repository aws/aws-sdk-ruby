# AWS SDK for Ruby - Version 3

[![Gem Version](https://badge.fury.io/rb/aws-sdk-core.svg)](https://badge.fury.io/rb/aws-sdk-core)
[![Build Status](https://github.com/aws/aws-sdk-ruby/workflows/CI/badge.svg)](https://github.com/aws/aws-sdk-ruby/actions)
[![Github forks](https://img.shields.io/github/forks/aws/aws-sdk-ruby.svg)](https://github.com/aws/aws-sdk-ruby/network)
[![Github stars](https://img.shields.io/github/stars/aws/aws-sdk-ruby.svg)](https://github.com/aws/aws-sdk-ruby/stargazers)

## Links of Interest

* [API Documentation](https://docs.aws.amazon.com/sdk-for-ruby/v3/api/index.html)
* [Developer Guide](https://docs.aws.amazon.com/sdk-for-ruby/v3/developer-guide/welcome.html)
* [V3 Upgrading Guide](https://github.com/aws/aws-sdk-ruby/blob/version-3/V3_UPGRADING_GUIDE.md)
* [AWS Developer Blog](https://aws.amazon.com/blogs/developer/category/programing-language/ruby/)
* [Github Discussions](https://github.com/aws/aws-sdk-ruby/discussions)

## Installation

The AWS SDK for Ruby is available from RubyGems. With V3 modularization, you
should pick the specific AWS service gems to install.

```ruby
gem 'aws-sdk-s3', '~> 1'
gem 'aws-sdk-ec2', '~> 1'
```

Alternatively, the `aws-sdk` gem contains every available AWS service gem. This
gem is very large; it is recommended to use it only as a quick way to migrate
from V2 or if you depend on many AWS services.

```ruby
gem 'aws-sdk', '~> 3'
```

**Please use a pessimistic version constraint on the major version when
depending on service gems.**

## Configuration

You will need to configure credentials and a region, either in 
[configuration files](https://docs.aws.amazon.com/sdkref/latest/guide/file-location.html)
or environment variables, to make API calls. It is recommended that you
provide these via your environment. This makes it easier to rotate credentials
and it keeps your secrets out of source control. 

The SDK searches the following locations for credentials:

* `ENV['AWS_ACCESS_KEY_ID']` and `ENV['AWS_SECRET_ACCESS_KEY']`
* The shared credentials ini file at `~/.aws/credentials`.  The location used can be changed with the `AWS_CREDENTIALS_FILE` ENV variable.
  * Credential options supported in this file are:
    * Static Credentials (`aws_access_key_id`, `aws_secret_access_key`, `aws_session_token`)
    * Assume Role Web Identity Credentials (`web_identity_token_file`, `role_arn`, `source_profile`)
    * Assume Role Credentials (`role_arn`, `source_profile`)
    * Process Credentials (`credential_process`)
    * SSO Credentials (`sso_session`, `sso_account_id`, `sso_role_name`, `sso_region`)
  * Unless `ENV['AWS_SDK_CONFIG_OPT_OUT']` is set, the shared configuration ini file at `~/.aws/config` will also be parsed for credentials.
* From an instance profile when running on EC2 or from the ECS credential provider when running in an ECS container with that feature enabled.

**Shared configuration is loaded only a single time, and credentials are provided statically at client creation time. Shared credentials do not refresh.**

The SDK searches the following locations for a region:

* `ENV['AWS_REGION']`
* `ENV['AMAZON_REGION']`
* `ENV['AWS_DEFAULT_REGION']`
* Unless `ENV['AWS_SDK_CONFIG_OPT_OUT']` is set, the shared configuration files (`~/.aws/credentials` and `~/.aws/config`) will also be checked for a region selection.

**The region is used to construct an SSL endpoint**. If you need to connect to a non-standard endpoint, you may specify the `:endpoint` option.

### Configuration Options

You can also configure default credentials and the region via the `Aws.config`
hash. The `Aws.config` hash takes precedence over environment variables.

```ruby
require 'aws-sdk-core'

Aws.config.update(
  region: 'us-west-2',
  credentials: Aws::Credentials.new('akid', 'secret')
)
```

Valid region and credentials options are:

* `:region` - A string like `us-west-2`. See [this page](https://docs.aws.amazon.com/general/latest/gr/aws-service-information.html) for a list of supported regions by service.
* `:credentials` - An instance of one of the following classes:
  * [`Aws::Credentials`](http://docs.aws.amazon.com/sdk-for-ruby/v3/api/Aws/Credentials.html)
  * [`Aws::AssumeRoleWebIdentityCredentials`](https://docs.aws.amazon.com/sdk-for-ruby/v3/api/Aws/AssumeRoleWebIdentityCredentials.html)
  * [`Aws::AssumeRoleCredentials`](http://docs.aws.amazon.com/sdk-for-ruby/v3/api/Aws/AssumeRoleCredentials.html)
  * [`Aws::SharedCredentials`](http://docs.aws.amazon.com/sdk-for-ruby/v3/api/Aws/SharedCredentials.html)
  * [`Aws::ProcessCredentials`](https://docs.aws.amazon.com/sdk-for-ruby/v3/api/Aws/ProcessCredentials.html)
  * [`Aws::InstanceProfileCredentials`](http://docs.aws.amazon.com/sdk-for-ruby/v3/api/Aws/InstanceProfileCredentials.html)
  * [`Aws::ECSCredentials`](https://docs.aws.amazon.com/sdk-for-ruby/v3/api/Aws/ECSCredentials.html)
  * [`Aws::CognitoIdentityCredentials`](https://docs.aws.amazon.com/sdk-for-ruby/v3/api/Aws/CognitoIdentity/CognitoIdentityCredentials.html)

You may also pass configuration options directly to Client and Resource
constructors. These options take precedence over the environment and
`Aws.config` defaults. A `:profile` Client option can also be used to choose a
specific profile defined in your configuration file.

```ruby
# using a credentials object
ec2 = Aws::EC2::Client.new(region: 'us-west-2', credentials: credentials)

# using a profile name
ec2 = Aws::EC2::Client.new(profile: 'my_profile')
```

Please take care to **never commit credentials to source control**. We strongly
recommended loading credentials from an external source.

```ruby
require 'aws-sdk'
require 'json'

creds = JSON.load(File.read('secrets.json'))
Aws.config[:credentials] = Aws::Credentials.new(
  creds['AccessKeyId'],
  creds['SecretAccessKey']
)
```

For more information on how to configure credentials, see the developer guide
for [configuring AWS SDK for Ruby](https://docs.aws.amazon.com/sdk-for-ruby/v3/developer-guide/setup-config.html).

## API Clients

Construct a service client to make API calls. Each client provides a 1-to-1
mapping of methods to API operations. Refer to the
[API documentation](https://docs.aws.amazon.com/sdk-for-ruby/v3/api/index.html)
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
resp = s3.list_objects(bucket: 'aws-sdk', max_keys: 2)
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
resp = s3.list_objects(bucket: 'aws-sdk')

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
additional functionality.

**Only a few services implement a resource interface. They are defined by hand
in JSON and have limitations. Please use the Client API instead.**

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
[1] pry(Aws)> ec2.describe_instances.reservations.first.instances.first
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

* `s3` => `#<Aws::S3::Client>`
* `ec2` => `#<Aws::EC2::Client>`
* etc

## Functionality requiring AWS Common Runtime (CRT)

The AWS SDK for Ruby has optional functionality that requires the 
[AWS Common Runtime (CRT)](https://docs.aws.amazon.com/sdkref/latest/guide/common-runtime.html) 
bindings to be included as a dependency with your application. This functionality includes:
* CRC-32c support for [S3 Additional Checksums](https://aws.amazon.com/blogs/aws/new-additional-checksum-algorithms-for-amazon-s3/)

AWS CRT bindings are in developer preview and are available in the
the [aws-crt](https://rubygems.org/gems/aws-crt/) gem.  You can install them by adding the `aws-crt` gem to your Gemfile.

## Getting Help

Please use any of these resources for getting help:

* Ask a question on [Github Discussions](https://github.com/aws/aws-sdk-ruby/discussions).
* Ask a question on StackOverflow and [tag it](http://stackoverflow.com/questions/tagged/aws-sdk-ruby) with `aws-sdk-ruby`.
* Open a support ticket with [AWS Support](https://console.aws.amazon.com/support/home).

## Maintenance and support for SDK major versions

For information about maintenance and support for SDK major versions and their underlying dependencies, see the following in the [AWS SDKs and Tools Shared Configuration and Credentials Reference Guide](https://docs.aws.amazon.com/credref/latest/refdocs/overview.html):

* [AWS SDKs and Tools Maintenance Policy](https://docs.aws.amazon.com/credref/latest/refdocs/maint-policy.html)
* [AWS SDKs and Tools Version Support Matrix](https://docs.aws.amazon.com/credref/latest/refdocs/version-support-matrix.html)

## Opening Issues

If you encounter a bug or have a feature request, we would like to hear about
it. Search the existing issues and try to make sure your problem doesn’t already
exist before opening a new issue.

The GitHub issues are intended for bug reports and feature requests. For help
and questions with using `aws-sdk-ruby` please make use of the resources listed
in the Getting Help section.

## Versioning

This project uses [semantic versioning](http://semver.org/). You can safely
express a dependency on a major version and expect all minor and patch versions
to be backwards compatible.

A CHANGELOG can be found at each gem's root path (i.e. `aws-sdk-s3` can be found
at `gems/aws-sdk-s3/CHANGELOG.md`). The CHANGELOG is also accessible via the
RubyGems.org page under "LINKS" section.

## Supported Services

| Service Name                                           | Service Module                           | gem_name                                    | API Version |
| ------------------------------------------------------ | ---------------------------------------- | ------------------------------------------- | ----------- |
| ARC - Region switch                                    | Aws::ARCRegionswitch                     | aws-sdk-arcregionswitch                     | 2022-07-26  |
| AWS AI Ops                                             | Aws::AIOps                               | aws-sdk-aiops                               | 2018-05-10  |
| AWS ARC - Zonal Shift                                  | Aws::ARCZonalShift                       | aws-sdk-arczonalshift                       | 2022-10-30  |
| AWS Account                                            | Aws::Account                             | aws-sdk-account                             | 2021-02-01  |
| AWS Amplify                                            | Aws::Amplify                             | aws-sdk-amplify                             | 2017-07-25  |
| AWS Amplify UI Builder                                 | Aws::AmplifyUIBuilder                    | aws-sdk-amplifyuibuilder                    | 2021-08-11  |
| AWS App Mesh                                           | Aws::AppMesh                             | aws-sdk-appmesh                             | 2019-01-25  |
| AWS App Runner                                         | Aws::AppRunner                           | aws-sdk-apprunner                           | 2020-05-15  |
| AWS AppConfig Data                                     | Aws::AppConfigData                       | aws-sdk-appconfigdata                       | 2021-11-11  |
| AWS AppSync                                            | Aws::AppSync                             | aws-sdk-appsync                             | 2017-07-25  |
| AWS Application Cost Profiler                          | Aws::ApplicationCostProfiler             | aws-sdk-applicationcostprofiler             | 2020-09-10  |
| AWS Application Discovery Service                      | Aws::ApplicationDiscoveryService         | aws-sdk-applicationdiscoveryservice         | 2015-11-01  |
| AWS Artifact                                           | Aws::Artifact                            | aws-sdk-artifact                            | 2018-05-10  |
| AWS Audit Manager                                      | Aws::AuditManager                        | aws-sdk-auditmanager                        | 2017-07-25  |
| AWS Auto Scaling Plans                                 | Aws::AutoScalingPlans                    | aws-sdk-autoscalingplans                    | 2018-01-06  |
| AWS B2B Data Interchange                               | Aws::B2bi                                | aws-sdk-b2bi                                | 2022-06-23  |
| AWS Backup                                             | Aws::Backup                              | aws-sdk-backup                              | 2018-11-15  |
| AWS Backup Gateway                                     | Aws::BackupGateway                       | aws-sdk-backupgateway                       | 2021-01-01  |
| AWS Backup Search                                      | Aws::BackupSearch                        | aws-sdk-backupsearch                        | 2018-05-10  |
| AWS Batch                                              | Aws::Batch                               | aws-sdk-batch                               | 2016-08-10  |
| AWS Billing                                            | Aws::Billing                             | aws-sdk-billing                             | 2023-09-07  |
| AWS Billing and Cost Management Dashboards             | Aws::BCMDashboards                       | aws-sdk-bcmdashboards                       | 2025-08-18  |
| AWS Billing and Cost Management Data Exports           | Aws::BCMDataExports                      | aws-sdk-bcmdataexports                      | 2023-11-26  |
| AWS Billing and Cost Management Pricing Calculator     | Aws::BCMPricingCalculator                | aws-sdk-bcmpricingcalculator                | 2024-06-19  |
| AWS Billing and Cost Management Recommended Actions    | Aws::BCMRecommendedActions               | aws-sdk-bcmrecommendedactions               | 2024-11-14  |
| AWS Budgets                                            | Aws::Budgets                             | aws-sdk-budgets                             | 2016-10-20  |
| AWS Certificate Manager                                | Aws::ACM                                 | aws-sdk-acm                                 | 2015-12-08  |
| AWS Certificate Manager Private Certificate Authority  | Aws::ACMPCA                              | aws-sdk-acmpca                              | 2017-08-22  |
| AWS Chatbot                                            | Aws::Chatbot                             | aws-sdk-chatbot                             | 2017-10-11  |
| AWS Clean Rooms ML                                     | Aws::CleanRoomsML                        | aws-sdk-cleanroomsml                        | 2023-09-06  |
| AWS Clean Rooms Service                                | Aws::CleanRooms                          | aws-sdk-cleanrooms                          | 2022-02-17  |
| AWS Cloud Control API                                  | Aws::CloudControlApi                     | aws-sdk-cloudcontrolapi                     | 2021-09-30  |
| AWS Cloud Map                                          | Aws::ServiceDiscovery                    | aws-sdk-servicediscovery                    | 2017-03-14  |
| AWS Cloud9                                             | Aws::Cloud9                              | aws-sdk-cloud9                              | 2017-09-23  |
| AWS CloudFormation                                     | Aws::CloudFormation                      | aws-sdk-cloudformation                      | 2010-05-15  |
| AWS CloudHSM V2                                        | Aws::CloudHSMV2                          | aws-sdk-cloudhsmv2                          | 2017-04-28  |
| AWS CloudTrail                                         | Aws::CloudTrail                          | aws-sdk-cloudtrail                          | 2013-11-01  |
| AWS CloudTrail Data Service                            | Aws::CloudTrailData                      | aws-sdk-cloudtraildata                      | 2021-08-11  |
| AWS CodeBuild                                          | Aws::CodeBuild                           | aws-sdk-codebuild                           | 2016-10-06  |
| AWS CodeCommit                                         | Aws::CodeCommit                          | aws-sdk-codecommit                          | 2015-04-13  |
| AWS CodeConnections                                    | Aws::CodeConnections                     | aws-sdk-codeconnections                     | 2023-12-01  |
| AWS CodeDeploy                                         | Aws::CodeDeploy                          | aws-sdk-codedeploy                          | 2014-10-06  |
| AWS CodePipeline                                       | Aws::CodePipeline                        | aws-sdk-codepipeline                        | 2015-07-09  |
| AWS CodeStar Notifications                             | Aws::CodeStarNotifications               | aws-sdk-codestarnotifications               | 2019-10-15  |
| AWS CodeStar connections                               | Aws::CodeStarconnections                 | aws-sdk-codestarconnections                 | 2019-12-01  |
| AWS Comprehend Medical                                 | Aws::ComprehendMedical                   | aws-sdk-comprehendmedical                   | 2018-10-30  |
| AWS Compute Optimizer                                  | Aws::ComputeOptimizer                    | aws-sdk-computeoptimizer                    | 2019-11-01  |
| AWS Config                                             | Aws::ConfigService                       | aws-sdk-configservice                       | 2014-11-12  |
| AWS Control Catalog                                    | Aws::ControlCatalog                      | aws-sdk-controlcatalog                      | 2018-05-10  |
| AWS Control Tower                                      | Aws::ControlTower                        | aws-sdk-controltower                        | 2018-05-10  |
| AWS Cost Explorer Service                              | Aws::CostExplorer                        | aws-sdk-costexplorer                        | 2017-10-25  |
| AWS Cost and Usage Report Service                      | Aws::CostandUsageReportService           | aws-sdk-costandusagereportservice           | 2017-01-06  |
| AWS Data Exchange                                      | Aws::DataExchange                        | aws-sdk-dataexchange                        | 2017-07-25  |
| AWS Data Pipeline                                      | Aws::DataPipeline                        | aws-sdk-datapipeline                        | 2012-10-29  |
| AWS DataSync                                           | Aws::DataSync                            | aws-sdk-datasync                            | 2018-11-09  |
| AWS Database Migration Service                         | Aws::DatabaseMigrationService            | aws-sdk-databasemigrationservice            | 2016-01-01  |
| AWS Device Farm                                        | Aws::DeviceFarm                          | aws-sdk-devicefarm                          | 2015-06-23  |
| AWS Direct Connect                                     | Aws::DirectConnect                       | aws-sdk-directconnect                       | 2012-10-25  |
| AWS Directory Service                                  | Aws::DirectoryService                    | aws-sdk-directoryservice                    | 2015-04-16  |
| AWS Directory Service Data                             | Aws::DirectoryServiceData                | aws-sdk-directoryservicedata                | 2023-05-31  |
| AWS EC2 Instance Connect                               | Aws::EC2InstanceConnect                  | aws-sdk-ec2instanceconnect                  | 2018-04-02  |
| AWS Elastic Beanstalk                                  | Aws::ElasticBeanstalk                    | aws-sdk-elasticbeanstalk                    | 2010-12-01  |
| AWS Elemental MediaConvert                             | Aws::MediaConvert                        | aws-sdk-mediaconvert                        | 2017-08-29  |
| AWS Elemental MediaLive                                | Aws::MediaLive                           | aws-sdk-medialive                           | 2017-10-14  |
| AWS Elemental MediaPackage                             | Aws::MediaPackage                        | aws-sdk-mediapackage                        | 2017-10-12  |
| AWS Elemental MediaPackage VOD                         | Aws::MediaPackageVod                     | aws-sdk-mediapackagevod                     | 2018-11-07  |
| AWS Elemental MediaPackage v2                          | Aws::MediaPackageV2                      | aws-sdk-mediapackagev2                      | 2022-12-25  |
| AWS Elemental MediaStore                               | Aws::MediaStore                          | aws-sdk-mediastore                          | 2017-09-01  |
| AWS Elemental MediaStore Data Plane                    | Aws::MediaStoreData                      | aws-sdk-mediastoredata                      | 2017-09-01  |
| AWS End User Messaging Social                          | Aws::SocialMessaging                     | aws-sdk-socialmessaging                     | 2024-01-01  |
| AWS EntityResolution                                   | Aws::EntityResolution                    | aws-sdk-entityresolution                    | 2018-05-10  |
| AWS Fault Injection Simulator                          | Aws::FIS                                 | aws-sdk-fis                                 | 2020-12-01  |
| AWS Free Tier                                          | Aws::FreeTier                            | aws-sdk-freetier                            | 2023-09-07  |
| AWS Global Accelerator                                 | Aws::GlobalAccelerator                   | aws-sdk-globalaccelerator                   | 2018-08-08  |
| AWS Glue                                               | Aws::Glue                                | aws-sdk-glue                                | 2017-03-31  |
| AWS Glue DataBrew                                      | Aws::GlueDataBrew                        | aws-sdk-gluedatabrew                        | 2017-07-25  |
| AWS Greengrass                                         | Aws::Greengrass                          | aws-sdk-greengrass                          | 2017-06-07  |
| AWS Ground Station                                     | Aws::GroundStation                       | aws-sdk-groundstation                       | 2019-05-23  |
| AWS Health APIs and Notifications                      | Aws::Health                              | aws-sdk-health                              | 2016-08-04  |
| AWS Health Imaging                                     | Aws::MedicalImaging                      | aws-sdk-medicalimaging                      | 2023-07-19  |
| AWS Identity and Access Management                     | Aws::IAM                                 | aws-sdk-iam                                 | 2010-05-08  |
| AWS Import/Export                                      | Aws::ImportExport                        | aws-sdk-importexport                        | 2010-06-01  |
| AWS Invoicing                                          | Aws::Invoicing                           | aws-sdk-invoicing                           | 2024-12-01  |
| AWS IoT                                                | Aws::IoT                                 | aws-sdk-iot                                 | 2015-05-28  |
| AWS IoT Analytics                                      | Aws::IoTAnalytics                        | aws-sdk-iotanalytics                        | 2017-11-27  |
| AWS IoT Core Device Advisor                            | Aws::IoTDeviceAdvisor                    | aws-sdk-iotdeviceadvisor                    | 2020-09-18  |
| AWS IoT Data Plane                                     | Aws::IoTDataPlane                        | aws-sdk-iotdataplane                        | 2015-05-28  |
| AWS IoT Events                                         | Aws::IoTEvents                           | aws-sdk-iotevents                           | 2018-07-27  |
| AWS IoT Events Data                                    | Aws::IoTEventsData                       | aws-sdk-ioteventsdata                       | 2018-10-23  |
| AWS IoT Fleet Hub                                      | Aws::IoTFleetHub                         | aws-sdk-iotfleethub                         | 2020-11-03  |
| AWS IoT FleetWise                                      | Aws::IoTFleetWise                        | aws-sdk-iotfleetwise                        | 2021-06-17  |
| AWS IoT Greengrass V2                                  | Aws::GreengrassV2                        | aws-sdk-greengrassv2                        | 2020-11-30  |
| AWS IoT Jobs Data Plane                                | Aws::IoTJobsDataPlane                    | aws-sdk-iotjobsdataplane                    | 2017-09-29  |
| AWS IoT Secure Tunneling                               | Aws::IoTSecureTunneling                  | aws-sdk-iotsecuretunneling                  | 2018-10-05  |
| AWS IoT SiteWise                                       | Aws::IoTSiteWise                         | aws-sdk-iotsitewise                         | 2019-12-02  |
| AWS IoT Things Graph                                   | Aws::IoTThingsGraph                      | aws-sdk-iotthingsgraph                      | 2018-09-06  |
| AWS IoT TwinMaker                                      | Aws::IoTTwinMaker                        | aws-sdk-iottwinmaker                        | 2021-11-29  |
| AWS IoT Wireless                                       | Aws::IoTWireless                         | aws-sdk-iotwireless                         | 2020-11-22  |
| AWS Key Management Service                             | Aws::KMS                                 | aws-sdk-kms                                 | 2014-11-01  |
| AWS Lake Formation                                     | Aws::LakeFormation                       | aws-sdk-lakeformation                       | 2017-03-31  |
| AWS Lambda                                             | Aws::Lambda                              | aws-sdk-lambda                              | 2015-03-31  |
| AWS Launch Wizard                                      | Aws::LaunchWizard                        | aws-sdk-launchwizard                        | 2018-05-10  |
| AWS License Manager                                    | Aws::LicenseManager                      | aws-sdk-licensemanager                      | 2018-08-01  |
| AWS License Manager Linux Subscriptions                | Aws::LicenseManagerLinuxSubscriptions    | aws-sdk-licensemanagerlinuxsubscriptions    | 2018-05-10  |
| AWS License Manager User Subscriptions                 | Aws::LicenseManagerUserSubscriptions     | aws-sdk-licensemanagerusersubscriptions     | 2018-05-10  |
| AWS Mainframe Modernization Application Testing        | Aws::AppTest                             | aws-sdk-apptest                             | 2022-12-06  |
| AWS Marketplace Agreement Service                      | Aws::MarketplaceAgreement                | aws-sdk-marketplaceagreement                | 2020-03-01  |
| AWS Marketplace Catalog Service                        | Aws::MarketplaceCatalog                  | aws-sdk-marketplacecatalog                  | 2018-09-17  |
| AWS Marketplace Commerce Analytics                     | Aws::MarketplaceCommerceAnalytics        | aws-sdk-marketplacecommerceanalytics        | 2015-07-01  |
| AWS Marketplace Deployment Service                     | Aws::MarketplaceDeployment               | aws-sdk-marketplacedeployment               | 2023-01-25  |
| AWS Marketplace Entitlement Service                    | Aws::MarketplaceEntitlementService       | aws-sdk-marketplaceentitlementservice       | 2017-01-11  |
| AWS Marketplace Reporting Service                      | Aws::MarketplaceReporting                | aws-sdk-marketplacereporting                | 2018-05-10  |
| AWS MediaConnect                                       | Aws::MediaConnect                        | aws-sdk-mediaconnect                        | 2018-11-14  |
| AWS MediaTailor                                        | Aws::MediaTailor                         | aws-sdk-mediatailor                         | 2018-04-23  |
| AWS Migration Hub                                      | Aws::MigrationHub                        | aws-sdk-migrationhub                        | 2017-05-31  |
| AWS Migration Hub Config                               | Aws::MigrationHubConfig                  | aws-sdk-migrationhubconfig                  | 2019-06-30  |
| AWS Migration Hub Orchestrator                         | Aws::MigrationHubOrchestrator            | aws-sdk-migrationhuborchestrator            | 2021-08-28  |
| AWS Migration Hub Refactor Spaces                      | Aws::MigrationHubRefactorSpaces          | aws-sdk-migrationhubrefactorspaces          | 2021-10-26  |
| AWS Multi-party Approval                               | Aws::MPA                                 | aws-sdk-mpa                                 | 2022-07-26  |
| AWS Network Firewall                                   | Aws::NetworkFirewall                     | aws-sdk-networkfirewall                     | 2020-11-12  |
| AWS Network Manager                                    | Aws::NetworkManager                      | aws-sdk-networkmanager                      | 2019-07-05  |
| AWS Organizations                                      | Aws::Organizations                       | aws-sdk-organizations                       | 2016-11-28  |
| AWS Outposts                                           | Aws::Outposts                            | aws-sdk-outposts                            | 2019-12-03  |
| AWS Panorama                                           | Aws::Panorama                            | aws-sdk-panorama                            | 2019-07-24  |
| AWS Parallel Computing Service                         | Aws::PCS                                 | aws-sdk-pcs                                 | 2023-02-10  |
| AWS Performance Insights                               | Aws::PI                                  | aws-sdk-pi                                  | 2018-02-27  |
| AWS Price List Service                                 | Aws::Pricing                             | aws-sdk-pricing                             | 2017-10-15  |
| AWS Proton                                             | Aws::Proton                              | aws-sdk-proton                              | 2020-07-20  |
| AWS RDS DataService                                    | Aws::RDSDataService                      | aws-sdk-rdsdataservice                      | 2018-08-01  |
| AWS Resilience Hub                                     | Aws::ResilienceHub                       | aws-sdk-resiliencehub                       | 2020-04-30  |
| AWS Resource Access Manager                            | Aws::RAM                                 | aws-sdk-ram                                 | 2018-01-04  |
| AWS Resource Explorer                                  | Aws::ResourceExplorer2                   | aws-sdk-resourceexplorer2                   | 2022-07-28  |
| AWS Resource Groups                                    | Aws::ResourceGroups                      | aws-sdk-resourcegroups                      | 2017-11-27  |
| AWS Resource Groups Tagging API                        | Aws::ResourceGroupsTaggingAPI            | aws-sdk-resourcegroupstaggingapi            | 2017-01-26  |
| AWS RoboMaker                                          | Aws::RoboMaker                           | aws-sdk-robomaker                           | 2018-06-29  |
| AWS Route53 Recovery Control Config                    | Aws::Route53RecoveryControlConfig        | aws-sdk-route53recoverycontrolconfig        | 2020-11-02  |
| AWS Route53 Recovery Readiness                         | Aws::Route53RecoveryReadiness            | aws-sdk-route53recoveryreadiness            | 2019-12-02  |
| AWS S3 Control                                         | Aws::S3Control                           | aws-sdk-s3control                           | 2018-08-20  |
| AWS SSM-GUIConnect                                     | Aws::SSMGuiConnect                       | aws-sdk-ssmguiconnect                       | 2021-05-01  |
| AWS SSO Identity Store                                 | Aws::IdentityStore                       | aws-sdk-identitystore                       | 2020-06-15  |
| AWS SSO OIDC                                           | Aws::SSOOIDC                             | aws-sdk-core                                | 2019-06-10  |
| AWS Savings Plans                                      | Aws::SavingsPlans                        | aws-sdk-savingsplans                        | 2019-06-28  |
| AWS Secrets Manager                                    | Aws::SecretsManager                      | aws-sdk-secretsmanager                      | 2017-10-17  |
| AWS Security Token Service                             | Aws::STS                                 | aws-sdk-core                                | 2011-06-15  |
| AWS SecurityHub                                        | Aws::SecurityHub                         | aws-sdk-securityhub                         | 2018-10-26  |
| AWS Service Catalog                                    | Aws::ServiceCatalog                      | aws-sdk-servicecatalog                      | 2015-12-10  |
| AWS Service Catalog App Registry                       | Aws::AppRegistry                         | aws-sdk-appregistry                         | 2020-06-24  |
| AWS Shield                                             | Aws::Shield                              | aws-sdk-shield                              | 2016-06-02  |
| AWS Signer                                             | Aws::Signer                              | aws-sdk-signer                              | 2017-08-25  |
| AWS SimSpace Weaver                                    | Aws::SimSpaceWeaver                      | aws-sdk-simspaceweaver                      | 2022-10-28  |
| AWS Single Sign-On                                     | Aws::SSO                                 | aws-sdk-core                                | 2019-06-10  |
| AWS Single Sign-On Admin                               | Aws::SSOAdmin                            | aws-sdk-ssoadmin                            | 2020-07-20  |
| AWS Snow Device Management                             | Aws::SnowDeviceManagement                | aws-sdk-snowdevicemanagement                | 2021-08-04  |
| AWS Step Functions                                     | Aws::States                              | aws-sdk-states                              | 2016-11-23  |
| AWS Storage Gateway                                    | Aws::StorageGateway                      | aws-sdk-storagegateway                      | 2013-06-30  |
| AWS Supply Chain                                       | Aws::SupplyChain                         | aws-sdk-supplychain                         | 2024-01-01  |
| AWS Support                                            | Aws::Support                             | aws-sdk-support                             | 2013-04-15  |
| AWS Support App                                        | Aws::SupportApp                          | aws-sdk-supportapp                          | 2021-08-20  |
| AWS Systems Manager Incident Manager                   | Aws::SSMIncidents                        | aws-sdk-ssmincidents                        | 2018-05-10  |
| AWS Systems Manager Incident Manager Contacts          | Aws::SSMContacts                         | aws-sdk-ssmcontacts                         | 2021-05-03  |
| AWS Systems Manager QuickSetup                         | Aws::SSMQuickSetup                       | aws-sdk-ssmquicksetup                       | 2018-05-10  |
| AWS Systems Manager for SAP                            | Aws::SsmSap                              | aws-sdk-ssmsap                              | 2018-05-10  |
| AWS Telco Network Builder                              | Aws::Tnb                                 | aws-sdk-tnb                                 | 2008-10-21  |
| AWS Transfer Family                                    | Aws::Transfer                            | aws-sdk-transfer                            | 2018-11-05  |
| AWS User Notifications                                 | Aws::Notifications                       | aws-sdk-notifications                       | 2018-05-10  |
| AWS User Notifications Contacts                        | Aws::NotificationsContacts               | aws-sdk-notificationscontacts               | 2018-05-10  |
| AWS WAF                                                | Aws::WAF                                 | aws-sdk-waf                                 | 2015-08-24  |
| AWS WAF Regional                                       | Aws::WAFRegional                         | aws-sdk-wafregional                         | 2016-11-28  |
| AWS WAFV2                                              | Aws::WAFV2                               | aws-sdk-wafv2                               | 2019-07-29  |
| AWS Well-Architected Tool                              | Aws::WellArchitected                     | aws-sdk-wellarchitected                     | 2020-03-31  |
| AWS X-Ray                                              | Aws::XRay                                | aws-sdk-xray                                | 2016-04-12  |
| AWS re:Post Private                                    | Aws::Repostspace                         | aws-sdk-repostspace                         | 2022-05-13  |
| AWSBillingConductor                                    | Aws::BillingConductor                    | aws-sdk-billingconductor                    | 2021-07-30  |
| AWSDeadlineCloud                                       | Aws::Deadline                            | aws-sdk-deadline                            | 2023-10-12  |
| AWSKendraFrontendService                               | Aws::Kendra                              | aws-sdk-kendra                              | 2019-02-03  |
| AWSMainframeModernization                              | Aws::MainframeModernization              | aws-sdk-mainframemodernization              | 2021-04-28  |
| AWSMarketplace Metering                                | Aws::MarketplaceMetering                 | aws-sdk-marketplacemetering                 | 2016-01-14  |
| AWSServerlessApplicationRepository                     | Aws::ServerlessApplicationRepository     | aws-sdk-serverlessapplicationrepository     | 2017-09-08  |
| Access Analyzer                                        | Aws::AccessAnalyzer                      | aws-sdk-accessanalyzer                      | 2019-11-01  |
| Agents for Amazon Bedrock                              | Aws::BedrockAgent                        | aws-sdk-bedrockagent                        | 2023-06-05  |
| Agents for Amazon Bedrock Runtime                      | Aws::BedrockAgentRuntime                 | aws-sdk-bedrockagentruntime                 | 2023-07-26  |
| Amazon API Gateway                                     | Aws::APIGateway                          | aws-sdk-apigateway                          | 2015-07-09  |
| Amazon AppConfig                                       | Aws::AppConfig                           | aws-sdk-appconfig                           | 2019-10-09  |
| Amazon AppIntegrations Service                         | Aws::AppIntegrationsService              | aws-sdk-appintegrationsservice              | 2020-07-29  |
| Amazon AppStream                                       | Aws::AppStream                           | aws-sdk-appstream                           | 2016-12-01  |
| Amazon Appflow                                         | Aws::Appflow                             | aws-sdk-appflow                             | 2020-08-23  |
| Amazon Athena                                          | Aws::Athena                              | aws-sdk-athena                              | 2017-05-18  |
| Amazon Augmented AI Runtime                            | Aws::AugmentedAIRuntime                  | aws-sdk-augmentedairuntime                  | 2019-11-07  |
| Amazon Aurora DSQL                                     | Aws::DSQL                                | aws-sdk-dsql                                | 2018-05-10  |
| Amazon Bedrock                                         | Aws::Bedrock                             | aws-sdk-bedrock                             | 2023-04-20  |
| Amazon Bedrock Agent Core Control Plane Fronting Layer | Aws::BedrockAgentCoreControl             | aws-sdk-bedrockagentcorecontrol             | 2023-06-05  |
| Amazon Bedrock AgentCore Data Plane Fronting Layer     | Aws::BedrockAgentCore                    | aws-sdk-bedrockagentcore                    | 2024-02-28  |
| Amazon Bedrock Runtime                                 | Aws::BedrockRuntime                      | aws-sdk-bedrockruntime                      | 2023-09-30  |
| Amazon Chime                                           | Aws::Chime                               | aws-sdk-chime                               | 2018-05-01  |
| Amazon Chime SDK Identity                              | Aws::ChimeSDKIdentity                    | aws-sdk-chimesdkidentity                    | 2021-04-20  |
| Amazon Chime SDK Media Pipelines                       | Aws::ChimeSDKMediaPipelines              | aws-sdk-chimesdkmediapipelines              | 2021-07-15  |
| Amazon Chime SDK Meetings                              | Aws::ChimeSDKMeetings                    | aws-sdk-chimesdkmeetings                    | 2021-07-15  |
| Amazon Chime SDK Messaging                             | Aws::ChimeSDKMessaging                   | aws-sdk-chimesdkmessaging                   | 2021-05-15  |
| Amazon Chime SDK Voice                                 | Aws::ChimeSDKVoice                       | aws-sdk-chimesdkvoice                       | 2022-08-03  |
| Amazon CloudDirectory                                  | Aws::CloudDirectory                      | aws-sdk-clouddirectory                      | 2017-01-11  |
| Amazon CloudFront                                      | Aws::CloudFront                          | aws-sdk-cloudfront                          | 2020-05-31  |
| Amazon CloudFront KeyValueStore                        | Aws::CloudFrontKeyValueStore             | aws-sdk-cloudfrontkeyvaluestore             | 2022-07-26  |
| Amazon CloudHSM                                        | Aws::CloudHSM                            | aws-sdk-cloudhsm                            | 2014-05-30  |
| Amazon CloudSearch                                     | Aws::CloudSearch                         | aws-sdk-cloudsearch                         | 2013-01-01  |
| Amazon CloudSearch Domain                              | Aws::CloudSearchDomain                   | aws-sdk-cloudsearchdomain                   | 2013-01-01  |
| Amazon CloudWatch                                      | Aws::CloudWatch                          | aws-sdk-cloudwatch                          | 2010-08-01  |
| Amazon CloudWatch Application Insights                 | Aws::ApplicationInsights                 | aws-sdk-applicationinsights                 | 2018-11-25  |
| Amazon CloudWatch Application Signals                  | Aws::ApplicationSignals                  | aws-sdk-applicationsignals                  | 2024-04-15  |
| Amazon CloudWatch Events                               | Aws::CloudWatchEvents                    | aws-sdk-cloudwatchevents                    | 2015-10-07  |
| Amazon CloudWatch Evidently                            | Aws::CloudWatchEvidently                 | aws-sdk-cloudwatchevidently                 | 2021-02-01  |
| Amazon CloudWatch Internet Monitor                     | Aws::InternetMonitor                     | aws-sdk-internetmonitor                     | 2021-06-03  |
| Amazon CloudWatch Logs                                 | Aws::CloudWatchLogs                      | aws-sdk-cloudwatchlogs                      | 2014-03-28  |
| Amazon CloudWatch Network Monitor                      | Aws::NetworkMonitor                      | aws-sdk-networkmonitor                      | 2023-08-01  |
| Amazon CodeCatalyst                                    | Aws::CodeCatalyst                        | aws-sdk-codecatalyst                        | 2022-09-28  |
| Amazon CodeGuru Profiler                               | Aws::CodeGuruProfiler                    | aws-sdk-codeguruprofiler                    | 2019-07-18  |
| Amazon CodeGuru Reviewer                               | Aws::CodeGuruReviewer                    | aws-sdk-codegurureviewer                    | 2019-09-19  |
| Amazon CodeGuru Security                               | Aws::CodeGuruSecurity                    | aws-sdk-codegurusecurity                    | 2018-05-10  |
| Amazon Cognito Identity                                | Aws::CognitoIdentity                     | aws-sdk-cognitoidentity                     | 2014-06-30  |
| Amazon Cognito Identity Provider                       | Aws::CognitoIdentityProvider             | aws-sdk-cognitoidentityprovider             | 2016-04-18  |
| Amazon Cognito Sync                                    | Aws::CognitoSync                         | aws-sdk-cognitosync                         | 2014-06-30  |
| Amazon Comprehend                                      | Aws::Comprehend                          | aws-sdk-comprehend                          | 2017-11-27  |
| Amazon Connect Cases                                   | Aws::ConnectCases                        | aws-sdk-connectcases                        | 2022-10-03  |
| Amazon Connect Contact Lens                            | Aws::ConnectContactLens                  | aws-sdk-connectcontactlens                  | 2020-08-21  |
| Amazon Connect Customer Profiles                       | Aws::CustomerProfiles                    | aws-sdk-customerprofiles                    | 2020-08-15  |
| Amazon Connect Participant Service                     | Aws::ConnectParticipant                  | aws-sdk-connectparticipant                  | 2018-09-07  |
| Amazon Connect Service                                 | Aws::Connect                             | aws-sdk-connect                             | 2017-08-08  |
| Amazon Connect Wisdom Service                          | Aws::ConnectWisdomService                | aws-sdk-connectwisdomservice                | 2020-10-19  |
| Amazon Data Lifecycle Manager                          | Aws::DLM                                 | aws-sdk-dlm                                 | 2018-01-12  |
| Amazon DataZone                                        | Aws::DataZone                            | aws-sdk-datazone                            | 2018-05-10  |
| Amazon Detective                                       | Aws::Detective                           | aws-sdk-detective                           | 2018-10-26  |
| Amazon DevOps Guru                                     | Aws::DevOpsGuru                          | aws-sdk-devopsguru                          | 2020-12-01  |
| Amazon DocumentDB Elastic Clusters                     | Aws::DocDBElastic                        | aws-sdk-docdbelastic                        | 2022-11-28  |
| Amazon DocumentDB with MongoDB compatibility           | Aws::DocDB                               | aws-sdk-docdb                               | 2014-10-31  |
| Amazon DynamoDB                                        | Aws::DynamoDB                            | aws-sdk-dynamodb                            | 2012-08-10  |
| Amazon DynamoDB Accelerator (DAX)                      | Aws::DAX                                 | aws-sdk-dax                                 | 2017-04-19  |
| Amazon DynamoDB Streams                                | Aws::DynamoDBStreams                     | aws-sdk-dynamodbstreams                     | 2012-08-10  |
| Amazon EC2 Container Service                           | Aws::ECS                                 | aws-sdk-ecs                                 | 2014-11-13  |
| Amazon EKS Auth                                        | Aws::EKSAuth                             | aws-sdk-eksauth                             | 2023-11-26  |
| Amazon EMR                                             | Aws::EMR                                 | aws-sdk-emr                                 | 2009-03-31  |
| Amazon EMR Containers                                  | Aws::EMRContainers                       | aws-sdk-emrcontainers                       | 2020-10-01  |
| Amazon ElastiCache                                     | Aws::ElastiCache                         | aws-sdk-elasticache                         | 2015-02-02  |
| Amazon Elastic Block Store                             | Aws::EBS                                 | aws-sdk-ebs                                 | 2019-11-02  |
| Amazon Elastic Compute Cloud                           | Aws::EC2                                 | aws-sdk-ec2                                 | 2016-11-15  |
| Amazon Elastic Container Registry                      | Aws::ECR                                 | aws-sdk-ecr                                 | 2015-09-21  |
| Amazon Elastic Container Registry Public               | Aws::ECRPublic                           | aws-sdk-ecrpublic                           | 2020-10-30  |
| Amazon Elastic File System                             | Aws::EFS                                 | aws-sdk-efs                                 | 2015-02-01  |
| Amazon Elastic Kubernetes Service                      | Aws::EKS                                 | aws-sdk-eks                                 | 2017-11-01  |
| Amazon Elastic Transcoder                              | Aws::ElasticTranscoder                   | aws-sdk-elastictranscoder                   | 2012-09-25  |
| Amazon Elastic VMware Service                          | Aws::Evs                                 | aws-sdk-evs                                 | 2023-07-27  |
| Amazon Elasticsearch Service                           | Aws::ElasticsearchService                | aws-sdk-elasticsearchservice                | 2015-01-01  |
| Amazon EventBridge                                     | Aws::EventBridge                         | aws-sdk-eventbridge                         | 2015-10-07  |
| Amazon EventBridge Pipes                               | Aws::Pipes                               | aws-sdk-pipes                               | 2015-10-07  |
| Amazon EventBridge Scheduler                           | Aws::Scheduler                           | aws-sdk-scheduler                           | 2021-06-30  |
| Amazon FSx                                             | Aws::FSx                                 | aws-sdk-fsx                                 | 2018-03-01  |
| Amazon Forecast Query Service                          | Aws::ForecastQueryService                | aws-sdk-forecastqueryservice                | 2018-06-26  |
| Amazon Forecast Service                                | Aws::ForecastService                     | aws-sdk-forecastservice                     | 2018-06-26  |
| Amazon Fraud Detector                                  | Aws::FraudDetector                       | aws-sdk-frauddetector                       | 2019-11-15  |
| Amazon GameLift                                        | Aws::GameLift                            | aws-sdk-gamelift                            | 2015-10-01  |
| Amazon GameLift Streams                                | Aws::GameLiftStreams                     | aws-sdk-gameliftstreams                     | 2018-05-10  |
| Amazon Glacier                                         | Aws::Glacier                             | aws-sdk-glacier                             | 2012-06-01  |
| Amazon GuardDuty                                       | Aws::GuardDuty                           | aws-sdk-guardduty                           | 2017-11-28  |
| Amazon HealthLake                                      | Aws::HealthLake                          | aws-sdk-healthlake                          | 2017-07-01  |
| Amazon Import/Export Snowball                          | Aws::Snowball                            | aws-sdk-snowball                            | 2016-06-30  |
| Amazon Inspector                                       | Aws::Inspector                           | aws-sdk-inspector                           | 2016-02-16  |
| Amazon Interactive Video Service                       | Aws::IVS                                 | aws-sdk-ivs                                 | 2020-07-14  |
| Amazon Interactive Video Service Chat                  | Aws::Ivschat                             | aws-sdk-ivschat                             | 2020-07-14  |
| Amazon Interactive Video Service RealTime              | Aws::IVSRealTime                         | aws-sdk-ivsrealtime                         | 2020-07-14  |
| Amazon Kendra Intelligent Ranking                      | Aws::KendraRanking                       | aws-sdk-kendraranking                       | 2022-10-19  |
| Amazon Keyspaces                                       | Aws::Keyspaces                           | aws-sdk-keyspaces                           | 2022-02-10  |
| Amazon Keyspaces Streams                               | Aws::KeyspacesStreams                    | aws-sdk-keyspacesstreams                    | 2024-09-09  |
| Amazon Kinesis                                         | Aws::Kinesis                             | aws-sdk-kinesis                             | 2013-12-02  |
| Amazon Kinesis Analytics                               | Aws::KinesisAnalytics                    | aws-sdk-kinesisanalytics                    | 2015-08-14  |
| Amazon Kinesis Analytics                               | Aws::KinesisAnalyticsV2                  | aws-sdk-kinesisanalyticsv2                  | 2018-05-23  |
| Amazon Kinesis Firehose                                | Aws::Firehose                            | aws-sdk-firehose                            | 2015-08-04  |
| Amazon Kinesis Video Signaling Channels                | Aws::KinesisVideoSignalingChannels       | aws-sdk-kinesisvideosignalingchannels       | 2019-12-04  |
| Amazon Kinesis Video Streams                           | Aws::KinesisVideo                        | aws-sdk-kinesisvideo                        | 2017-09-30  |
| Amazon Kinesis Video Streams Archived Media            | Aws::KinesisVideoArchivedMedia           | aws-sdk-kinesisvideoarchivedmedia           | 2017-09-30  |
| Amazon Kinesis Video Streams Media                     | Aws::KinesisVideoMedia                   | aws-sdk-kinesisvideomedia                   | 2017-09-30  |
| Amazon Kinesis Video WebRTC Storage                    | Aws::KinesisVideoWebRTCStorage           | aws-sdk-kinesisvideowebrtcstorage           | 2018-05-10  |
| Amazon Lex Model Building Service                      | Aws::LexModelBuildingService             | aws-sdk-lexmodelbuildingservice             | 2017-04-19  |
| Amazon Lex Model Building V2                           | Aws::LexModelsV2                         | aws-sdk-lexmodelsv2                         | 2020-08-07  |
| Amazon Lex Runtime Service                             | Aws::Lex                                 | aws-sdk-lex                                 | 2016-11-28  |
| Amazon Lex Runtime V2                                  | Aws::LexRuntimeV2                        | aws-sdk-lexruntimev2                        | 2020-08-07  |
| Amazon Lightsail                                       | Aws::Lightsail                           | aws-sdk-lightsail                           | 2016-11-28  |
| Amazon Location Service                                | Aws::LocationService                     | aws-sdk-locationservice                     | 2020-11-19  |
| Amazon Location Service Maps V2                        | Aws::GeoMaps                             | aws-sdk-geomaps                             | 2020-11-19  |
| Amazon Location Service Places V2                      | Aws::GeoPlaces                           | aws-sdk-geoplaces                           | 2020-11-19  |
| Amazon Location Service Routes V2                      | Aws::GeoRoutes                           | aws-sdk-georoutes                           | 2020-11-19  |
| Amazon Lookout for Equipment                           | Aws::LookoutEquipment                    | aws-sdk-lookoutequipment                    | 2020-12-15  |
| Amazon Lookout for Metrics                             | Aws::LookoutMetrics                      | aws-sdk-lookoutmetrics                      | 2017-07-25  |
| Amazon Lookout for Vision                              | Aws::LookoutforVision                    | aws-sdk-lookoutforvision                    | 2020-11-20  |
| Amazon Machine Learning                                | Aws::MachineLearning                     | aws-sdk-machinelearning                     | 2014-12-12  |
| Amazon Macie 2                                         | Aws::Macie2                              | aws-sdk-macie2                              | 2020-01-01  |
| Amazon Managed Blockchain                              | Aws::ManagedBlockchain                   | aws-sdk-managedblockchain                   | 2018-09-24  |
| Amazon Managed Blockchain Query                        | Aws::ManagedBlockchainQuery              | aws-sdk-managedblockchainquery              | 2023-05-04  |
| Amazon Managed Grafana                                 | Aws::ManagedGrafana                      | aws-sdk-managedgrafana                      | 2020-08-18  |
| Amazon Mechanical Turk                                 | Aws::MTurk                               | aws-sdk-mturk                               | 2017-01-17  |
| Amazon MemoryDB                                        | Aws::MemoryDB                            | aws-sdk-memorydb                            | 2021-01-01  |
| Amazon Neptune                                         | Aws::Neptune                             | aws-sdk-neptune                             | 2014-10-31  |
| Amazon Neptune Graph                                   | Aws::NeptuneGraph                        | aws-sdk-neptunegraph                        | 2023-11-29  |
| Amazon NeptuneData                                     | Aws::Neptunedata                         | aws-sdk-neptunedata                         | 2023-08-01  |
| Amazon Omics                                           | Aws::Omics                               | aws-sdk-omics                               | 2022-11-28  |
| Amazon OpenSearch Ingestion                            | Aws::OSIS                                | aws-sdk-osis                                | 2022-01-01  |
| Amazon OpenSearch Service                              | Aws::OpenSearchService                   | aws-sdk-opensearchservice                   | 2021-01-01  |
| Amazon Personalize                                     | Aws::Personalize                         | aws-sdk-personalize                         | 2018-05-22  |
| Amazon Personalize Events                              | Aws::PersonalizeEvents                   | aws-sdk-personalizeevents                   | 2018-03-22  |
| Amazon Personalize Runtime                             | Aws::PersonalizeRuntime                  | aws-sdk-personalizeruntime                  | 2018-05-22  |
| Amazon Pinpoint                                        | Aws::Pinpoint                            | aws-sdk-pinpoint                            | 2016-12-01  |
| Amazon Pinpoint Email Service                          | Aws::PinpointEmail                       | aws-sdk-pinpointemail                       | 2018-07-26  |
| Amazon Pinpoint SMS Voice V2                           | Aws::PinpointSMSVoiceV2                  | aws-sdk-pinpointsmsvoicev2                  | 2022-03-31  |
| Amazon Pinpoint SMS and Voice Service                  | Aws::PinpointSMSVoice                    | aws-sdk-pinpointsmsvoice                    | 2018-09-05  |
| Amazon Polly                                           | Aws::Polly                               | aws-sdk-polly                               | 2016-06-10  |
| Amazon Prometheus Service                              | Aws::PrometheusService                   | aws-sdk-prometheusservice                   | 2020-08-01  |
| Amazon Q Connect                                       | Aws::QConnect                            | aws-sdk-qconnect                            | 2020-10-19  |
| Amazon QLDB                                            | Aws::QLDB                                | aws-sdk-qldb                                | 2019-01-02  |
| Amazon QLDB Session                                    | Aws::QLDBSession                         | aws-sdk-qldbsession                         | 2019-07-11  |
| Amazon QuickSight                                      | Aws::QuickSight                          | aws-sdk-quicksight                          | 2018-04-01  |
| Amazon Recycle Bin                                     | Aws::RecycleBin                          | aws-sdk-recyclebin                          | 2021-06-15  |
| Amazon Redshift                                        | Aws::Redshift                            | aws-sdk-redshift                            | 2012-12-01  |
| Amazon Rekognition                                     | Aws::Rekognition                         | aws-sdk-rekognition                         | 2016-06-27  |
| Amazon Relational Database Service                     | Aws::RDS                                 | aws-sdk-rds                                 | 2014-10-31  |
| Amazon Route 53                                        | Aws::Route53                             | aws-sdk-route53                             | 2013-04-01  |
| Amazon Route 53 Domains                                | Aws::Route53Domains                      | aws-sdk-route53domains                      | 2014-05-15  |
| Amazon Route 53 Resolver                               | Aws::Route53Resolver                     | aws-sdk-route53resolver                     | 2018-04-01  |
| Amazon S3 Tables                                       | Aws::S3Tables                            | aws-sdk-s3tables                            | 2018-05-10  |
| Amazon S3 Vectors                                      | Aws::S3Vectors                           | aws-sdk-s3vectors                           | 2025-07-15  |
| Amazon S3 on Outposts                                  | Aws::S3Outposts                          | aws-sdk-s3outposts                          | 2017-07-25  |
| Amazon SageMaker Feature Store Runtime                 | Aws::SageMakerFeatureStoreRuntime        | aws-sdk-sagemakerfeaturestoreruntime        | 2020-07-01  |
| Amazon SageMaker Metrics Service                       | Aws::SageMakerMetrics                    | aws-sdk-sagemakermetrics                    | 2022-09-30  |
| Amazon SageMaker Runtime                               | Aws::SageMakerRuntime                    | aws-sdk-sagemakerruntime                    | 2017-05-13  |
| Amazon SageMaker Service                               | Aws::SageMaker                           | aws-sdk-sagemaker                           | 2017-07-24  |
| Amazon SageMaker geospatial capabilities               | Aws::SageMakerGeospatial                 | aws-sdk-sagemakergeospatial                 | 2020-05-27  |
| Amazon Sagemaker Edge Manager                          | Aws::SagemakerEdgeManager                | aws-sdk-sagemakeredgemanager                | 2020-09-23  |
| Amazon Security Lake                                   | Aws::SecurityLake                        | aws-sdk-securitylake                        | 2018-05-10  |
| Amazon Simple Email Service                            | Aws::SES                                 | aws-sdk-ses                                 | 2010-12-01  |
| Amazon Simple Email Service                            | Aws::SESV2                               | aws-sdk-sesv2                               | 2019-09-27  |
| Amazon Simple Notification Service                     | Aws::SNS                                 | aws-sdk-sns                                 | 2010-03-31  |
| Amazon Simple Queue Service                            | Aws::SQS                                 | aws-sdk-sqs                                 | 2012-11-05  |
| Amazon Simple Storage Service                          | Aws::S3                                  | aws-sdk-s3                                  | 2006-03-01  |
| Amazon Simple Systems Manager (SSM)                    | Aws::SSM                                 | aws-sdk-ssm                                 | 2014-11-06  |
| Amazon Simple Workflow Service                         | Aws::SWF                                 | aws-sdk-swf                                 | 2012-01-25  |
| Amazon SimpleDB                                        | Aws::SimpleDB                            | aws-sdk-simpledb                            | 2009-04-15  |
| Amazon Textract                                        | Aws::Textract                            | aws-sdk-textract                            | 2018-06-27  |
| Amazon Timestream Query                                | Aws::TimestreamQuery                     | aws-sdk-timestreamquery                     | 2018-11-01  |
| Amazon Timestream Write                                | Aws::TimestreamWrite                     | aws-sdk-timestreamwrite                     | 2018-11-01  |
| Amazon Transcribe Service                              | Aws::TranscribeService                   | aws-sdk-transcribeservice                   | 2017-10-26  |
| Amazon Transcribe Streaming Service                    | Aws::TranscribeStreamingService          | aws-sdk-transcribestreamingservice          | 2017-10-26  |
| Amazon Translate                                       | Aws::Translate                           | aws-sdk-translate                           | 2017-07-01  |
| Amazon VPC Lattice                                     | Aws::VPCLattice                          | aws-sdk-vpclattice                          | 2022-11-30  |
| Amazon Verified Permissions                            | Aws::VerifiedPermissions                 | aws-sdk-verifiedpermissions                 | 2021-12-01  |
| Amazon Voice ID                                        | Aws::VoiceID                             | aws-sdk-voiceid                             | 2021-09-27  |
| Amazon WorkDocs                                        | Aws::WorkDocs                            | aws-sdk-workdocs                            | 2016-05-01  |
| Amazon WorkMail                                        | Aws::WorkMail                            | aws-sdk-workmail                            | 2017-10-01  |
| Amazon WorkMail Message Flow                           | Aws::WorkMailMessageFlow                 | aws-sdk-workmailmessageflow                 | 2019-05-01  |
| Amazon WorkSpaces                                      | Aws::WorkSpaces                          | aws-sdk-workspaces                          | 2015-04-08  |
| Amazon WorkSpaces Thin Client                          | Aws::WorkSpacesThinClient                | aws-sdk-workspacesthinclient                | 2023-08-22  |
| Amazon WorkSpaces Web                                  | Aws::WorkSpacesWeb                       | aws-sdk-workspacesweb                       | 2020-07-08  |
| Amazon Workspaces Instances                            | Aws::WorkspacesInstances                 | aws-sdk-workspacesinstances                 | 2022-07-26  |
| AmazonApiGatewayManagementApi                          | Aws::ApiGatewayManagementApi             | aws-sdk-apigatewaymanagementapi             | 2018-11-29  |
| AmazonApiGatewayV2                                     | Aws::ApiGatewayV2                        | aws-sdk-apigatewayv2                        | 2018-11-29  |
| AmazonConnectCampaignService                           | Aws::ConnectCampaignService              | aws-sdk-connectcampaignservice              | 2021-01-30  |
| AmazonConnectCampaignServiceV2                         | Aws::ConnectCampaignsV2                  | aws-sdk-connectcampaignsv2                  | 2024-04-23  |
| AmazonMQ                                               | Aws::MQ                                  | aws-sdk-mq                                  | 2017-11-27  |
| AmazonMWAA                                             | Aws::MWAA                                | aws-sdk-mwaa                                | 2020-07-01  |
| AmplifyBackend                                         | Aws::AmplifyBackend                      | aws-sdk-amplifybackend                      | 2020-08-11  |
| AppFabric                                              | Aws::AppFabric                           | aws-sdk-appfabric                           | 2023-05-19  |
| Application Auto Scaling                               | Aws::ApplicationAutoScaling              | aws-sdk-applicationautoscaling              | 2016-02-06  |
| Application Migration Service                          | Aws::Mgn                                 | aws-sdk-mgn                                 | 2020-02-26  |
| Auto Scaling                                           | Aws::AutoScaling                         | aws-sdk-autoscaling                         | 2011-01-01  |
| Braket                                                 | Aws::Braket                              | aws-sdk-braket                              | 2019-09-01  |
| CloudWatch Observability Access Manager                | Aws::OAM                                 | aws-sdk-oam                                 | 2022-06-10  |
| CloudWatch Observability Admin Service                 | Aws::ObservabilityAdmin                  | aws-sdk-observabilityadmin                  | 2018-05-10  |
| CloudWatch RUM                                         | Aws::CloudWatchRUM                       | aws-sdk-cloudwatchrum                       | 2018-05-10  |
| CodeArtifact                                           | Aws::CodeArtifact                        | aws-sdk-codeartifact                        | 2018-09-22  |
| Cost Optimization Hub                                  | Aws::CostOptimizationHub                 | aws-sdk-costoptimizationhub                 | 2022-07-26  |
| Data Automation for Amazon Bedrock                     | Aws::BedrockDataAutomation               | aws-sdk-bedrockdataautomation               | 2023-07-26  |
| EC2 Image Builder                                      | Aws::Imagebuilder                        | aws-sdk-imagebuilder                        | 2019-12-02  |
| EMR Serverless                                         | Aws::EMRServerless                       | aws-sdk-emrserverless                       | 2021-07-13  |
| Elastic Disaster Recovery Service                      | Aws::Drs                                 | aws-sdk-drs                                 | 2020-02-26  |
| Elastic Load Balancing                                 | Aws::ElasticLoadBalancing                | aws-sdk-elasticloadbalancing                | 2012-06-01  |
| Elastic Load Balancing                                 | Aws::ElasticLoadBalancingV2              | aws-sdk-elasticloadbalancingv2              | 2015-12-01  |
| FinSpace Public API                                    | Aws::FinSpaceData                        | aws-sdk-finspacedata                        | 2020-07-13  |
| FinSpace User Environment Management service           | Aws::Finspace                            | aws-sdk-finspace                            | 2021-03-12  |
| Firewall Management Service                            | Aws::FMS                                 | aws-sdk-fms                                 | 2018-01-01  |
| IAM Roles Anywhere                                     | Aws::RolesAnywhere                       | aws-sdk-rolesanywhere                       | 2018-05-10  |
| Inspector Scan                                         | Aws::InspectorScan                       | aws-sdk-inspectorscan                       | 2023-08-08  |
| Inspector2                                             | Aws::Inspector2                          | aws-sdk-inspector2                          | 2020-06-08  |
| MailManager                                            | Aws::MailManager                         | aws-sdk-mailmanager                         | 2023-10-17  |
| Managed Streaming for Kafka                            | Aws::Kafka                               | aws-sdk-kafka                               | 2018-11-14  |
| Managed Streaming for Kafka Connect                    | Aws::KafkaConnect                        | aws-sdk-kafkaconnect                        | 2021-09-14  |
| Managed integrations for AWS IoT Device Management     | Aws::IoTManagedIntegrations              | aws-sdk-iotmanagedintegrations              | 2025-03-03  |
| Migration Hub Strategy Recommendations                 | Aws::MigrationHubStrategyRecommendations | aws-sdk-migrationhubstrategyrecommendations | 2020-02-19  |
| Network Flow Monitor                                   | Aws::NetworkFlowMonitor                  | aws-sdk-networkflowmonitor                  | 2023-04-19  |
| OpenSearch Service Serverless                          | Aws::OpenSearchServerless                | aws-sdk-opensearchserverless                | 2021-11-01  |
| Partner Central Selling API                            | Aws::PartnerCentralSelling               | aws-sdk-partnercentralselling               | 2022-07-26  |
| Payment Cryptography Control Plane                     | Aws::PaymentCryptography                 | aws-sdk-paymentcryptography                 | 2021-09-14  |
| Payment Cryptography Data Plane                        | Aws::PaymentCryptographyData             | aws-sdk-paymentcryptographydata             | 2022-02-03  |
| PcaConnectorAd                                         | Aws::PcaConnectorAd                      | aws-sdk-pcaconnectorad                      | 2018-05-10  |
| Private CA Connector for SCEP                          | Aws::PcaConnectorScep                    | aws-sdk-pcaconnectorscep                    | 2018-05-10  |
| QApps                                                  | Aws::QApps                               | aws-sdk-qapps                               | 2023-11-27  |
| QBusiness                                              | Aws::QBusiness                           | aws-sdk-qbusiness                           | 2023-11-27  |
| Redshift Data API Service                              | Aws::RedshiftDataAPIService              | aws-sdk-redshiftdataapiservice              | 2019-12-20  |
| Redshift Serverless                                    | Aws::RedshiftServerless                  | aws-sdk-redshiftserverless                  | 2021-04-21  |
| Route 53 Profiles                                      | Aws::Route53Profiles                     | aws-sdk-route53profiles                     | 2018-05-10  |
| Route53 Recovery Cluster                               | Aws::Route53RecoveryCluster              | aws-sdk-route53recoverycluster              | 2019-12-02  |
| Runtime for Amazon Bedrock Data Automation             | Aws::BedrockDataAutomationRuntime        | aws-sdk-bedrockdataautomationruntime        | 2024-06-13  |
| Schemas                                                | Aws::Schemas                             | aws-sdk-schemas                             | 2019-12-02  |
| Security Incident Response                             | Aws::SecurityIR                          | aws-sdk-securityir                          | 2018-05-10  |
| Service Quotas                                         | Aws::ServiceQuotas                       | aws-sdk-servicequotas                       | 2019-06-24  |
| Synthetics                                             | Aws::Synthetics                          | aws-sdk-synthetics                          | 2017-10-11  |
| Tax Settings                                           | Aws::TaxSettings                         | aws-sdk-taxsettings                         | 2018-05-10  |
| Timestream InfluxDB                                    | Aws::TimestreamInfluxDB                  | aws-sdk-timestreaminfluxdb                  | 2023-01-27  |
| TrustedAdvisor Public API                              | Aws::TrustedAdvisor                      | aws-sdk-trustedadvisor                      | 2022-09-15  |
| odb                                                    | Aws::Odb                                 | aws-sdk-odb                                 | 2024-08-20  |

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
