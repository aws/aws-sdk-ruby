# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'seahorse/client/plugins/content_length.rb'
require 'aws-sdk-core/plugins/logging.rb'
require 'aws-sdk-core/plugins/param_converter.rb'
require 'aws-sdk-core/plugins/param_validator.rb'
require 'aws-sdk-core/plugins/user_agent.rb'
require 'aws-sdk-core/plugins/helpful_socket_errors.rb'
require 'aws-sdk-core/plugins/retry_errors.rb'
require 'aws-sdk-core/plugins/global_configuration.rb'
require 'aws-sdk-core/plugins/regional_endpoint.rb'
require 'aws-sdk-core/plugins/request_signer.rb'
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/protocols/rest_xml.rb'
require 'aws-sdk-s3/plugins/accelerate.rb'
require 'aws-sdk-s3/plugins/dualstack.rb'
require 'aws-sdk-s3/plugins/bucket_dns.rb'
require 'aws-sdk-s3/plugins/expect_100_continue.rb'
require 'aws-sdk-s3/plugins/http_200_errors.rb'
require 'aws-sdk-s3/plugins/get_bucket_location_fix.rb'
require 'aws-sdk-s3/plugins/location_constraint.rb'
require 'aws-sdk-s3/plugins/md5s.rb'
require 'aws-sdk-s3/plugins/redirects.rb'
require 'aws-sdk-s3/plugins/sse_cpk.rb'
require 'aws-sdk-s3/plugins/url_encoded_keys.rb'
require 'aws-sdk-s3/plugins/request_signer.rb'
require 'aws-sdk-s3/plugins/bucket_name_restrictions.rb'

Aws::Plugins::GlobalConfiguration::IDENTIFIERS << :s3

