# frozen_string_literal: true

# This is generated code!

require_relative 'plugins/endpoint'
require 'smithy-client/plugins/checksum_required'
require 'smithy-client/plugins/content_length'
require 'smithy-client/plugins/default_params'
require 'smithy-client/plugins/host_prefix'
require 'smithy-client/plugins/idempotency_token'
require 'smithy-client/plugins/logging'
require 'smithy-client/plugins/transport'
require 'smithy-client/plugins/pageable_response'
require 'smithy-client/plugins/param_converter'
require 'smithy-client/plugins/param_validator'
require 'smithy-client/plugins/protocol'
require 'smithy-client/plugins/raise_response_errors'
require 'smithy-client/plugins/request_compression'
require 'smithy-client/plugins/resolve_auth'
require 'smithy-client/plugins/response_target'
require 'smithy-client/plugins/sign_requests'
require 'smithy-client/plugins/transfer_encoding'
require 'aws-sdk-core/plugins/global_configuration'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/invocation_id'
require 'aws-sdk-core/plugins/recursion_detection'
require 'aws-sdk-core/plugins/retry_errors'
require 'aws-sdk-core/plugins/stub_responses'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'
require 'aws-sdk-core/rest_json'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:glacier)

module Aws::Glacier
  # An API client for Aws::Glacier.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::Glacier
    @identifier = :glacier

    add_plugin(::Aws::Glacier::Plugins::Endpoint)
    add_plugin(Smithy::Client::Plugins::ChecksumRequired)
    add_plugin(Smithy::Client::Plugins::ContentLength)
    add_plugin(Smithy::Client::Plugins::DefaultParams)
    add_plugin(Smithy::Client::Plugins::HostPrefix)
    add_plugin(Smithy::Client::Plugins::IdempotencyToken)
    add_plugin(Smithy::Client::Plugins::Logging)
    add_plugin(Smithy::Client::Plugins::Transport)
    add_plugin(Smithy::Client::Plugins::PageableResponse)
    add_plugin(Smithy::Client::Plugins::ParamConverter)
    add_plugin(Smithy::Client::Plugins::ParamValidator)
    add_plugin(Smithy::Client::Plugins::Protocol)
    add_plugin(Smithy::Client::Plugins::RaiseResponseErrors)
    add_plugin(Smithy::Client::Plugins::RequestCompression)
    add_plugin(Smithy::Client::Plugins::ResolveAuth)
    add_plugin(Smithy::Client::Plugins::ResponseTarget)
    add_plugin(Smithy::Client::Plugins::SignRequests)
    add_plugin(Smithy::Client::Plugins::TransferEncoding)
    add_plugin(Aws::Core::Plugins::GlobalConfiguration)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::InvocationId)
    add_plugin(Aws::Core::Plugins::RecursionDetection)
    add_plugin(Aws::Core::Plugins::RetryErrors)
    add_plugin(Aws::Core::Plugins::StubResponses)
    add_plugin(Aws::Core::Plugins::RegionalEndpoints)
    add_plugin(Aws::Core::Plugins::SigV4)

    # @param options [Hash] Client options
    # @option options [String] :access_key_id
    # @option options [String] :account_id
    # @option options [String] :account_id_endpoint_mode
    #  The account ID endpoint mode to use. This can be one of the following values:
    #  * `preferred` - (default) Use the account ID endpoint if available, otherwise use the standard endpoint.
    #  * `disabled` - Never use the account ID endpoint, only use the standard endpoint.
    #  * `required` - Always use the account ID endpoint. If the account ID cannot be retrieved from credentials, an error is raised.
    # @option options [Boolean] :adaptive_retry_wait_to_fill (true)
    #  When true, the request will sleep until there is sufficient client side capacity to retry
    #  the request. When false, the request will raise a `CapacityNotAvailableError` and will
    #  not retry instead of sleeping.
    # @option options [#resolve(context)] :auth_resolver (AuthResolver.new)
    #  An object that resolves authentication schemes for request signing.
    # @option options [Array<String>] :auth_scheme_preference
    #  An ordered list of preferred authentication schemes to use when making a request.
    #  The items in the list must be a fully qualified scheme IDs, such as `smithy.api#httpBearerAuth`.
    # @option options [Numeric] :connect_timeout
    #  The number of seconds to wait when opening a connection before timing out.
    #  Defaults to `nil`, which uses the transport's default; the default
    #  Net::HTTP transport uses 60 seconds.
    # @option options [Boolean] :convert_params (true)
    #  When `true`, request parameters are coerced into the required types.
    # @option options [#identity] :credentials_provider
    #  The credentials provider used to resolve credentials. Any object that responds to `#identity`
    #  and returns a {Aws::Core::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  The endpoint to send requests to.
    #  The endpoint should be a URI formatted like "http://example.com:123"'
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::Glacier::EndpointProvider)
    #  An object that provides an endpoint to use for the request.
    # @option options [URI::HTTP, String] :http_proxy
    #  A proxy to send requests through. Formatted like 'http://proxy.com:123'.
    # @option options [Boolean] :http_wire_trace
    #  When `true`, HTTP wire trace output is sent to the configured logger.
    # @option options [Smithy::Client::LogFormatter] :log_formatter (Aws::Log::Formatter.default)
    #  The log formatter used by the logger.
    # @option options [Symbol] :log_level (:info)
    #  The log level to send messages to the logger at.
    # @option options [Logger] :logger
    #  The Logger instance to send log messages to. If this option is not set, logging is disabled.
    # @option options [Integer] :max_attempts (3)
    #  The maximum number attempts that will be made for a single request, including
    #  the initial attempt.
    # @option options [String] :profile (default)
    #  Used when loading credentials from the shared config file and credentials file
    #  at ~/.aws/config and ~/.aws/credentials, respectively.  When not specified, 'default' is used.
    # @option options [Symbol, Object] :protocol
    #  The protocol used for request serialization and response deserialization. Defaults to the service default protocol. May be a Symbol naming a supported protocol, or a custom object implementing the protocol interface.
    #  Supported protocols: +:rest_json+ (defaults to +:rest_json+).
    # @option options [Boolean] :raise_response_errors (true)
    #  When `true`, response errors are raised. When `false`, the error is placed on the
    #  output in the {Smithy::Client::Response#error error accessor}.
    # @option options [Numeric] :read_timeout
    #  The number of seconds to wait for data to be read before timing out.
    #  Defaults to `nil`, which uses the transport's default; the default
    #  Net::HTTP transport uses 60 seconds.
    # @option options [String] :region
    #  The AWS region to connect to. The configured `:region` is used to determine the service `:endpoint`.
    #  When not provided, a default region is searched for in the following locations:
    #  * `Aws.config[:region]`
    #  * `ENV['AWS_REGION']`
    #  * `ENV['AWS_DEFAULT_REGION']`
    #  * `~/.aws/credentials` as `region` under a profile
    #  * `~/.aws/config` as `region` under a profile
    # @option options [Integer] :request_min_compression_size_bytes (10240)
    #  The minimum size in bytes that triggers compression for request bodies.
    #  The value must be non-negative integer value between 0 and 10,485,780 bytes inclusive.
    # @option options [String] :retry_mode (standard)
    #  Specifies which retry algorithm to use. Values are:
    #  
    #  * `standard` - A standardized set of retry rules across the AWS SDKs.
    #    This includes support for retry quotas, which limit the number of
    #    unsuccessful retries a client can make. This is the default
    #    value if no retry mode is provided.
    #  
    #  * `adaptive` - A retry mode that includes all the functionality of
    #    `standard` mode along with automatic client side throttling.
    # @option options [Object] :retry_strategy
    #  The retry strategy used by the client. If not provided, a default strategy is built
    #  based on `:retry_mode` — either `Standard` or `Adaptive`.
    #  
    #  A custom strategy must respond to:
    #  * `#acquire_initial_retry_token` - returns a token
    #  * `#refresh_retry_token(token, error_info)` - returns a token or nil
    #  * `#record_success(token)` - records a successful request
    #  * `#request_bookkeeping(error_info = nil)` - updates internal state
    # @option options [String] :sdk_ua_app_id
    #  A unique and opaque application ID that is appended to the User-Agent header as app/sdk_ua_app_id.
    #  It should have a maximum length of 50. This variable is sourced from environment variable
    #  `AWS_SDK_UA_APP_ID` or the shared config profile attribute `sdk_ua_app_id`.
    # @option options [String] :secret_access_key
    # @option options [String] :session_token
    # @option options [String] :ssl_ca_bundle
    #  The path to a CA certificate bundle file in PEM format used to verify peer
    #  certificates. Defaults to `nil`, which uses the transport's default trust store.
    # @option options [String] :ssl_ca_directory
    #  The path to a directory of CA certificates in PEM format used to verify peer
    #  certificates. Defaults to `nil`, which uses the transport's default trust store.
    # @option options [OpenSSL::X509::Store] :ssl_ca_store
    #  An in-memory TLS trust store used to verify peer certificates. Defaults to `nil`,
    #  which uses the transport's default trust store.
    # @option options [Boolean] :ssl_verify_peer (true)
    #  When `true` (default), the peer's TLS certificate is verified. Disable only
    #  for debugging, as it is insecure.
    # @option options [Boolean] :stub_responses
    #  When `true`, the client will return stubbed responses instead of networking requests.
    #  By default fake responses are generated and returned. You can specify the response data
    #  to return or errors to raise by calling {Smithy::Client::Stubs#stub_responses}.
    # @option options [Smithy::Client::NetHTTP::Transport] :transport
    #  The transport used to send requests. Defaults to an HTTP/1.1 transport based on
    #  Net::HTTP ({Smithy::Client::NetHTTP::Transport}), constructed with the resolved
    #  common client transport options. Supply a custom object responding to
    #  `#transmit(request)` (returning a stream) to swap the transport, or a
    #  directly-constructed `NetHTTP::Transport` to set Net::HTTP-specific knobs. A
    #  caller-supplied transport instance is used as-is.
    # @option options [Boolean] :use_dualstack_endpoint
    #  When set to `true`, dualstack enabled endpoints (with `.aws` TLD) will be used if available.
    #  This option can also be configured in the following locations:
    #  * `ENV['AWS_USE_DUALSTACK_ENDPOINT']`
    #  * `~/.aws/credentials` as `use_dualstack_endpoint` under a profile
    #  * `~/.aws/config` as `use_dualstack_endpoint` under a profile
    # @option options [Boolean] :use_fips_endpoint
    #  When set to `true`, FIPS compatible endpoints will be used if available.
    #  This option can also be configured in the following locations:
    #  * `ENV['AWS_USE_FIPS_ENDPOINT']`
    #  * `~/.aws/credentials` as `use_fips_endpoint` under a profile
    #  * `~/.aws/config` as `use_fips_endpoint` under a profile
    # @option options [Boolean] :validate_params (true)
    #  When `true`, request parameters are validated before sending the request.
    def initialize(*options)
      super
    end

    # <p>This operation aborts a multipart upload identified by the upload ID.</p>
    # 
    # 
    #          <p>After the Abort Multipart Upload request succeeds, you cannot upload any more parts
    #          to the multipart upload or complete the multipart upload. Aborting a completed upload
    #          fails. However, aborting an already-aborted upload will succeed, for a short time. For more
    #          information about uploading a part and completing a multipart upload, see <a>UploadMultipartPart</a> and <a>CompleteMultipartUpload</a>.</p>
    # 
    #          <p>This operation is idempotent.</p>
    # 
    #          <p>An AWS account has full permission to perform all operations (actions). However, AWS
    #          Identity and Access Management (IAM) users don't have any permissions by default. You must
    #          grant them explicit permission to perform specific actions. For more information, see
    #             <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html">Access Control Using
    #             AWS Identity and Access Management (IAM)</a>.</p>
    #          <p> For conceptual information and underlying REST API, see <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/working-with-archives.html">Working with Archives in
    #             Amazon S3 Glacier</a> and <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/api-multipart-abort-upload.html">Abort Multipart
    #             Upload</a> in the <i>Amazon Glacier Developer Guide</i>. </p>
    # @param [Hash, Types::AbortMultipartUploadInput] params
    # @option params [String] :account_id
    #   <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
    #            vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
    #            (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
    #            credentials used to sign the request. If you use an account ID, do not include any hyphens
    #            ('-') in the ID.</p>
    # @option params [String] :vault_name
    #   <p>The name of the vault.</p>
    # @option params [String] :upload_id
    #   <p>The upload ID of the multipart upload to delete.</p>
    # @example To abort a multipart upload identified by the upload ID
    #   # The example deletes an in-progress multipart upload to a vault named my-vault:
    #   params = {
    #     account_id: "-",
    #     vault_name: "my-vault",
    #     upload_id: "19gaRezEXAMPLES6Ry5YYdqthHOC_kGRCT03L9yetr220UmPtBYKk-OssZtLqyFu7sY1_lR7vgFuJV6NtcV5zpsJ"
    #   }
    #   options = {}
    #   response = client.abort_multipart_upload(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "string", # required
    #     vault_name: "string", # required
    #     upload_id: "string", # required
    #   }
    #   options = {}
    #   response = client.abort_multipart_upload(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def abort_multipart_upload(params = {}, options = {})
      request = build_request(:abort_multipart_upload, params)
      request.send_request(options)
    end

    # <p>This operation aborts the vault locking process if the vault lock is not in the
    #             <code>Locked</code> state. If the vault lock is in the <code>Locked</code> state when
    #          this operation is requested, the operation returns an <code>AccessDeniedException</code>
    #          error. Aborting the vault locking process removes the vault lock policy from the specified
    #          vault. </p>
    #          <p>A vault lock is put into the <code>InProgress</code> state by calling <a>InitiateVaultLock</a>. A vault lock is put into the <code>Locked</code> state by
    #          calling <a>CompleteVaultLock</a>. You can get the state of a vault lock by
    #          calling <a>GetVaultLock</a>. For more information about the vault locking
    #          process, see <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/vault-lock.html">Amazon Glacier Vault Lock</a>. For more information about vault lock policies, see
    #             <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/vault-lock-policy.html">Amazon
    #             Glacier Access Control with Vault Lock Policies</a>. </p>
    #          <p>This operation is idempotent. You can successfully invoke this operation multiple
    #          times, if the vault lock is in the <code>InProgress</code> state or if there is no policy
    #          associated with the vault.</p>
    # @param [Hash, Types::AbortVaultLockInput] params
    # @option params [String] :account_id
    #   <p>The <code>AccountId</code> value is the AWS account ID. This value must match the AWS
    #            account ID associated with the credentials used to sign the request. You can either specify
    #            an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon
    #            Glacier uses the AWS account ID associated with the credentials used to sign the request.
    #            If you specify your account ID, do not include any hyphens ('-') in the ID.</p>
    # @option params [String] :vault_name
    #   <p>The name of the vault.</p>
    # @example To abort a vault lock
    #   # The example aborts the vault locking process if the vault lock is not in the Locked state for the vault named examplevault.
    #   params = {
    #     account_id: "-",
    #     vault_name: "examplevault"
    #   }
    #   options = {}
    #   response = client.abort_vault_lock(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "string", # required
    #     vault_name: "string", # required
    #   }
    #   options = {}
    #   response = client.abort_vault_lock(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def abort_vault_lock(params = {}, options = {})
      request = build_request(:abort_vault_lock, params)
      request.send_request(options)
    end

    # <p>This operation adds the specified tags to a vault. Each tag is composed of a key and
    #          a value. Each vault can have up to 10 tags. If your request would cause the tag limit for
    #          the vault to be exceeded, the operation throws the <code>LimitExceededException</code>
    #          error. If a tag already exists on the vault under a specified key, the existing key value
    #          will be overwritten. For more information about tags, see <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/tagging.html">Tagging Amazon S3 Glacier Resources</a>.
    #       </p>
    # @param [Hash, Types::AddTagsToVaultInput] params
    # @option params [String] :account_id
    #   <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
    #            vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
    #            (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
    #            credentials used to sign the request. If you use an account ID, do not include any hyphens
    #            ('-') in the ID.</p>
    # @option params [String] :vault_name
    #   <p>The name of the vault.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to add to the vault. Each tag is composed of a key and a value. The value
    #            can be an empty string.</p>
    # @example To add tags to a vault
    #   # The example adds two tags to a my-vault.
    #   params = {
    #     account_id: "-",
    #     vault_name: "my-vault",
    #     tags: {
    #       "examplekey1" => "examplevalue1",
    #       "examplekey2" => "examplevalue2"
    #     }
    #   }
    #   options = {}
    #   response = client.add_tags_to_vault(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "string", # required
    #     vault_name: "string", # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.add_tags_to_vault(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def add_tags_to_vault(params = {}, options = {})
      request = build_request(:add_tags_to_vault, params)
      request.send_request(options)
    end

    # <p>You call this operation to inform Amazon S3 Glacier (Glacier) that all the archive parts have been
    #          uploaded and that Glacier can now assemble the archive from the uploaded parts.
    #          After assembling and saving the archive to the vault, Glacier returns the URI path
    #          of the newly created archive resource. Using the URI path, you can then access the archive.
    #          After you upload an archive, you should save the archive ID returned to retrieve the
    #          archive at a later point. You can also get the vault inventory to obtain a list of archive
    #          IDs in a vault. For more information, see <a>InitiateJob</a>.</p>
    # 
    #          <p>In the request, you must include the computed SHA256 tree hash of the entire archive
    #          you have uploaded. For information about computing a SHA256 tree hash, see <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/checksum-calculations.html">Computing
    #             Checksums</a>. On the server side, Glacier also constructs the SHA256 tree
    #          hash of the assembled archive. If the values match, Glacier saves the archive to the
    #          vault; otherwise, it returns an error, and the operation fails. The <a>ListParts</a> operation returns a list of parts uploaded for a specific
    #          multipart upload. It includes checksum information for each uploaded part that can be used
    #          to debug a bad checksum issue.</p>
    # 
    #          <p>Additionally, Glacier also checks for any missing content ranges when
    #          assembling the archive, if missing content ranges are found, Glacier returns an
    #          error and the operation fails.</p>
    # 
    #          <p>Complete Multipart Upload is an idempotent operation. After your first successful
    #          complete multipart upload, if you call the operation again within a short period, the
    #          operation will succeed and return the same archive ID. This is useful in the event you
    #          experience a network issue that causes an aborted connection or receive a 500 server error,
    #          in which case you can repeat your Complete Multipart Upload request and get the same
    #          archive ID without creating duplicate archives. Note, however, that after the multipart
    #          upload completes, you cannot call the List Parts operation and the multipart upload will
    #          not appear in List Multipart Uploads response, even if idempotent complete is
    #          possible.</p>
    # 
    #          <p>An AWS account has full permission to perform all operations (actions). However, AWS
    #          Identity and Access Management (IAM) users don't have any permissions by default. You must
    #          grant them explicit permission to perform specific actions. For more information, see
    #             <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html">Access Control Using
    #             AWS Identity and Access Management (IAM)</a>.</p>
    #          <p> For conceptual information and underlying REST API, see <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/uploading-archive-mpu.html">Uploading Large Archives in
    #             Parts (Multipart Upload)</a> and <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/api-multipart-complete-upload.html">Complete Multipart
    #             Upload</a> in the <i>Amazon Glacier Developer Guide</i>. </p>
    # @param [Hash, Types::CompleteMultipartUploadInput] params
    # @option params [String] :account_id
    #   <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
    #            vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
    #            (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
    #            credentials used to sign the request. If you use an account ID, do not include any hyphens
    #            ('-') in the ID.</p>
    # @option params [String] :vault_name
    #   <p>The name of the vault.</p>
    # @option params [String] :upload_id
    #   <p>The upload ID of the multipart upload.</p>
    # @option params [String] :archive_size
    #   <p>The total size, in bytes, of the entire archive. This value should be the sum of all
    #            the sizes of the individual parts that you uploaded.</p>
    # @option params [String] :checksum
    #   <p>The SHA256 tree hash of the entire archive. It is the tree hash of SHA256 tree hash
    #            of the individual parts. If the value you specify in the request does not match the SHA256
    #            tree hash of the final assembled archive as computed by Amazon S3 Glacier (Glacier), 
    #            Glacier returns an error and the request fails.</p>
    # @example To complete a multipart upload
    #   # The example completes a multipart upload for a 3 MiB archive.
    #   params = {
    #     checksum: "9628195fcdbcbbe76cdde456d4646fa7de5f219fb39823836d81f0cc0e18aa67",
    #     vault_name: "my-vault",
    #     upload_id: "19gaRezEXAMPLES6Ry5YYdqthHOC_kGRCT03L9yetr220UmPtBYKk-OssZtLqyFu7sY1_lR7vgFuJV6NtcV5zpsJ",
    #     archive_size: "3145728",
    #     account_id: "-"
    #   }
    #   options = {}
    #   response = client.complete_multipart_upload(params, options)
    #   response.to_h #=>
    #   {
    #     location: "/111122223333/vaults/my-vault/archives/NkbByEejwEggmBz2fTHgJrg0XBoDfjP4q6iu87-TjhqG6eGoOY9Z8i1_AUyUsuhPAdTqLHy8pTl5nfCFJmDl2yEZONi5L26Omw12vcs01MNGntHEQL8MBfGlqrEXAMPLEArchiveId",
    #     checksum: "9628195fcdbcbbe76cdde456d4646fa7de5f219fb39823836d81f0cc0e18aa67",
    #     archive_id: "NkbByEejwEggmBz2fTHgJrg0XBoDfjP4q6iu87-TjhqG6eGoOY9Z8i1_AUyUsuhPAdTqLHy8pTl5nfCFJmDl2yEZONi5L26Omw12vcs01MNGntHEQL8MBfGlqrEXAMPLEArchiveId"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "string", # required
    #     vault_name: "string", # required
    #     upload_id: "string", # required
    #     archive_size: "string",
    #     checksum: "string"
    #   }
    #   options = {}
    #   response = client.complete_multipart_upload(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     location: "string",
    #     checksum: "string",
    #     archive_id: "string"
    #   }
    # @return [Types::CompleteMultipartUploadOutput]
    def complete_multipart_upload(params = {}, options = {})
      request = build_request(:complete_multipart_upload, params)
      request.send_request(options)
    end

    # <p>This operation completes the vault locking process by transitioning the vault lock
    #          from the <code>InProgress</code> state to the <code>Locked</code> state, which causes the
    #          vault lock policy to become unchangeable. A vault lock is put into the
    #             <code>InProgress</code> state by calling <a>InitiateVaultLock</a>. You can
    #          obtain the state of the vault lock by calling <a>GetVaultLock</a>. For more
    #          information about the vault locking process, <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/vault-lock.html">Amazon Glacier Vault Lock</a>. </p>
    #          <p>This operation is idempotent. This request is always successful if the vault lock is
    #          in the <code>Locked</code> state and the provided lock ID matches the lock ID originally
    #          used to lock the vault.</p>
    #          <p>If an invalid lock ID is passed in the request when the vault lock is in the
    #             <code>Locked</code> state, the operation returns an <code>AccessDeniedException</code>
    #          error. If an invalid lock ID is passed in the request when the vault lock is in the
    #             <code>InProgress</code> state, the operation throws an <code>InvalidParameter</code>
    #          error.</p>
    # @param [Hash, Types::CompleteVaultLockInput] params
    # @option params [String] :account_id
    #   <p>The <code>AccountId</code> value is the AWS account ID. This value must match the AWS
    #            account ID associated with the credentials used to sign the request. You can either specify
    #            an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon
    #            Glacier uses the AWS account ID associated with the credentials used to sign the request.
    #            If you specify your account ID, do not include any hyphens ('-') in the ID.</p>
    # @option params [String] :vault_name
    #   <p>The name of the vault.</p>
    # @option params [String] :lock_id
    #   <p>The <code>lockId</code> value is the lock ID obtained from a <a>InitiateVaultLock</a> request.</p>
    # @example To complete a vault lock
    #   # The example completes the vault locking process by transitioning the vault lock from the InProgress state to the Locked state.
    #   params = {
    #     account_id: "-",
    #     vault_name: "example-vault",
    #     lock_id: "AE863rKkWZU53SLW5be4DUcW"
    #   }
    #   options = {}
    #   response = client.complete_vault_lock(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "string", # required
    #     vault_name: "string", # required
    #     lock_id: "string", # required
    #   }
    #   options = {}
    #   response = client.complete_vault_lock(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def complete_vault_lock(params = {}, options = {})
      request = build_request(:complete_vault_lock, params)
      request.send_request(options)
    end

    # <p>This operation creates a new vault with the specified name. The name of the vault
    #          must be unique within a region for an AWS account. You can create up to 1,000 vaults per
    #          account. If you need to create more vaults, contact Amazon S3 Glacier.</p>
    #          <p>You must use the following guidelines when naming a vault.</p>
    #          <ul>
    #             <li>
    #                <p>Names can be between 1 and 255 characters long.</p>
    #             </li>
    #             <li>
    #                <p>Allowed characters are a-z, A-Z, 0-9, '_' (underscore), '-' (hyphen), and '.'
    #                (period).</p>
    #             </li>
    #          </ul>
    # 
    #          <p>This operation is idempotent.</p>
    # 
    #          <p>An AWS account has full permission to perform all operations (actions). However, AWS
    #          Identity and Access Management (IAM) users don't have any permissions by default. You must
    #          grant them explicit permission to perform specific actions. For more information, see
    #             <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html">Access Control Using
    #             AWS Identity and Access Management (IAM)</a>.</p>
    #          <p> For conceptual information and underlying REST API, see <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/creating-vaults.html">Creating a Vault in Amazon
    #             Glacier</a> and <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/api-vault-put.html">Create Vault </a> in the
    #             <i>Amazon Glacier Developer Guide</i>. </p>
    # @param [Hash, Types::CreateVaultInput] params
    # @option params [String] :account_id
    #   <p>The <code>AccountId</code> value is the AWS account ID. This value must match the AWS
    #            account ID associated with the credentials used to sign the request. You can either specify
    #            an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon S3
    #            Glacier uses the AWS account ID associated with the credentials used to sign the request.
    #            If you specify your account ID, do not include any hyphens ('-') in the ID.</p>
    # @option params [String] :vault_name
    #   <p>The name of the vault.</p>
    # @example To create a new vault
    #   # The following example creates a new vault named my-vault.
    #   params = {
    #     vault_name: "my-vault",
    #     account_id: "-"
    #   }
    #   options = {}
    #   response = client.create_vault(params, options)
    #   response.to_h #=>
    #   {
    #     location: "/111122223333/vaults/my-vault"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "string", # required
    #     vault_name: "string", # required
    #   }
    #   options = {}
    #   response = client.create_vault(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     location: "string"
    #   }
    # @return [Types::CreateVaultOutput]
    def create_vault(params = {}, options = {})
      request = build_request(:create_vault, params)
      request.send_request(options)
    end

    # <p>This operation deletes an archive from a vault. Subsequent requests to initiate a
    #          retrieval of this archive will fail. Archive retrievals that are in progress for this
    #          archive ID may or may not succeed according to the following scenarios:</p>
    #          <ul>
    #             <li>
    #                <p>If the archive retrieval job is actively preparing the data for download when
    #                Amazon S3 Glacier receives the delete archive request, the archival retrieval operation
    #                might fail.</p>
    #             </li>
    #             <li>
    #                <p>If the archive retrieval job has successfully prepared the archive for download
    #                when Amazon S3 Glacier receives the delete archive request, you will be able to download
    #                the output.</p>
    #             </li>
    #          </ul>
    # 
    #          <p>This operation is idempotent. Attempting to delete an already-deleted archive does
    #          not result in an error.</p>
    # 
    #          <p>An AWS account has full permission to perform all operations (actions). However, AWS
    #          Identity and Access Management (IAM) users don't have any permissions by default. You must
    #          grant them explicit permission to perform specific actions. For more information, see
    #             <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html">Access Control Using
    #             AWS Identity and Access Management (IAM)</a>.</p>
    #          <p> For conceptual information and underlying REST API, see <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/deleting-an-archive.html">Deleting an Archive in Amazon
    #             Glacier</a> and <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/api-archive-delete.html">Delete Archive</a> in the
    #             <i>Amazon Glacier Developer Guide</i>. </p>
    # @param [Hash, Types::DeleteArchiveInput] params
    # @option params [String] :account_id
    #   <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
    #            vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
    #            (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
    #            credentials used to sign the request. If you use an account ID, do not include any hyphens
    #            ('-') in the ID.</p>
    # @option params [String] :vault_name
    #   <p>The name of the vault.</p>
    # @option params [String] :archive_id
    #   <p>The ID of the archive to delete.</p>
    # @example To delete an archive
    #   # The example deletes the archive specified by the archive ID.
    #   params = {
    #     account_id: "-",
    #     vault_name: "examplevault",
    #     archive_id: "NkbByEejwEggmBz2fTHgJrg0XBoDfjP4q6iu87-TjhqG6eGoOY9Z8i1_AUyUsuhPAdTqLHy8pTl5nfCFJmDl2yEZONi5L26Omw12vcs01MNGntHEQL8MBfGlqrEXAMPLEArchiveId"
    #   }
    #   options = {}
    #   response = client.delete_archive(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "string", # required
    #     vault_name: "string", # required
    #     archive_id: "string", # required
    #   }
    #   options = {}
    #   response = client.delete_archive(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_archive(params = {}, options = {})
      request = build_request(:delete_archive, params)
      request.send_request(options)
    end

    # <p>This operation deletes a vault. Amazon S3 Glacier will delete a vault only if there are
    #          no archives in the vault as of the last inventory and there have been no writes to the
    #          vault since the last inventory. If either of these conditions is not satisfied, the vault
    #          deletion fails (that is, the vault is not removed) and Amazon S3 Glacier returns an error. You
    #          can use <a>DescribeVault</a> to return the number of archives in a vault, and
    #          you can use <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/api-initiate-job-post.html">Initiate a Job (POST
    #             jobs)</a> to initiate a new inventory retrieval for a vault. The inventory contains
    #          the archive IDs you use to delete archives using <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/api-archive-delete.html">Delete Archive (DELETE
    #             archive)</a>.</p>
    # 
    #          <p>This operation is idempotent.</p>
    # 
    #          <p>An AWS account has full permission to perform all operations (actions). However, AWS
    #          Identity and Access Management (IAM) users don't have any permissions by default. You must
    #          grant them explicit permission to perform specific actions. For more information, see
    #             <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html">Access Control Using
    #             AWS Identity and Access Management (IAM)</a>.</p>
    #          <p> For conceptual information and underlying REST API, see <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/deleting-vaults.html">Deleting a Vault in Amazon
    #             Glacier</a> and <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/api-vault-delete.html">Delete Vault </a> in the
    #             <i>Amazon S3 Glacier Developer Guide</i>. </p>
    # @param [Hash, Types::DeleteVaultInput] params
    # @option params [String] :account_id
    #   <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
    #            vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
    #            (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
    #            credentials used to sign the request. If you use an account ID, do not include any hyphens
    #            ('-') in the ID.</p>
    # @option params [String] :vault_name
    #   <p>The name of the vault.</p>
    # @example To delete a vault
    #   # The example deletes a vault named my-vault:
    #   params = {
    #     vault_name: "my-vault",
    #     account_id: "-"
    #   }
    #   options = {}
    #   response = client.delete_vault(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "string", # required
    #     vault_name: "string", # required
    #   }
    #   options = {}
    #   response = client.delete_vault(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_vault(params = {}, options = {})
      request = build_request(:delete_vault, params)
      request.send_request(options)
    end

    # <p>This operation deletes the access policy associated with the specified vault. The
    #          operation is eventually consistent; that is, it might take some time for Amazon S3 Glacier to
    #          completely remove the access policy, and you might still see the effect of the policy for a
    #          short time after you send the delete request.</p>
    #          <p>This operation is idempotent. You can invoke delete multiple times, even if there is
    #          no policy associated with the vault. For more information about vault access policies, see
    #             <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/vault-access-policy.html">Amazon Glacier Access Control with Vault Access Policies</a>. </p>
    # @param [Hash, Types::DeleteVaultAccessPolicyInput] params
    # @option params [String] :account_id
    #   <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
    #            vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
    #            (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
    #            credentials used to sign the request. If you use an account ID, do not include any hyphens
    #            ('-') in the ID. </p>
    # @option params [String] :vault_name
    #   <p>The name of the vault.</p>
    # @example To delete the vault access policy
    #   # The example deletes the access policy associated with the vault named examplevault.
    #   params = {
    #     account_id: "-",
    #     vault_name: "examplevault"
    #   }
    #   options = {}
    #   response = client.delete_vault_access_policy(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "string", # required
    #     vault_name: "string", # required
    #   }
    #   options = {}
    #   response = client.delete_vault_access_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_vault_access_policy(params = {}, options = {})
      request = build_request(:delete_vault_access_policy, params)
      request.send_request(options)
    end

    # <p>This operation deletes the notification configuration set for a vault. The operation
    #          is eventually consistent; that is, it might take some time for Amazon S3 Glacier to completely
    #          disable the notifications and you might still receive some notifications for a short time
    #          after you send the delete request.</p>
    # 
    #          <p>An AWS account has full permission to perform all operations (actions). However, AWS
    #          Identity and Access Management (IAM) users don't have any permissions by default. You must
    #          grant them explicit permission to perform specific actions. For more information, see
    #          <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html">Access
    #             Control Using AWS Identity and Access Management (IAM)</a>.</p>
    #          <p> For conceptual information and underlying REST API, see <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/configuring-notifications.html">Configuring Vault
    #             Notifications in Amazon S3 Glacier</a> and <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/api-vault-notifications-delete.html">Delete Vault
    #             Notification Configuration </a> in the Amazon S3 Glacier Developer Guide. </p>
    # @param [Hash, Types::DeleteVaultNotificationsInput] params
    # @option params [String] :account_id
    #   <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
    #            vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
    #            (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
    #            credentials used to sign the request. If you use an account ID, do not include any hyphens
    #            ('-') in the ID. </p>
    # @option params [String] :vault_name
    #   <p>The name of the vault.</p>
    # @example To delete the notification configuration set for a vault
    #   # The example deletes the notification configuration set for the vault named examplevault.
    #   params = {
    #     account_id: "-",
    #     vault_name: "examplevault"
    #   }
    #   options = {}
    #   response = client.delete_vault_notifications(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "string", # required
    #     vault_name: "string", # required
    #   }
    #   options = {}
    #   response = client.delete_vault_notifications(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_vault_notifications(params = {}, options = {})
      request = build_request(:delete_vault_notifications, params)
      request.send_request(options)
    end

    # <p>This operation returns information about a job you previously initiated, including
    #          the job initiation date, the user who initiated the job, the job status code/message and
    #          the Amazon SNS topic to notify after Amazon S3 Glacier (Glacier) completes the job. For more information
    #          about initiating a job, see <a>InitiateJob</a>. </p>
    # 
    #          <note>
    #             <p>This operation enables you to check the status of your job. However, it is
    #             strongly recommended that you set up an Amazon SNS topic and specify it in your initiate
    #             job request so that Glacier can notify the topic after it completes the
    #             job.</p>
    #          </note>
    # 
    #          <p>A job ID will not expire for at least 24 hours after Glacier completes the
    #          job.</p>
    # 
    #          <p>An AWS account has full permission to perform all operations (actions). However, AWS
    #          Identity and Access Management (IAM) users don't have any permissions by default. You must
    #          grant them explicit permission to perform specific actions. For more information, see
    #             <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html">Access Control Using
    #             AWS Identity and Access Management (IAM)</a>.</p>
    # 
    #          <p> For more information about using this operation, 
    #          see the documentation for the underlying REST API <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/api-describe-job-get.html">Describe Job</a> 
    #          in the <i>Amazon Glacier Developer Guide</i>. </p>
    # @param [Hash, Types::DescribeJobInput] params
    # @option params [String] :account_id
    #   <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
    #            vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
    #            (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
    #            credentials used to sign the request. If you use an account ID, do not include any hyphens
    #            ('-') in the ID. </p>
    # @option params [String] :vault_name
    #   <p>The name of the vault.</p>
    # @option params [String] :job_id
    #   <p>The ID of the job to describe.</p>
    # @example To get information about a previously initiated job
    #   # The example returns information about the previously initiated job specified by the job ID.
    #   params = {
    #     account_id: "-",
    #     vault_name: "my-vault",
    #     job_id: "zbxcm3Z_3z5UkoroF7SuZKrxgGoDc3RloGduS7Eg-RO47Yc6FxsdGBgf_Q2DK5Ejh18CnTS5XW4_XqlNHS61dsO4Cn"
    #   }
    #   options = {}
    #   response = client.describe_job(params, options)
    #   response.to_h #=>
    #   {
    #     inventory_retrieval_parameters: {
    #       format: "JSON"
    #     },
    #     vault_arn: "arn:aws:glacier:us-west-2:0123456789012:vaults/my-vault",
    #     completed: false,
    #     job_id: "zbxcm3Z_3z5UkoroF7SuZKrxgGoDc3RloGduS7Eg-RO47Yc6FxsdGBgf_Q2DK5Ejh18CnTS5XW4_XqlNHS61dsO4CnMW",
    #     action: InventoryRetrieval,
    #     creation_date: "2015-07-17T20:23:41.616Z",
    #     status_code: InProgress
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "string", # required
    #     vault_name: "string", # required
    #     job_id: "string", # required
    #   }
    #   options = {}
    #   response = client.describe_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_id: "string",
    #     job_description: "string",
    #     action: "ArchiveRetrieval" # One of: ["ArchiveRetrieval", "InventoryRetrieval", "Select"],
    #     archive_id: "string",
    #     vault_arn: "string",
    #     creation_date: "string",
    #     completed: false,
    #     status_code: "InProgress" # One of: ["InProgress", "Succeeded", "Failed"],
    #     status_message: "string",
    #     archive_size_in_bytes: 1,
    #     inventory_size_in_bytes: 1,
    #     sns_topic: "string",
    #     completion_date: "string",
    #     sha256_tree_hash: "string",
    #     archive_sha256_tree_hash: "string",
    #     retrieval_byte_range: "string",
    #     tier: "string",
    #     inventory_retrieval_parameters: {
    #       format: "string",
    #       start_date: "DateTime",
    #       end_date: "DateTime",
    #       limit: "string",
    #       marker: "string"
    #     },
    #     job_output_path: "string",
    #     select_parameters: {
    #       input_serialization: {
    #         csv: {
    #           file_header_info: "USE" # One of: ["USE", "IGNORE", "NONE"],
    #           comments: "string",
    #           quote_escape_character: "string",
    #           record_delimiter: "string",
    #           field_delimiter: "string",
    #           quote_character: "string"
    #         }
    #       },
    #       expression_type: "SQL" # One of: ["SQL"],
    #       expression: "string",
    #       output_serialization: {
    #         csv: {
    #           quote_fields: "ALWAYS" # One of: ["ALWAYS", "ASNEEDED"],
    #           quote_escape_character: "string",
    #           record_delimiter: "string",
    #           field_delimiter: "string",
    #           quote_character: "string"
    #         }
    #       }
    #     },
    #     output_location: {
    #       s3: {
    #         bucket_name: "string",
    #         prefix: "string",
    #         encryption: {
    #           encryption_type: "aws:kms" # One of: ["aws:kms", "AES256"],
    #           kms_key_id: "string",
    #           kms_context: "string"
    #         },
    #         canned_acl: "private" # One of: ["private", "public-read", "public-read-write", "aws-exec-read", "authenticated-read", "bucket-owner-read", "bucket-owner-full-control"],
    #         access_control_list: [
    #           {
    #             grantee: {
    #               type: "AmazonCustomerByEmail" # One of: ["AmazonCustomerByEmail", "CanonicalUser", "Group"], # required
    #               display_name: "string",
    #               uri: "string",
    #               id: "string",
    #               email_address: "string"
    #             },
    #             permission: "FULL_CONTROL" # One of: ["FULL_CONTROL", "WRITE", "WRITE_ACP", "READ", "READ_ACP"]
    #           }
    #         ],
    #         tagging: {
    #           "string" => "string"
    #         },
    #         user_metadata: {
    #           "string" => "string"
    #         },
    #         storage_class: "STANDARD" # One of: ["STANDARD", "REDUCED_REDUNDANCY", "STANDARD_IA"]
    #       }
    #     }
    #   }
    # @return [Types::DescribeJobOutput]
    def describe_job(params = {}, options = {})
      request = build_request(:describe_job, params)
      request.send_request(options)
    end

    # <p>This operation returns information about a vault, including the vault's Amazon
    #          Resource Name (ARN), the date the vault was created, the number of archives it contains,
    #          and the total size of all the archives in the vault. The number of archives and their total
    #          size are as of the last inventory generation. This means that if you add or remove an
    #          archive from a vault, and then immediately use Describe Vault, the change in contents will
    #          not be immediately reflected. If you want to retrieve the latest inventory of the vault,
    #          use <a>InitiateJob</a>. Amazon S3 Glacier generates vault inventories approximately
    #          daily. For more information, see <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/vault-inventory.html">Downloading a Vault Inventory in
    #             Amazon S3 Glacier</a>. </p>
    # 
    #          <p>An AWS account has full permission to perform all operations (actions). However, AWS
    #          Identity and Access Management (IAM) users don't have any permissions by default. You must
    #          grant them explicit permission to perform specific actions. For more information, see
    #             <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html">Access Control Using
    #             AWS Identity and Access Management (IAM)</a>.</p>
    #          <p>For conceptual information and underlying REST API, see <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/retrieving-vault-info.html">Retrieving Vault Metadata in
    #             Amazon S3 Glacier</a> and <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/api-vault-get.html">Describe Vault </a> in the
    #             <i>Amazon Glacier Developer Guide</i>. </p>
    # @param [Hash, Types::DescribeVaultInput] params
    # @option params [String] :account_id
    #   <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
    #            vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
    #            (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
    #            credentials used to sign the request. If you use an account ID, do not include any hyphens
    #            ('-') in the ID. </p>
    # @option params [String] :vault_name
    #   <p>The name of the vault.</p>
    # @example To retrieve information about a vault
    #   # The example retrieves data about a vault named my-vault.
    #   params = {
    #     vault_name: "my-vault",
    #     account_id: "-"
    #   }
    #   options = {}
    #   response = client.describe_vault(params, options)
    #   response.to_h #=>
    #   {
    #     size_in_bytes: 0,
    #     vault_arn: "arn:aws:glacier:us-west-2:111122223333:vaults/my-vault",
    #     number_of_archives: 0,
    #     creation_date: "2016-09-23T19:27:18.665Z",
    #     vault_name: "my-vault"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "string", # required
    #     vault_name: "string", # required
    #   }
    #   options = {}
    #   response = client.describe_vault(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     vault_arn: "string",
    #     vault_name: "string",
    #     creation_date: "string",
    #     last_inventory_date: "string",
    #     number_of_archives: 1,
    #     size_in_bytes: 1
    #   }
    # @return [Types::DescribeVaultOperationOutput]
    def describe_vault(params = {}, options = {})
      request = build_request(:describe_vault, params)
      request.send_request(options)
    end

    # <p>This operation returns the current data retrieval policy for the account and region
    #          specified in the GET request. For more information about data retrieval policies, see
    #             <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/data-retrieval-policy.html">Amazon Glacier Data Retrieval Policies</a>.</p>
    # @param [Hash, Types::GetDataRetrievalPolicyInput] params
    # @option params [String] :account_id
    #   <p>The <code>AccountId</code> value is the AWS account ID. This value must match the AWS
    #            account ID associated with the credentials used to sign the request. You can either specify
    #            an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon
    #            Glacier uses the AWS account ID associated with the credentials used to sign the request.
    #            If you specify your account ID, do not include any hyphens ('-') in the ID. </p>
    # @example To get the current data retrieval policy for an account
    #   # The example returns the current data retrieval policy for the account.
    #   params = {
    #     account_id: "-"
    #   }
    #   options = {}
    #   response = client.get_data_retrieval_policy(params, options)
    #   response.to_h #=>
    #   {
    #     policy: {
    #       rules: [
    #         {
    #           bytes_per_hour: 10737418240,
    #           strategy: "BytesPerHour"
    #         }
    #       ]
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "string", # required
    #   }
    #   options = {}
    #   response = client.get_data_retrieval_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy: {
    #       rules: [
    #         {
    #           strategy: "string",
    #           bytes_per_hour: 1
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetDataRetrievalPolicyOutput]
    def get_data_retrieval_policy(params = {}, options = {})
      request = build_request(:get_data_retrieval_policy, params)
      request.send_request(options)
    end

    # <p>This operation downloads the output of the job you initiated using <a>InitiateJob</a>. Depending on the job type you specified when you initiated the
    #          job, the output will be either the content of an archive or a vault inventory.</p>
    # 
    #          <p>You can download all the job output or download a portion of the output by specifying
    #          a byte range. In the case of an archive retrieval job, depending on the byte range you
    #          specify, Amazon S3 Glacier (Glacier) returns the checksum for the portion of the data. You can compute the
    #          checksum on the client and verify that the values match to ensure the portion you downloaded
    #          is the correct data.</p>
    #          <p>A job ID will not expire for at least 24 hours after Glacier completes the job. That
    #          a byte range. For both archive and inventory retrieval jobs, you should verify the downloaded 
    #          size against the size returned in the headers from the 
    #          <b>Get Job Output</b> response.</p>
    #          <p>For archive retrieval jobs, you should also verify that the size is what you expected. If
    #          you download a portion of the output, the expected size is based on the range of bytes
    #          you specified. For example, if you specify a range of <code>bytes=0-1048575</code>, you should
    #          verify your download size is 1,048,576 bytes. If you download an entire archive, the
    #          expected size is the size of the archive when you uploaded it to Amazon S3 Glacier
    #          The expected size is also returned in the headers from the 
    #          <b>Get Job Output</b> response.</p>
    #          <p>In the case of an archive retrieval job, depending on the byte range you
    #          specify, Glacier returns the checksum for the portion of the data. To ensure the portion you downloaded 
    #          is the correct data, compute the checksum on the client, verify that the values match, 
    #          and verify that the size is what you expected.</p>
    #       
    #          <p>A job ID does not expire for at least 24 hours after Glacier completes the
    #          job. That is, you can download the job output within the 24 hours period after Amazon
    #          Glacier completes the job.</p>    
    # 
    #          <p>An AWS account has full permission to perform all operations (actions). However, AWS
    #          Identity and Access Management (IAM) users don't have any permissions by default. You must
    #          grant them explicit permission to perform specific actions. For more information, see
    #             <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html">Access Control Using
    #             AWS Identity and Access Management (IAM)</a>.</p>
    #          <p>For conceptual information and the underlying REST API, see <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/vault-inventory.html">Downloading a
    #             Vault Inventory</a>, <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/downloading-an-archive.html">Downloading an
    #             Archive</a>, and <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/api-job-output-get.html">Get Job Output </a>
    #          </p>
    # @param [Hash, Types::GetJobOutputInput] params
    # @option params [String] :account_id
    #   <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
    #            vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
    #            (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
    #            credentials used to sign the request. If you use an account ID, do not include any hyphens
    #            ('-') in the ID.</p>
    # @option params [String] :vault_name
    #   <p>The name of the vault.</p>
    # @option params [String] :job_id
    #   <p>The job ID whose data is downloaded.</p>
    # @option params [String] :range
    #   <p>The range of bytes to retrieve from the output. For example, if you want to download
    #            the first 1,048,576 bytes, specify the range as <code>bytes=0-1048575</code>. By default, this operation
    #            downloads the entire output.</p>
    #         
    #            <p>If the job output is large, then you can use a range to
    #            retrieve a portion of the output. This allows you to download the entire output in smaller
    #            chunks of bytes. For example, suppose you have 1 GB of job output you want to download and
    #            you decide to download 128 MB chunks of data at a time, which is a total of eight Get Job
    #            Output requests. You use the following process to download the job output:</p>
    #        
    #            <ol>
    #               <li>
    #                  <p>Download a 128 MB chunk of output by specifying the appropriate byte range.
    #                     Verify that all 128 MB of data was received.</p>
    #               </li>
    #               <li>
    #                  <p>Along with the data, the response includes a SHA256 tree hash of the payload.
    #                     You compute the checksum of the payload on the client and compare it with the
    #                     checksum you received in the response to ensure you received all the expected
    #                     data.</p>
    #               </li>
    #               <li>
    #                  <p>Repeat steps 1 and 2 for all the eight 128 MB chunks of output data, each time
    #                     specifying the appropriate byte range.</p>
    #               </li>
    #               <li>
    #                  <p>After downloading all the parts of the job output, you have a list of eight
    #                     checksum values. Compute the tree hash of these values to find the checksum of the
    #                     entire output. Using the <a>DescribeJob</a> API, obtain job information of
    #                     the job that provided you the output. The response includes the checksum of the
    #                     entire archive stored in Amazon S3 Glacier. You compare this value with the checksum you
    #                     computed to ensure you have downloaded the entire archive content with no
    #                     errors.</p>
    #                  <p></p>
    #               </li>
    #            </ol>
    # @example To get the output of a previously initiated job
    #   # The example downloads the output of a previously initiated inventory retrieval job that is identified by the job ID.
    #   params = {
    #     account_id: "-",
    #     vault_name: "my-vaul",
    #     job_id: "zbxcm3Z_3z5UkoroF7SuZKrxgGoDc3RloGduS7Eg-RO47Yc6FxsdGBgf_Q2DK5Ejh18CnTS5XW4_XqlNHS61dsO4CnMW",
    #     range: ""
    #   }
    #   options = {}
    #   response = client.get_job_output(params, options)
    #   response.to_h #=>
    #   {
    #     status: 200,
    #     accept_ranges: "bytes",
    #     content_type: "application/json",
    #     body: "inventory-data"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "string", # required
    #     vault_name: "string", # required
    #     job_id: "string", # required
    #     range: "string"
    #   }
    #   options = {}
    #   response = client.get_job_output(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     body: File.read("source_file"),
    #     checksum: "string",
    #     status: 1,
    #     content_range: "string",
    #     accept_ranges: "string",
    #     content_type: "string",
    #     archive_description: "string"
    #   }
    # @return [Types::GetJobOutputOutput]
    def get_job_output(params = {}, options = {})
      request = build_request(:get_job_output, params)
      request.send_request(options)
    end

    # <p>This operation retrieves the <code>access-policy</code> subresource set on the vault;
    #          for more information on setting this subresource, see <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/api-SetVaultAccessPolicy.html">Set Vault Access Policy
    #             (PUT access-policy)</a>. If there is no access policy set on the vault, the
    #          operation returns a <code>404 Not found</code> error. For more information about vault
    #          access policies, see <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/vault-access-policy.html">Amazon Glacier Access Control
    #             with Vault Access Policies</a>.</p>
    # @param [Hash, Types::GetVaultAccessPolicyInput] params
    # @option params [String] :account_id
    #   <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
    #            vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
    #            (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
    #            credentials used to sign the request. If you use an account ID, do not include any hyphens
    #            ('-') in the ID.</p>
    # @option params [String] :vault_name
    #   <p>The name of the vault.</p>
    # @example To  get the access-policy set on the vault
    #   # The example retrieves the access-policy set on the vault named example-vault.
    #   params = {
    #     account_id: "-",
    #     vault_name: "example-vault"
    #   }
    #   options = {}
    #   response = client.get_vault_access_policy(params, options)
    #   response.to_h #=>
    #   {
    #     policy: {
    #       policy: "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Sid\":\"Define-owner-access-rights\",\"Effect\":\"Allow\",\"Principal\":{\"AWS\":\"arn:aws:iam::999999999999:root\"},\"Action\":\"glacier:DeleteArchive\",\"Resource\":\"arn:aws:glacier:us-west-2:999999999999:vaults/examplevault\"}]}"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "string", # required
    #     vault_name: "string", # required
    #   }
    #   options = {}
    #   response = client.get_vault_access_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy: {
    #       policy: "string"
    #     }
    #   }
    # @return [Types::GetVaultAccessPolicyOutput]
    def get_vault_access_policy(params = {}, options = {})
      request = build_request(:get_vault_access_policy, params)
      request.send_request(options)
    end

    # <p>This operation retrieves the following attributes from the <code>lock-policy</code>
    #          subresource set on the specified vault: </p>
    #          <ul>
    #             <li>
    #                <p>The vault lock policy set on the vault.</p>
    #             </li>
    #             <li>
    #                <p>The state of the vault lock, which is either <code>InProgess</code> or
    #                   <code>Locked</code>.</p>
    #             </li>
    #             <li>
    #                <p>When the lock ID expires. The lock ID is used to complete the vault locking
    #                process.</p>
    #             </li>
    #             <li>
    #                <p>When the vault lock was initiated and put into the <code>InProgress</code>
    #                state.</p>
    #             </li>
    #          </ul>
    # 
    #          <p>A vault lock is put into the <code>InProgress</code> state by calling <a>InitiateVaultLock</a>. A vault lock is put into the <code>Locked</code> state by
    #          calling <a>CompleteVaultLock</a>. You can abort the vault locking process by
    #          calling <a>AbortVaultLock</a>. For more information about the vault locking
    #          process, <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/vault-lock.html">Amazon
    #             Glacier Vault Lock</a>. </p>
    #          <p>If there is no vault lock policy set on the vault, the operation returns a <code>404
    #             Not found</code> error. For more information about vault lock policies, <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/vault-lock-policy.html">Amazon
    #             Glacier Access Control with Vault Lock Policies</a>. </p>
    # @param [Hash, Types::GetVaultLockInput] params
    # @option params [String] :account_id
    #   <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
    #            vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
    #            (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
    #            credentials used to sign the request. If you use an account ID, do not include any hyphens
    #            ('-') in the ID.</p>
    # @option params [String] :vault_name
    #   <p>The name of the vault.</p>
    # @example To retrieve vault lock-policy related attributes that are set on a vault
    #   # The example retrieves the attributes from the lock-policy subresource set on the vault named examplevault.
    #   params = {
    #     account_id: "-",
    #     vault_name: "examplevault"
    #   }
    #   options = {}
    #   response = client.get_vault_lock(params, options)
    #   response.to_h #=>
    #   {
    #     policy: "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Sid\":\"Define-vault-lock\",\"Effect\":\"Deny\",\"Principal\":{\"AWS\":\"arn:aws:iam::999999999999:root\"},\"Action\":\"glacier:DeleteArchive\",\"Resource\":\"arn:aws:glacier:us-west-2:999999999999:vaults/examplevault\",\"Condition\":{\"NumericLessThanEquals\":{\"glacier:ArchiveAgeinDays\":\"365\"}}}]}",
    #     state: "InProgress",
    #     expiration_date: "exampledate",
    #     creation_date: "exampledate"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "string", # required
    #     vault_name: "string", # required
    #   }
    #   options = {}
    #   response = client.get_vault_lock(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy: "string",
    #     state: "string",
    #     expiration_date: "string",
    #     creation_date: "string"
    #   }
    # @return [Types::GetVaultLockOutput]
    def get_vault_lock(params = {}, options = {})
      request = build_request(:get_vault_lock, params)
      request.send_request(options)
    end

    # <p>This operation retrieves the <code>notification-configuration</code> subresource of
    #          the specified vault.</p>
    # 
    #          <p>For information about setting a notification configuration on a vault, see <a>SetVaultNotifications</a>. If a notification configuration for a vault is not
    #          set, the operation returns a <code>404 Not Found</code> error. For more information about
    #          vault notifications, see <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/configuring-notifications.html">Configuring Vault
    #             Notifications in Amazon S3 Glacier</a>. </p>
    # 
    #          <p>An AWS account has full permission to perform all operations (actions). However, AWS
    #          Identity and Access Management (IAM) users don't have any permissions by default. You must
    #          grant them explicit permission to perform specific actions. For more information, see
    #             <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html">Access Control Using
    #             AWS Identity and Access Management (IAM)</a>.</p>
    #          <p>For conceptual information and underlying REST API, see <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/configuring-notifications.html">Configuring Vault
    #             Notifications in Amazon S3 Glacier</a> and <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/api-vault-notifications-get.html">Get Vault Notification
    #             Configuration </a> in the <i>Amazon Glacier Developer Guide</i>. </p>
    # @param [Hash, Types::GetVaultNotificationsInput] params
    # @option params [String] :account_id
    #   <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
    #            vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
    #            (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
    #            credentials used to sign the request. If you use an account ID, do not include any hyphens
    #            ('-') in the ID.</p>
    # @option params [String] :vault_name
    #   <p>The name of the vault.</p>
    # @example To get the notification-configuration for the specified vault
    #   # The example retrieves the notification-configuration for the vault named my-vault.
    #   params = {
    #     account_id: "-",
    #     vault_name: "my-vault"
    #   }
    #   options = {}
    #   response = client.get_vault_notifications(params, options)
    #   response.to_h #=>
    #   {
    #     vault_notification_config: {
    #       events: [
    #         "InventoryRetrievalCompleted",
    #         "ArchiveRetrievalCompleted"
    #       ],
    #       sns_topic: "arn:aws:sns:us-west-2:0123456789012:my-vault"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "string", # required
    #     vault_name: "string", # required
    #   }
    #   options = {}
    #   response = client.get_vault_notifications(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     vault_notification_config: {
    #       sns_topic: "string",
    #       events: ["string"]
    #     }
    #   }
    # @return [Types::GetVaultNotificationsOutput]
    def get_vault_notifications(params = {}, options = {})
      request = build_request(:get_vault_notifications, params)
      request.send_request(options)
    end

    # <p>This operation initiates a job of the specified type, which can be a select, an archival retrieval,
    #          or a vault retrieval. For more information about using this operation, 
    #          see the documentation for the underlying REST API <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/api-initiate-job-post.html">Initiate
    #             a Job</a>.
    #       </p>
    # @param [Hash, Types::InitiateJobInput] params
    # @option params [String] :account_id
    #   <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
    #            vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
    #            (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
    #            credentials used to sign the request. If you use an account ID, do not include any hyphens
    #            ('-') in the ID.</p>
    # @option params [String] :vault_name
    #   <p>The name of the vault.</p>
    # @option params [Types::JobParameters] :job_parameters
    #   <p>Provides options for specifying job information.</p>
    # @example To initiate an inventory-retrieval job
    #   # The example initiates an inventory-retrieval job for the vault named examplevault.
    #   params = {
    #     account_id: "-",
    #     vault_name: "examplevault",
    #     job_parameters: {
    #       type: "inventory-retrieval",
    #       description: "My inventory job",
    #       format: "CSV",
    #       sns_topic: "arn:aws:sns:us-west-2:111111111111:Glacier-InventoryRetrieval-topic-Example"
    #     }
    #   }
    #   options = {}
    #   response = client.initiate_job(params, options)
    #   response.to_h #=>
    #   {
    #     location: "/111122223333/vaults/examplevault/jobs/HkF9p6o7yjhFx-K3CGl6fuSm6VzW9T7esGQfco8nUXVYwS0jlb5gq1JZ55yHgt5vP54ZShjoQzQVVh7vEXAMPLEjobID",
    #     job_id: " HkF9p6o7yjhFx-K3CGl6fuSm6VzW9T7esGQfco8nUXVYwS0jlb5gq1JZ55yHgt5vP54ZShjoQzQVVh7vEXAMPLEjobID"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "string", # required
    #     vault_name: "string", # required
    #     job_parameters: {
    #       format: "string",
    #       type: "string",
    #       archive_id: "string",
    #       description: "string",
    #       sns_topic: "string",
    #       retrieval_byte_range: "string",
    #       tier: "string",
    #       inventory_retrieval_parameters: {
    #         start_date: "string",
    #         end_date: "string",
    #         limit: "string",
    #         marker: "string"
    #       },
    #       select_parameters: {
    #         input_serialization: {
    #           csv: {
    #             file_header_info: "USE" # One of: ["USE", "IGNORE", "NONE"],
    #             comments: "string",
    #             quote_escape_character: "string",
    #             record_delimiter: "string",
    #             field_delimiter: "string",
    #             quote_character: "string"
    #           }
    #         },
    #         expression_type: "SQL" # One of: ["SQL"],
    #         expression: "string",
    #         output_serialization: {
    #           csv: {
    #             quote_fields: "ALWAYS" # One of: ["ALWAYS", "ASNEEDED"],
    #             quote_escape_character: "string",
    #             record_delimiter: "string",
    #             field_delimiter: "string",
    #             quote_character: "string"
    #           }
    #         }
    #       },
    #       output_location: {
    #         s3: {
    #           bucket_name: "string",
    #           prefix: "string",
    #           encryption: {
    #             encryption_type: "aws:kms" # One of: ["aws:kms", "AES256"],
    #             kms_key_id: "string",
    #             kms_context: "string"
    #           },
    #           canned_acl: "private" # One of: ["private", "public-read", "public-read-write", "aws-exec-read", "authenticated-read", "bucket-owner-read", "bucket-owner-full-control"],
    #           access_control_list: [
    #             {
    #               grantee: {
    #                 type: "AmazonCustomerByEmail" # One of: ["AmazonCustomerByEmail", "CanonicalUser", "Group"], # required
    #                 display_name: "string",
    #                 uri: "string",
    #                 id: "string",
    #                 email_address: "string"
    #               },
    #               permission: "FULL_CONTROL" # One of: ["FULL_CONTROL", "WRITE", "WRITE_ACP", "READ", "READ_ACP"]
    #             }
    #           ],
    #           tagging: {
    #             "string" => "string"
    #           },
    #           user_metadata: {
    #             "string" => "string"
    #           },
    #           storage_class: "STANDARD" # One of: ["STANDARD", "REDUCED_REDUNDANCY", "STANDARD_IA"]
    #         }
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.initiate_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     location: "string",
    #     job_id: "string",
    #     job_output_path: "string"
    #   }
    # @return [Types::InitiateJobOutput]
    def initiate_job(params = {}, options = {})
      request = build_request(:initiate_job, params)
      request.send_request(options)
    end

    # <p>This operation initiates a multipart upload. Amazon S3 Glacier creates a multipart
    #          upload resource and returns its ID in the response. The multipart upload ID is used in
    #          subsequent requests to upload parts of an archive (see <a>UploadMultipartPart</a>).</p>
    # 
    #          <p>When you initiate a multipart upload, you specify the part size in number of bytes.
    #          The part size must be a megabyte (1024 KB) multiplied by a power of 2-for example, 1048576
    #          (1 MB), 2097152 (2 MB), 4194304 (4 MB), 8388608 (8 MB), and so on. The minimum allowable
    #          part size is 1 MB, and the maximum is 4 GB.</p>
    # 
    #          <p>Every part you upload to this resource (see <a>UploadMultipartPart</a>),
    #          except the last one, must have the same size. The last one can be the same size or smaller.
    #          For example, suppose you want to upload a 16.2 MB file. If you initiate the multipart
    #          upload with a part size of 4 MB, you will upload four parts of 4 MB each and one part of
    #          0.2 MB. </p>
    # 
    #          <note>
    #             <p>You don't need to know the size of the archive when you start a multipart upload
    #             because Amazon S3 Glacier does not require you to specify the overall archive
    #             size.</p>
    #          </note>
    # 
    #          <p>After you complete the multipart upload, Amazon S3 Glacier (Glacier) removes the multipart upload
    #          resource referenced by the ID. Glacier also removes the multipart upload resource if
    #          you cancel the multipart upload or it may be removed if there is no activity for a period
    #          of 24 hours.</p>
    # 
    #          <p>An AWS account has full permission to perform all operations (actions). However, AWS
    #          Identity and Access Management (IAM) users don't have any permissions by default. You must
    #          grant them explicit permission to perform specific actions. For more information, see
    #             <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html">Access Control Using
    #             AWS Identity and Access Management (IAM)</a>.</p>
    #          <p>For conceptual information and underlying REST API, see <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/uploading-archive-mpu.html">Uploading Large Archives in
    #             Parts (Multipart Upload)</a> and <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/api-multipart-initiate-upload.html">Initiate Multipart
    #             Upload</a> in the <i>Amazon Glacier Developer Guide</i>.</p>
    # @param [Hash, Types::InitiateMultipartUploadInput] params
    # @option params [String] :account_id
    #   <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
    #            vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
    #            (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
    #            credentials used to sign the request. If you use an account ID, do not include any hyphens
    #            ('-') in the ID. </p>
    # @option params [String] :vault_name
    #   <p>The name of the vault.</p>
    # @option params [String] :archive_description
    #   <p>The archive description that you are uploading in parts.</p>
    #            <p>The part size must be a megabyte (1024 KB) multiplied by a power of 2, for example
    #            1048576 (1 MB), 2097152 (2 MB), 4194304 (4 MB), 8388608 (8 MB), and so on. The minimum
    #            allowable part size is 1 MB, and the maximum is 4 GB (4096 MB).</p>
    # @option params [String] :part_size
    #   <p>The size of each part except the last, in bytes. The last part can be smaller than
    #            this part size.</p>
    # @example To initiate a multipart upload
    #   # The example initiates a multipart upload to a vault named my-vault with a part size of 1 MiB (1024 x 1024 bytes) per file.
    #   params = {
    #     account_id: "-",
    #     part_size: "1048576",
    #     vault_name: "my-vault"
    #   }
    #   options = {}
    #   response = client.initiate_multipart_upload(params, options)
    #   response.to_h #=>
    #   {
    #     location: "/111122223333/vaults/my-vault/multipart-uploads/19gaRezEXAMPLES6Ry5YYdqthHOC_kGRCT03L9yetr220UmPtBYKk-OssZtLqyFu7sY1_lR7vgFuJV6NtcV5zpsJ",
    #     upload_id: "19gaRezEXAMPLES6Ry5YYdqthHOC_kGRCT03L9yetr220UmPtBYKk-OssZtLqyFu7sY1_lR7vgFuJV6NtcV5zpsJ"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "string", # required
    #     vault_name: "string", # required
    #     archive_description: "string",
    #     part_size: "string"
    #   }
    #   options = {}
    #   response = client.initiate_multipart_upload(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     location: "string",
    #     upload_id: "string"
    #   }
    # @return [Types::InitiateMultipartUploadOutput]
    def initiate_multipart_upload(params = {}, options = {})
      request = build_request(:initiate_multipart_upload, params)
      request.send_request(options)
    end

    # <p>This operation initiates the vault locking process by doing the following:</p>
    #          <ul>
    #             <li>
    #                <p>Installing a vault lock policy on the specified vault.</p>
    #             </li>
    #             <li>
    #                <p>Setting the lock state of vault lock to <code>InProgress</code>.</p>
    #             </li>
    #             <li>
    #                <p>Returning a lock ID, which is used to complete the vault locking
    #                process.</p>
    #             </li>
    #          </ul>
    # 
    #          <p>You can set one vault lock policy for each vault and this policy can be up to 20 KB
    #          in size. For more information about vault lock policies, see <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/vault-lock-policy.html">Amazon Glacier Access Control with
    #             Vault Lock Policies</a>. </p>
    #          <p>You must complete the vault locking process within 24 hours after the vault lock
    #          enters the <code>InProgress</code> state. After the 24 hour window ends, the lock ID
    #          expires, the vault automatically exits the <code>InProgress</code> state, and the vault
    #          lock policy is removed from the vault. You call <a>CompleteVaultLock</a> to
    #          complete the vault locking process by setting the state of the vault lock to
    #             <code>Locked</code>. </p>
    #          <p>After a vault lock is in the <code>Locked</code> state, you cannot initiate a new
    #          vault lock for the vault.</p>
    # 
    #          <p>You can abort the vault locking process by calling <a>AbortVaultLock</a>.
    #          You can get the state of the vault lock by calling <a>GetVaultLock</a>. For more
    #          information about the vault locking process, <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/vault-lock.html">Amazon Glacier Vault
    #          Lock</a>.</p>
    # 
    #          <p>If this operation is called when the vault lock is in the <code>InProgress</code>
    #          state, the operation returns an <code>AccessDeniedException</code> error. When the vault
    #          lock is in the <code>InProgress</code> state you must call <a>AbortVaultLock</a>
    #          before you can initiate a new vault lock policy. </p>
    # @param [Hash, Types::InitiateVaultLockInput] params
    # @option params [String] :account_id
    #   <p>The <code>AccountId</code> value is the AWS account ID. This value must match the AWS
    #            account ID associated with the credentials used to sign the request. You can either specify
    #            an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon
    #            Glacier uses the AWS account ID associated with the credentials used to sign the request.
    #            If you specify your account ID, do not include any hyphens ('-') in the ID.</p>
    # @option params [String] :vault_name
    #   <p>The name of the vault.</p>
    # @option params [Types::VaultLockPolicy] :policy
    #   <p>The vault lock policy as a JSON string, which uses "\" as an escape
    #            character.</p>
    # @example To initiate the vault locking process
    #   # The example initiates the vault locking process for the vault named my-vault.
    #   params = {
    #     account_id: "-",
    #     vault_name: "my-vault",
    #     policy: {
    #       policy: "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Sid\":\"Define-vault-lock\",\"Effect\":\"Deny\",\"Principal\":{\"AWS\":\"arn:aws:iam::999999999999:root\"},\"Action\":\"glacier:DeleteArchive\",\"Resource\":\"arn:aws:glacier:us-west-2:999999999999:vaults/examplevault\",\"Condition\":{\"NumericLessThanEquals\":{\"glacier:ArchiveAgeinDays\":\"365\"}}}]}"
    #     }
    #   }
    #   options = {}
    #   response = client.initiate_vault_lock(params, options)
    #   response.to_h #=>
    #   {
    #     lock_id: "AE863rKkWZU53SLW5be4DUcW"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "string", # required
    #     vault_name: "string", # required
    #     policy: {
    #       policy: "string"
    #     }
    #   }
    #   options = {}
    #   response = client.initiate_vault_lock(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     lock_id: "string"
    #   }
    # @return [Types::InitiateVaultLockOutput]
    def initiate_vault_lock(params = {}, options = {})
      request = build_request(:initiate_vault_lock, params)
      request.send_request(options)
    end

    # <p>This operation lists jobs for a vault, including jobs that are in-progress and jobs
    #          that have recently finished. The List Job operation returns a list of these jobs sorted by job initiation
    #          time.</p>
    # 
    #          <note>
    #             <p>Amazon Glacier retains recently completed jobs for a period before deleting them;
    #             however, it eventually removes completed jobs. The output of completed jobs can be
    #             retrieved. Retaining completed jobs for a period of time after they have completed
    #             enables you to get a job output in the event you miss the job completion notification or
    #             your first attempt to download it fails. For example, suppose you start an archive
    #             retrieval job to download an archive. After the job completes, you start to download the
    #             archive but encounter a network error. In this scenario, you can retry and download the
    #             archive while the job exists.</p>
    #          </note>
    # 
    #          <p>The List Jobs operation supports pagination. You should always check the response <code>Marker</code> field. 
    #          If there are no more jobs to list, the <code>Marker</code> field is set to <code>null</code>. If there are more jobs to list, 
    #          the <code>Marker</code> field is set to a non-null value, which you can use to continue the pagination of the list. 
    #          To return a list of jobs that begins at a specific job, 
    #          set the marker request parameter to the <code>Marker</code> value for that job that you obtained from a previous List Jobs request.</p>
    #       
    #          <p>You can set a maximum limit for the number of jobs returned in the response by
    #          specifying the <code>limit</code> parameter in the request. The default limit is 50. The
    #          number of jobs returned might be fewer than the limit, but the number of returned jobs
    #          never exceeds the limit.</p>
    # 
    #         <p>Additionally, you can filter the jobs list returned by specifying the optional
    #             <code>statuscode</code> parameter or <code>completed</code> parameter, or both. Using
    #          the <code>statuscode</code> parameter, you can specify to return only jobs that match
    #          either the <code>InProgress</code>, <code>Succeeded</code>, or <code>Failed</code> status.
    #          Using the <code>completed</code> parameter, you can specify to return only jobs that were
    #          completed (<code>true</code>) or jobs that were not completed
    #          (<code>false</code>).</p>
    # 
    #          <p>For more information about using this operation, 
    #          see the documentation for the underlying REST API <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/api-jobs-get.html">List Jobs</a>. </p>
    # @param [Hash, Types::ListJobsInput] params
    # @option params [String] :account_id
    #   <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
    #            vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
    #            (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
    #            credentials used to sign the request. If you use an account ID, do not include any hyphens
    #            ('-') in the ID. </p>
    # @option params [String] :vault_name
    #   <p>The name of the vault.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of jobs to be returned. The default limit is 50. The number of
    #            jobs returned might be fewer than the specified limit, but the number of returned jobs
    #            never exceeds the limit.</p>
    # @option params [String] :marker
    #   <p>An opaque string used for pagination. This value specifies the job at which the
    #            listing of jobs should begin. Get the marker value from a previous List Jobs response. You
    #            only need to include the marker if you are continuing the pagination of results started in
    #            a previous List Jobs request.</p>
    # @option params [String] :statuscode
    #   <p>The type of job status to return. You can specify the following values:
    #               <code>InProgress</code>, <code>Succeeded</code>, or <code>Failed</code>.</p>
    # @option params [String] :completed
    #   <p>The state of the jobs to return. You can specify <code>true</code> or
    #               <code>false</code>.</p>
    # @example To list jobs for a vault
    #   # The example lists jobs for the vault named my-vault.
    #   params = {
    #     account_id: "-",
    #     vault_name: "my-vault"
    #   }
    #   options = {}
    #   response = client.list_jobs(params, options)
    #   response.to_h #=>
    #   {
    #     job_list: [
    #       {
    #         vault_arn: "arn:aws:glacier:us-west-2:0123456789012:vaults/my-vault",
    #         retrieval_byte_range: "0-3145727",
    #         sns_topic: "arn:aws:sns:us-west-2:0123456789012:my-vault",
    #         completed: false,
    #         sha256_tree_hash: "9628195fcdbcbbe76cdde932d4646fa7de5f219fb39823836d81f0cc0e18aa67",
    #         job_id: "l7IL5-EkXyEY9Ws95fClzIbk2O5uLYaFdAYOi-azsX_Z8V6NH4yERHzars8wTKYQMX6nBDI9cMNHzyZJO59-8N9aHWav",
    #         archive_id: "kKB7ymWJVpPSwhGP6ycSOAekp9ZYe_--zM_mw6k76ZFGEIWQX-ybtRDvc2VkPSDtfKmQrj0IRQLSGsNuDp-AJVlu2ccmDSyDUmZwKbwbpAdGATGDiB3hHO0bjbGehXTcApVud_wyDw",
    #         job_description: "Retrieve archive on 2015-07-17",
    #         archive_size_in_bytes: 3145728,
    #         action: ArchiveRetrieval,
    #         archive_sha256_tree_hash: "9628195fcdbcbbe76cdde932d4646fa7de5f219fb39823836d81f0cc0e18aa67",
    #         creation_date: "2015-07-17T21:16:13.840Z",
    #         status_code: InProgress
    #       },
    #       {
    #         inventory_retrieval_parameters: {
    #           format: "JSON"
    #         },
    #         vault_arn: "arn:aws:glacier:us-west-2:0123456789012:vaults/my-vault",
    #         completed: false,
    #         job_id: "zbxcm3Z_3z5UkoroF7SuZKrxgGoDc3RloGduS7Eg-RO47Yc6FxsdGBgf_Q2DK5Ejh18CnTS5XW4_XqlNHS61dsO4CnMW",
    #         action: InventoryRetrieval,
    #         creation_date: "2015-07-17T20:23:41.616Z",
    #         status_code: InProgress
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "string", # required
    #     vault_name: "string", # required
    #     limit: 1,
    #     marker: "string",
    #     statuscode: "string",
    #     completed: "string"
    #   }
    #   options = {}
    #   response = client.list_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_list: [
    #       {
    #         job_id: "string",
    #         job_description: "string",
    #         action: "ArchiveRetrieval" # One of: ["ArchiveRetrieval", "InventoryRetrieval", "Select"],
    #         archive_id: "string",
    #         vault_arn: "string",
    #         creation_date: "string",
    #         completed: false,
    #         status_code: "InProgress" # One of: ["InProgress", "Succeeded", "Failed"],
    #         status_message: "string",
    #         archive_size_in_bytes: 1,
    #         inventory_size_in_bytes: 1,
    #         sns_topic: "string",
    #         completion_date: "string",
    #         sha256_tree_hash: "string",
    #         archive_sha256_tree_hash: "string",
    #         retrieval_byte_range: "string",
    #         tier: "string",
    #         inventory_retrieval_parameters: {
    #           format: "string",
    #           start_date: "DateTime",
    #           end_date: "DateTime",
    #           limit: "string",
    #           marker: "string"
    #         },
    #         job_output_path: "string",
    #         select_parameters: {
    #           input_serialization: {
    #             csv: {
    #               file_header_info: "USE" # One of: ["USE", "IGNORE", "NONE"],
    #               comments: "string",
    #               quote_escape_character: "string",
    #               record_delimiter: "string",
    #               field_delimiter: "string",
    #               quote_character: "string"
    #             }
    #           },
    #           expression_type: "SQL" # One of: ["SQL"],
    #           expression: "string",
    #           output_serialization: {
    #             csv: {
    #               quote_fields: "ALWAYS" # One of: ["ALWAYS", "ASNEEDED"],
    #               quote_escape_character: "string",
    #               record_delimiter: "string",
    #               field_delimiter: "string",
    #               quote_character: "string"
    #             }
    #           }
    #         },
    #         output_location: {
    #           s3: {
    #             bucket_name: "string",
    #             prefix: "string",
    #             encryption: {
    #               encryption_type: "aws:kms" # One of: ["aws:kms", "AES256"],
    #               kms_key_id: "string",
    #               kms_context: "string"
    #             },
    #             canned_acl: "private" # One of: ["private", "public-read", "public-read-write", "aws-exec-read", "authenticated-read", "bucket-owner-read", "bucket-owner-full-control"],
    #             access_control_list: [
    #               {
    #                 grantee: {
    #                   type: "AmazonCustomerByEmail" # One of: ["AmazonCustomerByEmail", "CanonicalUser", "Group"], # required
    #                   display_name: "string",
    #                   uri: "string",
    #                   id: "string",
    #                   email_address: "string"
    #                 },
    #                 permission: "FULL_CONTROL" # One of: ["FULL_CONTROL", "WRITE", "WRITE_ACP", "READ", "READ_ACP"]
    #               }
    #             ],
    #             tagging: {
    #               "string" => "string"
    #             },
    #             user_metadata: {
    #               "string" => "string"
    #             },
    #             storage_class: "STANDARD" # One of: ["STANDARD", "REDUCED_REDUNDANCY", "STANDARD_IA"]
    #           }
    #         }
    #       }
    #     ],
    #     marker: "string"
    #   }
    # @return [Types::ListJobsOutput]
    def list_jobs(params = {}, options = {})
      request = build_request(:list_jobs, params)
      request.send_request(options)
    end

    # <p>This operation lists in-progress multipart uploads for the specified vault. An
    #          in-progress multipart upload is a multipart upload that has been initiated by an <a>InitiateMultipartUpload</a> request, but has not yet been completed or aborted.
    #          The list returned in the List Multipart Upload response has no guaranteed order. </p>
    # 
    #          <p>The List Multipart Uploads operation supports pagination. By default, this operation
    #          returns up to 50 multipart uploads in the response. You should always check the response
    #          for a <code>marker</code> at which to continue the list; if there are no more items the
    #             <code>marker</code> is <code>null</code>. To return a list of multipart uploads that
    #          begins at a specific upload, set the <code>marker</code> request parameter to the value you
    #          obtained from a previous List Multipart Upload request. You can also limit the number of
    #          uploads returned in the response by specifying the <code>limit</code> parameter in the
    #          request.</p>
    # 
    #          <p>Note the difference between this operation and listing parts (<a>ListParts</a>). The List Multipart Uploads operation lists all multipart uploads
    #          for a vault and does not require a multipart upload ID. The List Parts operation requires a
    #          multipart upload ID since parts are associated with a single upload.</p>
    # 
    #          <p>An AWS account has full permission to perform all operations (actions). However, AWS
    #          Identity and Access Management (IAM) users don't have any permissions by default. You must
    #          grant them explicit permission to perform specific actions. For more information, see
    #             <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html">Access Control Using
    #             AWS Identity and Access Management (IAM)</a>.</p>
    # 
    #          <p>For conceptual information and the underlying REST API, see <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/working-with-archives.html">Working
    #             with Archives in Amazon S3 Glacier</a> and <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/api-multipart-list-uploads.html">List Multipart Uploads
    #          </a> in the <i>Amazon Glacier Developer Guide</i>.</p>
    # @param [Hash, Types::ListMultipartUploadsInput] params
    # @option params [String] :account_id
    #   <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
    #            vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
    #            (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
    #            credentials used to sign the request. If you use an account ID, do not include any hyphens
    #            ('-') in the ID. </p>
    # @option params [String] :vault_name
    #   <p>The name of the vault.</p>
    # @option params [Integer] :limit
    #   <p>Specifies the maximum number of uploads returned in the response body. If this value
    #            is not specified, the List Uploads operation returns up to 50 uploads.</p>
    # @option params [String] :marker
    #   <p>An opaque string used for pagination. This value specifies the upload at which the
    #            listing of uploads should begin. Get the marker value from a previous List Uploads
    #            response. You need only include the marker if you are continuing the pagination of results
    #            started in a previous List Uploads request.</p>
    # @example To list all the in-progress multipart uploads for a vault
    #   # The example lists all the in-progress multipart uploads for the vault named examplevault.
    #   params = {
    #     account_id: "-",
    #     vault_name: "examplevault"
    #   }
    #   options = {}
    #   response = client.list_multipart_uploads(params, options)
    #   response.to_h #=>
    #   {
    #     marker: "null",
    #     uploads_list: [
    #       {
    #         archive_description: "archive 1",
    #         creation_date: "2012-03-19T23:20:59.130Z",
    #         multipart_upload_id: "xsQdFIRsfJr20CW2AbZBKpRZAFTZSJIMtL2hYf8mvp8dM0m4RUzlaqoEye6g3h3ecqB_zqwB7zLDMeSWhwo65re4C4Ev",
    #         part_size_in_bytes: 4194304,
    #         vault_arn: "arn:aws:glacier:us-west-2:012345678901:vaults/examplevault"
    #       },
    #       {
    #         archive_description: "archive 2",
    #         creation_date: "2012-04-01T15:00:00.000Z",
    #         multipart_upload_id: "nPyGOnyFcx67qqX7E-0tSGiRi88hHMOwOxR-_jNyM6RjVMFfV29lFqZ3rNsSaWBugg6OP92pRtufeHdQH7ClIpSF6uJc",
    #         part_size_in_bytes: 4194304,
    #         vault_arn: "arn:aws:glacier:us-west-2:012345678901:vaults/examplevault"
    #       },
    #       {
    #         archive_description: "archive 3",
    #         creation_date: "2012-03-20T17:03:43.221Z",
    #         multipart_upload_id: "qt-RBst_7yO8gVIonIBsAxr2t-db0pE4s8MNeGjKjGdNpuU-cdSAcqG62guwV9r5jh5mLyFPzFEitTpNE7iQfHiu1XoV",
    #         part_size_in_bytes: 4194304,
    #         vault_arn: "arn:aws:glacier:us-west-2:012345678901:vaults/examplevault"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "string", # required
    #     vault_name: "string", # required
    #     limit: 1,
    #     marker: "string"
    #   }
    #   options = {}
    #   response = client.list_multipart_uploads(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     uploads_list: [
    #       {
    #         multipart_upload_id: "string",
    #         vault_arn: "string",
    #         archive_description: "string",
    #         part_size_in_bytes: 1,
    #         creation_date: "string"
    #       }
    #     ],
    #     marker: "string"
    #   }
    # @return [Types::ListMultipartUploadsOutput]
    def list_multipart_uploads(params = {}, options = {})
      request = build_request(:list_multipart_uploads, params)
      request.send_request(options)
    end

    # <p>This operation lists the parts of an archive that have been uploaded in a specific
    #          multipart upload. You can make this request at any time during an in-progress multipart
    #          upload before you complete the upload (see <a>CompleteMultipartUpload</a>. List
    #          Parts returns an error for completed uploads. The list returned in the List Parts response
    #          is sorted by part range. </p>
    # 
    #          <p>The List Parts operation supports pagination. By default, this operation returns up
    #          to 50 uploaded parts in the response. You should always check the response for a
    #             <code>marker</code> at which to continue the list; if there are no more items the
    #             <code>marker</code> is <code>null</code>. To return a list of parts that begins at a
    #          specific part, set the <code>marker</code> request parameter to the value you obtained from
    #          a previous List Parts request. You can also limit the number of parts returned in the
    #          response by specifying the <code>limit</code> parameter in the request. </p>
    # 
    #          <p>An AWS account has full permission to perform all operations (actions). However, AWS
    #          Identity and Access Management (IAM) users don't have any permissions by default. You must
    #          grant them explicit permission to perform specific actions. For more information, see
    #             <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html">Access Control Using
    #             AWS Identity and Access Management (IAM)</a>.</p>
    #          <p>For conceptual information and the underlying REST API, see <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/working-with-archives.html">Working
    #             with Archives in Amazon S3 Glacier</a> and <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/api-multipart-list-parts.html">List Parts</a> in the
    #             <i>Amazon Glacier Developer Guide</i>.</p>
    # @param [Hash, Types::ListPartsInput] params
    # @option params [String] :account_id
    #   <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
    #            vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
    #            (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
    #            credentials used to sign the request. If you use an account ID, do not include any hyphens
    #            ('-') in the ID. </p>
    # @option params [String] :vault_name
    #   <p>The name of the vault.</p>
    # @option params [String] :upload_id
    #   <p>The upload ID of the multipart upload.</p>
    # @option params [String] :marker
    #   <p>An opaque string used for pagination. This value specifies the part at which the
    #            listing of parts should begin. Get the marker value from the response of a previous List
    #            Parts response. You need only include the marker if you are continuing the pagination of
    #            results started in a previous List Parts request.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of parts to be returned. The default limit is 50. The number of
    #            parts returned might be fewer than the specified limit, but the number of returned parts
    #            never exceeds the limit.</p>
    # @example To list the parts of an archive that have been uploaded in a multipart upload
    #   # The example lists all the parts of a multipart upload.
    #   params = {
    #     account_id: "-",
    #     vault_name: "examplevault",
    #     upload_id: "OW2fM5iVylEpFEMM9_HpKowRapC3vn5sSL39_396UW9zLFUWVrnRHaPjUJddQ5OxSHVXjYtrN47NBZ-khxOjyEXAMPLE"
    #   }
    #   options = {}
    #   response = client.list_parts(params, options)
    #   response.to_h #=>
    #   {
    #     archive_description: "archive description",
    #     creation_date: "2012-03-20T17:03:43.221Z",
    #     marker: "null",
    #     multipart_upload_id: "OW2fM5iVylEpFEMM9_HpKowRapC3vn5sSL39_396UW9zLFUWVrnRHaPjUJddQ5OxSHVXjYtrN47NBZ-khxOjyEXAMPLE",
    #     part_size_in_bytes: 4194304,
    #     parts: [
    #       {
    #         range_in_bytes: "0-4194303",
    #         sha256_tree_hash: "01d34dabf7be316472c93b1ef80721f5d4"
    #       },
    #       {
    #         range_in_bytes: "4194304-8388607",
    #         sha256_tree_hash: "0195875365afda349fc21c84c099987164"
    #       }
    #     ],
    #     vault_arn: "arn:aws:glacier:us-west-2:012345678901:vaults/demo1-vault"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "string", # required
    #     vault_name: "string", # required
    #     upload_id: "string", # required
    #     marker: "string",
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.list_parts(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     multipart_upload_id: "string",
    #     vault_arn: "string",
    #     archive_description: "string",
    #     part_size_in_bytes: 1,
    #     creation_date: "string",
    #     parts: [
    #       {
    #         range_in_bytes: "string",
    #         sha256_tree_hash: "string"
    #       }
    #     ],
    #     marker: "string"
    #   }
    # @return [Types::ListPartsOutput]
    def list_parts(params = {}, options = {})
      request = build_request(:list_parts, params)
      request.send_request(options)
    end

    # <p>This operation lists the provisioned capacity units for the specified AWS
    #          account.</p>
    # @param [Hash, Types::ListProvisionedCapacityInput] params
    # @option params [String] :account_id
    #   <p>The AWS account ID of the account that owns the vault. You can either specify an AWS
    #            account ID or optionally a single '-' (hyphen), in which case Amazon S3 Glacier uses the AWS
    #            account ID associated with the credentials used to sign the request. If you use an account
    #            ID, don't include any hyphens ('-') in the ID. </p>
    # @example To list the provisioned capacity units for an account
    #   # The example lists the provisioned capacity units for an account.
    #   params = {
    #     account_id: "-"
    #   }
    #   options = {}
    #   response = client.list_provisioned_capacity(params, options)
    #   response.to_h #=>
    #   {
    #     provisioned_capacity_list: [
    #       {
    #         capacity_id: "zSaq7NzHFQDANTfQkDen4V7z",
    #         start_date: "2016-11-11T20:11:51.095Z",
    #         expiration_date: "2016-12-12T00:00:00.000Z"
    #       },
    #       {
    #         capacity_id: "yXaq7NzHFQNADTfQkDen4V7z",
    #         start_date: "2016-12-13T20:11:51.095Z",
    #         expiration_date: "2017-01-15T00:00:00.000Z"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "string", # required
    #   }
    #   options = {}
    #   response = client.list_provisioned_capacity(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     provisioned_capacity_list: [
    #       {
    #         capacity_id: "string",
    #         start_date: "string",
    #         expiration_date: "string"
    #       }
    #     ]
    #   }
    # @return [Types::ListProvisionedCapacityOutput]
    def list_provisioned_capacity(params = {}, options = {})
      request = build_request(:list_provisioned_capacity, params)
      request.send_request(options)
    end

    # <p>This operation lists all the tags attached to a vault. The operation returns an empty
    #          map if there are no tags. For more information about tags, see <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/tagging.html">Tagging Amazon S3 Glacier
    #          Resources</a>.</p>
    # @param [Hash, Types::ListTagsForVaultInput] params
    # @option params [String] :account_id
    #   <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
    #            vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
    #            (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
    #            credentials used to sign the request. If you use an account ID, do not include any hyphens
    #            ('-') in the ID.</p>
    # @option params [String] :vault_name
    #   <p>The name of the vault.</p>
    # @example To list the tags for a vault
    #   # The example lists all the tags attached to the vault examplevault.
    #   params = {
    #     account_id: "-",
    #     vault_name: "examplevault"
    #   }
    #   options = {}
    #   response = client.list_tags_for_vault(params, options)
    #   response.to_h #=>
    #   {
    #     tags: {
    #       "date" => "july2015",
    #       "id" => "1234"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "string", # required
    #     vault_name: "string", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_vault(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::ListTagsForVaultOutput]
    def list_tags_for_vault(params = {}, options = {})
      request = build_request(:list_tags_for_vault, params)
      request.send_request(options)
    end

    # <p>This operation lists all vaults owned by the calling user's account. The list
    #          returned in the response is ASCII-sorted by vault name.</p>
    # 
    #          <p>By default, this operation returns up to 10 items. If there are more vaults to
    #          list, the response <code>marker</code> field contains the vault Amazon Resource Name (ARN)
    #          at which to continue the list with a new List Vaults request; otherwise, the
    #             <code>marker</code> field is <code>null</code>. To return a list of vaults that begins
    #          at a specific vault, set the <code>marker</code> request parameter to the vault ARN you
    #          obtained from a previous List Vaults request. You can also limit the number of vaults
    #          returned in the response by specifying the <code>limit</code> parameter in the request. </p>
    # 
    #          <p>An AWS account has full permission to perform all operations (actions). However, AWS
    #          Identity and Access Management (IAM) users don't have any permissions by default. You must
    #          grant them explicit permission to perform specific actions. For more information, see
    #             <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html">Access Control Using
    #             AWS Identity and Access Management (IAM)</a>.</p>
    #          <p>For conceptual information and underlying REST API, see <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/retrieving-vault-info.html">Retrieving Vault Metadata in
    #             Amazon S3 Glacier</a> and <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/api-vaults-get.html">List Vaults </a> in the
    #             <i>Amazon Glacier Developer Guide</i>. </p>
    # @param [Hash, Types::ListVaultsInput] params
    # @option params [String] :account_id
    #   <p>The <code>AccountId</code> value is the AWS account ID. This value must match the AWS
    #            account ID associated with the credentials used to sign the request. You can either specify
    #            an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon
    #            Glacier uses the AWS account ID associated with the credentials used to sign the request.
    #            If you specify your account ID, do not include any hyphens ('-') in the ID.</p>
    # @option params [String] :marker
    #   <p>A string used for pagination. The marker specifies the vault ARN after which the
    #            listing of vaults should begin.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of vaults to be returned. The default limit is 10. The number of
    #            vaults returned might be fewer than the specified limit, but the number of returned vaults
    #            never exceeds the limit.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "string", # required
    #     marker: "string",
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.list_vaults(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     vault_list: [
    #       {
    #         vault_arn: "string",
    #         vault_name: "string",
    #         creation_date: "string",
    #         last_inventory_date: "string",
    #         number_of_archives: 1,
    #         size_in_bytes: 1
    #       }
    #     ],
    #     marker: "string"
    #   }
    # @return [Types::ListVaultsOutput]
    def list_vaults(params = {}, options = {})
      request = build_request(:list_vaults, params)
      request.send_request(options)
    end

    # <p>This operation purchases a provisioned capacity unit for an AWS account. </p>
    # @param [Hash, Types::PurchaseProvisionedCapacityInput] params
    # @option params [String] :account_id
    #   <p>The AWS account ID of the account that owns the vault. You can either specify an AWS
    #            account ID or optionally a single '-' (hyphen), in which case Amazon S3 Glacier uses the AWS
    #            account ID associated with the credentials used to sign the request. If you use an account
    #            ID, don't include any hyphens ('-') in the ID. </p>
    # @example To purchases a provisioned capacity unit for an AWS account
    #   # The example purchases provisioned capacity unit for an AWS account.
    #   params = {
    #     account_id: "-"
    #   }
    #   options = {}
    #   response = client.purchase_provisioned_capacity(params, options)
    #   response.to_h #=>
    #   {
    #     capacity_id: "zSaq7NzHFQDANTfQkDen4V7z"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "string", # required
    #   }
    #   options = {}
    #   response = client.purchase_provisioned_capacity(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     capacity_id: "string"
    #   }
    # @return [Types::PurchaseProvisionedCapacityOutput]
    def purchase_provisioned_capacity(params = {}, options = {})
      request = build_request(:purchase_provisioned_capacity, params)
      request.send_request(options)
    end

    # <p>This operation removes one or more tags from the set of tags attached to a vault. For
    #          more information about tags, see <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/tagging.html">Tagging Amazon S3 Glacier Resources</a>.
    #          This operation is idempotent. The operation will be successful, even if there are no tags
    #          attached to the vault. </p>
    # @param [Hash, Types::RemoveTagsFromVaultInput] params
    # @option params [String] :account_id
    #   <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
    #            vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
    #            (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
    #            credentials used to sign the request. If you use an account ID, do not include any hyphens
    #            ('-') in the ID.</p>
    # @option params [String] :vault_name
    #   <p>The name of the vault.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>A list of tag keys. Each corresponding tag is removed from the vault.</p>
    # @example To remove tags from a vault
    #   # The example removes two tags from the vault named examplevault.
    #   params = {
    #     account_id: "-",
    #     vault_name: "examplevault",
    #     tag_keys: [
    #       "examplekey1",
    #       "examplekey2"
    #     ]
    #   }
    #   options = {}
    #   response = client.remove_tags_from_vault(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "string", # required
    #     vault_name: "string", # required
    #     tag_keys: ["string"]
    #   }
    #   options = {}
    #   response = client.remove_tags_from_vault(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def remove_tags_from_vault(params = {}, options = {})
      request = build_request(:remove_tags_from_vault, params)
      request.send_request(options)
    end

    # <p>This operation sets and then enacts a data retrieval policy in the region specified
    #          in the PUT request. You can set one policy per region for an AWS account. The policy is
    #          enacted within a few minutes of a successful PUT operation.</p>
    #          <p>The set policy operation does not affect retrieval jobs that were in progress before
    #          the policy was enacted. For more information about data retrieval policies, see <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/data-retrieval-policy.html">Amazon
    #             Glacier Data Retrieval Policies</a>. </p>
    # @param [Hash, Types::SetDataRetrievalPolicyInput] params
    # @option params [String] :account_id
    #   <p>The <code>AccountId</code> value is the AWS account ID. This value must match the AWS
    #            account ID associated with the credentials used to sign the request. You can either specify
    #            an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon
    #            Glacier uses the AWS account ID associated with the credentials used to sign the request.
    #            If you specify your account ID, do not include any hyphens ('-') in the ID.</p>
    # @option params [Types::DataRetrievalPolicy] :policy
    #   <p>The data retrieval policy in JSON format.</p>
    # @example To set and then enact a data retrieval policy 
    #   # The example sets and then enacts a data retrieval policy.
    #   params = {
    #     account_id: "-",
    #     policy: {
    #       rules: [
    #         {
    #           strategy: "BytesPerHour",
    #           bytes_per_hour: 10737418240
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.set_data_retrieval_policy(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "string", # required
    #     policy: {
    #       rules: [
    #         {
    #           strategy: "string",
    #           bytes_per_hour: 1
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.set_data_retrieval_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def set_data_retrieval_policy(params = {}, options = {})
      request = build_request(:set_data_retrieval_policy, params)
      request.send_request(options)
    end

    # <p>This operation configures an access policy for a vault and will overwrite an existing
    #          policy. To configure a vault access policy, send a PUT request to the
    #             <code>access-policy</code> subresource of the vault. An access policy is specific to a
    #          vault and is also called a vault subresource. You can set one access policy per vault and
    #          the policy can be up to 20 KB in size. For more information about vault access policies,
    #          see <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/vault-access-policy.html">Amazon Glacier Access Control with Vault Access Policies</a>. </p>
    # @param [Hash, Types::SetVaultAccessPolicyInput] params
    # @option params [String] :account_id
    #   <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
    #            vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
    #            (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
    #            credentials used to sign the request. If you use an account ID, do not include any hyphens
    #            ('-') in the ID.</p>
    # @option params [String] :vault_name
    #   <p>The name of the vault.</p>
    # @option params [Types::VaultAccessPolicy] :policy
    #   <p>The vault access policy as a JSON string.</p>
    # @example To set the access-policy on a vault
    #   # The example configures an access policy for the vault named examplevault.
    #   params = {
    #     account_id: "-",
    #     vault_name: "examplevault",
    #     policy: {
    #       policy: "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Sid\":\"Define-owner-access-rights\",\"Effect\":\"Allow\",\"Principal\":{\"AWS\":\"arn:aws:iam::999999999999:root\"},\"Action\":\"glacier:DeleteArchive\",\"Resource\":\"arn:aws:glacier:us-west-2:999999999999:vaults/examplevault\"}]}"
    #     }
    #   }
    #   options = {}
    #   response = client.set_vault_access_policy(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "string", # required
    #     vault_name: "string", # required
    #     policy: {
    #       policy: "string"
    #     }
    #   }
    #   options = {}
    #   response = client.set_vault_access_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def set_vault_access_policy(params = {}, options = {})
      request = build_request(:set_vault_access_policy, params)
      request.send_request(options)
    end

    # <p>This operation configures notifications that will be sent when specific events happen
    #          to a vault. By default, you don't get any notifications.</p>
    # 
    #          <p>To configure vault notifications, send a PUT request to the
    #             <code>notification-configuration</code> subresource of the vault. The request should
    #          include a JSON document that provides an Amazon SNS topic and specific events for which you
    #          want Amazon S3 Glacier to send notifications to the topic.</p>
    # 
    #          <p>Amazon SNS topics must grant permission to the vault to be allowed to publish
    #          notifications to the topic. You can configure a vault to publish a notification for the
    #          following vault events:</p>
    # 
    #          <ul>
    #             <li>
    #                 <p>
    #                   <b>ArchiveRetrievalCompleted</b> This event occurs when a
    #                job that was initiated for an archive retrieval is completed (<a>InitiateJob</a>). The status of the completed job can be "Succeeded" or
    #                "Failed". The notification sent to the SNS topic is the same output as returned from
    #                   <a>DescribeJob</a>. </p>
    #             </li>
    #             <li>
    # 
    #                <p>
    #                   <b>InventoryRetrievalCompleted</b> This event occurs when a
    #                job that was initiated for an inventory retrieval is completed (<a>InitiateJob</a>). The status of the completed job can be "Succeeded" or
    #                "Failed". The notification sent to the SNS topic is the same output as returned from
    #                   <a>DescribeJob</a>. </p>
    #             </li>
    #          </ul>
    # 
    #          <p>An AWS account has full permission to perform all operations (actions). However, AWS
    #          Identity and Access Management (IAM) users don't have any permissions by default. You must
    #          grant them explicit permission to perform specific actions. For more information, see
    #             <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html">Access Control Using
    #             AWS Identity and Access Management (IAM)</a>.</p>
    #          <p>For conceptual information and underlying REST API, see <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/configuring-notifications.html">Configuring Vault
    #             Notifications in Amazon S3 Glacier</a> and <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/api-vault-notifications-put.html">Set Vault Notification
    #             Configuration </a> in the <i>Amazon Glacier Developer Guide</i>. </p>
    # @param [Hash, Types::SetVaultNotificationsInput] params
    # @option params [String] :account_id
    #   <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
    #            vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
    #            (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
    #            credentials used to sign the request. If you use an account ID, do not include any hyphens
    #            ('-') in the ID.</p>
    # @option params [String] :vault_name
    #   <p>The name of the vault.</p>
    # @option params [Types::VaultNotificationConfig] :vault_notification_config
    #   <p>Provides options for specifying notification configuration.</p>
    # @example To configure a vault to post a message to an Amazon SNS topic when jobs complete
    #   # The example sets the examplevault notification configuration.
    #   params = {
    #     account_id: "-",
    #     vault_name: "examplevault",
    #     vault_notification_config: {
    #       events: [
    #         "ArchiveRetrievalCompleted",
    #         "InventoryRetrievalCompleted"
    #       ],
    #       sns_topic: "arn:aws:sns:us-west-2:012345678901:mytopic"
    #     }
    #   }
    #   options = {}
    #   response = client.set_vault_notifications(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "string", # required
    #     vault_name: "string", # required
    #     vault_notification_config: {
    #       sns_topic: "string",
    #       events: ["string"]
    #     }
    #   }
    #   options = {}
    #   response = client.set_vault_notifications(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def set_vault_notifications(params = {}, options = {})
      request = build_request(:set_vault_notifications, params)
      request.send_request(options)
    end

    # <p>This operation adds an archive to a vault. This is a synchronous operation, and for a
    #          successful upload, your data is durably persisted. Amazon S3 Glacier returns the archive ID in
    #          the <code>x-amz-archive-id</code> header of the response. </p>
    # 
    #          <p>You must use the archive ID to access your data in Amazon S3 Glacier. After you upload
    #          an archive, you should save the archive ID returned so that you can retrieve or delete the
    #          archive later. Besides saving the archive ID, you can also index it and give it a friendly
    #          name to allow for better searching. You can also use the optional archive description field
    #          to specify how the archive is referred to in an external index of archives, such as you
    #          might create in Amazon DynamoDB. You can also get the vault inventory to obtain a list of
    #          archive IDs in a vault. For more information, see <a>InitiateJob</a>. </p>
    # 
    #          <p>You must provide a SHA256 tree hash of the data you are uploading. For information
    #          about computing a SHA256 tree hash, see <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/checksum-calculations.html">Computing Checksums</a>. </p>
    # 
    #          <p>You can optionally specify an archive description of up to 1,024 printable ASCII
    #          characters. You can get the archive description when you either retrieve the archive or get
    #          the vault inventory. For more information, see <a>InitiateJob</a>. Amazon
    #          Glacier does not interpret the description in any way. An archive description does not need
    #          to be unique. You cannot use the description to retrieve or sort the archive list. </p>
    # 
    #          <p>Archives are immutable. After you upload an archive, you cannot edit the archive or
    #          its description.</p>
    # 
    #          <p>An AWS account has full permission to perform all operations (actions). However, AWS
    #          Identity and Access Management (IAM) users don't have any permissions by default. You must
    #          grant them explicit permission to perform specific actions. For more information, see
    #             <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html">Access Control Using
    #             AWS Identity and Access Management (IAM)</a>.</p>
    #          <p> For conceptual information and underlying REST API, see <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/uploading-an-archive.html">Uploading an Archive in Amazon
    #             Glacier</a> and <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/api-archive-post.html">Upload Archive</a> in the
    #             <i>Amazon Glacier Developer Guide</i>. </p>
    # @param [Hash, Types::UploadArchiveInput] params
    # @option params [String] :vault_name
    #   <p>The name of the vault.</p>
    # @option params [String] :account_id
    #   <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
    #            vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
    #            (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
    #            credentials used to sign the request. If you use an account ID, do not include any hyphens
    #            ('-') in the ID. </p>
    # @option params [String] :archive_description
    #   <p>The optional description of the archive you are uploading.</p>
    # @option params [String] :checksum
    #   <p>The SHA256 tree hash of the data being uploaded.</p>
    # @option params [String] :body
    #   <p>The data to upload.</p>
    # @example To upload an archive
    #   # The example adds an archive to a vault.
    #   params = {
    #     vault_name: "my-vault",
    #     account_id: "-",
    #     archive_description: "",
    #     checksum: "",
    #     body: "example-data-to-upload"
    #   }
    #   options = {}
    #   response = client.upload_archive(params, options)
    #   response.to_h #=>
    #   {
    #     archive_id: "kKB7ymWJVpPSwhGP6ycSOAekp9ZYe_--zM_mw6k76ZFGEIWQX-ybtRDvc2VkPSDtfKmQrj0IRQLSGsNuDp-AJVlu2ccmDSyDUmZwKbwbpAdGATGDiB3hHO0bjbGehXTcApVud_wyDw",
    #     checksum: "969fb39823836d81f0cc028195fcdbcbbe76cdde932d4646fa7de5f21e18aa67",
    #     location: "/0123456789012/vaults/my-vault/archives/kKB7ymWJVpPSwhGP6ycSOAekp9ZYe_--zM_mw6k76ZFGEIWQX-ybtRDvc2VkPSDtfKmQrj0IRQLSGsNuDp-AJVlu2ccmDSyDUmZwKbwbpAdGATGDiB3hHO0bjbGehXTcApVud_wyDw"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     vault_name: "string", # required
    #     account_id: "string", # required
    #     archive_description: "string",
    #     checksum: "string",
    #     body: File.read("source_file")
    #   }
    #   options = {}
    #   response = client.upload_archive(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     location: "string",
    #     checksum: "string",
    #     archive_id: "string"
    #   }
    # @return [Types::UploadArchiveOutput]
    def upload_archive(params = {}, options = {})
      request = build_request(:upload_archive, params)
      request.send_request(options)
    end

    # <p>This operation uploads a part of an archive. You can upload archive parts in any
    #          order. You can also upload them in parallel. You can upload up to 10,000 parts for a
    #          multipart upload.</p>
    # 
    #          <p>Amazon Glacier rejects your upload part request if any of the following conditions is
    #          true:</p>
    # 
    #          <ul>
    #             <li>
    #                <p>
    #                   <b>SHA256 tree hash does not match</b>To ensure that part
    #                data is not corrupted in transmission, you compute a SHA256 tree hash of the part and
    #                include it in your request. Upon receiving the part data, Amazon S3 Glacier also
    #                computes a SHA256 tree hash. If these hash values don't match, the operation fails.
    #                For information about computing a SHA256 tree hash, see <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/checksum-calculations.html">Computing
    #                   Checksums</a>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Part size does not match</b>The size of each part except
    #                the last must match the size specified in the corresponding <a>InitiateMultipartUpload</a> request. The size of the last part must be the
    #                same size as, or smaller than, the specified size.</p>
    #                <note>
    #                   <p>If you upload a part whose size is smaller than the part size you specified
    #                   in your initiate multipart upload request and that part is not the last part, then
    #                   the upload part request will succeed. However, the subsequent Complete Multipart
    #                   Upload request will fail.</p>
    #                </note>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Range does not align</b>The byte range value in the
    #                request does not align with the part size specified in the corresponding initiate
    #                request. For example, if you specify a part size of 4194304 bytes (4 MB), then 0 to
    #                4194303 bytes (4 MB - 1) and 4194304 (4 MB) to 8388607 (8 MB - 1) are valid part
    #                ranges. However, if you set a range value of 2 MB to 6 MB, the range does not align
    #                with the part size and the upload will fail. </p>
    #             </li>
    #          </ul>
    # 
    #          <p>This operation is idempotent. If you upload the same part multiple times, the data
    #          included in the most recent request overwrites the previously uploaded data.</p>
    # 
    #          <p>An AWS account has full permission to perform all operations (actions). However, AWS
    #          Identity and Access Management (IAM) users don't have any permissions by default. You must
    #          grant them explicit permission to perform specific actions. For more information, see
    #             <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html">Access Control Using
    #             AWS Identity and Access Management (IAM)</a>.</p>
    #          <p> For conceptual information and underlying REST API, see <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/uploading-archive-mpu.html">Uploading Large Archives in
    #             Parts (Multipart Upload)</a> and <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/api-upload-part.html">Upload Part </a> in the
    #             <i>Amazon Glacier Developer Guide</i>.</p>
    # @param [Hash, Types::UploadMultipartPartInput] params
    # @option params [String] :account_id
    #   <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
    #            vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
    #            (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
    #            credentials used to sign the request. If you use an account ID, do not include any hyphens
    #            ('-') in the ID. </p>
    # @option params [String] :vault_name
    #   <p>The name of the vault.</p>
    # @option params [String] :upload_id
    #   <p>The upload ID of the multipart upload.</p>
    # @option params [String] :checksum
    #   <p>The SHA256 tree hash of the data being uploaded.</p>
    # @option params [String] :range
    #   <p>Identifies the range of bytes in the assembled archive that will be uploaded in this
    #            part. Amazon S3 Glacier uses this information to assemble the archive in the proper sequence.
    #            The format of this header follows RFC 2616. An example header is Content-Range:bytes
    #            0-4194303/*.</p>
    # @option params [String] :body
    #   <p>The data to upload.</p>
    # @example To upload the first part of an archive
    #   # The example uploads the first 1 MiB (1024 x 1024 bytes) part of an archive.
    #   params = {
    #     account_id: "-",
    #     vault_name: "examplevault",
    #     upload_id: "19gaRezEXAMPLES6Ry5YYdqthHOC_kGRCT03L9yetr220UmPtBYKk-OssZtLqyFu7sY1_lR7vgFuJV6NtcV5zpsJ",
    #     checksum: "c06f7cd4baacb087002a99a5f48bf953",
    #     range: "bytes 0-1048575/*",
    #     body: "part1"
    #   }
    #   options = {}
    #   response = client.upload_multipart_part(params, options)
    #   response.to_h #=>
    #   {
    #     checksum: "c06f7cd4baacb087002a99a5f48bf953"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "string", # required
    #     vault_name: "string", # required
    #     upload_id: "string", # required
    #     checksum: "string",
    #     range: "string",
    #     body: File.read("source_file")
    #   }
    #   options = {}
    #   response = client.upload_multipart_part(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     checksum: "string"
    #   }
    # @return [Types::UploadMultipartPartOutput]
    def upload_multipart_part(params = {}, options = {})
      request = build_request(:upload_multipart_part, params)
      request.send_request(options)
    end

    # Polls an API operation until a resource enters a desired state.
    #
    # ## Basic Usage
    #
    # A waiter will call an API operation until:
    #
    # * It is successful
    # * It enters a terminal state
    # * It reaches the maximum wait time allowed
    #
    # In between attempts, the waiter will sleep.
    #
    #     # polls in a loop, sleeping between attempts
    #     client.wait_until(waiter_name, params, options)
    #
    # ## Configuration
    #
    # You must configure the maximum amount of time in seconds a
    # waiter should wait for. You may also configure the minimum
    # and maximum amount of time in seconds to delay between
    # retries. You can pass these configuration as the final
    # arguments hash.
    #
    #     weather = Weather::Client.new
    #
    #     # poll for a maximum of 25 seconds
    #     weather.wait_until(:forecast_exists, { forecast_id: '1' }, {
    #       max_wait_time: 25,
    #       min_delay: 2,
    #       max_delay: 10
    #     })
    #
    # ## Handling Errors
    #
    # When a waiter is unsuccessful, it will raise an error.
    # All the failure errors extend from
    # {Smithy::Client::Waiters::WaiterFailed}.
    #
    #     weather = Weather::Client.new
    #     begin
    #       weather.wait_until(:forecast_exists, { forecast_id: '1' }, max_wait_time: 60)
    #     rescue Smithy::Client::Waiters::WaiterFailed
    #       # resource did not enter the desired state in time
    #     end
    #
    # @param [Symbol] waiter_name
    # @param [Hash] params ({})
    # @param [Hash] options ({})
    # @option options [Integer] :max_wait_time
    # @option options [Integer] :min_delay
    # @option options [Integer] :max_delay
    # @return [nil] Returns `nil` if the waiter was successful.
    # @raise [FailureStateError] Raised when the waiter terminates
    #   because the waiter has entered a state that it will not transition
    #   out of, preventing success.
    # @raise [MaxWaitTimeExceededError] Raised when the configured
    #   maximum wait time is reached and the waiter is not yet successful.
    # @raise [UnexpectedError] Raised when an error that is not
    #   expected is encountered while polling for a resource.
    # @raise [NoSuchWaiterError] Raised when you request to wait
    #   for an unknown state.
    def wait_until(waiter_name, params = {}, options = {})
      waiter(waiter_name, options).wait(params)
    end

    # @api private
    def build_request(operation_name, params)
      handlers = @handlers.for(operation_name)
      context = Smithy::Client::HandlerContext.new(
        operation_name: operation_name,
        operation: config.service.operation(operation_name),
        client: self,
        config: config,
        params: params
      )
      context[:gem_name] = 'aws-sdk-glacier'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Request.new(handlers: handlers, context: context)
    end

    private

    def waiters
      {
        vault_exists: Waiters::VaultExists,
        vault_not_exists: Waiters::VaultNotExists
      }
    end

    class << self
      # @api private
      attr_reader :identifier

      # @api private
      def auth_parameters
        AuthParameters
      end

      # @api private
      def auth_resolver
        AuthResolver
      end

      # @api private
      def errors_module
        Errors
      end

      # @api private
      def protocols
        {
          rest_json: Aws::Core::RestJson
        }
      end
    end
  end
end
