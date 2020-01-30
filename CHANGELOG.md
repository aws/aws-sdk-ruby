Unreleased Changes
------------------

* Issue - JSON - Removed the dependency on the json gem because it is a default gem since ruby 1.9.

1.67.0 (2017-04-03)
------------------

* Issue - Nokogiri - Removed the version lock on Nokogiri. See the [Nokogiri CHANGELOG](https://github.com/sparklemotion/nokogiri/blob/master/CHANGELOG.md) for details. Keep in mind that Nokogiri 1.7.1 requires Ruby version 2.1.0 or greater. Customers of Ruby 1.8, 1.9, and 2.0 will not be able to upgrade without version locking Nokogiri and should review for any issues with running on an older version. 

Version 1 of the AWS SDK for Ruby remains end of life - future releases will only address security issues.

1.66.0 (2015-09-04)
------------------

* Issue - AWS::S3 - Resolved an issue where the SDK would not retry errors returned
  from Amazon S3 inside the bodies of 200 status code HTTP responses. This was
  correctly handled for `AWS::S3::Client#complete_multipart_upload`, but
  not for `#copy_part`, and `:copy_object`.

  This fix addresses an issue where managed multipart copies would raise an
  error about a missing etag. These operations should now be retried up to
  three times and raise a terminal error if they are not successful.

  See [related GitHub issue #870](https://github.com/aws/aws-sdk-ruby/issues/870).

1.65.0 (2015-08-20)
------------------

* Feature - AWS::OpsWorks - Updated `AWS::OpsWorks::Client` to support the latest API
  features.

* Issue - AWS::EC2 - Now conditionally extracting DestintationCidrBlock from VPC
  endpoints.

  See [related GitHub issue #864](https://github.com/aws/aws-sdk-ruby/issues/864).

* Issue - Instance Profile Credentials - Resolved an issue were the instance
  profile credentials provider could cache empty credentials and fail to
  refresh.

1.64.0 (2015-04-03)
------------------

* Feature - AWS::Kinesis - Added support for `AWS::Kinesis::Client#put_records`.

  See [related GitHub issue #760](https://github.com/aws/aws-sdk-ruby/issues/760).

1.63.0 (2015-02-18)
------------------

* Feature - AWS::CloudFront - Added support for the 2014-11-06 API version.

* Feature - AWS::IAM - Added support for managed policies.

1.62.0 (2015-02-12)
------------------

* Feature - AWS::AutoScaling - Added support for classic link to launch configurations.
  Closes #691.

* Feature - AWS::EC2 - `AWS::EC2::InstanceCollection#create` now passes through the
  optional `:client_token`. Resolves #640.

* Feature - AWS::S3 - Added a `:request_payer` option to `AWS::S3::Client#get_object`
  that sets the "x-amz-request-payer" header with the given value.

* Issue - AWS::S3 - Resolved an issue with `AWS::S3::Client#get_bucket_location`
  for buckets in the eu-central-1 region.

* Issue - AWS::S3 - Backported the "Expect: 100-continue" patch from the v2
  AWS SDK for Ruby and enabled expect 100 continue behavior by default
  when working with Amazon S3. Fixes #241.

* Issue - AWS::S3 - Added `:secure` to the list of special fields for the
  pre-signed post tool. Fixes #641.

* Issue - AWS::S3 - The `AWS::S3::S3Object#restore` method now passes through
  all additional options. Fixes #574.

* Issue - AWS::Route53 - Resolved an issue that caused the following code
  to raise an error:

  ```ruby
  AWS::Route53.new.hosted_zones.first
  #=> was previously raising an ArgumentError
  ```

1.61.0 (2015-01-15)
----------------------

* Feature - AWS::EC2::Client - Updated to the latest 2014-10-01 API version.

* Feature - AWS::ElasticTranscoder::Client - Added support for the new
  encryption features.

* Issue - AWS::Redshift - Updated API model to support tagging. Without
  this update, tags are flattened in the response data.
  Resolves GitHub issue #685.

* Issue - AWS::ELB - Added paging to `LoadBalancerCollection#each`. This
  prevents load balancers from being truncated at 400 items.
  Resolves GitHub issue #680.

1.60.2 (2014-12-22)
----------------------

* Feature - AWS::SimpleWorkflow - Added getters to AWS::SimpleWorflow resource
  classes for the new task priority attributes.

* Issue - Ruby 1.8.7 - Replaced some Ruby 1.9.3+ hash syntax with
  hash rockets to be compatible with Ruby 1.8.7.

1.60.1 (2014-12-18)
----------------------

* Issue - AWS::SimpleWorkflow - Fixed a regression in the SWF API model
  introduced in the v1.60.0 release.

1.60.0 (2014-12-18)
----------------------

* Feature - AWS::SimpleWorkflow - Added support to `AWS::SimpleWorkFlow::Client`
  for task priorities.

* Issue - OpenSSL - Replaced the usage of `Digest` with `OpenSSL::Digest`. This
  resolves some thread-safety issues. See the related pull request at:
  (https://github.com/aws/aws-sdk-ruby/pull/663).

1.59.1 (2014-12-03)
----------------------

* Issue - AWS::CloudFront - Fixed the API version in CloudFront requests.

1.59.0 (2014-11-17)
----------------------

* Feature - AWS::IAM - Added support for the OpenID Connect provides to
  `AWS::IAM::Client`.

* Feature - AWS::ElastiCache - Updated `AWS::ElastiCache::Client` to the
  2014-09-30 API version.

* Feature - AWS::Route53 - Updated `AWS::Route53::Client` API model.

* Feature - AWS::ELB - Updated `AWS:ELB::Client` API model.

* Feature - AWS::CloudFront - Added support for the 2014-11-06 CloudFront
  API version.

* Issue - AWS::S3::Client - Fixed error message for invalid AWS::S3
  signature version.

1.0.0 - 1.58.0
----------------------

* No changelog entries.

