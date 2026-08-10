# frozen_string_literal: true

# This is generated code!

require_relative 'plugins/endpoint'
require 'smithy-client/plugins/checksum_required'
require 'smithy-client/plugins/content_length'
require 'smithy-client/plugins/default_params'
require 'smithy-client/plugins/host_prefix'
require 'smithy-client/plugins/idempotency_token'
require 'smithy-client/plugins/logging'
require 'smithy-client/plugins/net_http'
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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:qldb)

module Aws::QLDB
  # An API client for Aws::QLDB.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AmazonQLDB
    @identifier = :qldb

    add_plugin(::Aws::QLDB::Plugins::Endpoint)
    add_plugin(Smithy::Client::Plugins::ChecksumRequired)
    add_plugin(Smithy::Client::Plugins::ContentLength)
    add_plugin(Smithy::Client::Plugins::DefaultParams)
    add_plugin(Smithy::Client::Plugins::HostPrefix)
    add_plugin(Smithy::Client::Plugins::IdempotencyToken)
    add_plugin(Smithy::Client::Plugins::Logging)
    add_plugin(Smithy::Client::Plugins::NetHTTP)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::QLDB::EndpointProvider)
    #  An object that provides an endpoint to use for the request.
    # @option options [String] :http_ca_file
    #  The path to a CA certification file in PEM format. Defaults to `nil` which uses
    #  the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-ca_file Net::HTTP#ca_file}.
    # @option options [String] :http_ca_path
    #  The path of to CA directory containing certification files in PEM format. Defaults to
    #  `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-ca_path Net::HTTP#ca_path}.
    # @option options [OpenSSL::X509::Certificate] :http_cert
    #  Sets the OpenSSL::X509::Certificate object to be used for client certification. Defaults
    #  to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-cert Net::HTTP#cert}.
    # @option options [OpenSSL::X509::Store] :http_cert_store
    #  Sets the OpenSSL::X509::Store to be used for verifying peer certificate. Defaults to
    #  `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-cert_store Net::HTTP#cert_store}.
    # @option options [Numeric] :http_continue_timeout
    #  Sets the continue timeout value, which is the number of seconds to wait for an
    #  expected 100 Continue response. If the HTTP object does not receive a response
    #  in this many seconds it sends the request body. Defaults to `nil` which uses the
    #  Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-continue_timeout Net::HTTP#continue_timeout}.
    # @option options [Boolean] :http_debug_output
    #  When `true`, Net::HTTP debug output will be sent to the configured logger.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#method-i-set_debug_output Net::HTTP#set_debug_output}.
    # @option options [Numeric] :http_keep_alive_timeout
    #  The number of seconds to keep the connection open after a request is sent. If a
    #  new request is made during the given interval, the still-open connection is used;
    #  otherwise the connection will have been closed and a new connection is opened.
    #  Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-keep_alive_timeout Net::HTTP#keep_alive_timeout}.
    # @option options [OpenSSL::PKey::RSA, OpenSSL::PKey::DSA] :http_key
    #  Sets the OpenSSL::PKey object to be used for client private key. Defaults to `nil` which
    #  uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-key Net::HTTP#key}.
    # @option options [Numeric] :http_open_timeout
    #  The number of seconds to wait for a connection to open. If the connection is not
    #  made in the given interval, an exception is raised. Defaults to `nil` which uses
    #  the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-open_timeout Net::HTTP#open_timeout}.
    # @option options [URI::HTTP, String] :http_proxy
    #  A proxy to send requests through. Formatted like 'http://proxy.com:123'.
    # @option options [Numeric] :http_read_timeout
    #  The number of seconds to wait for one block to be read (via one read(2) call).
    #  Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-read_timeout Net::HTTP#read_timeout}.
    # @option options [Numeric] :http_ssl_timeout
    #  Sets the SSL timeout seconds. Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-ssl_timeout Net::HTTP#ssl_timeout}.
    # @option options [Integer] :http_verify_mode (OpenSSL::SSL::VERIFY_PEER)
    #  Sets the verify mode for SSL. Defaults to `OpenSSL::SSL::VERIFY_PEER`.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-verify_mode Net::HTTP#verify_mode}.
    # @option options [Numeric] :http_write_timeout
    #  The number of seconds to wait for one block to be written (via one write(2) call).
    #  Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-write_timeout Net::HTTP#write_timeout}.
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
    # @option options [Boolean] :stub_responses
    #  When `true`, the client will return stubbed responses instead of networking requests.
    #  By default fake responses are generated and returned. You can specify the response data
    #  to return or errors to raise by calling {Smithy::Client::Stubs#stub_responses}.
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

    # <p>Ends a given Amazon QLDB journal stream. Before a stream can be canceled, its current
    #          status must be <code>ACTIVE</code>.</p>
    #          <p>You can't restart a stream after you cancel it. Canceled QLDB stream resources are
    #          subject to a 7-day retention period, so they are automatically deleted after this limit
    #          expires.</p>
    # @param [Hash, Types::CancelJournalKinesisStreamRequest] params
    # @option params [String] :ledger_name
    #   <p>The name of the ledger.</p>
    # @option params [String] :stream_id
    #   <p>The UUID (represented in Base62-encoded text) of the QLDB journal stream to be
    #            canceled.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     ledger_name: "LedgerName", # required
    #     stream_id: "UniqueId", # required
    #   }
    #   options = {}
    #   response = client.cancel_journal_kinesis_stream(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     stream_id: "UniqueId"
    #   }
    # @return [Types::CancelJournalKinesisStreamResponse]
    def cancel_journal_kinesis_stream(params = {}, options = {})
      request = build_request(:cancel_journal_kinesis_stream, params)
      request.send_request(options)
    end

    # <p>Creates a new ledger in your Amazon Web Services account in the current Region.</p>
    # @param [Hash, Types::CreateLedgerRequest] params
    # @option params [String] :name
    #   <p>The name of the ledger that you want to create. The name must be unique among all of the
    #            ledgers in your Amazon Web Services account in the current Region.</p>
    #            <p>Naming constraints for ledger names are defined in <a href="https://docs.aws.amazon.com/qldb/latest/developerguide/limits.html#limits.naming">Quotas in Amazon QLDB</a>
    #            in the <i>Amazon QLDB Developer Guide</i>.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The key-value pairs to add as tags to the ledger that you want to create. Tag keys are
    #            case sensitive. Tag values are case sensitive and can be null.</p>
    # @option params [String] :permissions_mode
    #   <p>The permissions mode to assign to the ledger that you want to create. This parameter can
    #            have one of the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ALLOW_ALL</code>: A legacy permissions mode that enables access control with
    #                  API-level granularity for ledgers.</p>
    #                  <p>This mode allows users who have the <code>SendCommand</code> API permission for
    #                  this ledger to run all PartiQL commands (hence, <code>ALLOW_ALL</code>) on any tables
    #                  in the specified ledger. This mode disregards any table-level or command-level IAM
    #                  permissions policies that you create for the ledger.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>STANDARD</code>: (<i>Recommended</i>) A permissions mode that
    #                  enables access control with finer granularity for ledgers, tables, and PartiQL
    #                  commands.</p>
    #                  <p>By default, this mode denies all user requests to run any PartiQL commands on any
    #                  tables in this ledger. To allow PartiQL commands to run, you must create IAM
    #                  permissions policies for specific table resources and PartiQL actions, in addition to
    #                  the <code>SendCommand</code> API permission for the ledger. For information, see
    #                     <a href="https://docs.aws.amazon.com/qldb/latest/developerguide/getting-started-standard-mode.html">Getting
    #                     started with the standard permissions mode</a> in the <i>Amazon QLDB
    #                     Developer Guide</i>.</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>We strongly recommend using the <code>STANDARD</code> permissions mode to maximize
    #               the security of your ledger data.</p>
    #            </note>
    # @option params [Boolean] :deletion_protection
    #   <p>Specifies whether the ledger is protected from being deleted by any user. If not defined during
    #         ledger creation, this feature is enabled (<code>true</code>) by default.</p>
    #            <p>If deletion protection is enabled, you must first disable it before you can delete the
    #         ledger. You can disable it by calling the <code>UpdateLedger</code> operation to set this parameter to <code>false</code>.</p>
    # @option params [String] :kms_key
    #   <p>The key in Key Management Service (KMS) to use for encryption of data at rest in the ledger. For
    #            more information, see <a href="https://docs.aws.amazon.com/qldb/latest/developerguide/encryption-at-rest.html">Encryption at rest</a> in
    #            the <i>Amazon QLDB Developer Guide</i>.</p>
    #            <p>Use one of the following options to specify this parameter:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>AWS_OWNED_KMS_KEY</code>: Use an KMS key that is owned and managed by Amazon Web Services
    #                  on your behalf.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Undefined</b>: By default, use an Amazon Web Services owned KMS
    #                  key.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>A valid symmetric customer managed KMS key</b>: Use
    #                  the specified symmetric encryption KMS key in your account that you create, own, and
    #                  manage.</p>
    #                  <p>Amazon QLDB does not support asymmetric keys. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html">Using symmetric and asymmetric keys</a> in the <i>Key Management Service Developer
    #                     Guide</i>.</p>
    #               </li>
    #            </ul>
    #            <p>To specify a customer managed KMS key, you can use its key ID, Amazon Resource Name
    #            (ARN), alias name, or alias ARN. When using an alias name, prefix it with
    #               <code>"alias/"</code>. To specify a key in a different Amazon Web Services account, you must use the key
    #            ARN or alias ARN.</p>
    #            <p>For example:</p>
    #            <ul>
    #               <li>
    #                  <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Key ARN:
    #                     <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Alias name: <code>alias/ExampleAlias</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Alias ARN:
    #                  <code>arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id">Key identifiers (KeyId)</a> in
    #            the <i>Key Management Service Developer Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "LedgerName", # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     permissions_mode: "ALLOW_ALL" # One of: ["ALLOW_ALL", "STANDARD"], # required
    #     deletion_protection: false,
    #     kms_key: "KmsKey"
    #   }
    #   options = {}
    #   response = client.create_ledger(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "LedgerName",
    #     arn: "Arn",
    #     state: "CREATING" # One of: ["CREATING", "ACTIVE", "DELETING", "DELETED"],
    #     creation_date_time: Time.now,
    #     permissions_mode: "ALLOW_ALL" # One of: ["ALLOW_ALL", "STANDARD"],
    #     deletion_protection: false,
    #     kms_key_arn: "Arn"
    #   }
    # @return [Types::CreateLedgerResponse]
    def create_ledger(params = {}, options = {})
      request = build_request(:create_ledger, params)
      request.send_request(options)
    end

    # <p>Deletes a ledger and all of its contents. This action is irreversible.</p>
    #          <p>If deletion protection is enabled, you must first disable it before you can delete the
    #       ledger. You can disable it by calling the <code>UpdateLedger</code> operation to set this parameter to <code>false</code>.</p>
    # @param [Hash, Types::DeleteLedgerRequest] params
    # @option params [String] :name
    #   <p>The name of the ledger that you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "LedgerName", # required
    #   }
    #   options = {}
    #   response = client.delete_ledger(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_ledger(params = {}, options = {})
      request = build_request(:delete_ledger, params)
      request.send_request(options)
    end

    # <p>Returns detailed information about a given Amazon QLDB journal stream. The output
    #          includes the Amazon Resource Name (ARN), stream name, current status, creation time, and
    #          the parameters of the original stream creation request.</p>
    #          <p>This action does not return any expired journal streams. For more information, see
    #             <a href="https://docs.aws.amazon.com/qldb/latest/developerguide/streams.create.html#streams.create.states.expiration">Expiration for terminal streams</a> in the <i>Amazon QLDB Developer
    #             Guide</i>.</p>
    # @param [Hash, Types::DescribeJournalKinesisStreamRequest] params
    # @option params [String] :ledger_name
    #   <p>The name of the ledger.</p>
    # @option params [String] :stream_id
    #   <p>The UUID (represented in Base62-encoded text) of the QLDB journal stream to
    #            describe.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     ledger_name: "LedgerName", # required
    #     stream_id: "UniqueId", # required
    #   }
    #   options = {}
    #   response = client.describe_journal_kinesis_stream(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     stream: {
    #       ledger_name: "LedgerName", # required
    #       creation_time: Time.now,
    #       inclusive_start_time: Time.now,
    #       exclusive_end_time: Time.now,
    #       role_arn: "Arn", # required
    #       stream_id: "UniqueId", # required
    #       arn: "Arn",
    #       status: "ACTIVE" # One of: ["ACTIVE", "COMPLETED", "CANCELED", "FAILED", "IMPAIRED"], # required
    #       kinesis_configuration: { # required
    #         stream_arn: "Arn", # required
    #         aggregation_enabled: false
    #       },
    #       error_cause: "KINESIS_STREAM_NOT_FOUND" # One of: ["KINESIS_STREAM_NOT_FOUND", "IAM_PERMISSION_REVOKED"],
    #       stream_name: "StreamName", # required
    #     }
    #   }
    # @return [Types::DescribeJournalKinesisStreamResponse]
    def describe_journal_kinesis_stream(params = {}, options = {})
      request = build_request(:describe_journal_kinesis_stream, params)
      request.send_request(options)
    end

    # <p>Returns information about a journal export job, including the ledger name, export ID,
    #          creation time, current status, and the parameters of the original export creation
    #          request.</p>
    #          <p>This action does not return any expired export jobs. For more information, see <a href="https://docs.aws.amazon.com/qldb/latest/developerguide/export-journal.request.html#export-journal.request.expiration">Export job expiration</a> in the <i>Amazon QLDB Developer
    #          Guide</i>.</p>
    #          <p>If the export job with the given <code>ExportId</code> doesn't exist, then throws
    #             <code>ResourceNotFoundException</code>.</p>
    #          <p>If the ledger with the given <code>Name</code> doesn't exist, then throws
    #             <code>ResourceNotFoundException</code>.</p>
    # @param [Hash, Types::DescribeJournalS3ExportRequest] params
    # @option params [String] :name
    #   <p>The name of the ledger.</p>
    # @option params [String] :export_id
    #   <p>The UUID (represented in Base62-encoded text) of the journal export job to
    #            describe.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "LedgerName", # required
    #     export_id: "UniqueId", # required
    #   }
    #   options = {}
    #   response = client.describe_journal_s3_export(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     export_description: { # required
    #       ledger_name: "LedgerName", # required
    #       export_id: "UniqueId", # required
    #       export_creation_time: Time.now, # required
    #       status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "COMPLETED", "CANCELLED"], # required
    #       inclusive_start_time: Time.now, # required
    #       exclusive_end_time: Time.now, # required
    #       s3_export_configuration: { # required
    #         bucket: "S3Bucket", # required
    #         prefix: "S3Prefix", # required
    #         encryption_configuration: { # required
    #           object_encryption_type: "SSE_KMS" # One of: ["SSE_KMS", "SSE_S3", "NO_ENCRYPTION"], # required
    #           kms_key_arn: "Arn"
    #         }
    #       },
    #       role_arn: "Arn", # required
    #       output_format: "ION_BINARY" # One of: ["ION_BINARY", "ION_TEXT", "JSON"]
    #     }
    #   }
    # @return [Types::DescribeJournalS3ExportResponse]
    def describe_journal_s3_export(params = {}, options = {})
      request = build_request(:describe_journal_s3_export, params)
      request.send_request(options)
    end

    # <p>Returns information about a ledger, including its state, permissions mode, encryption at
    #          rest settings, and when it was created.</p>
    # @param [Hash, Types::DescribeLedgerRequest] params
    # @option params [String] :name
    #   <p>The name of the ledger that you want to describe.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "LedgerName", # required
    #   }
    #   options = {}
    #   response = client.describe_ledger(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "LedgerName",
    #     arn: "Arn",
    #     state: "CREATING" # One of: ["CREATING", "ACTIVE", "DELETING", "DELETED"],
    #     creation_date_time: Time.now,
    #     permissions_mode: "ALLOW_ALL" # One of: ["ALLOW_ALL", "STANDARD"],
    #     deletion_protection: false,
    #     encryption_description: {
    #       kms_key_arn: "Arn", # required
    #       encryption_status: "ENABLED" # One of: ["ENABLED", "UPDATING", "KMS_KEY_INACCESSIBLE"], # required
    #       inaccessible_kms_key_date_time: Time.now
    #     }
    #   }
    # @return [Types::DescribeLedgerResponse]
    def describe_ledger(params = {}, options = {})
      request = build_request(:describe_ledger, params)
      request.send_request(options)
    end

    # <p>Exports journal contents within a date and time range from a ledger into a specified
    #          Amazon Simple Storage Service (Amazon S3) bucket. A journal export job can write the data objects in either the text
    #          or binary representation of Amazon Ion format, or in <i>JSON Lines</i> text
    #          format.</p>
    #          <p>If the ledger with the given <code>Name</code> doesn't exist, then throws
    #             <code>ResourceNotFoundException</code>.</p>
    #          <p>If the ledger with the given <code>Name</code> is in <code>CREATING</code> status, then
    #          throws <code>ResourcePreconditionNotMetException</code>.</p>
    #          <p>You can initiate up to two concurrent journal export requests for each ledger. Beyond
    #          this limit, journal export requests throw <code>LimitExceededException</code>.</p>
    # @param [Hash, Types::ExportJournalToS3Request] params
    # @option params [String] :name
    #   <p>The name of the ledger.</p>
    # @option params [Time] :inclusive_start_time
    #   <p>The inclusive start date and time for the range of journal contents to export.</p>
    #            <p>The <code>InclusiveStartTime</code> must be in <code>ISO 8601</code> date and time
    #            format and in Universal Coordinated Time (UTC). For example:
    #               <code>2019-06-13T21:36:34Z</code>.</p>
    #            <p>The <code>InclusiveStartTime</code> must be before <code>ExclusiveEndTime</code>.</p>
    #            <p>If you provide an <code>InclusiveStartTime</code> that is before the ledger's
    #               <code>CreationDateTime</code>, Amazon QLDB defaults it to the ledger's
    #               <code>CreationDateTime</code>.</p>
    # @option params [Time] :exclusive_end_time
    #   <p>The exclusive end date and time for the range of journal contents to export.</p>
    #            <p>The <code>ExclusiveEndTime</code> must be in <code>ISO 8601</code> date and time format
    #            and in Universal Coordinated Time (UTC). For example:
    #            <code>2019-06-13T21:36:34Z</code>.</p>
    #            <p>The <code>ExclusiveEndTime</code> must be less than or equal to the current UTC date and
    #            time.</p>
    # @option params [Types::S3ExportConfiguration] :s3_export_configuration
    #   <p>The configuration settings of the Amazon S3 bucket destination for your export
    #            request.</p>
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that grants QLDB permissions for a
    #            journal export job to do the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Write objects into your Amazon S3 bucket.</p>
    #               </li>
    #               <li>
    #                  <p>(Optional) Use your customer managed key in Key Management Service (KMS) for server-side
    #                  encryption of your exported data.</p>
    #               </li>
    #            </ul>
    #            <p>To pass a role to QLDB when requesting a journal export, you must have permissions to
    #            perform the <code>iam:PassRole</code> action on the IAM role resource. This is required for
    #            all journal export requests.</p>
    # @option params [String] :output_format
    #   <p>The output format of your exported journal data. A journal export job can write the data
    #            objects in either the text or binary representation of <a href="https://docs.aws.amazon.com/qldb/latest/developerguide/ion.html">Amazon Ion</a> format, or in <a href="https://jsonlines.org/">JSON Lines</a> text format.</p>
    #            <p>Default: <code>ION_TEXT</code>
    #            </p>
    #            <p>In JSON Lines format, each journal block in an exported data object is a valid JSON
    #            object that is delimited by a newline. You can use this format to directly integrate JSON
    #            exports with analytics tools such as Amazon Athena and Glue
    #            because these services can parse newline-delimited JSON automatically.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "LedgerName", # required
    #     inclusive_start_time: Time.now, # required
    #     exclusive_end_time: Time.now, # required
    #     s3_export_configuration: { # required
    #       bucket: "S3Bucket", # required
    #       prefix: "S3Prefix", # required
    #       encryption_configuration: { # required
    #         object_encryption_type: "SSE_KMS" # One of: ["SSE_KMS", "SSE_S3", "NO_ENCRYPTION"], # required
    #         kms_key_arn: "Arn"
    #       }
    #     },
    #     role_arn: "Arn", # required
    #     output_format: "ION_BINARY" # One of: ["ION_BINARY", "ION_TEXT", "JSON"]
    #   }
    #   options = {}
    #   response = client.export_journal_to_s3(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     export_id: "UniqueId", # required
    #   }
    # @return [Types::ExportJournalToS3Response]
    def export_journal_to_s3(params = {}, options = {})
      request = build_request(:export_journal_to_s3, params)
      request.send_request(options)
    end

    # <p>Returns a block object at a specified address in a journal. Also returns a proof of the
    #          specified block for verification if <code>DigestTipAddress</code> is provided.</p>
    #          <p>For information about the data contents in a block, see <a href="https://docs.aws.amazon.com/qldb/latest/developerguide/journal-contents.html">Journal contents</a> in the
    #             <i>Amazon QLDB Developer Guide</i>.</p>
    #          <p>If the specified ledger doesn't exist or is in <code>DELETING</code> status, then throws
    #             <code>ResourceNotFoundException</code>.</p>
    #          <p>If the specified ledger is in <code>CREATING</code> status, then throws
    #             <code>ResourcePreconditionNotMetException</code>.</p>
    #          <p>If no block exists with the specified address, then throws
    #             <code>InvalidParameterException</code>.</p>
    # @param [Hash, Types::GetBlockRequest] params
    # @option params [String] :name
    #   <p>The name of the ledger.</p>
    # @option params [Types::ValueHolder] :block_address
    #   <p>The location of the block that you want to request. An address is an Amazon Ion
    #            structure that has two fields: <code>strandId</code> and <code>sequenceNo</code>.</p>
    #            <p>For example: <code>{strandId:"BlFTjlSXze9BIh1KOszcE3",sequenceNo:14}</code>.</p>
    # @option params [Types::ValueHolder] :digest_tip_address
    #   <p>The latest block location covered by the digest for which to request a proof. An address
    #            is an Amazon Ion structure that has two fields: <code>strandId</code> and
    #               <code>sequenceNo</code>.</p>
    #            <p>For example: <code>{strandId:"BlFTjlSXze9BIh1KOszcE3",sequenceNo:49}</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "LedgerName", # required
    #     block_address: { # required
    #       ion_text: "IonText"
    #     },
    #     digest_tip_address: {
    #       ion_text: "IonText"
    #     }
    #   }
    #   options = {}
    #   response = client.get_block(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     block: { # required
    #       ion_text: "IonText"
    #     },
    #     proof: {
    #       ion_text: "IonText"
    #     }
    #   }
    # @return [Types::GetBlockResponse]
    def get_block(params = {}, options = {})
      request = build_request(:get_block, params)
      request.send_request(options)
    end

    # <p>Returns the digest of a ledger at the latest committed block in the journal. The
    #          response includes a 256-bit hash value and a block address.</p>
    # @param [Hash, Types::GetDigestRequest] params
    # @option params [String] :name
    #   <p>The name of the ledger.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "LedgerName", # required
    #   }
    #   options = {}
    #   response = client.get_digest(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     digest: "data", # required
    #     digest_tip_address: { # required
    #       ion_text: "IonText"
    #     }
    #   }
    # @return [Types::GetDigestResponse]
    def get_digest(params = {}, options = {})
      request = build_request(:get_digest, params)
      request.send_request(options)
    end

    # <p>Returns a revision data object for a specified document ID and block address. Also
    #          returns a proof of the specified revision for verification if <code>DigestTipAddress</code>
    #          is provided.</p>
    # @param [Hash, Types::GetRevisionRequest] params
    # @option params [String] :name
    #   <p>The name of the ledger.</p>
    # @option params [Types::ValueHolder] :block_address
    #   <p>The block location of the document revision to be verified. An address is an Amazon Ion
    #            structure that has two fields: <code>strandId</code> and <code>sequenceNo</code>.</p>
    #            <p>For example: <code>{strandId:"BlFTjlSXze9BIh1KOszcE3",sequenceNo:14}</code>.</p>
    # @option params [String] :document_id
    #   <p>The UUID (represented in Base62-encoded text) of the document to be verified.</p>
    # @option params [Types::ValueHolder] :digest_tip_address
    #   <p>The latest block location covered by the digest for which to request a proof. An address
    #            is an Amazon Ion structure that has two fields: <code>strandId</code> and
    #               <code>sequenceNo</code>.</p>
    #            <p>For example: <code>{strandId:"BlFTjlSXze9BIh1KOszcE3",sequenceNo:49}</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "LedgerName", # required
    #     block_address: { # required
    #       ion_text: "IonText"
    #     },
    #     document_id: "UniqueId", # required
    #     digest_tip_address: {
    #       ion_text: "IonText"
    #     }
    #   }
    #   options = {}
    #   response = client.get_revision(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     proof: {
    #       ion_text: "IonText"
    #     },
    #     revision: { # required
    #       ion_text: "IonText"
    #     }
    #   }
    # @return [Types::GetRevisionResponse]
    def get_revision(params = {}, options = {})
      request = build_request(:get_revision, params)
      request.send_request(options)
    end

    # <p>Returns all Amazon QLDB journal streams for a given ledger.</p>
    #          <p>This action does not return any expired journal streams. For more information, see
    #             <a href="https://docs.aws.amazon.com/qldb/latest/developerguide/streams.create.html#streams.create.states.expiration">Expiration for terminal streams</a> in the <i>Amazon QLDB Developer
    #             Guide</i>.</p>
    #          <p>This action returns a maximum of <code>MaxResults</code> items. It is paginated so that
    #          you can retrieve all the items by calling <code>ListJournalKinesisStreamsForLedger</code>
    #          multiple times.</p>
    # @param [Hash, Types::ListJournalKinesisStreamsForLedgerRequest] params
    # @option params [String] :ledger_name
    #   <p>The name of the ledger.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single
    #               <code>ListJournalKinesisStreamsForLedger</code> request. (The actual number of results
    #            returned might be fewer.)</p>
    # @option params [String] :next_token
    #   <p>A pagination token, indicating that you want to retrieve the next page of results. If
    #            you received a value for <code>NextToken</code> in the response from a previous
    #               <code>ListJournalKinesisStreamsForLedger</code> call, you should use that value as input
    #            here.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     ledger_name: "LedgerName", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_journal_kinesis_streams_for_ledger(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     streams: [
    #       {
    #         ledger_name: "LedgerName", # required
    #         creation_time: Time.now,
    #         inclusive_start_time: Time.now,
    #         exclusive_end_time: Time.now,
    #         role_arn: "Arn", # required
    #         stream_id: "UniqueId", # required
    #         arn: "Arn",
    #         status: "ACTIVE" # One of: ["ACTIVE", "COMPLETED", "CANCELED", "FAILED", "IMPAIRED"], # required
    #         kinesis_configuration: { # required
    #           stream_arn: "Arn", # required
    #           aggregation_enabled: false
    #         },
    #         error_cause: "KINESIS_STREAM_NOT_FOUND" # One of: ["KINESIS_STREAM_NOT_FOUND", "IAM_PERMISSION_REVOKED"],
    #         stream_name: "StreamName", # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListJournalKinesisStreamsForLedgerResponse]
    def list_journal_kinesis_streams_for_ledger(params = {}, options = {})
      request = build_request(:list_journal_kinesis_streams_for_ledger, params)
      request.send_request(options)
    end

    # <p>Returns all journal export jobs for all ledgers that are associated with the current
    #          Amazon Web Services account and Region.</p>
    #          <p>This action returns a maximum of <code>MaxResults</code> items, and is paginated so that
    #          you can retrieve all the items by calling <code>ListJournalS3Exports</code> multiple
    #          times.</p>
    #          <p>This action does not return any expired export jobs. For more information, see <a href="https://docs.aws.amazon.com/qldb/latest/developerguide/export-journal.request.html#export-journal.request.expiration">Export job expiration</a> in the <i>Amazon QLDB Developer
    #          Guide</i>.</p>
    # @param [Hash, Types::ListJournalS3ExportsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single <code>ListJournalS3Exports</code>
    #            request. (The actual number of results returned might be fewer.)</p>
    # @option params [String] :next_token
    #   <p>A pagination token, indicating that you want to retrieve the next page of results. If
    #            you received a value for <code>NextToken</code> in the response from a previous
    #               <code>ListJournalS3Exports</code> call, then you should use that value as input
    #            here.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_journal_s3_exports(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     journal_s3_exports: [
    #       {
    #         ledger_name: "LedgerName", # required
    #         export_id: "UniqueId", # required
    #         export_creation_time: Time.now, # required
    #         status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "COMPLETED", "CANCELLED"], # required
    #         inclusive_start_time: Time.now, # required
    #         exclusive_end_time: Time.now, # required
    #         s3_export_configuration: { # required
    #           bucket: "S3Bucket", # required
    #           prefix: "S3Prefix", # required
    #           encryption_configuration: { # required
    #             object_encryption_type: "SSE_KMS" # One of: ["SSE_KMS", "SSE_S3", "NO_ENCRYPTION"], # required
    #             kms_key_arn: "Arn"
    #           }
    #         },
    #         role_arn: "Arn", # required
    #         output_format: "ION_BINARY" # One of: ["ION_BINARY", "ION_TEXT", "JSON"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListJournalS3ExportsResponse]
    def list_journal_s3_exports(params = {}, options = {})
      request = build_request(:list_journal_s3_exports, params)
      request.send_request(options)
    end

    # <p>Returns all journal export jobs for a specified ledger.</p>
    #          <p>This action returns a maximum of <code>MaxResults</code> items, and is paginated so that
    #          you can retrieve all the items by calling <code>ListJournalS3ExportsForLedger</code>
    #          multiple times.</p>
    #          <p>This action does not return any expired export jobs. For more information, see <a href="https://docs.aws.amazon.com/qldb/latest/developerguide/export-journal.request.html#export-journal.request.expiration">Export job expiration</a> in the <i>Amazon QLDB Developer
    #          Guide</i>.</p>
    # @param [Hash, Types::ListJournalS3ExportsForLedgerRequest] params
    # @option params [String] :name
    #   <p>The name of the ledger.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single
    #               <code>ListJournalS3ExportsForLedger</code> request. (The actual number of results
    #            returned might be fewer.)</p>
    # @option params [String] :next_token
    #   <p>A pagination token, indicating that you want to retrieve the next page of results. If
    #            you received a value for <code>NextToken</code> in the response from a previous
    #               <code>ListJournalS3ExportsForLedger</code> call, then you should use that value as input
    #            here.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "LedgerName", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_journal_s3_exports_for_ledger(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     journal_s3_exports: [
    #       {
    #         ledger_name: "LedgerName", # required
    #         export_id: "UniqueId", # required
    #         export_creation_time: Time.now, # required
    #         status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "COMPLETED", "CANCELLED"], # required
    #         inclusive_start_time: Time.now, # required
    #         exclusive_end_time: Time.now, # required
    #         s3_export_configuration: { # required
    #           bucket: "S3Bucket", # required
    #           prefix: "S3Prefix", # required
    #           encryption_configuration: { # required
    #             object_encryption_type: "SSE_KMS" # One of: ["SSE_KMS", "SSE_S3", "NO_ENCRYPTION"], # required
    #             kms_key_arn: "Arn"
    #           }
    #         },
    #         role_arn: "Arn", # required
    #         output_format: "ION_BINARY" # One of: ["ION_BINARY", "ION_TEXT", "JSON"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListJournalS3ExportsForLedgerResponse]
    def list_journal_s3_exports_for_ledger(params = {}, options = {})
      request = build_request(:list_journal_s3_exports_for_ledger, params)
      request.send_request(options)
    end

    # <p>Returns all ledgers that are associated with the current Amazon Web Services account and
    #          Region.</p>
    #          <p>This action returns a maximum of <code>MaxResults</code> items and is paginated so that
    #          you can retrieve all the items by calling <code>ListLedgers</code> multiple times.</p>
    # @param [Hash, Types::ListLedgersRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single <code>ListLedgers</code> request.
    #            (The actual number of results returned might be fewer.)</p>
    # @option params [String] :next_token
    #   <p>A pagination token, indicating that you want to retrieve the next page of results. If
    #            you received a value for <code>NextToken</code> in the response from a previous
    #               <code>ListLedgers</code> call, then you should use that value as input here.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_ledgers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ledgers: [
    #       {
    #         name: "LedgerName",
    #         state: "CREATING" # One of: ["CREATING", "ACTIVE", "DELETING", "DELETED"],
    #         creation_date_time: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListLedgersResponse]
    def list_ledgers(params = {}, options = {})
      request = build_request(:list_ledgers, params)
      request.send_request(options)
    end

    # <p>Returns all tags for a specified Amazon QLDB resource.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) for which to list the tags. For example:</p>
    #            <p>
    #               <code>arn:aws:qldb:us-east-1:123456789012:ledger/exampleLedger</code>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Creates a journal stream for a given Amazon QLDB ledger. The stream captures every
    #          document revision that is committed to the ledger's journal and delivers the data to a
    #          specified Amazon Kinesis Data Streams resource.</p>
    # @param [Hash, Types::StreamJournalToKinesisRequest] params
    # @option params [String] :ledger_name
    #   <p>The name of the ledger.</p>
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that grants QLDB permissions for a
    #            journal stream to write data records to a Kinesis Data Streams resource.</p>
    #            <p>To pass a role to QLDB when requesting a journal stream, you must have permissions to
    #            perform the <code>iam:PassRole</code> action on the IAM role resource. This is required for
    #            all journal stream requests.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The key-value pairs to add as tags to the stream that you want to create. Tag keys are
    #            case sensitive. Tag values are case sensitive and can be null.</p>
    # @option params [Time] :inclusive_start_time
    #   <p>The inclusive start date and time from which to start streaming journal data. This
    #            parameter must be in <code>ISO 8601</code> date and time format and in Universal
    #            Coordinated Time (UTC). For example: <code>2019-06-13T21:36:34Z</code>.</p>
    #            <p>The <code>InclusiveStartTime</code> cannot be in the future and must be before
    #               <code>ExclusiveEndTime</code>.</p>
    #            <p>If you provide an <code>InclusiveStartTime</code> that is before the ledger's
    #               <code>CreationDateTime</code>, QLDB effectively defaults it to the ledger's
    #               <code>CreationDateTime</code>.</p>
    # @option params [Time] :exclusive_end_time
    #   <p>The exclusive date and time that specifies when the stream ends. If you don't define
    #            this parameter, the stream runs indefinitely until you cancel it.</p>
    #            <p>The <code>ExclusiveEndTime</code> must be in <code>ISO 8601</code> date and time format
    #            and in Universal Coordinated Time (UTC). For example:
    #            <code>2019-06-13T21:36:34Z</code>.</p>
    # @option params [Types::KinesisConfiguration] :kinesis_configuration
    #   <p>The configuration settings of the Kinesis Data Streams destination for your stream request.</p>
    # @option params [String] :stream_name
    #   <p>The name that you want to assign to the QLDB journal stream. User-defined names can
    #            help identify and indicate the purpose of a stream.</p>
    #            <p>Your stream name must be unique among other <i>active</i> streams for a
    #            given ledger. Stream names have the same naming constraints as ledger names, as defined in
    #               <a href="https://docs.aws.amazon.com/qldb/latest/developerguide/limits.html#limits.naming">Quotas in Amazon QLDB</a> in the <i>Amazon QLDB Developer
    #            Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     ledger_name: "LedgerName", # required
    #     role_arn: "Arn", # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     inclusive_start_time: Time.now, # required
    #     exclusive_end_time: Time.now,
    #     kinesis_configuration: { # required
    #       stream_arn: "Arn", # required
    #       aggregation_enabled: false
    #     },
    #     stream_name: "StreamName", # required
    #   }
    #   options = {}
    #   response = client.stream_journal_to_kinesis(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     stream_id: "UniqueId"
    #   }
    # @return [Types::StreamJournalToKinesisResponse]
    def stream_journal_to_kinesis(params = {}, options = {})
      request = build_request(:stream_journal_to_kinesis, params)
      request.send_request(options)
    end

    # <p>Adds one or more tags to a specified Amazon QLDB resource.</p>
    #          <p>A resource can have up to 50 tags. If you try to create more than 50 tags for a
    #          resource, your request fails and returns an error.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) to which you want to add the tags. For example:</p>
    #            <p>
    #               <code>arn:aws:qldb:us-east-1:123456789012:ledger/exampleLedger</code>
    #            </p>
    # @option params [Hash<String, String>] :tags
    #   <p>The key-value pairs to add as tags to the specified QLDB resource. Tag keys are case
    #            sensitive. If you specify a key that already exists for the resource, your request fails
    #            and returns an error. Tag values are case sensitive and can be null.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::TagResourceResponse]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Removes one or more tags from a specified Amazon QLDB resource. You can specify up to 50
    #          tag keys to remove.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) from which to remove the tags. For example:</p>
    #            <p>
    #               <code>arn:aws:qldb:us-east-1:123456789012:ledger/exampleLedger</code>
    #            </p>
    # @option params [Array<String>] :tag_keys
    #   <p>The list of tag keys to remove.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
    #     tag_keys: ["TagKey"], # required
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UntagResourceResponse]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <p>Updates properties on a ledger.</p>
    # @param [Hash, Types::UpdateLedgerRequest] params
    # @option params [String] :name
    #   <p>The name of the ledger.</p>
    # @option params [Boolean] :deletion_protection
    #   <p>Specifies whether the ledger is protected from being deleted by any user. If not defined during
    #         ledger creation, this feature is enabled (<code>true</code>) by default.</p>
    #            <p>If deletion protection is enabled, you must first disable it before you can delete the
    #         ledger. You can disable it by calling the <code>UpdateLedger</code> operation to set this parameter to <code>false</code>.</p>
    # @option params [String] :kms_key
    #   <p>The key in Key Management Service (KMS) to use for encryption of data at rest in the ledger. For
    #            more information, see <a href="https://docs.aws.amazon.com/qldb/latest/developerguide/encryption-at-rest.html">Encryption at rest</a> in
    #            the <i>Amazon QLDB Developer Guide</i>.</p>
    #            <p>Use one of the following options to specify this parameter:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>AWS_OWNED_KMS_KEY</code>: Use an KMS key that is owned and managed by Amazon Web Services
    #                  on your behalf.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Undefined</b>: Make no changes to the KMS key of the
    #                  ledger.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>A valid symmetric customer managed KMS key</b>: Use
    #                  the specified symmetric encryption KMS key in your account that you create, own, and
    #                  manage.</p>
    #                  <p>Amazon QLDB does not support asymmetric keys. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html">Using symmetric and asymmetric keys</a> in the <i>Key Management Service Developer
    #                     Guide</i>.</p>
    #               </li>
    #            </ul>
    #            <p>To specify a customer managed KMS key, you can use its key ID, Amazon Resource Name
    #            (ARN), alias name, or alias ARN. When using an alias name, prefix it with
    #               <code>"alias/"</code>. To specify a key in a different Amazon Web Services account, you must use the key
    #            ARN or alias ARN.</p>
    #            <p>For example:</p>
    #            <ul>
    #               <li>
    #                  <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Key ARN:
    #                     <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Alias name: <code>alias/ExampleAlias</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Alias ARN:
    #                  <code>arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id">Key identifiers (KeyId)</a> in
    #            the <i>Key Management Service Developer Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "LedgerName", # required
    #     deletion_protection: false,
    #     kms_key: "KmsKey"
    #   }
    #   options = {}
    #   response = client.update_ledger(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "LedgerName",
    #     arn: "Arn",
    #     state: "CREATING" # One of: ["CREATING", "ACTIVE", "DELETING", "DELETED"],
    #     creation_date_time: Time.now,
    #     deletion_protection: false,
    #     encryption_description: {
    #       kms_key_arn: "Arn", # required
    #       encryption_status: "ENABLED" # One of: ["ENABLED", "UPDATING", "KMS_KEY_INACCESSIBLE"], # required
    #       inaccessible_kms_key_date_time: Time.now
    #     }
    #   }
    # @return [Types::UpdateLedgerResponse]
    def update_ledger(params = {}, options = {})
      request = build_request(:update_ledger, params)
      request.send_request(options)
    end

    # <p>Updates the permissions mode of a ledger.</p>
    #          <important>
    #             <p>Before you switch to the <code>STANDARD</code> permissions mode, you must first
    #             create all required IAM policies and table tags to avoid disruption to your users. To
    #             learn more, see <a href="https://docs.aws.amazon.com/qldb/latest/developerguide/ledger-management.basics.html#ledger-mgmt.basics.update-permissions.migrating">Migrating to the standard permissions mode</a> in the <i>Amazon QLDB
    #                Developer Guide</i>.</p>
    #          </important>
    # @param [Hash, Types::UpdateLedgerPermissionsModeRequest] params
    # @option params [String] :name
    #   <p>The name of the ledger.</p>
    # @option params [String] :permissions_mode
    #   <p>The permissions mode to assign to the ledger. This parameter can have one of the
    #            following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ALLOW_ALL</code>: A legacy permissions mode that enables access control with
    #                  API-level granularity for ledgers.</p>
    #                  <p>This mode allows users who have the <code>SendCommand</code> API permission for
    #                  this ledger to run all PartiQL commands (hence, <code>ALLOW_ALL</code>) on any tables
    #                  in the specified ledger. This mode disregards any table-level or command-level IAM
    #                  permissions policies that you create for the ledger.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>STANDARD</code>: (<i>Recommended</i>) A permissions mode that
    #                  enables access control with finer granularity for ledgers, tables, and PartiQL
    #                  commands.</p>
    #                  <p>By default, this mode denies all user requests to run any PartiQL commands on any
    #                  tables in this ledger. To allow PartiQL commands to run, you must create IAM
    #                  permissions policies for specific table resources and PartiQL actions, in addition to
    #                  the <code>SendCommand</code> API permission for the ledger. For information, see
    #                     <a href="https://docs.aws.amazon.com/qldb/latest/developerguide/getting-started-standard-mode.html">Getting
    #                     started with the standard permissions mode</a> in the <i>Amazon QLDB
    #                     Developer Guide</i>.</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>We strongly recommend using the <code>STANDARD</code> permissions mode to maximize
    #               the security of your ledger data.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "LedgerName", # required
    #     permissions_mode: "ALLOW_ALL" # One of: ["ALLOW_ALL", "STANDARD"], # required
    #   }
    #   options = {}
    #   response = client.update_ledger_permissions_mode(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "LedgerName",
    #     arn: "Arn",
    #     permissions_mode: "ALLOW_ALL" # One of: ["ALLOW_ALL", "STANDARD"]
    #   }
    # @return [Types::UpdateLedgerPermissionsModeResponse]
    def update_ledger_permissions_mode(params = {}, options = {})
      request = build_request(:update_ledger_permissions_mode, params)
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
      context[:gem_name] = 'aws-sdk-qldb'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Request.new(handlers: handlers, context: context)
    end

    private

    def waiters
      {}
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
