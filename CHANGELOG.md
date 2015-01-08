Unreleased Changes
------------------

* Feature - Aws::RDS - Updated to the latest API version, 2014-10-31, adding
  support for the new `#describe_pending_maintenance_actions` operation to
  `Aws::RDS::Client`.

* Issue - Aws::S3 - Resolved an issue with `Aws::S3::Client#get_bucket_location`.
  Fixes GitHub issue #185.

* Upgrading - Aws::IAM - Moved `Aws::Role#update_assume_role_policy` to a
  new resource class.

  ```ruby
  iam = Aws::IAM::Resource.new

  # old
  iam.role('name').update_assume_role_policy(policy_document:'...')

  # new
  iam.role('name').assume_role_policy.update(policy_document:'...')
  ```

* Upgrading - Aws::IAM - Renamed two methods on `Aws::IAM::MFADevice`.

  * `#enable` -> `#associate`
  * `#disable` -> `#disassociate`

* Upgrading - Aws::IAM - Removed `Aws::IAM::AccountSummary`. Calling
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

2.0.17 (2014-12-22)
------------------

* Issue - Request Marshalling - Resolved an issue with how blob types
  are marshalled into a JSON request body. Resolved by #180, fixes
  #178, #182.

2.0.16 (2014-12-18)
------------------

* Feature - Aws::SWF - Added support for task priorities.

* Feature - Aws::S3::Encryption::Client - Added new options to
  `Aws::S3::Encryption::Client#get_objet`. You can now pass the
  following options to `#get_object`:

  * `:envelope_location`
  * `:instruction_file_suffix`

  Passing these options override the default values determined
  during construction of the `Aws::S3::Encryption::Client`.

2.0.15 (2014-12-17)
------------------

* Feature - Client-Side Encryption - Added `Aws::S3::Encryption::Client`
  which allows users to perform PUT and GET Object operations against
  Amazon S3 while encrypting and decrypting the object client-side.

  ```ruby
  require 'openssl'
  key = OpenSSL::Cipher.new("AES-256-ECB").random_key

  # vanilla S3 client
  s3 = Aws::S3::Client.new(region:'us-west-2', credentials: ...)

  # encryption client
  s3e = Aws::S3::Encryption::Client.new(encryption_key: key, client: s3)

  # round-trip an object, encrypted/decrypted locally
  s3e.put_object(bucket:'aws-sdk', key:'secret', body:'handshake')
  s3e.get_object(bucket:'aws-sdk', key:'secret').body.read
  #=> 'handshake'

  # attempt to read the encrypted object without the encryption client
  s3.get_object(bucket:'aws-sdk', key:'secret').body.read
  #=> "... cipher text ..."
  ```

  You can configure a `:key_provider` to the encyrption client to allow
  for using multiple decryption keys. See the `Aws::S3::Encryption::Client`
  API documentation for more information.

* Feature - Async Handlers - The HTTP handler now signals the response
  object on HTTP headers, data, complete and errors. This allows downstream
  handlers to handler HTTP events as they happen. As a result, all
  handlers calling `#on(...)` on the response object no longer need
  to block on the HTTP response being complete.

* Feature - Aws::DynamoDB - Now calculating a CRC32 checksum of the
  HTTP response body on every request and comparing it against the
  value returned by Amazon DynamoDB in the `X-Amz-Crc32` header.
  Failed checksums trigger an automatic retry.

  You can disable this checksum by passing `compute_checksums: false`
  to the Aws::DynamoDB::Client constructor:

  ```ruby
  ddb = Aws::DynamoDB::Client.new # verify crc32 checksums
  ddb = Aws::DynamoDB::Client.new(compute_checksums: false) # disabled
  ```

* Feature - Aws::EMR - Added support for accessing the new normalized
  instance hours attribute.

* Feature - Aws::StorageGateway - Added support for for the new ResetCache
  API operation.

2.0.14 (2014-12-12)
------------------

* Feature - Aws::ElasticTranscoder - Added support for user metadata to
  `Aws::ElasticTranscoder::Client`.

* Feature - Aws::Glacier - Added support for data retrieval policies to
  `Aws::Glacier::Client`.

* Upgrading - Aws::SNS - Removed `:topic_arn` from the list of identifiers
  required to construct an `Aws::SNS::Subscription`. Subscription is no
  longer a sub-resource of Topic.

  ```ruby
  sns = Aws::SNS::Resource.new

  # old
  subscription = sns.topic(topic_arn).subscription(subscription_arn)

  # new
  subscription = sns.subscription(subscription_arn)
  ```

