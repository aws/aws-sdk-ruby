# Upgrade Notes

## `aws-sdk-core` - v2.10.0

* This update respects the `AWS_PROFILE` environment variable when using the
  default credential provider chain. Before, due to a logic bug, the default
  credential provider chain would use the `'default'` profile, even if the
  `AWS_PROFILE` environment variable was set. Directly constructing credentials
  using the `Aws::SharedConfig` or `Aws::SharedCredentials` classes did not
  have this issue.

  After this change, you could see a change in default behavior when
  constructing clients if you have the `AWS_PROFILE` environment variable set
  and use the default credential provider chain to construct your client. If
  this is the case for you, you should ensure that the `AWS_PROFILE` environment
  variable is set to the correct value for your use case, or you should
  construct credential objects directly during client construction. If the
  `AWS_PROFILE` environment variable is not set in your runtime environment, you
  are not affected by this change.

## `aws-sdk-core` - v2.5.0

* Due to customer requests, and an analysis of the tradeoffs, we're changing the
  shared configuration features from an opt-in feature to an opt-out feature.
  With this version, the changes to default region support and to the default
  credential provider chain are on by default, and the `AWS_SDK_LOAD_CONFIG`
  environment variable will not be used for any purpose.

  If you wish to opt-out of the new functionality for backwards compatibility
  reasons, set the `AWS_SDK_CONFIG_OPT_OUT` environment variable to any value.
  That will return shared configuration and credential provider chain behavior
  to the behaviors present before version `2.4.0` of the SDK.

## `aws-sdk-core` - v2.4.0

* We are adding support for the shared configuration file used by the CLI,
  `~/.aws/config`. This support provides new credential sources for the default
  credential provider chain, and for default region selection. Since these
  changes could technically be a breaking change to default (and commonly used)
  behavior, there is a feature flag around this functionality.

  To use these new features, you must set the `AWS_SDK_LOAD_CONFIG` environment
  variable. If not set, the existing default behavior will continue.

  Two other upgrading notes are worth keeping in mind for this release:

  * Private interfaces regarding handling of configuration were changed for this
    feature. Those interfaces were marked `@api private`, signifying that they
    should not have been used outside the SDK for development. If you were
    using those classes and functions, you may experience breakage from this
    change.
  * The INI Parser for the shared credential file does have a behavior change
    that could break existing files. The old parser was insensitive to leading
    whitespace, but maintaining that behavior can cause unexpected results. It
    should have been whitespace sensitive all along. If you find behavior
    changes after upgrading, remove leading whitespace from your shared
    credential files.

## `aws-sdk-core` - v2.3.0

* We have replaced the previous `endpoints.json` document that shipped with
  the `aws-sdk-core` gem. The old file defined mapping heuristic for
  constructing regionalized endpoints for services. The new document
  defines explicit regions and services within partitions.

  The old and new document and interfaces were private implementation
  details and were not documented. Any usage of the old document
  or classes would be broken in a 2.3.0 update. Normal SDK usage should
  be completely unaffected by the update. This upgrading note
  exists only as a warning to users who were reaching into the
  internals.

## `aws-sdk-core` - v2.2.0

* We are moving the `Aws::S3::Client` class to use Signature Version 4 by
  default in all regions. This replaces the previous behavior, in which
  some regions would default to a previous signature version, which we called
  the 's3' signer. This signer would then attempt to upgrade to the 'v4' signer
  only when necessary.

  This signature switching behavior has required an increasing amount of special
  support code, and risks the creation of unexpected API calls when we have to
  upgrade signature versions on the fly. It also has been prone to creating
  issues, the most recent of which was visible when using AWS Key Management
  Service alongside the Amazon S3 client for multipart uploads. KMS requires
  signature version 4, and the current Amazon S3 client logic had difficulty
  'raising' the part upload requests to SigV4 with the current code path.
  Defaulting to signature version 4 across S3 should help simplify these issues,
  improve maintainability, and reduce unexpected extra API calls.

  Existing code should continue to work with this change. The new signature
  version doesn't require anything different from you as the caller of the
  client code. If you wish, however, you still have the option to use the
  previous signature version, though there will be no fallbacks to signature
  version 4 - you are responsible for ensuring that your operation supports the
  old signature version in the region your client is operating in, and handling
  any errors that are thrown. You can use the previous signer like so:

  ```ruby
  client = Aws::S3::Client.new(signature_version: 's3')
  ```

## `aws-sdk-resources` - v2.2

* All batch resource operations have been renamed to make it clear
  that they operate in batches on the entire collection.

  * All batch operations are now prefixed with `batch_`, e.g. `#start`
    is now `#batch_start`.

  * All batch operations named "delete" or "terminate" are now suffixed
    with a `!`, e.g. `#delete` is now `#batch_delete!`

  For backwards compatibility, existing batch methods still respond
  to their old names with a deprecation warning. New batch operations
  will strictly follow the new conventions.

## `aws-sdk-resources` - v2.1.31

