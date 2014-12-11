# Upgrade Notes

## `aws-sdk-resources` - v2.0.13.pre

* Removed `:topic_arn` from the list of identifiers required
  to construct an `Aws::SNS::Subscription`. Subscription
  is no longer a sub-resource of Topic.

  ```ruby
  sns = Aws::SNS::Resource.new

  # old
  subscription = sns.topic(topic_arn).subscription(subscription_arn)

  # new
  subscription = sns.subscription(subscription_arn)
  ```

## `aws-sdk-resources` - v2.0.11.pre

* Renamed `Aws::IAM::User#create_access_key` to `#create_access_key_pair`.
  The return value from this method has changed from an instance of
  `AccessKey` to `AccessKeyPair` and now has an additional method,
  `#secret`.

  ```ruby
  iam = Aws::IAM::Resource.new

  # old
  key_pair = iam.user('name').create_access_key
  key_pair.id     #=> access key id
  key_pair.secret #=> raises NoMethodError, oops

  # new
  key_pair = iam.user('name').create_access_key_pair
  key_pair.id     #=> access key id
  key_pair.secret #=> secret_access_key
  ```

## `aws-sdk-resources` - v2.0.7.pre

* Moved `Aws::S3::MultipartUpload#upload_part` and `#copy_part` to
  `Aws::S3::MultipartUploadPart#upload` and `#copy`.

  ```ruby
  mpu = s3.bucket('name').object('key').multipart_upload('id')

  # old
  mpu.upload_part(part_number:1, body:data)
  mpu.copy_part(part_number:1, copy_source:...)

  # new
  mpu.part(1).upload(body:data)
  mpu.part(1).copy(copy_source:...)
  ```

* Renamed `Aws::OpsWorksStack#get_summary` to `Aws::OpsWorks::Stack#summary`.
  Additionally, this now returns a resource object of type
  `Aws::OpsWorks::StackSummary`. This new object should have all of the same
  methods and the previous.

## `aws-sdk-core` - v2.0.0

The `aws-sdk-core` gem has moved from developer preview to a stable 2.0.0
release. Deprecated interfaces have been removed.

* 2.0.0 stable release of `aws-sdk-core` is now available

      gem install aws-sdk-core

* 2.0.0 previews of `aws-sdk` and `aws-sdk-resources` are now available

      gem install aws-sdk --pre

* Removed deprecated constructor on service modules.

      Aws::EC2.new # removed

      Aws::EC2::Client.new # do this

* Removed deprecated service helpers on Aws module.

      Aws.ec2 # removed

      Aws::EC2::Client.new # use this

## `aws-sdk-core` - v2.0.0.rc15

RC15 updates the `Aws::DynamoDB::Client` API operations to accept and return
simple attribute values. Prior to rc14 values were specified as:

    { s: 'string-value' }
    { n: "5.0" }

This update applies a plugin that allows users to specify values using simple
Ruby types, such as Integer, Float, Set, String, etc.

    "string-value"
    5.0

This affects **every** DynamoDB request and response structure
that accepts or returns an attribute value. To revert to the older format,
disable simple attributes:

    # disable this new default behavior
    Aws::DynamoDB::Client.new(simple_attributes: false)

**Please Note** - RC15 may be the final release candidate version prior to
a 2.0.0 final release of `aws-sdk-core`.

## `aws-sdk-core` - v2.0.0.rc14

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

## `aws-sdk-core` - v2.0.0.rc11

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