2.0.13 (2014-12-08)
------------------

* Feature - Aws::SQS - Added support for purging queues.

* Feature - Aws::OpsWorks - You can now use AWS OpsWorks with existing EC2
  instances and on-premises servers.

* Issue - Aws::CloudFront - Resolved an issue that prevented the client
  paginators from working. Fixes #169.

2.0.12 (2014-12-04)
------------------

* Feature - Aws::S3 - Added a `#public_url` method to `Aws::S3::Object`.
  Use this method to generate a URL that can be pasted into the
  browser for objects with a "public-read" ACL.

  ```ruby
  s3 = Aws::S3::Resource.new(region:'us-west-2')
  s3.bucket('aws-sdk').object('key').public_url
  #=> "https://aws-sdk.s3-us-west-2.amazonaws.com/key"
  ```

* Feature - Aws::Route53 - Added support to `Aws::Route53::Client` for the new
  UpdateHostedZoneComment operation.

* Feature - Aws::IAM - Added support to `Aws::IAM::Client` for the new
  GetAccountAuthorizationDetails operation.

* Feature - Aws::Kinesis - Added support to `Aws::Kinesis::Client` for the new
  PutRecords operation.

  ```ruby
  kinesis = Aws::Kinesis::Client.new
  kinesis.put_records(stream_name: '...', records:[...])
  ```

* Issue - Aws::STS::Client - Resolved an issue with the endpoint used for Gov Cloud.
  Resolves issue #167.

* Issue - Persistent Connections - Resolved an issue that prevented Aws::S3::Client
  from re-using HTTP connections.

2.0.11 (2014-11-26)
------------------

* Feature - Aws::ElasticTranscoder - Added support for encyption using
  AWS Key Management Service.

* Feature - Aws::DataPipeline - Added support for templates.

* Issue - Aws::S3 - Resolved an issue where object keys with plus
  signs were incorrectly un-marhsalled from the XML response when
  keys are URL encoded. Fixes #161.

* Upgrading - Aws::IAM - Renamed `Aws::IAM::User#create_access_key`
  to `#create_access_key_pair`. Also returning an AccessKeyPair
  now instead of an AccessKey.

  ```ruby
  key_pair = iam.user('username').create_access_key_pair
  key_pair.id     #=> access key id
  key_pair.secret #=> secret access key
  ```

2.0.10 (2014-11-20)
------------------

* Feature - Aws::Redshift - Added support for AWS Key Management Service (KMS)
  integration.

* Issue - Aws::KMS - Corrected the paginators for `Aws::KMS::Client`.

* Issue - Aws::IAM - Corrected the signature version 4 signing name when
  using `Aws::IAM::Client` in the `us-gov-west-1` region.
  Fixes #159

* Issue - Aws::S3 - Resolved an issue when making a GET Object request against
  an object encrypted with AWS KMS. Automatically using signature version 4
  for GET requests in all known regions. When the region is not known, a best
  effort is made to determine the region. Fixes #157.

* Issue - Aws::S3 - The `Aws::S3::Client#get_bucket_location` operation will no
  longer use DNS addressing and will instead use path-addressing for the bucket
  name. This avoids signature errors for v4-only regions when the classic
  endpoint is used with a v2 signature.

* Issue - Aws::S3 - Fixed a bug in `#put_object_acl` serialization.
  Fixes #160.

2.0.9 (2014-11-13)
------------------

* Feature - New Service - Added support for Amazon Lambda.

  ```ruby
  lambda = Aws::Lambda::Client.new
  ```

* Feature - Aws::S3 - Added support for event notifications to
  `Aws::S3::Client`.

* Feature - Aws::ConfigService - Added paginators for
  `Aws::ConfigService::Client#get_resource_config_history`.

2.0.8 (2014-11-12)
------------------

* Feature - New Service - Added support for AWS CodeDeploy.

  ```ruby
  cd = Aws::CodeDeploy::Client.new
  ```

* Feature - New Service - Added support for Amazon Key Management Service (KMS).

  ```ruby
  kms = Aws::KMS::Client.new
  ```

* Feature - New Service - Added support for AWS Config.

  ```ruby
  cfg = Aws::ConfigService::Client.new
  ```

