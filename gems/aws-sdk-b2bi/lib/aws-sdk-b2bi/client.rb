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
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:b2bi)

module Aws::B2bi
  # An API client for B2bi.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::B2bi::Client.new(
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

    @identifier = :b2bi

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
    add_plugin(Aws::Plugins::Protocols::JsonRpc)
    add_plugin(Aws::B2bi::Plugins::Endpoints)

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
    #   @option options [Boolean] :simple_json (false)
    #     Disables request parameter conversion, validation, and formatting.
    #     Also disable response data type conversions. This option is useful
    #     when you want to ensure the highest level of performance by
    #     avoiding overhead of walking request parameters and response data
    #     structures.
    #
    #     When `:simple_json` is enabled, the request parameters hash must
    #     be formatted exactly as the DynamoDB API expects.
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
    #   @option options [Aws::B2bi::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::B2bi::EndpointParameters`
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

    # Instantiates a capability based on the specified parameters. A trading
    # capability contains the information required to transform incoming EDI
    # documents into JSON or XML outputs.
    #
    # @option params [required, String] :name
    #   Specifies the name of the capability, used to identify it.
    #
    # @option params [required, String] :type
    #   Specifies the type of the capability. Currently, only `edi` is
    #   supported.
    #
    # @option params [required, Types::CapabilityConfiguration] :configuration
    #   Specifies a structure that contains the details for a capability.
    #
    # @option params [Array<Types::S3Location>] :instructions_documents
    #   Specifies one or more locations in Amazon S3, each specifying an EDI
    #   document that can be used with this capability. Each item contains the
    #   name of the bucket and the key, to identify the document's location.
    #
    # @option params [String] :client_token
    #   Reserved for future use.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Array<Types::Tag>] :tags
    #   Specifies the key-value pairs assigned to ARNs that you can use to
    #   group and search for resources by type. You can attach this metadata
    #   to resources (capabilities, partnerships, and so on) for any purpose.
    #
    # @return [Types::CreateCapabilityResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateCapabilityResponse#capability_id #capability_id} => String
    #   * {Types::CreateCapabilityResponse#capability_arn #capability_arn} => String
    #   * {Types::CreateCapabilityResponse#name #name} => String
    #   * {Types::CreateCapabilityResponse#type #type} => String
    #   * {Types::CreateCapabilityResponse#configuration #configuration} => Types::CapabilityConfiguration
    #   * {Types::CreateCapabilityResponse#instructions_documents #instructions_documents} => Array&lt;Types::S3Location&gt;
    #   * {Types::CreateCapabilityResponse#created_at #created_at} => Time
    #
    #
    # @example Example: Sample CreateCapability call
    #
    #   resp = client.create_capability({
    #     name: "b2biexample", 
    #     type: "edi", 
    #     client_token: "foo", 
    #     configuration: {
    #       edi: {
    #         type: {
    #           x12_details: {
    #             version: "VERSION_4010", 
    #             transaction_set: "X12_110", 
    #           }, 
    #         }, 
    #         input_location: {
    #           key: "input/", 
    #           bucket_name: "test-bucket", 
    #         }, 
    #         output_location: {
    #           key: "output/", 
    #           bucket_name: "test-bucket", 
    #         }, 
    #         transformer_id: "tr-9a893cf536df4658b", 
    #       }, 
    #     }, 
    #     instructions_documents: [
    #       {
    #         key: "instructiondoc.txt", 
    #         bucket_name: "test-bucket", 
    #       }, 
    #     ], 
    #     tags: [
    #       {
    #         key: "capabilityKey1", 
    #         value: "capabilityValue1", 
    #       }, 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     name: "b2biexample", 
    #     type: "edi", 
    #     capability_arn: "arn:aws:b2bi:us-west-2:123456789012:capability/ca-963a8121e4fc4e348", 
    #     capability_id: "ca-963a8121e4fc4e348", 
    #     configuration: {
    #       edi: {
    #         type: {
    #           x12_details: {
    #             version: "VERSION_4010", 
    #             transaction_set: "X12_110", 
    #           }, 
    #         }, 
    #         input_location: {
    #           key: "input/", 
    #           bucket_name: "test-bucket", 
    #         }, 
    #         output_location: {
    #           key: "output/", 
    #           bucket_name: "test-bucket", 
    #         }, 
    #         transformer_id: "tr-9a893cf536df4658b", 
    #       }, 
    #     }, 
    #     created_at: Time.parse("2023-11-01T21:51:05.504Z"), 
    #     instructions_documents: [
    #       {
    #         key: "instructiondoc.txt", 
    #         bucket_name: "test-bucket", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_capability({
    #     name: "CapabilityName", # required
    #     type: "edi", # required, accepts edi
    #     configuration: { # required
    #       edi: {
    #         type: { # required
    #           x12_details: {
    #             transaction_set: "X12_110", # accepts X12_110, X12_180, X12_204, X12_210, X12_214, X12_215, X12_310, X12_315, X12_322, X12_404, X12_410, X12_820, X12_824, X12_830, X12_846, X12_850, X12_852, X12_855, X12_856, X12_860, X12_861, X12_864, X12_940, X12_990, X12_997
    #             version: "VERSION_4010", # accepts VERSION_4010, VERSION_4030, VERSION_5010
    #           },
    #         },
    #         input_location: { # required
    #           bucket_name: "BucketName",
    #           key: "S3Key",
    #         },
    #         output_location: { # required
    #           bucket_name: "BucketName",
    #           key: "S3Key",
    #         },
    #         transformer_id: "TransformerId", # required
    #       },
    #     },
    #     instructions_documents: [
    #       {
    #         bucket_name: "BucketName",
    #         key: "S3Key",
    #       },
    #     ],
    #     client_token: "String",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.capability_id #=> String
    #   resp.capability_arn #=> String
    #   resp.name #=> String
    #   resp.type #=> String, one of "edi"
    #   resp.configuration.edi.type.x12_details.transaction_set #=> String, one of "X12_110", "X12_180", "X12_204", "X12_210", "X12_214", "X12_215", "X12_310", "X12_315", "X12_322", "X12_404", "X12_410", "X12_820", "X12_824", "X12_830", "X12_846", "X12_850", "X12_852", "X12_855", "X12_856", "X12_860", "X12_861", "X12_864", "X12_940", "X12_990", "X12_997"
    #   resp.configuration.edi.type.x12_details.version #=> String, one of "VERSION_4010", "VERSION_4030", "VERSION_5010"
    #   resp.configuration.edi.input_location.bucket_name #=> String
    #   resp.configuration.edi.input_location.key #=> String
    #   resp.configuration.edi.output_location.bucket_name #=> String
    #   resp.configuration.edi.output_location.key #=> String
    #   resp.configuration.edi.transformer_id #=> String
    #   resp.instructions_documents #=> Array
    #   resp.instructions_documents[0].bucket_name #=> String
    #   resp.instructions_documents[0].key #=> String
    #   resp.created_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/CreateCapability AWS API Documentation
    #
    # @overload create_capability(params = {})
    # @param [Hash] params ({})
    def create_capability(params = {}, options = {})
      req = build_request(:create_capability, params)
      req.send_request(options)
    end

    # Creates a partnership between a customer and a trading partner, based
    # on the supplied parameters. A partnership represents the connection
    # between you and your trading partner. It ties together a profile and
    # one or more trading capabilities.
    #
    # @option params [required, String] :profile_id
    #   Specifies the unique, system-generated identifier for the profile
    #   connected to this partnership.
    #
    # @option params [required, String] :name
    #   Specifies a descriptive name for the partnership.
    #
    # @option params [required, String] :email
    #   Specifies the email address associated with this trading partner.
    #
    # @option params [String] :phone
    #   Specifies the phone number associated with the partnership.
    #
    # @option params [Array<String>] :capabilities
    #   Specifies a list of the capabilities associated with this partnership.
    #
    # @option params [String] :client_token
    #   Reserved for future use.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Array<Types::Tag>] :tags
    #   Specifies the key-value pairs assigned to ARNs that you can use to
    #   group and search for resources by type. You can attach this metadata
    #   to resources (capabilities, partnerships, and so on) for any purpose.
    #
    # @return [Types::CreatePartnershipResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePartnershipResponse#profile_id #profile_id} => String
    #   * {Types::CreatePartnershipResponse#partnership_id #partnership_id} => String
    #   * {Types::CreatePartnershipResponse#partnership_arn #partnership_arn} => String
    #   * {Types::CreatePartnershipResponse#name #name} => String
    #   * {Types::CreatePartnershipResponse#email #email} => String
    #   * {Types::CreatePartnershipResponse#phone #phone} => String
    #   * {Types::CreatePartnershipResponse#capabilities #capabilities} => Array&lt;String&gt;
    #   * {Types::CreatePartnershipResponse#trading_partner_id #trading_partner_id} => String
    #   * {Types::CreatePartnershipResponse#created_at #created_at} => Time
    #
    #
    # @example Example: Sample CreatePartnership call
    #
    #   resp = client.create_partnership({
    #     name: "b2bipartner", 
    #     capabilities: [
    #       "ca-963a8121e4fc4e348", 
    #     ], 
    #     client_token: "foo", 
    #     email: "john@example.com", 
    #     phone: "5555555555", 
    #     profile_id: "p-60fbc37c87f04fce9", 
    #     tags: [
    #       {
    #         key: "sampleKey1", 
    #         value: "sampleValue1", 
    #       }, 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     name: "b2bipartner", 
    #     capabilities: [
    #       "ca-963a8121e4fc4e348", 
    #     ], 
    #     created_at: Time.parse("2023-11-01T21:51:05.504Z"), 
    #     email: "john@example.com", 
    #     partnership_arn: "arn:aws:b2bi:us-west-2:123456789012:partnership/ps-60fbc37c87f04fce9", 
    #     partnership_id: "ps-219fa02f5b4242af8", 
    #     phone: "5555555555", 
    #     profile_id: "p-60fbc37c87f04fce9", 
    #     trading_partner_id: "tp-2a17ca447f6f4a8a8", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_partnership({
    #     profile_id: "ProfileId", # required
    #     name: "PartnerName", # required
    #     email: "Email", # required
    #     phone: "Phone",
    #     capabilities: ["CapabilityId"],
    #     client_token: "String",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.profile_id #=> String
    #   resp.partnership_id #=> String
    #   resp.partnership_arn #=> String
    #   resp.name #=> String
    #   resp.email #=> String
    #   resp.phone #=> String
    #   resp.capabilities #=> Array
    #   resp.capabilities[0] #=> String
    #   resp.trading_partner_id #=> String
    #   resp.created_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/CreatePartnership AWS API Documentation
    #
    # @overload create_partnership(params = {})
    # @param [Hash] params ({})
    def create_partnership(params = {}, options = {})
      req = build_request(:create_partnership, params)
      req.send_request(options)
    end

    # Creates a customer profile. You can have up to five customer profiles,
    # each representing a distinct private network. A profile is the
    # mechanism used to create the concept of a private network.
    #
    # @option params [required, String] :name
    #   Specifies the name of the profile.
    #
    # @option params [String] :email
    #   Specifies the email address associated with this customer profile.
    #
    # @option params [required, String] :phone
    #   Specifies the phone number associated with the profile.
    #
    # @option params [required, String] :business_name
    #   Specifies the name for the business associated with this profile.
    #
    # @option params [required, String] :logging
    #   Specifies whether or not logging is enabled for this profile.
    #
    # @option params [String] :client_token
    #   Reserved for future use.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Array<Types::Tag>] :tags
    #   Specifies the key-value pairs assigned to ARNs that you can use to
    #   group and search for resources by type. You can attach this metadata
    #   to resources (capabilities, partnerships, and so on) for any purpose.
    #
    # @return [Types::CreateProfileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateProfileResponse#profile_id #profile_id} => String
    #   * {Types::CreateProfileResponse#profile_arn #profile_arn} => String
    #   * {Types::CreateProfileResponse#name #name} => String
    #   * {Types::CreateProfileResponse#business_name #business_name} => String
    #   * {Types::CreateProfileResponse#phone #phone} => String
    #   * {Types::CreateProfileResponse#email #email} => String
    #   * {Types::CreateProfileResponse#logging #logging} => String
    #   * {Types::CreateProfileResponse#log_group_name #log_group_name} => String
    #   * {Types::CreateProfileResponse#created_at #created_at} => Time
    #
    #
    # @example Example: Sample CreateProfile call
    #
    #   resp = client.create_profile({
    #     name: "Shipping Profile", 
    #     business_name: "John's Shipping", 
    #     client_token: "foo", 
    #     email: "john@example.com", 
    #     logging: "ENABLED", 
    #     phone: "5555555555", 
    #     tags: [
    #       {
    #         key: "sampleKey", 
    #         value: "sampleValue", 
    #       }, 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     name: "Shipping Profile", 
    #     business_name: "John's Trucking", 
    #     created_at: Time.parse("2023-11-01T21:51:05.504Z"), 
    #     email: "john@example.com", 
    #     log_group_name: "b2bi/p-60fbc37c87f04fce9-Logs", 
    #     logging: "ENABLED", 
    #     phone: "5555555555", 
    #     profile_arn: "arn:aws:b2bi:us-west-2:123456789012:profile/p-60fbc37c87f04fce9", 
    #     profile_id: "p-60fbc37c87f04fce9", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_profile({
    #     name: "ProfileName", # required
    #     email: "Email",
    #     phone: "Phone", # required
    #     business_name: "BusinessName", # required
    #     logging: "ENABLED", # required, accepts ENABLED, DISABLED
    #     client_token: "String",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.profile_id #=> String
    #   resp.profile_arn #=> String
    #   resp.name #=> String
    #   resp.business_name #=> String
    #   resp.phone #=> String
    #   resp.email #=> String
    #   resp.logging #=> String, one of "ENABLED", "DISABLED"
    #   resp.log_group_name #=> String
    #   resp.created_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/CreateProfile AWS API Documentation
    #
    # @overload create_profile(params = {})
    # @param [Hash] params ({})
    def create_profile(params = {}, options = {})
      req = build_request(:create_profile, params)
      req.send_request(options)
    end

    # Creates a transformer. A transformer describes how to process the
    # incoming EDI documents and extract the necessary information to the
    # output file.
    #
    # @option params [required, String] :name
    #   Specifies the name of the transformer, used to identify it.
    #
    # @option params [required, String] :file_format
    #   Specifies that the currently supported file formats for EDI
    #   transformations are `JSON` and `XML`.
    #
    # @option params [required, String] :mapping_template
    #   Specifies the name of the mapping template for the transformer. This
    #   template is used to convert the input document into the correct set of
    #   objects.
    #
    # @option params [required, Types::EdiType] :edi_type
    #   Specifies the details for the EDI standard that is being used for the
    #   transformer. Currently, only X12 is supported. X12 is a set of
    #   standards and corresponding messages that define specific business
    #   documents.
    #
    # @option params [String] :sample_document
    #   Specifies a sample EDI document that is used by a transformer as a
    #   guide for processing the EDI data.
    #
    # @option params [String] :client_token
    #   Reserved for future use.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Array<Types::Tag>] :tags
    #   Specifies the key-value pairs assigned to ARNs that you can use to
    #   group and search for resources by type. You can attach this metadata
    #   to resources (capabilities, partnerships, and so on) for any purpose.
    #
    # @return [Types::CreateTransformerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateTransformerResponse#transformer_id #transformer_id} => String
    #   * {Types::CreateTransformerResponse#transformer_arn #transformer_arn} => String
    #   * {Types::CreateTransformerResponse#name #name} => String
    #   * {Types::CreateTransformerResponse#file_format #file_format} => String
    #   * {Types::CreateTransformerResponse#mapping_template #mapping_template} => String
    #   * {Types::CreateTransformerResponse#status #status} => String
    #   * {Types::CreateTransformerResponse#edi_type #edi_type} => Types::EdiType
    #   * {Types::CreateTransformerResponse#sample_document #sample_document} => String
    #   * {Types::CreateTransformerResponse#created_at #created_at} => Time
    #
    #
    # @example Example: Sample CreateTransformer call
    #
    #   resp = client.create_transformer({
    #     name: "transformJSON", 
    #     client_token: "foo", 
    #     edi_type: {
    #       x12_details: {
    #         version: "VERSION_4010", 
    #         transaction_set: "X12_110", 
    #       }, 
    #     }, 
    #     file_format: "JSON", 
    #     mapping_template: "{}", 
    #     sample_document: "s3://test-bucket/sampleDoc.txt", 
    #     tags: [
    #       {
    #         key: "sampleKey", 
    #         value: "sampleValue", 
    #       }, 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     name: "transformJSON", 
    #     created_at: Time.parse("2023-11-01T21:51:05.504Z"), 
    #     edi_type: {
    #       x12_details: {
    #         version: "VERSION_4010", 
    #         transaction_set: "X12_110", 
    #       }, 
    #     }, 
    #     file_format: "JSON", 
    #     mapping_template: "$", 
    #     sample_document: "s3://test-bucket/sampleDoc.txt", 
    #     status: "inactive", 
    #     transformer_arn: "arn:aws:b2bi:us-west-2:123456789012:transformer/tr-974c129999f84d8c9", 
    #     transformer_id: "tr-974c129999f84d8c9", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_transformer({
    #     name: "TransformerName", # required
    #     file_format: "XML", # required, accepts XML, JSON
    #     mapping_template: "MappingTemplate", # required
    #     edi_type: { # required
    #       x12_details: {
    #         transaction_set: "X12_110", # accepts X12_110, X12_180, X12_204, X12_210, X12_214, X12_215, X12_310, X12_315, X12_322, X12_404, X12_410, X12_820, X12_824, X12_830, X12_846, X12_850, X12_852, X12_855, X12_856, X12_860, X12_861, X12_864, X12_940, X12_990, X12_997
    #         version: "VERSION_4010", # accepts VERSION_4010, VERSION_4030, VERSION_5010
    #       },
    #     },
    #     sample_document: "FileLocation",
    #     client_token: "String",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.transformer_id #=> String
    #   resp.transformer_arn #=> String
    #   resp.name #=> String
    #   resp.file_format #=> String, one of "XML", "JSON"
    #   resp.mapping_template #=> String
    #   resp.status #=> String, one of "active", "inactive"
    #   resp.edi_type.x12_details.transaction_set #=> String, one of "X12_110", "X12_180", "X12_204", "X12_210", "X12_214", "X12_215", "X12_310", "X12_315", "X12_322", "X12_404", "X12_410", "X12_820", "X12_824", "X12_830", "X12_846", "X12_850", "X12_852", "X12_855", "X12_856", "X12_860", "X12_861", "X12_864", "X12_940", "X12_990", "X12_997"
    #   resp.edi_type.x12_details.version #=> String, one of "VERSION_4010", "VERSION_4030", "VERSION_5010"
    #   resp.sample_document #=> String
    #   resp.created_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/CreateTransformer AWS API Documentation
    #
    # @overload create_transformer(params = {})
    # @param [Hash] params ({})
    def create_transformer(params = {}, options = {})
      req = build_request(:create_transformer, params)
      req.send_request(options)
    end

    # Deletes the specified capability. A trading capability contains the
    # information required to transform incoming EDI documents into JSON or
    # XML outputs.
    #
    # @option params [required, String] :capability_id
    #   Specifies a system-assigned unique identifier for the capability.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Sample DeleteCapabilty call
    #
    #   resp = client.delete_capability({
    #     capability_id: "ca-963a8121e4fc4e348", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_capability({
    #     capability_id: "CapabilityId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/DeleteCapability AWS API Documentation
    #
    # @overload delete_capability(params = {})
    # @param [Hash] params ({})
    def delete_capability(params = {}, options = {})
      req = build_request(:delete_capability, params)
      req.send_request(options)
    end

    # Deletes the specified partnership. A partnership represents the
    # connection between you and your trading partner. It ties together a
    # profile and one or more trading capabilities.
    #
    # @option params [required, String] :partnership_id
    #   Specifies the unique, system-generated identifier for a partnership.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Sample DeletePartnership call
    #
    #   resp = client.delete_partnership({
    #     partnership_id: "ps-219fa02f5b4242af8", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_partnership({
    #     partnership_id: "PartnershipId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/DeletePartnership AWS API Documentation
    #
    # @overload delete_partnership(params = {})
    # @param [Hash] params ({})
    def delete_partnership(params = {}, options = {})
      req = build_request(:delete_partnership, params)
      req.send_request(options)
    end

    # Deletes the specified profile. A profile is the mechanism used to
    # create the concept of a private network.
    #
    # @option params [required, String] :profile_id
    #   Specifies the unique, system-generated identifier for the profile.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Sample DeleteProfile call
    #
    #   resp = client.delete_profile({
    #     profile_id: "p-60fbc37c87f04fce9", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_profile({
    #     profile_id: "ProfileId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/DeleteProfile AWS API Documentation
    #
    # @overload delete_profile(params = {})
    # @param [Hash] params ({})
    def delete_profile(params = {}, options = {})
      req = build_request(:delete_profile, params)
      req.send_request(options)
    end

    # Deletes the specified transformer. A transformer describes how to
    # process the incoming EDI documents and extract the necessary
    # information to the output file.
    #
    # @option params [required, String] :transformer_id
    #   Specifies the system-assigned unique identifier for the transformer.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Sample DeleteTransformer call
    #
    #   resp = client.delete_transformer({
    #     transformer_id: "tr-974c129999f84d8c9", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_transformer({
    #     transformer_id: "TransformerId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/DeleteTransformer AWS API Documentation
    #
    # @overload delete_transformer(params = {})
    # @param [Hash] params ({})
    def delete_transformer(params = {}, options = {})
      req = build_request(:delete_transformer, params)
      req.send_request(options)
    end

    # Retrieves the details for the specified capability. A trading
    # capability contains the information required to transform incoming EDI
    # documents into JSON or XML outputs.
    #
    # @option params [required, String] :capability_id
    #   Specifies a system-assigned unique identifier for the capability.
    #
    # @return [Types::GetCapabilityResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCapabilityResponse#capability_id #capability_id} => String
    #   * {Types::GetCapabilityResponse#capability_arn #capability_arn} => String
    #   * {Types::GetCapabilityResponse#name #name} => String
    #   * {Types::GetCapabilityResponse#type #type} => String
    #   * {Types::GetCapabilityResponse#configuration #configuration} => Types::CapabilityConfiguration
    #   * {Types::GetCapabilityResponse#instructions_documents #instructions_documents} => Array&lt;Types::S3Location&gt;
    #   * {Types::GetCapabilityResponse#created_at #created_at} => Time
    #   * {Types::GetCapabilityResponse#modified_at #modified_at} => Time
    #
    #
    # @example Example: Sample GetCapabilty call
    #
    #   resp = client.get_capability({
    #     capability_id: "ca-963a8121e4fc4e348", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     name: "b2biexample", 
    #     type: "edi", 
    #     capability_arn: "arn:aws:b2bi:us-west-2:123456789012:capability/ca-963a8121e4fc4e348", 
    #     capability_id: "ca-963a8121e4fc4e348", 
    #     configuration: {
    #       edi: {
    #         type: {
    #           x12_details: {
    #             version: "VERSION_4010", 
    #             transaction_set: "X12_110", 
    #           }, 
    #         }, 
    #         input_location: {
    #           key: "input/", 
    #           bucket_name: "test-bucket", 
    #         }, 
    #         output_location: {
    #           key: "output/", 
    #           bucket_name: "test-bucket", 
    #         }, 
    #         transformer_id: "tr-9a893cf536df4658b", 
    #       }, 
    #     }, 
    #     created_at: Time.parse("2023-11-01T21:51:05.504Z"), 
    #     instructions_documents: [
    #       {
    #         key: "instructiondoc.txt", 
    #         bucket_name: "test-bucket", 
    #       }, 
    #     ], 
    #     modified_at: Time.parse("2023-11-02T21:51:05.504Z"), 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_capability({
    #     capability_id: "CapabilityId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.capability_id #=> String
    #   resp.capability_arn #=> String
    #   resp.name #=> String
    #   resp.type #=> String, one of "edi"
    #   resp.configuration.edi.type.x12_details.transaction_set #=> String, one of "X12_110", "X12_180", "X12_204", "X12_210", "X12_214", "X12_215", "X12_310", "X12_315", "X12_322", "X12_404", "X12_410", "X12_820", "X12_824", "X12_830", "X12_846", "X12_850", "X12_852", "X12_855", "X12_856", "X12_860", "X12_861", "X12_864", "X12_940", "X12_990", "X12_997"
    #   resp.configuration.edi.type.x12_details.version #=> String, one of "VERSION_4010", "VERSION_4030", "VERSION_5010"
    #   resp.configuration.edi.input_location.bucket_name #=> String
    #   resp.configuration.edi.input_location.key #=> String
    #   resp.configuration.edi.output_location.bucket_name #=> String
    #   resp.configuration.edi.output_location.key #=> String
    #   resp.configuration.edi.transformer_id #=> String
    #   resp.instructions_documents #=> Array
    #   resp.instructions_documents[0].bucket_name #=> String
    #   resp.instructions_documents[0].key #=> String
    #   resp.created_at #=> Time
    #   resp.modified_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/GetCapability AWS API Documentation
    #
    # @overload get_capability(params = {})
    # @param [Hash] params ({})
    def get_capability(params = {}, options = {})
      req = build_request(:get_capability, params)
      req.send_request(options)
    end

    # Retrieves the details for a partnership, based on the partner and
    # profile IDs specified. A partnership represents the connection between
    # you and your trading partner. It ties together a profile and one or
    # more trading capabilities.
    #
    # @option params [required, String] :partnership_id
    #   Specifies the unique, system-generated identifier for a partnership.
    #
    # @return [Types::GetPartnershipResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPartnershipResponse#profile_id #profile_id} => String
    #   * {Types::GetPartnershipResponse#partnership_id #partnership_id} => String
    #   * {Types::GetPartnershipResponse#partnership_arn #partnership_arn} => String
    #   * {Types::GetPartnershipResponse#name #name} => String
    #   * {Types::GetPartnershipResponse#email #email} => String
    #   * {Types::GetPartnershipResponse#phone #phone} => String
    #   * {Types::GetPartnershipResponse#capabilities #capabilities} => Array&lt;String&gt;
    #   * {Types::GetPartnershipResponse#trading_partner_id #trading_partner_id} => String
    #   * {Types::GetPartnershipResponse#created_at #created_at} => Time
    #   * {Types::GetPartnershipResponse#modified_at #modified_at} => Time
    #
    #
    # @example Example: Sample GetPartnership call
    #
    #   resp = client.get_partnership({
    #     partnership_id: "ps-219fa02f5b4242af8", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     name: "b2bipartner", 
    #     capabilities: [
    #       "ca-963a8121e4fc4e348", 
    #     ], 
    #     created_at: Time.parse("2023-11-01T21:51:05.504Z"), 
    #     email: "john@example.com", 
    #     modified_at: Time.parse("2023-11-01T21:51:05.504Z"), 
    #     partnership_arn: "arn:aws:b2bi:us-west-2:123456789012:partnership/ps-219fa02f5b4242af8", 
    #     partnership_id: "ps-219fa02f5b4242af8", 
    #     phone: "5555555555", 
    #     profile_id: "p-60fbc37c87f04fce9", 
    #     trading_partner_id: "tp-2a17ca447f6f4a8a8", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_partnership({
    #     partnership_id: "PartnershipId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.profile_id #=> String
    #   resp.partnership_id #=> String
    #   resp.partnership_arn #=> String
    #   resp.name #=> String
    #   resp.email #=> String
    #   resp.phone #=> String
    #   resp.capabilities #=> Array
    #   resp.capabilities[0] #=> String
    #   resp.trading_partner_id #=> String
    #   resp.created_at #=> Time
    #   resp.modified_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/GetPartnership AWS API Documentation
    #
    # @overload get_partnership(params = {})
    # @param [Hash] params ({})
    def get_partnership(params = {}, options = {})
      req = build_request(:get_partnership, params)
      req.send_request(options)
    end

    # Retrieves the details for the profile specified by the profile ID. A
    # profile is the mechanism used to create the concept of a private
    # network.
    #
    # @option params [required, String] :profile_id
    #   Specifies the unique, system-generated identifier for the profile.
    #
    # @return [Types::GetProfileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetProfileResponse#profile_id #profile_id} => String
    #   * {Types::GetProfileResponse#profile_arn #profile_arn} => String
    #   * {Types::GetProfileResponse#name #name} => String
    #   * {Types::GetProfileResponse#email #email} => String
    #   * {Types::GetProfileResponse#phone #phone} => String
    #   * {Types::GetProfileResponse#business_name #business_name} => String
    #   * {Types::GetProfileResponse#logging #logging} => String
    #   * {Types::GetProfileResponse#log_group_name #log_group_name} => String
    #   * {Types::GetProfileResponse#created_at #created_at} => Time
    #   * {Types::GetProfileResponse#modified_at #modified_at} => Time
    #
    #
    # @example Example: Sample GetProfile call
    #
    #   resp = client.get_profile({
    #     profile_id: "p-60fbc37c87f04fce9", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     name: "Shipping Profile", 
    #     business_name: "John's Trucking", 
    #     created_at: Time.parse("2023-11-01T21:51:05.504Z"), 
    #     email: "john@example.com", 
    #     log_group_name: "b2bi/p-60fbc37c87f04fce9-Logs", 
    #     logging: "ENABLED", 
    #     phone: "5555555555", 
    #     profile_arn: "arn:aws:b2bi:us-west-2:123456789012:profile/p-60fbc37c87f04fce9", 
    #     profile_id: "p-60fbc37c87f04fce9", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_profile({
    #     profile_id: "ProfileId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.profile_id #=> String
    #   resp.profile_arn #=> String
    #   resp.name #=> String
    #   resp.email #=> String
    #   resp.phone #=> String
    #   resp.business_name #=> String
    #   resp.logging #=> String, one of "ENABLED", "DISABLED"
    #   resp.log_group_name #=> String
    #   resp.created_at #=> Time
    #   resp.modified_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/GetProfile AWS API Documentation
    #
    # @overload get_profile(params = {})
    # @param [Hash] params ({})
    def get_profile(params = {}, options = {})
      req = build_request(:get_profile, params)
      req.send_request(options)
    end

    # Retrieves the details for the transformer specified by the transformer
    # ID. A transformer describes how to process the incoming EDI documents
    # and extract the necessary information to the output file.
    #
    # @option params [required, String] :transformer_id
    #   Specifies the system-assigned unique identifier for the transformer.
    #
    # @return [Types::GetTransformerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTransformerResponse#transformer_id #transformer_id} => String
    #   * {Types::GetTransformerResponse#transformer_arn #transformer_arn} => String
    #   * {Types::GetTransformerResponse#name #name} => String
    #   * {Types::GetTransformerResponse#file_format #file_format} => String
    #   * {Types::GetTransformerResponse#mapping_template #mapping_template} => String
    #   * {Types::GetTransformerResponse#status #status} => String
    #   * {Types::GetTransformerResponse#edi_type #edi_type} => Types::EdiType
    #   * {Types::GetTransformerResponse#sample_document #sample_document} => String
    #   * {Types::GetTransformerResponse#created_at #created_at} => Time
    #   * {Types::GetTransformerResponse#modified_at #modified_at} => Time
    #
    #
    # @example Example: Sample GetTransformer call
    #
    #   resp = client.get_transformer({
    #     transformer_id: "tr-974c129999f84d8c9", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     name: "transformJSON", 
    #     created_at: Time.parse("2023-11-01T21:51:05.504Z"), 
    #     edi_type: {
    #       x12_details: {
    #         version: "VERSION_4010", 
    #         transaction_set: "X12_110", 
    #       }, 
    #     }, 
    #     file_format: "JSON", 
    #     mapping_template: "$", 
    #     modified_at: Time.parse("2023-11-01T21:51:05.504Z"), 
    #     sample_document: "s3://test-bucket/sampleDoc.txt", 
    #     status: "inactive", 
    #     transformer_arn: "arn:aws:b2bi:us-west-2:123456789012:transformer/tr-974c129999f84d8c9", 
    #     transformer_id: "tr-974c129999f84d8c9", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_transformer({
    #     transformer_id: "TransformerId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.transformer_id #=> String
    #   resp.transformer_arn #=> String
    #   resp.name #=> String
    #   resp.file_format #=> String, one of "XML", "JSON"
    #   resp.mapping_template #=> String
    #   resp.status #=> String, one of "active", "inactive"
    #   resp.edi_type.x12_details.transaction_set #=> String, one of "X12_110", "X12_180", "X12_204", "X12_210", "X12_214", "X12_215", "X12_310", "X12_315", "X12_322", "X12_404", "X12_410", "X12_820", "X12_824", "X12_830", "X12_846", "X12_850", "X12_852", "X12_855", "X12_856", "X12_860", "X12_861", "X12_864", "X12_940", "X12_990", "X12_997"
    #   resp.edi_type.x12_details.version #=> String, one of "VERSION_4010", "VERSION_4030", "VERSION_5010"
    #   resp.sample_document #=> String
    #   resp.created_at #=> Time
    #   resp.modified_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/GetTransformer AWS API Documentation
    #
    # @overload get_transformer(params = {})
    # @param [Hash] params ({})
    def get_transformer(params = {}, options = {})
      req = build_request(:get_transformer, params)
      req.send_request(options)
    end

    # Returns the details of the transformer run, based on the Transformer
    # job ID.
    #
    # @option params [required, String] :transformer_job_id
    #   Specifies the unique, system-generated identifier for a transformer
    #   run.
    #
    # @option params [required, String] :transformer_id
    #   Specifies the system-assigned unique identifier for the transformer.
    #
    # @return [Types::GetTransformerJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTransformerJobResponse#status #status} => String
    #   * {Types::GetTransformerJobResponse#output_files #output_files} => Array&lt;Types::S3Location&gt;
    #   * {Types::GetTransformerJobResponse#message #message} => String
    #
    #
    # @example Example: Sample GetTransformerJob call
    #
    #   resp = client.get_transformer_job({
    #     transformer_id: "tr-974c129999f84d8c9", 
    #     transformer_job_id: "tj-vpYxfV7yQOqjMSYllEslLw", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     message: "Transformed, writing output", 
    #     output_files: [
    #       {
    #         key: "output/sample-214.edi.2023-11-01T10:44:03.353Z.json", 
    #         bucket_name: "gt-edi-test", 
    #       }, 
    #     ], 
    #     status: "succeeded", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_transformer_job({
    #     transformer_job_id: "TransformerJobId", # required
    #     transformer_id: "TransformerId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> String, one of "running", "succeeded", "failed"
    #   resp.output_files #=> Array
    #   resp.output_files[0].bucket_name #=> String
    #   resp.output_files[0].key #=> String
    #   resp.message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/GetTransformerJob AWS API Documentation
    #
    # @overload get_transformer_job(params = {})
    # @param [Hash] params ({})
    def get_transformer_job(params = {}, options = {})
      req = build_request(:get_transformer_job, params)
      req.send_request(options)
    end

    # Lists the capabilities associated with your Amazon Web Services
    # account for your current or specified region. A trading capability
    # contains the information required to transform incoming EDI documents
    # into JSON or XML outputs.
    #
    # @option params [String] :next_token
    #   When additional results are obtained from the command, a `NextToken`
    #   parameter is returned in the output. You can then pass the `NextToken`
    #   parameter in a subsequent command to continue listing additional
    #   resources.
    #
    # @option params [Integer] :max_results
    #   Specifies the maximum number of capabilities to return.
    #
    # @return [Types::ListCapabilitiesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCapabilitiesResponse#capabilities #capabilities} => Array&lt;Types::CapabilitySummary&gt;
    #   * {Types::ListCapabilitiesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: Sample ListCapabilities call
    #
    #   resp = client.list_capabilities({
    #     max_results: 50, 
    #     next_token: "foo", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     capabilities: [
    #       {
    #         name: "b2biexample", 
    #         type: "edi", 
    #         capability_id: "ca-963a8121e4fc4e348", 
    #         created_at: Time.parse("2023-11-01T21:51:05.504Z"), 
    #         modified_at: Time.parse("2023-11-01T21:51:05.504Z"), 
    #       }, 
    #     ], 
    #     next_token: "foo", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_capabilities({
    #     next_token: "PageToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.capabilities #=> Array
    #   resp.capabilities[0].capability_id #=> String
    #   resp.capabilities[0].name #=> String
    #   resp.capabilities[0].type #=> String, one of "edi"
    #   resp.capabilities[0].created_at #=> Time
    #   resp.capabilities[0].modified_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/ListCapabilities AWS API Documentation
    #
    # @overload list_capabilities(params = {})
    # @param [Hash] params ({})
    def list_capabilities(params = {}, options = {})
      req = build_request(:list_capabilities, params)
      req.send_request(options)
    end

    # Lists the partnerships associated with your Amazon Web Services
    # account for your current or specified region. A partnership represents
    # the connection between you and your trading partner. It ties together
    # a profile and one or more trading capabilities.
    #
    # @option params [String] :profile_id
    #   Specifies the unique, system-generated identifier for the profile
    #   connected to this partnership.
    #
    # @option params [String] :next_token
    #   When additional results are obtained from the command, a `NextToken`
    #   parameter is returned in the output. You can then pass the `NextToken`
    #   parameter in a subsequent command to continue listing additional
    #   resources.
    #
    # @option params [Integer] :max_results
    #   Specifies the maximum number of capabilities to return.
    #
    # @return [Types::ListPartnershipsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPartnershipsResponse#partnerships #partnerships} => Array&lt;Types::PartnershipSummary&gt;
    #   * {Types::ListPartnershipsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: Sample ListPartnerships call
    #
    #   resp = client.list_partnerships({
    #     max_results: 50, 
    #     next_token: "foo", 
    #     profile_id: "p-60fbc37c87f04fce9", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     next_token: "string", 
    #     partnerships: [
    #       {
    #         name: "b2bipartner", 
    #         capabilities: [
    #           "ca-963a8121e4fc4e348", 
    #         ], 
    #         created_at: Time.parse("2023-11-01T21:51:05.504Z"), 
    #         modified_at: Time.parse("2023-11-01T21:51:05.504Z"), 
    #         partnership_id: "ps-219fa02f5b4242af8", 
    #         profile_id: "p-60fbc37c87f04fce9", 
    #         trading_partner_id: "tp-2a17ca447f6f4a8a8", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_partnerships({
    #     profile_id: "ProfileId",
    #     next_token: "PageToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.partnerships #=> Array
    #   resp.partnerships[0].profile_id #=> String
    #   resp.partnerships[0].partnership_id #=> String
    #   resp.partnerships[0].name #=> String
    #   resp.partnerships[0].capabilities #=> Array
    #   resp.partnerships[0].capabilities[0] #=> String
    #   resp.partnerships[0].trading_partner_id #=> String
    #   resp.partnerships[0].created_at #=> Time
    #   resp.partnerships[0].modified_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/ListPartnerships AWS API Documentation
    #
    # @overload list_partnerships(params = {})
    # @param [Hash] params ({})
    def list_partnerships(params = {}, options = {})
      req = build_request(:list_partnerships, params)
      req.send_request(options)
    end

    # Lists the profiles associated with your Amazon Web Services account
    # for your current or specified region. A profile is the mechanism used
    # to create the concept of a private network.
    #
    # @option params [String] :next_token
    #   When additional results are obtained from the command, a `NextToken`
    #   parameter is returned in the output. You can then pass the `NextToken`
    #   parameter in a subsequent command to continue listing additional
    #   resources.
    #
    # @option params [Integer] :max_results
    #   Specifies the maximum number of profiles to return.
    #
    # @return [Types::ListProfilesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListProfilesResponse#profiles #profiles} => Array&lt;Types::ProfileSummary&gt;
    #   * {Types::ListProfilesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: Sample ListProfiles call
    #
    #   resp = client.list_profiles({
    #     max_results: 50, 
    #     next_token: "foo", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     next_token: "foo", 
    #     profiles: [
    #       {
    #         name: "Shipping Profile", 
    #         business_name: "John's Trucking", 
    #         created_at: Time.parse("2023-11-01T21:51:05.504Z"), 
    #         log_group_name: "b2bi/p-60fbc37c87f04fce9-Logs", 
    #         logging: "ENABLED", 
    #         profile_id: "p-60fbc37c87f04fce9", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_profiles({
    #     next_token: "PageToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.profiles #=> Array
    #   resp.profiles[0].profile_id #=> String
    #   resp.profiles[0].name #=> String
    #   resp.profiles[0].business_name #=> String
    #   resp.profiles[0].logging #=> String, one of "ENABLED", "DISABLED"
    #   resp.profiles[0].log_group_name #=> String
    #   resp.profiles[0].created_at #=> Time
    #   resp.profiles[0].modified_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/ListProfiles AWS API Documentation
    #
    # @overload list_profiles(params = {})
    # @param [Hash] params ({})
    def list_profiles(params = {}, options = {})
      req = build_request(:list_profiles, params)
      req.send_request(options)
    end

    # Lists all of the tags associated with the Amazon Resource Name (ARN)
    # that you specify. The resource can be a capability, partnership,
    # profile, or transformer.
    #
    # @option params [required, String] :resource_arn
    #   Requests the tags associated with a particular Amazon Resource Name
    #   (ARN). An ARN is an identifier for a specific Amazon Web Services
    #   resource, such as a capability, partnership, profile, or transformer.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #
    #
    # @example Example: Sample ListTagsForResources call
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "arn:aws:b2bi:us-west-2:123456789012:profile/p-60fbc37c87f04fce9", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     tags: [
    #       {
    #         key: "sampleKey", 
    #         value: "SampleValue", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "AmazonResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Lists the available transformers. A transformer describes how to
    # process the incoming EDI documents and extract the necessary
    # information to the output file.
    #
    # @option params [String] :next_token
    #   When additional results are obtained from the command, a `NextToken`
    #   parameter is returned in the output. You can then pass the `NextToken`
    #   parameter in a subsequent command to continue listing additional
    #   resources.
    #
    # @option params [Integer] :max_results
    #   Specifies the number of items to return for the API response.
    #
    # @return [Types::ListTransformersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTransformersResponse#transformers #transformers} => Array&lt;Types::TransformerSummary&gt;
    #   * {Types::ListTransformersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: Sample ListTransformers call
    #
    #   resp = client.list_transformers({
    #     max_results: 50, 
    #     next_token: "foo", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     next_token: "foo", 
    #     transformers: [
    #       {
    #         name: "transformJSON", 
    #         created_at: Time.parse("2023-11-01T21:51:05.504Z"), 
    #         edi_type: {
    #           x12_details: {
    #             version: "VERSION_4010", 
    #             transaction_set: "X12_110", 
    #           }, 
    #         }, 
    #         file_format: "JSON", 
    #         mapping_template: "$", 
    #         modified_at: Time.parse("2023-11-01T21:51:05.504Z"), 
    #         sample_document: "s3://test-bucket/sampleDoc.txt", 
    #         status: "inactive", 
    #         transformer_id: "tr-974c129999f84d8c9", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_transformers({
    #     next_token: "PageToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.transformers #=> Array
    #   resp.transformers[0].transformer_id #=> String
    #   resp.transformers[0].name #=> String
    #   resp.transformers[0].file_format #=> String, one of "XML", "JSON"
    #   resp.transformers[0].mapping_template #=> String
    #   resp.transformers[0].status #=> String, one of "active", "inactive"
    #   resp.transformers[0].edi_type.x12_details.transaction_set #=> String, one of "X12_110", "X12_180", "X12_204", "X12_210", "X12_214", "X12_215", "X12_310", "X12_315", "X12_322", "X12_404", "X12_410", "X12_820", "X12_824", "X12_830", "X12_846", "X12_850", "X12_852", "X12_855", "X12_856", "X12_860", "X12_861", "X12_864", "X12_940", "X12_990", "X12_997"
    #   resp.transformers[0].edi_type.x12_details.version #=> String, one of "VERSION_4010", "VERSION_4030", "VERSION_5010"
    #   resp.transformers[0].sample_document #=> String
    #   resp.transformers[0].created_at #=> Time
    #   resp.transformers[0].modified_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/ListTransformers AWS API Documentation
    #
    # @overload list_transformers(params = {})
    # @param [Hash] params ({})
    def list_transformers(params = {}, options = {})
      req = build_request(:list_transformers, params)
      req.send_request(options)
    end

    # Runs a job, using a transformer, to parse input EDI (electronic data
    # interchange) file into the output structures used by Amazon Web
    # Services B2BI Data Interchange.
    #
    # If you only want to transform EDI (electronic data interchange)
    # documents, you don't need to create profiles, partnerships or
    # capabilities. Just create and configure a transformer, and then run
    # the `StartTransformerJob` API to process your files.
    #
    # @option params [required, Types::S3Location] :input_file
    #   Specifies the location of the input file for the transformation. The
    #   location consists of an Amazon S3 bucket and prefix.
    #
    # @option params [required, Types::S3Location] :output_location
    #   Specifies the location of the output file for the transformation. The
    #   location consists of an Amazon S3 bucket and prefix.
    #
    # @option params [required, String] :transformer_id
    #   Specifies the system-assigned unique identifier for the transformer.
    #
    # @option params [String] :client_token
    #   Reserved for future use.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::StartTransformerJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartTransformerJobResponse#transformer_job_id #transformer_job_id} => String
    #
    #
    # @example Example: Sample StartTransformerJob call
    #
    #   resp = client.start_transformer_job({
    #     client_token: "foo", 
    #     input_file: {
    #       key: "input/inputFile.txt", 
    #       bucket_name: "test-bucket", 
    #     }, 
    #     output_location: {
    #       key: "output/", 
    #       bucket_name: "test-bucket", 
    #     }, 
    #     transformer_id: "tr-974c129999f84d8c9", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     transformer_job_id: "tj-vpYxfV7yQOqjMSYllEslLw", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_transformer_job({
    #     input_file: { # required
    #       bucket_name: "BucketName",
    #       key: "S3Key",
    #     },
    #     output_location: { # required
    #       bucket_name: "BucketName",
    #       key: "S3Key",
    #     },
    #     transformer_id: "TransformerId", # required
    #     client_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.transformer_job_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/StartTransformerJob AWS API Documentation
    #
    # @overload start_transformer_job(params = {})
    # @param [Hash] params ({})
    def start_transformer_job(params = {}, options = {})
      req = build_request(:start_transformer_job, params)
      req.send_request(options)
    end

    # Attaches a key-value pair to a resource, as identified by its Amazon
    # Resource Name (ARN). Resources are capability, partnership, profile,
    # transformers and other entities.
    #
    # There is no response returned from this call.
    #
    # @option params [required, String] :resource_arn
    #   Specifies an Amazon Resource Name (ARN) for a specific Amazon Web
    #   Services resource, such as a capability, partnership, profile, or
    #   transformer.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   Specifies the key-value pairs assigned to ARNs that you can use to
    #   group and search for resources by type. You can attach this metadata
    #   to resources (capabilities, partnerships, and so on) for any purpose.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Sample TagResource call
    #
    #   resp = client.tag_resource({
    #     resource_arn: "arn:aws:b2bi:us-west-2:123456789012:profile/p-60fbc37c87f04fce9", 
    #     tags: [
    #       {
    #         key: "sampleKey", 
    #         value: "SampleValue", 
    #       }, 
    #     ], 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "AmazonResourceName", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Maps the input file according to the provided template file. The API
    # call downloads the file contents from the Amazon S3 location, and
    # passes the contents in as a string, to the `inputFileContent`
    # parameter.
    #
    # @option params [required, String] :input_file_content
    #   Specify the contents of the EDI (electronic data interchange) XML or
    #   JSON file that is used as input for the transform.
    #
    # @option params [required, String] :mapping_template
    #   Specifies the name of the mapping template for the transformer. This
    #   template is used to convert the input document into the correct set of
    #   objects.
    #
    # @option params [required, String] :file_format
    #   Specifies that the currently supported file formats for EDI
    #   transformations are `JSON` and `XML`.
    #
    # @return [Types::TestMappingResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::TestMappingResponse#mapped_file_content #mapped_file_content} => String
    #
    #
    # @example Example: Sample TestMapping call
    #
    #   resp = client.test_mapping({
    #     file_format: "JSON", 
    #     input_file_content: "Sample file content", 
    #     mapping_template: "$", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     mapped_file_content: "Sample file content", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.test_mapping({
    #     input_file_content: "TestMappingInputFileContent", # required
    #     mapping_template: "MappingTemplate", # required
    #     file_format: "XML", # required, accepts XML, JSON
    #   })
    #
    # @example Response structure
    #
    #   resp.mapped_file_content #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/TestMapping AWS API Documentation
    #
    # @overload test_mapping(params = {})
    # @param [Hash] params ({})
    def test_mapping(params = {}, options = {})
      req = build_request(:test_mapping, params)
      req.send_request(options)
    end

    # Parses the input EDI (electronic data interchange) file. The input
    # file has a file size limit of 250 KB.
    #
    # @option params [required, Types::S3Location] :input_file
    #   Specifies an `S3Location` object, which contains the Amazon S3 bucket
    #   and prefix for the location of the input file.
    #
    # @option params [required, String] :file_format
    #   Specifies that the currently supported file formats for EDI
    #   transformations are `JSON` and `XML`.
    #
    # @option params [required, Types::EdiType] :edi_type
    #   Specifies the details for the EDI standard that is being used for the
    #   transformer. Currently, only X12 is supported. X12 is a set of
    #   standards and corresponding messages that define specific business
    #   documents.
    #
    # @return [Types::TestParsingResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::TestParsingResponse#parsed_file_content #parsed_file_content} => String
    #
    #
    # @example Example: Sample TestParsing call
    #
    #   resp = client.test_parsing({
    #     edi_type: {
    #       x12_details: {
    #         version: "VERSION_4010", 
    #         transaction_set: "X12_110", 
    #       }, 
    #     }, 
    #     file_format: "JSON", 
    #     input_file: {
    #       key: "sampleFile.txt", 
    #       bucket_name: "test-bucket", 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     parsed_file_content: "Sample parsed file content", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.test_parsing({
    #     input_file: { # required
    #       bucket_name: "BucketName",
    #       key: "S3Key",
    #     },
    #     file_format: "XML", # required, accepts XML, JSON
    #     edi_type: { # required
    #       x12_details: {
    #         transaction_set: "X12_110", # accepts X12_110, X12_180, X12_204, X12_210, X12_214, X12_215, X12_310, X12_315, X12_322, X12_404, X12_410, X12_820, X12_824, X12_830, X12_846, X12_850, X12_852, X12_855, X12_856, X12_860, X12_861, X12_864, X12_940, X12_990, X12_997
    #         version: "VERSION_4010", # accepts VERSION_4010, VERSION_4030, VERSION_5010
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.parsed_file_content #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/TestParsing AWS API Documentation
    #
    # @overload test_parsing(params = {})
    # @param [Hash] params ({})
    def test_parsing(params = {}, options = {})
      req = build_request(:test_parsing, params)
      req.send_request(options)
    end

    # Detaches a key-value pair from the specified resource, as identified
    # by its Amazon Resource Name (ARN). Resources are capability,
    # partnership, profile, transformers and other entities.
    #
    # @option params [required, String] :resource_arn
    #   Specifies an Amazon Resource Name (ARN) for a specific Amazon Web
    #   Services resource, such as a capability, partnership, profile, or
    #   transformer.
    #
    # @option params [required, Array<String>] :tag_keys
    #   Specifies the key-value pairs assigned to ARNs that you can use to
    #   group and search for resources by type. You can attach this metadata
    #   to resources (capabilities, partnerships, and so on) for any purpose.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Sample UntagResource call
    #
    #   resp = client.untag_resource({
    #     resource_arn: "arn:aws:b2bi:us-west-2:123456789012:profile/p-60fbc37c87f04fce9", 
    #     tag_keys: [
    #       "sampleKey", 
    #     ], 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "AmazonResourceName", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates some of the parameters for a capability, based on the
    # specified parameters. A trading capability contains the information
    # required to transform incoming EDI documents into JSON or XML outputs.
    #
    # @option params [required, String] :capability_id
    #   Specifies a system-assigned unique identifier for the capability.
    #
    # @option params [String] :name
    #   Specifies a new name for the capability, to replace the existing name.
    #
    # @option params [Types::CapabilityConfiguration] :configuration
    #   Specifies a structure that contains the details for a capability.
    #
    # @option params [Array<Types::S3Location>] :instructions_documents
    #   Specifies one or more locations in Amazon S3, each specifying an EDI
    #   document that can be used with this capability. Each item contains the
    #   name of the bucket and the key, to identify the document's location.
    #
    # @return [Types::UpdateCapabilityResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateCapabilityResponse#capability_id #capability_id} => String
    #   * {Types::UpdateCapabilityResponse#capability_arn #capability_arn} => String
    #   * {Types::UpdateCapabilityResponse#name #name} => String
    #   * {Types::UpdateCapabilityResponse#type #type} => String
    #   * {Types::UpdateCapabilityResponse#configuration #configuration} => Types::CapabilityConfiguration
    #   * {Types::UpdateCapabilityResponse#instructions_documents #instructions_documents} => Array&lt;Types::S3Location&gt;
    #   * {Types::UpdateCapabilityResponse#created_at #created_at} => Time
    #   * {Types::UpdateCapabilityResponse#modified_at #modified_at} => Time
    #
    #
    # @example Example: Sample UpdateCapability call
    #
    #   resp = client.update_capability({
    #     name: "b2biexample", 
    #     capability_id: "ca-963a8121e4fc4e348", 
    #     configuration: {
    #       edi: {
    #         type: {
    #           x12_details: {
    #             version: "VERSION_4010", 
    #             transaction_set: "X12_110", 
    #           }, 
    #         }, 
    #         input_location: {
    #           key: "input/", 
    #           bucket_name: "test-bucket", 
    #         }, 
    #         output_location: {
    #           key: "output/", 
    #           bucket_name: "test-bucket", 
    #         }, 
    #         transformer_id: "tr-9a893cf536df4658b", 
    #       }, 
    #     }, 
    #     instructions_documents: [
    #       {
    #         key: "instructiondoc.txt", 
    #         bucket_name: "test-bucket", 
    #       }, 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     name: "b2biexample", 
    #     type: "edi", 
    #     capability_arn: "arn:aws:b2bi:us-west-2:123456789012:capability/ca-963a8121e4fc4e348", 
    #     capability_id: "ca-963a8121e4fc4e348", 
    #     configuration: {
    #       edi: {
    #         type: {
    #           x12_details: {
    #             version: "VERSION_4010", 
    #             transaction_set: "X12_110", 
    #           }, 
    #         }, 
    #         input_location: {
    #           key: "input/", 
    #           bucket_name: "test-bucket", 
    #         }, 
    #         output_location: {
    #           key: "output/", 
    #           bucket_name: "test-bucket", 
    #         }, 
    #         transformer_id: "tr-9a893cf536df4658b", 
    #       }, 
    #     }, 
    #     created_at: Time.parse("2023-11-01T21:51:05.504Z"), 
    #     instructions_documents: [
    #       {
    #         key: "instructiondoc.txt", 
    #         bucket_name: "test-bucket", 
    #       }, 
    #     ], 
    #     modified_at: Time.parse("2023-11-01T21:51:05.504Z"), 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_capability({
    #     capability_id: "CapabilityId", # required
    #     name: "CapabilityName",
    #     configuration: {
    #       edi: {
    #         type: { # required
    #           x12_details: {
    #             transaction_set: "X12_110", # accepts X12_110, X12_180, X12_204, X12_210, X12_214, X12_215, X12_310, X12_315, X12_322, X12_404, X12_410, X12_820, X12_824, X12_830, X12_846, X12_850, X12_852, X12_855, X12_856, X12_860, X12_861, X12_864, X12_940, X12_990, X12_997
    #             version: "VERSION_4010", # accepts VERSION_4010, VERSION_4030, VERSION_5010
    #           },
    #         },
    #         input_location: { # required
    #           bucket_name: "BucketName",
    #           key: "S3Key",
    #         },
    #         output_location: { # required
    #           bucket_name: "BucketName",
    #           key: "S3Key",
    #         },
    #         transformer_id: "TransformerId", # required
    #       },
    #     },
    #     instructions_documents: [
    #       {
    #         bucket_name: "BucketName",
    #         key: "S3Key",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.capability_id #=> String
    #   resp.capability_arn #=> String
    #   resp.name #=> String
    #   resp.type #=> String, one of "edi"
    #   resp.configuration.edi.type.x12_details.transaction_set #=> String, one of "X12_110", "X12_180", "X12_204", "X12_210", "X12_214", "X12_215", "X12_310", "X12_315", "X12_322", "X12_404", "X12_410", "X12_820", "X12_824", "X12_830", "X12_846", "X12_850", "X12_852", "X12_855", "X12_856", "X12_860", "X12_861", "X12_864", "X12_940", "X12_990", "X12_997"
    #   resp.configuration.edi.type.x12_details.version #=> String, one of "VERSION_4010", "VERSION_4030", "VERSION_5010"
    #   resp.configuration.edi.input_location.bucket_name #=> String
    #   resp.configuration.edi.input_location.key #=> String
    #   resp.configuration.edi.output_location.bucket_name #=> String
    #   resp.configuration.edi.output_location.key #=> String
    #   resp.configuration.edi.transformer_id #=> String
    #   resp.instructions_documents #=> Array
    #   resp.instructions_documents[0].bucket_name #=> String
    #   resp.instructions_documents[0].key #=> String
    #   resp.created_at #=> Time
    #   resp.modified_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/UpdateCapability AWS API Documentation
    #
    # @overload update_capability(params = {})
    # @param [Hash] params ({})
    def update_capability(params = {}, options = {})
      req = build_request(:update_capability, params)
      req.send_request(options)
    end

    # Updates some of the parameters for a partnership between a customer
    # and trading partner. A partnership represents the connection between
    # you and your trading partner. It ties together a profile and one or
    # more trading capabilities.
    #
    # @option params [required, String] :partnership_id
    #   Specifies the unique, system-generated identifier for a partnership.
    #
    # @option params [String] :name
    #   The name of the partnership, used to identify it.
    #
    # @option params [Array<String>] :capabilities
    #   List of the capabilities associated with this partnership.
    #
    # @return [Types::UpdatePartnershipResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdatePartnershipResponse#profile_id #profile_id} => String
    #   * {Types::UpdatePartnershipResponse#partnership_id #partnership_id} => String
    #   * {Types::UpdatePartnershipResponse#partnership_arn #partnership_arn} => String
    #   * {Types::UpdatePartnershipResponse#name #name} => String
    #   * {Types::UpdatePartnershipResponse#email #email} => String
    #   * {Types::UpdatePartnershipResponse#phone #phone} => String
    #   * {Types::UpdatePartnershipResponse#capabilities #capabilities} => Array&lt;String&gt;
    #   * {Types::UpdatePartnershipResponse#trading_partner_id #trading_partner_id} => String
    #   * {Types::UpdatePartnershipResponse#created_at #created_at} => Time
    #   * {Types::UpdatePartnershipResponse#modified_at #modified_at} => Time
    #
    #
    # @example Example: Sample UpdatePartnership call
    #
    #   resp = client.update_partnership({
    #     name: "b2bipartner", 
    #     capabilities: [
    #       "ca-963a8121e4fc4e348", 
    #     ], 
    #     partnership_id: "ps-219fa02f5b4242af8", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     name: "b2bipartner", 
    #     capabilities: [
    #       "ca-963a8121e4fc4e348", 
    #     ], 
    #     created_at: Time.parse("2023-11-01T21:51:05.504Z"), 
    #     email: "john@example.com", 
    #     modified_at: Time.parse("2023-11-01T21:51:05.504Z"), 
    #     partnership_arn: "arn:aws:b2bi:us-west-2:123456789012:partnership/ps-60fbc37c87f04fce9", 
    #     partnership_id: "ps-219fa02f5b4242af8", 
    #     phone: "5555555555", 
    #     profile_id: "p-60fbc37c87f04fce9", 
    #     trading_partner_id: "tp-2a17ca447f6f4a8a8", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_partnership({
    #     partnership_id: "PartnershipId", # required
    #     name: "PartnerName",
    #     capabilities: ["CapabilityId"],
    #   })
    #
    # @example Response structure
    #
    #   resp.profile_id #=> String
    #   resp.partnership_id #=> String
    #   resp.partnership_arn #=> String
    #   resp.name #=> String
    #   resp.email #=> String
    #   resp.phone #=> String
    #   resp.capabilities #=> Array
    #   resp.capabilities[0] #=> String
    #   resp.trading_partner_id #=> String
    #   resp.created_at #=> Time
    #   resp.modified_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/UpdatePartnership AWS API Documentation
    #
    # @overload update_partnership(params = {})
    # @param [Hash] params ({})
    def update_partnership(params = {}, options = {})
      req = build_request(:update_partnership, params)
      req.send_request(options)
    end

    # Updates the specified parameters for a profile. A profile is the
    # mechanism used to create the concept of a private network.
    #
    # @option params [required, String] :profile_id
    #   Specifies the unique, system-generated identifier for the profile.
    #
    # @option params [String] :name
    #   The name of the profile, used to identify it.
    #
    # @option params [String] :email
    #   Specifies the email address associated with this customer profile.
    #
    # @option params [String] :phone
    #   Specifies the phone number associated with the profile.
    #
    # @option params [String] :business_name
    #   Specifies the name for the business associated with this profile.
    #
    # @return [Types::UpdateProfileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateProfileResponse#profile_id #profile_id} => String
    #   * {Types::UpdateProfileResponse#profile_arn #profile_arn} => String
    #   * {Types::UpdateProfileResponse#name #name} => String
    #   * {Types::UpdateProfileResponse#email #email} => String
    #   * {Types::UpdateProfileResponse#phone #phone} => String
    #   * {Types::UpdateProfileResponse#business_name #business_name} => String
    #   * {Types::UpdateProfileResponse#logging #logging} => String
    #   * {Types::UpdateProfileResponse#log_group_name #log_group_name} => String
    #   * {Types::UpdateProfileResponse#created_at #created_at} => Time
    #   * {Types::UpdateProfileResponse#modified_at #modified_at} => Time
    #
    #
    # @example Example: Sample UpdateProfile call
    #
    #   resp = client.update_profile({
    #     name: "Shipping Profile", 
    #     business_name: "John's Shipping", 
    #     email: "john@example.com", 
    #     phone: "5555555555", 
    #     profile_id: "p-60fbc37c87f04fce9", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     name: "Shipping Profile", 
    #     business_name: "John's Trucking", 
    #     created_at: Time.parse("2023-11-01T21:51:05.504Z"), 
    #     email: "john@example.com", 
    #     log_group_name: "b2bi/p-60fbc37c87f04fce9-Logs", 
    #     logging: "ENABLED", 
    #     modified_at: Time.parse("2023-11-02T21:51:05.504Z"), 
    #     phone: "5555555555", 
    #     profile_arn: "arn:aws:b2bi:us-west-2:123456789012:profile/p-60fbc37c87f04fce9", 
    #     profile_id: "p-60fbc37c87f04fce9", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_profile({
    #     profile_id: "ProfileId", # required
    #     name: "ProfileName",
    #     email: "Email",
    #     phone: "Phone",
    #     business_name: "BusinessName",
    #   })
    #
    # @example Response structure
    #
    #   resp.profile_id #=> String
    #   resp.profile_arn #=> String
    #   resp.name #=> String
    #   resp.email #=> String
    #   resp.phone #=> String
    #   resp.business_name #=> String
    #   resp.logging #=> String, one of "ENABLED", "DISABLED"
    #   resp.log_group_name #=> String
    #   resp.created_at #=> Time
    #   resp.modified_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/UpdateProfile AWS API Documentation
    #
    # @overload update_profile(params = {})
    # @param [Hash] params ({})
    def update_profile(params = {}, options = {})
      req = build_request(:update_profile, params)
      req.send_request(options)
    end

    # Updates the specified parameters for a transformer. A transformer
    # describes how to process the incoming EDI documents and extract the
    # necessary information to the output file.
    #
    # @option params [required, String] :transformer_id
    #   Specifies the system-assigned unique identifier for the transformer.
    #
    # @option params [String] :name
    #   Specify a new name for the transformer, if you want to update it.
    #
    # @option params [String] :file_format
    #   Specifies that the currently supported file formats for EDI
    #   transformations are `JSON` and `XML`.
    #
    # @option params [String] :mapping_template
    #   Specifies the name of the mapping template for the transformer. This
    #   template is used to convert the input document into the correct set of
    #   objects.
    #
    # @option params [String] :status
    #   Specifies the transformer's status. You can update the state of the
    #   transformer, from `active` to `inactive`, or `inactive` to `active`.
    #
    # @option params [Types::EdiType] :edi_type
    #   Specifies the details for the EDI standard that is being used for the
    #   transformer. Currently, only X12 is supported. X12 is a set of
    #   standards and corresponding messages that define specific business
    #   documents.
    #
    # @option params [String] :sample_document
    #   Specifies a sample EDI document that is used by a transformer as a
    #   guide for processing the EDI data.
    #
    # @return [Types::UpdateTransformerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateTransformerResponse#transformer_id #transformer_id} => String
    #   * {Types::UpdateTransformerResponse#transformer_arn #transformer_arn} => String
    #   * {Types::UpdateTransformerResponse#name #name} => String
    #   * {Types::UpdateTransformerResponse#file_format #file_format} => String
    #   * {Types::UpdateTransformerResponse#mapping_template #mapping_template} => String
    #   * {Types::UpdateTransformerResponse#status #status} => String
    #   * {Types::UpdateTransformerResponse#edi_type #edi_type} => Types::EdiType
    #   * {Types::UpdateTransformerResponse#sample_document #sample_document} => String
    #   * {Types::UpdateTransformerResponse#created_at #created_at} => Time
    #   * {Types::UpdateTransformerResponse#modified_at #modified_at} => Time
    #
    #
    # @example Example: Sample UpdateTransformer call
    #
    #   resp = client.update_transformer({
    #     name: "transformJSON", 
    #     edi_type: {
    #       x12_details: {
    #         version: "VERSION_4010", 
    #         transaction_set: "X12_110", 
    #       }, 
    #     }, 
    #     file_format: "JSON", 
    #     mapping_template: "{}", 
    #     sample_document: "s3://test-bucket/sampleDoc.txt", 
    #     status: "inactive", 
    #     transformer_id: "tr-974c129999f84d8c9", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     name: "transformJSON", 
    #     created_at: Time.parse("2023-11-01T21:51:05.504Z"), 
    #     edi_type: {
    #       x12_details: {
    #         version: "VERSION_4010", 
    #         transaction_set: "X12_110", 
    #       }, 
    #     }, 
    #     file_format: "JSON", 
    #     mapping_template: "$", 
    #     modified_at: Time.parse("2023-11-01T21:51:05.504Z"), 
    #     sample_document: "s3://test-bucket/sampleDoc.txt", 
    #     status: "inactive", 
    #     transformer_arn: "arn:aws:b2bi:us-west-2:607686414464:transformer/tr-974c129999f84d8c9", 
    #     transformer_id: "tr-974c129999f84d8c9", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_transformer({
    #     transformer_id: "TransformerId", # required
    #     name: "TransformerName",
    #     file_format: "XML", # accepts XML, JSON
    #     mapping_template: "MappingTemplate",
    #     status: "active", # accepts active, inactive
    #     edi_type: {
    #       x12_details: {
    #         transaction_set: "X12_110", # accepts X12_110, X12_180, X12_204, X12_210, X12_214, X12_215, X12_310, X12_315, X12_322, X12_404, X12_410, X12_820, X12_824, X12_830, X12_846, X12_850, X12_852, X12_855, X12_856, X12_860, X12_861, X12_864, X12_940, X12_990, X12_997
    #         version: "VERSION_4010", # accepts VERSION_4010, VERSION_4030, VERSION_5010
    #       },
    #     },
    #     sample_document: "FileLocation",
    #   })
    #
    # @example Response structure
    #
    #   resp.transformer_id #=> String
    #   resp.transformer_arn #=> String
    #   resp.name #=> String
    #   resp.file_format #=> String, one of "XML", "JSON"
    #   resp.mapping_template #=> String
    #   resp.status #=> String, one of "active", "inactive"
    #   resp.edi_type.x12_details.transaction_set #=> String, one of "X12_110", "X12_180", "X12_204", "X12_210", "X12_214", "X12_215", "X12_310", "X12_315", "X12_322", "X12_404", "X12_410", "X12_820", "X12_824", "X12_830", "X12_846", "X12_850", "X12_852", "X12_855", "X12_856", "X12_860", "X12_861", "X12_864", "X12_940", "X12_990", "X12_997"
    #   resp.edi_type.x12_details.version #=> String, one of "VERSION_4010", "VERSION_4030", "VERSION_5010"
    #   resp.sample_document #=> String
    #   resp.created_at #=> Time
    #   resp.modified_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/UpdateTransformer AWS API Documentation
    #
    # @overload update_transformer(params = {})
    # @param [Hash] params ({})
    def update_transformer(params = {}, options = {})
      req = build_request(:update_transformer, params)
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
      context[:gem_name] = 'aws-sdk-b2bi'
      context[:gem_version] = '1.4.0'
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