module Aws
  module S3
    class Client < Seahorse::Client::Base

      include Aws::ClientStubs
      include Aws::ClientWaiters

      @identifier = :s3

      set_api(ClientApi::API)

      add_plugin(Seahorse::Client::Plugins::ContentLength)
      add_plugin(Aws::Plugins::Logging)
      add_plugin(Aws::Plugins::ParamConverter)
      add_plugin(Aws::Plugins::ParamValidator)
      add_plugin(Aws::Plugins::UserAgent)
      add_plugin(Aws::Plugins::HelpfulSocketErrors)
      add_plugin(Aws::Plugins::RetryErrors)
      add_plugin(Aws::Plugins::GlobalConfiguration)
      add_plugin(Aws::Plugins::RegionalEndpoint)
      add_plugin(Aws::Plugins::RequestSigner)
      add_plugin(Aws::Plugins::ResponsePaging)
      add_plugin(Aws::Plugins::StubResponses)
      add_plugin(Aws::Plugins::Protocols::RestXml)
      add_plugin(Aws::S3::Plugins::Accelerate)
      add_plugin(Aws::S3::Plugins::Dualstack)
      add_plugin(Aws::S3::Plugins::BucketDns)
      add_plugin(Aws::S3::Plugins::Expect100Continue)
      add_plugin(Aws::S3::Plugins::Http200Errors)
      add_plugin(Aws::S3::Plugins::GetBucketLocationFix)
      add_plugin(Aws::S3::Plugins::LocationConstraint)
      add_plugin(Aws::S3::Plugins::Md5s)
      add_plugin(Aws::S3::Plugins::Redirects)
      add_plugin(Aws::S3::Plugins::SseCpk)
      add_plugin(Aws::S3::Plugins::UrlEncodedKeys)
      add_plugin(Aws::S3::Plugins::RequestSigner)
      add_plugin(Aws::S3::Plugins::BucketNameRestrictions)

      # @option options [required, Aws::CredentialProvider] :credentials
      #   Your AWS credentials. This can be an instance of any one of the
      #   following classes:
      #
      #   * `Aws::Credentials` - Used for configuring static, non-refreshing
      #     credentials.
      #
      #   * `Aws::InstanceProfileCredentials` - Used for loading credentials
      #     from an EC2 IMDS on an EC2 instance.
      #
      #   * `Aws::SharedCredentials` - Used for loading credentials from a
      #     shared file, such as `~/.aws/config`.
      #
      #   * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
      #
      #   When `:credentials` are not configured directly, the following
      #   locations will be searched for credentials:
      #
      #   * `Aws.config[:credentials]`
      #   * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
      #   * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
      #   * `~/.aws/credentials`
      #   * `~/.aws/config`
      #   * EC2 IMDS instance profile - When used by default, the timeouts are
      #     very aggressive. Construct and pass an instance of
      #     `Aws::InstanceProfileCredentails` to enable retries and extended
      #     timeouts.
      # @option options [required, String] :region
      #   The AWS region to connect to.  The configured `:region` is
      #   used to determine the service `:endpoint`. When not passed,
      #   a default `:region` is search for in the following locations:
      #
      #   * `Aws.config[:region]`
      #   * `ENV['AWS_REGION']`
      #   * `ENV['AMAZON_REGION']`
      #   * `ENV['AWS_DEFAULT_REGION']`
      #   * `~/.aws/credentials`
      #   * `~/.aws/config`
      # @option options [String] :access_key_id
      # @option options [Boolean] :compute_checksums (true)
      #   When `true` a MD5 checksum will be computed for every request that
      #   sends a body.  When `false`, MD5 checksums will only be computed
      #   for operations that require them.  Checksum errors returned by Amazon
      #   S3 are automatically retried up to `:retry_limit` times.
      # @option options [Boolean] :convert_params (true)
      #   When `true`, an attempt is made to coerce request parameters into
      #   the required types.
      # @option options [String] :endpoint
      #   The client endpoint is normally constructed from the `:region`
      #   option. You should only configure an `:endpoint` when connecting
      #   to test endpoints. This should be avalid HTTP(S) URI.
      # @option options [Boolean] :follow_redirects (true)
      #   When `true`, this client will follow 307 redirects returned
      #   by Amazon S3.
      # @option options [Boolean] :force_path_style (false)
      #   When set to `true`, the bucket name is always left in the
      #   request URI and never moved to the host as a sub-domain.
      # @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
      #   The log formatter.
      # @option options [Symbol] :log_level (:info)
      #   The log level to send messages to the `:logger` at.
      # @option options [Logger] :logger
      #   The Logger instance to send log messages to.  If this option
      #   is not set, logging will be disabled.
      # @option options [String] :profile ("default")
      #   Used when loading credentials from the shared credentials file
      #   at HOME/.aws/credentials.  When not specified, 'default' is used.
      # @option options [Boolean] :require_https_for_sse_cpk (true)
      #   When `true`, the endpoint **must** be HTTPS for all operations
      #   where server-side-encryption is used with customer-provided keys.
      #   This should only be disabled for local testing.
      # @option options [Integer] :retry_limit (3)
      #   The maximum number of times to retry failed requests.  Only
      #   ~ 500 level server errors and certain ~ 400 level client errors
      #   are retried.  Generally, these are throttling errors, data
      #   checksum errors, networking errors, timeout errors and auth
      #   errors from expired credentials.
      # @option options [String] :secret_access_key
      # @option options [String] :session_token
      # @option options [Boolean] :stub_responses (false)
      #   Causes the client to return stubbed responses. By default
      #   fake responses are generated and returned. You can specify
      #   the response data to return or errors to raise by calling
      #   {ClientStubs#stub_responses}. See {ClientStubs} for more information.
      #
      #   ** Please note ** When response stubbing is enabled, no HTTP
      #   requests are made, and retries are disabled.
      # @option options [Boolean] :use_accelerate_endpoint (false)
      #   When set to `true`, accelerated bucket endpoints will be used
      #   for all object operations. You must first enable accelerate for
      #   each bucket.  [Go here for more information](http://docs.aws.amazon.com/AmazonS3/latest/dev/transfer-acceleration.html).
      # @option options [Boolean] :use_dualstack_endpoint (false)
      #   When set to `true`, IPv6-compatible bucket endpoints will be used
      #   for all operations.
      # @option options [Boolean] :validate_params (true)
      #   When `true`, request parameters are validated before
      #   sending the request.
      def initialize(*args)
        super
      end

      # @!group API Operations

      # Aborts a multipart upload.
      #
      # To verify that all parts have been removed, so you don't get charged
      # for the part storage, you should call the List Parts operation and
      # ensure the parts list is empty.
      # @option params [required, String] :bucket
      # @option params [required, String] :key
      # @option params [required, String] :upload_id
      # @option params [String] :request_payer
      #   Confirms that the requester knows that she or he will be charged for
      #   the request. Bucket owners need not specify this parameter in their
      #   requests. Documentation on downloading objects from requester pays
      #   buckets can be found at
      #   http://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html
      # @return [Types::AbortMultipartUploadOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::AbortMultipartUploadOutput#request_charged #RequestCharged} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.abort_multipart_upload({
      #     bucket: "BucketName", # required
      #     key: "ObjectKey", # required
      #     upload_id: "MultipartUploadId", # required
      #     request_payer: "requester", # accepts requester
      #   })
      #
      # @example Response structure
      #   resp.request_charged #=> String, one of "requester"
      # @overload abort_multipart_upload(params = {})
      # @param [Hash] params ({})
      def abort_multipart_upload(params = {}, options = {})
        req = build_request(:abort_multipart_upload, params)
        req.send_request(options)
      end

      # Completes a multipart upload by assembling previously uploaded parts.
      # @option params [required, String] :bucket
      # @option params [required, String] :key
      # @option params [Types::CompletedMultipartUpload] :multipart_upload
      # @option params [required, String] :upload_id
      # @option params [String] :request_payer
      #   Confirms that the requester knows that she or he will be charged for
      #   the request. Bucket owners need not specify this parameter in their
      #   requests. Documentation on downloading objects from requester pays
      #   buckets can be found at
      #   http://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html
      # @return [Types::CompleteMultipartUploadOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::CompleteMultipartUploadOutput#location #Location} => String
      #   * {Types::CompleteMultipartUploadOutput#bucket #Bucket} => String
      #   * {Types::CompleteMultipartUploadOutput#key #Key} => String
      #   * {Types::CompleteMultipartUploadOutput#expiration #Expiration} => String
      #   * {Types::CompleteMultipartUploadOutput#etag #ETag} => String
      #   * {Types::CompleteMultipartUploadOutput#server_side_encryption #ServerSideEncryption} => String
      #   * {Types::CompleteMultipartUploadOutput#version_id #VersionId} => String
      #   * {Types::CompleteMultipartUploadOutput#ssekms_key_id #SSEKMSKeyId} => String
      #   * {Types::CompleteMultipartUploadOutput#request_charged #RequestCharged} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.complete_multipart_upload({
      #     bucket: "BucketName", # required
      #     key: "ObjectKey", # required
      #     multipart_upload: {
      #       parts: [
      #         {
      #           etag: "ETag",
      #           part_number: 1,
      #         },
      #       ],
      #     },
      #     upload_id: "MultipartUploadId", # required
      #     request_payer: "requester", # accepts requester
      #   })
      #
      # @example Response structure
      #   resp.location #=> String
      #   resp.bucket #=> String
      #   resp.key #=> String
      #   resp.expiration #=> String
      #   resp.etag #=> String
      #   resp.server_side_encryption #=> String, one of "AES256", "aws:kms"
      #   resp.version_id #=> String
      #   resp.ssekms_key_id #=> String
      #   resp.request_charged #=> String, one of "requester"
      # @overload complete_multipart_upload(params = {})
      # @param [Hash] params ({})
      def complete_multipart_upload(params = {}, options = {})
        req = build_request(:complete_multipart_upload, params)
        req.send_request(options)
      end

      # Creates a copy of an object that is already stored in Amazon S3.
      # @option params [String] :acl
      #   The canned ACL to apply to the object.
      # @option params [required, String] :bucket
      # @option params [String] :cache_control
      #   Specifies caching behavior along the request/reply chain.
      # @option params [String] :content_disposition
      #   Specifies presentational information for the object.
      # @option params [String] :content_encoding
      #   Specifies what content encodings have been applied to the object and
      #   thus what decoding mechanisms must be applied to obtain the media-type
      #   referenced by the Content-Type header field.
      # @option params [String] :content_language
      #   The language the content is in.
      # @option params [String] :content_type
      #   A standard MIME type describing the format of the object data.
      # @option params [required, String] :copy_source
      #   The name of the source bucket and key name of the source object,
      #   separated by a slash (/). Must be URL-encoded.
      # @option params [String] :copy_source_if_match
      #   Copies the object if its entity tag (ETag) matches the specified tag.
      # @option params [Time,DateTime,Date,Integer,String] :copy_source_if_modified_since
      #   Copies the object if it has been modified since the specified time.
      # @option params [String] :copy_source_if_none_match
      #   Copies the object if its entity tag (ETag) is different than the
      #   specified ETag.
      # @option params [Time,DateTime,Date,Integer,String] :copy_source_if_unmodified_since
      #   Copies the object if it hasn't been modified since the specified
      #   time.
      # @option params [Time,DateTime,Date,Integer,String] :expires
      #   The date and time at which the object is no longer cacheable.
      # @option params [String] :grant_full_control
      #   Gives the grantee READ, READ\_ACP, and WRITE\_ACP permissions on the
      #   object.
      # @option params [String] :grant_read
      #   Allows grantee to read the object data and its metadata.
      # @option params [String] :grant_read_acp
      #   Allows grantee to read the object ACL.
      # @option params [String] :grant_write_acp
      #   Allows grantee to write the ACL for the applicable object.
      # @option params [required, String] :key
      # @option params [Hash<String,String>] :metadata
      #   A map of metadata to store with the object in S3.
      # @option params [String] :metadata_directive
      #   Specifies whether the metadata is copied from the source object or
      #   replaced with metadata provided in the request.
      # @option params [String] :server_side_encryption
      #   The Server-side encryption algorithm used when storing this object in
      #   S3 (e.g., AES256, aws:kms).
      # @option params [String] :storage_class
      #   The type of storage to use for the object. Defaults to 'STANDARD'.
      # @option params [String] :website_redirect_location
      #   If the bucket is configured as a website, redirects requests for this
      #   object to another object in the same bucket or to an external URL.
      #   Amazon S3 stores the value of this header in the object metadata.
      # @option params [String] :sse_customer_algorithm
      #   Specifies the algorithm to use to when encrypting the object (e.g.,
      #   AES256).
      # @option params [String] :sse_customer_key
      #   Specifies the customer-provided encryption key for Amazon S3 to use in
      #   encrypting data. This value is used to store the object and then it is
      #   discarded; Amazon does not store the encryption key. The key must be
      #   appropriate for use with the algorithm specified in the
      #   x-amz-server-side​-encryption​-customer-algorithm header.
      # @option params [String] :sse_customer_key_md5
      #   Specifies the 128-bit MD5 digest of the encryption key according to
      #   RFC 1321. Amazon S3 uses this header for a message integrity check to
      #   ensure the encryption key was transmitted without error.
      # @option params [String] :ssekms_key_id
      #   Specifies the AWS KMS key ID to use for object encryption. All GET and
      #   PUT requests for an object protected by AWS KMS will fail if not made
      #   via SSL or using SigV4. Documentation on configuring any of the
      #   officially supported AWS SDKs and CLI can be found at
      #   http://docs.aws.amazon.com/AmazonS3/latest/dev/UsingAWSSDK.html#specify-signature-version
      # @option params [String] :copy_source_sse_customer_algorithm
      #   Specifies the algorithm to use when decrypting the source object
      #   (e.g., AES256).
      # @option params [String] :copy_source_sse_customer_key
      #   Specifies the customer-provided encryption key for Amazon S3 to use to
      #   decrypt the source object. The encryption key provided in this header
      #   must be one that was used when the source object was created.
      # @option params [String] :copy_source_sse_customer_key_md5
      #   Specifies the 128-bit MD5 digest of the encryption key according to
      #   RFC 1321. Amazon S3 uses this header for a message integrity check to
      #   ensure the encryption key was transmitted without error.
      # @option params [String] :request_payer
      #   Confirms that the requester knows that she or he will be charged for
      #   the request. Bucket owners need not specify this parameter in their
      #   requests. Documentation on downloading objects from requester pays
      #   buckets can be found at
      #   http://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html
      # @return [Types::CopyObjectOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::CopyObjectOutput#copy_object_result #CopyObjectResult} => Types::CopyObjectResult
      #   * {Types::CopyObjectOutput#expiration #Expiration} => String
      #   * {Types::CopyObjectOutput#copy_source_version_id #CopySourceVersionId} => String
      #   * {Types::CopyObjectOutput#version_id #VersionId} => String
      #   * {Types::CopyObjectOutput#server_side_encryption #ServerSideEncryption} => String
      #   * {Types::CopyObjectOutput#sse_customer_algorithm #SSECustomerAlgorithm} => String
      #   * {Types::CopyObjectOutput#sse_customer_key_md5 #SSECustomerKeyMD5} => String
      #   * {Types::CopyObjectOutput#ssekms_key_id #SSEKMSKeyId} => String
      #   * {Types::CopyObjectOutput#request_charged #RequestCharged} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.copy_object({
      #     acl: "private", # accepts private, public-read, public-read-write, authenticated-read, aws-exec-read, bucket-owner-read, bucket-owner-full-control
      #     bucket: "BucketName", # required
      #     cache_control: "CacheControl",
      #     content_disposition: "ContentDisposition",
      #     content_encoding: "ContentEncoding",
      #     content_language: "ContentLanguage",
      #     content_type: "ContentType",
      #     copy_source: "CopySource", # required
      #     copy_source_if_match: "CopySourceIfMatch",
      #     copy_source_if_modified_since: Time.now,
      #     copy_source_if_none_match: "CopySourceIfNoneMatch",
      #     copy_source_if_unmodified_since: Time.now,
      #     expires: Time.now,
      #     grant_full_control: "GrantFullControl",
      #     grant_read: "GrantRead",
      #     grant_read_acp: "GrantReadACP",
      #     grant_write_acp: "GrantWriteACP",
      #     key: "ObjectKey", # required
      #     metadata: {
      #       "MetadataKey" => "MetadataValue",
      #     },
      #     metadata_directive: "COPY", # accepts COPY, REPLACE
      #     server_side_encryption: "AES256", # accepts AES256, aws:kms
      #     storage_class: "STANDARD", # accepts STANDARD, REDUCED_REDUNDANCY, STANDARD_IA
      #     website_redirect_location: "WebsiteRedirectLocation",
      #     sse_customer_algorithm: "SSECustomerAlgorithm",
      #     sse_customer_key: "SSECustomerKey",
      #     sse_customer_key_md5: "SSECustomerKeyMD5",
      #     ssekms_key_id: "SSEKMSKeyId",
      #     copy_source_sse_customer_algorithm: "CopySourceSSECustomerAlgorithm",
      #     copy_source_sse_customer_key: "CopySourceSSECustomerKey",
      #     copy_source_sse_customer_key_md5: "CopySourceSSECustomerKeyMD5",
      #     request_payer: "requester", # accepts requester
      #   })
      #
      # @example Response structure
      #   resp.copy_object_result.etag #=> String
      #   resp.copy_object_result.last_modified #=> Time
      #   resp.expiration #=> String
      #   resp.copy_source_version_id #=> String
      #   resp.version_id #=> String
      #   resp.server_side_encryption #=> String, one of "AES256", "aws:kms"
      #   resp.sse_customer_algorithm #=> String
      #   resp.sse_customer_key_md5 #=> String
      #   resp.ssekms_key_id #=> String
      #   resp.request_charged #=> String, one of "requester"
      # @overload copy_object(params = {})
      # @param [Hash] params ({})
      def copy_object(params = {}, options = {})
        req = build_request(:copy_object, params)
        req.send_request(options)
      end

      # Creates a new bucket.
      # @option params [String] :acl
      #   The canned ACL to apply to the bucket.
      # @option params [required, String] :bucket
      # @option params [Types::CreateBucketConfiguration] :create_bucket_configuration
      # @option params [String] :grant_full_control
      #   Allows grantee the read, write, read ACP, and write ACP permissions on
      #   the bucket.
      # @option params [String] :grant_read
      #   Allows grantee to list the objects in the bucket.
      # @option params [String] :grant_read_acp
      #   Allows grantee to read the bucket ACL.
      # @option params [String] :grant_write
      #   Allows grantee to create, overwrite, and delete any object in the
      #   bucket.
      # @option params [String] :grant_write_acp
      #   Allows grantee to write the ACL for the applicable bucket.
      # @return [Types::CreateBucketOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::CreateBucketOutput#location #Location} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.create_bucket({
      #     acl: "private", # accepts private, public-read, public-read-write, authenticated-read
      #     bucket: "BucketName", # required
      #     create_bucket_configuration: {
      #       location_constraint: "EU", # accepts EU, eu-west-1, us-west-1, us-west-2, ap-south-1, ap-southeast-1, ap-southeast-2, ap-northeast-1, sa-east-1, cn-north-1, eu-central-1
      #     },
      #     grant_full_control: "GrantFullControl",
      #     grant_read: "GrantRead",
      #     grant_read_acp: "GrantReadACP",
      #     grant_write: "GrantWrite",
      #     grant_write_acp: "GrantWriteACP",
      #   })
      #
      # @example Response structure
      #   resp.location #=> String
      # @overload create_bucket(params = {})
      # @param [Hash] params ({})
      def create_bucket(params = {}, options = {})
        req = build_request(:create_bucket, params)
        req.send_request(options)
      end

      # Initiates a multipart upload and returns an upload ID.
      #
      # **Note:** After you initiate multipart upload and upload one or more
      # parts, you must either complete or abort multipart upload in order to
      # stop getting charged for storage of the uploaded parts. Only after you
      # either complete or abort multipart upload, Amazon S3 frees up the
      # parts storage and stops charging you for the parts storage.
      # @option params [String] :acl
      #   The canned ACL to apply to the object.
      # @option params [required, String] :bucket
      # @option params [String] :cache_control
      #   Specifies caching behavior along the request/reply chain.
      # @option params [String] :content_disposition
      #   Specifies presentational information for the object.
      # @option params [String] :content_encoding
      #   Specifies what content encodings have been applied to the object and
      #   thus what decoding mechanisms must be applied to obtain the media-type
      #   referenced by the Content-Type header field.
      # @option params [String] :content_language
      #   The language the content is in.
      # @option params [String] :content_type
      #   A standard MIME type describing the format of the object data.
      # @option params [Time,DateTime,Date,Integer,String] :expires
      #   The date and time at which the object is no longer cacheable.
      # @option params [String] :grant_full_control
      #   Gives the grantee READ, READ\_ACP, and WRITE\_ACP permissions on the
      #   object.
      # @option params [String] :grant_read
      #   Allows grantee to read the object data and its metadata.
      # @option params [String] :grant_read_acp
      #   Allows grantee to read the object ACL.
      # @option params [String] :grant_write_acp
      #   Allows grantee to write the ACL for the applicable object.
      # @option params [required, String] :key
      # @option params [Hash<String,String>] :metadata
      #   A map of metadata to store with the object in S3.
      # @option params [String] :server_side_encryption
      #   The Server-side encryption algorithm used when storing this object in
      #   S3 (e.g., AES256, aws:kms).
      # @option params [String] :storage_class
      #   The type of storage to use for the object. Defaults to 'STANDARD'.
      # @option params [String] :website_redirect_location
      #   If the bucket is configured as a website, redirects requests for this
      #   object to another object in the same bucket or to an external URL.
      #   Amazon S3 stores the value of this header in the object metadata.
      # @option params [String] :sse_customer_algorithm
      #   Specifies the algorithm to use to when encrypting the object (e.g.,
      #   AES256).
      # @option params [String] :sse_customer_key
      #   Specifies the customer-provided encryption key for Amazon S3 to use in
      #   encrypting data. This value is used to store the object and then it is
      #   discarded; Amazon does not store the encryption key. The key must be
      #   appropriate for use with the algorithm specified in the
      #   x-amz-server-side​-encryption​-customer-algorithm header.
      # @option params [String] :sse_customer_key_md5
      #   Specifies the 128-bit MD5 digest of the encryption key according to
      #   RFC 1321. Amazon S3 uses this header for a message integrity check to
      #   ensure the encryption key was transmitted without error.
      # @option params [String] :ssekms_key_id
      #   Specifies the AWS KMS key ID to use for object encryption. All GET and
      #   PUT requests for an object protected by AWS KMS will fail if not made
      #   via SSL or using SigV4. Documentation on configuring any of the
      #   officially supported AWS SDKs and CLI can be found at
      #   http://docs.aws.amazon.com/AmazonS3/latest/dev/UsingAWSSDK.html#specify-signature-version
      # @option params [String] :request_payer
      #   Confirms that the requester knows that she or he will be charged for
      #   the request. Bucket owners need not specify this parameter in their
      #   requests. Documentation on downloading objects from requester pays
      #   buckets can be found at
      #   http://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html
      # @return [Types::CreateMultipartUploadOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::CreateMultipartUploadOutput#abort_date #AbortDate} => Time
      #   * {Types::CreateMultipartUploadOutput#abort_rule_id #AbortRuleId} => String
      #   * {Types::CreateMultipartUploadOutput#bucket #Bucket} => String
      #   * {Types::CreateMultipartUploadOutput#key #Key} => String
      #   * {Types::CreateMultipartUploadOutput#upload_id #UploadId} => String
      #   * {Types::CreateMultipartUploadOutput#server_side_encryption #ServerSideEncryption} => String
      #   * {Types::CreateMultipartUploadOutput#sse_customer_algorithm #SSECustomerAlgorithm} => String
      #   * {Types::CreateMultipartUploadOutput#sse_customer_key_md5 #SSECustomerKeyMD5} => String
      #   * {Types::CreateMultipartUploadOutput#ssekms_key_id #SSEKMSKeyId} => String
      #   * {Types::CreateMultipartUploadOutput#request_charged #RequestCharged} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.create_multipart_upload({
      #     acl: "private", # accepts private, public-read, public-read-write, authenticated-read, aws-exec-read, bucket-owner-read, bucket-owner-full-control
      #     bucket: "BucketName", # required
      #     cache_control: "CacheControl",
      #     content_disposition: "ContentDisposition",
      #     content_encoding: "ContentEncoding",
      #     content_language: "ContentLanguage",
      #     content_type: "ContentType",
      #     expires: Time.now,
      #     grant_full_control: "GrantFullControl",
      #     grant_read: "GrantRead",
      #     grant_read_acp: "GrantReadACP",
      #     grant_write_acp: "GrantWriteACP",
      #     key: "ObjectKey", # required
      #     metadata: {
      #       "MetadataKey" => "MetadataValue",
      #     },
      #     server_side_encryption: "AES256", # accepts AES256, aws:kms
      #     storage_class: "STANDARD", # accepts STANDARD, REDUCED_REDUNDANCY, STANDARD_IA
      #     website_redirect_location: "WebsiteRedirectLocation",
      #     sse_customer_algorithm: "SSECustomerAlgorithm",
      #     sse_customer_key: "SSECustomerKey",
      #     sse_customer_key_md5: "SSECustomerKeyMD5",
      #     ssekms_key_id: "SSEKMSKeyId",
      #     request_payer: "requester", # accepts requester
      #   })
      #
      # @example Response structure
      #   resp.abort_date #=> Time
      #   resp.abort_rule_id #=> String
      #   resp.bucket #=> String
      #   resp.key #=> String
      #   resp.upload_id #=> String
      #   resp.server_side_encryption #=> String, one of "AES256", "aws:kms"
      #   resp.sse_customer_algorithm #=> String
      #   resp.sse_customer_key_md5 #=> String
      #   resp.ssekms_key_id #=> String
      #   resp.request_charged #=> String, one of "requester"
      # @overload create_multipart_upload(params = {})
      # @param [Hash] params ({})
      def create_multipart_upload(params = {}, options = {})
        req = build_request(:create_multipart_upload, params)
        req.send_request(options)
      end

      # Deletes the bucket. All objects (including all object versions and
      # Delete Markers) in the bucket must be deleted before the bucket itself
      # can be deleted.
      # @option params [required, String] :bucket
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_bucket({
      #     bucket: "BucketName", # required
      #   })
      # @overload delete_bucket(params = {})
      # @param [Hash] params ({})
      def delete_bucket(params = {}, options = {})
        req = build_request(:delete_bucket, params)
        req.send_request(options)
      end

      # Deletes the cors configuration information set for the bucket.
      # @option params [required, String] :bucket
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_bucket_cors({
      #     bucket: "BucketName", # required
      #   })
      # @overload delete_bucket_cors(params = {})
      # @param [Hash] params ({})
      def delete_bucket_cors(params = {}, options = {})
        req = build_request(:delete_bucket_cors, params)
        req.send_request(options)
      end

      # Deletes the lifecycle configuration from the bucket.
      # @option params [required, String] :bucket
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_bucket_lifecycle({
      #     bucket: "BucketName", # required
      #   })
      # @overload delete_bucket_lifecycle(params = {})
      # @param [Hash] params ({})
      def delete_bucket_lifecycle(params = {}, options = {})
        req = build_request(:delete_bucket_lifecycle, params)
        req.send_request(options)
      end

      # Deletes the policy from the bucket.
      # @option params [required, String] :bucket
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_bucket_policy({
      #     bucket: "BucketName", # required
      #   })
      # @overload delete_bucket_policy(params = {})
      # @param [Hash] params ({})
      def delete_bucket_policy(params = {}, options = {})
        req = build_request(:delete_bucket_policy, params)
        req.send_request(options)
      end

      # Deletes the replication configuration from the bucket.
      # @option params [required, String] :bucket
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_bucket_replication({
      #     bucket: "BucketName", # required
      #   })
      # @overload delete_bucket_replication(params = {})
      # @param [Hash] params ({})
      def delete_bucket_replication(params = {}, options = {})
        req = build_request(:delete_bucket_replication, params)
        req.send_request(options)
      end

      # Deletes the tags from the bucket.
      # @option params [required, String] :bucket
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_bucket_tagging({
      #     bucket: "BucketName", # required
      #   })
      # @overload delete_bucket_tagging(params = {})
      # @param [Hash] params ({})
      def delete_bucket_tagging(params = {}, options = {})
        req = build_request(:delete_bucket_tagging, params)
        req.send_request(options)
      end

      # This operation removes the website configuration from the bucket.
      # @option params [required, String] :bucket
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_bucket_website({
      #     bucket: "BucketName", # required
      #   })
      # @overload delete_bucket_website(params = {})
      # @param [Hash] params ({})
      def delete_bucket_website(params = {}, options = {})
        req = build_request(:delete_bucket_website, params)
        req.send_request(options)
      end

      # Removes the null version (if there is one) of an object and inserts a
      # delete marker, which becomes the latest version of the object. If
      # there isn't a null version, Amazon S3 does not remove any objects.
      # @option params [required, String] :bucket
      # @option params [required, String] :key
      # @option params [String] :mfa
      #   The concatenation of the authentication device's serial number, a
      #   space, and the value that is displayed on your authentication device.
      # @option params [String] :version_id
      #   VersionId used to reference a specific version of the object.
      # @option params [String] :request_payer
      #   Confirms that the requester knows that she or he will be charged for
      #   the request. Bucket owners need not specify this parameter in their
      #   requests. Documentation on downloading objects from requester pays
      #   buckets can be found at
      #   http://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html
      # @return [Types::DeleteObjectOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DeleteObjectOutput#delete_marker #DeleteMarker} => Boolean
      #   * {Types::DeleteObjectOutput#version_id #VersionId} => String
      #   * {Types::DeleteObjectOutput#request_charged #RequestCharged} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_object({
      #     bucket: "BucketName", # required
      #     key: "ObjectKey", # required
      #     mfa: "MFA",
      #     version_id: "ObjectVersionId",
      #     request_payer: "requester", # accepts requester
      #   })
      #
      # @example Response structure
      #   resp.delete_marker #=> Boolean
      #   resp.version_id #=> String
      #   resp.request_charged #=> String, one of "requester"
      # @overload delete_object(params = {})
      # @param [Hash] params ({})
      def delete_object(params = {}, options = {})
        req = build_request(:delete_object, params)
        req.send_request(options)
      end

      # This operation enables you to delete multiple objects from a bucket
      # using a single HTTP request. You may specify up to 1000 keys.
      # @option params [required, String] :bucket
      # @option params [required, Types::Delete] :delete
      # @option params [String] :mfa
      #   The concatenation of the authentication device's serial number, a
      #   space, and the value that is displayed on your authentication device.
      # @option params [String] :request_payer
      #   Confirms that the requester knows that she or he will be charged for
      #   the request. Bucket owners need not specify this parameter in their
      #   requests. Documentation on downloading objects from requester pays
      #   buckets can be found at
      #   http://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html
      # @return [Types::DeleteObjectsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DeleteObjectsOutput#deleted #Deleted} => Array&lt;Types::DeletedObject&gt;
      #   * {Types::DeleteObjectsOutput#request_charged #RequestCharged} => String
      #   * {Types::DeleteObjectsOutput#errors #Errors} => Array&lt;Types::Error&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_objects({
      #     bucket: "BucketName", # required
      #     delete: { # required
      #       objects: [ # required
      #         {
      #           key: "ObjectKey", # required
      #           version_id: "ObjectVersionId",
      #         },
      #       ],
      #       quiet: false,
      #     },
      #     mfa: "MFA",
      #     request_payer: "requester", # accepts requester
      #   })
      #
      # @example Response structure
      #   resp.deleted #=> Array
      #   resp.deleted[0].key #=> String
      #   resp.deleted[0].version_id #=> String
      #   resp.deleted[0].delete_marker #=> Boolean
      #   resp.deleted[0].delete_marker_version_id #=> String
      #   resp.request_charged #=> String, one of "requester"
      #   resp.errors #=> Array
      #   resp.errors[0].key #=> String
      #   resp.errors[0].version_id #=> String
      #   resp.errors[0].code #=> String
      #   resp.errors[0].message #=> String
      # @overload delete_objects(params = {})
      # @param [Hash] params ({})
      def delete_objects(params = {}, options = {})
        req = build_request(:delete_objects, params)
        req.send_request(options)
      end

      # Returns the accelerate configuration of a bucket.
      # @option params [required, String] :bucket
      #   Name of the bucket for which the accelerate configuration is
      #   retrieved.
      # @return [Types::GetBucketAccelerateConfigurationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetBucketAccelerateConfigurationOutput#status #Status} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_bucket_accelerate_configuration({
      #     bucket: "BucketName", # required
      #   })
      #
      # @example Response structure
      #   resp.status #=> String, one of "Enabled", "Suspended"
      # @overload get_bucket_accelerate_configuration(params = {})
      # @param [Hash] params ({})
      def get_bucket_accelerate_configuration(params = {}, options = {})
        req = build_request(:get_bucket_accelerate_configuration, params)
        req.send_request(options)
      end

      # Gets the access control policy for the bucket.
      # @option params [required, String] :bucket
      # @return [Types::GetBucketAclOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetBucketAclOutput#owner #Owner} => Types::Owner
      #   * {Types::GetBucketAclOutput#grants #Grants} => Array&lt;Types::Grant&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_bucket_acl({
      #     bucket: "BucketName", # required
      #   })
      #
      # @example Response structure
      #   resp.owner.display_name #=> String
      #   resp.owner.id #=> String
      #   resp.grants #=> Array
      #   resp.grants[0].grantee.display_name #=> String
      #   resp.grants[0].grantee.email_address #=> String
      #   resp.grants[0].grantee.id #=> String
      #   resp.grants[0].grantee.type #=> String, one of "CanonicalUser", "AmazonCustomerByEmail", "Group"
      #   resp.grants[0].grantee.uri #=> String
      #   resp.grants[0].permission #=> String, one of "FULL_CONTROL", "WRITE", "WRITE_ACP", "READ", "READ_ACP"
      # @overload get_bucket_acl(params = {})
      # @param [Hash] params ({})
      def get_bucket_acl(params = {}, options = {})
        req = build_request(:get_bucket_acl, params)
        req.send_request(options)
      end

      # Returns the cors configuration for the bucket.
      # @option params [required, String] :bucket
      # @return [Types::GetBucketCorsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetBucketCorsOutput#cors_rules #CORSRules} => Array&lt;Types::CORSRule&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_bucket_cors({
      #     bucket: "BucketName", # required
      #   })
      #
      # @example Response structure
      #   resp.cors_rules #=> Array
      #   resp.cors_rules[0].allowed_headers #=> Array
      #   resp.cors_rules[0].allowed_headers[0] #=> String
      #   resp.cors_rules[0].allowed_methods #=> Array
      #   resp.cors_rules[0].allowed_methods[0] #=> String
      #   resp.cors_rules[0].allowed_origins #=> Array
      #   resp.cors_rules[0].allowed_origins[0] #=> String
      #   resp.cors_rules[0].expose_headers #=> Array
      #   resp.cors_rules[0].expose_headers[0] #=> String
      #   resp.cors_rules[0].max_age_seconds #=> Integer
      # @overload get_bucket_cors(params = {})
      # @param [Hash] params ({})
      def get_bucket_cors(params = {}, options = {})
        req = build_request(:get_bucket_cors, params)
        req.send_request(options)
      end

      # Deprecated, see the GetBucketLifecycleConfiguration operation.
      # @option params [required, String] :bucket
      # @return [Types::GetBucketLifecycleOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetBucketLifecycleOutput#rules #Rules} => Array&lt;Types::Rule&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_bucket_lifecycle({
      #     bucket: "BucketName", # required
      #   })
      #
      # @example Response structure
      #   resp.rules #=> Array
      #   resp.rules[0].expiration.date #=> Time
      #   resp.rules[0].expiration.days #=> Integer
      #   resp.rules[0].expiration.expired_object_delete_marker #=> Boolean
      #   resp.rules[0].id #=> String
      #   resp.rules[0].prefix #=> String
      #   resp.rules[0].status #=> String, one of "Enabled", "Disabled"
      #   resp.rules[0].transition.date #=> Time
      #   resp.rules[0].transition.days #=> Integer
      #   resp.rules[0].transition.storage_class #=> String, one of "GLACIER", "STANDARD_IA"
      #   resp.rules[0].noncurrent_version_transition.noncurrent_days #=> Integer
      #   resp.rules[0].noncurrent_version_transition.storage_class #=> String, one of "GLACIER", "STANDARD_IA"
      #   resp.rules[0].noncurrent_version_expiration.noncurrent_days #=> Integer
      #   resp.rules[0].abort_incomplete_multipart_upload.days_after_initiation #=> Integer
      # @overload get_bucket_lifecycle(params = {})
      # @param [Hash] params ({})
      def get_bucket_lifecycle(params = {}, options = {})
        req = build_request(:get_bucket_lifecycle, params)
        req.send_request(options)
      end

      # Returns the lifecycle configuration information set on the bucket.
      # @option params [required, String] :bucket
      # @return [Types::GetBucketLifecycleConfigurationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetBucketLifecycleConfigurationOutput#rules #Rules} => Array&lt;Types::LifecycleRule&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_bucket_lifecycle_configuration({
      #     bucket: "BucketName", # required
      #   })
      #
      # @example Response structure
      #   resp.rules #=> Array
      #   resp.rules[0].expiration.date #=> Time
      #   resp.rules[0].expiration.days #=> Integer
      #   resp.rules[0].expiration.expired_object_delete_marker #=> Boolean
      #   resp.rules[0].id #=> String
      #   resp.rules[0].prefix #=> String
      #   resp.rules[0].status #=> String, one of "Enabled", "Disabled"
      #   resp.rules[0].transitions #=> Array
      #   resp.rules[0].transitions[0].date #=> Time
      #   resp.rules[0].transitions[0].days #=> Integer
      #   resp.rules[0].transitions[0].storage_class #=> String, one of "GLACIER", "STANDARD_IA"
      #   resp.rules[0].noncurrent_version_transitions #=> Array
      #   resp.rules[0].noncurrent_version_transitions[0].noncurrent_days #=> Integer
      #   resp.rules[0].noncurrent_version_transitions[0].storage_class #=> String, one of "GLACIER", "STANDARD_IA"
      #   resp.rules[0].noncurrent_version_expiration.noncurrent_days #=> Integer
      #   resp.rules[0].abort_incomplete_multipart_upload.days_after_initiation #=> Integer
      # @overload get_bucket_lifecycle_configuration(params = {})
      # @param [Hash] params ({})
      def get_bucket_lifecycle_configuration(params = {}, options = {})
        req = build_request(:get_bucket_lifecycle_configuration, params)
        req.send_request(options)
      end

      # Returns the region the bucket resides in.
      # @option params [required, String] :bucket
      # @return [Types::GetBucketLocationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetBucketLocationOutput#location_constraint #LocationConstraint} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_bucket_location({
      #     bucket: "BucketName", # required
      #   })
      #
      # @example Response structure
      #   resp.location_constraint #=> String, one of "EU", "eu-west-1", "us-west-1", "us-west-2", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "sa-east-1", "cn-north-1", "eu-central-1"
      # @overload get_bucket_location(params = {})
      # @param [Hash] params ({})
      def get_bucket_location(params = {}, options = {})
        req = build_request(:get_bucket_location, params)
        req.send_request(options)
      end

      # Returns the logging status of a bucket and the permissions users have
      # to view and modify that status. To use GET, you must be the bucket
      # owner.
      # @option params [required, String] :bucket
      # @return [Types::GetBucketLoggingOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetBucketLoggingOutput#logging_enabled #LoggingEnabled} => Types::LoggingEnabled
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_bucket_logging({
      #     bucket: "BucketName", # required
      #   })
      #
      # @example Response structure
      #   resp.logging_enabled.target_bucket #=> String
      #   resp.logging_enabled.target_grants #=> Array
      #   resp.logging_enabled.target_grants[0].grantee.display_name #=> String
      #   resp.logging_enabled.target_grants[0].grantee.email_address #=> String
      #   resp.logging_enabled.target_grants[0].grantee.id #=> String
      #   resp.logging_enabled.target_grants[0].grantee.type #=> String, one of "CanonicalUser", "AmazonCustomerByEmail", "Group"
      #   resp.logging_enabled.target_grants[0].grantee.uri #=> String
      #   resp.logging_enabled.target_grants[0].permission #=> String, one of "FULL_CONTROL", "READ", "WRITE"
      #   resp.logging_enabled.target_prefix #=> String
      # @overload get_bucket_logging(params = {})
      # @param [Hash] params ({})
      def get_bucket_logging(params = {}, options = {})
        req = build_request(:get_bucket_logging, params)
        req.send_request(options)
      end

      # Deprecated, see the GetBucketNotificationConfiguration operation.
      # @option params [required, String] :bucket
      #   Name of the bucket to get the notification configuration for.
      # @return [Types::NotificationConfigurationDeprecated] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::NotificationConfigurationDeprecated#topic_configuration #TopicConfiguration} => Types::TopicConfigurationDeprecated
      #   * {Types::NotificationConfigurationDeprecated#queue_configuration #QueueConfiguration} => Types::QueueConfigurationDeprecated
      #   * {Types::NotificationConfigurationDeprecated#cloud_function_configuration #CloudFunctionConfiguration} => Types::CloudFunctionConfiguration
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_bucket_notification({
      #     bucket: "BucketName", # required
      #   })
      #
      # @example Response structure
      #   resp.topic_configuration.id #=> String
      #   resp.topic_configuration.events #=> Array
      #   resp.topic_configuration.events[0] #=> String, one of "s3:ReducedRedundancyLostObject", "s3:ObjectCreated:*", "s3:ObjectCreated:Put", "s3:ObjectCreated:Post", "s3:ObjectCreated:Copy", "s3:ObjectCreated:CompleteMultipartUpload", "s3:ObjectRemoved:*", "s3:ObjectRemoved:Delete", "s3:ObjectRemoved:DeleteMarkerCreated"
      #   resp.topic_configuration.event #=> String, one of "s3:ReducedRedundancyLostObject", "s3:ObjectCreated:*", "s3:ObjectCreated:Put", "s3:ObjectCreated:Post", "s3:ObjectCreated:Copy", "s3:ObjectCreated:CompleteMultipartUpload", "s3:ObjectRemoved:*", "s3:ObjectRemoved:Delete", "s3:ObjectRemoved:DeleteMarkerCreated"
      #   resp.topic_configuration.topic #=> String
      #   resp.queue_configuration.id #=> String
      #   resp.queue_configuration.event #=> String, one of "s3:ReducedRedundancyLostObject", "s3:ObjectCreated:*", "s3:ObjectCreated:Put", "s3:ObjectCreated:Post", "s3:ObjectCreated:Copy", "s3:ObjectCreated:CompleteMultipartUpload", "s3:ObjectRemoved:*", "s3:ObjectRemoved:Delete", "s3:ObjectRemoved:DeleteMarkerCreated"
      #   resp.queue_configuration.events #=> Array
      #   resp.queue_configuration.events[0] #=> String, one of "s3:ReducedRedundancyLostObject", "s3:ObjectCreated:*", "s3:ObjectCreated:Put", "s3:ObjectCreated:Post", "s3:ObjectCreated:Copy", "s3:ObjectCreated:CompleteMultipartUpload", "s3:ObjectRemoved:*", "s3:ObjectRemoved:Delete", "s3:ObjectRemoved:DeleteMarkerCreated"
      #   resp.queue_configuration.queue #=> String
      #   resp.cloud_function_configuration.id #=> String
      #   resp.cloud_function_configuration.event #=> String, one of "s3:ReducedRedundancyLostObject", "s3:ObjectCreated:*", "s3:ObjectCreated:Put", "s3:ObjectCreated:Post", "s3:ObjectCreated:Copy", "s3:ObjectCreated:CompleteMultipartUpload", "s3:ObjectRemoved:*", "s3:ObjectRemoved:Delete", "s3:ObjectRemoved:DeleteMarkerCreated"
      #   resp.cloud_function_configuration.events #=> Array
      #   resp.cloud_function_configuration.events[0] #=> String, one of "s3:ReducedRedundancyLostObject", "s3:ObjectCreated:*", "s3:ObjectCreated:Put", "s3:ObjectCreated:Post", "s3:ObjectCreated:Copy", "s3:ObjectCreated:CompleteMultipartUpload", "s3:ObjectRemoved:*", "s3:ObjectRemoved:Delete", "s3:ObjectRemoved:DeleteMarkerCreated"
      #   resp.cloud_function_configuration.cloud_function #=> String
      #   resp.cloud_function_configuration.invocation_role #=> String
      # @overload get_bucket_notification(params = {})
      # @param [Hash] params ({})
      def get_bucket_notification(params = {}, options = {})
        req = build_request(:get_bucket_notification, params)
        req.send_request(options)
      end

      # Returns the notification configuration of a bucket.
      # @option params [required, String] :bucket
      #   Name of the bucket to get the notification configuration for.
      # @return [Types::NotificationConfiguration] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::NotificationConfiguration#topic_configurations #TopicConfigurations} => Array&lt;Types::TopicConfiguration&gt;
      #   * {Types::NotificationConfiguration#queue_configurations #QueueConfigurations} => Array&lt;Types::QueueConfiguration&gt;
      #   * {Types::NotificationConfiguration#lambda_function_configurations #LambdaFunctionConfigurations} => Array&lt;Types::LambdaFunctionConfiguration&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_bucket_notification_configuration({
      #     bucket: "BucketName", # required
      #   })
      #
      # @example Response structure
      #   resp.topic_configurations #=> Array
      #   resp.topic_configurations[0].id #=> String
      #   resp.topic_configurations[0].topic_arn #=> String
      #   resp.topic_configurations[0].events #=> Array
      #   resp.topic_configurations[0].events[0] #=> String, one of "s3:ReducedRedundancyLostObject", "s3:ObjectCreated:*", "s3:ObjectCreated:Put", "s3:ObjectCreated:Post", "s3:ObjectCreated:Copy", "s3:ObjectCreated:CompleteMultipartUpload", "s3:ObjectRemoved:*", "s3:ObjectRemoved:Delete", "s3:ObjectRemoved:DeleteMarkerCreated"
      #   resp.topic_configurations[0].filter.key.filter_rules #=> Array
      #   resp.topic_configurations[0].filter.key.filter_rules[0].name #=> String, one of "prefix", "suffix"
      #   resp.topic_configurations[0].filter.key.filter_rules[0].value #=> String
      #   resp.queue_configurations #=> Array
      #   resp.queue_configurations[0].id #=> String
      #   resp.queue_configurations[0].queue_arn #=> String
      #   resp.queue_configurations[0].events #=> Array
      #   resp.queue_configurations[0].events[0] #=> String, one of "s3:ReducedRedundancyLostObject", "s3:ObjectCreated:*", "s3:ObjectCreated:Put", "s3:ObjectCreated:Post", "s3:ObjectCreated:Copy", "s3:ObjectCreated:CompleteMultipartUpload", "s3:ObjectRemoved:*", "s3:ObjectRemoved:Delete", "s3:ObjectRemoved:DeleteMarkerCreated"
      #   resp.queue_configurations[0].filter.key.filter_rules #=> Array
      #   resp.queue_configurations[0].filter.key.filter_rules[0].name #=> String, one of "prefix", "suffix"
      #   resp.queue_configurations[0].filter.key.filter_rules[0].value #=> String
      #   resp.lambda_function_configurations #=> Array
      #   resp.lambda_function_configurations[0].id #=> String
      #   resp.lambda_function_configurations[0].lambda_function_arn #=> String
      #   resp.lambda_function_configurations[0].events #=> Array
      #   resp.lambda_function_configurations[0].events[0] #=> String, one of "s3:ReducedRedundancyLostObject", "s3:ObjectCreated:*", "s3:ObjectCreated:Put", "s3:ObjectCreated:Post", "s3:ObjectCreated:Copy", "s3:ObjectCreated:CompleteMultipartUpload", "s3:ObjectRemoved:*", "s3:ObjectRemoved:Delete", "s3:ObjectRemoved:DeleteMarkerCreated"
      #   resp.lambda_function_configurations[0].filter.key.filter_rules #=> Array
      #   resp.lambda_function_configurations[0].filter.key.filter_rules[0].name #=> String, one of "prefix", "suffix"
      #   resp.lambda_function_configurations[0].filter.key.filter_rules[0].value #=> String
      # @overload get_bucket_notification_configuration(params = {})
      # @param [Hash] params ({})
      def get_bucket_notification_configuration(params = {}, options = {})
        req = build_request(:get_bucket_notification_configuration, params)
        req.send_request(options)
      end

      # Returns the policy of a specified bucket.
      # @option params [required, String] :bucket
      # @return [Types::GetBucketPolicyOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetBucketPolicyOutput#policy #Policy} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_bucket_policy({
      #     bucket: "BucketName", # required
      #   })
      #
      # @example Response structure
      #   resp.policy #=> String
      # @overload get_bucket_policy(params = {})
      # @param [Hash] params ({})
      def get_bucket_policy(params = {}, options = {})
        req = build_request(:get_bucket_policy, params)
        req.send_request(options)
      end

      # Returns the replication configuration of a bucket.
      # @option params [required, String] :bucket
      # @return [Types::GetBucketReplicationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetBucketReplicationOutput#replication_configuration #ReplicationConfiguration} => Types::ReplicationConfiguration
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_bucket_replication({
      #     bucket: "BucketName", # required
      #   })
      #
      # @example Response structure
      #   resp.replication_configuration.role #=> String
      #   resp.replication_configuration.rules #=> Array
      #   resp.replication_configuration.rules[0].id #=> String
      #   resp.replication_configuration.rules[0].prefix #=> String
      #   resp.replication_configuration.rules[0].status #=> String, one of "Enabled", "Disabled"
      #   resp.replication_configuration.rules[0].destination.bucket #=> String
      #   resp.replication_configuration.rules[0].destination.storage_class #=> String, one of "STANDARD", "REDUCED_REDUNDANCY", "STANDARD_IA"
      # @overload get_bucket_replication(params = {})
      # @param [Hash] params ({})
      def get_bucket_replication(params = {}, options = {})
        req = build_request(:get_bucket_replication, params)
        req.send_request(options)
      end

      # Returns the request payment configuration of a bucket.
      # @option params [required, String] :bucket
      # @return [Types::GetBucketRequestPaymentOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetBucketRequestPaymentOutput#payer #Payer} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_bucket_request_payment({
      #     bucket: "BucketName", # required
      #   })
      #
      # @example Response structure
      #   resp.payer #=> String, one of "Requester", "BucketOwner"
      # @overload get_bucket_request_payment(params = {})
      # @param [Hash] params ({})
      def get_bucket_request_payment(params = {}, options = {})
        req = build_request(:get_bucket_request_payment, params)
        req.send_request(options)
      end

      # Returns the tag set associated with the bucket.
      # @option params [required, String] :bucket
      # @return [Types::GetBucketTaggingOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetBucketTaggingOutput#tag_set #TagSet} => Array&lt;Types::Tag&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_bucket_tagging({
      #     bucket: "BucketName", # required
      #   })
      #
      # @example Response structure
      #   resp.tag_set #=> Array
      #   resp.tag_set[0].key #=> String
      #   resp.tag_set[0].value #=> String
      # @overload get_bucket_tagging(params = {})
      # @param [Hash] params ({})
      def get_bucket_tagging(params = {}, options = {})
        req = build_request(:get_bucket_tagging, params)
        req.send_request(options)
      end

      # Returns the versioning state of a bucket.
      # @option params [required, String] :bucket
      # @return [Types::GetBucketVersioningOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetBucketVersioningOutput#status #Status} => String
      #   * {Types::GetBucketVersioningOutput#mfa_delete #MFADelete} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_bucket_versioning({
      #     bucket: "BucketName", # required
      #   })
      #
      # @example Response structure
      #   resp.status #=> String, one of "Enabled", "Suspended"
      #   resp.mfa_delete #=> String, one of "Enabled", "Disabled"
      # @overload get_bucket_versioning(params = {})
      # @param [Hash] params ({})
      def get_bucket_versioning(params = {}, options = {})
        req = build_request(:get_bucket_versioning, params)
        req.send_request(options)
      end

      # Returns the website configuration for a bucket.
      # @option params [required, String] :bucket
      # @return [Types::GetBucketWebsiteOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetBucketWebsiteOutput#redirect_all_requests_to #RedirectAllRequestsTo} => Types::RedirectAllRequestsTo
      #   * {Types::GetBucketWebsiteOutput#index_document #IndexDocument} => Types::IndexDocument
      #   * {Types::GetBucketWebsiteOutput#error_document #ErrorDocument} => Types::ErrorDocument
      #   * {Types::GetBucketWebsiteOutput#routing_rules #RoutingRules} => Array&lt;Types::RoutingRule&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_bucket_website({
      #     bucket: "BucketName", # required
      #   })
      #
      # @example Response structure
      #   resp.redirect_all_requests_to.host_name #=> String
      #   resp.redirect_all_requests_to.protocol #=> String, one of "http", "https"
      #   resp.index_document.suffix #=> String
      #   resp.error_document.key #=> String
      #   resp.routing_rules #=> Array
      #   resp.routing_rules[0].condition.http_error_code_returned_equals #=> String
      #   resp.routing_rules[0].condition.key_prefix_equals #=> String
      #   resp.routing_rules[0].redirect.host_name #=> String
      #   resp.routing_rules[0].redirect.http_redirect_code #=> String
      #   resp.routing_rules[0].redirect.protocol #=> String, one of "http", "https"
      #   resp.routing_rules[0].redirect.replace_key_prefix_with #=> String
      #   resp.routing_rules[0].redirect.replace_key_with #=> String
      # @overload get_bucket_website(params = {})
      # @param [Hash] params ({})
      def get_bucket_website(params = {}, options = {})
        req = build_request(:get_bucket_website, params)
        req.send_request(options)
      end

      # Retrieves objects from Amazon S3.
      # @option params [String, IO] :response_target
      #   Where to write response data, file path, or IO object.
      # @option params [required, String] :bucket
      # @option params [String] :if_match
      #   Return the object only if its entity tag (ETag) is the same as the one
      #   specified, otherwise return a 412 (precondition failed).
      # @option params [Time,DateTime,Date,Integer,String] :if_modified_since
      #   Return the object only if it has been modified since the specified
      #   time, otherwise return a 304 (not modified).
      # @option params [String] :if_none_match
      #   Return the object only if its entity tag (ETag) is different from the
      #   one specified, otherwise return a 304 (not modified).
      # @option params [Time,DateTime,Date,Integer,String] :if_unmodified_since
      #   Return the object only if it has not been modified since the specified
      #   time, otherwise return a 412 (precondition failed).
      # @option params [required, String] :key
      # @option params [String] :range
      #   Downloads the specified range bytes of an object. For more information
      #   about the HTTP Range header, go to
      #   http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.35.
      # @option params [String] :response_cache_control
      #   Sets the Cache-Control header of the response.
      # @option params [String] :response_content_disposition
      #   Sets the Content-Disposition header of the response
      # @option params [String] :response_content_encoding
      #   Sets the Content-Encoding header of the response.
      # @option params [String] :response_content_language
      #   Sets the Content-Language header of the response.
      # @option params [String] :response_content_type
      #   Sets the Content-Type header of the response.
      # @option params [Time,DateTime,Date,Integer,String] :response_expires
      #   Sets the Expires header of the response.
      # @option params [String] :version_id
      #   VersionId used to reference a specific version of the object.
      # @option params [String] :sse_customer_algorithm
      #   Specifies the algorithm to use to when encrypting the object (e.g.,
      #   AES256).
      # @option params [String] :sse_customer_key
      #   Specifies the customer-provided encryption key for Amazon S3 to use in
      #   encrypting data. This value is used to store the object and then it is
      #   discarded; Amazon does not store the encryption key. The key must be
      #   appropriate for use with the algorithm specified in the
      #   x-amz-server-side​-encryption​-customer-algorithm header.
      # @option params [String] :sse_customer_key_md5
      #   Specifies the 128-bit MD5 digest of the encryption key according to
      #   RFC 1321. Amazon S3 uses this header for a message integrity check to
      #   ensure the encryption key was transmitted without error.
      # @option params [String] :request_payer
      #   Confirms that the requester knows that she or he will be charged for
      #   the request. Bucket owners need not specify this parameter in their
      #   requests. Documentation on downloading objects from requester pays
      #   buckets can be found at
      #   http://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html
      # @return [Types::GetObjectOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetObjectOutput#body #Body} => IO
      #   * {Types::GetObjectOutput#delete_marker #DeleteMarker} => Boolean
      #   * {Types::GetObjectOutput#accept_ranges #AcceptRanges} => String
      #   * {Types::GetObjectOutput#expiration #Expiration} => String
      #   * {Types::GetObjectOutput#restore #Restore} => String
      #   * {Types::GetObjectOutput#last_modified #LastModified} => Time
      #   * {Types::GetObjectOutput#content_length #ContentLength} => Integer
      #   * {Types::GetObjectOutput#etag #ETag} => String
      #   * {Types::GetObjectOutput#missing_meta #MissingMeta} => Integer
      #   * {Types::GetObjectOutput#version_id #VersionId} => String
      #   * {Types::GetObjectOutput#cache_control #CacheControl} => String
      #   * {Types::GetObjectOutput#content_disposition #ContentDisposition} => String
      #   * {Types::GetObjectOutput#content_encoding #ContentEncoding} => String
      #   * {Types::GetObjectOutput#content_language #ContentLanguage} => String
      #   * {Types::GetObjectOutput#content_range #ContentRange} => String
      #   * {Types::GetObjectOutput#content_type #ContentType} => String
      #   * {Types::GetObjectOutput#expires #Expires} => Time
      #   * {Types::GetObjectOutput#expires_string #ExpiresString} => String
      #   * {Types::GetObjectOutput#website_redirect_location #WebsiteRedirectLocation} => String
      #   * {Types::GetObjectOutput#server_side_encryption #ServerSideEncryption} => String
      #   * {Types::GetObjectOutput#metadata #Metadata} => Hash&lt;String,String&gt;
      #   * {Types::GetObjectOutput#sse_customer_algorithm #SSECustomerAlgorithm} => String
      #   * {Types::GetObjectOutput#sse_customer_key_md5 #SSECustomerKeyMD5} => String
      #   * {Types::GetObjectOutput#ssekms_key_id #SSEKMSKeyId} => String
      #   * {Types::GetObjectOutput#storage_class #StorageClass} => String
      #   * {Types::GetObjectOutput#request_charged #RequestCharged} => String
      #   * {Types::GetObjectOutput#replication_status #ReplicationStatus} => String
      #
      # @example Download an object to disk
      #   # stream object directly to disk
      #   resp = s3.get_object(
      #     response_target: '/path/to/file',
      #     bucket: 'bucket-name',
      #     key: 'object-key')
      # 
      #   # you can still access other response data
      #   resp.metadata #=> { ... }
      #   resp.etag #=> "..."
      #
      # @example Download object into memory
      #   # omit :response_target to download to a StringIO in memory
      #   resp = s3.get_object(bucket: 'bucket-name', key: 'object-key')
      # 
      #   # call #read or #string on the response body
      #   resp.body.read
      #   #=> '...'
      #
      # @example Streaming data to a block
      #   # WARNING: yielding data to a block disables retries of networking errors
      #   File.open('/path/to/file', 'wb') do |file|
      #     s3.get_object(bucket: 'bucket-name', key: 'object-key') do |chunk|
      #       file.write(chunk)
      #     end
      #   end
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_object({
      #     bucket: "BucketName", # required
      #     if_match: "IfMatch",
      #     if_modified_since: Time.now,
      #     if_none_match: "IfNoneMatch",
      #     if_unmodified_since: Time.now,
      #     key: "ObjectKey", # required
      #     range: "Range",
      #     response_cache_control: "ResponseCacheControl",
      #     response_content_disposition: "ResponseContentDisposition",
      #     response_content_encoding: "ResponseContentEncoding",
      #     response_content_language: "ResponseContentLanguage",
      #     response_content_type: "ResponseContentType",
      #     response_expires: Time.now,
      #     version_id: "ObjectVersionId",
      #     sse_customer_algorithm: "SSECustomerAlgorithm",
      #     sse_customer_key: "SSECustomerKey",
      #     sse_customer_key_md5: "SSECustomerKeyMD5",
      #     request_payer: "requester", # accepts requester
      #   })
      #
      # @example Response structure
      #   resp.body #=> IO
      #   resp.delete_marker #=> Boolean
      #   resp.accept_ranges #=> String
      #   resp.expiration #=> String
      #   resp.restore #=> String
      #   resp.last_modified #=> Time
      #   resp.content_length #=> Integer
      #   resp.etag #=> String
      #   resp.missing_meta #=> Integer
      #   resp.version_id #=> String
      #   resp.cache_control #=> String
      #   resp.content_disposition #=> String
      #   resp.content_encoding #=> String
      #   resp.content_language #=> String
      #   resp.content_range #=> String
      #   resp.content_type #=> String
      #   resp.expires #=> Time
      #   resp.expires_string #=> String
      #   resp.website_redirect_location #=> String
      #   resp.server_side_encryption #=> String, one of "AES256", "aws:kms"
      #   resp.metadata #=> Hash
      #   resp.metadata["MetadataKey"] #=> String
      #   resp.sse_customer_algorithm #=> String
      #   resp.sse_customer_key_md5 #=> String
      #   resp.ssekms_key_id #=> String
      #   resp.storage_class #=> String, one of "STANDARD", "REDUCED_REDUNDANCY", "STANDARD_IA"
      #   resp.request_charged #=> String, one of "requester"
      #   resp.replication_status #=> String, one of "COMPLETE", "PENDING", "FAILED", "REPLICA"
      # @overload get_object(params = {})
      # @param [Hash] params ({})
      def get_object(params = {}, options = {})
        req = build_request(:get_object, params)
        req.send_request(options)
      end

      # Returns the access control list (ACL) of an object.
      # @option params [required, String] :bucket
      # @option params [required, String] :key
      # @option params [String] :version_id
      #   VersionId used to reference a specific version of the object.
      # @option params [String] :request_payer
      #   Confirms that the requester knows that she or he will be charged for
      #   the request. Bucket owners need not specify this parameter in their
      #   requests. Documentation on downloading objects from requester pays
      #   buckets can be found at
      #   http://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html
      # @return [Types::GetObjectAclOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetObjectAclOutput#owner #Owner} => Types::Owner
      #   * {Types::GetObjectAclOutput#grants #Grants} => Array&lt;Types::Grant&gt;
      #   * {Types::GetObjectAclOutput#request_charged #RequestCharged} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_object_acl({
      #     bucket: "BucketName", # required
      #     key: "ObjectKey", # required
      #     version_id: "ObjectVersionId",
      #     request_payer: "requester", # accepts requester
      #   })
      #
      # @example Response structure
      #   resp.owner.display_name #=> String
      #   resp.owner.id #=> String
      #   resp.grants #=> Array
      #   resp.grants[0].grantee.display_name #=> String
      #   resp.grants[0].grantee.email_address #=> String
      #   resp.grants[0].grantee.id #=> String
      #   resp.grants[0].grantee.type #=> String, one of "CanonicalUser", "AmazonCustomerByEmail", "Group"
      #   resp.grants[0].grantee.uri #=> String
      #   resp.grants[0].permission #=> String, one of "FULL_CONTROL", "WRITE", "WRITE_ACP", "READ", "READ_ACP"
      #   resp.request_charged #=> String, one of "requester"
      # @overload get_object_acl(params = {})
      # @param [Hash] params ({})
      def get_object_acl(params = {}, options = {})
        req = build_request(:get_object_acl, params)
        req.send_request(options)
      end

      # Return torrent files from a bucket.
      # @option params [String, IO] :response_target
      #   Where to write response data, file path, or IO object.
      # @option params [required, String] :bucket
      # @option params [required, String] :key
      # @option params [String] :request_payer
      #   Confirms that the requester knows that she or he will be charged for
      #   the request. Bucket owners need not specify this parameter in their
      #   requests. Documentation on downloading objects from requester pays
      #   buckets can be found at
      #   http://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html
      # @return [Types::GetObjectTorrentOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetObjectTorrentOutput#body #Body} => IO
      #   * {Types::GetObjectTorrentOutput#request_charged #RequestCharged} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_object_torrent({
      #     bucket: "BucketName", # required
      #     key: "ObjectKey", # required
      #     request_payer: "requester", # accepts requester
      #   })
      #
      # @example Response structure
      #   resp.body #=> IO
      #   resp.request_charged #=> String, one of "requester"
      # @overload get_object_torrent(params = {})
      # @param [Hash] params ({})
      def get_object_torrent(params = {}, options = {})
        req = build_request(:get_object_torrent, params)
        req.send_request(options)
      end

      # This operation is useful to determine if a bucket exists and you have
      # permission to access it.
      # @option params [required, String] :bucket
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.head_bucket({
      #     bucket: "BucketName", # required
      #   })
      # @overload head_bucket(params = {})
      # @param [Hash] params ({})
      def head_bucket(params = {}, options = {})
        req = build_request(:head_bucket, params)
        req.send_request(options)
      end

      # The HEAD operation retrieves metadata from an object without returning
      # the object itself. This operation is useful if you're only interested
      # in an object's metadata. To use HEAD, you must have READ access to
      # the object.
      # @option params [required, String] :bucket
      # @option params [String] :if_match
      #   Return the object only if its entity tag (ETag) is the same as the one
      #   specified, otherwise return a 412 (precondition failed).
      # @option params [Time,DateTime,Date,Integer,String] :if_modified_since
      #   Return the object only if it has been modified since the specified
      #   time, otherwise return a 304 (not modified).
      # @option params [String] :if_none_match
      #   Return the object only if its entity tag (ETag) is different from the
      #   one specified, otherwise return a 304 (not modified).
      # @option params [Time,DateTime,Date,Integer,String] :if_unmodified_since
      #   Return the object only if it has not been modified since the specified
      #   time, otherwise return a 412 (precondition failed).
      # @option params [required, String] :key
      # @option params [String] :range
      #   Downloads the specified range bytes of an object. For more information
      #   about the HTTP Range header, go to
      #   http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.35.
      # @option params [String] :version_id
      #   VersionId used to reference a specific version of the object.
      # @option params [String] :sse_customer_algorithm
      #   Specifies the algorithm to use to when encrypting the object (e.g.,
      #   AES256).
      # @option params [String] :sse_customer_key
      #   Specifies the customer-provided encryption key for Amazon S3 to use in
      #   encrypting data. This value is used to store the object and then it is
      #   discarded; Amazon does not store the encryption key. The key must be
      #   appropriate for use with the algorithm specified in the
      #   x-amz-server-side​-encryption​-customer-algorithm header.
      # @option params [String] :sse_customer_key_md5
      #   Specifies the 128-bit MD5 digest of the encryption key according to
      #   RFC 1321. Amazon S3 uses this header for a message integrity check to
      #   ensure the encryption key was transmitted without error.
      # @option params [String] :request_payer
      #   Confirms that the requester knows that she or he will be charged for
      #   the request. Bucket owners need not specify this parameter in their
      #   requests. Documentation on downloading objects from requester pays
      #   buckets can be found at
      #   http://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html
      # @return [Types::HeadObjectOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::HeadObjectOutput#delete_marker #DeleteMarker} => Boolean
      #   * {Types::HeadObjectOutput#accept_ranges #AcceptRanges} => String
      #   * {Types::HeadObjectOutput#expiration #Expiration} => String
      #   * {Types::HeadObjectOutput#restore #Restore} => String
      #   * {Types::HeadObjectOutput#last_modified #LastModified} => Time
      #   * {Types::HeadObjectOutput#content_length #ContentLength} => Integer
      #   * {Types::HeadObjectOutput#etag #ETag} => String
      #   * {Types::HeadObjectOutput#missing_meta #MissingMeta} => Integer
      #   * {Types::HeadObjectOutput#version_id #VersionId} => String
      #   * {Types::HeadObjectOutput#cache_control #CacheControl} => String
      #   * {Types::HeadObjectOutput#content_disposition #ContentDisposition} => String
      #   * {Types::HeadObjectOutput#content_encoding #ContentEncoding} => String
      #   * {Types::HeadObjectOutput#content_language #ContentLanguage} => String
      #   * {Types::HeadObjectOutput#content_type #ContentType} => String
      #   * {Types::HeadObjectOutput#expires #Expires} => Time
      #   * {Types::HeadObjectOutput#expires_string #ExpiresString} => String
      #   * {Types::HeadObjectOutput#website_redirect_location #WebsiteRedirectLocation} => String
      #   * {Types::HeadObjectOutput#server_side_encryption #ServerSideEncryption} => String
      #   * {Types::HeadObjectOutput#metadata #Metadata} => Hash&lt;String,String&gt;
      #   * {Types::HeadObjectOutput#sse_customer_algorithm #SSECustomerAlgorithm} => String
      #   * {Types::HeadObjectOutput#sse_customer_key_md5 #SSECustomerKeyMD5} => String
      #   * {Types::HeadObjectOutput#ssekms_key_id #SSEKMSKeyId} => String
      #   * {Types::HeadObjectOutput#storage_class #StorageClass} => String
      #   * {Types::HeadObjectOutput#request_charged #RequestCharged} => String
      #   * {Types::HeadObjectOutput#replication_status #ReplicationStatus} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.head_object({
      #     bucket: "BucketName", # required
      #     if_match: "IfMatch",
      #     if_modified_since: Time.now,
      #     if_none_match: "IfNoneMatch",
      #     if_unmodified_since: Time.now,
      #     key: "ObjectKey", # required
      #     range: "Range",
      #     version_id: "ObjectVersionId",
      #     sse_customer_algorithm: "SSECustomerAlgorithm",
      #     sse_customer_key: "SSECustomerKey",
      #     sse_customer_key_md5: "SSECustomerKeyMD5",
      #     request_payer: "requester", # accepts requester
      #   })
      #
      # @example Response structure
      #   resp.delete_marker #=> Boolean
      #   resp.accept_ranges #=> String
      #   resp.expiration #=> String
      #   resp.restore #=> String
      #   resp.last_modified #=> Time
      #   resp.content_length #=> Integer
      #   resp.etag #=> String
      #   resp.missing_meta #=> Integer
      #   resp.version_id #=> String
      #   resp.cache_control #=> String
      #   resp.content_disposition #=> String
      #   resp.content_encoding #=> String
      #   resp.content_language #=> String
      #   resp.content_type #=> String
      #   resp.expires #=> Time
      #   resp.expires_string #=> String
      #   resp.website_redirect_location #=> String
      #   resp.server_side_encryption #=> String, one of "AES256", "aws:kms"
      #   resp.metadata #=> Hash
      #   resp.metadata["MetadataKey"] #=> String
      #   resp.sse_customer_algorithm #=> String
      #   resp.sse_customer_key_md5 #=> String
      #   resp.ssekms_key_id #=> String
      #   resp.storage_class #=> String, one of "STANDARD", "REDUCED_REDUNDANCY", "STANDARD_IA"
      #   resp.request_charged #=> String, one of "requester"
      #   resp.replication_status #=> String, one of "COMPLETE", "PENDING", "FAILED", "REPLICA"
      # @overload head_object(params = {})
      # @param [Hash] params ({})
      def head_object(params = {}, options = {})
        req = build_request(:head_object, params)
        req.send_request(options)
      end

      # Returns a list of all buckets owned by the authenticated sender of the
      # request.
      # @return [Types::ListBucketsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListBucketsOutput#buckets #Buckets} => Array&lt;Types::Bucket&gt;
      #   * {Types::ListBucketsOutput#owner #Owner} => Types::Owner
      #
      # @example Response structure
      #   resp.buckets #=> Array
      #   resp.buckets[0].name #=> String
      #   resp.buckets[0].creation_date #=> Time
      #   resp.owner.display_name #=> String
      #   resp.owner.id #=> String
      # @overload list_buckets(params = {})
      # @param [Hash] params ({})
      def list_buckets(params = {}, options = {})
        req = build_request(:list_buckets, params)
        req.send_request(options)
      end

      # This operation lists in-progress multipart uploads.
      # @option params [required, String] :bucket
      # @option params [String] :delimiter
      #   Character you use to group keys.
      # @option params [String] :encoding_type
      #   Requests Amazon S3 to encode the object keys in the response and
      #   specifies the encoding method to use. An object key may contain any
      #   Unicode character; however, XML 1.0 parser cannot parse some
      #   characters, such as characters with an ASCII value from 0 to 10. For
      #   characters that are not supported in XML 1.0, you can add this
      #   parameter to request that Amazon S3 encode the keys in the response.
      # @option params [String] :key_marker
      #   Together with upload-id-marker, this parameter specifies the multipart
      #   upload after which listing should begin.
      # @option params [Integer] :max_uploads
      #   Sets the maximum number of multipart uploads, from 1 to 1,000, to
      #   return in the response body. 1,000 is the maximum number of uploads
      #   that can be returned in a response.
      # @option params [String] :prefix
      #   Lists in-progress uploads only for those keys that begin with the
      #   specified prefix.
      # @option params [String] :upload_id_marker
      #   Together with key-marker, specifies the multipart upload after which
      #   listing should begin. If key-marker is not specified, the
      #   upload-id-marker parameter is ignored.
      # @return [Types::ListMultipartUploadsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListMultipartUploadsOutput#bucket #Bucket} => String
      #   * {Types::ListMultipartUploadsOutput#key_marker #KeyMarker} => String
      #   * {Types::ListMultipartUploadsOutput#upload_id_marker #UploadIdMarker} => String
      #   * {Types::ListMultipartUploadsOutput#next_key_marker #NextKeyMarker} => String
      #   * {Types::ListMultipartUploadsOutput#prefix #Prefix} => String
      #   * {Types::ListMultipartUploadsOutput#delimiter #Delimiter} => String
      #   * {Types::ListMultipartUploadsOutput#next_upload_id_marker #NextUploadIdMarker} => String
      #   * {Types::ListMultipartUploadsOutput#max_uploads #MaxUploads} => Integer
      #   * {Types::ListMultipartUploadsOutput#is_truncated #IsTruncated} => Boolean
      #   * {Types::ListMultipartUploadsOutput#uploads #Uploads} => Array&lt;Types::MultipartUpload&gt;
      #   * {Types::ListMultipartUploadsOutput#common_prefixes #CommonPrefixes} => Array&lt;Types::CommonPrefix&gt;
      #   * {Types::ListMultipartUploadsOutput#encoding_type #EncodingType} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_multipart_uploads({
      #     bucket: "BucketName", # required
      #     delimiter: "Delimiter",
      #     encoding_type: "url", # accepts url
      #     key_marker: "KeyMarker",
      #     max_uploads: 1,
      #     prefix: "Prefix",
      #     upload_id_marker: "UploadIdMarker",
      #   })
      #
      # @example Response structure
      #   resp.bucket #=> String
      #   resp.key_marker #=> String
      #   resp.upload_id_marker #=> String
      #   resp.next_key_marker #=> String
      #   resp.prefix #=> String
      #   resp.delimiter #=> String
      #   resp.next_upload_id_marker #=> String
      #   resp.max_uploads #=> Integer
      #   resp.is_truncated #=> Boolean
      #   resp.uploads #=> Array
      #   resp.uploads[0].upload_id #=> String
      #   resp.uploads[0].key #=> String
      #   resp.uploads[0].initiated #=> Time
      #   resp.uploads[0].storage_class #=> String, one of "STANDARD", "REDUCED_REDUNDANCY", "STANDARD_IA"
      #   resp.uploads[0].owner.display_name #=> String
      #   resp.uploads[0].owner.id #=> String
      #   resp.uploads[0].initiator.id #=> String
      #   resp.uploads[0].initiator.display_name #=> String
      #   resp.common_prefixes #=> Array
      #   resp.common_prefixes[0].prefix #=> String
      #   resp.encoding_type #=> String, one of "url"
      # @overload list_multipart_uploads(params = {})
      # @param [Hash] params ({})
      def list_multipart_uploads(params = {}, options = {})
        req = build_request(:list_multipart_uploads, params)
        req.send_request(options)
      end

      # Returns metadata about all of the versions of objects in a bucket.
      # @option params [required, String] :bucket
      # @option params [String] :delimiter
      #   A delimiter is a character you use to group keys.
      # @option params [String] :encoding_type
      #   Requests Amazon S3 to encode the object keys in the response and
      #   specifies the encoding method to use. An object key may contain any
      #   Unicode character; however, XML 1.0 parser cannot parse some
      #   characters, such as characters with an ASCII value from 0 to 10. For
      #   characters that are not supported in XML 1.0, you can add this
      #   parameter to request that Amazon S3 encode the keys in the response.
      # @option params [String] :key_marker
      #   Specifies the key to start with when listing objects in a bucket.
      # @option params [Integer] :max_keys
      #   Sets the maximum number of keys returned in the response. The response
      #   might contain fewer keys but will never contain more.
      # @option params [String] :prefix
      #   Limits the response to keys that begin with the specified prefix.
      # @option params [String] :version_id_marker
      #   Specifies the object version you want to start listing from.
      # @return [Types::ListObjectVersionsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListObjectVersionsOutput#is_truncated #IsTruncated} => Boolean
      #   * {Types::ListObjectVersionsOutput#key_marker #KeyMarker} => String
      #   * {Types::ListObjectVersionsOutput#version_id_marker #VersionIdMarker} => String
      #   * {Types::ListObjectVersionsOutput#next_key_marker #NextKeyMarker} => String
      #   * {Types::ListObjectVersionsOutput#next_version_id_marker #NextVersionIdMarker} => String
      #   * {Types::ListObjectVersionsOutput#versions #Versions} => Array&lt;Types::ObjectVersion&gt;
      #   * {Types::ListObjectVersionsOutput#delete_markers #DeleteMarkers} => Array&lt;Types::DeleteMarkerEntry&gt;
      #   * {Types::ListObjectVersionsOutput#name #Name} => String
      #   * {Types::ListObjectVersionsOutput#prefix #Prefix} => String
      #   * {Types::ListObjectVersionsOutput#delimiter #Delimiter} => String
      #   * {Types::ListObjectVersionsOutput#max_keys #MaxKeys} => Integer
      #   * {Types::ListObjectVersionsOutput#common_prefixes #CommonPrefixes} => Array&lt;Types::CommonPrefix&gt;
      #   * {Types::ListObjectVersionsOutput#encoding_type #EncodingType} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_object_versions({
      #     bucket: "BucketName", # required
      #     delimiter: "Delimiter",
      #     encoding_type: "url", # accepts url
      #     key_marker: "KeyMarker",
      #     max_keys: 1,
      #     prefix: "Prefix",
      #     version_id_marker: "VersionIdMarker",
      #   })
      #
      # @example Response structure
      #   resp.is_truncated #=> Boolean
      #   resp.key_marker #=> String
      #   resp.version_id_marker #=> String
      #   resp.next_key_marker #=> String
      #   resp.next_version_id_marker #=> String
      #   resp.versions #=> Array
      #   resp.versions[0].etag #=> String
      #   resp.versions[0].size #=> Integer
      #   resp.versions[0].storage_class #=> String, one of "STANDARD"
      #   resp.versions[0].key #=> String
      #   resp.versions[0].version_id #=> String
      #   resp.versions[0].is_latest #=> Boolean
      #   resp.versions[0].last_modified #=> Time
      #   resp.versions[0].owner.display_name #=> String
      #   resp.versions[0].owner.id #=> String
      #   resp.delete_markers #=> Array
      #   resp.delete_markers[0].owner.display_name #=> String
      #   resp.delete_markers[0].owner.id #=> String
      #   resp.delete_markers[0].key #=> String
      #   resp.delete_markers[0].version_id #=> String
      #   resp.delete_markers[0].is_latest #=> Boolean
      #   resp.delete_markers[0].last_modified #=> Time
      #   resp.name #=> String
      #   resp.prefix #=> String
      #   resp.delimiter #=> String
      #   resp.max_keys #=> Integer
      #   resp.common_prefixes #=> Array
      #   resp.common_prefixes[0].prefix #=> String
      #   resp.encoding_type #=> String, one of "url"
      # @overload list_object_versions(params = {})
      # @param [Hash] params ({})
      def list_object_versions(params = {}, options = {})
        req = build_request(:list_object_versions, params)
        req.send_request(options)
      end

      # Returns some or all (up to 1000) of the objects in a bucket. You can
      # use the request parameters as selection criteria to return a subset of
      # the objects in a bucket.
      # @option params [required, String] :bucket
      # @option params [String] :delimiter
      #   A delimiter is a character you use to group keys.
      # @option params [String] :encoding_type
      #   Requests Amazon S3 to encode the object keys in the response and
      #   specifies the encoding method to use. An object key may contain any
      #   Unicode character; however, XML 1.0 parser cannot parse some
      #   characters, such as characters with an ASCII value from 0 to 10. For
      #   characters that are not supported in XML 1.0, you can add this
      #   parameter to request that Amazon S3 encode the keys in the response.
      # @option params [String] :marker
      #   Specifies the key to start with when listing objects in a bucket.
      # @option params [Integer] :max_keys
      #   Sets the maximum number of keys returned in the response. The response
      #   might contain fewer keys but will never contain more.
      # @option params [String] :prefix
      #   Limits the response to keys that begin with the specified prefix.
      # @return [Types::ListObjectsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListObjectsOutput#is_truncated #IsTruncated} => Boolean
      #   * {Types::ListObjectsOutput#marker #Marker} => String
      #   * {Types::ListObjectsOutput#next_marker #NextMarker} => String
      #   * {Types::ListObjectsOutput#contents #Contents} => Array&lt;Types::Object&gt;
      #   * {Types::ListObjectsOutput#name #Name} => String
      #   * {Types::ListObjectsOutput#prefix #Prefix} => String
      #   * {Types::ListObjectsOutput#delimiter #Delimiter} => String
      #   * {Types::ListObjectsOutput#max_keys #MaxKeys} => Integer
      #   * {Types::ListObjectsOutput#common_prefixes #CommonPrefixes} => Array&lt;Types::CommonPrefix&gt;
      #   * {Types::ListObjectsOutput#encoding_type #EncodingType} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_objects({
      #     bucket: "BucketName", # required
      #     delimiter: "Delimiter",
      #     encoding_type: "url", # accepts url
      #     marker: "Marker",
      #     max_keys: 1,
      #     prefix: "Prefix",
      #   })
      #
      # @example Response structure
      #   resp.is_truncated #=> Boolean
      #   resp.marker #=> String
      #   resp.next_marker #=> String
      #   resp.contents #=> Array
      #   resp.contents[0].key #=> String
      #   resp.contents[0].last_modified #=> Time
      #   resp.contents[0].etag #=> String
      #   resp.contents[0].size #=> Integer
      #   resp.contents[0].storage_class #=> String, one of "STANDARD", "REDUCED_REDUNDANCY", "GLACIER"
      #   resp.contents[0].owner.display_name #=> String
      #   resp.contents[0].owner.id #=> String
      #   resp.name #=> String
      #   resp.prefix #=> String
      #   resp.delimiter #=> String
      #   resp.max_keys #=> Integer
      #   resp.common_prefixes #=> Array
      #   resp.common_prefixes[0].prefix #=> String
      #   resp.encoding_type #=> String, one of "url"
      # @overload list_objects(params = {})
      # @param [Hash] params ({})
      def list_objects(params = {}, options = {})
        req = build_request(:list_objects, params)
        req.send_request(options)
      end

      # Returns some or all (up to 1000) of the objects in a bucket. You can
      # use the request parameters as selection criteria to return a subset of
      # the objects in a bucket. Note: ListObjectsV2 is the revised List
      # Objects API and we recommend you use this revised API for new
      # application development.
      # @option params [required, String] :bucket
      #   Name of the bucket to list.
      # @option params [String] :delimiter
      #   A delimiter is a character you use to group keys.
      # @option params [String] :encoding_type
      #   Encoding type used by Amazon S3 to encode object keys in the response.
      # @option params [Integer] :max_keys
      #   Sets the maximum number of keys returned in the response. The response
      #   might contain fewer keys but will never contain more.
      # @option params [String] :prefix
      #   Limits the response to keys that begin with the specified prefix.
      # @option params [String] :continuation_token
      #   ContinuationToken indicates Amazon S3 that the list is being continued
      #   on this bucket with a token. ContinuationToken is obfuscated and is
      #   not a real key
      # @option params [Boolean] :fetch_owner
      #   The owner field is not present in listV2 by default, if you want to
      #   return owner field with each key in the result then set the fetch
      #   owner field to true
      # @option params [String] :start_after
      #   StartAfter is where you want Amazon S3 to start listing from. Amazon
      #   S3 starts listing after this specified key. StartAfter can be any key
      #   in the bucket
      # @return [Types::ListObjectsV2Output] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListObjectsV2Output#is_truncated #IsTruncated} => Boolean
      #   * {Types::ListObjectsV2Output#contents #Contents} => Array&lt;Types::Object&gt;
      #   * {Types::ListObjectsV2Output#name #Name} => String
      #   * {Types::ListObjectsV2Output#prefix #Prefix} => String
      #   * {Types::ListObjectsV2Output#delimiter #Delimiter} => String
      #   * {Types::ListObjectsV2Output#max_keys #MaxKeys} => Integer
      #   * {Types::ListObjectsV2Output#common_prefixes #CommonPrefixes} => Array&lt;Types::CommonPrefix&gt;
      #   * {Types::ListObjectsV2Output#encoding_type #EncodingType} => String
      #   * {Types::ListObjectsV2Output#key_count #KeyCount} => Integer
      #   * {Types::ListObjectsV2Output#continuation_token #ContinuationToken} => String
      #   * {Types::ListObjectsV2Output#next_continuation_token #NextContinuationToken} => String
      #   * {Types::ListObjectsV2Output#start_after #StartAfter} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_objects_v2({
      #     bucket: "BucketName", # required
      #     delimiter: "Delimiter",
      #     encoding_type: "url", # accepts url
      #     max_keys: 1,
      #     prefix: "Prefix",
      #     continuation_token: "Token",
      #     fetch_owner: false,
      #     start_after: "StartAfter",
      #   })
      #
      # @example Response structure
      #   resp.is_truncated #=> Boolean
      #   resp.contents #=> Array
      #   resp.contents[0].key #=> String
      #   resp.contents[0].last_modified #=> Time
      #   resp.contents[0].etag #=> String
      #   resp.contents[0].size #=> Integer
      #   resp.contents[0].storage_class #=> String, one of "STANDARD", "REDUCED_REDUNDANCY", "GLACIER"
      #   resp.contents[0].owner.display_name #=> String
      #   resp.contents[0].owner.id #=> String
      #   resp.name #=> String
      #   resp.prefix #=> String
      #   resp.delimiter #=> String
      #   resp.max_keys #=> Integer
      #   resp.common_prefixes #=> Array
      #   resp.common_prefixes[0].prefix #=> String
      #   resp.encoding_type #=> String, one of "url"
      #   resp.key_count #=> Integer
      #   resp.continuation_token #=> String
      #   resp.next_continuation_token #=> String
      #   resp.start_after #=> String
      # @overload list_objects_v2(params = {})
      # @param [Hash] params ({})
      def list_objects_v2(params = {}, options = {})
        req = build_request(:list_objects_v2, params)
        req.send_request(options)
      end

      # Lists the parts that have been uploaded for a specific multipart
      # upload.
      # @option params [required, String] :bucket
      # @option params [required, String] :key
      # @option params [Integer] :max_parts
      #   Sets the maximum number of parts to return.
      # @option params [Integer] :part_number_marker
      #   Specifies the part after which listing should begin. Only parts with
      #   higher part numbers will be listed.
      # @option params [required, String] :upload_id
      #   Upload ID identifying the multipart upload whose parts are being
      #   listed.
      # @option params [String] :request_payer
      #   Confirms that the requester knows that she or he will be charged for
      #   the request. Bucket owners need not specify this parameter in their
      #   requests. Documentation on downloading objects from requester pays
      #   buckets can be found at
      #   http://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html
      # @return [Types::ListPartsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListPartsOutput#abort_date #AbortDate} => Time
      #   * {Types::ListPartsOutput#abort_rule_id #AbortRuleId} => String
      #   * {Types::ListPartsOutput#bucket #Bucket} => String
      #   * {Types::ListPartsOutput#key #Key} => String
      #   * {Types::ListPartsOutput#upload_id #UploadId} => String
      #   * {Types::ListPartsOutput#part_number_marker #PartNumberMarker} => Integer
      #   * {Types::ListPartsOutput#next_part_number_marker #NextPartNumberMarker} => Integer
      #   * {Types::ListPartsOutput#max_parts #MaxParts} => Integer
      #   * {Types::ListPartsOutput#is_truncated #IsTruncated} => Boolean
      #   * {Types::ListPartsOutput#parts #Parts} => Array&lt;Types::Part&gt;
      #   * {Types::ListPartsOutput#initiator #Initiator} => Types::Initiator
      #   * {Types::ListPartsOutput#owner #Owner} => Types::Owner
      #   * {Types::ListPartsOutput#storage_class #StorageClass} => String
      #   * {Types::ListPartsOutput#request_charged #RequestCharged} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_parts({
      #     bucket: "BucketName", # required
      #     key: "ObjectKey", # required
      #     max_parts: 1,
      #     part_number_marker: 1,
      #     upload_id: "MultipartUploadId", # required
      #     request_payer: "requester", # accepts requester
      #   })
      #
      # @example Response structure
      #   resp.abort_date #=> Time
      #   resp.abort_rule_id #=> String
      #   resp.bucket #=> String
      #   resp.key #=> String
      #   resp.upload_id #=> String
      #   resp.part_number_marker #=> Integer
      #   resp.next_part_number_marker #=> Integer
      #   resp.max_parts #=> Integer
      #   resp.is_truncated #=> Boolean
      #   resp.parts #=> Array
      #   resp.parts[0].part_number #=> Integer
      #   resp.parts[0].last_modified #=> Time
      #   resp.parts[0].etag #=> String
      #   resp.parts[0].size #=> Integer
      #   resp.initiator.id #=> String
      #   resp.initiator.display_name #=> String
      #   resp.owner.display_name #=> String
      #   resp.owner.id #=> String
      #   resp.storage_class #=> String, one of "STANDARD", "REDUCED_REDUNDANCY", "STANDARD_IA"
      #   resp.request_charged #=> String, one of "requester"
      # @overload list_parts(params = {})
      # @param [Hash] params ({})
      def list_parts(params = {}, options = {})
        req = build_request(:list_parts, params)
        req.send_request(options)
      end

      # Sets the accelerate configuration of an existing bucket.
      # @option params [required, String] :bucket
      #   Name of the bucket for which the accelerate configuration is set.
      # @option params [required, Types::AccelerateConfiguration] :accelerate_configuration
      #   Specifies the Accelerate Configuration you want to set for the bucket.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.put_bucket_accelerate_configuration({
      #     bucket: "BucketName", # required
      #     accelerate_configuration: { # required
      #       status: "Enabled", # accepts Enabled, Suspended
      #     },
      #   })
      # @overload put_bucket_accelerate_configuration(params = {})
      # @param [Hash] params ({})
      def put_bucket_accelerate_configuration(params = {}, options = {})
        req = build_request(:put_bucket_accelerate_configuration, params)
        req.send_request(options)
      end

      # Sets the permissions on a bucket using access control lists (ACL).
      # @option params [String] :acl
      #   The canned ACL to apply to the bucket.
      # @option params [Types::AccessControlPolicy] :access_control_policy
      # @option params [required, String] :bucket
      # @option params [String] :content_md5
      # @option params [String] :grant_full_control
      #   Allows grantee the read, write, read ACP, and write ACP permissions on
      #   the bucket.
      # @option params [String] :grant_read
      #   Allows grantee to list the objects in the bucket.
      # @option params [String] :grant_read_acp
      #   Allows grantee to read the bucket ACL.
      # @option params [String] :grant_write
      #   Allows grantee to create, overwrite, and delete any object in the
      #   bucket.
      # @option params [String] :grant_write_acp
      #   Allows grantee to write the ACL for the applicable bucket.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.put_bucket_acl({
      #     acl: "private", # accepts private, public-read, public-read-write, authenticated-read
      #     access_control_policy: {
      #       grants: [
      #         {
      #           grantee: {
      #             display_name: "DisplayName",
      #             email_address: "EmailAddress",
      #             id: "ID",
      #             type: "CanonicalUser", # required, accepts CanonicalUser, AmazonCustomerByEmail, Group
      #             uri: "URI",
      #           },
      #           permission: "FULL_CONTROL", # accepts FULL_CONTROL, WRITE, WRITE_ACP, READ, READ_ACP
      #         },
      #       ],
      #       owner: {
      #         display_name: "DisplayName",
      #         id: "ID",
      #       },
      #     },
      #     bucket: "BucketName", # required
      #     content_md5: "ContentMD5",
      #     grant_full_control: "GrantFullControl",
      #     grant_read: "GrantRead",
      #     grant_read_acp: "GrantReadACP",
      #     grant_write: "GrantWrite",
      #     grant_write_acp: "GrantWriteACP",
      #   })
      # @overload put_bucket_acl(params = {})
      # @param [Hash] params ({})
      def put_bucket_acl(params = {}, options = {})
        req = build_request(:put_bucket_acl, params)
        req.send_request(options)
      end

      # Sets the cors configuration for a bucket.
      # @option params [required, String] :bucket
      # @option params [required, Types::CORSConfiguration] :cors_configuration
      # @option params [String] :content_md5
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.put_bucket_cors({
      #     bucket: "BucketName", # required
      #     cors_configuration: { # required
      #       cors_rules: [ # required
      #         {
      #           allowed_headers: ["AllowedHeader"],
      #           allowed_methods: ["AllowedMethod"], # required
      #           allowed_origins: ["AllowedOrigin"], # required
      #           expose_headers: ["ExposeHeader"],
      #           max_age_seconds: 1,
      #         },
      #       ],
      #     },
      #     content_md5: "ContentMD5",
      #   })
      # @overload put_bucket_cors(params = {})
      # @param [Hash] params ({})
      def put_bucket_cors(params = {}, options = {})
        req = build_request(:put_bucket_cors, params)
        req.send_request(options)
      end

      # Deprecated, see the PutBucketLifecycleConfiguration operation.
      # @option params [required, String] :bucket
      # @option params [String] :content_md5
      # @option params [Types::LifecycleConfiguration] :lifecycle_configuration
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.put_bucket_lifecycle({
      #     bucket: "BucketName", # required
      #     content_md5: "ContentMD5",
      #     lifecycle_configuration: {
      #       rules: [ # required
      #         {
      #           expiration: {
      #             date: Time.now,
      #             days: 1,
      #             expired_object_delete_marker: false,
      #           },
      #           id: "ID",
      #           prefix: "Prefix", # required
      #           status: "Enabled", # required, accepts Enabled, Disabled
      #           transition: {
      #             date: Time.now,
      #             days: 1,
      #             storage_class: "GLACIER", # accepts GLACIER, STANDARD_IA
      #           },
      #           noncurrent_version_transition: {
      #             noncurrent_days: 1,
      #             storage_class: "GLACIER", # accepts GLACIER, STANDARD_IA
      #           },
      #           noncurrent_version_expiration: {
      #             noncurrent_days: 1,
      #           },
      #           abort_incomplete_multipart_upload: {
      #             days_after_initiation: 1,
      #           },
      #         },
      #       ],
      #     },
      #   })
      # @overload put_bucket_lifecycle(params = {})
      # @param [Hash] params ({})
      def put_bucket_lifecycle(params = {}, options = {})
        req = build_request(:put_bucket_lifecycle, params)
        req.send_request(options)
      end

      # Sets lifecycle configuration for your bucket. If a lifecycle
      # configuration exists, it replaces it.
      # @option params [required, String] :bucket
      # @option params [Types::BucketLifecycleConfiguration] :lifecycle_configuration
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.put_bucket_lifecycle_configuration({
      #     bucket: "BucketName", # required
      #     lifecycle_configuration: {
      #       rules: [ # required
      #         {
      #           expiration: {
      #             date: Time.now,
      #             days: 1,
      #             expired_object_delete_marker: false,
      #           },
      #           id: "ID",
      #           prefix: "Prefix", # required
      #           status: "Enabled", # required, accepts Enabled, Disabled
      #           transitions: [
      #             {
      #               date: Time.now,
      #               days: 1,
      #               storage_class: "GLACIER", # accepts GLACIER, STANDARD_IA
      #             },
      #           ],
      #           noncurrent_version_transitions: [
      #             {
      #               noncurrent_days: 1,
      #               storage_class: "GLACIER", # accepts GLACIER, STANDARD_IA
      #             },
      #           ],
      #           noncurrent_version_expiration: {
      #             noncurrent_days: 1,
      #           },
      #           abort_incomplete_multipart_upload: {
      #             days_after_initiation: 1,
      #           },
      #         },
      #       ],
      #     },
      #   })
      # @overload put_bucket_lifecycle_configuration(params = {})
      # @param [Hash] params ({})
      def put_bucket_lifecycle_configuration(params = {}, options = {})
        req = build_request(:put_bucket_lifecycle_configuration, params)
        req.send_request(options)
      end

      # Set the logging parameters for a bucket and to specify permissions for
      # who can view and modify the logging parameters. To set the logging
      # status of a bucket, you must be the bucket owner.
      # @option params [required, String] :bucket
      # @option params [required, Types::BucketLoggingStatus] :bucket_logging_status
      # @option params [String] :content_md5
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.put_bucket_logging({
      #     bucket: "BucketName", # required
      #     bucket_logging_status: { # required
      #       logging_enabled: {
      #         target_bucket: "TargetBucket",
      #         target_grants: [
      #           {
      #             grantee: {
      #               display_name: "DisplayName",
      #               email_address: "EmailAddress",
      #               id: "ID",
      #               type: "CanonicalUser", # required, accepts CanonicalUser, AmazonCustomerByEmail, Group
      #               uri: "URI",
      #             },
      #             permission: "FULL_CONTROL", # accepts FULL_CONTROL, READ, WRITE
      #           },
      #         ],
      #         target_prefix: "TargetPrefix",
      #       },
      #     },
      #     content_md5: "ContentMD5",
      #   })
      # @overload put_bucket_logging(params = {})
      # @param [Hash] params ({})
      def put_bucket_logging(params = {}, options = {})
        req = build_request(:put_bucket_logging, params)
        req.send_request(options)
      end

      # Deprecated, see the PutBucketNotificationConfiguraiton operation.
      # @option params [required, String] :bucket
      # @option params [String] :content_md5
      # @option params [required, Types::NotificationConfigurationDeprecated] :notification_configuration
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.put_bucket_notification({
      #     bucket: "BucketName", # required
      #     content_md5: "ContentMD5",
      #     notification_configuration: { # required
      #       topic_configuration: {
      #         id: "NotificationId",
      #         events: ["s3:ReducedRedundancyLostObject"], # accepts s3:ReducedRedundancyLostObject, s3:ObjectCreated:*, s3:ObjectCreated:Put, s3:ObjectCreated:Post, s3:ObjectCreated:Copy, s3:ObjectCreated:CompleteMultipartUpload, s3:ObjectRemoved:*, s3:ObjectRemoved:Delete, s3:ObjectRemoved:DeleteMarkerCreated
      #         event: "s3:ReducedRedundancyLostObject", # accepts s3:ReducedRedundancyLostObject, s3:ObjectCreated:*, s3:ObjectCreated:Put, s3:ObjectCreated:Post, s3:ObjectCreated:Copy, s3:ObjectCreated:CompleteMultipartUpload, s3:ObjectRemoved:*, s3:ObjectRemoved:Delete, s3:ObjectRemoved:DeleteMarkerCreated
      #         topic: "TopicArn",
      #       },
      #       queue_configuration: {
      #         id: "NotificationId",
      #         event: "s3:ReducedRedundancyLostObject", # accepts s3:ReducedRedundancyLostObject, s3:ObjectCreated:*, s3:ObjectCreated:Put, s3:ObjectCreated:Post, s3:ObjectCreated:Copy, s3:ObjectCreated:CompleteMultipartUpload, s3:ObjectRemoved:*, s3:ObjectRemoved:Delete, s3:ObjectRemoved:DeleteMarkerCreated
      #         events: ["s3:ReducedRedundancyLostObject"], # accepts s3:ReducedRedundancyLostObject, s3:ObjectCreated:*, s3:ObjectCreated:Put, s3:ObjectCreated:Post, s3:ObjectCreated:Copy, s3:ObjectCreated:CompleteMultipartUpload, s3:ObjectRemoved:*, s3:ObjectRemoved:Delete, s3:ObjectRemoved:DeleteMarkerCreated
      #         queue: "QueueArn",
      #       },
      #       cloud_function_configuration: {
      #         id: "NotificationId",
      #         event: "s3:ReducedRedundancyLostObject", # accepts s3:ReducedRedundancyLostObject, s3:ObjectCreated:*, s3:ObjectCreated:Put, s3:ObjectCreated:Post, s3:ObjectCreated:Copy, s3:ObjectCreated:CompleteMultipartUpload, s3:ObjectRemoved:*, s3:ObjectRemoved:Delete, s3:ObjectRemoved:DeleteMarkerCreated
      #         events: ["s3:ReducedRedundancyLostObject"], # accepts s3:ReducedRedundancyLostObject, s3:ObjectCreated:*, s3:ObjectCreated:Put, s3:ObjectCreated:Post, s3:ObjectCreated:Copy, s3:ObjectCreated:CompleteMultipartUpload, s3:ObjectRemoved:*, s3:ObjectRemoved:Delete, s3:ObjectRemoved:DeleteMarkerCreated
      #         cloud_function: "CloudFunction",
      #         invocation_role: "CloudFunctionInvocationRole",
      #       },
      #     },
      #   })
      # @overload put_bucket_notification(params = {})
      # @param [Hash] params ({})
      def put_bucket_notification(params = {}, options = {})
        req = build_request(:put_bucket_notification, params)
        req.send_request(options)
      end

      # Enables notifications of specified events for a bucket.
      # @option params [required, String] :bucket
      # @option params [required, Types::NotificationConfiguration] :notification_configuration
      #   Container for specifying the notification configuration of the bucket.
      #   If this element is empty, notifications are turned off on the bucket.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.put_bucket_notification_configuration({
      #     bucket: "BucketName", # required
      #     notification_configuration: { # required
      #       topic_configurations: [
      #         {
      #           id: "NotificationId",
      #           topic_arn: "TopicArn", # required
      #           events: ["s3:ReducedRedundancyLostObject"], # required, accepts s3:ReducedRedundancyLostObject, s3:ObjectCreated:*, s3:ObjectCreated:Put, s3:ObjectCreated:Post, s3:ObjectCreated:Copy, s3:ObjectCreated:CompleteMultipartUpload, s3:ObjectRemoved:*, s3:ObjectRemoved:Delete, s3:ObjectRemoved:DeleteMarkerCreated
      #           filter: {
      #             key: {
      #               filter_rules: [
      #                 {
      #                   name: "prefix", # accepts prefix, suffix
      #                   value: "FilterRuleValue",
      #                 },
      #               ],
      #             },
      #           },
      #         },
      #       ],
      #       queue_configurations: [
      #         {
      #           id: "NotificationId",
      #           queue_arn: "QueueArn", # required
      #           events: ["s3:ReducedRedundancyLostObject"], # required, accepts s3:ReducedRedundancyLostObject, s3:ObjectCreated:*, s3:ObjectCreated:Put, s3:ObjectCreated:Post, s3:ObjectCreated:Copy, s3:ObjectCreated:CompleteMultipartUpload, s3:ObjectRemoved:*, s3:ObjectRemoved:Delete, s3:ObjectRemoved:DeleteMarkerCreated
      #           filter: {
      #             key: {
      #               filter_rules: [
      #                 {
      #                   name: "prefix", # accepts prefix, suffix
      #                   value: "FilterRuleValue",
      #                 },
      #               ],
      #             },
      #           },
      #         },
      #       ],
      #       lambda_function_configurations: [
      #         {
      #           id: "NotificationId",
      #           lambda_function_arn: "LambdaFunctionArn", # required
      #           events: ["s3:ReducedRedundancyLostObject"], # required, accepts s3:ReducedRedundancyLostObject, s3:ObjectCreated:*, s3:ObjectCreated:Put, s3:ObjectCreated:Post, s3:ObjectCreated:Copy, s3:ObjectCreated:CompleteMultipartUpload, s3:ObjectRemoved:*, s3:ObjectRemoved:Delete, s3:ObjectRemoved:DeleteMarkerCreated
      #           filter: {
      #             key: {
      #               filter_rules: [
      #                 {
      #                   name: "prefix", # accepts prefix, suffix
      #                   value: "FilterRuleValue",
      #                 },
      #               ],
      #             },
      #           },
      #         },
      #       ],
      #     },
      #   })
      # @overload put_bucket_notification_configuration(params = {})
      # @param [Hash] params ({})
      def put_bucket_notification_configuration(params = {}, options = {})
        req = build_request(:put_bucket_notification_configuration, params)
        req.send_request(options)
      end

      # Replaces a policy on a bucket. If the bucket already has a policy, the
      # one in this request completely replaces it.
      # @option params [required, String] :bucket
      # @option params [String] :content_md5
      # @option params [required, String] :policy
      #   The bucket policy as a JSON document.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.put_bucket_policy({
      #     bucket: "BucketName", # required
      #     content_md5: "ContentMD5",
      #     policy: "Policy", # required
      #   })
      # @overload put_bucket_policy(params = {})
      # @param [Hash] params ({})
      def put_bucket_policy(params = {}, options = {})
        req = build_request(:put_bucket_policy, params)
        req.send_request(options)
      end

      # Creates a new replication configuration (or replaces an existing one,
      # if present).
      # @option params [required, String] :bucket
      # @option params [String] :content_md5
      # @option params [required, Types::ReplicationConfiguration] :replication_configuration
      #   Container for replication rules. You can add as many as 1,000 rules.
      #   Total replication configuration size can be up to 2 MB.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.put_bucket_replication({
      #     bucket: "BucketName", # required
      #     content_md5: "ContentMD5",
      #     replication_configuration: { # required
      #       role: "Role", # required
      #       rules: [ # required
      #         {
      #           id: "ID",
      #           prefix: "Prefix", # required
      #           status: "Enabled", # required, accepts Enabled, Disabled
      #           destination: { # required
      #             bucket: "BucketName", # required
      #             storage_class: "STANDARD", # accepts STANDARD, REDUCED_REDUNDANCY, STANDARD_IA
      #           },
      #         },
      #       ],
      #     },
      #   })
      # @overload put_bucket_replication(params = {})
      # @param [Hash] params ({})
      def put_bucket_replication(params = {}, options = {})
        req = build_request(:put_bucket_replication, params)
        req.send_request(options)
      end

      # Sets the request payment configuration for a bucket. By default, the
      # bucket owner pays for downloads from the bucket. This configuration
      # parameter enables the bucket owner (only) to specify that the person
      # requesting the download will be charged for the download.
      # Documentation on requester pays buckets can be found at
      # http://docs.aws.amazon.com/AmazonS3/latest/dev/RequesterPaysBuckets.html
      # @option params [required, String] :bucket
      # @option params [String] :content_md5
      # @option params [required, Types::RequestPaymentConfiguration] :request_payment_configuration
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.put_bucket_request_payment({
      #     bucket: "BucketName", # required
      #     content_md5: "ContentMD5",
      #     request_payment_configuration: { # required
      #       payer: "Requester", # required, accepts Requester, BucketOwner
      #     },
      #   })
      # @overload put_bucket_request_payment(params = {})
      # @param [Hash] params ({})
      def put_bucket_request_payment(params = {}, options = {})
        req = build_request(:put_bucket_request_payment, params)
        req.send_request(options)
      end

      # Sets the tags for a bucket.
      # @option params [required, String] :bucket
      # @option params [String] :content_md5
      # @option params [required, Types::Tagging] :tagging
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.put_bucket_tagging({
      #     bucket: "BucketName", # required
      #     content_md5: "ContentMD5",
      #     tagging: { # required
      #       tag_set: [ # required
      #         {
      #           key: "ObjectKey", # required
      #           value: "Value", # required
      #         },
      #       ],
      #     },
      #   })
      # @overload put_bucket_tagging(params = {})
      # @param [Hash] params ({})
      def put_bucket_tagging(params = {}, options = {})
        req = build_request(:put_bucket_tagging, params)
        req.send_request(options)
      end

      # Sets the versioning state of an existing bucket. To set the versioning
      # state, you must be the bucket owner.
      # @option params [required, String] :bucket
      # @option params [String] :content_md5
      # @option params [String] :mfa
      #   The concatenation of the authentication device's serial number, a
      #   space, and the value that is displayed on your authentication device.
      # @option params [required, Types::VersioningConfiguration] :versioning_configuration
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.put_bucket_versioning({
      #     bucket: "BucketName", # required
      #     content_md5: "ContentMD5",
      #     mfa: "MFA",
      #     versioning_configuration: { # required
      #       mfa_delete: "Enabled", # accepts Enabled, Disabled
      #       status: "Enabled", # accepts Enabled, Suspended
      #     },
      #   })
      # @overload put_bucket_versioning(params = {})
      # @param [Hash] params ({})
      def put_bucket_versioning(params = {}, options = {})
        req = build_request(:put_bucket_versioning, params)
        req.send_request(options)
      end

      # Set the website configuration for a bucket.
      # @option params [required, String] :bucket
      # @option params [String] :content_md5
      # @option params [required, Types::WebsiteConfiguration] :website_configuration
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.put_bucket_website({
      #     bucket: "BucketName", # required
      #     content_md5: "ContentMD5",
      #     website_configuration: { # required
      #       error_document: {
      #         key: "ObjectKey", # required
      #       },
      #       index_document: {
      #         suffix: "Suffix", # required
      #       },
      #       redirect_all_requests_to: {
      #         host_name: "HostName", # required
      #         protocol: "http", # accepts http, https
      #       },
      #       routing_rules: [
      #         {
      #           condition: {
      #             http_error_code_returned_equals: "HttpErrorCodeReturnedEquals",
      #             key_prefix_equals: "KeyPrefixEquals",
      #           },
      #           redirect: { # required
      #             host_name: "HostName",
      #             http_redirect_code: "HttpRedirectCode",
      #             protocol: "http", # accepts http, https
      #             replace_key_prefix_with: "ReplaceKeyPrefixWith",
      #             replace_key_with: "ReplaceKeyWith",
      #           },
      #         },
      #       ],
      #     },
      #   })
      # @overload put_bucket_website(params = {})
      # @param [Hash] params ({})
      def put_bucket_website(params = {}, options = {})
        req = build_request(:put_bucket_website, params)
        req.send_request(options)
      end

      # Adds an object to a bucket.
      # @option params [String] :acl
      #   The canned ACL to apply to the object.
      # @option params [String, IO] :body
      #   Object data.
      # @option params [required, String] :bucket
      #   Name of the bucket to which the PUT operation was initiated.
      # @option params [String] :cache_control
      #   Specifies caching behavior along the request/reply chain.
      # @option params [String] :content_disposition
      #   Specifies presentational information for the object.
      # @option params [String] :content_encoding
      #   Specifies what content encodings have been applied to the object and
      #   thus what decoding mechanisms must be applied to obtain the media-type
      #   referenced by the Content-Type header field.
      # @option params [String] :content_language
      #   The language the content is in.
      # @option params [Integer] :content_length
      #   Size of the body in bytes. This parameter is useful when the size of
      #   the body cannot be determined automatically.
      # @option params [String] :content_md5
      #   The base64-encoded 128-bit MD5 digest of the part data.
      # @option params [String] :content_type
      #   A standard MIME type describing the format of the object data.
      # @option params [Time,DateTime,Date,Integer,String] :expires
      #   The date and time at which the object is no longer cacheable.
      # @option params [String] :grant_full_control
      #   Gives the grantee READ, READ\_ACP, and WRITE\_ACP permissions on the
      #   object.
      # @option params [String] :grant_read
      #   Allows grantee to read the object data and its metadata.
      # @option params [String] :grant_read_acp
      #   Allows grantee to read the object ACL.
      # @option params [String] :grant_write_acp
      #   Allows grantee to write the ACL for the applicable object.
      # @option params [required, String] :key
      #   Object key for which the PUT operation was initiated.
      # @option params [Hash<String,String>] :metadata
      #   A map of metadata to store with the object in S3.
      # @option params [String] :server_side_encryption
      #   The Server-side encryption algorithm used when storing this object in
      #   S3 (e.g., AES256, aws:kms).
      # @option params [String] :storage_class
      #   The type of storage to use for the object. Defaults to 'STANDARD'.
      # @option params [String] :website_redirect_location
      #   If the bucket is configured as a website, redirects requests for this
      #   object to another object in the same bucket or to an external URL.
      #   Amazon S3 stores the value of this header in the object metadata.
      # @option params [String] :sse_customer_algorithm
      #   Specifies the algorithm to use to when encrypting the object (e.g.,
      #   AES256).
      # @option params [String] :sse_customer_key
      #   Specifies the customer-provided encryption key for Amazon S3 to use in
      #   encrypting data. This value is used to store the object and then it is
      #   discarded; Amazon does not store the encryption key. The key must be
      #   appropriate for use with the algorithm specified in the
      #   x-amz-server-side​-encryption​-customer-algorithm header.
      # @option params [String] :sse_customer_key_md5
      #   Specifies the 128-bit MD5 digest of the encryption key according to
      #   RFC 1321. Amazon S3 uses this header for a message integrity check to
      #   ensure the encryption key was transmitted without error.
      # @option params [String] :ssekms_key_id
      #   Specifies the AWS KMS key ID to use for object encryption. All GET and
      #   PUT requests for an object protected by AWS KMS will fail if not made
      #   via SSL or using SigV4. Documentation on configuring any of the
      #   officially supported AWS SDKs and CLI can be found at
      #   http://docs.aws.amazon.com/AmazonS3/latest/dev/UsingAWSSDK.html#specify-signature-version
      # @option params [String] :request_payer
      #   Confirms that the requester knows that she or he will be charged for
      #   the request. Bucket owners need not specify this parameter in their
      #   requests. Documentation on downloading objects from requester pays
      #   buckets can be found at
      #   http://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html
      # @return [Types::PutObjectOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::PutObjectOutput#expiration #Expiration} => String
      #   * {Types::PutObjectOutput#etag #ETag} => String
      #   * {Types::PutObjectOutput#server_side_encryption #ServerSideEncryption} => String
      #   * {Types::PutObjectOutput#version_id #VersionId} => String
      #   * {Types::PutObjectOutput#sse_customer_algorithm #SSECustomerAlgorithm} => String
      #   * {Types::PutObjectOutput#sse_customer_key_md5 #SSECustomerKeyMD5} => String
      #   * {Types::PutObjectOutput#ssekms_key_id #SSEKMSKeyId} => String
      #   * {Types::PutObjectOutput#request_charged #RequestCharged} => String
      #
      # @example Streaming a file from disk
      #   # upload file from disk in a single request, may not exceed 5GB
      #   File.open('/source/file/path', 'rb') do |file|
      #     s3.put_object(bucket: 'bucket-name', key: 'object-key', body: file)
      #   end
      #
      # @example Request syntax with placeholder values
      #   resp = client.put_object({
      #     acl: "private", # accepts private, public-read, public-read-write, authenticated-read, aws-exec-read, bucket-owner-read, bucket-owner-full-control
      #     body: source_file,
      #     bucket: "BucketName", # required
      #     cache_control: "CacheControl",
      #     content_disposition: "ContentDisposition",
      #     content_encoding: "ContentEncoding",
      #     content_language: "ContentLanguage",
      #     content_length: 1,
      #     content_md5: "ContentMD5",
      #     content_type: "ContentType",
      #     expires: Time.now,
      #     grant_full_control: "GrantFullControl",
      #     grant_read: "GrantRead",
      #     grant_read_acp: "GrantReadACP",
      #     grant_write_acp: "GrantWriteACP",
      #     key: "ObjectKey", # required
      #     metadata: {
      #       "MetadataKey" => "MetadataValue",
      #     },
      #     server_side_encryption: "AES256", # accepts AES256, aws:kms
      #     storage_class: "STANDARD", # accepts STANDARD, REDUCED_REDUNDANCY, STANDARD_IA
      #     website_redirect_location: "WebsiteRedirectLocation",
      #     sse_customer_algorithm: "SSECustomerAlgorithm",
      #     sse_customer_key: "SSECustomerKey",
      #     sse_customer_key_md5: "SSECustomerKeyMD5",
      #     ssekms_key_id: "SSEKMSKeyId",
      #     request_payer: "requester", # accepts requester
      #   })
      #
      # @example Response structure
      #   resp.expiration #=> String
      #   resp.etag #=> String
      #   resp.server_side_encryption #=> String, one of "AES256", "aws:kms"
      #   resp.version_id #=> String
      #   resp.sse_customer_algorithm #=> String
      #   resp.sse_customer_key_md5 #=> String
      #   resp.ssekms_key_id #=> String
      #   resp.request_charged #=> String, one of "requester"
      # @overload put_object(params = {})
      # @param [Hash] params ({})
      def put_object(params = {}, options = {})
        req = build_request(:put_object, params)
        req.send_request(options)
      end

      # uses the acl subresource to set the access control list (ACL)
      # permissions for an object that already exists in a bucket
      # @option params [String] :acl
      #   The canned ACL to apply to the object.
      # @option params [Types::AccessControlPolicy] :access_control_policy
      # @option params [required, String] :bucket
      # @option params [String] :content_md5
      # @option params [String] :grant_full_control
      #   Allows grantee the read, write, read ACP, and write ACP permissions on
      #   the bucket.
      # @option params [String] :grant_read
      #   Allows grantee to list the objects in the bucket.
      # @option params [String] :grant_read_acp
      #   Allows grantee to read the bucket ACL.
      # @option params [String] :grant_write
      #   Allows grantee to create, overwrite, and delete any object in the
      #   bucket.
      # @option params [String] :grant_write_acp
      #   Allows grantee to write the ACL for the applicable bucket.
      # @option params [required, String] :key
      # @option params [String] :request_payer
      #   Confirms that the requester knows that she or he will be charged for
      #   the request. Bucket owners need not specify this parameter in their
      #   requests. Documentation on downloading objects from requester pays
      #   buckets can be found at
      #   http://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html
      # @option params [String] :version_id
      #   VersionId used to reference a specific version of the object.
      # @return [Types::PutObjectAclOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::PutObjectAclOutput#request_charged #RequestCharged} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.put_object_acl({
      #     acl: "private", # accepts private, public-read, public-read-write, authenticated-read, aws-exec-read, bucket-owner-read, bucket-owner-full-control
      #     access_control_policy: {
      #       grants: [
      #         {
      #           grantee: {
      #             display_name: "DisplayName",
      #             email_address: "EmailAddress",
      #             id: "ID",
      #             type: "CanonicalUser", # required, accepts CanonicalUser, AmazonCustomerByEmail, Group
      #             uri: "URI",
      #           },
      #           permission: "FULL_CONTROL", # accepts FULL_CONTROL, WRITE, WRITE_ACP, READ, READ_ACP
      #         },
      #       ],
      #       owner: {
      #         display_name: "DisplayName",
      #         id: "ID",
      #       },
      #     },
      #     bucket: "BucketName", # required
      #     content_md5: "ContentMD5",
      #     grant_full_control: "GrantFullControl",
      #     grant_read: "GrantRead",
      #     grant_read_acp: "GrantReadACP",
      #     grant_write: "GrantWrite",
      #     grant_write_acp: "GrantWriteACP",
      #     key: "ObjectKey", # required
      #     request_payer: "requester", # accepts requester
      #     version_id: "ObjectVersionId",
      #   })
      #
      # @example Response structure
      #   resp.request_charged #=> String, one of "requester"
      # @overload put_object_acl(params = {})
      # @param [Hash] params ({})
      def put_object_acl(params = {}, options = {})
        req = build_request(:put_object_acl, params)
        req.send_request(options)
      end

      # Restores an archived copy of an object back into Amazon S3
      # @option params [required, String] :bucket
      # @option params [required, String] :key
      # @option params [String] :version_id
      # @option params [Types::RestoreRequest] :restore_request
      # @option params [String] :request_payer
      #   Confirms that the requester knows that she or he will be charged for
      #   the request. Bucket owners need not specify this parameter in their
      #   requests. Documentation on downloading objects from requester pays
      #   buckets can be found at
      #   http://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html
      # @return [Types::RestoreObjectOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::RestoreObjectOutput#request_charged #RequestCharged} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.restore_object({
      #     bucket: "BucketName", # required
      #     key: "ObjectKey", # required
      #     version_id: "ObjectVersionId",
      #     restore_request: {
      #       days: 1, # required
      #     },
      #     request_payer: "requester", # accepts requester
      #   })
      #
      # @example Response structure
      #   resp.request_charged #=> String, one of "requester"
      # @overload restore_object(params = {})
      # @param [Hash] params ({})
      def restore_object(params = {}, options = {})
        req = build_request(:restore_object, params)
        req.send_request(options)
      end

      # Uploads a part in a multipart upload.
      #
      # **Note:** After you initiate multipart upload and upload one or more
      # parts, you must either complete or abort multipart upload in order to
      # stop getting charged for storage of the uploaded parts. Only after you
      # either complete or abort multipart upload, Amazon S3 frees up the
      # parts storage and stops charging you for the parts storage.
      # @option params [String, IO] :body
      #   Object data.
      # @option params [required, String] :bucket
      #   Name of the bucket to which the multipart upload was initiated.
      # @option params [Integer] :content_length
      #   Size of the body in bytes. This parameter is useful when the size of
      #   the body cannot be determined automatically.
      # @option params [String] :content_md5
      #   The base64-encoded 128-bit MD5 digest of the part data.
      # @option params [required, String] :key
      #   Object key for which the multipart upload was initiated.
      # @option params [required, Integer] :part_number
      #   Part number of part being uploaded. This is a positive integer between
      #   1 and 10,000.
      # @option params [required, String] :upload_id
      #   Upload ID identifying the multipart upload whose part is being
      #   uploaded.
      # @option params [String] :sse_customer_algorithm
      #   Specifies the algorithm to use to when encrypting the object (e.g.,
      #   AES256).
      # @option params [String] :sse_customer_key
      #   Specifies the customer-provided encryption key for Amazon S3 to use in
      #   encrypting data. This value is used to store the object and then it is
      #   discarded; Amazon does not store the encryption key. The key must be
      #   appropriate for use with the algorithm specified in the
      #   x-amz-server-side​-encryption​-customer-algorithm header. This must be
      #   the same encryption key specified in the initiate multipart upload
      #   request.
      # @option params [String] :sse_customer_key_md5
      #   Specifies the 128-bit MD5 digest of the encryption key according to
      #   RFC 1321. Amazon S3 uses this header for a message integrity check to
      #   ensure the encryption key was transmitted without error.
      # @option params [String] :request_payer
      #   Confirms that the requester knows that she or he will be charged for
      #   the request. Bucket owners need not specify this parameter in their
      #   requests. Documentation on downloading objects from requester pays
      #   buckets can be found at
      #   http://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html
      # @return [Types::UploadPartOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::UploadPartOutput#server_side_encryption #ServerSideEncryption} => String
      #   * {Types::UploadPartOutput#etag #ETag} => String
      #   * {Types::UploadPartOutput#sse_customer_algorithm #SSECustomerAlgorithm} => String
      #   * {Types::UploadPartOutput#sse_customer_key_md5 #SSECustomerKeyMD5} => String
      #   * {Types::UploadPartOutput#ssekms_key_id #SSEKMSKeyId} => String
      #   * {Types::UploadPartOutput#request_charged #RequestCharged} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.upload_part({
      #     body: source_file,
      #     bucket: "BucketName", # required
      #     content_length: 1,
      #     content_md5: "ContentMD5",
      #     key: "ObjectKey", # required
      #     part_number: 1, # required
      #     upload_id: "MultipartUploadId", # required
      #     sse_customer_algorithm: "SSECustomerAlgorithm",
      #     sse_customer_key: "SSECustomerKey",
      #     sse_customer_key_md5: "SSECustomerKeyMD5",
      #     request_payer: "requester", # accepts requester
      #   })
      #
      # @example Response structure
      #   resp.server_side_encryption #=> String, one of "AES256", "aws:kms"
      #   resp.etag #=> String
      #   resp.sse_customer_algorithm #=> String
      #   resp.sse_customer_key_md5 #=> String
      #   resp.ssekms_key_id #=> String
      #   resp.request_charged #=> String, one of "requester"
      # @overload upload_part(params = {})
      # @param [Hash] params ({})
      def upload_part(params = {}, options = {})
        req = build_request(:upload_part, params)
        req.send_request(options)
      end

      # Uploads a part by copying data from an existing object as data source.
      # @option params [required, String] :bucket
      # @option params [required, String] :copy_source
      #   The name of the source bucket and key name of the source object,
      #   separated by a slash (/). Must be URL-encoded.
      # @option params [String] :copy_source_if_match
      #   Copies the object if its entity tag (ETag) matches the specified tag.
      # @option params [Time,DateTime,Date,Integer,String] :copy_source_if_modified_since
      #   Copies the object if it has been modified since the specified time.
      # @option params [String] :copy_source_if_none_match
      #   Copies the object if its entity tag (ETag) is different than the
      #   specified ETag.
      # @option params [Time,DateTime,Date,Integer,String] :copy_source_if_unmodified_since
      #   Copies the object if it hasn't been modified since the specified
      #   time.
      # @option params [String] :copy_source_range
      #   The range of bytes to copy from the source object. The range value
      #   must use the form bytes=first-last, where the first and last are the
      #   zero-based byte offsets to copy. For example, bytes=0-9 indicates that
      #   you want to copy the first ten bytes of the source. You can copy a
      #   range only if the source object is greater than 5 GB.
      # @option params [required, String] :key
      # @option params [required, Integer] :part_number
      #   Part number of part being copied. This is a positive integer between 1
      #   and 10,000.
      # @option params [required, String] :upload_id
      #   Upload ID identifying the multipart upload whose part is being copied.
      # @option params [String] :sse_customer_algorithm
      #   Specifies the algorithm to use to when encrypting the object (e.g.,
      #   AES256).
      # @option params [String] :sse_customer_key
      #   Specifies the customer-provided encryption key for Amazon S3 to use in
      #   encrypting data. This value is used to store the object and then it is
      #   discarded; Amazon does not store the encryption key. The key must be
      #   appropriate for use with the algorithm specified in the
      #   x-amz-server-side​-encryption​-customer-algorithm header. This must be
      #   the same encryption key specified in the initiate multipart upload
      #   request.
      # @option params [String] :sse_customer_key_md5
      #   Specifies the 128-bit MD5 digest of the encryption key according to
      #   RFC 1321. Amazon S3 uses this header for a message integrity check to
      #   ensure the encryption key was transmitted without error.
      # @option params [String] :copy_source_sse_customer_algorithm
      #   Specifies the algorithm to use when decrypting the source object
      #   (e.g., AES256).
      # @option params [String] :copy_source_sse_customer_key
      #   Specifies the customer-provided encryption key for Amazon S3 to use to
      #   decrypt the source object. The encryption key provided in this header
      #   must be one that was used when the source object was created.
      # @option params [String] :copy_source_sse_customer_key_md5
      #   Specifies the 128-bit MD5 digest of the encryption key according to
      #   RFC 1321. Amazon S3 uses this header for a message integrity check to
      #   ensure the encryption key was transmitted without error.
      # @option params [String] :request_payer
      #   Confirms that the requester knows that she or he will be charged for
      #   the request. Bucket owners need not specify this parameter in their
      #   requests. Documentation on downloading objects from requester pays
      #   buckets can be found at
      #   http://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html
      # @return [Types::UploadPartCopyOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::UploadPartCopyOutput#copy_source_version_id #CopySourceVersionId} => String
      #   * {Types::UploadPartCopyOutput#copy_part_result #CopyPartResult} => Types::CopyPartResult
      #   * {Types::UploadPartCopyOutput#server_side_encryption #ServerSideEncryption} => String
      #   * {Types::UploadPartCopyOutput#sse_customer_algorithm #SSECustomerAlgorithm} => String
      #   * {Types::UploadPartCopyOutput#sse_customer_key_md5 #SSECustomerKeyMD5} => String
      #   * {Types::UploadPartCopyOutput#ssekms_key_id #SSEKMSKeyId} => String
      #   * {Types::UploadPartCopyOutput#request_charged #RequestCharged} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.upload_part_copy({
      #     bucket: "BucketName", # required
      #     copy_source: "CopySource", # required
      #     copy_source_if_match: "CopySourceIfMatch",
      #     copy_source_if_modified_since: Time.now,
      #     copy_source_if_none_match: "CopySourceIfNoneMatch",
      #     copy_source_if_unmodified_since: Time.now,
      #     copy_source_range: "CopySourceRange",
      #     key: "ObjectKey", # required
      #     part_number: 1, # required
      #     upload_id: "MultipartUploadId", # required
      #     sse_customer_algorithm: "SSECustomerAlgorithm",
      #     sse_customer_key: "SSECustomerKey",
      #     sse_customer_key_md5: "SSECustomerKeyMD5",
      #     copy_source_sse_customer_algorithm: "CopySourceSSECustomerAlgorithm",
      #     copy_source_sse_customer_key: "CopySourceSSECustomerKey",
      #     copy_source_sse_customer_key_md5: "CopySourceSSECustomerKeyMD5",
      #     request_payer: "requester", # accepts requester
      #   })
      #
      # @example Response structure
      #   resp.copy_source_version_id #=> String
      #   resp.copy_part_result.etag #=> String
      #   resp.copy_part_result.last_modified #=> Time
      #   resp.server_side_encryption #=> String, one of "AES256", "aws:kms"
      #   resp.sse_customer_algorithm #=> String
      #   resp.sse_customer_key_md5 #=> String
      #   resp.ssekms_key_id #=> String
      #   resp.request_charged #=> String, one of "requester"
      # @overload upload_part_copy(params = {})
      # @param [Hash] params ({})
      def upload_part_copy(params = {}, options = {})
        req = build_request(:upload_part_copy, params)
        req.send_request(options)
      end

      # @!endgroup

      # @param [Symbol] waiter_name
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      # @option options [Integer] :max_attempts
      # @option options [Integer] :delay
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def wait_until(waiter_name, params = {}, options = {})
        w = waiter(waiter_name, options)
        yield(w.waiter) if block_given? # deprecated
        w.wait(params)
      end

      def waiter_names
        waiters.keys
      end

      private

      # @param [Symbol] waiter_name
      # @param [Hash] options ({})
      def waiter(waiter_name, options = {})
        waiter_class = waiters[waiter_name]
        if waiter_class
          waiter_class.new(options.merge(client: self))
        else
          raise Aws::Waiters::Errors::NoSuchWaiterError.new(waiter_name, waiters.keys)
        end
      end

      def waiters
        {
          bucket_exists: Waiters::BucketExists,
          bucket_not_exists: Waiters::BucketNotExists,
          object_exists: Waiters::ObjectExists,
          object_not_exists: Waiters::ObjectNotExists
        }
      end

      # @api private
      class << self

        # @api private
        attr_reader :identifier

        def errors_module
          Errors
        end

      end
    end
  end
end