* Feature - Aws::S3 - Added support for server-side encryption using
  Amazon Key Management Service (KMS).

* Feature - Aws::CloudFormation - Added support for the new GetTemplateSummary
  API call via `Aws::CloudFormation::Client#get_template_summary`.

* Feature - Aws::EC2::Instance - Added `#decrypt_windows_password` method
  to the Instance class.

* Feature - Aws::CloudTrail - Added support for Amazon CloudWatch logs delivery.

* Feature - Aws::EC2 - Added support for EBS encryption with Amazon KMS.

2.0.7 (2014-11-06)
------------------

* Feature - Aws::CognitoSync - Added support for push sync.

* Feature - Aws::Route53 - Added support for private DNS. Also,
  `Aws::Route53::Client` now defaults to signature version 4.

* Feature - Aws::CloudFront - Added support for the 2014-10-21 API version.

* Upgrading - `Aws::OpsWorks::Stack` - Renamed `#get_summary` to
  `#summary`.

* Feature - `Aws::S3::Bucket` - Added a `#url` method that returns
  the public URL for the bucket.

* Issue - JSON Protocol - Resolved an issue with serializing JSON requests
  where the operation does not model any input.

* Issue - `Aws::S3::ObjectVersion` - The `#get` and `#head` methods were incorrectly
  marked as batch actions instead of instance actions.

2.0.6 (2014-10-30)
------------------

* Feature - Amazon S3 - Added resource classes for object versions.
  Also added `Aws::S3::Bucket#delete!` using the batch delete feature
  of `Aws::S3::ObjectVersion`.

  ```ruby
  bucket = S3::Resource.new.bucket('aws-sdk-versioned')

  # enumerate every versioned object in a bucket
  bucket.object_versions.each do |obj_version|
    # ...
  end

  # delete every object version in a bucket (two options)
  bucket.object_versions.delete
  bucket.clear!

  # delete a bucket and all of its objects
  bucket.delete!
  ```

* Feature - Amazon S3 - You can now pass
  `:compute_parts => true` to `Aws::S3::MultipartUpload#complete` and the
  part list will be computed automatically by calling `#list_parts` on
  the client.

  ```ruby
  s3 = Aws::S3::Resource.new
  upload = s3.bucket('bucket-name').object('key').multipart_upload('id')
  obj = upload.complete(compute_parts:true)
  ```

* Feature - `Aws::EC2::Instance` Waiters - Added the following methods to
  the instance resource class:

  * `#wait_until_running`
  * `#wait_until_stopped`
  * `#wait_until_terminated`

* Feature - SQS Batch Message Delete - `Aws::SQS::Message` objects can
  now be deleted in batches. See #141.

  ```ruby
  messages = queue.receive_messages(max_number_of_messages: 5)
  # do something with messages ...
  messages.delete # delete the batch of messages in a single request
  ```ruby

* Feature - Batch Resource Actions - Added the following operations that can
  be called on collections or batches of `Aws::EC2::Instance` objects:

  * `#create_tags`
  * `#monitor`
  * `#unmonitor`
  * `#start`
  * `#stop`
  * `#reboot`
  * `#terminate`

  Also added `Aws::EC2::Tag::Batch#delete`.

* Upgrading - Dependencies - Replaced JMESPath library dependency from the
  `jamespath` gem to the newer `jmespath` gem. The `jmespath` gem has full
  compliance with the JMESPath spec.

2.0.5 (2014-10-23)
------------------

* Feature - Amazon EC2 - Added support for the 2014-09-01 API version. Also
  expanded coverage of resource interfaces, waiters, and paginators.

* Issue - Amazon EC2 - Now defaulting to signature version 4 so that
  `Aws::EC2::Client` works in the new 'eu-central-1' region without extra
  configuration.

2.0.4 (2014-10-23)
------------------

* Feature - Paginators - Added support for paging `Aws::EC2::Client#describe_volumes`.

* Feature - Route53 Domains - Added support for auto-renew domains.

* Feature - Open-ID Connect - Added support for Open-ID Connect to
  `Aws::IAM::Client` and `Aws::EC2::Client`.

