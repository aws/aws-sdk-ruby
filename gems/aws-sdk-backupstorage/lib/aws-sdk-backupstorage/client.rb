# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'seahorse/client/plugins/content_length.rb'
require 'aws-sdk-core/plugins/credentials_configuration.rb'
require 'aws-sdk-core/plugins/logging.rb'
require 'aws-sdk-core/plugins/param_converter.rb'
require 'aws-sdk-core/plugins/param_validator.rb'
require 'aws-sdk-core/plugins/user_agent.rb'
require 'aws-sdk-core/plugins/helpful_socket_errors.rb'
require 'aws-sdk-core/plugins/retry_errors.rb'
require 'aws-sdk-core/plugins/global_configuration.rb'
require 'aws-sdk-core/plugins/regional_endpoint.rb'
require 'aws-sdk-core/plugins/endpoint_discovery.rb'
require 'aws-sdk-core/plugins/endpoint_pattern.rb'
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/idempotency_token.rb'
require 'aws-sdk-core/plugins/jsonvalue_converter.rb'
require 'aws-sdk-core/plugins/client_metrics_plugin.rb'
require 'aws-sdk-core/plugins/client_metrics_send_plugin.rb'
require 'aws-sdk-core/plugins/transfer_encoding.rb'
require 'aws-sdk-core/plugins/http_checksum.rb'
require 'aws-sdk-core/plugins/checksum_algorithm.rb'
require 'aws-sdk-core/plugins/request_compression.rb'
require 'aws-sdk-core/plugins/defaults_mode.rb'
require 'aws-sdk-core/plugins/recursion_detection.rb'
require 'aws-sdk-core/plugins/sign.rb'
require 'aws-sdk-core/plugins/protocols/rest_json.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:backupstorage)

