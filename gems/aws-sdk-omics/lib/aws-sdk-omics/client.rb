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
require 'aws-sdk-core/plugins/defaults_mode.rb'
require 'aws-sdk-core/plugins/recursion_detection.rb'
require 'aws-sdk-core/plugins/sign.rb'
require 'aws-sdk-core/plugins/protocols/rest_json.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:omics)

module Aws::Omics
  # An API client for Omics.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::Omics::Client.new(
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

    @identifier = :omics

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
    add_plugin(Aws::Plugins::DefaultsMode)
    add_plugin(Aws::Plugins::RecursionDetection)
    add_plugin(Aws::Plugins::Sign)
    add_plugin(Aws::Plugins::Protocols::RestJson)
    add_plugin(Aws::Omics::Plugins::Endpoints)

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
    #   @option options [Aws::Omics::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::Omics::EndpointParameters`
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

    # Deletes one or more read sets.
    #
    # @option params [required, Array<String>] :ids
    #   The read sets' IDs.
    #
    # @option params [required, String] :sequence_store_id
    #   The read sets' sequence store ID.
    #
    # @return [Types::BatchDeleteReadSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchDeleteReadSetResponse#errors #errors} => Array&lt;Types::ReadSetBatchError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_delete_read_set({
    #     ids: ["ReadSetId"], # required
    #     sequence_store_id: "SequenceStoreId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.errors #=> Array
    #   resp.errors[0].code #=> String
    #   resp.errors[0].id #=> String
    #   resp.errors[0].message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/BatchDeleteReadSet AWS API Documentation
    #
    # @overload batch_delete_read_set(params = {})
    # @param [Hash] params ({})
    def batch_delete_read_set(params = {}, options = {})
      req = build_request(:batch_delete_read_set, params)
      req.send_request(options)
    end

    # Cancels an annotation import job.
    #
    # @option params [required, String] :job_id
    #   The job's ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_annotation_import_job({
    #     job_id: "ResourceId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/CancelAnnotationImportJob AWS API Documentation
    #
    # @overload cancel_annotation_import_job(params = {})
    # @param [Hash] params ({})
    def cancel_annotation_import_job(params = {}, options = {})
      req = build_request(:cancel_annotation_import_job, params)
      req.send_request(options)
    end

    # Cancels a run.
    #
    # @option params [required, String] :id
    #   The run's ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_run({
    #     id: "RunId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/CancelRun AWS API Documentation
    #
    # @overload cancel_run(params = {})
    # @param [Hash] params ({})
    def cancel_run(params = {}, options = {})
      req = build_request(:cancel_run, params)
      req.send_request(options)
    end

    # Cancels a variant import job.
    #
    # @option params [required, String] :job_id
    #   The job's ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_variant_import_job({
    #     job_id: "ResourceId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/CancelVariantImportJob AWS API Documentation
    #
    # @overload cancel_variant_import_job(params = {})
    # @param [Hash] params ({})
    def cancel_variant_import_job(params = {}, options = {})
      req = build_request(:cancel_variant_import_job, params)
      req.send_request(options)
    end

    # Creates an annotation store.
    #
    # @option params [String] :description
    #   A description for the store.
    #
    # @option params [String] :name
    #   A name for the store.
    #
    # @option params [Types::ReferenceItem] :reference
    #   The genome reference for the store's annotations.
    #
    # @option params [Types::SseConfig] :sse_config
    #   Server-side encryption (SSE) settings for the store.
    #
    # @option params [required, String] :store_format
    #   The annotation file format of the store.
    #
    # @option params [Types::StoreOptions] :store_options
    #   File parsing options for the annotation store.
    #
    # @option params [Hash<String,String>] :tags
    #   Tags for the store.
    #
    # @return [Types::CreateAnnotationStoreResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAnnotationStoreResponse#creation_time #creation_time} => Time
    #   * {Types::CreateAnnotationStoreResponse#id #id} => String
    #   * {Types::CreateAnnotationStoreResponse#name #name} => String
    #   * {Types::CreateAnnotationStoreResponse#reference #reference} => Types::ReferenceItem
    #   * {Types::CreateAnnotationStoreResponse#status #status} => String
    #   * {Types::CreateAnnotationStoreResponse#store_format #store_format} => String
    #   * {Types::CreateAnnotationStoreResponse#store_options #store_options} => Types::StoreOptions
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_annotation_store({
    #     description: "StoreDescription",
    #     name: "CreateAnnotationStoreRequestNameString",
    #     reference: {
    #       reference_arn: "ReferenceArn",
    #     },
    #     sse_config: {
    #       key_arn: "SseConfigKeyArnString",
    #       type: "KMS", # required, accepts KMS
    #     },
    #     store_format: "GFF", # required, accepts GFF, TSV, VCF
    #     store_options: {
    #       tsv_store_options: {
    #         annotation_type: "GENERIC", # accepts GENERIC, CHR_POS, CHR_POS_REF_ALT, CHR_START_END_ONE_BASE, CHR_START_END_REF_ALT_ONE_BASE, CHR_START_END_ZERO_BASE, CHR_START_END_REF_ALT_ZERO_BASE
    #         format_to_header: {
    #           "CHR" => "FormatToHeaderValueString",
    #         },
    #         schema: [
    #           {
    #             "String" => "LONG", # accepts LONG, INT, STRING, FLOAT, DOUBLE, BOOLEAN
    #           },
    #         ],
    #       },
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.creation_time #=> Time
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.reference.reference_arn #=> String
    #   resp.status #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE", "FAILED"
    #   resp.store_format #=> String, one of "GFF", "TSV", "VCF"
    #   resp.store_options.tsv_store_options.annotation_type #=> String, one of "GENERIC", "CHR_POS", "CHR_POS_REF_ALT", "CHR_START_END_ONE_BASE", "CHR_START_END_REF_ALT_ONE_BASE", "CHR_START_END_ZERO_BASE", "CHR_START_END_REF_ALT_ZERO_BASE"
    #   resp.store_options.tsv_store_options.format_to_header #=> Hash
    #   resp.store_options.tsv_store_options.format_to_header["FormatToHeaderKey"] #=> String
    #   resp.store_options.tsv_store_options.schema #=> Array
    #   resp.store_options.tsv_store_options.schema[0] #=> Hash
    #   resp.store_options.tsv_store_options.schema[0]["String"] #=> String, one of "LONG", "INT", "STRING", "FLOAT", "DOUBLE", "BOOLEAN"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/CreateAnnotationStore AWS API Documentation
    #
    # @overload create_annotation_store(params = {})
    # @param [Hash] params ({})
    def create_annotation_store(params = {}, options = {})
      req = build_request(:create_annotation_store, params)
      req.send_request(options)
    end

    # Creates a reference store.
    #
    # @option params [String] :client_token
    #   To ensure that requests don't run multiple times, specify a unique
    #   token for each request.
    #
    # @option params [String] :description
    #   A description for the store.
    #
    # @option params [required, String] :name
    #   A name for the store.
    #
    # @option params [Types::SseConfig] :sse_config
    #   Server-side encryption (SSE) settings for the store.
    #
    # @option params [Hash<String,String>] :tags
    #   Tags for the store.
    #
    # @return [Types::CreateReferenceStoreResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateReferenceStoreResponse#arn #arn} => String
    #   * {Types::CreateReferenceStoreResponse#creation_time #creation_time} => Time
    #   * {Types::CreateReferenceStoreResponse#description #description} => String
    #   * {Types::CreateReferenceStoreResponse#id #id} => String
    #   * {Types::CreateReferenceStoreResponse#name #name} => String
    #   * {Types::CreateReferenceStoreResponse#sse_config #sse_config} => Types::SseConfig
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_reference_store({
    #     client_token: "ClientToken",
    #     description: "ReferenceStoreDescription",
    #     name: "ReferenceStoreName", # required
    #     sse_config: {
    #       key_arn: "SseConfigKeyArnString",
    #       type: "KMS", # required, accepts KMS
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.creation_time #=> Time
    #   resp.description #=> String
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.sse_config.key_arn #=> String
    #   resp.sse_config.type #=> String, one of "KMS"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/CreateReferenceStore AWS API Documentation
    #
    # @overload create_reference_store(params = {})
    # @param [Hash] params ({})
    def create_reference_store(params = {}, options = {})
      req = build_request(:create_reference_store, params)
      req.send_request(options)
    end

    # Creates a run group.
    #
    # @option params [Integer] :max_cpus
    #   The maximum number of CPUs to use in the group.
    #
    # @option params [Integer] :max_duration
    #   A max duration for the group.
    #
    # @option params [Integer] :max_runs
    #   The maximum number of concurrent runs for the group.
    #
    # @option params [String] :name
    #   A name for the group.
    #
    # @option params [required, String] :request_id
    #   A request ID for the group.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Hash<String,String>] :tags
    #   Tags for the group.
    #
    # @return [Types::CreateRunGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateRunGroupResponse#arn #arn} => String
    #   * {Types::CreateRunGroupResponse#id #id} => String
    #   * {Types::CreateRunGroupResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_run_group({
    #     max_cpus: 1,
    #     max_duration: 1,
    #     max_runs: 1,
    #     name: "RunGroupName",
    #     request_id: "RunGroupRequestId", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.id #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/CreateRunGroup AWS API Documentation
    #
    # @overload create_run_group(params = {})
    # @param [Hash] params ({})
    def create_run_group(params = {}, options = {})
      req = build_request(:create_run_group, params)
      req.send_request(options)
    end

    # Creates a sequence store.
    #
    # @option params [String] :client_token
    #   To ensure that requests don't run multiple times, specify a unique
    #   token for each request.
    #
    # @option params [String] :description
    #   A description for the store.
    #
    # @option params [required, String] :name
    #   A name for the store.
    #
    # @option params [Types::SseConfig] :sse_config
    #   Server-side encryption (SSE) settings for the store.
    #
    # @option params [Hash<String,String>] :tags
    #   Tags for the store.
    #
    # @return [Types::CreateSequenceStoreResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSequenceStoreResponse#arn #arn} => String
    #   * {Types::CreateSequenceStoreResponse#creation_time #creation_time} => Time
    #   * {Types::CreateSequenceStoreResponse#description #description} => String
    #   * {Types::CreateSequenceStoreResponse#id #id} => String
    #   * {Types::CreateSequenceStoreResponse#name #name} => String
    #   * {Types::CreateSequenceStoreResponse#sse_config #sse_config} => Types::SseConfig
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_sequence_store({
    #     client_token: "ClientToken",
    #     description: "SequenceStoreDescription",
    #     name: "SequenceStoreName", # required
    #     sse_config: {
    #       key_arn: "SseConfigKeyArnString",
    #       type: "KMS", # required, accepts KMS
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.creation_time #=> Time
    #   resp.description #=> String
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.sse_config.key_arn #=> String
    #   resp.sse_config.type #=> String, one of "KMS"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/CreateSequenceStore AWS API Documentation
    #
    # @overload create_sequence_store(params = {})
    # @param [Hash] params ({})
    def create_sequence_store(params = {}, options = {})
      req = build_request(:create_sequence_store, params)
      req.send_request(options)
    end

    # Creates a variant store.
    #
    # @option params [String] :description
    #   A description for the store.
    #
    # @option params [String] :name
    #   A name for the store.
    #
    # @option params [required, Types::ReferenceItem] :reference
    #   The genome reference for the store's variants.
    #
    # @option params [Types::SseConfig] :sse_config
    #   Server-side encryption (SSE) settings for the store.
    #
    # @option params [Hash<String,String>] :tags
    #   Tags for the store.
    #
    # @return [Types::CreateVariantStoreResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateVariantStoreResponse#creation_time #creation_time} => Time
    #   * {Types::CreateVariantStoreResponse#id #id} => String
    #   * {Types::CreateVariantStoreResponse#name #name} => String
    #   * {Types::CreateVariantStoreResponse#reference #reference} => Types::ReferenceItem
    #   * {Types::CreateVariantStoreResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_variant_store({
    #     description: "StoreDescription",
    #     name: "CreateVariantStoreRequestNameString",
    #     reference: { # required
    #       reference_arn: "ReferenceArn",
    #     },
    #     sse_config: {
    #       key_arn: "SseConfigKeyArnString",
    #       type: "KMS", # required, accepts KMS
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.creation_time #=> Time
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.reference.reference_arn #=> String
    #   resp.status #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE", "FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/CreateVariantStore AWS API Documentation
    #
    # @overload create_variant_store(params = {})
    # @param [Hash] params ({})
    def create_variant_store(params = {}, options = {})
      req = build_request(:create_variant_store, params)
      req.send_request(options)
    end

    # Creates a workflow.
    #
    # @option params [String] :definition_uri
    #   The URI of a definition for the workflow.
    #
    # @option params [String, StringIO, File] :definition_zip
    #   A ZIP archive for the workflow.
    #
    # @option params [String] :description
    #   A description for the workflow.
    #
    # @option params [String] :engine
    #   An engine for the workflow.
    #
    # @option params [String] :main
    #   The path of the main definition file for the workflow.
    #
    # @option params [String] :name
    #   A name for the workflow.
    #
    # @option params [Hash<String,Types::WorkflowParameter>] :parameter_template
    #   A parameter template for the workflow.
    #
    # @option params [required, String] :request_id
    #   A request ID for the workflow.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Integer] :storage_capacity
    #   A storage capacity for the workflow.
    #
    # @option params [Hash<String,String>] :tags
    #   Tags for the workflow.
    #
    # @return [Types::CreateWorkflowResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateWorkflowResponse#arn #arn} => String
    #   * {Types::CreateWorkflowResponse#id #id} => String
    #   * {Types::CreateWorkflowResponse#status #status} => String
    #   * {Types::CreateWorkflowResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_workflow({
    #     definition_uri: "WorkflowDefinition",
    #     definition_zip: "data",
    #     description: "WorkflowDescription",
    #     engine: "WDL", # accepts WDL, NEXTFLOW
    #     main: "WorkflowMain",
    #     name: "WorkflowName",
    #     parameter_template: {
    #       "WorkflowParameterName" => {
    #         description: "WorkflowParameterDescription",
    #         optional: false,
    #       },
    #     },
    #     request_id: "WorkflowRequestId", # required
    #     storage_capacity: 1,
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.id #=> String
    #   resp.status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETED", "FAILED"
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/CreateWorkflow AWS API Documentation
    #
    # @overload create_workflow(params = {})
    # @param [Hash] params ({})
    def create_workflow(params = {}, options = {})
      req = build_request(:create_workflow, params)
      req.send_request(options)
    end

    # Deletes an annotation store.
    #
    # @option params [Boolean] :force
    #   Whether to force deletion.
    #
    # @option params [required, String] :name
    #   The store's name.
    #
    # @return [Types::DeleteAnnotationStoreResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteAnnotationStoreResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_annotation_store({
    #     force: false,
    #     name: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE", "FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/DeleteAnnotationStore AWS API Documentation
    #
    # @overload delete_annotation_store(params = {})
    # @param [Hash] params ({})
    def delete_annotation_store(params = {}, options = {})
      req = build_request(:delete_annotation_store, params)
      req.send_request(options)
    end

    # Deletes a genome reference.
    #
    # @option params [required, String] :id
    #   The reference's ID.
    #
    # @option params [required, String] :reference_store_id
    #   The reference's store ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_reference({
    #     id: "ReferenceId", # required
    #     reference_store_id: "ReferenceStoreId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/DeleteReference AWS API Documentation
    #
    # @overload delete_reference(params = {})
    # @param [Hash] params ({})
    def delete_reference(params = {}, options = {})
      req = build_request(:delete_reference, params)
      req.send_request(options)
    end

    # Deletes a genome reference store.
    #
    # @option params [required, String] :id
    #   The store's ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_reference_store({
    #     id: "ReferenceStoreId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/DeleteReferenceStore AWS API Documentation
    #
    # @overload delete_reference_store(params = {})
    # @param [Hash] params ({})
    def delete_reference_store(params = {}, options = {})
      req = build_request(:delete_reference_store, params)
      req.send_request(options)
    end

    # Deletes a workflow run.
    #
    # @option params [required, String] :id
    #   The run's ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_run({
    #     id: "RunId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/DeleteRun AWS API Documentation
    #
    # @overload delete_run(params = {})
    # @param [Hash] params ({})
    def delete_run(params = {}, options = {})
      req = build_request(:delete_run, params)
      req.send_request(options)
    end

    # Deletes a workflow run group.
    #
    # @option params [required, String] :id
    #   The run group's ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_run_group({
    #     id: "RunGroupId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/DeleteRunGroup AWS API Documentation
    #
    # @overload delete_run_group(params = {})
    # @param [Hash] params ({})
    def delete_run_group(params = {}, options = {})
      req = build_request(:delete_run_group, params)
      req.send_request(options)
    end

    # Deletes a sequence store.
    #
    # @option params [required, String] :id
    #   The sequence store's ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_sequence_store({
    #     id: "SequenceStoreId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/DeleteSequenceStore AWS API Documentation
    #
    # @overload delete_sequence_store(params = {})
    # @param [Hash] params ({})
    def delete_sequence_store(params = {}, options = {})
      req = build_request(:delete_sequence_store, params)
      req.send_request(options)
    end

    # Deletes a variant store.
    #
    # @option params [Boolean] :force
    #   Whether to force deletion.
    #
    # @option params [required, String] :name
    #   The store's name.
    #
    # @return [Types::DeleteVariantStoreResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteVariantStoreResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_variant_store({
    #     force: false,
    #     name: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE", "FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/DeleteVariantStore AWS API Documentation
    #
    # @overload delete_variant_store(params = {})
    # @param [Hash] params ({})
    def delete_variant_store(params = {}, options = {})
      req = build_request(:delete_variant_store, params)
      req.send_request(options)
    end

    # Deletes a workflow.
    #
    # @option params [required, String] :id
    #   The workflow's ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_workflow({
    #     id: "WorkflowId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/DeleteWorkflow AWS API Documentation
    #
    # @overload delete_workflow(params = {})
    # @param [Hash] params ({})
    def delete_workflow(params = {}, options = {})
      req = build_request(:delete_workflow, params)
      req.send_request(options)
    end

    # Gets information about an annotation import job.
    #
    # @option params [required, String] :job_id
    #   The job's ID.
    #
    # @return [Types::GetAnnotationImportResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAnnotationImportResponse#completion_time #completion_time} => Time
    #   * {Types::GetAnnotationImportResponse#creation_time #creation_time} => Time
    #   * {Types::GetAnnotationImportResponse#destination_name #destination_name} => String
    #   * {Types::GetAnnotationImportResponse#format_options #format_options} => Types::FormatOptions
    #   * {Types::GetAnnotationImportResponse#id #id} => String
    #   * {Types::GetAnnotationImportResponse#items #items} => Array&lt;Types::AnnotationImportItemDetail&gt;
    #   * {Types::GetAnnotationImportResponse#role_arn #role_arn} => String
    #   * {Types::GetAnnotationImportResponse#run_left_normalization #run_left_normalization} => Boolean
    #   * {Types::GetAnnotationImportResponse#status #status} => String
    #   * {Types::GetAnnotationImportResponse#status_message #status_message} => String
    #   * {Types::GetAnnotationImportResponse#update_time #update_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_annotation_import_job({
    #     job_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.completion_time #=> Time
    #   resp.creation_time #=> Time
    #   resp.destination_name #=> String
    #   resp.format_options.tsv_options.read_options.comment #=> String
    #   resp.format_options.tsv_options.read_options.encoding #=> String
    #   resp.format_options.tsv_options.read_options.escape #=> String
    #   resp.format_options.tsv_options.read_options.escape_quotes #=> Boolean
    #   resp.format_options.tsv_options.read_options.header #=> Boolean
    #   resp.format_options.tsv_options.read_options.line_sep #=> String
    #   resp.format_options.tsv_options.read_options.quote #=> String
    #   resp.format_options.tsv_options.read_options.quote_all #=> Boolean
    #   resp.format_options.tsv_options.read_options.sep #=> String
    #   resp.format_options.vcf_options.ignore_filter_field #=> Boolean
    #   resp.format_options.vcf_options.ignore_qual_field #=> Boolean
    #   resp.id #=> String
    #   resp.items #=> Array
    #   resp.items[0].job_status #=> String, one of "SUBMITTED", "IN_PROGRESS", "CANCELLED", "COMPLETED", "FAILED"
    #   resp.items[0].source #=> String
    #   resp.role_arn #=> String
    #   resp.run_left_normalization #=> Boolean
    #   resp.status #=> String, one of "SUBMITTED", "IN_PROGRESS", "CANCELLED", "COMPLETED", "FAILED"
    #   resp.status_message #=> String
    #   resp.update_time #=> Time
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * annotation_import_job_created
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/GetAnnotationImportJob AWS API Documentation
    #
    # @overload get_annotation_import_job(params = {})
    # @param [Hash] params ({})
    def get_annotation_import_job(params = {}, options = {})
      req = build_request(:get_annotation_import_job, params)
      req.send_request(options)
    end

    # Gets information about an annotation store.
    #
    # @option params [required, String] :name
    #   The store's name.
    #
    # @return [Types::GetAnnotationStoreResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAnnotationStoreResponse#creation_time #creation_time} => Time
    #   * {Types::GetAnnotationStoreResponse#description #description} => String
    #   * {Types::GetAnnotationStoreResponse#id #id} => String
    #   * {Types::GetAnnotationStoreResponse#name #name} => String
    #   * {Types::GetAnnotationStoreResponse#reference #reference} => Types::ReferenceItem
    #   * {Types::GetAnnotationStoreResponse#sse_config #sse_config} => Types::SseConfig
    #   * {Types::GetAnnotationStoreResponse#status #status} => String
    #   * {Types::GetAnnotationStoreResponse#status_message #status_message} => String
    #   * {Types::GetAnnotationStoreResponse#store_arn #store_arn} => String
    #   * {Types::GetAnnotationStoreResponse#store_format #store_format} => String
    #   * {Types::GetAnnotationStoreResponse#store_options #store_options} => Types::StoreOptions
    #   * {Types::GetAnnotationStoreResponse#store_size_bytes #store_size_bytes} => Integer
    #   * {Types::GetAnnotationStoreResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::GetAnnotationStoreResponse#update_time #update_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_annotation_store({
    #     name: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.creation_time #=> Time
    #   resp.description #=> String
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.reference.reference_arn #=> String
    #   resp.sse_config.key_arn #=> String
    #   resp.sse_config.type #=> String, one of "KMS"
    #   resp.status #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE", "FAILED"
    #   resp.status_message #=> String
    #   resp.store_arn #=> String
    #   resp.store_format #=> String, one of "GFF", "TSV", "VCF"
    #   resp.store_options.tsv_store_options.annotation_type #=> String, one of "GENERIC", "CHR_POS", "CHR_POS_REF_ALT", "CHR_START_END_ONE_BASE", "CHR_START_END_REF_ALT_ONE_BASE", "CHR_START_END_ZERO_BASE", "CHR_START_END_REF_ALT_ZERO_BASE"
    #   resp.store_options.tsv_store_options.format_to_header #=> Hash
    #   resp.store_options.tsv_store_options.format_to_header["FormatToHeaderKey"] #=> String
    #   resp.store_options.tsv_store_options.schema #=> Array
    #   resp.store_options.tsv_store_options.schema[0] #=> Hash
    #   resp.store_options.tsv_store_options.schema[0]["String"] #=> String, one of "LONG", "INT", "STRING", "FLOAT", "DOUBLE", "BOOLEAN"
    #   resp.store_size_bytes #=> Integer
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.update_time #=> Time
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * annotation_store_created
    #   * annotation_store_deleted
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/GetAnnotationStore AWS API Documentation
    #
    # @overload get_annotation_store(params = {})
    # @param [Hash] params ({})
    def get_annotation_store(params = {}, options = {})
      req = build_request(:get_annotation_store, params)
      req.send_request(options)
    end

    # Gets a file from a read set.
    #
    # @option params [String] :file
    #   The file to retrieve.
    #
    # @option params [required, String] :id
    #   The read set's ID.
    #
    # @option params [required, Integer] :part_number
    #   The part number to retrieve.
    #
    # @option params [required, String] :sequence_store_id
    #   The read set's sequence store ID.
    #
    # @return [Types::GetReadSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetReadSetResponse#payload #payload} => IO
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_read_set({
    #     file: "SOURCE1", # accepts SOURCE1, SOURCE2, INDEX
    #     id: "ReadSetId", # required
    #     part_number: 1, # required
    #     sequence_store_id: "SequenceStoreId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.payload #=> IO
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/GetReadSet AWS API Documentation
    #
    # @overload get_read_set(params = {})
    # @param [Hash] params ({})
    def get_read_set(params = {}, options = {}, &block)
      req = build_request(:get_read_set, params)
      req.send_request(options, &block)
    end

    # Gets information about a read set activation job.
    #
    # @option params [required, String] :id
    #   The job's ID.
    #
    # @option params [required, String] :sequence_store_id
    #   The job's sequence store ID.
    #
    # @return [Types::GetReadSetActivationJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetReadSetActivationJobResponse#completion_time #completion_time} => Time
    #   * {Types::GetReadSetActivationJobResponse#creation_time #creation_time} => Time
    #   * {Types::GetReadSetActivationJobResponse#id #id} => String
    #   * {Types::GetReadSetActivationJobResponse#sequence_store_id #sequence_store_id} => String
    #   * {Types::GetReadSetActivationJobResponse#sources #sources} => Array&lt;Types::ActivateReadSetSourceItem&gt;
    #   * {Types::GetReadSetActivationJobResponse#status #status} => String
    #   * {Types::GetReadSetActivationJobResponse#status_message #status_message} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_read_set_activation_job({
    #     id: "ActivationJobId", # required
    #     sequence_store_id: "SequenceStoreId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.completion_time #=> Time
    #   resp.creation_time #=> Time
    #   resp.id #=> String
    #   resp.sequence_store_id #=> String
    #   resp.sources #=> Array
    #   resp.sources[0].read_set_id #=> String
    #   resp.sources[0].status #=> String, one of "NOT_STARTED", "IN_PROGRESS", "FINISHED", "FAILED"
    #   resp.sources[0].status_message #=> String
    #   resp.status #=> String, one of "SUBMITTED", "IN_PROGRESS", "CANCELLING", "CANCELLED", "FAILED", "COMPLETED", "COMPLETED_WITH_FAILURES"
    #   resp.status_message #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * read_set_activation_job_completed
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/GetReadSetActivationJob AWS API Documentation
    #
    # @overload get_read_set_activation_job(params = {})
    # @param [Hash] params ({})
    def get_read_set_activation_job(params = {}, options = {})
      req = build_request(:get_read_set_activation_job, params)
      req.send_request(options)
    end

    # Gets information about a read set export job.
    #
    # @option params [required, String] :id
    #   The job's ID.
    #
    # @option params [required, String] :sequence_store_id
    #   The job's sequence store ID.
    #
    # @return [Types::GetReadSetExportJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetReadSetExportJobResponse#completion_time #completion_time} => Time
    #   * {Types::GetReadSetExportJobResponse#creation_time #creation_time} => Time
    #   * {Types::GetReadSetExportJobResponse#destination #destination} => String
    #   * {Types::GetReadSetExportJobResponse#id #id} => String
    #   * {Types::GetReadSetExportJobResponse#read_sets #read_sets} => Array&lt;Types::ExportReadSetDetail&gt;
    #   * {Types::GetReadSetExportJobResponse#sequence_store_id #sequence_store_id} => String
    #   * {Types::GetReadSetExportJobResponse#status #status} => String
    #   * {Types::GetReadSetExportJobResponse#status_message #status_message} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_read_set_export_job({
    #     id: "ExportJobId", # required
    #     sequence_store_id: "SequenceStoreId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.completion_time #=> Time
    #   resp.creation_time #=> Time
    #   resp.destination #=> String
    #   resp.id #=> String
    #   resp.read_sets #=> Array
    #   resp.read_sets[0].id #=> String
    #   resp.read_sets[0].status #=> String, one of "NOT_STARTED", "IN_PROGRESS", "FINISHED", "FAILED"
    #   resp.read_sets[0].status_message #=> String
    #   resp.sequence_store_id #=> String
    #   resp.status #=> String, one of "SUBMITTED", "IN_PROGRESS", "CANCELLING", "CANCELLED", "FAILED", "COMPLETED", "COMPLETED_WITH_FAILURES"
    #   resp.status_message #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * read_set_export_job_completed
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/GetReadSetExportJob AWS API Documentation
    #
    # @overload get_read_set_export_job(params = {})
    # @param [Hash] params ({})
    def get_read_set_export_job(params = {}, options = {})
      req = build_request(:get_read_set_export_job, params)
      req.send_request(options)
    end

    # Gets information about a read set import job.
    #
    # @option params [required, String] :id
    #   The job's ID.
    #
    # @option params [required, String] :sequence_store_id
    #   The job's sequence store ID.
    #
    # @return [Types::GetReadSetImportJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetReadSetImportJobResponse#completion_time #completion_time} => Time
    #   * {Types::GetReadSetImportJobResponse#creation_time #creation_time} => Time
    #   * {Types::GetReadSetImportJobResponse#id #id} => String
    #   * {Types::GetReadSetImportJobResponse#role_arn #role_arn} => String
    #   * {Types::GetReadSetImportJobResponse#sequence_store_id #sequence_store_id} => String
    #   * {Types::GetReadSetImportJobResponse#sources #sources} => Array&lt;Types::ImportReadSetSourceItem&gt;
    #   * {Types::GetReadSetImportJobResponse#status #status} => String
    #   * {Types::GetReadSetImportJobResponse#status_message #status_message} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_read_set_import_job({
    #     id: "ImportJobId", # required
    #     sequence_store_id: "SequenceStoreId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.completion_time #=> Time
    #   resp.creation_time #=> Time
    #   resp.id #=> String
    #   resp.role_arn #=> String
    #   resp.sequence_store_id #=> String
    #   resp.sources #=> Array
    #   resp.sources[0].description #=> String
    #   resp.sources[0].generated_from #=> String
    #   resp.sources[0].name #=> String
    #   resp.sources[0].reference_arn #=> String
    #   resp.sources[0].sample_id #=> String
    #   resp.sources[0].source_file_type #=> String, one of "FASTQ", "BAM", "CRAM"
    #   resp.sources[0].source_files.source1 #=> String
    #   resp.sources[0].source_files.source2 #=> String
    #   resp.sources[0].status #=> String, one of "NOT_STARTED", "IN_PROGRESS", "FINISHED", "FAILED"
    #   resp.sources[0].status_message #=> String
    #   resp.sources[0].subject_id #=> String
    #   resp.sources[0].tags #=> Hash
    #   resp.sources[0].tags["TagKey"] #=> String
    #   resp.status #=> String, one of "SUBMITTED", "IN_PROGRESS", "CANCELLING", "CANCELLED", "FAILED", "COMPLETED", "COMPLETED_WITH_FAILURES"
    #   resp.status_message #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * read_set_import_job_completed
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/GetReadSetImportJob AWS API Documentation
    #
    # @overload get_read_set_import_job(params = {})
    # @param [Hash] params ({})
    def get_read_set_import_job(params = {}, options = {})
      req = build_request(:get_read_set_import_job, params)
      req.send_request(options)
    end

    # Gets details about a read set.
    #
    # @option params [required, String] :id
    #   The read set's ID.
    #
    # @option params [required, String] :sequence_store_id
    #   The read set's sequence store ID.
    #
    # @return [Types::GetReadSetMetadataResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetReadSetMetadataResponse#arn #arn} => String
    #   * {Types::GetReadSetMetadataResponse#creation_time #creation_time} => Time
    #   * {Types::GetReadSetMetadataResponse#description #description} => String
    #   * {Types::GetReadSetMetadataResponse#file_type #file_type} => String
    #   * {Types::GetReadSetMetadataResponse#files #files} => Types::ReadSetFiles
    #   * {Types::GetReadSetMetadataResponse#id #id} => String
    #   * {Types::GetReadSetMetadataResponse#name #name} => String
    #   * {Types::GetReadSetMetadataResponse#reference_arn #reference_arn} => String
    #   * {Types::GetReadSetMetadataResponse#sample_id #sample_id} => String
    #   * {Types::GetReadSetMetadataResponse#sequence_information #sequence_information} => Types::SequenceInformation
    #   * {Types::GetReadSetMetadataResponse#sequence_store_id #sequence_store_id} => String
    #   * {Types::GetReadSetMetadataResponse#status #status} => String
    #   * {Types::GetReadSetMetadataResponse#subject_id #subject_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_read_set_metadata({
    #     id: "ReadSetId", # required
    #     sequence_store_id: "SequenceStoreId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.creation_time #=> Time
    #   resp.description #=> String
    #   resp.file_type #=> String, one of "FASTQ", "BAM", "CRAM"
    #   resp.files.index.content_length #=> Integer
    #   resp.files.index.part_size #=> Integer
    #   resp.files.index.total_parts #=> Integer
    #   resp.files.source1.content_length #=> Integer
    #   resp.files.source1.part_size #=> Integer
    #   resp.files.source1.total_parts #=> Integer
    #   resp.files.source2.content_length #=> Integer
    #   resp.files.source2.part_size #=> Integer
    #   resp.files.source2.total_parts #=> Integer
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.reference_arn #=> String
    #   resp.sample_id #=> String
    #   resp.sequence_information.alignment #=> String
    #   resp.sequence_information.generated_from #=> String
    #   resp.sequence_information.total_base_count #=> Integer
    #   resp.sequence_information.total_read_count #=> Integer
    #   resp.sequence_store_id #=> String
    #   resp.status #=> String, one of "ARCHIVED", "ACTIVATING", "ACTIVE", "DELETING", "DELETED"
    #   resp.subject_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/GetReadSetMetadata AWS API Documentation
    #
    # @overload get_read_set_metadata(params = {})
    # @param [Hash] params ({})
    def get_read_set_metadata(params = {}, options = {})
      req = build_request(:get_read_set_metadata, params)
      req.send_request(options)
    end

    # Gets a reference file.
    #
    # @option params [String] :file
    #   The file to retrieve.
    #
    # @option params [required, String] :id
    #   The reference's ID.
    #
    # @option params [required, Integer] :part_number
    #   The part number to retrieve.
    #
    # @option params [String] :range
    #   The range to retrieve.
    #
    # @option params [required, String] :reference_store_id
    #   The reference's store ID.
    #
    # @return [Types::GetReferenceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetReferenceResponse#payload #payload} => IO
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_reference({
    #     file: "SOURCE", # accepts SOURCE, INDEX
    #     id: "ReferenceId", # required
    #     part_number: 1, # required
    #     range: "Range",
    #     reference_store_id: "ReferenceStoreId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.payload #=> IO
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/GetReference AWS API Documentation
    #
    # @overload get_reference(params = {})
    # @param [Hash] params ({})
    def get_reference(params = {}, options = {}, &block)
      req = build_request(:get_reference, params)
      req.send_request(options, &block)
    end

    # Gets information about a reference import job.
    #
    # @option params [required, String] :id
    #   The job's ID.
    #
    # @option params [required, String] :reference_store_id
    #   The job's reference store ID.
    #
    # @return [Types::GetReferenceImportJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetReferenceImportJobResponse#completion_time #completion_time} => Time
    #   * {Types::GetReferenceImportJobResponse#creation_time #creation_time} => Time
    #   * {Types::GetReferenceImportJobResponse#id #id} => String
    #   * {Types::GetReferenceImportJobResponse#reference_store_id #reference_store_id} => String
    #   * {Types::GetReferenceImportJobResponse#role_arn #role_arn} => String
    #   * {Types::GetReferenceImportJobResponse#sources #sources} => Array&lt;Types::ImportReferenceSourceItem&gt;
    #   * {Types::GetReferenceImportJobResponse#status #status} => String
    #   * {Types::GetReferenceImportJobResponse#status_message #status_message} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_reference_import_job({
    #     id: "ImportJobId", # required
    #     reference_store_id: "ReferenceStoreId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.completion_time #=> Time
    #   resp.creation_time #=> Time
    #   resp.id #=> String
    #   resp.reference_store_id #=> String
    #   resp.role_arn #=> String
    #   resp.sources #=> Array
    #   resp.sources[0].description #=> String
    #   resp.sources[0].name #=> String
    #   resp.sources[0].source_file #=> String
    #   resp.sources[0].status #=> String, one of "NOT_STARTED", "IN_PROGRESS", "FINISHED", "FAILED"
    #   resp.sources[0].status_message #=> String
    #   resp.sources[0].tags #=> Hash
    #   resp.sources[0].tags["TagKey"] #=> String
    #   resp.status #=> String, one of "SUBMITTED", "IN_PROGRESS", "CANCELLING", "CANCELLED", "FAILED", "COMPLETED", "COMPLETED_WITH_FAILURES"
    #   resp.status_message #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * reference_import_job_completed
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/GetReferenceImportJob AWS API Documentation
    #
    # @overload get_reference_import_job(params = {})
    # @param [Hash] params ({})
    def get_reference_import_job(params = {}, options = {})
      req = build_request(:get_reference_import_job, params)
      req.send_request(options)
    end

    # Gets information about a genome reference's metadata.
    #
    # @option params [required, String] :id
    #   The reference's ID.
    #
    # @option params [required, String] :reference_store_id
    #   The reference's reference store ID.
    #
    # @return [Types::GetReferenceMetadataResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetReferenceMetadataResponse#arn #arn} => String
    #   * {Types::GetReferenceMetadataResponse#creation_time #creation_time} => Time
    #   * {Types::GetReferenceMetadataResponse#description #description} => String
    #   * {Types::GetReferenceMetadataResponse#files #files} => Types::ReferenceFiles
    #   * {Types::GetReferenceMetadataResponse#id #id} => String
    #   * {Types::GetReferenceMetadataResponse#md5 #md5} => String
    #   * {Types::GetReferenceMetadataResponse#name #name} => String
    #   * {Types::GetReferenceMetadataResponse#reference_store_id #reference_store_id} => String
    #   * {Types::GetReferenceMetadataResponse#status #status} => String
    #   * {Types::GetReferenceMetadataResponse#update_time #update_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_reference_metadata({
    #     id: "ReferenceId", # required
    #     reference_store_id: "ReferenceStoreId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.creation_time #=> Time
    #   resp.description #=> String
    #   resp.files.index.content_length #=> Integer
    #   resp.files.index.part_size #=> Integer
    #   resp.files.index.total_parts #=> Integer
    #   resp.files.source.content_length #=> Integer
    #   resp.files.source.part_size #=> Integer
    #   resp.files.source.total_parts #=> Integer
    #   resp.id #=> String
    #   resp.md5 #=> String
    #   resp.name #=> String
    #   resp.reference_store_id #=> String
    #   resp.status #=> String, one of "ACTIVE", "DELETING", "DELETED"
    #   resp.update_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/GetReferenceMetadata AWS API Documentation
    #
    # @overload get_reference_metadata(params = {})
    # @param [Hash] params ({})
    def get_reference_metadata(params = {}, options = {})
      req = build_request(:get_reference_metadata, params)
      req.send_request(options)
    end

    # Gets information about a reference store.
    #
    # @option params [required, String] :id
    #   The store's ID.
    #
    # @return [Types::GetReferenceStoreResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetReferenceStoreResponse#arn #arn} => String
    #   * {Types::GetReferenceStoreResponse#creation_time #creation_time} => Time
    #   * {Types::GetReferenceStoreResponse#description #description} => String
    #   * {Types::GetReferenceStoreResponse#id #id} => String
    #   * {Types::GetReferenceStoreResponse#name #name} => String
    #   * {Types::GetReferenceStoreResponse#sse_config #sse_config} => Types::SseConfig
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_reference_store({
    #     id: "ReferenceStoreId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.creation_time #=> Time
    #   resp.description #=> String
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.sse_config.key_arn #=> String
    #   resp.sse_config.type #=> String, one of "KMS"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/GetReferenceStore AWS API Documentation
    #
    # @overload get_reference_store(params = {})
    # @param [Hash] params ({})
    def get_reference_store(params = {}, options = {})
      req = build_request(:get_reference_store, params)
      req.send_request(options)
    end

    # Gets information about a workflow run.
    #
    # @option params [Array<String>] :export
    #   The run's export format.
    #
    # @option params [required, String] :id
    #   The run's ID.
    #
    # @return [Types::GetRunResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRunResponse#arn #arn} => String
    #   * {Types::GetRunResponse#creation_time #creation_time} => Time
    #   * {Types::GetRunResponse#definition #definition} => String
    #   * {Types::GetRunResponse#digest #digest} => String
    #   * {Types::GetRunResponse#id #id} => String
    #   * {Types::GetRunResponse#log_level #log_level} => String
    #   * {Types::GetRunResponse#name #name} => String
    #   * {Types::GetRunResponse#output_uri #output_uri} => String
    #   * {Types::GetRunResponse#parameters #parameters} => Hash,Array,String,Numeric,Boolean
    #   * {Types::GetRunResponse#priority #priority} => Integer
    #   * {Types::GetRunResponse#resource_digests #resource_digests} => Hash&lt;String,String&gt;
    #   * {Types::GetRunResponse#role_arn #role_arn} => String
    #   * {Types::GetRunResponse#run_group_id #run_group_id} => String
    #   * {Types::GetRunResponse#run_id #run_id} => String
    #   * {Types::GetRunResponse#start_time #start_time} => Time
    #   * {Types::GetRunResponse#started_by #started_by} => String
    #   * {Types::GetRunResponse#status #status} => String
    #   * {Types::GetRunResponse#status_message #status_message} => String
    #   * {Types::GetRunResponse#stop_time #stop_time} => Time
    #   * {Types::GetRunResponse#storage_capacity #storage_capacity} => Integer
    #   * {Types::GetRunResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::GetRunResponse#workflow_id #workflow_id} => String
    #   * {Types::GetRunResponse#workflow_type #workflow_type} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_run({
    #     export: ["DEFINITION"], # accepts DEFINITION
    #     id: "RunId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.creation_time #=> Time
    #   resp.definition #=> String
    #   resp.digest #=> String
    #   resp.id #=> String
    #   resp.log_level #=> String, one of "OFF", "FATAL", "ERROR", "ALL"
    #   resp.name #=> String
    #   resp.output_uri #=> String
    #   resp.priority #=> Integer
    #   resp.resource_digests #=> Hash
    #   resp.resource_digests["RunResourceDigestKey"] #=> String
    #   resp.role_arn #=> String
    #   resp.run_group_id #=> String
    #   resp.run_id #=> String
    #   resp.start_time #=> Time
    #   resp.started_by #=> String
    #   resp.status #=> String, one of "PENDING", "STARTING", "RUNNING", "STOPPING", "COMPLETED", "DELETED", "CANCELLED", "FAILED"
    #   resp.status_message #=> String
    #   resp.stop_time #=> Time
    #   resp.storage_capacity #=> Integer
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.workflow_id #=> String
    #   resp.workflow_type #=> String, one of "PRIVATE"
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * run_completed
    #   * run_running
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/GetRun AWS API Documentation
    #
    # @overload get_run(params = {})
    # @param [Hash] params ({})
    def get_run(params = {}, options = {})
      req = build_request(:get_run, params)
      req.send_request(options)
    end

    # Gets information about a workflow run group.
    #
    # @option params [required, String] :id
    #   The group's ID.
    #
    # @return [Types::GetRunGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRunGroupResponse#arn #arn} => String
    #   * {Types::GetRunGroupResponse#creation_time #creation_time} => Time
    #   * {Types::GetRunGroupResponse#id #id} => String
    #   * {Types::GetRunGroupResponse#max_cpus #max_cpus} => Integer
    #   * {Types::GetRunGroupResponse#max_duration #max_duration} => Integer
    #   * {Types::GetRunGroupResponse#max_runs #max_runs} => Integer
    #   * {Types::GetRunGroupResponse#name #name} => String
    #   * {Types::GetRunGroupResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_run_group({
    #     id: "RunGroupId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.creation_time #=> Time
    #   resp.id #=> String
    #   resp.max_cpus #=> Integer
    #   resp.max_duration #=> Integer
    #   resp.max_runs #=> Integer
    #   resp.name #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/GetRunGroup AWS API Documentation
    #
    # @overload get_run_group(params = {})
    # @param [Hash] params ({})
    def get_run_group(params = {}, options = {})
      req = build_request(:get_run_group, params)
      req.send_request(options)
    end

    # Gets information about a workflow run task.
    #
    # @option params [required, String] :id
    #   The task's ID.
    #
    # @option params [required, String] :task_id
    #   The task's ID.
    #
    # @return [Types::GetRunTaskResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRunTaskResponse#cpus #cpus} => Integer
    #   * {Types::GetRunTaskResponse#creation_time #creation_time} => Time
    #   * {Types::GetRunTaskResponse#log_stream #log_stream} => String
    #   * {Types::GetRunTaskResponse#memory #memory} => Integer
    #   * {Types::GetRunTaskResponse#name #name} => String
    #   * {Types::GetRunTaskResponse#start_time #start_time} => Time
    #   * {Types::GetRunTaskResponse#status #status} => String
    #   * {Types::GetRunTaskResponse#status_message #status_message} => String
    #   * {Types::GetRunTaskResponse#stop_time #stop_time} => Time
    #   * {Types::GetRunTaskResponse#task_id #task_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_run_task({
    #     id: "RunId", # required
    #     task_id: "TaskId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.cpus #=> Integer
    #   resp.creation_time #=> Time
    #   resp.log_stream #=> String
    #   resp.memory #=> Integer
    #   resp.name #=> String
    #   resp.start_time #=> Time
    #   resp.status #=> String, one of "PENDING", "STARTING", "RUNNING", "STOPPING", "COMPLETED", "CANCELLED", "FAILED"
    #   resp.status_message #=> String
    #   resp.stop_time #=> Time
    #   resp.task_id #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * task_completed
    #   * task_running
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/GetRunTask AWS API Documentation
    #
    # @overload get_run_task(params = {})
    # @param [Hash] params ({})
    def get_run_task(params = {}, options = {})
      req = build_request(:get_run_task, params)
      req.send_request(options)
    end

    # Gets information about a sequence store.
    #
    # @option params [required, String] :id
    #   The store's ID.
    #
    # @return [Types::GetSequenceStoreResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSequenceStoreResponse#arn #arn} => String
    #   * {Types::GetSequenceStoreResponse#creation_time #creation_time} => Time
    #   * {Types::GetSequenceStoreResponse#description #description} => String
    #   * {Types::GetSequenceStoreResponse#id #id} => String
    #   * {Types::GetSequenceStoreResponse#name #name} => String
    #   * {Types::GetSequenceStoreResponse#sse_config #sse_config} => Types::SseConfig
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_sequence_store({
    #     id: "SequenceStoreId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.creation_time #=> Time
    #   resp.description #=> String
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.sse_config.key_arn #=> String
    #   resp.sse_config.type #=> String, one of "KMS"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/GetSequenceStore AWS API Documentation
    #
    # @overload get_sequence_store(params = {})
    # @param [Hash] params ({})
    def get_sequence_store(params = {}, options = {})
      req = build_request(:get_sequence_store, params)
      req.send_request(options)
    end

    # Gets information about a variant import job.
    #
    # @option params [required, String] :job_id
    #   The job's ID.
    #
    # @return [Types::GetVariantImportResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetVariantImportResponse#completion_time #completion_time} => Time
    #   * {Types::GetVariantImportResponse#creation_time #creation_time} => Time
    #   * {Types::GetVariantImportResponse#destination_name #destination_name} => String
    #   * {Types::GetVariantImportResponse#id #id} => String
    #   * {Types::GetVariantImportResponse#items #items} => Array&lt;Types::VariantImportItemDetail&gt;
    #   * {Types::GetVariantImportResponse#role_arn #role_arn} => String
    #   * {Types::GetVariantImportResponse#run_left_normalization #run_left_normalization} => Boolean
    #   * {Types::GetVariantImportResponse#status #status} => String
    #   * {Types::GetVariantImportResponse#status_message #status_message} => String
    #   * {Types::GetVariantImportResponse#update_time #update_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_variant_import_job({
    #     job_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.completion_time #=> Time
    #   resp.creation_time #=> Time
    #   resp.destination_name #=> String
    #   resp.id #=> String
    #   resp.items #=> Array
    #   resp.items[0].job_status #=> String, one of "SUBMITTED", "IN_PROGRESS", "CANCELLED", "COMPLETED", "FAILED"
    #   resp.items[0].source #=> String
    #   resp.role_arn #=> String
    #   resp.run_left_normalization #=> Boolean
    #   resp.status #=> String, one of "SUBMITTED", "IN_PROGRESS", "CANCELLED", "COMPLETED", "FAILED"
    #   resp.status_message #=> String
    #   resp.update_time #=> Time
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * variant_import_job_created
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/GetVariantImportJob AWS API Documentation
    #
    # @overload get_variant_import_job(params = {})
    # @param [Hash] params ({})
    def get_variant_import_job(params = {}, options = {})
      req = build_request(:get_variant_import_job, params)
      req.send_request(options)
    end

    # Gets information about a variant store.
    #
    # @option params [required, String] :name
    #   The store's name.
    #
    # @return [Types::GetVariantStoreResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetVariantStoreResponse#creation_time #creation_time} => Time
    #   * {Types::GetVariantStoreResponse#description #description} => String
    #   * {Types::GetVariantStoreResponse#id #id} => String
    #   * {Types::GetVariantStoreResponse#name #name} => String
    #   * {Types::GetVariantStoreResponse#reference #reference} => Types::ReferenceItem
    #   * {Types::GetVariantStoreResponse#sse_config #sse_config} => Types::SseConfig
    #   * {Types::GetVariantStoreResponse#status #status} => String
    #   * {Types::GetVariantStoreResponse#status_message #status_message} => String
    #   * {Types::GetVariantStoreResponse#store_arn #store_arn} => String
    #   * {Types::GetVariantStoreResponse#store_size_bytes #store_size_bytes} => Integer
    #   * {Types::GetVariantStoreResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::GetVariantStoreResponse#update_time #update_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_variant_store({
    #     name: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.creation_time #=> Time
    #   resp.description #=> String
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.reference.reference_arn #=> String
    #   resp.sse_config.key_arn #=> String
    #   resp.sse_config.type #=> String, one of "KMS"
    #   resp.status #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE", "FAILED"
    #   resp.status_message #=> String
    #   resp.store_arn #=> String
    #   resp.store_size_bytes #=> Integer
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.update_time #=> Time
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * variant_store_created
    #   * variant_store_deleted
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/GetVariantStore AWS API Documentation
    #
    # @overload get_variant_store(params = {})
    # @param [Hash] params ({})
    def get_variant_store(params = {}, options = {})
      req = build_request(:get_variant_store, params)
      req.send_request(options)
    end

    # Gets information about a workflow.
    #
    # @option params [Array<String>] :export
    #   The export format for the workflow.
    #
    # @option params [required, String] :id
    #   The workflow's ID.
    #
    # @option params [String] :type
    #   The workflow's type.
    #
    # @return [Types::GetWorkflowResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetWorkflowResponse#arn #arn} => String
    #   * {Types::GetWorkflowResponse#creation_time #creation_time} => Time
    #   * {Types::GetWorkflowResponse#definition #definition} => String
    #   * {Types::GetWorkflowResponse#description #description} => String
    #   * {Types::GetWorkflowResponse#digest #digest} => String
    #   * {Types::GetWorkflowResponse#engine #engine} => String
    #   * {Types::GetWorkflowResponse#id #id} => String
    #   * {Types::GetWorkflowResponse#main #main} => String
    #   * {Types::GetWorkflowResponse#name #name} => String
    #   * {Types::GetWorkflowResponse#parameter_template #parameter_template} => Hash&lt;String,Types::WorkflowParameter&gt;
    #   * {Types::GetWorkflowResponse#status #status} => String
    #   * {Types::GetWorkflowResponse#status_message #status_message} => String
    #   * {Types::GetWorkflowResponse#storage_capacity #storage_capacity} => Integer
    #   * {Types::GetWorkflowResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::GetWorkflowResponse#type #type} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_workflow({
    #     export: ["DEFINITION"], # accepts DEFINITION
    #     id: "WorkflowId", # required
    #     type: "PRIVATE", # accepts PRIVATE
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.creation_time #=> Time
    #   resp.definition #=> String
    #   resp.description #=> String
    #   resp.digest #=> String
    #   resp.engine #=> String, one of "WDL", "NEXTFLOW"
    #   resp.id #=> String
    #   resp.main #=> String
    #   resp.name #=> String
    #   resp.parameter_template #=> Hash
    #   resp.parameter_template["WorkflowParameterName"].description #=> String
    #   resp.parameter_template["WorkflowParameterName"].optional #=> Boolean
    #   resp.status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETED", "FAILED"
    #   resp.status_message #=> String
    #   resp.storage_capacity #=> Integer
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.type #=> String, one of "PRIVATE"
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * workflow_active
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/GetWorkflow AWS API Documentation
    #
    # @overload get_workflow(params = {})
    # @param [Hash] params ({})
    def get_workflow(params = {}, options = {})
      req = build_request(:get_workflow, params)
      req.send_request(options)
    end

    # Retrieves a list of annotation import jobs.
    #
    # @option params [Types::ListAnnotationImportJobsFilter] :filter
    #   A filter to apply to the list.
    #
    # @option params [Array<String>] :ids
    #   IDs of annotation import jobs to retrieve.
    #
    # @option params [Integer] :max_results
    #   The maximum number of jobs to return in one page of results.
    #
    # @option params [String] :next_token
    #   Specify the pagination token from a previous request to retrieve the
    #   next page of results.
    #
    # @return [Types::ListAnnotationImportJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAnnotationImportJobsResponse#annotation_import_jobs #annotation_import_jobs} => Array&lt;Types::AnnotationImportJobItem&gt;
    #   * {Types::ListAnnotationImportJobsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_annotation_import_jobs({
    #     filter: {
    #       status: "SUBMITTED", # accepts SUBMITTED, IN_PROGRESS, CANCELLED, COMPLETED, FAILED
    #       store_name: "String",
    #     },
    #     ids: ["ResourceIdentifier"],
    #     max_results: 1,
    #     next_token: "ListAnnotationImportJobsRequestNextTokenString",
    #   })
    #
    # @example Response structure
    #
    #   resp.annotation_import_jobs #=> Array
    #   resp.annotation_import_jobs[0].completion_time #=> Time
    #   resp.annotation_import_jobs[0].creation_time #=> Time
    #   resp.annotation_import_jobs[0].destination_name #=> String
    #   resp.annotation_import_jobs[0].id #=> String
    #   resp.annotation_import_jobs[0].role_arn #=> String
    #   resp.annotation_import_jobs[0].run_left_normalization #=> Boolean
    #   resp.annotation_import_jobs[0].status #=> String, one of "SUBMITTED", "IN_PROGRESS", "CANCELLED", "COMPLETED", "FAILED"
    #   resp.annotation_import_jobs[0].update_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ListAnnotationImportJobs AWS API Documentation
    #
    # @overload list_annotation_import_jobs(params = {})
    # @param [Hash] params ({})
    def list_annotation_import_jobs(params = {}, options = {})
      req = build_request(:list_annotation_import_jobs, params)
      req.send_request(options)
    end

    # Retrieves a list of annotation stores.
    #
    # @option params [Types::ListAnnotationStoresFilter] :filter
    #   A filter to apply to the list.
    #
    # @option params [Array<String>] :ids
    #   IDs of stores to list.
    #
    # @option params [Integer] :max_results
    #   The maximum number of stores to return in one page of results.
    #
    # @option params [String] :next_token
    #   Specify the pagination token from a previous request to retrieve the
    #   next page of results.
    #
    # @return [Types::ListAnnotationStoresResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAnnotationStoresResponse#annotation_stores #annotation_stores} => Array&lt;Types::AnnotationStoreItem&gt;
    #   * {Types::ListAnnotationStoresResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_annotation_stores({
    #     filter: {
    #       status: "CREATING", # accepts CREATING, UPDATING, DELETING, ACTIVE, FAILED
    #     },
    #     ids: ["ResourceIdentifier"],
    #     max_results: 1,
    #     next_token: "ListAnnotationStoresRequestNextTokenString",
    #   })
    #
    # @example Response structure
    #
    #   resp.annotation_stores #=> Array
    #   resp.annotation_stores[0].creation_time #=> Time
    #   resp.annotation_stores[0].description #=> String
    #   resp.annotation_stores[0].id #=> String
    #   resp.annotation_stores[0].name #=> String
    #   resp.annotation_stores[0].reference.reference_arn #=> String
    #   resp.annotation_stores[0].sse_config.key_arn #=> String
    #   resp.annotation_stores[0].sse_config.type #=> String, one of "KMS"
    #   resp.annotation_stores[0].status #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE", "FAILED"
    #   resp.annotation_stores[0].status_message #=> String
    #   resp.annotation_stores[0].store_arn #=> String
    #   resp.annotation_stores[0].store_format #=> String, one of "GFF", "TSV", "VCF"
    #   resp.annotation_stores[0].store_size_bytes #=> Integer
    #   resp.annotation_stores[0].update_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ListAnnotationStores AWS API Documentation
    #
    # @overload list_annotation_stores(params = {})
    # @param [Hash] params ({})
    def list_annotation_stores(params = {}, options = {})
      req = build_request(:list_annotation_stores, params)
      req.send_request(options)
    end

    # Retrieves a list of read set activation jobs.
    #
    # @option params [Types::ActivateReadSetFilter] :filter
    #   A filter to apply to the list.
    #
    # @option params [Integer] :max_results
    #   The maximum number of read set activation jobs to return in one page
    #   of results.
    #
    # @option params [String] :next_token
    #   Specify the pagination token from a previous request to retrieve the
    #   next page of results.
    #
    # @option params [required, String] :sequence_store_id
    #   The read set's sequence store ID.
    #
    # @return [Types::ListReadSetActivationJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListReadSetActivationJobsResponse#activation_jobs #activation_jobs} => Array&lt;Types::ActivateReadSetJobItem&gt;
    #   * {Types::ListReadSetActivationJobsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_read_set_activation_jobs({
    #     filter: {
    #       created_after: Time.now,
    #       created_before: Time.now,
    #       status: "SUBMITTED", # accepts SUBMITTED, IN_PROGRESS, CANCELLING, CANCELLED, FAILED, COMPLETED, COMPLETED_WITH_FAILURES
    #     },
    #     max_results: 1,
    #     next_token: "NextToken",
    #     sequence_store_id: "SequenceStoreId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.activation_jobs #=> Array
    #   resp.activation_jobs[0].completion_time #=> Time
    #   resp.activation_jobs[0].creation_time #=> Time
    #   resp.activation_jobs[0].id #=> String
    #   resp.activation_jobs[0].sequence_store_id #=> String
    #   resp.activation_jobs[0].status #=> String, one of "SUBMITTED", "IN_PROGRESS", "CANCELLING", "CANCELLED", "FAILED", "COMPLETED", "COMPLETED_WITH_FAILURES"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ListReadSetActivationJobs AWS API Documentation
    #
    # @overload list_read_set_activation_jobs(params = {})
    # @param [Hash] params ({})
    def list_read_set_activation_jobs(params = {}, options = {})
      req = build_request(:list_read_set_activation_jobs, params)
      req.send_request(options)
    end

    # Retrieves a list of read set export jobs.
    #
    # @option params [Types::ExportReadSetFilter] :filter
    #   A filter to apply to the list.
    #
    # @option params [Integer] :max_results
    #   The maximum number of jobs to return in one page of results.
    #
    # @option params [String] :next_token
    #   Specify the pagination token from a previous request to retrieve the
    #   next page of results.
    #
    # @option params [required, String] :sequence_store_id
    #   The jobs' sequence store ID.
    #
    # @return [Types::ListReadSetExportJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListReadSetExportJobsResponse#export_jobs #export_jobs} => Array&lt;Types::ExportReadSetJobDetail&gt;
    #   * {Types::ListReadSetExportJobsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_read_set_export_jobs({
    #     filter: {
    #       created_after: Time.now,
    #       created_before: Time.now,
    #       status: "SUBMITTED", # accepts SUBMITTED, IN_PROGRESS, CANCELLING, CANCELLED, FAILED, COMPLETED, COMPLETED_WITH_FAILURES
    #     },
    #     max_results: 1,
    #     next_token: "NextToken",
    #     sequence_store_id: "SequenceStoreId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.export_jobs #=> Array
    #   resp.export_jobs[0].completion_time #=> Time
    #   resp.export_jobs[0].creation_time #=> Time
    #   resp.export_jobs[0].destination #=> String
    #   resp.export_jobs[0].id #=> String
    #   resp.export_jobs[0].sequence_store_id #=> String
    #   resp.export_jobs[0].status #=> String, one of "SUBMITTED", "IN_PROGRESS", "CANCELLING", "CANCELLED", "FAILED", "COMPLETED", "COMPLETED_WITH_FAILURES"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ListReadSetExportJobs AWS API Documentation
    #
    # @overload list_read_set_export_jobs(params = {})
    # @param [Hash] params ({})
    def list_read_set_export_jobs(params = {}, options = {})
      req = build_request(:list_read_set_export_jobs, params)
      req.send_request(options)
    end

    # Retrieves a list of read set import jobs.
    #
    # @option params [Types::ImportReadSetFilter] :filter
    #   A filter to apply to the list.
    #
    # @option params [Integer] :max_results
    #   The maximum number of jobs to return in one page of results.
    #
    # @option params [String] :next_token
    #   Specify the pagination token from a previous request to retrieve the
    #   next page of results.
    #
    # @option params [required, String] :sequence_store_id
    #   The jobs' sequence store ID.
    #
    # @return [Types::ListReadSetImportJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListReadSetImportJobsResponse#import_jobs #import_jobs} => Array&lt;Types::ImportReadSetJobItem&gt;
    #   * {Types::ListReadSetImportJobsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_read_set_import_jobs({
    #     filter: {
    #       created_after: Time.now,
    #       created_before: Time.now,
    #       status: "SUBMITTED", # accepts SUBMITTED, IN_PROGRESS, CANCELLING, CANCELLED, FAILED, COMPLETED, COMPLETED_WITH_FAILURES
    #     },
    #     max_results: 1,
    #     next_token: "NextToken",
    #     sequence_store_id: "SequenceStoreId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.import_jobs #=> Array
    #   resp.import_jobs[0].completion_time #=> Time
    #   resp.import_jobs[0].creation_time #=> Time
    #   resp.import_jobs[0].id #=> String
    #   resp.import_jobs[0].role_arn #=> String
    #   resp.import_jobs[0].sequence_store_id #=> String
    #   resp.import_jobs[0].status #=> String, one of "SUBMITTED", "IN_PROGRESS", "CANCELLING", "CANCELLED", "FAILED", "COMPLETED", "COMPLETED_WITH_FAILURES"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ListReadSetImportJobs AWS API Documentation
    #
    # @overload list_read_set_import_jobs(params = {})
    # @param [Hash] params ({})
    def list_read_set_import_jobs(params = {}, options = {})
      req = build_request(:list_read_set_import_jobs, params)
      req.send_request(options)
    end

    # Retrieves a list of read sets.
    #
    # @option params [Types::ReadSetFilter] :filter
    #   A filter to apply to the list.
    #
    # @option params [Integer] :max_results
    #   The maximum number of read sets to return in one page of results.
    #
    # @option params [String] :next_token
    #   Specify the pagination token from a previous request to retrieve the
    #   next page of results.
    #
    # @option params [required, String] :sequence_store_id
    #   The jobs' sequence store ID.
    #
    # @return [Types::ListReadSetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListReadSetsResponse#next_token #next_token} => String
    #   * {Types::ListReadSetsResponse#read_sets #read_sets} => Array&lt;Types::ReadSetListItem&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_read_sets({
    #     filter: {
    #       created_after: Time.now,
    #       created_before: Time.now,
    #       name: "ReadSetName",
    #       reference_arn: "ReferenceArn",
    #       status: "ARCHIVED", # accepts ARCHIVED, ACTIVATING, ACTIVE, DELETING, DELETED
    #     },
    #     max_results: 1,
    #     next_token: "NextToken",
    #     sequence_store_id: "SequenceStoreId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.read_sets #=> Array
    #   resp.read_sets[0].arn #=> String
    #   resp.read_sets[0].creation_time #=> Time
    #   resp.read_sets[0].description #=> String
    #   resp.read_sets[0].file_type #=> String, one of "FASTQ", "BAM", "CRAM"
    #   resp.read_sets[0].id #=> String
    #   resp.read_sets[0].name #=> String
    #   resp.read_sets[0].reference_arn #=> String
    #   resp.read_sets[0].sample_id #=> String
    #   resp.read_sets[0].sequence_information.alignment #=> String
    #   resp.read_sets[0].sequence_information.generated_from #=> String
    #   resp.read_sets[0].sequence_information.total_base_count #=> Integer
    #   resp.read_sets[0].sequence_information.total_read_count #=> Integer
    #   resp.read_sets[0].sequence_store_id #=> String
    #   resp.read_sets[0].status #=> String, one of "ARCHIVED", "ACTIVATING", "ACTIVE", "DELETING", "DELETED"
    #   resp.read_sets[0].subject_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ListReadSets AWS API Documentation
    #
    # @overload list_read_sets(params = {})
    # @param [Hash] params ({})
    def list_read_sets(params = {}, options = {})
      req = build_request(:list_read_sets, params)
      req.send_request(options)
    end

    # Retrieves a list of reference import jobs.
    #
    # @option params [Types::ImportReferenceFilter] :filter
    #   A filter to apply to the list.
    #
    # @option params [Integer] :max_results
    #   The maximum number of jobs to return in one page of results.
    #
    # @option params [String] :next_token
    #   Specify the pagination token from a previous request to retrieve the
    #   next page of results.
    #
    # @option params [required, String] :reference_store_id
    #   The job's reference store ID.
    #
    # @return [Types::ListReferenceImportJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListReferenceImportJobsResponse#import_jobs #import_jobs} => Array&lt;Types::ImportReferenceJobItem&gt;
    #   * {Types::ListReferenceImportJobsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_reference_import_jobs({
    #     filter: {
    #       created_after: Time.now,
    #       created_before: Time.now,
    #       status: "SUBMITTED", # accepts SUBMITTED, IN_PROGRESS, CANCELLING, CANCELLED, FAILED, COMPLETED, COMPLETED_WITH_FAILURES
    #     },
    #     max_results: 1,
    #     next_token: "NextToken",
    #     reference_store_id: "ReferenceStoreId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.import_jobs #=> Array
    #   resp.import_jobs[0].completion_time #=> Time
    #   resp.import_jobs[0].creation_time #=> Time
    #   resp.import_jobs[0].id #=> String
    #   resp.import_jobs[0].reference_store_id #=> String
    #   resp.import_jobs[0].role_arn #=> String
    #   resp.import_jobs[0].status #=> String, one of "SUBMITTED", "IN_PROGRESS", "CANCELLING", "CANCELLED", "FAILED", "COMPLETED", "COMPLETED_WITH_FAILURES"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ListReferenceImportJobs AWS API Documentation
    #
    # @overload list_reference_import_jobs(params = {})
    # @param [Hash] params ({})
    def list_reference_import_jobs(params = {}, options = {})
      req = build_request(:list_reference_import_jobs, params)
      req.send_request(options)
    end

    # Retrieves a list of reference stores.
    #
    # @option params [Types::ReferenceStoreFilter] :filter
    #   A filter to apply to the list.
    #
    # @option params [Integer] :max_results
    #   The maximum number of stores to return in one page of results.
    #
    # @option params [String] :next_token
    #   Specify the pagination token from a previous request to retrieve the
    #   next page of results.
    #
    # @return [Types::ListReferenceStoresResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListReferenceStoresResponse#next_token #next_token} => String
    #   * {Types::ListReferenceStoresResponse#reference_stores #reference_stores} => Array&lt;Types::ReferenceStoreDetail&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_reference_stores({
    #     filter: {
    #       created_after: Time.now,
    #       created_before: Time.now,
    #       name: "ReferenceStoreName",
    #     },
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.reference_stores #=> Array
    #   resp.reference_stores[0].arn #=> String
    #   resp.reference_stores[0].creation_time #=> Time
    #   resp.reference_stores[0].description #=> String
    #   resp.reference_stores[0].id #=> String
    #   resp.reference_stores[0].name #=> String
    #   resp.reference_stores[0].sse_config.key_arn #=> String
    #   resp.reference_stores[0].sse_config.type #=> String, one of "KMS"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ListReferenceStores AWS API Documentation
    #
    # @overload list_reference_stores(params = {})
    # @param [Hash] params ({})
    def list_reference_stores(params = {}, options = {})
      req = build_request(:list_reference_stores, params)
      req.send_request(options)
    end

    # Retrieves a list of references.
    #
    # @option params [Types::ReferenceFilter] :filter
    #   A filter to apply to the list.
    #
    # @option params [Integer] :max_results
    #   The maximum number of references to return in one page of results.
    #
    # @option params [String] :next_token
    #   Specify the pagination token from a previous request to retrieve the
    #   next page of results.
    #
    # @option params [required, String] :reference_store_id
    #   The references' reference store ID.
    #
    # @return [Types::ListReferencesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListReferencesResponse#next_token #next_token} => String
    #   * {Types::ListReferencesResponse#references #references} => Array&lt;Types::ReferenceListItem&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_references({
    #     filter: {
    #       created_after: Time.now,
    #       created_before: Time.now,
    #       md5: "Md5",
    #       name: "ReferenceName",
    #     },
    #     max_results: 1,
    #     next_token: "NextToken",
    #     reference_store_id: "ReferenceStoreId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.references #=> Array
    #   resp.references[0].arn #=> String
    #   resp.references[0].creation_time #=> Time
    #   resp.references[0].description #=> String
    #   resp.references[0].id #=> String
    #   resp.references[0].md5 #=> String
    #   resp.references[0].name #=> String
    #   resp.references[0].reference_store_id #=> String
    #   resp.references[0].status #=> String, one of "ACTIVE", "DELETING", "DELETED"
    #   resp.references[0].update_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ListReferences AWS API Documentation
    #
    # @overload list_references(params = {})
    # @param [Hash] params ({})
    def list_references(params = {}, options = {})
      req = build_request(:list_references, params)
      req.send_request(options)
    end

    # Retrieves a list of run groups.
    #
    # @option params [Integer] :max_results
    #   The maximum number of run groups to return in one page of results.
    #
    # @option params [String] :name
    #   The run groups' name.
    #
    # @option params [String] :starting_token
    #   Specify the pagination token from a previous request to retrieve the
    #   next page of results.
    #
    # @return [Types::ListRunGroupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRunGroupsResponse#items #items} => Array&lt;Types::RunGroupListItem&gt;
    #   * {Types::ListRunGroupsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_run_groups({
    #     max_results: 1,
    #     name: "RunGroupName",
    #     starting_token: "RunGroupListToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].arn #=> String
    #   resp.items[0].creation_time #=> Time
    #   resp.items[0].id #=> String
    #   resp.items[0].max_cpus #=> Integer
    #   resp.items[0].max_duration #=> Integer
    #   resp.items[0].max_runs #=> Integer
    #   resp.items[0].name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ListRunGroups AWS API Documentation
    #
    # @overload list_run_groups(params = {})
    # @param [Hash] params ({})
    def list_run_groups(params = {}, options = {})
      req = build_request(:list_run_groups, params)
      req.send_request(options)
    end

    # Retrieves a list of tasks for a run.
    #
    # @option params [required, String] :id
    #   The run's ID.
    #
    # @option params [Integer] :max_results
    #   The maximum number of run tasks to return in one page of results.
    #
    # @option params [String] :starting_token
    #   Specify the pagination token from a previous request to retrieve the
    #   next page of results.
    #
    # @option params [String] :status
    #   Filter the list by status.
    #
    # @return [Types::ListRunTasksResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRunTasksResponse#items #items} => Array&lt;Types::TaskListItem&gt;
    #   * {Types::ListRunTasksResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_run_tasks({
    #     id: "RunId", # required
    #     max_results: 1,
    #     starting_token: "TaskListToken",
    #     status: "PENDING", # accepts PENDING, STARTING, RUNNING, STOPPING, COMPLETED, CANCELLED, FAILED
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].cpus #=> Integer
    #   resp.items[0].creation_time #=> Time
    #   resp.items[0].memory #=> Integer
    #   resp.items[0].name #=> String
    #   resp.items[0].start_time #=> Time
    #   resp.items[0].status #=> String, one of "PENDING", "STARTING", "RUNNING", "STOPPING", "COMPLETED", "CANCELLED", "FAILED"
    #   resp.items[0].stop_time #=> Time
    #   resp.items[0].task_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ListRunTasks AWS API Documentation
    #
    # @overload list_run_tasks(params = {})
    # @param [Hash] params ({})
    def list_run_tasks(params = {}, options = {})
      req = build_request(:list_run_tasks, params)
      req.send_request(options)
    end

    # Retrieves a list of runs.
    #
    # @option params [Integer] :max_results
    #   The maximum number of runs to return in one page of results.
    #
    # @option params [String] :name
    #   Filter the list by run name.
    #
    # @option params [String] :run_group_id
    #   Filter the list by run group ID.
    #
    # @option params [String] :starting_token
    #   Specify the pagination token from a previous request to retrieve the
    #   next page of results.
    #
    # @return [Types::ListRunsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRunsResponse#items #items} => Array&lt;Types::RunListItem&gt;
    #   * {Types::ListRunsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_runs({
    #     max_results: 1,
    #     name: "RunName",
    #     run_group_id: "RunGroupId",
    #     starting_token: "RunListToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].arn #=> String
    #   resp.items[0].creation_time #=> Time
    #   resp.items[0].id #=> String
    #   resp.items[0].name #=> String
    #   resp.items[0].priority #=> Integer
    #   resp.items[0].start_time #=> Time
    #   resp.items[0].status #=> String, one of "PENDING", "STARTING", "RUNNING", "STOPPING", "COMPLETED", "DELETED", "CANCELLED", "FAILED"
    #   resp.items[0].stop_time #=> Time
    #   resp.items[0].storage_capacity #=> Integer
    #   resp.items[0].workflow_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ListRuns AWS API Documentation
    #
    # @overload list_runs(params = {})
    # @param [Hash] params ({})
    def list_runs(params = {}, options = {})
      req = build_request(:list_runs, params)
      req.send_request(options)
    end

    # Retrieves a list of sequence stores.
    #
    # @option params [Types::SequenceStoreFilter] :filter
    #   A filter to apply to the list.
    #
    # @option params [Integer] :max_results
    #   The maximum number of stores to return in one page of results.
    #
    # @option params [String] :next_token
    #   Specify the pagination token from a previous request to retrieve the
    #   next page of results.
    #
    # @return [Types::ListSequenceStoresResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSequenceStoresResponse#next_token #next_token} => String
    #   * {Types::ListSequenceStoresResponse#sequence_stores #sequence_stores} => Array&lt;Types::SequenceStoreDetail&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_sequence_stores({
    #     filter: {
    #       created_after: Time.now,
    #       created_before: Time.now,
    #       name: "SequenceStoreName",
    #     },
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.sequence_stores #=> Array
    #   resp.sequence_stores[0].arn #=> String
    #   resp.sequence_stores[0].creation_time #=> Time
    #   resp.sequence_stores[0].description #=> String
    #   resp.sequence_stores[0].id #=> String
    #   resp.sequence_stores[0].name #=> String
    #   resp.sequence_stores[0].sse_config.key_arn #=> String
    #   resp.sequence_stores[0].sse_config.type #=> String, one of "KMS"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ListSequenceStores AWS API Documentation
    #
    # @overload list_sequence_stores(params = {})
    # @param [Hash] params ({})
    def list_sequence_stores(params = {}, options = {})
      req = build_request(:list_sequence_stores, params)
      req.send_request(options)
    end

    # Retrieves a list of tags for a resource.
    #
    # @option params [required, String] :resource_arn
    #   The resource's ARN.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "TagArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Retrieves a list of variant import jobs.
    #
    # @option params [Types::ListVariantImportJobsFilter] :filter
    #   A filter to apply to the list.
    #
    # @option params [Array<String>] :ids
    #   A list of job IDs.
    #
    # @option params [Integer] :max_results
    #   The maximum number of import jobs to return in one page of results.
    #
    # @option params [String] :next_token
    #   Specify the pagination token from a previous request to retrieve the
    #   next page of results.
    #
    # @return [Types::ListVariantImportJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListVariantImportJobsResponse#next_token #next_token} => String
    #   * {Types::ListVariantImportJobsResponse#variant_import_jobs #variant_import_jobs} => Array&lt;Types::VariantImportJobItem&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_variant_import_jobs({
    #     filter: {
    #       status: "SUBMITTED", # accepts SUBMITTED, IN_PROGRESS, CANCELLED, COMPLETED, FAILED
    #       store_name: "String",
    #     },
    #     ids: ["ResourceIdentifier"],
    #     max_results: 1,
    #     next_token: "ListVariantImportJobsRequestNextTokenString",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.variant_import_jobs #=> Array
    #   resp.variant_import_jobs[0].completion_time #=> Time
    #   resp.variant_import_jobs[0].creation_time #=> Time
    #   resp.variant_import_jobs[0].destination_name #=> String
    #   resp.variant_import_jobs[0].id #=> String
    #   resp.variant_import_jobs[0].role_arn #=> String
    #   resp.variant_import_jobs[0].run_left_normalization #=> Boolean
    #   resp.variant_import_jobs[0].status #=> String, one of "SUBMITTED", "IN_PROGRESS", "CANCELLED", "COMPLETED", "FAILED"
    #   resp.variant_import_jobs[0].update_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ListVariantImportJobs AWS API Documentation
    #
    # @overload list_variant_import_jobs(params = {})
    # @param [Hash] params ({})
    def list_variant_import_jobs(params = {}, options = {})
      req = build_request(:list_variant_import_jobs, params)
      req.send_request(options)
    end

    # Retrieves a list of variant stores.
    #
    # @option params [Types::ListVariantStoresFilter] :filter
    #   A filter to apply to the list.
    #
    # @option params [Array<String>] :ids
    #   A list of store IDs.
    #
    # @option params [Integer] :max_results
    #   The maximum number of stores to return in one page of results.
    #
    # @option params [String] :next_token
    #   Specify the pagination token from a previous request to retrieve the
    #   next page of results.
    #
    # @return [Types::ListVariantStoresResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListVariantStoresResponse#next_token #next_token} => String
    #   * {Types::ListVariantStoresResponse#variant_stores #variant_stores} => Array&lt;Types::VariantStoreItem&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_variant_stores({
    #     filter: {
    #       status: "CREATING", # accepts CREATING, UPDATING, DELETING, ACTIVE, FAILED
    #     },
    #     ids: ["ResourceIdentifier"],
    #     max_results: 1,
    #     next_token: "ListVariantStoresRequestNextTokenString",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.variant_stores #=> Array
    #   resp.variant_stores[0].creation_time #=> Time
    #   resp.variant_stores[0].description #=> String
    #   resp.variant_stores[0].id #=> String
    #   resp.variant_stores[0].name #=> String
    #   resp.variant_stores[0].reference.reference_arn #=> String
    #   resp.variant_stores[0].sse_config.key_arn #=> String
    #   resp.variant_stores[0].sse_config.type #=> String, one of "KMS"
    #   resp.variant_stores[0].status #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE", "FAILED"
    #   resp.variant_stores[0].status_message #=> String
    #   resp.variant_stores[0].store_arn #=> String
    #   resp.variant_stores[0].store_size_bytes #=> Integer
    #   resp.variant_stores[0].update_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ListVariantStores AWS API Documentation
    #
    # @overload list_variant_stores(params = {})
    # @param [Hash] params ({})
    def list_variant_stores(params = {}, options = {})
      req = build_request(:list_variant_stores, params)
      req.send_request(options)
    end

    # Retrieves a list of workflows.
    #
    # @option params [Integer] :max_results
    #   The maximum number of workflows to return in one page of results.
    #
    # @option params [String] :name
    #   The workflows' name.
    #
    # @option params [String] :starting_token
    #   Specify the pagination token from a previous request to retrieve the
    #   next page of results.
    #
    # @option params [String] :type
    #   The workflows' type.
    #
    # @return [Types::ListWorkflowsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListWorkflowsResponse#items #items} => Array&lt;Types::WorkflowListItem&gt;
    #   * {Types::ListWorkflowsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_workflows({
    #     max_results: 1,
    #     name: "WorkflowName",
    #     starting_token: "WorkflowListToken",
    #     type: "PRIVATE", # accepts PRIVATE
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].arn #=> String
    #   resp.items[0].creation_time #=> Time
    #   resp.items[0].digest #=> String
    #   resp.items[0].id #=> String
    #   resp.items[0].name #=> String
    #   resp.items[0].status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETED", "FAILED"
    #   resp.items[0].type #=> String, one of "PRIVATE"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ListWorkflows AWS API Documentation
    #
    # @overload list_workflows(params = {})
    # @param [Hash] params ({})
    def list_workflows(params = {}, options = {})
      req = build_request(:list_workflows, params)
      req.send_request(options)
    end

    # Starts an annotation import job.
    #
    # @option params [required, String] :destination_name
    #   A destination annotation store for the job.
    #
    # @option params [Types::FormatOptions] :format_options
    #   Formatting options for the annotation file.
    #
    # @option params [required, Array<Types::AnnotationImportItemSource>] :items
    #   Items to import.
    #
    # @option params [required, String] :role_arn
    #   A service role for the job.
    #
    # @option params [Boolean] :run_left_normalization
    #   The job's left normalization setting.
    #
    # @return [Types::StartAnnotationImportResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartAnnotationImportResponse#job_id #job_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_annotation_import_job({
    #     destination_name: "StoreName", # required
    #     format_options: {
    #       tsv_options: {
    #         read_options: {
    #           comment: "CommentChar",
    #           encoding: "Encoding",
    #           escape: "EscapeChar",
    #           escape_quotes: false,
    #           header: false,
    #           line_sep: "LineSep",
    #           quote: "Quote",
    #           quote_all: false,
    #           sep: "Separator",
    #         },
    #       },
    #       vcf_options: {
    #         ignore_filter_field: false,
    #         ignore_qual_field: false,
    #       },
    #     },
    #     items: [ # required
    #       {
    #         source: "S3Uri", # required
    #       },
    #     ],
    #     role_arn: "Arn", # required
    #     run_left_normalization: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/StartAnnotationImportJob AWS API Documentation
    #
    # @overload start_annotation_import_job(params = {})
    # @param [Hash] params ({})
    def start_annotation_import_job(params = {}, options = {})
      req = build_request(:start_annotation_import_job, params)
      req.send_request(options)
    end

    # Starts a read set activation job.
    #
    # @option params [String] :client_token
    #   To ensure that jobs don't run multiple times, specify a unique token
    #   for each job.
    #
    # @option params [required, String] :sequence_store_id
    #   The read set's sequence store ID.
    #
    # @option params [required, Array<Types::StartReadSetActivationJobSourceItem>] :sources
    #   The job's sources.
    #
    # @return [Types::StartReadSetActivationJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartReadSetActivationJobResponse#creation_time #creation_time} => Time
    #   * {Types::StartReadSetActivationJobResponse#id #id} => String
    #   * {Types::StartReadSetActivationJobResponse#sequence_store_id #sequence_store_id} => String
    #   * {Types::StartReadSetActivationJobResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_read_set_activation_job({
    #     client_token: "ClientToken",
    #     sequence_store_id: "SequenceStoreId", # required
    #     sources: [ # required
    #       {
    #         read_set_id: "ReadSetId", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.creation_time #=> Time
    #   resp.id #=> String
    #   resp.sequence_store_id #=> String
    #   resp.status #=> String, one of "SUBMITTED", "IN_PROGRESS", "CANCELLING", "CANCELLED", "FAILED", "COMPLETED", "COMPLETED_WITH_FAILURES"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/StartReadSetActivationJob AWS API Documentation
    #
    # @overload start_read_set_activation_job(params = {})
    # @param [Hash] params ({})
    def start_read_set_activation_job(params = {}, options = {})
      req = build_request(:start_read_set_activation_job, params)
      req.send_request(options)
    end

    # Starts a read set export job.
    #
    # @option params [String] :client_token
    #   To ensure that jobs don't run multiple times, specify a unique token
    #   for each job.
    #
    # @option params [required, String] :destination
    #   A location for exported files in Amazon S3.
    #
    # @option params [required, String] :role_arn
    #   A service role for the job.
    #
    # @option params [required, String] :sequence_store_id
    #   The read set's sequence store ID.
    #
    # @option params [required, Array<Types::ExportReadSet>] :sources
    #   Sources for the job.
    #
    # @return [Types::StartReadSetExportJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartReadSetExportJobResponse#creation_time #creation_time} => Time
    #   * {Types::StartReadSetExportJobResponse#destination #destination} => String
    #   * {Types::StartReadSetExportJobResponse#id #id} => String
    #   * {Types::StartReadSetExportJobResponse#sequence_store_id #sequence_store_id} => String
    #   * {Types::StartReadSetExportJobResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_read_set_export_job({
    #     client_token: "ClientToken",
    #     destination: "S3Destination", # required
    #     role_arn: "RoleArn", # required
    #     sequence_store_id: "SequenceStoreId", # required
    #     sources: [ # required
    #       {
    #         read_set_id: "ReadSetId", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.creation_time #=> Time
    #   resp.destination #=> String
    #   resp.id #=> String
    #   resp.sequence_store_id #=> String
    #   resp.status #=> String, one of "SUBMITTED", "IN_PROGRESS", "CANCELLING", "CANCELLED", "FAILED", "COMPLETED", "COMPLETED_WITH_FAILURES"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/StartReadSetExportJob AWS API Documentation
    #
    # @overload start_read_set_export_job(params = {})
    # @param [Hash] params ({})
    def start_read_set_export_job(params = {}, options = {})
      req = build_request(:start_read_set_export_job, params)
      req.send_request(options)
    end

    # Starts a read set import job.
    #
    # @option params [String] :client_token
    #   To ensure that jobs don't run multiple times, specify a unique token
    #   for each job.
    #
    # @option params [required, String] :role_arn
    #   A service role for the job.
    #
    # @option params [required, String] :sequence_store_id
    #   The read set's sequence store ID.
    #
    # @option params [required, Array<Types::StartReadSetImportJobSourceItem>] :sources
    #   Source files to import.
    #
    # @return [Types::StartReadSetImportJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartReadSetImportJobResponse#creation_time #creation_time} => Time
    #   * {Types::StartReadSetImportJobResponse#id #id} => String
    #   * {Types::StartReadSetImportJobResponse#role_arn #role_arn} => String
    #   * {Types::StartReadSetImportJobResponse#sequence_store_id #sequence_store_id} => String
    #   * {Types::StartReadSetImportJobResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_read_set_import_job({
    #     client_token: "ClientToken",
    #     role_arn: "RoleArn", # required
    #     sequence_store_id: "SequenceStoreId", # required
    #     sources: [ # required
    #       {
    #         description: "ReadSetDescription",
    #         generated_from: "GeneratedFrom",
    #         name: "ReadSetName",
    #         reference_arn: "ReferenceArn", # required
    #         sample_id: "SampleId", # required
    #         source_file_type: "FASTQ", # required, accepts FASTQ, BAM, CRAM
    #         source_files: { # required
    #           source1: "S3Uri", # required
    #           source2: "S3Uri",
    #         },
    #         subject_id: "SubjectId", # required
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.creation_time #=> Time
    #   resp.id #=> String
    #   resp.role_arn #=> String
    #   resp.sequence_store_id #=> String
    #   resp.status #=> String, one of "SUBMITTED", "IN_PROGRESS", "CANCELLING", "CANCELLED", "FAILED", "COMPLETED", "COMPLETED_WITH_FAILURES"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/StartReadSetImportJob AWS API Documentation
    #
    # @overload start_read_set_import_job(params = {})
    # @param [Hash] params ({})
    def start_read_set_import_job(params = {}, options = {})
      req = build_request(:start_read_set_import_job, params)
      req.send_request(options)
    end

    # Starts a reference import job.
    #
    # @option params [String] :client_token
    #   To ensure that jobs don't run multiple times, specify a unique token
    #   for each job.
    #
    # @option params [required, String] :reference_store_id
    #   The job's reference store ID.
    #
    # @option params [required, String] :role_arn
    #   A service role for the job.
    #
    # @option params [required, Array<Types::StartReferenceImportJobSourceItem>] :sources
    #   Sources for the job.
    #
    # @return [Types::StartReferenceImportJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartReferenceImportJobResponse#creation_time #creation_time} => Time
    #   * {Types::StartReferenceImportJobResponse#id #id} => String
    #   * {Types::StartReferenceImportJobResponse#reference_store_id #reference_store_id} => String
    #   * {Types::StartReferenceImportJobResponse#role_arn #role_arn} => String
    #   * {Types::StartReferenceImportJobResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_reference_import_job({
    #     client_token: "ClientToken",
    #     reference_store_id: "ReferenceStoreId", # required
    #     role_arn: "RoleArn", # required
    #     sources: [ # required
    #       {
    #         description: "ReferenceDescription",
    #         name: "ReferenceName", # required
    #         source_file: "S3Uri", # required
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.creation_time #=> Time
    #   resp.id #=> String
    #   resp.reference_store_id #=> String
    #   resp.role_arn #=> String
    #   resp.status #=> String, one of "SUBMITTED", "IN_PROGRESS", "CANCELLING", "CANCELLED", "FAILED", "COMPLETED", "COMPLETED_WITH_FAILURES"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/StartReferenceImportJob AWS API Documentation
    #
    # @overload start_reference_import_job(params = {})
    # @param [Hash] params ({})
    def start_reference_import_job(params = {}, options = {})
      req = build_request(:start_reference_import_job, params)
      req.send_request(options)
    end

    # Starts a run.
    #
    # @option params [String] :log_level
    #   A log level for the run.
    #
    # @option params [String] :name
    #   A name for the run.
    #
    # @option params [String] :output_uri
    #   An output URI for the run.
    #
    # @option params [Hash,Array,String,Numeric,Boolean] :parameters
    #   Parameters for the run.
    #
    #   Document type used to carry open content
    #   (Hash,Array,String,Numeric,Boolean). A document type value is
    #   serialized using the same format as its surroundings and requires no
    #   additional encoding or escaping.
    #
    # @option params [Integer] :priority
    #   A priority for the run.
    #
    # @option params [required, String] :request_id
    #   A request ID for the run.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :role_arn
    #   A service role for the run.
    #
    # @option params [String] :run_group_id
    #   The run's group ID.
    #
    # @option params [String] :run_id
    #   The run's ID.
    #
    # @option params [Integer] :storage_capacity
    #   A storage capacity for the run.
    #
    # @option params [Hash<String,String>] :tags
    #   Tags for the run.
    #
    # @option params [String] :workflow_id
    #   The run's workflow ID.
    #
    # @option params [String] :workflow_type
    #   The run's workflows type.
    #
    # @return [Types::StartRunResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartRunResponse#arn #arn} => String
    #   * {Types::StartRunResponse#id #id} => String
    #   * {Types::StartRunResponse#status #status} => String
    #   * {Types::StartRunResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_run({
    #     log_level: "OFF", # accepts OFF, FATAL, ERROR, ALL
    #     name: "RunName",
    #     output_uri: "RunOutputUri",
    #     parameters: {
    #     },
    #     priority: 1,
    #     request_id: "RunRequestId", # required
    #     role_arn: "RunRoleArn", # required
    #     run_group_id: "RunGroupId",
    #     run_id: "RunId",
    #     storage_capacity: 1,
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     workflow_id: "WorkflowId",
    #     workflow_type: "PRIVATE", # accepts PRIVATE
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.id #=> String
    #   resp.status #=> String, one of "PENDING", "STARTING", "RUNNING", "STOPPING", "COMPLETED", "DELETED", "CANCELLED", "FAILED"
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/StartRun AWS API Documentation
    #
    # @overload start_run(params = {})
    # @param [Hash] params ({})
    def start_run(params = {}, options = {})
      req = build_request(:start_run, params)
      req.send_request(options)
    end

    # Starts a variant import job.
    #
    # @option params [required, String] :destination_name
    #   The destination variant store for the job.
    #
    # @option params [required, Array<Types::VariantImportItemSource>] :items
    #   Items to import.
    #
    # @option params [required, String] :role_arn
    #   A service role for the job.
    #
    # @option params [Boolean] :run_left_normalization
    #   The job's left normalization setting.
    #
    # @return [Types::StartVariantImportResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartVariantImportResponse#job_id #job_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_variant_import_job({
    #     destination_name: "StoreName", # required
    #     items: [ # required
    #       {
    #         source: "S3Uri", # required
    #       },
    #     ],
    #     role_arn: "Arn", # required
    #     run_left_normalization: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/StartVariantImportJob AWS API Documentation
    #
    # @overload start_variant_import_job(params = {})
    # @param [Hash] params ({})
    def start_variant_import_job(params = {}, options = {})
      req = build_request(:start_variant_import_job, params)
      req.send_request(options)
    end

    # Tags a resource.
    #
    # @option params [required, String] :resource_arn
    #   The resource's ARN.
    #
    # @option params [required, Hash<String,String>] :tags
    #   Tags for the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "TagArn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes tags from a resource.
    #
    # @option params [required, String] :resource_arn
    #   The resource's ARN.
    #
    # @option params [required, Array<String>] :tag_keys
    #   Keys of tags to remove.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "TagArn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates an annotation store.
    #
    # @option params [String] :description
    #   A description for the store.
    #
    # @option params [required, String] :name
    #   A name for the store.
    #
    # @return [Types::UpdateAnnotationStoreResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAnnotationStoreResponse#creation_time #creation_time} => Time
    #   * {Types::UpdateAnnotationStoreResponse#description #description} => String
    #   * {Types::UpdateAnnotationStoreResponse#id #id} => String
    #   * {Types::UpdateAnnotationStoreResponse#name #name} => String
    #   * {Types::UpdateAnnotationStoreResponse#reference #reference} => Types::ReferenceItem
    #   * {Types::UpdateAnnotationStoreResponse#status #status} => String
    #   * {Types::UpdateAnnotationStoreResponse#store_format #store_format} => String
    #   * {Types::UpdateAnnotationStoreResponse#store_options #store_options} => Types::StoreOptions
    #   * {Types::UpdateAnnotationStoreResponse#update_time #update_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_annotation_store({
    #     description: "StoreDescription",
    #     name: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.creation_time #=> Time
    #   resp.description #=> String
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.reference.reference_arn #=> String
    #   resp.status #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE", "FAILED"
    #   resp.store_format #=> String, one of "GFF", "TSV", "VCF"
    #   resp.store_options.tsv_store_options.annotation_type #=> String, one of "GENERIC", "CHR_POS", "CHR_POS_REF_ALT", "CHR_START_END_ONE_BASE", "CHR_START_END_REF_ALT_ONE_BASE", "CHR_START_END_ZERO_BASE", "CHR_START_END_REF_ALT_ZERO_BASE"
    #   resp.store_options.tsv_store_options.format_to_header #=> Hash
    #   resp.store_options.tsv_store_options.format_to_header["FormatToHeaderKey"] #=> String
    #   resp.store_options.tsv_store_options.schema #=> Array
    #   resp.store_options.tsv_store_options.schema[0] #=> Hash
    #   resp.store_options.tsv_store_options.schema[0]["String"] #=> String, one of "LONG", "INT", "STRING", "FLOAT", "DOUBLE", "BOOLEAN"
    #   resp.update_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/UpdateAnnotationStore AWS API Documentation
    #
    # @overload update_annotation_store(params = {})
    # @param [Hash] params ({})
    def update_annotation_store(params = {}, options = {})
      req = build_request(:update_annotation_store, params)
      req.send_request(options)
    end

    # Updates a run group.
    #
    # @option params [required, String] :id
    #   The group's ID.
    #
    # @option params [Integer] :max_cpus
    #   The maximum number of CPUs to use.
    #
    # @option params [Integer] :max_duration
    #   The maximum amount of time to run.
    #
    # @option params [Integer] :max_runs
    #   The maximum number of concurrent runs for the group.
    #
    # @option params [String] :name
    #   A name for the group.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_run_group({
    #     id: "RunGroupId", # required
    #     max_cpus: 1,
    #     max_duration: 1,
    #     max_runs: 1,
    #     name: "RunGroupName",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/UpdateRunGroup AWS API Documentation
    #
    # @overload update_run_group(params = {})
    # @param [Hash] params ({})
    def update_run_group(params = {}, options = {})
      req = build_request(:update_run_group, params)
      req.send_request(options)
    end

    # Updates a variant store.
    #
    # @option params [String] :description
    #   A description for the store.
    #
    # @option params [required, String] :name
    #   A name for the store.
    #
    # @return [Types::UpdateVariantStoreResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateVariantStoreResponse#creation_time #creation_time} => Time
    #   * {Types::UpdateVariantStoreResponse#description #description} => String
    #   * {Types::UpdateVariantStoreResponse#id #id} => String
    #   * {Types::UpdateVariantStoreResponse#name #name} => String
    #   * {Types::UpdateVariantStoreResponse#reference #reference} => Types::ReferenceItem
    #   * {Types::UpdateVariantStoreResponse#status #status} => String
    #   * {Types::UpdateVariantStoreResponse#update_time #update_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_variant_store({
    #     description: "StoreDescription",
    #     name: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.creation_time #=> Time
    #   resp.description #=> String
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.reference.reference_arn #=> String
    #   resp.status #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE", "FAILED"
    #   resp.update_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/UpdateVariantStore AWS API Documentation
    #
    # @overload update_variant_store(params = {})
    # @param [Hash] params ({})
    def update_variant_store(params = {}, options = {})
      req = build_request(:update_variant_store, params)
      req.send_request(options)
    end

    # Updates a workflow.
    #
    # @option params [String] :description
    #   A description for the workflow.
    #
    # @option params [required, String] :id
    #   The workflow's ID.
    #
    # @option params [String] :name
    #   A name for the workflow.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_workflow({
    #     description: "WorkflowDescription",
    #     id: "WorkflowId", # required
    #     name: "WorkflowName",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/UpdateWorkflow AWS API Documentation
    #
    # @overload update_workflow(params = {})
    # @param [Hash] params ({})
    def update_workflow(params = {}, options = {})
      req = build_request(:update_workflow, params)
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
      context[:gem_name] = 'aws-sdk-omics'
      context[:gem_version] = '1.1.0'
      Seahorse::Client::Request.new(handlers, context)
    end

    # Polls an API operation until a resource enters a desired state.
    #
    # ## Basic Usage
    #
    # A waiter will call an API operation until:
    #
    # * It is successful
    # * It enters a terminal state
    # * It makes the maximum number of attempts
    #
    # In between attempts, the waiter will sleep.
    #
    #     # polls in a loop, sleeping between attempts
    #     client.wait_until(waiter_name, params)
    #
    # ## Configuration
    #
    # You can configure the maximum number of polling attempts, and the
    # delay (in seconds) between each polling attempt. You can pass
    # configuration as the final arguments hash.
    #
    #     # poll for ~25 seconds
    #     client.wait_until(waiter_name, params, {
    #       max_attempts: 5,
    #       delay: 5,
    #     })
    #
    # ## Callbacks
    #
    # You can be notified before each polling attempt and before each
    # delay. If you throw `:success` or `:failure` from these callbacks,
    # it will terminate the waiter.
    #
    #     started_at = Time.now
    #     client.wait_until(waiter_name, params, {
    #
    #       # disable max attempts
    #       max_attempts: nil,
    #
    #       # poll for 1 hour, instead of a number of attempts
    #       before_wait: -> (attempts, response) do
    #         throw :failure if Time.now - started_at > 3600
    #       end
    #     })
    #
    # ## Handling Errors
    #
    # When a waiter is unsuccessful, it will raise an error.
    # All of the failure errors extend from
    # {Aws::Waiters::Errors::WaiterFailed}.
    #
    #     begin
    #       client.wait_until(...)
    #     rescue Aws::Waiters::Errors::WaiterFailed
    #       # resource did not enter the desired state in time
    #     end
    #
    # ## Valid Waiters
    #
    # The following table lists the valid waiter names, the operations they call,
    # and the default `:delay` and `:max_attempts` values.
    #
    # | waiter_name                       | params                               | :delay   | :max_attempts |
    # | --------------------------------- | ------------------------------------ | -------- | ------------- |
    # | annotation_import_job_created     | {Client#get_annotation_import_job}   | 30       | 20            |
    # | annotation_store_created          | {Client#get_annotation_store}        | 30       | 20            |
    # | annotation_store_deleted          | {Client#get_annotation_store}        | 30       | 20            |
    # | read_set_activation_job_completed | {Client#get_read_set_activation_job} | 30       | 20            |
    # | read_set_export_job_completed     | {Client#get_read_set_export_job}     | 30       | 20            |
    # | read_set_import_job_completed     | {Client#get_read_set_import_job}     | 30       | 20            |
    # | reference_import_job_completed    | {Client#get_reference_import_job}    | 30       | 20            |
    # | run_completed                     | {Client#get_run}                     | 30       | 20            |
    # | run_running                       | {Client#get_run}                     | 30       | 20            |
    # | task_completed                    | {Client#get_run_task}                | 30       | 20            |
    # | task_running                      | {Client#get_run_task}                | 30       | 20            |
    # | variant_import_job_created        | {Client#get_variant_import_job}      | 30       | 20            |
    # | variant_store_created             | {Client#get_variant_store}           | 30       | 20            |
    # | variant_store_deleted             | {Client#get_variant_store}           | 30       | 20            |
    # | workflow_active                   | {Client#get_workflow}                | 3        | 10            |
    #
    # @raise [Errors::FailureStateError] Raised when the waiter terminates
    #   because the waiter has entered a state that it will not transition
    #   out of, preventing success.
    #
    # @raise [Errors::TooManyAttemptsError] Raised when the configured
    #   maximum number of attempts have been made, and the waiter is not
    #   yet successful.
    #
    # @raise [Errors::UnexpectedError] Raised when an error is encounted
    #   while polling for a resource that is not expected.
    #
    # @raise [Errors::NoSuchWaiterError] Raised when you request to wait
    #   for an unknown state.
    #
    # @return [Boolean] Returns `true` if the waiter was successful.
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

    # @api private
    # @deprecated
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
        annotation_import_job_created: Waiters::AnnotationImportJobCreated,
        annotation_store_created: Waiters::AnnotationStoreCreated,
        annotation_store_deleted: Waiters::AnnotationStoreDeleted,
        read_set_activation_job_completed: Waiters::ReadSetActivationJobCompleted,
        read_set_export_job_completed: Waiters::ReadSetExportJobCompleted,
        read_set_import_job_completed: Waiters::ReadSetImportJobCompleted,
        reference_import_job_completed: Waiters::ReferenceImportJobCompleted,
        run_completed: Waiters::RunCompleted,
        run_running: Waiters::RunRunning,
        task_completed: Waiters::TaskCompleted,
        task_running: Waiters::TaskRunning,
        variant_import_job_created: Waiters::VariantImportJobCreated,
        variant_store_created: Waiters::VariantStoreCreated,
        variant_store_deleted: Waiters::VariantStoreDeleted,
        workflow_active: Waiters::WorkflowActive
      }
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