* Feature - Queue Attributes - `Aws::SQS::Queue` now has getter methods for
  queue attributes that return type-casted values from the `#attributes`
  hash.

  ```ruby
  # before
  queue.attributes['CreatedTimestamp'] #=> '1413825896' (epoc seconds)
  queue.attributes['DelaySeconds'] #=> '60' (string seconds)
  queue.attributes['QueueArn'] #=> 'arn'

  # after
  queue.created_timestamp #=> 2014-10-20 10:24:56 -0700 (Time obj)
  queue.delay_seconds #=> 60 (integer seconds)
  queue.arn #=> 'arn' (without extra queue_ prefix on method)
  ```

* Feature - Assume Role Credentials - Added a credentials class that assumes
  a role via `Aws::STS::Client#assume_role`. Credentials are automatically
  refreshed before the expire:

  ```ruby
  credentials = Aws::AssumeRoleCredentials.new(
    role_arn: 'role-arn',
    role_session_name: 'session-name',
    client: Aws::STS::Client.new(...)
  )
  ```

* Issue - Aws::PageableResponse - Calling `#count` on a pageable response
  was triggering n API calls to get the number of response pages. Instead
  it raises an error now, unless the wrapped data object responds to
  count. Fixes #106.

2.0.3 (2014-10-16)
------------------

* Feature - Amazon RDS - Added support for the 2014-09-01 API version.

* Feature - Pre-signed URLs - Added the ability to generate presigned
  URLs from an `Aws::S3::Object`.

      s3 = Aws::S3::Resource.new
      obj = s3.bucket('aws-sdk').object('key').

      obj.presigned_url(:get)
      #=> "https://bucket-name.s3.amazonaws.com/object-key?..."

  URLs expire in 15 minutes by default. You can configure the
  expiration period and provide additional params:

      # url expires in one hour, the file upload will be
      # publicly accessible
      obj.presigned_url(:put, expires_in: 3600, acl: 'public-read')

* Feature - HTTP - Added the ability to configure the CA Cert store
  for HTTPs requests.

      Aws.config[:ssl_ca_store] = OpenSSL::X509::Store.new

* Feature - Waiters - Added waiters for Amazon EC2 instance
  instance and system status.

* Feature - Waiters - Added waiters for Amazon EC2 image availability.

* Feature - Waiters - Added `:job_complete` waiter to
  Aws::ElasticTranscoder::Client.

* Feature - Aws::CloudSearch::Client - Added support for configuring advanced
  Japanese language processing.

* Issue - Resolved an issue with the query serializer sending `nil`
  values. See #133.

2.0.2 (2014-10-08)
------------------

* Feature - DynamoDB Document Attributes - Added support for hashes,
  arrays, booleans, and nil to DynamoDB attribute values.

      ddb.put_item(table_name:'name', item: {
        id: 123,
        complex: {
          attributes: true
          lists: ['with', { mixed: true }, 123, 'data'],
        }
      })

* Feature - S3::Object#upload_file - Added a utility method for uploading
  files to Amazon S3. This method automatically manages uploading large
  objects using the multipart upload APIs.

  ```ruby
  s3 = Aws::S3::Resource.new
  s3.bucket('aws-sdk').object('key').upload_file('/path/to/file')
  ```

* Feature - Instance Profile Credentials - Added the ability to configure the
  number of attempts to make when loading instance profile credentials.

  ```ruby
  # makes at most 4 attempts to load credentials
  InstanceProfileCredentials.new(retries:3)
  ```

* Feature - Stubbing Client Responses - Added support for stubbing
  client responses without making API calls. In addition to the
  default fake resposnes, you can provide stub data and errors:

  ```ruby
  s3 = Aws::S3::Client.new(stub_responses: true)
  s3.stub_responses(:list_buckets, buckets:[{name:'aws-sdk'}])
  s3.list_buckets.buckets.map(&:name)
  #=> ['aws-sdk']
  ```

  See API docs for `Aws::Client#stub_responses` for more information.

* Feature - S3 Waiters - Added resource waiters for `S3::Bucket` and
  `S3::Object`.

* Issue - Aws::SQS::Client#receive_message - Resolved an issue where
  the response from `#receive_message` could return `nil` for `#messages`.
  It now always returns an array.

* Issue - Waiters - Resolved an issue with `Aws::EC2::Client#wait_until`
  and the volume status waiters. These were polling the incorrect API
  method causing `#wait_until` to raise an error. See issue #129.

2.0.1 (2014-09-29)
------------------

* Feature - Aws::CognitoIdentity::Client - Added support for Cognito developer identities.