module Aws::BackupStorage
  # An API client for BackupStorage.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::BackupStorage::Client.new(
  #       region: region_name,
  #       credentials: credentials,
  #       # ...
  #     )
  #
  # For details on configuring region and credentials see
  # the [developer guide](/sdk-for-ruby/v3/developer-guide/setup-config.html).
  #
  # See {#initialize} for a full list of supported configuration options.
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :backupstorage

    set_api(ClientApi::API)

    add_plugin(Seahorse::Client::Plugins::ContentLength)
    add_plugin(Aws::Plugins::CredentialsConfiguration)
    add_plugin(Aws::Plugins::Logging)
    add_plugin(Aws::Plugins::ParamConverter)
    add_plugin(Aws::Plugins::ParamValidator)
    add_plugin(Aws::Plugins::UserAgent)
    add_plugin(Aws::Plugins::HelpfulSocketErrors)
    add_plugin(Aws::Plugins::RetryErrors)
    add_plugin(Aws::Plugins::GlobalConfiguration)
    add_plugin(Aws::Plugins::RegionalEndpoint)
    add_plugin(Aws::Plugins::EndpointDiscovery)
    add_plugin(Aws::Plugins::EndpointPattern)
    add_plugin(Aws::Plugins::ResponsePaging)
    add_plugin(Aws::Plugins::StubResponses)
    add_plugin(Aws::Plugins::IdempotencyToken)
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::ClientMetricsPlugin)
    add_plugin(Aws::Plugins::ClientMetricsSendPlugin)
    add_plugin(Aws::Plugins::TransferEncoding)
    add_plugin(Aws::Plugins::HttpChecksum)
    add_plugin(Aws::Plugins::ChecksumAlgorithm)
    add_plugin(Aws::Plugins::RequestCompression)
    add_plugin(Aws::Plugins::DefaultsMode)
    add_plugin(Aws::Plugins::RecursionDetection)
    add_plugin(Aws::Plugins::Sign)
    add_plugin(Aws::Plugins::Protocols::RestJson)
    add_plugin(Aws::BackupStorage::Plugins::Endpoints)

    # @overload initialize(options)
    #   @param [Hash] options
    #   @option options [required, Aws::CredentialProvider] :credentials
    #     Your AWS credentials. This can be an instance of any one of the
    #     following classes:
    #
    #     * `Aws::Credentials` - Used for configuring static, non-refreshing
    #       credentials.
    #
    #     * `Aws::SharedCredentials` - Used for loading static credentials from a
    #       shared file, such as `~/.aws/config`.
    #
    #     * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #     * `Aws::AssumeRoleWebIdentityCredentials` - Used when you need to
    #       assume a role after providing credentials via the web.
    #
    #     * `Aws::SSOCredentials` - Used for loading credentials from AWS SSO using an
    #       access token generated from `aws login`.
    #
    #     * `Aws::ProcessCredentials` - Used for loading credentials from a
    #       process that outputs to stdout.
    #
    #     * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #       from an EC2 IMDS on an EC2 instance.
    #
    #     * `Aws::ECSCredentials` - Used for loading credentials from
    #       instances running in ECS.
    #
    #     * `Aws::CognitoIdentityCredentials` - Used for loading credentials
    #       from the Cognito Identity service.
    #
    #     When `:credentials` are not configured directly, the following
    #     locations will be searched for credentials:
    #
    #     * `Aws.config[:credentials]`
    #     * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #     * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #     * EC2/ECS IMDS instance profile - When used by default, the timeouts
    #       are very aggressive. Construct and pass an instance of
    #       `Aws::InstanceProfileCredentails` or `Aws::ECSCredentials` to
    #       enable retries and extended timeouts. Instance profile credential
    #       fetching can be disabled by setting ENV['AWS_EC2_METADATA_DISABLED']
    #       to true.
    #
    #   @option options [required, String] :region
    #     The AWS region to connect to.  The configured `:region` is
    #     used to determine the service `:endpoint`. When not passed,
    #     a default `:region` is searched for in the following locations:
    #
    #     * `Aws.config[:region]`
    #     * `ENV['AWS_REGION']`
    #     * `ENV['AMAZON_REGION']`
    #     * `ENV['AWS_DEFAULT_REGION']`
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #
    #   @option options [String] :access_key_id
    #
    #   @option options [Boolean] :active_endpoint_cache (false)
    #     When set to `true`, a thread polling for endpoints will be running in
    #     the background every 60 secs (default). Defaults to `false`.
    #
    #   @option options [Boolean] :adaptive_retry_wait_to_fill (true)
    #     Used only in `adaptive` retry mode.  When true, the request will sleep
    #     until there is sufficent client side capacity to retry the request.
    #     When false, the request will raise a `RetryCapacityNotAvailableError` and will
    #     not retry instead of sleeping.
    #
    #   @option options [Boolean] :client_side_monitoring (false)
    #     When `true`, client-side metrics will be collected for all API requests from
    #     this client.
    #
    #   @option options [String] :client_side_monitoring_client_id ("")
    #     Allows you to provide an identifier for this client which will be attached to
    #     all generated client side metrics. Defaults to an empty string.
    #
    #   @option options [String] :client_side_monitoring_host ("127.0.0.1")
    #     Allows you to specify the DNS hostname or IPv4 or IPv6 address that the client
    #     side monitoring agent is running on, where client metrics will be published via UDP.
    #
    #   @option options [Integer] :client_side_monitoring_port (31000)
    #     Required for publishing client metrics. The port that the client side monitoring
    #     agent is running on, where client metrics will be published via UDP.
    #
    #   @option options [Aws::ClientSideMonitoring::Publisher] :client_side_monitoring_publisher (Aws::ClientSideMonitoring::Publisher)
    #     Allows you to provide a custom client-side monitoring publisher class. By default,
    #     will use the Client Side Monitoring Agent Publisher.
    #
    #   @option options [Boolean] :convert_params (true)
    #     When `true`, an attempt is made to coerce request parameters into
    #     the required types.
    #
    #   @option options [Boolean] :correct_clock_skew (true)
    #     Used only in `standard` and adaptive retry modes. Specifies whether to apply
    #     a clock skew correction and retry requests with skewed client clocks.
    #
    #   @option options [String] :defaults_mode ("legacy")
    #     See {Aws::DefaultsModeConfiguration} for a list of the
    #     accepted modes and the configuration defaults that are included.
    #
    #   @option options [Boolean] :disable_host_prefix_injection (false)
    #     Set to true to disable SDK automatically adding host prefix
    #     to default service endpoint when available.
    #
    #   @option options [Boolean] :disable_request_compression (false)
    #     When set to 'true' the request body will not be compressed
    #     for supported operations.
    #
    #   @option options [String] :endpoint
    #     The client endpoint is normally constructed from the `:region`
    #     option. You should only configure an `:endpoint` when connecting
    #     to test or custom endpoints. This should be a valid HTTP(S) URI.
    #
    #   @option options [Integer] :endpoint_cache_max_entries (1000)
    #     Used for the maximum size limit of the LRU cache storing endpoints data
    #     for endpoint discovery enabled operations. Defaults to 1000.
    #
    #   @option options [Integer] :endpoint_cache_max_threads (10)
    #     Used for the maximum threads in use for polling endpoints to be cached, defaults to 10.
    #
    #   @option options [Integer] :endpoint_cache_poll_interval (60)
    #     When :endpoint_discovery and :active_endpoint_cache is enabled,
    #     Use this option to config the time interval in seconds for making
    #     requests fetching endpoints information. Defaults to 60 sec.
    #
    #   @option options [Boolean] :endpoint_discovery (false)
    #     When set to `true`, endpoint discovery will be enabled for operations when available.
    #
    #   @option options [Boolean] :ignore_configured_endpoint_urls
    #     Setting to true disables use of endpoint URLs provided via environment
    #     variables and the shared configuration file.
    #
    #   @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
    #     The log formatter.
    #
    #   @option options [Symbol] :log_level (:info)
    #     The log level to send messages to the `:logger` at.
    #
    #   @option options [Logger] :logger
    #     The Logger instance to send log messages to.  If this option
    #     is not set, logging will be disabled.
    #
    #   @option options [Integer] :max_attempts (3)
    #     An integer representing the maximum number attempts that will be made for
    #     a single request, including the initial attempt.  For example,
    #     setting this value to 5 will result in a request being retried up to
    #     4 times. Used in `standard` and `adaptive` retry modes.
    #
    #   @option options [String] :profile ("default")
    #     Used when loading credentials from the shared credentials file
    #     at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    #   @option options [Integer] :request_min_compression_size_bytes (10240)
    #     The minimum size in bytes that triggers compression for request
    #     bodies. The value must be non-negative integer value between 0
    #     and 10485780 bytes inclusive.
    #
    #   @option options [Proc] :retry_backoff
    #     A proc or lambda used for backoff. Defaults to 2**retries * retry_base_delay.
    #     This option is only used in the `legacy` retry mode.
    #
    #   @option options [Float] :retry_base_delay (0.3)
    #     The base delay in seconds used by the default backoff function. This option
    #     is only used in the `legacy` retry mode.
    #
    #   @option options [Symbol] :retry_jitter (:none)
    #     A delay randomiser function used by the default backoff function.
    #     Some predefined functions can be referenced by name - :none, :equal, :full,
    #     otherwise a Proc that takes and returns a number. This option is only used
    #     in the `legacy` retry mode.
    #
    #     @see https://www.awsarchitectureblog.com/2015/03/backoff.html
    #
    #   @option options [Integer] :retry_limit (3)
    #     The maximum number of times to retry failed requests.  Only
    #     ~ 500 level server errors and certain ~ 400 level client errors
    #     are retried.  Generally, these are throttling errors, data
    #     checksum errors, networking errors, timeout errors, auth errors,
    #     endpoint discovery, and errors from expired credentials.
    #     This option is only used in the `legacy` retry mode.
    #
    #   @option options [Integer] :retry_max_delay (0)
    #     The maximum number of seconds to delay between retries (0 for no limit)
    #     used by the default backoff function. This option is only used in the
    #     `legacy` retry mode.
    #
    #   @option options [String] :retry_mode ("legacy")
    #     Specifies which retry algorithm to use. Values are:
    #
    #     * `legacy` - The pre-existing retry behavior.  This is default value if
    #       no retry mode is provided.
    #
    #     * `standard` - A standardized set of retry rules across the AWS SDKs.
    #       This includes support for retry quotas, which limit the number of
    #       unsuccessful retries a client can make.
    #
    #     * `adaptive` - An experimental retry mode that includes all the
    #       functionality of `standard` mode along with automatic client side
    #       throttling.  This is a provisional mode that may change behavior
    #       in the future.
    #
    #
    #   @option options [String] :sdk_ua_app_id
    #     A unique and opaque application ID that is appended to the
    #     User-Agent header as app/<sdk_ua_app_id>. It should have a
    #     maximum length of 50.
    #
    #   @option options [String] :secret_access_key
    #
    #   @option options [String] :session_token
    #
    #   @option options [Boolean] :stub_responses (false)
    #     Causes the client to return stubbed responses. By default
    #     fake responses are generated and returned. You can specify
    #     the response data to return or errors to raise by calling
    #     {ClientStubs#stub_responses}. See {ClientStubs} for more information.
    #
    #     ** Please note ** When response stubbing is enabled, no HTTP
    #     requests are made, and retries are disabled.
    #
    #   @option options [Aws::TokenProvider] :token_provider
    #     A Bearer Token Provider. This can be an instance of any one of the
    #     following classes:
    #
    #     * `Aws::StaticTokenProvider` - Used for configuring static, non-refreshing
    #       tokens.
    #
    #     * `Aws::SSOTokenProvider` - Used for loading tokens from AWS SSO using an
    #       access token generated from `aws login`.
    #
    #     When `:token_provider` is not configured directly, the `Aws::TokenProviderChain`
    #     will be used to search for tokens configured for your profile in shared configuration files.
    #
    #   @option options [Boolean] :use_dualstack_endpoint
    #     When set to `true`, dualstack enabled endpoints (with `.aws` TLD)
    #     will be used if available.
    #
    #   @option options [Boolean] :use_fips_endpoint
    #     When set to `true`, fips compatible endpoints will be used if available.
    #     When a `fips` region is used, the region is normalized and this config
    #     is set to `true`.
    #
    #   @option options [Boolean] :validate_params (true)
    #     When `true`, request parameters are validated before
    #     sending the request.
    #
    #   @option options [Aws::BackupStorage::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::BackupStorage::EndpointParameters`
    #
    #   @option options [URI::HTTP,String] :http_proxy A proxy to send
    #     requests through.  Formatted like 'http://proxy.com:123'.
    #
    #   @option options [Float] :http_open_timeout (15) The number of
    #     seconds to wait when opening a HTTP session before raising a
    #     `Timeout::Error`.
    #
    #   @option options [Float] :http_read_timeout (60) The default
    #     number of seconds to wait for response data.  This value can
    #     safely be set per-request on the session.
    #
    #   @option options [Float] :http_idle_timeout (5) The number of
    #     seconds a connection is allowed to sit idle before it is
    #     considered stale.  Stale connections are closed and removed
    #     from the pool before making a request.
    #
    #   @option options [Float] :http_continue_timeout (1) The number of
    #     seconds to wait for a 100-continue response before sending the
    #     request body.  This option has no effect unless the request has
    #     "Expect" header set to "100-continue".  Defaults to `nil` which
    #     disables this behaviour.  This value can safely be set per
    #     request on the session.
    #
    #   @option options [Float] :ssl_timeout (nil) Sets the SSL timeout
    #     in seconds.
    #
    #   @option options [Boolean] :http_wire_trace (false) When `true`,
    #     HTTP debug output will be sent to the `:logger`.
    #
    #   @option options [Boolean] :ssl_verify_peer (true) When `true`,
    #     SSL peer certificates are verified when establishing a
    #     connection.
    #
    #   @option options [String] :ssl_ca_bundle Full path to the SSL
    #     certificate authority bundle file that should be used when
    #     verifying peer certificates.  If you do not pass
    #     `:ssl_ca_bundle` or `:ssl_ca_directory` the the system default
    #     will be used if available.
    #
    #   @option options [String] :ssl_ca_directory Full path of the
    #     directory that contains the unbundled SSL certificate
    #     authority files for verifying peer certificates.  If you do
    #     not pass `:ssl_ca_bundle` or `:ssl_ca_directory` the the
    #     system default will be used if available.
    #
    def initialize(*args)
      super
    end

    # @!group API Operations

    # Delete Object from the incremental base Backup.
    #
    # @option params [required, String] :backup_job_id
    #   Backup job Id for the in-progress backup.
    #
    # @option params [required, String] :object_name
    #   The name of the Object.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_object({
    #     backup_job_id: "string", # required
    #     object_name: "string", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backupstorage-2018-04-10/DeleteObject AWS API Documentation
    #
    # @overload delete_object(params = {})
    # @param [Hash] params ({})
    def delete_object(params = {}, options = {})
      req = build_request(:delete_object, params)
      req.send_request(options)
    end

    # Gets the specified object's chunk.
    #
    # @option params [required, String] :storage_job_id
    #   Storage job id
    #
    # @option params [required, String] :chunk_token
    #   Chunk token
    #
    # @return [Types::GetChunkOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetChunkOutput#data #data} => IO
    #   * {Types::GetChunkOutput#length #length} => Integer
    #   * {Types::GetChunkOutput#checksum #checksum} => String
    #   * {Types::GetChunkOutput#checksum_algorithm #checksum_algorithm} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_chunk({
    #     storage_job_id: "string", # required
    #     chunk_token: "string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.data #=> IO
    #   resp.length #=> Integer
    #   resp.checksum #=> String
    #   resp.checksum_algorithm #=> String, one of "SHA256"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backupstorage-2018-04-10/GetChunk AWS API Documentation
    #
    # @overload get_chunk(params = {})
    # @param [Hash] params ({})
    def get_chunk(params = {}, options = {}, &block)
      req = build_request(:get_chunk, params)
      req.send_request(options, &block)
    end

    # Get metadata associated with an Object.
    #
    # @option params [required, String] :storage_job_id
    #   Backup job id for the in-progress backup.
    #
    # @option params [required, String] :object_token
    #   Object token.
    #
    # @return [Types::GetObjectMetadataOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetObjectMetadataOutput#metadata_string #metadata_string} => String
    #   * {Types::GetObjectMetadataOutput#metadata_blob #metadata_blob} => IO
    #   * {Types::GetObjectMetadataOutput#metadata_blob_length #metadata_blob_length} => Integer
    #   * {Types::GetObjectMetadataOutput#metadata_blob_checksum #metadata_blob_checksum} => String
    #   * {Types::GetObjectMetadataOutput#metadata_blob_checksum_algorithm #metadata_blob_checksum_algorithm} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_object_metadata({
    #     storage_job_id: "string", # required
    #     object_token: "string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.metadata_string #=> String
    #   resp.metadata_blob #=> IO
    #   resp.metadata_blob_length #=> Integer
    #   resp.metadata_blob_checksum #=> String
    #   resp.metadata_blob_checksum_algorithm #=> String, one of "SHA256"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backupstorage-2018-04-10/GetObjectMetadata AWS API Documentation
    #
    # @overload get_object_metadata(params = {})
    # @param [Hash] params ({})
    def get_object_metadata(params = {}, options = {}, &block)
      req = build_request(:get_object_metadata, params)
      req.send_request(options, &block)
    end

    # List chunks in a given Object
    #
    # @option params [required, String] :storage_job_id
    #   Storage job id
    #
    # @option params [required, String] :object_token
    #   Object token
    #
    # @option params [Integer] :max_results
    #   Maximum number of chunks
    #
    # @option params [String] :next_token
    #   Pagination token
    #
    # @return [Types::ListChunksOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListChunksOutput#chunk_list #chunk_list} => Array&lt;Types::Chunk&gt;
    #   * {Types::ListChunksOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_chunks({
    #     storage_job_id: "string", # required
    #     object_token: "string", # required
    #     max_results: 1,
    #     next_token: "string",
    #   })
    #
    # @example Response structure
    #
    #   resp.chunk_list #=> Array
    #   resp.chunk_list[0].index #=> Integer
    #   resp.chunk_list[0].length #=> Integer
    #   resp.chunk_list[0].checksum #=> String
    #   resp.chunk_list[0].checksum_algorithm #=> String, one of "SHA256"
    #   resp.chunk_list[0].chunk_token #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backupstorage-2018-04-10/ListChunks AWS API Documentation
    #
    # @overload list_chunks(params = {})
    # @param [Hash] params ({})
    def list_chunks(params = {}, options = {})
      req = build_request(:list_chunks, params)
      req.send_request(options)
    end

    # List all Objects in a given Backup.
    #
    # @option params [required, String] :storage_job_id
    #   Storage job id
    #
    # @option params [String] :starting_object_name
    #   Optional, specifies the starting Object name to list from. Ignored if
    #   NextToken is not NULL
    #
    # @option params [String] :starting_object_prefix
    #   Optional, specifies the starting Object prefix to list from. Ignored
    #   if NextToken is not NULL
    #
    # @option params [Integer] :max_results
    #   Maximum objects count
    #
    # @option params [String] :next_token
    #   Pagination token
    #
    # @option params [Time,DateTime,Date,Integer,String] :created_before
    #   (Optional) Created before filter
    #
    # @option params [Time,DateTime,Date,Integer,String] :created_after
    #   (Optional) Created after filter
    #
    # @return [Types::ListObjectsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListObjectsOutput#object_list #object_list} => Array&lt;Types::BackupObject&gt;
    #   * {Types::ListObjectsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_objects({
    #     storage_job_id: "string", # required
    #     starting_object_name: "string",
    #     starting_object_prefix: "string",
    #     max_results: 1,
    #     next_token: "string",
    #     created_before: Time.now,
    #     created_after: Time.now,
    #   })
    #
    # @example Response structure
    #
    #   resp.object_list #=> Array
    #   resp.object_list[0].name #=> String
    #   resp.object_list[0].chunks_count #=> Integer
    #   resp.object_list[0].metadata_string #=> String
    #   resp.object_list[0].object_checksum #=> String
    #   resp.object_list[0].object_checksum_algorithm #=> String, one of "SUMMARY"
    #   resp.object_list[0].object_token #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backupstorage-2018-04-10/ListObjects AWS API Documentation
    #
    # @overload list_objects(params = {})
    # @param [Hash] params ({})
    def list_objects(params = {}, options = {})
      req = build_request(:list_objects, params)
      req.send_request(options)
    end

    # Complete upload
    #
    # @option params [required, String] :backup_job_id
    #   Backup job Id for the in-progress backup
    #
    # @option params [required, String] :upload_id
    #   Upload Id for the in-progress upload
    #
    # @option params [required, String] :object_checksum
    #   Object checksum
    #
    # @option params [required, String] :object_checksum_algorithm
    #   Checksum algorithm
    #
    # @option params [String] :metadata_string
    #   Optional metadata associated with an Object. Maximum string length is
    #   256 bytes.
    #
    # @option params [String, IO] :metadata_blob
    #   Optional metadata associated with an Object. Maximum length is 4MB.
    #
    # @option params [Integer] :metadata_blob_length
    #   The size of MetadataBlob.
    #
    # @option params [String] :metadata_blob_checksum
    #   Checksum of MetadataBlob.
    #
    # @option params [String] :metadata_blob_checksum_algorithm
    #   Checksum algorithm.
    #
    # @return [Types::NotifyObjectCompleteOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::NotifyObjectCompleteOutput#object_checksum #object_checksum} => String
    #   * {Types::NotifyObjectCompleteOutput#object_checksum_algorithm #object_checksum_algorithm} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.notify_object_complete({
    #     backup_job_id: "string", # required
    #     upload_id: "string", # required
    #     object_checksum: "string", # required
    #     object_checksum_algorithm: "SUMMARY", # required, accepts SUMMARY
    #     metadata_string: "MetadataString",
    #     metadata_blob: "data",
    #     metadata_blob_length: 1,
    #     metadata_blob_checksum: "string",
    #     metadata_blob_checksum_algorithm: "SHA256", # accepts SHA256
    #   })
    #
    # @example Response structure
    #
    #   resp.object_checksum #=> String
    #   resp.object_checksum_algorithm #=> String, one of "SUMMARY"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backupstorage-2018-04-10/NotifyObjectComplete AWS API Documentation
    #
    # @overload notify_object_complete(params = {})
    # @param [Hash] params ({})
    def notify_object_complete(params = {}, options = {})
      req = build_request(:notify_object_complete, params)
      req.send_request(options)
    end

    # Upload chunk.
    #
    # @option params [required, String] :backup_job_id
    #   Backup job Id for the in-progress backup.
    #
    # @option params [required, String] :upload_id
    #   Upload Id for the in-progress upload.
    #
    # @option params [required, Integer] :chunk_index
    #   Describes this chunk's position relative to the other chunks
    #
    # @option params [required, String, IO] :data
    #   Data to be uploaded
    #
    # @option params [required, Integer] :length
    #   Data length
    #
    # @option params [required, String] :checksum
    #   Data checksum
    #
    # @option params [required, String] :checksum_algorithm
    #   Checksum algorithm
    #
    # @return [Types::PutChunkOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutChunkOutput#chunk_checksum #chunk_checksum} => String
    #   * {Types::PutChunkOutput#chunk_checksum_algorithm #chunk_checksum_algorithm} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_chunk({
    #     backup_job_id: "string", # required
    #     upload_id: "string", # required
    #     chunk_index: 1, # required
    #     data: "data", # required
    #     length: 1, # required
    #     checksum: "string", # required
    #     checksum_algorithm: "SHA256", # required, accepts SHA256
    #   })
    #
    # @example Response structure
    #
    #   resp.chunk_checksum #=> String
    #   resp.chunk_checksum_algorithm #=> String, one of "SHA256"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backupstorage-2018-04-10/PutChunk AWS API Documentation
    #
    # @overload put_chunk(params = {})
    # @param [Hash] params ({})
    def put_chunk(params = {}, options = {})
      req = build_request(:put_chunk, params)
      req.send_request(options)
    end

    # Upload object that can store object metadata String and data blob in
    # single API call using inline chunk field.
    #
    # @option params [required, String] :backup_job_id
    #   Backup job Id for the in-progress backup.
    #
    # @option params [required, String] :object_name
    #   The name of the Object to be uploaded.
    #
    # @option params [String] :metadata_string
    #   Store user defined metadata like backup checksum, disk ids, restore
    #   metadata etc.
    #
    # @option params [String, IO] :inline_chunk
    #   Inline chunk data to be uploaded.
    #
    # @option params [Integer] :inline_chunk_length
    #   Length of the inline chunk data.
    #
    # @option params [String] :inline_chunk_checksum
    #   Inline chunk checksum
    #
    # @option params [String] :inline_chunk_checksum_algorithm
    #   Inline chunk checksum algorithm
    #
    # @option params [String] :object_checksum
    #   object checksum
    #
    # @option params [String] :object_checksum_algorithm
    #   object checksum algorithm
    #
    # @option params [Boolean] :throw_on_duplicate
    #   Throw an exception if Object name is already exist.
    #
    # @return [Types::PutObjectOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutObjectOutput#inline_chunk_checksum #inline_chunk_checksum} => String
    #   * {Types::PutObjectOutput#inline_chunk_checksum_algorithm #inline_chunk_checksum_algorithm} => String
    #   * {Types::PutObjectOutput#object_checksum #object_checksum} => String
    #   * {Types::PutObjectOutput#object_checksum_algorithm #object_checksum_algorithm} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_object({
    #     backup_job_id: "string", # required
    #     object_name: "string", # required
    #     metadata_string: "string",
    #     inline_chunk: "data",
    #     inline_chunk_length: 1,
    #     inline_chunk_checksum: "string",
    #     inline_chunk_checksum_algorithm: "string",
    #     object_checksum: "string",
    #     object_checksum_algorithm: "SUMMARY", # accepts SUMMARY
    #     throw_on_duplicate: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.inline_chunk_checksum #=> String
    #   resp.inline_chunk_checksum_algorithm #=> String, one of "SHA256"
    #   resp.object_checksum #=> String
    #   resp.object_checksum_algorithm #=> String, one of "SUMMARY"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backupstorage-2018-04-10/PutObject AWS API Documentation
    #
    # @overload put_object(params = {})
    # @param [Hash] params ({})
    def put_object(params = {}, options = {})
      req = build_request(:put_object, params)
      req.send_request(options)
    end

    # Start upload containing one or many chunks.
    #
    # @option params [required, String] :backup_job_id
    #   Backup job Id for the in-progress backup
    #
    # @option params [required, String] :object_name
    #   Name for the object.
    #
    # @option params [Boolean] :throw_on_duplicate
    #   Throw an exception if Object name is already exist.
    #
    # @return [Types::StartObjectOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartObjectOutput#upload_id #upload_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_object({
    #     backup_job_id: "string", # required
    #     object_name: "string", # required
    #     throw_on_duplicate: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.upload_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backupstorage-2018-04-10/StartObject AWS API Documentation
    #
    # @overload start_object(params = {})
    # @param [Hash] params ({})
    def start_object(params = {}, options = {})
      req = build_request(:start_object, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config)
      context[:gem_name] = 'aws-sdk-backupstorage'
      context[:gem_version] = '1.7.0'
      Seahorse::Client::Request.new(handlers, context)
    end

    # @api private
    # @deprecated
    def waiter_names
      []
    end

    class << self

      # @api private
      attr_reader :identifier

      # @api private
      def errors_module
        Errors
      end

    end
  end
end
