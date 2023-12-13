# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::S3

  class Bucket

    extend Aws::Deprecations

    # @overload def initialize(name, options = {})
    #   @param [String] name
    #   @option options [Client] :client
    # @overload def initialize(options = {})
    #   @option options [required, String] :name
    #   @option options [Client] :client
    def initialize(*args)
      options = Hash === args.last ? args.pop.dup : {}
      @name = extract_name(args, options)
      @data = options.delete(:data)
      @client = options.delete(:client) || Client.new(options)
      @waiter_block_warned = false
    end

    # @!group Read-Only Attributes

    # @return [String]
    def name
      @name
    end

    # Date the bucket was created. This date can change when making changes
    # to your bucket, such as editing its bucket policy.
    # @return [Time]
    def creation_date
      data[:creation_date]
    end

    # @!endgroup

    # @return [Client]
    def client
      @client
    end

    # @raise [NotImplementedError]
    # @api private
    def load
      msg = "#load is not implemented, data only available via enumeration"
      raise NotImplementedError, msg
    end
    alias :reload :load

    # @raise [NotImplementedError] Raises when {#data_loaded?} is `false`.
    # @return [Types::Bucket]
    #   Returns the data for this {Bucket}.
    def data
      load unless @data
      @data
    end

    # @return [Boolean]
    #   Returns `true` if this resource is loaded.  Accessing attributes or
    #   {#data} on an unloaded resource will trigger a call to {#load}.
    def data_loaded?
      !!@data
    end

    # @param [Hash] options ({})
    # @return [Boolean]
    #   Returns `true` if the Bucket exists.
    def exists?(options = {})
      begin
        wait_until_exists(options.merge(max_attempts: 1))
        true
      rescue Aws::Waiters::Errors::UnexpectedError => e
        raise e.error
      rescue Aws::Waiters::Errors::WaiterFailed
        false
      end
    end

    # @param [Hash] options ({})
    # @option options [Integer] :max_attempts (20)
    # @option options [Float] :delay (5)
    # @option options [Proc] :before_attempt
    # @option options [Proc] :before_wait
    # @return [Bucket]
    def wait_until_exists(options = {}, &block)
      options, params = separate_params_and_options(options)
      waiter = Waiters::BucketExists.new(options)
      yield_waiter_and_warn(waiter, &block) if block_given?
      Aws::Plugins::UserAgent.feature('resource') do
        waiter.wait(params.merge(bucket: @name))
      end
      Bucket.new({
        name: @name,
        client: @client
      })
    end

    # @param [Hash] options ({})
    # @option options [Integer] :max_attempts (20)
    # @option options [Float] :delay (5)
    # @option options [Proc] :before_attempt
    # @option options [Proc] :before_wait
    # @return [Bucket]
    def wait_until_not_exists(options = {}, &block)
      options, params = separate_params_and_options(options)
      waiter = Waiters::BucketNotExists.new(options)
      yield_waiter_and_warn(waiter, &block) if block_given?
      Aws::Plugins::UserAgent.feature('resource') do
        waiter.wait(params.merge(bucket: @name))
      end
      Bucket.new({
        name: @name,
        client: @client
      })
    end

    # @deprecated Use [Aws::S3::Client] #wait_until instead
    #
    # Waiter polls an API operation until a resource enters a desired
    # state.
    #
    # @note The waiting operation is performed on a copy. The original resource
    #   remains unchanged.
    #
    # ## Basic Usage
    #
    # Waiter will polls until it is successful, it fails by
    # entering a terminal state, or until a maximum number of attempts
    # are made.
    #
    #     # polls in a loop until condition is true
    #     resource.wait_until(options) {|resource| condition}
    #
    # ## Example
    #
    #     instance.wait_until(max_attempts:10, delay:5) do |instance|
    #       instance.state.name == 'running'
    #     end
    #
    # ## Configuration
    #
    # You can configure the maximum number of polling attempts, and the
    # delay (in seconds) between each polling attempt. The waiting condition is
    # set by passing a block to {#wait_until}:
    #
    #     # poll for ~25 seconds
    #     resource.wait_until(max_attempts:5,delay:5) {|resource|...}
    #
    # ## Callbacks
    #
    # You can be notified before each polling attempt and before each
    # delay. If you throw `:success` or `:failure` from these callbacks,
    # it will terminate the waiter.
    #
    #     started_at = Time.now
    #     # poll for 1 hour, instead of a number of attempts
    #     proc = Proc.new do |attempts, response|
    #       throw :failure if Time.now - started_at > 3600
    #     end
    #
    #       # disable max attempts
    #     instance.wait_until(before_wait:proc, max_attempts:nil) {...}
    #
    # ## Handling Errors
    #
    # When a waiter is successful, it returns the Resource. When a waiter
    # fails, it raises an error.
    #
    #     begin
    #       resource.wait_until(...)
    #     rescue Aws::Waiters::Errors::WaiterFailed
    #       # resource did not enter the desired state in time
    #     end
    #
    # @yieldparam [Resource] resource to be used in the waiting condition.
    #
    # @raise [Aws::Waiters::Errors::FailureStateError] Raised when the waiter
    #   terminates because the waiter has entered a state that it will not
    #   transition out of, preventing success.
    #
    #   yet successful.
    #
    # @raise [Aws::Waiters::Errors::UnexpectedError] Raised when an error is
    #   encountered while polling for a resource that is not expected.
    #
    # @raise [NotImplementedError] Raised when the resource does not
    #
    # @option options [Integer] :max_attempts (10) Maximum number of
    # attempts
    # @option options [Integer] :delay (10) Delay between each
    # attempt in seconds
    # @option options [Proc] :before_attempt (nil) Callback
    # invoked before each attempt
    # @option options [Proc] :before_wait (nil) Callback
    # invoked before each wait
    # @return [Resource] if the waiter was successful
    def wait_until(options = {}, &block)
      self_copy = self.dup
      attempts = 0
      options[:max_attempts] = 10 unless options.key?(:max_attempts)
      options[:delay] ||= 10
      options[:poller] = Proc.new do
        attempts += 1
        if block.call(self_copy)
          [:success, self_copy]
        else
          self_copy.reload unless attempts == options[:max_attempts]
          :retry
        end
      end
      Aws::Plugins::UserAgent.feature('resource') do
        Aws::Waiters::Waiter.new(options).wait({})
      end
    end

    # @!group Actions

    # @example Request syntax with placeholder values
    #
    #   bucket.create({
    #     acl: "private", # accepts private, public-read, public-read-write, authenticated-read
    #     create_bucket_configuration: {
    #       location_constraint: "af-south-1", # accepts af-south-1, ap-east-1, ap-northeast-1, ap-northeast-2, ap-northeast-3, ap-south-1, ap-south-2, ap-southeast-1, ap-southeast-2, ap-southeast-3, ca-central-1, cn-north-1, cn-northwest-1, EU, eu-central-1, eu-north-1, eu-south-1, eu-south-2, eu-west-1, eu-west-2, eu-west-3, me-south-1, sa-east-1, us-east-2, us-gov-east-1, us-gov-west-1, us-west-1, us-west-2
    #       location: {
    #         type: "AvailabilityZone", # accepts AvailabilityZone
    #         name: "LocationNameAsString",
    #       },
    #       bucket: {
    #         data_redundancy: "SingleAvailabilityZone", # accepts SingleAvailabilityZone
    #         type: "Directory", # accepts Directory
    #       },
    #     },
    #     grant_full_control: "GrantFullControl",
    #     grant_read: "GrantRead",
    #     grant_read_acp: "GrantReadACP",
    #     grant_write: "GrantWrite",
    #     grant_write_acp: "GrantWriteACP",
    #     object_lock_enabled_for_bucket: false,
    #     object_ownership: "BucketOwnerPreferred", # accepts BucketOwnerPreferred, ObjectWriter, BucketOwnerEnforced
    #   })
    # @param [Hash] options ({})
    # @option options [String] :acl
    #   The canned ACL to apply to the bucket.
    #
    #   <note markdown="1"> This functionality is not supported for directory buckets.
    #
    #    </note>
    # @option options [Types::CreateBucketConfiguration] :create_bucket_configuration
    #   The configuration information for the bucket.
    # @option options [String] :grant_full_control
    #   Allows grantee the read, write, read ACP, and write ACP permissions on
    #   the bucket.
    #
    #   <note markdown="1"> This functionality is not supported for directory buckets.
    #
    #    </note>
    # @option options [String] :grant_read
    #   Allows grantee to list the objects in the bucket.
    #
    #   <note markdown="1"> This functionality is not supported for directory buckets.
    #
    #    </note>
    # @option options [String] :grant_read_acp
    #   Allows grantee to read the bucket ACL.
    #
    #   <note markdown="1"> This functionality is not supported for directory buckets.
    #
    #    </note>
    # @option options [String] :grant_write
    #   Allows grantee to create new objects in the bucket.
    #
    #   For the bucket and object owners of existing objects, also allows
    #   deletions and overwrites of those objects.
    #
    #   <note markdown="1"> This functionality is not supported for directory buckets.
    #
    #    </note>
    # @option options [String] :grant_write_acp
    #   Allows grantee to write the ACL for the applicable bucket.
    #
    #   <note markdown="1"> This functionality is not supported for directory buckets.
    #
    #    </note>
    # @option options [Boolean] :object_lock_enabled_for_bucket
    #   Specifies whether you want S3 Object Lock to be enabled for the new
    #   bucket.
    #
    #   <note markdown="1"> This functionality is not supported for directory buckets.
    #
    #    </note>
    # @option options [String] :object_ownership
    #   The container element for object ownership for a bucket's ownership
    #   controls.
    #
    #   `BucketOwnerPreferred` - Objects uploaded to the bucket change
    #   ownership to the bucket owner if the objects are uploaded with the
    #   `bucket-owner-full-control` canned ACL.
    #
    #   `ObjectWriter` - The uploading account will own the object if the
    #   object is uploaded with the `bucket-owner-full-control` canned ACL.
    #
    #   `BucketOwnerEnforced` - Access control lists (ACLs) are disabled and
    #   no longer affect permissions. The bucket owner automatically owns and
    #   has full control over every object in the bucket. The bucket only
    #   accepts PUT requests that don't specify an ACL or specify bucket
    #   owner full control ACLs (such as the predefined
    #   `bucket-owner-full-control` canned ACL or a custom ACL in XML format
    #   that grants the same permissions).
    #
    #   By default, `ObjectOwnership` is set to `BucketOwnerEnforced` and ACLs
    #   are disabled. We recommend keeping ACLs disabled, except in uncommon
    #   use cases where you must control access for each object individually.
    #   For more information about S3 Object Ownership, see [Controlling
    #   ownership of objects and disabling ACLs for your bucket][1] in the
    #   *Amazon S3 User Guide*.
    #
    #   <note markdown="1"> This functionality is not supported for directory buckets. Directory
    #   buckets use the bucket owner enforced setting for S3 Object Ownership.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/about-object-ownership.html
    # @return [Types::CreateBucketOutput]
    def create(options = {})
      options = options.merge(bucket: @name)
      resp = Aws::Plugins::UserAgent.feature('resource') do
        @client.create_bucket(options)
      end
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   bucket.delete({
    #     expected_bucket_owner: "AccountId",
    #   })
    # @param [Hash] options ({})
    # @option options [String] :expected_bucket_owner
    #   The account ID of the expected bucket owner. If the account ID that
    #   you provide does not match the actual owner of the bucket, the request
    #   fails with the HTTP status code `403 Forbidden` (access denied).
    #
    #   <note markdown="1"> For directory buckets, this header is not supported in this API
    #   operation. If you specify this header, the request fails with the HTTP
    #   status code `501 Not Implemented`.
    #
    #    </note>
    # @return [EmptyStructure]
    def delete(options = {})
      options = options.merge(bucket: @name)
      resp = Aws::Plugins::UserAgent.feature('resource') do
        @client.delete_bucket(options)
      end
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   bucket.delete_objects({
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
    #     bypass_governance_retention: false,
    #     expected_bucket_owner: "AccountId",
    #     checksum_algorithm: "CRC32", # accepts CRC32, CRC32C, SHA1, SHA256
    #   })
    # @param [Hash] options ({})
    # @option options [required, Types::Delete] :delete
    #   Container for the request.
    # @option options [String] :mfa
    #   The concatenation of the authentication device's serial number, a
    #   space, and the value that is displayed on your authentication device.
    #   Required to permanently delete a versioned object if versioning is
    #   configured with MFA delete enabled.
    #
    #   When performing the `DeleteObjects` operation on an MFA delete enabled
    #   bucket, which attempts to delete the specified versioned objects, you
    #   must include an MFA token. If you don't provide an MFA token, the
    #   entire request will fail, even if there are non-versioned objects that
    #   you are trying to delete. If you provide an invalid token, whether
    #   there are versioned object keys in the request or not, the entire
    #   Multi-Object Delete request will fail. For information about MFA
    #   Delete, see [ MFA Delete][1] in the *Amazon S3 User Guide*.
    #
    #   <note markdown="1"> This functionality is not supported for directory buckets.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/Versioning.html#MultiFactorAuthenticationDelete
    # @option options [String] :request_payer
    #   Confirms that the requester knows that they will be charged for the
    #   request. Bucket owners need not specify this parameter in their
    #   requests. If either the source or destination S3 bucket has Requester
    #   Pays enabled, the requester will pay for corresponding charges to copy
    #   the object. For information about downloading objects from Requester
    #   Pays buckets, see [Downloading Objects in Requester Pays Buckets][1]
    #   in the *Amazon S3 User Guide*.
    #
    #   <note markdown="1"> This functionality is not supported for directory buckets.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html
    # @option options [Boolean] :bypass_governance_retention
    #   Specifies whether you want to delete this object even if it has a
    #   Governance-type Object Lock in place. To use this header, you must
    #   have the `s3:BypassGovernanceRetention` permission.
    #
    #   <note markdown="1"> This functionality is not supported for directory buckets.
    #
    #    </note>
    # @option options [String] :expected_bucket_owner
    #   The account ID of the expected bucket owner. If the account ID that
    #   you provide does not match the actual owner of the bucket, the request
    #   fails with the HTTP status code `403 Forbidden` (access denied).
    # @option options [String] :checksum_algorithm
    #   Indicates the algorithm used to create the checksum for the object
    #   when you use the SDK. This header will not provide any additional
    #   functionality if you don't use the SDK. When you send this header,
    #   there must be a corresponding `x-amz-checksum-algorithm ` or
    #   `x-amz-trailer` header sent. Otherwise, Amazon S3 fails the request
    #   with the HTTP status code `400 Bad Request`.
    #
    #   For the `x-amz-checksum-algorithm ` header, replace ` algorithm ` with
    #   the supported algorithm from the following list:
    #
    #   * CRC32
    #
    #   * CRC32C
    #
    #   * SHA1
    #
    #   * SHA256
    #
    #   For more information, see [Checking object integrity][1] in the
    #   *Amazon S3 User Guide*.
    #
    #   If the individual checksum value you provide through
    #   `x-amz-checksum-algorithm ` doesn't match the checksum algorithm you
    #   set through `x-amz-sdk-checksum-algorithm`, Amazon S3 ignores any
    #   provided `ChecksumAlgorithm` parameter and uses the checksum algorithm
    #   that matches the provided value in `x-amz-checksum-algorithm `.
    #
    #   If you provide an individual checksum, Amazon S3 ignores any provided
    #   `ChecksumAlgorithm` parameter.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html
    # @return [Types::DeleteObjectsOutput]
    def delete_objects(options = {})
      options = options.merge(bucket: @name)
      resp = Aws::Plugins::UserAgent.feature('resource') do
        @client.delete_objects(options)
      end
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   object = bucket.put_object({
    #     acl: "private", # accepts private, public-read, public-read-write, authenticated-read, aws-exec-read, bucket-owner-read, bucket-owner-full-control
    #     body: source_file,
    #     cache_control: "CacheControl",
    #     content_disposition: "ContentDisposition",
    #     content_encoding: "ContentEncoding",
    #     content_language: "ContentLanguage",
    #     content_length: 1,
    #     content_md5: "ContentMD5",
    #     content_type: "ContentType",
    #     checksum_algorithm: "CRC32", # accepts CRC32, CRC32C, SHA1, SHA256
    #     checksum_crc32: "ChecksumCRC32",
    #     checksum_crc32c: "ChecksumCRC32C",
    #     checksum_sha1: "ChecksumSHA1",
    #     checksum_sha256: "ChecksumSHA256",
    #     expires: Time.now,
    #     grant_full_control: "GrantFullControl",
    #     grant_read: "GrantRead",
    #     grant_read_acp: "GrantReadACP",
    #     grant_write_acp: "GrantWriteACP",
    #     key: "ObjectKey", # required
    #     metadata: {
    #       "MetadataKey" => "MetadataValue",
    #     },
    #     server_side_encryption: "AES256", # accepts AES256, aws:kms, aws:kms:dsse
    #     storage_class: "STANDARD", # accepts STANDARD, REDUCED_REDUNDANCY, STANDARD_IA, ONEZONE_IA, INTELLIGENT_TIERING, GLACIER, DEEP_ARCHIVE, OUTPOSTS, GLACIER_IR, SNOW, EXPRESS_ONEZONE
    #     website_redirect_location: "WebsiteRedirectLocation",
    #     sse_customer_algorithm: "SSECustomerAlgorithm",
    #     sse_customer_key: "SSECustomerKey",
    #     sse_customer_key_md5: "SSECustomerKeyMD5",
    #     ssekms_key_id: "SSEKMSKeyId",
    #     ssekms_encryption_context: "SSEKMSEncryptionContext",
    #     bucket_key_enabled: false,
    #     request_payer: "requester", # accepts requester
    #     tagging: "TaggingHeader",
    #     object_lock_mode: "GOVERNANCE", # accepts GOVERNANCE, COMPLIANCE
    #     object_lock_retain_until_date: Time.now,
    #     object_lock_legal_hold_status: "ON", # accepts ON, OFF
    #     expected_bucket_owner: "AccountId",
    #   })
    # @param [Hash] options ({})
    # @option options [String] :acl
    #   The canned ACL to apply to the object. For more information, see
    #   [Canned ACL][1] in the *Amazon S3 User Guide*.
    #
    #   When adding a new object, you can use headers to grant ACL-based
    #   permissions to individual Amazon Web Services accounts or to
    #   predefined groups defined by Amazon S3. These permissions are then
    #   added to the ACL on the object. By default, all objects are private.
    #   Only the owner has full access control. For more information, see
    #   [Access Control List (ACL) Overview][2] and [Managing ACLs Using the
    #   REST API][3] in the *Amazon S3 User Guide*.
    #
    #   If the bucket that you're uploading objects to uses the bucket owner
    #   enforced setting for S3 Object Ownership, ACLs are disabled and no
    #   longer affect permissions. Buckets that use this setting only accept
    #   PUT requests that don't specify an ACL or PUT requests that specify
    #   bucket owner full control ACLs, such as the
    #   `bucket-owner-full-control` canned ACL or an equivalent form of this
    #   ACL expressed in the XML format. PUT requests that contain other ACLs
    #   (for example, custom grants to certain Amazon Web Services accounts)
    #   fail and return a `400` error with the error code
    #   `AccessControlListNotSupported`. For more information, see [
    #   Controlling ownership of objects and disabling ACLs][4] in the *Amazon
    #   S3 User Guide*.
    #
    #   <note markdown="1"> * This functionality is not supported for directory buckets.
    #
    #   * This functionality is not supported for Amazon S3 on Outposts.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#CannedACL
    #   [2]: https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html
    #   [3]: https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-using-rest-api.html
    #   [4]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/about-object-ownership.html
    # @option options [String, StringIO, File] :body
    #   Object data.
    # @option options [String] :cache_control
    #   Can be used to specify caching behavior along the request/reply chain.
    #   For more information, see
    #   [http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9][1].
    #
    #
    #
    #   [1]: http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9
    # @option options [String] :content_disposition
    #   Specifies presentational information for the object. For more
    #   information, see
    #   [https://www.rfc-editor.org/rfc/rfc6266#section-4][1].
    #
    #
    #
    #   [1]: https://www.rfc-editor.org/rfc/rfc6266#section-4
    # @option options [String] :content_encoding
    #   Specifies what content encodings have been applied to the object and
    #   thus what decoding mechanisms must be applied to obtain the media-type
    #   referenced by the Content-Type header field. For more information, see
    #   [https://www.rfc-editor.org/rfc/rfc9110.html#field.content-encoding][1].
    #
    #
    #
    #   [1]: https://www.rfc-editor.org/rfc/rfc9110.html#field.content-encoding
    # @option options [String] :content_language
    #   The language the content is in.
    # @option options [Integer] :content_length
    #   Size of the body in bytes. This parameter is useful when the size of
    #   the body cannot be determined automatically. For more information, see
    #   [https://www.rfc-editor.org/rfc/rfc9110.html#name-content-length][1].
    #
    #
    #
    #   [1]: https://www.rfc-editor.org/rfc/rfc9110.html#name-content-length
    # @option options [String] :content_md5
    #   The base64-encoded 128-bit MD5 digest of the message (without the
    #   headers) according to RFC 1864. This header can be used as a message
    #   integrity check to verify that the data is the same data that was
    #   originally sent. Although it is optional, we recommend using the
    #   Content-MD5 mechanism as an end-to-end integrity check. For more
    #   information about REST request authentication, see [REST
    #   Authentication][1].
    #
    #   <note markdown="1"> The `Content-MD5` header is required for any request to upload an
    #   object with a retention period configured using Amazon S3 Object Lock.
    #   For more information about Amazon S3 Object Lock, see [Amazon S3
    #   Object Lock Overview][2] in the *Amazon S3 User Guide*.
    #
    #    </note>
    #
    #   <note markdown="1"> This functionality is not supported for directory buckets.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/RESTAuthentication.html
    #   [2]: https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock-overview.html
    # @option options [String] :content_type
    #   A standard MIME type describing the format of the contents. For more
    #   information, see
    #   [https://www.rfc-editor.org/rfc/rfc9110.html#name-content-type][1].
    #
    #
    #
    #   [1]: https://www.rfc-editor.org/rfc/rfc9110.html#name-content-type
    # @option options [String] :checksum_algorithm
    #   Indicates the algorithm used to create the checksum for the object
    #   when you use the SDK. This header will not provide any additional
    #   functionality if you don't use the SDK. When you send this header,
    #   there must be a corresponding `x-amz-checksum-algorithm ` or
    #   `x-amz-trailer` header sent. Otherwise, Amazon S3 fails the request
    #   with the HTTP status code `400 Bad Request`.
    #
    #   For the `x-amz-checksum-algorithm ` header, replace ` algorithm ` with
    #   the supported algorithm from the following list:
    #
    #   * CRC32
    #
    #   * CRC32C
    #
    #   * SHA1
    #
    #   * SHA256
    #
    #   For more information, see [Checking object integrity][1] in the
    #   *Amazon S3 User Guide*.
    #
    #   If the individual checksum value you provide through
    #   `x-amz-checksum-algorithm ` doesn't match the checksum algorithm you
    #   set through `x-amz-sdk-checksum-algorithm`, Amazon S3 ignores any
    #   provided `ChecksumAlgorithm` parameter and uses the checksum algorithm
    #   that matches the provided value in `x-amz-checksum-algorithm `.
    #
    #   <note markdown="1"> For directory buckets, when you use Amazon Web Services SDKs, `CRC32`
    #   is the default checksum algorithm that's used for performance.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html
    # @option options [String] :checksum_crc32
    #   This header can be used as a data integrity check to verify that the
    #   data received is the same data that was originally sent. This header
    #   specifies the base64-encoded, 32-bit CRC32 checksum of the object. For
    #   more information, see [Checking object integrity][1] in the *Amazon S3
    #   User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html
    # @option options [String] :checksum_crc32c
    #   This header can be used as a data integrity check to verify that the
    #   data received is the same data that was originally sent. This header
    #   specifies the base64-encoded, 32-bit CRC32C checksum of the object.
    #   For more information, see [Checking object integrity][1] in the
    #   *Amazon S3 User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html
    # @option options [String] :checksum_sha1
    #   This header can be used as a data integrity check to verify that the
    #   data received is the same data that was originally sent. This header
    #   specifies the base64-encoded, 160-bit SHA-1 digest of the object. For
    #   more information, see [Checking object integrity][1] in the *Amazon S3
    #   User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html
    # @option options [String] :checksum_sha256
    #   This header can be used as a data integrity check to verify that the
    #   data received is the same data that was originally sent. This header
    #   specifies the base64-encoded, 256-bit SHA-256 digest of the object.
    #   For more information, see [Checking object integrity][1] in the
    #   *Amazon S3 User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html
    # @option options [Time,DateTime,Date,Integer,String] :expires
    #   The date and time at which the object is no longer cacheable. For more
    #   information, see
    #   [https://www.rfc-editor.org/rfc/rfc7234#section-5.3][1].
    #
    #
    #
    #   [1]: https://www.rfc-editor.org/rfc/rfc7234#section-5.3
    # @option options [String] :grant_full_control
    #   Gives the grantee READ, READ\_ACP, and WRITE\_ACP permissions on the
    #   object.
    #
    #   <note markdown="1"> * This functionality is not supported for directory buckets.
    #
    #   * This functionality is not supported for Amazon S3 on Outposts.
    #
    #    </note>
    # @option options [String] :grant_read
    #   Allows grantee to read the object data and its metadata.
    #
    #   <note markdown="1"> * This functionality is not supported for directory buckets.
    #
    #   * This functionality is not supported for Amazon S3 on Outposts.
    #
    #    </note>
    # @option options [String] :grant_read_acp
    #   Allows grantee to read the object ACL.
    #
    #   <note markdown="1"> * This functionality is not supported for directory buckets.
    #
    #   * This functionality is not supported for Amazon S3 on Outposts.
    #
    #    </note>
    # @option options [String] :grant_write_acp
    #   Allows grantee to write the ACL for the applicable object.
    #
    #   <note markdown="1"> * This functionality is not supported for directory buckets.
    #
    #   * This functionality is not supported for Amazon S3 on Outposts.
    #
    #    </note>
    # @option options [required, String] :key
    #   Object key for which the PUT action was initiated.
    # @option options [Hash<String,String>] :metadata
    #   A map of metadata to store with the object in S3.
    # @option options [String] :server_side_encryption
    #   The server-side encryption algorithm that was used when you store this
    #   object in Amazon S3 (for example, `AES256`, `aws:kms`,
    #   `aws:kms:dsse`).
    #
    #   <b>General purpose buckets </b> - You have four mutually exclusive
    #   options to protect data using server-side encryption in Amazon S3,
    #   depending on how you choose to manage the encryption keys.
    #   Specifically, the encryption key options are Amazon S3 managed keys
    #   (SSE-S3), Amazon Web Services KMS keys (SSE-KMS or DSSE-KMS), and
    #   customer-provided keys (SSE-C). Amazon S3 encrypts data with
    #   server-side encryption by using Amazon S3 managed keys (SSE-S3) by
    #   default. You can optionally tell Amazon S3 to encrypt data at rest by
    #   using server-side encryption with other key options. For more
    #   information, see [Using Server-Side Encryption][1] in the *Amazon S3
    #   User Guide*.
    #
    #   <b>Directory buckets </b> - For directory buckets, only the
    #   server-side encryption with Amazon S3 managed keys (SSE-S3) (`AES256`)
    #   value is supported.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingServerSideEncryption.html
    # @option options [String] :storage_class
    #   By default, Amazon S3 uses the STANDARD Storage Class to store newly
    #   created objects. The STANDARD storage class provides high durability
    #   and high availability. Depending on performance needs, you can specify
    #   a different Storage Class. For more information, see [Storage
    #   Classes][1] in the *Amazon S3 User Guide*.
    #
    #   <note markdown="1"> * For directory buckets, only the S3 Express One Zone storage class is
    #     supported to store newly created objects.
    #
    #   * Amazon S3 on Outposts only uses the OUTPOSTS Storage Class.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-class-intro.html
    # @option options [String] :website_redirect_location
    #   If the bucket is configured as a website, redirects requests for this
    #   object to another object in the same bucket or to an external URL.
    #   Amazon S3 stores the value of this header in the object metadata. For
    #   information about object metadata, see [Object Key and Metadata][1] in
    #   the *Amazon S3 User Guide*.
    #
    #   In the following example, the request header sets the redirect to an
    #   object (anotherPage.html) in the same bucket:
    #
    #   `x-amz-website-redirect-location: /anotherPage.html`
    #
    #   In the following example, the request header sets the object redirect
    #   to another website:
    #
    #   `x-amz-website-redirect-location: http://www.example.com/`
    #
    #   For more information about website hosting in Amazon S3, see [Hosting
    #   Websites on Amazon S3][2] and [How to Configure Website Page
    #   Redirects][3] in the *Amazon S3 User Guide*.
    #
    #   <note markdown="1"> This functionality is not supported for directory buckets.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingMetadata.html
    #   [2]: https://docs.aws.amazon.com/AmazonS3/latest/dev/WebsiteHosting.html
    #   [3]: https://docs.aws.amazon.com/AmazonS3/latest/dev/how-to-page-redirect.html
    # @option options [String] :sse_customer_algorithm
    #   Specifies the algorithm to use when encrypting the object (for
    #   example, `AES256`).
    #
    #   <note markdown="1"> This functionality is not supported for directory buckets.
    #
    #    </note>
    # @option options [String] :sse_customer_key
    #   Specifies the customer-provided encryption key for Amazon S3 to use in
    #   encrypting data. This value is used to store the object and then it is
    #   discarded; Amazon S3 does not store the encryption key. The key must
    #   be appropriate for use with the algorithm specified in the
    #   `x-amz-server-side-encryption-customer-algorithm` header.
    #
    #   <note markdown="1"> This functionality is not supported for directory buckets.
    #
    #    </note>
    # @option options [String] :sse_customer_key_md5
    #   Specifies the 128-bit MD5 digest of the encryption key according to
    #   RFC 1321. Amazon S3 uses this header for a message integrity check to
    #   ensure that the encryption key was transmitted without error.
    #
    #   <note markdown="1"> This functionality is not supported for directory buckets.
    #
    #    </note>
    # @option options [String] :ssekms_key_id
    #   If `x-amz-server-side-encryption` has a valid value of `aws:kms` or
    #   `aws:kms:dsse`, this header specifies the ID (Key ID, Key ARN, or Key
    #   Alias) of the Key Management Service (KMS) symmetric encryption
    #   customer managed key that was used for the object. If you specify
    #   `x-amz-server-side-encryption:aws:kms` or
    #   `x-amz-server-side-encryption:aws:kms:dsse`, but do not provide`
    #   x-amz-server-side-encryption-aws-kms-key-id`, Amazon S3 uses the
    #   Amazon Web Services managed key (`aws/s3`) to protect the data. If the
    #   KMS key does not exist in the same account that's issuing the
    #   command, you must use the full ARN and not just the ID.
    #
    #   <note markdown="1"> This functionality is not supported for directory buckets.
    #
    #    </note>
    # @option options [String] :ssekms_encryption_context
    #   Specifies the Amazon Web Services KMS Encryption Context to use for
    #   object encryption. The value of this header is a base64-encoded UTF-8
    #   string holding JSON with the encryption context key-value pairs. This
    #   value is stored as object metadata and automatically gets passed on to
    #   Amazon Web Services KMS for future `GetObject` or `CopyObject`
    #   operations on this object. This value must be explicitly added during
    #   `CopyObject` operations.
    #
    #   <note markdown="1"> This functionality is not supported for directory buckets.
    #
    #    </note>
    # @option options [Boolean] :bucket_key_enabled
    #   Specifies whether Amazon S3 should use an S3 Bucket Key for object
    #   encryption with server-side encryption using Key Management Service
    #   (KMS) keys (SSE-KMS). Setting this header to `true` causes Amazon S3
    #   to use an S3 Bucket Key for object encryption with SSE-KMS.
    #
    #   Specifying this header with a PUT action doesn’t affect bucket-level
    #   settings for S3 Bucket Key.
    #
    #   <note markdown="1"> This functionality is not supported for directory buckets.
    #
    #    </note>
    # @option options [String] :request_payer
    #   Confirms that the requester knows that they will be charged for the
    #   request. Bucket owners need not specify this parameter in their
    #   requests. If either the source or destination S3 bucket has Requester
    #   Pays enabled, the requester will pay for corresponding charges to copy
    #   the object. For information about downloading objects from Requester
    #   Pays buckets, see [Downloading Objects in Requester Pays Buckets][1]
    #   in the *Amazon S3 User Guide*.
    #
    #   <note markdown="1"> This functionality is not supported for directory buckets.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html
    # @option options [String] :tagging
    #   The tag-set for the object. The tag-set must be encoded as URL Query
    #   parameters. (For example, "Key1=Value1")
    #
    #   <note markdown="1"> This functionality is not supported for directory buckets.
    #
    #    </note>
    # @option options [String] :object_lock_mode
    #   The Object Lock mode that you want to apply to this object.
    #
    #   <note markdown="1"> This functionality is not supported for directory buckets.
    #
    #    </note>
    # @option options [Time,DateTime,Date,Integer,String] :object_lock_retain_until_date
    #   The date and time when you want this object's Object Lock to expire.
    #   Must be formatted as a timestamp parameter.
    #
    #   <note markdown="1"> This functionality is not supported for directory buckets.
    #
    #    </note>
    # @option options [String] :object_lock_legal_hold_status
    #   Specifies whether a legal hold will be applied to this object. For
    #   more information about S3 Object Lock, see [Object Lock][1] in the
    #   *Amazon S3 User Guide*.
    #
    #   <note markdown="1"> This functionality is not supported for directory buckets.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock.html
    # @option options [String] :expected_bucket_owner
    #   The account ID of the expected bucket owner. If the account ID that
    #   you provide does not match the actual owner of the bucket, the request
    #   fails with the HTTP status code `403 Forbidden` (access denied).
    # @return [Object]
    def put_object(options = {})
      options = options.merge(bucket: @name)
      Aws::Plugins::UserAgent.feature('resource') do
        @client.put_object(options)
      end
      Object.new(
        bucket_name: @name,
        key: options[:key],
        client: @client
      )
    end

    # @!group Associations

    # @return [BucketAcl]
    def acl
      BucketAcl.new(
        bucket_name: @name,
        client: @client
      )
    end

    # @return [BucketCors]
    def cors
      BucketCors.new(
        bucket_name: @name,
        client: @client
      )
    end

    # @return [BucketLifecycle]
    def lifecycle
      BucketLifecycle.new(
        bucket_name: @name,
        client: @client
      )
    end

    # @return [BucketLifecycleConfiguration]
    def lifecycle_configuration
      BucketLifecycleConfiguration.new(
        bucket_name: @name,
        client: @client
      )
    end

    # @return [BucketLogging]
    def logging
      BucketLogging.new(
        bucket_name: @name,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   multipart_uploads = bucket.multipart_uploads({
    #     delimiter: "Delimiter",
    #     encoding_type: "url", # accepts url
    #     key_marker: "KeyMarker",
    #     prefix: "Prefix",
    #     upload_id_marker: "UploadIdMarker",
    #     expected_bucket_owner: "AccountId",
    #     request_payer: "requester", # accepts requester
    #   })
    # @param [Hash] options ({})
    # @option options [String] :delimiter
    #   Character you use to group keys.
    #
    #   All keys that contain the same string between the prefix, if
    #   specified, and the first occurrence of the delimiter after the prefix
    #   are grouped under a single result element, `CommonPrefixes`. If you
    #   don't specify the prefix parameter, then the substring starts at the
    #   beginning of the key. The keys that are grouped under `CommonPrefixes`
    #   result element are not returned elsewhere in the response.
    #
    #   <note markdown="1"> **Directory buckets** - For directory buckets, `/` is the only
    #   supported delimiter.
    #
    #    </note>
    # @option options [String] :encoding_type
    #   Requests Amazon S3 to encode the object keys in the response and
    #   specifies the encoding method to use. An object key can contain any
    #   Unicode character; however, the XML 1.0 parser cannot parse some
    #   characters, such as characters with an ASCII value from 0 to 10. For
    #   characters that are not supported in XML 1.0, you can add this
    #   parameter to request that Amazon S3 encode the keys in the response.
    # @option options [String] :key_marker
    #   Specifies the multipart upload after which listing should begin.
    #
    #   <note markdown="1"> * **General purpose buckets** - For general purpose buckets,
    #     `key-marker` is an object key. Together with `upload-id-marker`,
    #     this parameter specifies the multipart upload after which listing
    #     should begin.
    #
    #     If `upload-id-marker` is not specified, only the keys
    #     lexicographically greater than the specified `key-marker` will be
    #     included in the list.
    #
    #     If `upload-id-marker` is specified, any multipart uploads for a key
    #     equal to the `key-marker` might also be included, provided those
    #     multipart uploads have upload IDs lexicographically greater than the
    #     specified `upload-id-marker`.
    #
    #   * **Directory buckets** - For directory buckets, `key-marker` is
    #     obfuscated and isn't a real object key. The `upload-id-marker`
    #     parameter isn't supported by directory buckets. To list the
    #     additional multipart uploads, you only need to set the value of
    #     `key-marker` to the `NextKeyMarker` value from the previous
    #     response.
    #
    #     In the `ListMultipartUploads` response, the multipart uploads
    #     aren't sorted lexicographically based on the object keys.
    #
    #    </note>
    # @option options [String] :prefix
    #   Lists in-progress uploads only for those keys that begin with the
    #   specified prefix. You can use prefixes to separate a bucket into
    #   different grouping of keys. (You can think of using `prefix` to make
    #   groups in the same way that you'd use a folder in a file system.)
    #
    #   <note markdown="1"> **Directory buckets** - For directory buckets, only prefixes that end
    #   in a delimiter (`/`) are supported.
    #
    #    </note>
    # @option options [String] :upload_id_marker
    #   Together with key-marker, specifies the multipart upload after which
    #   listing should begin. If key-marker is not specified, the
    #   upload-id-marker parameter is ignored. Otherwise, any multipart
    #   uploads for a key equal to the key-marker might be included in the
    #   list only if they have an upload ID lexicographically greater than the
    #   specified `upload-id-marker`.
    #
    #   <note markdown="1"> This functionality is not supported for directory buckets.
    #
    #    </note>
    # @option options [String] :expected_bucket_owner
    #   The account ID of the expected bucket owner. If the account ID that
    #   you provide does not match the actual owner of the bucket, the request
    #   fails with the HTTP status code `403 Forbidden` (access denied).
    # @option options [String] :request_payer
    #   Confirms that the requester knows that they will be charged for the
    #   request. Bucket owners need not specify this parameter in their
    #   requests. If either the source or destination S3 bucket has Requester
    #   Pays enabled, the requester will pay for corresponding charges to copy
    #   the object. For information about downloading objects from Requester
    #   Pays buckets, see [Downloading Objects in Requester Pays Buckets][1]
    #   in the *Amazon S3 User Guide*.
    #
    #   <note markdown="1"> This functionality is not supported for directory buckets.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html
    # @return [MultipartUpload::Collection]
    def multipart_uploads(options = {})
      batches = Enumerator.new do |y|
        options = options.merge(bucket: @name)
        resp = Aws::Plugins::UserAgent.feature('resource') do
          @client.list_multipart_uploads(options)
        end
        resp.each_page do |page|
          batch = []
          page.data.uploads.each do |u|
            batch << MultipartUpload.new(
              bucket_name: @name,
              object_key: u.key,
              id: u.upload_id,
              data: u,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      MultipartUpload::Collection.new(batches)
    end

    # @return [BucketNotification]
    def notification
      BucketNotification.new(
        bucket_name: @name,
        client: @client
      )
    end

    # @param [String] key
    # @return [Object]
    def object(key)
      Object.new(
        bucket_name: @name,
        key: key,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   object_versions = bucket.object_versions({
    #     delimiter: "Delimiter",
    #     encoding_type: "url", # accepts url
    #     key_marker: "KeyMarker",
    #     prefix: "Prefix",
    #     version_id_marker: "VersionIdMarker",
    #     expected_bucket_owner: "AccountId",
    #     request_payer: "requester", # accepts requester
    #     optional_object_attributes: ["RestoreStatus"], # accepts RestoreStatus
    #   })
    # @param [Hash] options ({})
    # @option options [String] :delimiter
    #   A delimiter is a character that you specify to group keys. All keys
    #   that contain the same string between the `prefix` and the first
    #   occurrence of the delimiter are grouped under a single result element
    #   in `CommonPrefixes`. These groups are counted as one result against
    #   the `max-keys` limitation. These keys are not returned elsewhere in
    #   the response.
    # @option options [String] :encoding_type
    #   Requests Amazon S3 to encode the object keys in the response and
    #   specifies the encoding method to use. An object key can contain any
    #   Unicode character; however, the XML 1.0 parser cannot parse some
    #   characters, such as characters with an ASCII value from 0 to 10. For
    #   characters that are not supported in XML 1.0, you can add this
    #   parameter to request that Amazon S3 encode the keys in the response.
    # @option options [String] :key_marker
    #   Specifies the key to start with when listing objects in a bucket.
    # @option options [String] :prefix
    #   Use this parameter to select only those keys that begin with the
    #   specified prefix. You can use prefixes to separate a bucket into
    #   different groupings of keys. (You can think of using `prefix` to make
    #   groups in the same way that you'd use a folder in a file system.) You
    #   can use `prefix` with `delimiter` to roll up numerous objects into a
    #   single result under `CommonPrefixes`.
    # @option options [String] :version_id_marker
    #   Specifies the object version you want to start listing from.
    # @option options [String] :expected_bucket_owner
    #   The account ID of the expected bucket owner. If the account ID that
    #   you provide does not match the actual owner of the bucket, the request
    #   fails with the HTTP status code `403 Forbidden` (access denied).
    # @option options [String] :request_payer
    #   Confirms that the requester knows that they will be charged for the
    #   request. Bucket owners need not specify this parameter in their
    #   requests. If either the source or destination S3 bucket has Requester
    #   Pays enabled, the requester will pay for corresponding charges to copy
    #   the object. For information about downloading objects from Requester
    #   Pays buckets, see [Downloading Objects in Requester Pays Buckets][1]
    #   in the *Amazon S3 User Guide*.
    #
    #   <note markdown="1"> This functionality is not supported for directory buckets.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html
    # @option options [Array<String>] :optional_object_attributes
    #   Specifies the optional fields that you want returned in the response.
    #   Fields that you do not specify are not returned.
    # @return [ObjectVersion::Collection]
    def object_versions(options = {})
      batches = Enumerator.new do |y|
        options = options.merge(bucket: @name)
        resp = Aws::Plugins::UserAgent.feature('resource') do
          @client.list_object_versions(options)
        end
        resp.each_page do |page|
          batch = []
          page.data.versions_delete_markers.each do |v|
            batch << ObjectVersion.new(
              bucket_name: @name,
              object_key: v.key,
              id: v.version_id,
              data: v,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      ObjectVersion::Collection.new(batches)
    end

    # @example Request syntax with placeholder values
    #
    #   objects = bucket.objects({
    #     delimiter: "Delimiter",
    #     encoding_type: "url", # accepts url
    #     prefix: "Prefix",
    #     fetch_owner: false,
    #     start_after: "StartAfter",
    #     request_payer: "requester", # accepts requester
    #     expected_bucket_owner: "AccountId",
    #     optional_object_attributes: ["RestoreStatus"], # accepts RestoreStatus
    #   })
    # @param [Hash] options ({})
    # @option options [String] :delimiter
    #   A delimiter is a character that you use to group keys.
    #
    #   <note markdown="1"> * **Directory buckets** - For directory buckets, `/` is the only
    #     supported delimiter.
    #
    #   * <b>Directory buckets </b> - When you query `ListObjectsV2` with a
    #     delimiter during in-progress multipart uploads, the `CommonPrefixes`
    #     response parameter contains the prefixes that are associated with
    #     the in-progress multipart uploads. For more information about
    #     multipart uploads, see [Multipart Upload Overview][1] in the *Amazon
    #     S3 User Guide*.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuoverview.html
    # @option options [String] :encoding_type
    #   Encoding type used by Amazon S3 to encode object keys in the response.
    # @option options [String] :prefix
    #   Limits the response to keys that begin with the specified prefix.
    #
    #   <note markdown="1"> **Directory buckets** - For directory buckets, only prefixes that end
    #   in a delimiter (`/`) are supported.
    #
    #    </note>
    # @option options [Boolean] :fetch_owner
    #   The owner field is not present in `ListObjectsV2` by default. If you
    #   want to return the owner field with each key in the result, then set
    #   the `FetchOwner` field to `true`.
    #
    #   <note markdown="1"> **Directory buckets** - For directory buckets, the bucket owner is
    #   returned as the object owner for all objects.
    #
    #    </note>
    # @option options [String] :start_after
    #   StartAfter is where you want Amazon S3 to start listing from. Amazon
    #   S3 starts listing after this specified key. StartAfter can be any key
    #   in the bucket.
    #
    #   <note markdown="1"> This functionality is not supported for directory buckets.
    #
    #    </note>
    # @option options [String] :request_payer
    #   Confirms that the requester knows that she or he will be charged for
    #   the list objects request in V2 style. Bucket owners need not specify
    #   this parameter in their requests.
    #
    #   <note markdown="1"> This functionality is not supported for directory buckets.
    #
    #    </note>
    # @option options [String] :expected_bucket_owner
    #   The account ID of the expected bucket owner. If the account ID that
    #   you provide does not match the actual owner of the bucket, the request
    #   fails with the HTTP status code `403 Forbidden` (access denied).
    # @option options [Array<String>] :optional_object_attributes
    #   Specifies the optional fields that you want returned in the response.
    #   Fields that you do not specify are not returned.
    #
    #   <note markdown="1"> This functionality is not supported for directory buckets.
    #
    #    </note>
    # @return [ObjectSummary::Collection]
    def objects(options = {})
      batches = Enumerator.new do |y|
        options = options.merge(bucket: @name)
        resp = Aws::Plugins::UserAgent.feature('resource') do
          @client.list_objects_v2(options)
        end
        resp.each_page do |page|
          batch = []
          page.data.contents.each do |c|
            batch << ObjectSummary.new(
              bucket_name: @name,
              key: c.key,
              data: c,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      ObjectSummary::Collection.new(batches)
    end

    # @return [BucketPolicy]
    def policy
      BucketPolicy.new(
        bucket_name: @name,
        client: @client
      )
    end

    # @return [BucketRequestPayment]
    def request_payment
      BucketRequestPayment.new(
        bucket_name: @name,
        client: @client
      )
    end

    # @return [BucketTagging]
    def tagging
      BucketTagging.new(
        bucket_name: @name,
        client: @client
      )
    end

    # @return [BucketVersioning]
    def versioning
      BucketVersioning.new(
        bucket_name: @name,
        client: @client
      )
    end

    # @return [BucketWebsite]
    def website
      BucketWebsite.new(
        bucket_name: @name,
        client: @client
      )
    end

    # @deprecated
    # @api private
    def identifiers
      { name: @name }
    end
    deprecated(:identifiers)

    private

    def extract_name(args, options)
      value = args[0] || options.delete(:name)
      case value
      when String then value
      when nil then raise ArgumentError, "missing required option :name"
      else
        msg = "expected :name to be a String, got #{value.class}"
        raise ArgumentError, msg
      end
    end

    def yield_waiter_and_warn(waiter, &block)
      if !@waiter_block_warned
        msg = "pass options to configure the waiter; "\
              "yielding the waiter is deprecated"
        warn(msg)
        @waiter_block_warned = true
      end
      yield(waiter.waiter)
    end

    def separate_params_and_options(options)
      opts = Set.new(
        [:client, :max_attempts, :delay, :before_attempt, :before_wait]
      )
      waiter_opts = {}
      waiter_params = {}
      options.each_pair do |key, value|
        if opts.include?(key)
          waiter_opts[key] = value
        else
          waiter_params[key] = value
        end
      end
      waiter_opts[:client] ||= @client
      [waiter_opts, waiter_params]
    end

    class Collection < Aws::Resources::Collection; end
  end
end