* Issue - Region - Now giving a helpful error message when a region is
  not configured. Was previously exposing a URI parse error message.

2.0.0 (2014-09-25)
------------------

* Feature - S3 Presigned URLs - Added support for pre-signed URLs for
  Amazon S3.

  ```ruby
  presigner = Aws::S3::Presigner.new
  presigner.presigned_url(:put_object, bucket:'aws-sdk', key:'key')
  #=> "https://aws-sdk.s3.amazonaws.com/key?..."
  ```

* Feature - Autoload - Service modules / classes now autoload upon first
  use. This speeds up gem load time significantly.

* Feature - Resources - Resource constructors now pass additional
  options to the Client constructor when `:client` is not provided.

* Issue - SigV4 - Resolved an issue with how version 4 signatures generated
  the normalized querystring. Query params without a value now consistantly
  receive a trailing `=`.

* Issue - SigV4 - Resolved an issue with how version 4 signatures generated
  the normalized querystring. Query params are now sorted by name.

2.0.0.rc16 (2014-09-11)
------------------

* Feature - Waiters - Added a new feature called waiters. Waiters poll a
  single API until a certain condition is matched. Waiters are invoked
  by a name and can be configured.

      # client waiter
      ec2 = Aws::EC2::Client.new
      ec2.wait_until(:instance_stopped, instance_ids:['i-12345678'])

      # resource waiters
      instance = Aws::EC2::Instance.new(id:'i-12345678')
      instance.start
      instance.wait_until_running

  See the client API documentation for `#wait_until` and the resource API
  documentation for `#wait_until_{condition}`.

* Feature - Resources - Merged in resources branch. You can now use
  resource-oriented interfaces with `Aws::S3`, `Aws::EC2`, `Aws::SQS`,
  `Aws::SNS`, `Aws::Glacier`,
  and `Aws::IAM`.

* Feature - New Gems - Organized the repository into three gems, `aws-sdk`,
  `aws-sdk-resources`, and `aws-sdk-core`. Moved library and test files
  each into their respective gem directories.

* Issue - Error Class Names - Resolved an issue that could raise a
  `NameError`, "wrong constant name" at runtime in response to a service
  error. Fixes #97.

* Issue - `Aws::CloudSearchDomain::Client` - Resolved an issue that would cause
  the `Aws::CloudSearchDomain::Client` constructor to raise an error when
  `Aws.config[:region]` is set. Fixes #103.

* Issue - Shared Credentials - Resolved an issue where an error was raised
  if the shared AWS credentials file is present and is empty or missing the
  default profile. Fixes #104.

2.0.0.rc15 (2014-08-14)
-----------------------

* Feature - `Aws::S3::Client` - Enabling url-encoding of Amazon S3 keys by default.
  Keys are decoded before response data is returned. See [#95](https://github.com/aws/aws-sdk-core-ruby/issues/95).

* Feature - `Aws::ElasticLoadBalancing::Client` - Added support for the new tagging
  operations.

* Feature - `Aws::CloudSearch::Client` - Will now sign requests when credentials
  are provided. You can continue making unauthenticated requests if you do not
  configure credentials to the client.

* Feature - Coverage - Now generating coverage reports during Travis builds
  and reporting via Coveralls.io.

* Upgrading - `Aws::DynamoDB::Client` - Added a plugin that simplifies working
  with DynamoDB attribute values. Enabled by default, to restore default
  behavior, use `:simple_attributes => false`.

* Issue - Documentation - Now loading API files with UTF-8 encoding.
  See [#92](https://github.com/aws/aws-sdk-core-ruby/issues/92).

2.0.0.rc14 (2014-08-05)
-----------------------

* Upgrading - Client Classes - Versioned client classes removed, e.g.
  `Aws::S3::Client::V20060301.new` is now `Aws::S3::Client.new` The
  `:api_version` constructor option is no longer accepted.

* Upgrading - `Aws` Module - Helper methods on `Aws` for client classes
  deprecated; For example, calling `Aws.s3` will generate a deprecation
  warning. Use `Aws::S3::Client.new` instead. Helpers will be removed as
  of v2.0.0 final.

* Upgrading - Config - When configuring an `:endpoint`, you must now specify
  the HTTP scheme, e.g. "http://localhost:3000", instead of "localhost:3000".

2.0.0.rc1 - 2.0.0.rc13
----------------------

* No changelog entries.