* A bug was discovered in `Aws::S3::Object#copy_from` and
  `Aws::S3::Object#copy_to` where source and target keys were not getting
  properly URL encoded. This would result in a signature error.

  If you have written code to work around this bug, you should remove the
  URL encoding of your key or it will be double encoded. This works for
  all three calling patterns.

  ```ruby
  s3 = Aws::S3::Resource.new
  obj = s3.bucket('target-bucket').object('target-key')

  # the key will now correctly be encoded as 'unescaped/key%20path'
  obj.copy_from(bucket:'source-bucket', key:'unescaped/key path')

  # the key will now correctly be encoded as 'unescaped/key%20path'
  src = S3::Object.new('source-bucket', 'unescaped/key path')
  obj.copy_from(src)

  # the key will now correctly be encoded as 'unescaped/key%20path'
  obj.copy_from('source-bucket/unescaped/key path')
  ```

## `aws-sdk-core` - v2.0.38

* AWS Lambda is exiting their preview period and has made changes to
  their control plane APIs. If you are invoking methods outside
  of `Aws::Lambda::Client#invoke_async`, you should switch to the
  `Aws::LambdaPreview::Client` until you can upgrade.

  ```ruby
  # returns the stable 2015-03-01 API client
  lambda = Aws::Lambda::Client.new

  # returns the preview API client
  lambda = Aws::LambdaPreview::Client.new
  ```

* Deprecated two methods:

  * `Aws::S3::Client#put_bucket_notification`
  * `Aws::S3::Client#get_bucket_notification`

  These methods have been replaced by:

  * `Aws::S3::Client#put_bucket_notification_configuration`
  * `Aws::S3::Client#get_bucket_notification_configuration`

  The method signatures for the old two methods did not correctly allow users
  to specify multiple topic, queue, and lambda function configurations. The
  new methods, suffixed by `_notification` correct these errors. The new
  methods now also support resource based permissions on notifications to
  lambda functions.


  ```ruby
  s3 = Aws::S3::Client.new

  # old
  s3.put_bucket_notification(
    bucket: 'aws-sdk',
    notification_configuration: {
      topic_configuration: { id:'id1', events:[...] },
      queue_configuration: { id:'id2', events:[...] },
      cloud_function_configuration: { id:'id3', events:[...], invocation_role: '...' },
    }
  )

  # new
  s3.put_bucket_notification_configuration(
    bucket: 'aws-sdk',
    notification_configuration: {
      topic_configurations: [
      	{ id:'id1', events:[...] }
      ],
      queue_configurations: [
      	{ id:'id2', events:[...] }
      ],
      lambda_function_configurations: [
      	{ id:'id3', events:[...] }
      ]
    }
  )
  ```

  Notice the `:lambda_function_configurations` does not take an
  `:invocation_role` and that each of the configuration types now takes
  a list of configurations.

## `aws-sdk-core` - v2.0.25

* Increased the default number of attempts to make when loading credentials from the
  Amazon EC2 instance metadata service before failing from 0 to 5. Also increased
  the default open and read timeouts from 1 to 5 seconds each. This increases the
  reliability of loading instance credentials.

  These new defaults only affect users who are constructing `Aws::InstanceProfileCredential`
  objects directly. If you are using the default credential provider chain, the original
  defaults remain un-changed.

  To revert to default values:

  ```ruby
  Aws.config[:credentials] = Aws::InstanceProfileCredentials.new(
    retries: 0,
    http_open_timeout: 1,
    http_read_timeout: 1
  )
  ```

## `aws-sdk-resources` - v2.0.22

* Removed the `Aws::SQS::Resource` interfaces. These have not been formalized,
  so they have been removed as part of the stable release of the
  `aws-sdk-resources` gem.

* Removed the `Aws::SQS::Resource` interfaces. These are unstable, so they have
  been removed for the public release of `aws-sdk-resources`.

## `aws-sdk-resources` - v2.0.18.pre

* Moved `Aws::IAM::Role#update_assume_role_policy` to a new resource class.

  ```ruby
  iam = Aws::IAM::Resource.new

  # old
  iam.role('name').update_assume_role_policy(policy_document:'...')

  # new
  iam.role('name').assume_role_policy.update(policy_document:'...')
  ```

* Renamed two methods on `Aws::IAM::MFADevice`.

  * `#enable` -> `#associate`
  * `#disable` -> `#disassociate`

* Removed `Aws::IAM::AccountSummary`. Calling
  `Aws::IAM::Resource#create_account_summary` no longer returns a resource
  object.

  ```ruby
  iam = Aws::IAM::Resource.new

  # old
  iam.create_account_alias(account_alias:'alias')
  iam.account_alias('alias').delete

  # new (no need to specify the alias when deleting)
  iam.create_account_alias(account_alias:'alias')
  iam.delete_account_alias
  ```

  Also, the `Aws::IAM::Resource#account_aliases` method has been removed.
  There is no replacement. IAM does not permit more than one account
  alias.

## `aws-sdk-resources` - v2.0.14.pre

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

# Upgrading from v1?

Please see [MIGRATING.md](https://github.com/aws/aws-sdk-ruby/blob/version-2/MIGRATING.md)
