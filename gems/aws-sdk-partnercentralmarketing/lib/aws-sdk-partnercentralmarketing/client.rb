# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'seahorse/client/plugins/content_length'
require 'aws-sdk-core/plugins/credentials_configuration'
require 'aws-sdk-core/plugins/logging'
require 'aws-sdk-core/plugins/param_converter'
require 'aws-sdk-core/plugins/param_validator'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/helpful_socket_errors'
require 'aws-sdk-core/plugins/retry_errors'
require 'aws-sdk-core/plugins/global_configuration'
require 'aws-sdk-core/plugins/regional_endpoint'
require 'aws-sdk-core/plugins/endpoint_discovery'
require 'aws-sdk-core/plugins/endpoint_pattern'
require 'aws-sdk-core/plugins/response_paging'
require 'aws-sdk-core/plugins/stub_responses'
require 'aws-sdk-core/plugins/idempotency_token'
require 'aws-sdk-core/plugins/invocation_id'
require 'aws-sdk-core/plugins/jsonvalue_converter'
require 'aws-sdk-core/plugins/client_metrics_plugin'
require 'aws-sdk-core/plugins/client_metrics_send_plugin'
require 'aws-sdk-core/plugins/transfer_encoding'
require 'aws-sdk-core/plugins/http_checksum'
require 'aws-sdk-core/plugins/checksum_algorithm'
require 'aws-sdk-core/plugins/request_compression'
require 'aws-sdk-core/plugins/defaults_mode'
require 'aws-sdk-core/plugins/recursion_detection'
require 'aws-sdk-core/plugins/telemetry'
require 'aws-sdk-core/plugins/sign'
require 'aws-sdk-core/plugins/protocols/rpc_v2'

module Aws::PartnerCentralMarketing
  # An API client for PartnerCentralMarketing.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::PartnerCentralMarketing::Client.new(
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

    @identifier = :partnercentralmarketing

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
    add_plugin(Aws::Plugins::InvocationId)
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::ClientMetricsPlugin)
    add_plugin(Aws::Plugins::ClientMetricsSendPlugin)
    add_plugin(Aws::Plugins::TransferEncoding)
    add_plugin(Aws::Plugins::HttpChecksum)
    add_plugin(Aws::Plugins::ChecksumAlgorithm)
    add_plugin(Aws::Plugins::RequestCompression)
    add_plugin(Aws::Plugins::DefaultsMode)
    add_plugin(Aws::Plugins::RecursionDetection)
    add_plugin(Aws::Plugins::Telemetry)
    add_plugin(Aws::Plugins::Sign)
    add_plugin(Aws::Plugins::Protocols::RpcV2)
    add_plugin(Aws::PartnerCentralMarketing::Plugins::Endpoints)

    # @overload initialize(options)
    #   @param [Hash] options
    #
    #   @option options [Array<Seahorse::Client::Plugin>] :plugins ([]])
    #     A list of plugins to apply to the client. Each plugin is either a
    #     class name or an instance of a plugin class.
    #
    #   @option options [required, Aws::CredentialProvider] :credentials
    #     Your AWS credentials used for authentication. This can be any class that includes and implements
    #     `Aws::CredentialProvider`, or instance of any one of the following classes:
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
    #     When `:credentials` are not configured directly, the following locations will be searched for credentials:
    #
    #     * `Aws.config[:credentials]`
    #
    #     * The `:access_key_id`, `:secret_access_key`, `:session_token`, and
    #       `:account_id` options.
    #
    #     * `ENV['AWS_ACCESS_KEY_ID']`, `ENV['AWS_SECRET_ACCESS_KEY']`,
    #       `ENV['AWS_SESSION_TOKEN']`, and `ENV['AWS_ACCOUNT_ID']`.
    #
    #     * `~/.aws/credentials`
    #
    #     * `~/.aws/config`
    #
    #     * EC2/ECS IMDS instance profile - When used by default, the timeouts are very aggressive.
    #       Construct and pass an instance of `Aws::InstanceProfileCredentials` or `Aws::ECSCredentials` to
    #       enable retries and extended timeouts. Instance profile credential fetching can be disabled by
    #       setting `ENV['AWS_EC2_METADATA_DISABLED']` to `true`.
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
    #   @option options [String] :account_id
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
    #   @option options [Array<String>] :auth_scheme_preference
    #     A list of preferred authentication schemes to use when making a request. Supported values are:
    #     `sigv4`, `sigv4a`, `httpBearerAuth`, and `noAuth`. When set using `ENV['AWS_AUTH_SCHEME_PREFERENCE']` or in
    #     shared config as `auth_scheme_preference`, the value should be a comma-separated list.
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
    #     Used only in `standard` and `adaptive` retry modes. Specifies whether
    #     to apply a clock skew correction and retry requests with skewed client
    #     clocks. Takes effect only when `disable_clock_skew_correction` is not set.
    #
    #   @option options [String] :defaults_mode ("legacy")
    #     See {Aws::DefaultsModeConfiguration} for a list of the
    #     accepted modes and the configuration defaults that are included.
    #
    #   @option options [Boolean] :disable_clock_skew_correction
    #     Used only in `standard` and `adaptive` retry modes. When `true`, the
    #     SDK does not apply a clock skew correction, does not update its stored
    #     skew from responses, and does not retry clock skew errors. Clock skew
    #     correction is enabled by default.
    #
    #   @option options [Boolean] :disable_host_prefix_injection (false)
    #     When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    #
    #   @option options [Boolean] :disable_request_compression (false)
    #     When set to 'true' the request body will not be compressed
    #     for supported operations.
    #
    #   @option options [String, URI::HTTPS, URI::HTTP] :endpoint
    #     Normally you should not configure the `:endpoint` option
    #     directly. This is normally constructed from the `:region`
    #     option. Configuring `:endpoint` is normally reserved for
    #     connecting to test or custom endpoints. The endpoint should
    #     be a URI formatted like:
    #
    #         'http://example.com'
    #         'https://example.com'
    #         'http://example.com:123'
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
    #     4 times. Used in `standard` and `adaptive` retry modes. Defaults to 3,
    #     except for DynamoDB and DynamoDB Streams, which default to 4.
    #
    #   @option options [String] :profile ("default")
    #     Used when loading credentials from the shared credentials file at `HOME/.aws/credentials`.
    #     When not specified, 'default' is used.
    #
    #   @option options [String] :request_checksum_calculation ("when_supported")
    #     Determines when a checksum will be calculated for request payloads. Values are:
    #
    #     * `when_supported` - (default) When set, a checksum will be
    #       calculated for all request payloads of operations modeled with the
    #       `httpChecksum` trait where `requestChecksumRequired` is `true` and/or a
    #       `requestAlgorithmMember` is modeled.
    #     * `when_required` - When set, a checksum will only be calculated for
    #       request payloads of operations modeled with the  `httpChecksum` trait where
    #       `requestChecksumRequired` is `true` or where a `requestAlgorithmMember`
    #       is modeled and supplied.
    #
    #   @option options [Integer] :request_min_compression_size_bytes (10240)
    #     The minimum size in bytes that triggers compression for request
    #     bodies. The value must be non-negative integer value between 0
    #     and 10485780 bytes inclusive.
    #
    #   @option options [String] :response_checksum_validation ("when_supported")
    #     Determines when checksum validation will be performed on response payloads. Values are:
    #
    #     * `when_supported` - (default) When set, checksum validation is performed on all
    #       response payloads of operations modeled with the `httpChecksum` trait where
    #       `responseAlgorithms` is modeled, except when no modeled checksum algorithms
    #       are supported.
    #     * `when_required` - When set, checksum validation is not performed on
    #       response payloads of operations unless the checksum algorithm is supported and
    #       the `requestValidationModeMember` member is set to `ENABLED`.
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
    #   @option options [String] :retry_mode ("standard")
    #     Specifies which retry algorithm to use. Values are:
    #
    #     * `legacy` - The pre-existing retry behavior.
    #
    #     * `standard` - A standardized set of retry rules across the AWS SDKs.
    #       This includes support for retry quotas, which limit the number of
    #       unsuccessful retries a client can make. This is the default value
    #       if no retry mode is provided.
    #
    #     * `adaptive` - A retry mode that includes all the functionality of
    #       `standard` mode along with automatic client side throttling.
    #
    #   @option options [String] :sdk_ua_app_id
    #     A unique and opaque application ID that is appended to the
    #     User-Agent header as app/sdk_ua_app_id. It should have a
    #     maximum length of 50. This variable is sourced from environment
    #     variable AWS_SDK_UA_APP_ID or the shared config profile attribute sdk_ua_app_id.
    #
    #   @option options [String] :secret_access_key
    #
    #   @option options [String] :session_token
    #
    #   @option options [Array] :sigv4a_signing_region_set
    #     A list of regions that should be signed with SigV4a signing. When
    #     not passed, a default `:sigv4a_signing_region_set` is searched for
    #     in the following locations:
    #
    #     * `Aws.config[:sigv4a_signing_region_set]`
    #     * `ENV['AWS_SIGV4A_SIGNING_REGION_SET']`
    #     * `~/.aws/config`
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
    #   @option options [Aws::Telemetry::TelemetryProviderBase] :telemetry_provider (Aws::Telemetry::NoOpTelemetryProvider)
    #     Allows you to provide a telemetry provider, which is used to
    #     emit telemetry data. By default, uses `NoOpTelemetryProvider` which
    #     will not record or emit any telemetry data. The SDK supports the
    #     following telemetry providers:
    #
    #     * OpenTelemetry (OTel) - To use the OTel provider, install and require the
    #     `opentelemetry-sdk` gem and then, pass in an instance of a
    #     `Aws::Telemetry::OTelProvider` for telemetry provider.
    #
    #   @option options [Aws::TokenProvider] :token_provider
    #     Your Bearer token used for authentication. This can be any class that includes and implements
    #     `Aws::TokenProvider`, or instance of any one of the following classes:
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
    #   @option options [Aws::PartnerCentralMarketing::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::PartnerCentralMarketing::EndpointParameters`.
    #
    #   @option options [Float] :http_continue_timeout (1)
    #     The number of seconds to wait for a 100-continue response before sending the
    #     request body.  This option has no effect unless the request has "Expect"
    #     header set to "100-continue".  Defaults to `nil` which  disables this
    #     behaviour.  This value can safely be set per request on the session.
    #
    #   @option options [Float] :http_idle_timeout (5)
    #     The number of seconds a connection is allowed to sit idle before it
    #     is considered stale.  Stale connections are closed and removed from the
    #     pool before making a request.
    #
    #   @option options [Float] :http_open_timeout (15)
    #     The default number of seconds to wait for response data.
    #     This value can safely be set per-request on the session.
    #
    #   @option options [URI::HTTP,String] :http_proxy
    #     A proxy to send requests through.  Formatted like 'http://proxy.com:123'.
    #
    #   @option options [Float] :http_read_timeout (60)
    #     The default number of seconds to wait for response data.
    #     This value can safely be set per-request on the session.
    #
    #   @option options [Boolean] :http_wire_trace (false)
    #     When `true`,  HTTP debug output will be sent to the `:logger`.
    #
    #   @option options [Proc] :on_chunk_received
    #     When a Proc object is provided, it will be used as callback when each chunk
    #     of the response body is received. It provides three arguments: the chunk,
    #     the number of bytes received, and the total number of
    #     bytes in the response (or nil if the server did not send a `content-length`).
    #
    #   @option options [Proc] :on_chunk_sent
    #     When a Proc object is provided, it will be used as callback when each chunk
    #     of the request body is sent. It provides three arguments: the chunk,
    #     the number of bytes read from the body, and the total number of
    #     bytes in the body.
    #
    #   @option options [Boolean] :raise_response_errors (true)
    #     When `true`, response errors are raised.
    #
    #   @option options [String] :ssl_ca_bundle
    #     Full path to the SSL certificate authority bundle file that should be used when
    #     verifying peer certificates.  If you do not pass `:ssl_ca_bundle` or
    #     `:ssl_ca_directory` the the system default will be used if available.
    #
    #   @option options [String] :ssl_ca_directory
    #     Full path of the directory that contains the unbundled SSL certificate
    #     authority files for verifying peer certificates.  If you do
    #     not pass `:ssl_ca_bundle` or `:ssl_ca_directory` the the system
    #     default will be used if available.
    #
    #   @option options [String] :ssl_ca_store
    #     Sets the X509::Store to verify peer certificate.
    #
    #   @option options [OpenSSL::X509::Certificate] :ssl_cert
    #     Sets a client certificate when creating http connections.
    #
    #   @option options [OpenSSL::PKey] :ssl_key
    #     Sets a client key when creating http connections.
    #
    #   @option options [Float] :ssl_timeout
    #     Sets the SSL timeout in seconds
    #
    #   @option options [Boolean] :ssl_verify_peer (true)
    #     When `true`, SSL peer certificates are verified when establishing a connection.
    #
    def initialize(*args)
      super
    end

    # @!group API Operations

    # Instantiates one or more of the campaign template's blueprints as
    # assets of this campaign.
    #
    # The only asset-create operation: DG-038 deleted the singular
    # CreateCampaignAsset, and AWS Batch Operations makes exposing a
    # singular alongside a batch optional ("which MAY actually be exposed in
    # addition"). It also replaced kit instantiation -- CreateCampaign
    # creates zero assets, so this is the only path by which an asset comes
    # into existence.
    #
    # Errors here are whole-request only, and nothing is written when one is
    # thrown. Per-entry failures ride in the response's `Errors` list with
    # a 200. ServiceQuotaExceededException is deliberately absent: a
    # campaign holds at most one asset per blueprint (I-15), so the ceiling
    # is the size of the bound kit and a request of unique valid entries
    # cannot exceed it.
    #
    # @option params [required, String] :catalog
    #   The catalog (AWS or Sandbox).
    #
    # @option params [required, String] :campaign_identifier
    #   The campaign identifier.
    #
    # @option params [required, Array<Types::BatchCreateCampaignAssetEntry>] :entries
    #   The blueprints to instantiate, one entry each.
    #
    # @return [Types::BatchCreateCampaignAssetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchCreateCampaignAssetResponse#errors #errors} => Array&lt;Types::BatchCreateCampaignAssetError&gt;
    #   * {Types::BatchCreateCampaignAssetResponse#successful #successful} => Array&lt;Types::BatchCreateCampaignAssetResult&gt;
    #
    #
    # @example Example: Instantiate two of the kit's blueprints
    #
    #   resp = client.batch_create_campaign_asset({
    #     campaign_identifier: "camp-5Hq2m8x4k1p9w", 
    #     catalog: "AWS", 
    #     entries: [
    #       {
    #         source_asset_template_identifier: "ta000000email", 
    #       }, 
    #       {
    #         source_asset_template_identifier: "ta0000000lp01", 
    #       }, 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     errors: [
    #     ], 
    #     successful: [
    #       {
    #         id: "ast-4b81e0c9f2a7b", 
    #         source_asset_template_id: "ta000000email", 
    #       }, 
    #       {
    #         id: "ast-9f3c1a2b7d40e", 
    #         source_asset_template_id: "ta0000000lp01", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Example: A partial batch: one entry names a blueprint the campaign's template does not carry
    #
    #   resp = client.batch_create_campaign_asset({
    #     campaign_identifier: "camp-5Hq2m8x4k1p9w", 
    #     catalog: "AWS", 
    #     entries: [
    #       {
    #         source_asset_template_identifier: "ta000000email", 
    #       }, 
    #       {
    #         source_asset_template_identifier: "ta00000absent", 
    #       }, 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     errors: [
    #       {
    #         code: "ResourceNotFoundException", 
    #         message: "No asset template ta00000absent on this campaign's template.", 
    #         source_asset_template_id: "ta00000absent", 
    #       }, 
    #     ], 
    #     successful: [
    #       {
    #         id: "ast-4b81e0c9f2a7b", 
    #         source_asset_template_id: "ta000000email", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_create_campaign_asset({
    #     catalog: "AWS", # required, accepts AWS, Sandbox
    #     campaign_identifier: "CampaignIdentifier", # required
    #     entries: [ # required
    #       {
    #         source_asset_template_identifier: "Identifier", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.errors #=> Array
    #   resp.errors[0].source_asset_template_id #=> String
    #   resp.errors[0].code #=> String
    #   resp.errors[0].message #=> String
    #   resp.successful #=> Array
    #   resp.successful[0].source_asset_template_id #=> String
    #   resp.successful[0].id #=> String
    #   resp.successful[0].layout.selected #=> String
    #   resp.successful[0].layout.options #=> Array
    #   resp.successful[0].layout.options[0].value #=> String
    #   resp.successful[0].layout.options[0].label #=> String
    #   resp.successful[0].layout.options[0].field_ids #=> Array
    #   resp.successful[0].layout.options[0].field_ids[0] #=> String
    #   resp.successful[0].layout.options[0].layout_previews #=> Array
    #   resp.successful[0].layout.options[0].layout_previews[0].format #=> String, one of "HTML", "PDF", "IMAGE"
    #   resp.successful[0].layout.options[0].layout_previews[0].url #=> String
    #   resp.successful[0].layout.options[0].layout_previews[0].page_type #=> String, one of "FORM", "CONFIRMATION"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/BatchCreateCampaignAsset AWS API Documentation
    #
    # @overload batch_create_campaign_asset(params = {})
    # @param [Hash] params ({})
    def batch_create_campaign_asset(params = {}, options = {})
      req = build_request(:batch_create_campaign_asset, params)
      req.send_request(options)
    end

    # Creates a new marketing campaign.
    #
    # Returns the identity of the new campaign, not the campaign. Growing a
    # response is backward compatible and shrinking one is not, and the
    # caller's next step is a `GetCampaign` anyway — a write that supplies
    # an audience cannot report its scan verdict, because that is decided
    # after it commits.
    #
    # @option params [required, String] :catalog
    #   The catalog (AWS or Sandbox).
    #
    # @option params [required, String] :name
    #   The display name.
    #
    # @option params [required, String] :campaign_template_id
    #   The campaign template this campaign draws its assets from.
    #
    #   Binds the campaign to a single source template: every asset must come
    #   from this template's asset templates, and one from another template
    #   is refused at `BatchCreateCampaignAsset`. Immutable once set. Every
    #   campaign has one: a campaign's language and its assets' blueprints
    #   both come from its template. Templates are AWS-authored and read-only
    #   — they are discovered through
    #   `SearchCampaignTemplates` and `GetCampaignTemplate`, and there is
    #   no create, update or delete operation for one. The template's id
    #   only: a campaign template has no ARN (DG-084). The
    #   member keeps the `<Resource>Id` name, which is the convention for
    #   referencing another resource from a body. </Resource>
    #
    # @option params [String] :sender_email
    #   The address every email of this campaign is sent from.
    #
    #   Printable ASCII only, with no spaces or line breaks, or field code
    #   `PATTERN\_MISMATCH`. Then three rules, all checked when the sender
    #   is set. Its domain must exactly match, ignoring case, the domain of
    #   the partner's alliance lead email in AWS Partner Central (a subdomain
    #   does not), or field code `SENDER\_DOMAIN\_NOT\_ALLIANCE\_LEAD`.
    #   Then, for a sender at example.com, DNS must hold the CNAME
    #   `dkim.\_domainkey.example.com` → `dkim.\_domainkey.md02.com`
    #   (field code `SENDER\_DOMAIN\_DKIM\_MISSING`) and a DMARC record, one
    #   TXT `\_dmarc.example.com` starting `v=DMARC1` with a `p` of
    #   `none`, `quarantine` or `reject` (field code
    #   `SENDER\_DOMAIN\_DMARC\_MISSING`). Both DNS codes are reported
    #   together when both records are missing. A partner who can't satisfy
    #   them can't set a sender, so can't run
    #   email campaigns. A shared mail provider's domain, such as gmail.com,
    #   can't carry the records. Optional here: a campaign with no sender can
    #   be created and edited, but its email assets cannot be activated until
    #   one is set.
    #
    # @option params [String] :privacy_policy_url
    #   The URL of the partner's privacy policy, linked from every email and
    #   landing page footer. Optional here: a campaign whose emails or landing
    #   pages show it cannot activate them until one is set.
    #
    # @option params [String] :partner_address
    #   The partner's physical postal address, shown in every email footer
    #   and as a landing page's contact line. Optional here: an email that
    #   shows it cannot activate until one is set. A landing page that shows
    #   it publishes it empty when it is unset, and a document's footer then
    #   prints the partner's name alone.
    #
    # @option params [Types::FileRef] :partner_badge
    #   The partner's badge — a tier or designation badge from AWS Partner
    #   Badge Manager — shown in every badge slot of the campaign's emails,
    #   landing pages and documents. Optional: until one is set, every badge
    #   slot shows the Standalone AWS Partner badge.
    #
    #   A PNG or JPEG of at most 2 MB, staged like an asset image and checked
    #   the same way: it must have passed the staging scan
    #   (`SCAN\_REJECTED`, or `SCAN\_IN\_PROGRESS` while it is pending),
    #   and its bytes must be the format its name says
    #   (`IMAGE\_FORMAT\_NOT\_SUPPORTED`). Any shape is accepted: a badge is
    #   drawn whole, never cropped. Content moderation judges it when an asset
    #   that shows it is activated.
    #
    # @option params [Types::FileRef] :email_target
    #   The campaign's send audience — a CSV of recipient email addresses.
    #
    #   The campaign's *target*: who the campaign is sent to, as distinct
    #   from a `CampaignAsset`, which is the content that is sent. It sits
    #   on the campaign and not on the activation call because a partner
    #   assembles it in the same wizard flow that sets the name and the dates
    #   — and because attaching it here means it is validated, staged and
    #   resolved to a count before anything is activated, rather than at the
    #   last click. Required format: a header row naming the email column
    #   `Email`,
    #   `E-mail`, `Email Address` or `E-mail Address` — compared without
    #   case, spaces or punctuation. Other columns are permitted and ignored,
    #   and with two email columns the first is used. A file without such a
    #   header is refused with field code `EMAIL\_COLUMN\_MISSING`: the
    #   address column is never guessed. The rows reach the delivery
    #   platform's importer as the partner wrote them — a partner's audience
    #   is never rewritten. At most 5 MB, checked against the object's size
    #   before anything is
    #   copied, and at most 10,000 distinct addresses, refused with
    #   `RECIPIENT\_LIST\_TOO\_LARGE`. A file with no valid address at all
    #   is refused with `RECIPIENT\_LIST\_EMPTY`; otherwise rows without a
    #   usable address are not a refusal: they are skipped and counted, and
    #   `GetCampaign` reports the counts. Optional here, because a campaign
    #   is a container and holds no state to be incomplete in — but an email
    #   asset cannot be activated without it, so the requirement moved to the
    #   point of activation. Editable at any time, and an edit reaches the
    #   delivery platform only
    #   when an asset is activated after it. Each email activation loads the
    #   audience into a contact list of its own, so an address taken off the
    #   file is not sent to by the next activation. The bytes are write-only.
    #   No response returns a URL or an `S3Uri`
    #   for this file; `GetCampaign` returns the scan verdict, when the list
    #   was attached and how its rows resolved, and nothing more.
    #
    # @option params [Array<String>] :email_target_engagement_group_ids
    #   Engagement groups whose contacts the campaign's emails will also go
    #   to: the `Id`s `ListEngagementGroups` returns (AWS Partner Central
    #   Selling). 1–10, each named once.
    #
    #   Each group is named once: a repeated id is refused with field code
    #   `INVALID\_VALUE`. Not checked against your groups when saved.
    #   StartCampaignAssetActivationTask resolves them to recipients. On a
    #   stage that can't resolve groups yet, Start refuses an email while
    #   groups are set (`ENGAGEMENT\_GROUPS\_UNAVAILABLE`), rather than send
    #   to `EmailTarget` alone.
    #
    # @option params [Types::TargetAudience] :target_audience
    #   Advisory targeting metadata. Refined later, and not validated here.
    #
    # @option params [Types::MonetaryValue] :estimated_budget
    #   What the partner expects the campaign to cost.
    #
    # @option params [Types::MonetaryValue] :total_budget
    #   The campaign's total budget.
    #
    # @option params [String] :start_on
    #   The first day of the campaign's run window. Not after `EndOn`
    #   (`ValidationException`, `INVALID_VALUE`).
    #
    # @option params [String] :end_on
    #   The last day of the campaign's run window, inclusive and in UTC. Not
    #   in the past: the campaign completes at the UTC midnight after it (see
    #   `CampaignState`). A scheduled send must fall on or before it.
    #
    #   Optional here, but required before any asset activates: until it is
    #   set, GetCampaign's `ActivationIssues` reports `END_ON_MISSING` and
    #   StartCampaignAssetActivationTask refuses (`CAMPAIGN_INCOMPLETE`). Set
    #   it with UpdateCampaign.
    #
    # @option params [String] :client_token
    #   Idempotency token. Same token within 24h returns existing resource.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Array<Types::Tag>] :tags
    #   Tags to apply at creation.
    #
    #   Tag-on-create rather than create-then-tag is a Tagris requirement, not
    #   a convenience: it is what lets a tag-based access control policy
    #   govern the creation itself. A campaign created untagged and tagged a
    #   moment later is briefly outside any such policy.
    #
    #   A key beginning `aws:` (any case) is reserved for AWS-applied system
    #   tags and is refused with `ValidationException`, as is a key repeated
    #   in the list; nothing is created. The tags are recorded before the
    #   campaign is written, so a create that cannot record them fails and
    #   creates nothing. A retry with the same `ClientToken` returns the
    #   campaign the first attempt created and does not re-apply tags — use
    #   `TagResource` to change them afterwards. `ListTagsForResource`
    #   returns them.
    #
    # @return [Types::CreateCampaignResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateCampaignResponse#id #id} => String
    #   * {Types::CreateCampaignResponse#arn #arn} => String
    #
    #
    # @example Example: Create a campaign
    #
    #   resp = client.create_campaign({
    #     campaign_template_id: "tmpl-a1b2c3d4e5f6g", 
    #     catalog: "AWS", 
    #     end_on: "2026-12-31", 
    #     name: "Q4 GenAI Campaign", 
    #     start_on: "2026-11-01", 
    #     total_budget: {
    #       amount: "25000.00", 
    #       currency_code: "USD", 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     arn: "arn:aws:partnercentral:us-east-1:123456789012:catalog/AWS/campaign/camp-5Hq2m8x4k1p9w", 
    #     id: "camp-5Hq2m8x4k1p9w", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_campaign({
    #     catalog: "AWS", # required, accepts AWS, Sandbox
    #     name: "CampaignName", # required
    #     campaign_template_id: "CampaignTemplateId", # required
    #     sender_email: "SenderEmail",
    #     privacy_policy_url: "PrivacyPolicyUrl",
    #     partner_address: "PartnerAddress",
    #     partner_badge: {
    #       s3_uri: "S3Uri", # required
    #       version_id: "S3VersionId", # required
    #     },
    #     email_target: {
    #       s3_uri: "S3Uri", # required
    #       version_id: "S3VersionId", # required
    #     },
    #     email_target_engagement_group_ids: ["EngagementGroupId"],
    #     target_audience: {
    #       industries: ["FINANCIAL_SERVICES"], # accepts FINANCIAL_SERVICES, HEALTHCARE, MANUFACTURING, RETAIL, MEDIA_ENTERTAINMENT, ENERGY, EDUCATION, GOVERNMENT, TELECOMMUNICATIONS, AUTOMOTIVE, INSURANCE, OTHER
    #       company_sizes: ["STARTUP"], # accepts STARTUP, SMALL_BUSINESS, MID_MARKET, ENTERPRISE, GLOBAL_ENTERPRISE
    #       countries: ["CountryCode"],
    #     },
    #     estimated_budget: {
    #       amount: "Amount", # required
    #       currency_code: "CurrencyCode", # required
    #     },
    #     total_budget: {
    #       amount: "Amount", # required
    #       currency_code: "CurrencyCode", # required
    #     },
    #     start_on: "UtcDate",
    #     end_on: "UtcDate",
    #     client_token: "ClientToken",
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
    #   resp.id #=> String
    #   resp.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/CreateCampaign AWS API Documentation
    #
    # @overload create_campaign(params = {})
    # @param [Hash] params ({})
    def create_campaign(params = {}, options = {})
      req = build_request(:create_campaign, params)
      req.send_request(options)
    end

    # Creates a single-use URL the partner visits to authorize publishing on
    # a platform. Serves a first connect, connecting a further account, and
    # re-authorizing an expired one: consenting with an account that is
    # already connected re-authorizes that connection and keeps its id; any
    # other account adds a connection. Poll ListSocialConnections for the
    # outcome. Deliberately not idempotent and takes no client token: every
    # call must mint a fresh single-use URL, so replaying a cached response
    # would hand back a dead one.
    #
    # @option params [required, String] :catalog
    #   Catalog the connection belongs to.
    #
    # @option params [required, String] :platform
    #   Social platform to authorize.
    #
    # @return [Types::CreateSocialConnectionAuthorizationUrlResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSocialConnectionAuthorizationUrlResponse#platform #platform} => String
    #   * {Types::CreateSocialConnectionAuthorizationUrlResponse#authorization_url #authorization_url} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_social_connection_authorization_url({
    #     catalog: "AWS", # required, accepts AWS, Sandbox
    #     platform: "FACEBOOK", # required, accepts FACEBOOK, LINKEDIN, X
    #   })
    #
    # @example Response structure
    #
    #   resp.platform #=> String, one of "FACEBOOK", "LINKEDIN", "X"
    #   resp.authorization_url #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/CreateSocialConnectionAuthorizationUrl AWS API Documentation
    #
    # @overload create_social_connection_authorization_url(params = {})
    # @param [Hash] params ({})
    def create_social_connection_authorization_url(params = {}, options = {})
      req = build_request(:create_social_connection_authorization_url, params)
      req.send_request(options)
    end

    # Stops a live campaign asset: an email's scheduled send is withdrawn,
    # a social post is removed before it publishes. On a completed campaign,
    # it also removes a published document, banner or landing page.
    #
    # Synchronous, and safe to repeat. Does not delete the asset record, so
    # a stopped email or social post can be started again.
    #
    # Not every asset can be stopped, and the reasons differ in kind. An
    # email that has begun sending **cannot** be recalled: the send is gone.
    # A document, a banner or a landing page is **refused** with
    # `ASSET_NOT_DEACTIVATABLE` until the campaign has completed (the UTC
    # date is after its `EndOn`). Until then the partner fixes one in place
    # by updating it and activating it again, which keeps its URL, so every
    # email that already linked to it keeps working.
    #
    # Once the campaign has completed, the removal is permanent, because a
    # completed campaign can't activate anything again:
    #
    # * A document's published PDF is deleted. Its URL stops serving within
    #   about a minute (the CDN revalidates), and `PublicUrl` is no longer
    #   returned. Anything that linked to it, such as a landing page's
    #   download button or a sent email, reaches an error page. The export
    #   still contains the document.
    # * A banner's or landing page's published object is taken down at the
    #   delivery platform, and the images the partner put on it are deleted.
    #   A landing page stops capturing leads, and its `PublicUrl` is no
    #   longer returned. A partner site that embedded a banner shows nothing
    #   there. The platform's own CDN can keep serving a copy a visitor
    #   already cached, which collects nothing.
    #
    # A landing page and a document it links to can be removed in either
    # order.
    #
    # @option params [required, String] :catalog
    #   The catalog (AWS or Sandbox).
    #
    # @option params [required, String] :campaign_identifier
    #   The campaign identifier.
    #
    # @option params [required, String] :campaign_asset_identifier
    #   The asset identifier.
    #
    # @return [Types::DeactivateCampaignAssetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeactivateCampaignAssetResponse#id #id} => String
    #   * {Types::DeactivateCampaignAssetResponse#state #state} => String
    #   * {Types::DeactivateCampaignAssetResponse#last_activation_status #last_activation_status} => String
    #   * {Types::DeactivateCampaignAssetResponse#state_reason #state_reason} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deactivate_campaign_asset({
    #     catalog: "AWS", # required, accepts AWS, Sandbox
    #     campaign_identifier: "CampaignIdentifier", # required
    #     campaign_asset_identifier: "CampaignAssetId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.state #=> String, one of "INACTIVE", "ACTIVE"
    #   resp.last_activation_status #=> String, one of "IN_PROGRESS", "SUCCEEDED", "FAILED"
    #   resp.state_reason #=> String, one of "ASSET_NOT_FOUND", "ASSET_NOT_STARTABLE", "ASSET_START_IN_PROGRESS", "ASSET_ALREADY_ACTIVE", "SEND_WINDOW_TOO_SOON", "REQUIRED_FIELD_MISSING", "RECIPIENT_LIST_MISSING", "ENGAGEMENT_GROUPS_UNAVAILABLE", "SENDER_EMAIL_MISSING", "END_ON_MISSING", "ASSET_CONTENT_MISSING", "ASSET_NOT_ACTIVATABLE", "TEMPLATE_CHANGED", "PARTNER_IMAGE_REJECTED", "PREREQUISITE_ASSET_NOT_ACTIVE", "PARTNER_NOT_PROVISIONED", "RECIPIENT_LIST_EMPTY", "RECIPIENT_LIMIT_EXCEEDED", "CONTACT_OPT_IN_REQUIRED", "MAILING_CREDITS_EXHAUSTED", "SENDER_EMAIL_INVALID", "SOCIAL_CONNECTION_MISSING", "SOCIAL_CONNECTION_EXPIRED", "SOCIAL_CONNECTION_PAGE_REQUIRED", "DELIVERY_FAILED", "INTERNAL_ERROR", "MAILING_CREDITS_INSUFFICIENT", "PARTNER_PROFILE_FIELD_MISSING", "PARTNER_PROFILE_FIELD_DOES_NOT_FIT", "SOCIAL_CONNECTION_NOT_CHOSEN", "PRIVACY_POLICY_URL_MISSING", "PARTNER_ADDRESS_MISSING", "SEND_MODE_MISSING", "CONTENT_REJECTED", "URL_NOT_ALLOWED", "SENDER_NOT_APPROVED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/DeactivateCampaignAsset AWS API Documentation
    #
    # @overload deactivate_campaign_asset(params = {})
    # @param [Hash] params ({})
    def deactivate_campaign_asset(params = {}, options = {})
      req = build_request(:deactivate_campaign_asset, params)
      req.send_request(options)
    end

    # Permanently deletes a campaign, its assets and their stored files.
    #
    # A hard delete with no undo: the campaign leaves ListCampaigns and
    # every read of it returns ResourceNotFoundException. Its tags are
    # removed with it.
    #
    # Refused with ConflictException while the campaign has a live asset
    # (`CAMPAIGN_HAS_ACTIVE_ASSETS`), because deleting the record would
    # orphan what the delivery platform still serves or sends: deactivate
    # those assets first. Also refused while an activation task is running
    # (`CAMPAIGN_ACTIVATION_IN_PROGRESS`). A completed campaign can be
    # deleted.
    #
    # Idempotent in effect: deleting a campaign that is already gone returns
    # ResourceNotFoundException, and nothing is left behind by a retry.
    #
    # @option params [required, String] :catalog
    #   The catalog (AWS or Sandbox).
    #
    # @option params [required, String] :campaign_identifier
    #   The campaign to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Delete a campaign
    #
    #   resp = client.delete_campaign({
    #     campaign_identifier: "camp-5Hq2m8x4k1p9w", 
    #     catalog: "AWS", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_campaign({
    #     catalog: "AWS", # required, accepts AWS, Sandbox
    #     campaign_identifier: "CampaignIdentifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/DeleteCampaign AWS API Documentation
    #
    # @overload delete_campaign(params = {})
    # @param [Hash] params ({})
    def delete_campaign(params = {}, options = {})
      req = build_request(:delete_campaign, params)
      req.send_request(options)
    end

    # Permanently deletes a campaign asset.
    #
    # @option params [required, String] :catalog
    #   The catalog (AWS or Sandbox).
    #
    # @option params [required, String] :campaign_identifier
    #   The campaign identifier.
    #
    # @option params [required, String] :campaign_asset_identifier
    #   The asset identifier.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Delete an asset
    #
    #   resp = client.delete_campaign_asset({
    #     campaign_asset_identifier: "ast-4b81e0c9f2a7b", 
    #     campaign_identifier: "camp-5Hq2m8x4k1p9w", 
    #     catalog: "AWS", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_campaign_asset({
    #     catalog: "AWS", # required, accepts AWS, Sandbox
    #     campaign_identifier: "CampaignIdentifier", # required
    #     campaign_asset_identifier: "CampaignAssetId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/DeleteCampaignAsset AWS API Documentation
    #
    # @overload delete_campaign_asset(params = {})
    # @param [Hash] params ({})
    def delete_campaign_asset(params = {}, options = {})
      req = build_request(:delete_campaign_asset, params)
      req.send_request(options)
    end

    # Revokes and deletes one social connection; other connections on the
    # same platform are untouched. Idempotent: deleting an unknown or
    # already-deleted connection succeeds rather than returning a not-found
    # error.
    #
    # @option params [required, String] :catalog
    #   Catalog the connection belongs to.
    #
    # @option params [required, String] :identifier
    #   Identifier or ARN of the social connection to delete.
    #
    # @option params [String] :client_token
    #   Idempotency token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_social_connection({
    #     catalog: "AWS", # required, accepts AWS, Sandbox
    #     identifier: "SocialConnectionIdentifier", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/DeleteSocialConnection AWS API Documentation
    #
    # @overload delete_social_connection(params = {})
    # @param [Hash] params ({})
    def delete_social_connection(params = {}, options = {})
      req = build_request(:delete_social_connection, params)
      req.send_request(options)
    end

    # Retrieves a campaign by its identifier.
    #
    # @option params [required, String] :catalog
    #   The catalog (AWS or Sandbox).
    #
    # @option params [required, String] :campaign_identifier
    #   The campaign identifier.
    #
    # @return [Types::GetCampaignResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCampaignResponse#campaign #campaign} => Types::Campaign
    #
    #
    # @example Example: Get a campaign
    #
    #   resp = client.get_campaign({
    #     campaign_identifier: "camp-5Hq2m8x4k1p9w", 
    #     catalog: "AWS", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     campaign: {
    #       activation_issues: [
    #         {
    #           affected_asset_ids: [
    #             "ast-4b81e0c9f2a7b", 
    #           ], 
    #           campaign_setting: "EMAIL_TARGET", 
    #           code: "RECIPIENT_LIST_MISSING", 
    #           message: "The campaign has no recipient list.", 
    #         }, 
    #       ], 
    #       arn: "arn:aws:partnercentral:us-east-1:123456789012:catalog/AWS/campaign/camp-5Hq2m8x4k1p9w", 
    #       campaign_id: "camp-5Hq2m8x4k1p9w", 
    #       name: "Q4 GenAI Campaign", 
    #       partner_profile: {
    #         display_name: "Example Partner", 
    #         logo_url: "https://d111111abcdef8.cloudfront.net/logos/0f1e2d3c4b5a69788796a5b4c3d2e1f0.png", 
    #         refreshed_at: Time.parse("2026-10-05T12:00:00Z"), 
    #         website_url: "https://example.com", 
    #       }, 
    #       state: "DRAFT", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_campaign({
    #     catalog: "AWS", # required, accepts AWS, Sandbox
    #     campaign_identifier: "CampaignIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.campaign.campaign_id #=> String
    #   resp.campaign.arn #=> String
    #   resp.campaign.name #=> String
    #   resp.campaign.state #=> String, one of "DRAFT", "ACTIVE", "COMPLETED"
    #   resp.campaign.campaign_template_id #=> String
    #   resp.campaign.language #=> String, one of "en", "es", "es-419", "fr", "de", "it", "pt-BR", "id", "tr", "ja", "ko", "zh-Hans", "zh-Hant", "ar"
    #   resp.campaign.partner_profile.display_name #=> String
    #   resp.campaign.partner_profile.website_url #=> String
    #   resp.campaign.partner_profile.logo_url #=> String
    #   resp.campaign.partner_profile.refreshed_at #=> Time
    #   resp.campaign.sender_email #=> String
    #   resp.campaign.privacy_policy_url #=> String
    #   resp.campaign.partner_address #=> String
    #   resp.campaign.partner_badge.url #=> String
    #   resp.campaign.partner_badge.attached_at #=> Time
    #   resp.campaign.email_target.scan_status #=> String, one of "PENDING", "CLEAN", "REJECTED"
    #   resp.campaign.email_target.attached_at #=> Time
    #   resp.campaign.email_target.valid_count #=> Integer
    #   resp.campaign.email_target.rejected_count #=> Integer
    #   resp.campaign.email_target.duplicate_count #=> Integer
    #   resp.campaign.email_target.file_name #=> String
    #   resp.campaign.email_target_engagement_group_ids #=> Array
    #   resp.campaign.email_target_engagement_group_ids[0] #=> String
    #   resp.campaign.social_connections #=> Hash
    #   resp.campaign.social_connections["Platform"] #=> Array
    #   resp.campaign.social_connections["Platform"][0] #=> String
    #   resp.campaign.estimated_budget.amount #=> String
    #   resp.campaign.estimated_budget.currency_code #=> String
    #   resp.campaign.total_budget.amount #=> String
    #   resp.campaign.total_budget.currency_code #=> String
    #   resp.campaign.target_audience.industries #=> Array
    #   resp.campaign.target_audience.industries[0] #=> String, one of "FINANCIAL_SERVICES", "HEALTHCARE", "MANUFACTURING", "RETAIL", "MEDIA_ENTERTAINMENT", "ENERGY", "EDUCATION", "GOVERNMENT", "TELECOMMUNICATIONS", "AUTOMOTIVE", "INSURANCE", "OTHER"
    #   resp.campaign.target_audience.company_sizes #=> Array
    #   resp.campaign.target_audience.company_sizes[0] #=> String, one of "STARTUP", "SMALL_BUSINESS", "MID_MARKET", "ENTERPRISE", "GLOBAL_ENTERPRISE"
    #   resp.campaign.target_audience.countries #=> Array
    #   resp.campaign.target_audience.countries[0] #=> String
    #   resp.campaign.start_on #=> String
    #   resp.campaign.end_on #=> String
    #   resp.campaign.created_at #=> Time
    #   resp.campaign.updated_at #=> Time
    #   resp.campaign.activation_issues #=> Array
    #   resp.campaign.activation_issues[0].code #=> String, one of "ASSET_NOT_FOUND", "ASSET_NOT_STARTABLE", "ASSET_START_IN_PROGRESS", "ASSET_ALREADY_ACTIVE", "SEND_WINDOW_TOO_SOON", "REQUIRED_FIELD_MISSING", "RECIPIENT_LIST_MISSING", "ENGAGEMENT_GROUPS_UNAVAILABLE", "SENDER_EMAIL_MISSING", "END_ON_MISSING", "ASSET_CONTENT_MISSING", "ASSET_NOT_ACTIVATABLE", "TEMPLATE_CHANGED", "PARTNER_IMAGE_REJECTED", "PREREQUISITE_ASSET_NOT_ACTIVE", "PARTNER_NOT_PROVISIONED", "RECIPIENT_LIST_EMPTY", "RECIPIENT_LIMIT_EXCEEDED", "CONTACT_OPT_IN_REQUIRED", "MAILING_CREDITS_EXHAUSTED", "SENDER_EMAIL_INVALID", "SOCIAL_CONNECTION_MISSING", "SOCIAL_CONNECTION_EXPIRED", "SOCIAL_CONNECTION_PAGE_REQUIRED", "DELIVERY_FAILED", "INTERNAL_ERROR", "MAILING_CREDITS_INSUFFICIENT", "PARTNER_PROFILE_FIELD_MISSING", "PARTNER_PROFILE_FIELD_DOES_NOT_FIT", "SOCIAL_CONNECTION_NOT_CHOSEN", "PRIVACY_POLICY_URL_MISSING", "PARTNER_ADDRESS_MISSING", "SEND_MODE_MISSING", "CONTENT_REJECTED", "URL_NOT_ALLOWED", "SENDER_NOT_APPROVED"
    #   resp.campaign.activation_issues[0].field_id #=> String
    #   resp.campaign.activation_issues[0].campaign_setting #=> String, one of "SENDER_EMAIL", "END_ON", "EMAIL_TARGET", "PRIVACY_POLICY_URL", "PARTNER_ADDRESS", "PARTNER_BADGE"
    #   resp.campaign.activation_issues[0].partner_profile_field #=> String, one of "DISPLAY_NAME", "WEBSITE_URL", "LOGO", "WEBSITE_DOMAIN", "COPYRIGHT_LINE", "PARTNER_DETAILS", "COPYRIGHT_AND_DETAILS", "COPYRIGHT_YEAR_LINE"
    #   resp.campaign.activation_issues[0].affected_asset_ids #=> Array
    #   resp.campaign.activation_issues[0].affected_asset_ids[0] #=> String
    #   resp.campaign.activation_issues[0].message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/GetCampaign AWS API Documentation
    #
    # @overload get_campaign(params = {})
    # @param [Hash] params ({})
    def get_campaign(params = {}, options = {})
      req = build_request(:get_campaign, params)
      req.send_request(options)
    end

    # Retrieves an asset by its identifier.
    #
    # @option params [required, String] :catalog
    #   The catalog (AWS or Sandbox).
    #
    # @option params [required, String] :campaign_identifier
    #   The campaign identifier.
    #
    # @option params [required, String] :campaign_asset_identifier
    #   The asset identifier.
    #
    # @return [Types::GetCampaignAssetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCampaignAssetResponse#asset #asset} => Types::CampaignAsset
    #
    #
    # @example Example: Get an asset
    #
    #   resp = client.get_campaign_asset({
    #     campaign_asset_identifier: "ast-4b81e0c9f2a7b", 
    #     campaign_identifier: "camp-5Hq2m8x4k1p9w", 
    #     catalog: "AWS", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     asset: {
    #       activation_issues: [
    #       ], 
    #       campaign_id: "camp-5Hq2m8x4k1p9w", 
    #       category: "EMAIL", 
    #       delivery_status: "PENDING", 
    #       file_format: "HTML", 
    #       id: "ast-4b81e0c9f2a7b", 
    #       last_activation_status: "SUCCEEDED", 
    #       name: "Intro email", 
    #       state: "ACTIVE", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_campaign_asset({
    #     catalog: "AWS", # required, accepts AWS, Sandbox
    #     campaign_identifier: "CampaignIdentifier", # required
    #     campaign_asset_identifier: "CampaignAssetId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.asset.id #=> String
    #   resp.asset.campaign_id #=> String
    #   resp.asset.category #=> String, one of "EMAIL", "LANDING_PAGE", "SOCIAL_POST", "BANNER_AD", "DOCUMENT"
    #   resp.asset.name #=> String
    #   resp.asset.link_label #=> String
    #   resp.asset.state #=> String, one of "INACTIVE", "ACTIVE"
    #   resp.asset.last_activation_status #=> String, one of "IN_PROGRESS", "SUCCEEDED", "FAILED"
    #   resp.asset.delivery_status #=> String, one of "PENDING", "DELIVERED", "FAILED"
    #   resp.asset.delivery_status_reason #=> String, one of "ASSET_NOT_FOUND", "ASSET_NOT_STARTABLE", "ASSET_START_IN_PROGRESS", "ASSET_ALREADY_ACTIVE", "SEND_WINDOW_TOO_SOON", "REQUIRED_FIELD_MISSING", "RECIPIENT_LIST_MISSING", "ENGAGEMENT_GROUPS_UNAVAILABLE", "SENDER_EMAIL_MISSING", "END_ON_MISSING", "ASSET_CONTENT_MISSING", "ASSET_NOT_ACTIVATABLE", "TEMPLATE_CHANGED", "PARTNER_IMAGE_REJECTED", "PREREQUISITE_ASSET_NOT_ACTIVE", "PARTNER_NOT_PROVISIONED", "RECIPIENT_LIST_EMPTY", "RECIPIENT_LIMIT_EXCEEDED", "CONTACT_OPT_IN_REQUIRED", "MAILING_CREDITS_EXHAUSTED", "SENDER_EMAIL_INVALID", "SOCIAL_CONNECTION_MISSING", "SOCIAL_CONNECTION_EXPIRED", "SOCIAL_CONNECTION_PAGE_REQUIRED", "DELIVERY_FAILED", "INTERNAL_ERROR", "MAILING_CREDITS_INSUFFICIENT", "PARTNER_PROFILE_FIELD_MISSING", "PARTNER_PROFILE_FIELD_DOES_NOT_FIT", "SOCIAL_CONNECTION_NOT_CHOSEN", "PRIVACY_POLICY_URL_MISSING", "PARTNER_ADDRESS_MISSING", "SEND_MODE_MISSING", "CONTENT_REJECTED", "URL_NOT_ALLOWED", "SENDER_NOT_APPROVED"
    #   resp.asset.source_asset_template_id #=> String
    #   resp.asset.social_platform #=> String, one of "FACEBOOK", "LINKEDIN", "X"
    #   resp.asset.file_format #=> String, one of "PDF", "DOCX", "PPTX", "HTML", "IMAGE"
    #   resp.asset.send_mode #=> String, one of "ON_ACTIVATION", "SCHEDULED"
    #   resp.asset.scheduled_send_at #=> Time
    #   resp.asset.field_values #=> Array
    #   resp.asset.field_values[0].field.field_id #=> String
    #   resp.asset.field_values[0].field.label #=> String
    #   resp.asset.field_values[0].field.description #=> String
    #   resp.asset.field_values[0].field.section #=> String, one of "HEADER", "BODY", "FOOTER"
    #   resp.asset.field_values[0].field.page #=> Integer
    #   resp.asset.field_values[0].field.required #=> Boolean
    #   resp.asset.field_values[0].field.type.text.min_length #=> Integer
    #   resp.asset.field_values[0].field.type.text.max_length #=> Integer
    #   resp.asset.field_values[0].field.type.text.pattern #=> String
    #   resp.asset.field_values[0].field.type.text.placeholder #=> String
    #   resp.asset.field_values[0].field.type.rich_text.max_length #=> Integer
    #   resp.asset.field_values[0].field.type.rich_text.allowed_tags #=> Array
    #   resp.asset.field_values[0].field.type.rich_text.allowed_tags[0] #=> String
    #   resp.asset.field_values[0].field.type.rich_text.placeholder #=> String
    #   resp.asset.field_values[0].field.type.image.max_size_bytes #=> Integer
    #   resp.asset.field_values[0].field.type.image.allowed_formats #=> Array
    #   resp.asset.field_values[0].field.type.image.allowed_formats[0] #=> String, one of "PNG", "JPEG"
    #   resp.asset.field_values[0].field.type.image.default_value.format #=> String, one of "HTML", "PDF", "IMAGE"
    #   resp.asset.field_values[0].field.type.image.default_value.url #=> String
    #   resp.asset.field_values[0].field.type.image.default_value.page_type #=> String, one of "FORM", "CONFIRMATION"
    #   resp.asset.field_values[0].field.type.image.recommended_width_pixels #=> Integer
    #   resp.asset.field_values[0].field.type.image.recommended_height_pixels #=> Integer
    #   resp.asset.field_values[0].field.type.asset_link.category #=> String, one of "EMAIL", "LANDING_PAGE", "SOCIAL_POST", "BANNER_AD", "DOCUMENT"
    #   resp.asset.field_values[0].field.type.asset_link.label_field_id #=> String
    #   resp.asset.field_values[0].field.campaign_setting #=> String, one of "SENDER_EMAIL", "END_ON", "EMAIL_TARGET", "PRIVACY_POLICY_URL", "PARTNER_ADDRESS", "PARTNER_BADGE"
    #   resp.asset.field_values[0].field.partner_profile_field #=> String, one of "DISPLAY_NAME", "WEBSITE_URL", "LOGO", "WEBSITE_DOMAIN", "COPYRIGHT_LINE", "PARTNER_DETAILS", "COPYRIGHT_AND_DETAILS", "COPYRIGHT_YEAR_LINE"
    #   resp.asset.field_values[0].value.text #=> String
    #   resp.asset.field_values[0].value.image_reference #=> String
    #   resp.asset.field_values[0].value.linked_asset_id #=> String
    #   resp.asset.field_values[0].value.campaign_asset_image.campaign_identifier #=> String
    #   resp.asset.field_values[0].value.campaign_asset_image.campaign_asset_identifier #=> String
    #   resp.asset.field_values[0].value.campaign_asset_image.field_id #=> String
    #   resp.asset.layout_previews #=> Array
    #   resp.asset.layout_previews[0].format #=> String, one of "HTML", "PDF", "IMAGE"
    #   resp.asset.layout_previews[0].url #=> String
    #   resp.asset.layout_previews[0].page_type #=> String, one of "FORM", "CONFIRMATION"
    #   resp.asset.layout.selected #=> String
    #   resp.asset.layout.options #=> Array
    #   resp.asset.layout.options[0].value #=> String
    #   resp.asset.layout.options[0].label #=> String
    #   resp.asset.layout.options[0].field_ids #=> Array
    #   resp.asset.layout.options[0].field_ids[0] #=> String
    #   resp.asset.layout.options[0].layout_previews #=> Array
    #   resp.asset.layout.options[0].layout_previews[0].format #=> String, one of "HTML", "PDF", "IMAGE"
    #   resp.asset.layout.options[0].layout_previews[0].url #=> String
    #   resp.asset.layout.options[0].layout_previews[0].page_type #=> String, one of "FORM", "CONFIRMATION"
    #   resp.asset.activation_issues #=> Array
    #   resp.asset.activation_issues[0].code #=> String, one of "ASSET_NOT_FOUND", "ASSET_NOT_STARTABLE", "ASSET_START_IN_PROGRESS", "ASSET_ALREADY_ACTIVE", "SEND_WINDOW_TOO_SOON", "REQUIRED_FIELD_MISSING", "RECIPIENT_LIST_MISSING", "ENGAGEMENT_GROUPS_UNAVAILABLE", "SENDER_EMAIL_MISSING", "END_ON_MISSING", "ASSET_CONTENT_MISSING", "ASSET_NOT_ACTIVATABLE", "TEMPLATE_CHANGED", "PARTNER_IMAGE_REJECTED", "PREREQUISITE_ASSET_NOT_ACTIVE", "PARTNER_NOT_PROVISIONED", "RECIPIENT_LIST_EMPTY", "RECIPIENT_LIMIT_EXCEEDED", "CONTACT_OPT_IN_REQUIRED", "MAILING_CREDITS_EXHAUSTED", "SENDER_EMAIL_INVALID", "SOCIAL_CONNECTION_MISSING", "SOCIAL_CONNECTION_EXPIRED", "SOCIAL_CONNECTION_PAGE_REQUIRED", "DELIVERY_FAILED", "INTERNAL_ERROR", "MAILING_CREDITS_INSUFFICIENT", "PARTNER_PROFILE_FIELD_MISSING", "PARTNER_PROFILE_FIELD_DOES_NOT_FIT", "SOCIAL_CONNECTION_NOT_CHOSEN", "PRIVACY_POLICY_URL_MISSING", "PARTNER_ADDRESS_MISSING", "SEND_MODE_MISSING", "CONTENT_REJECTED", "URL_NOT_ALLOWED", "SENDER_NOT_APPROVED"
    #   resp.asset.activation_issues[0].field_id #=> String
    #   resp.asset.activation_issues[0].campaign_setting #=> String, one of "SENDER_EMAIL", "END_ON", "EMAIL_TARGET", "PRIVACY_POLICY_URL", "PARTNER_ADDRESS", "PARTNER_BADGE"
    #   resp.asset.activation_issues[0].partner_profile_field #=> String, one of "DISPLAY_NAME", "WEBSITE_URL", "LOGO", "WEBSITE_DOMAIN", "COPYRIGHT_LINE", "PARTNER_DETAILS", "COPYRIGHT_AND_DETAILS", "COPYRIGHT_YEAR_LINE"
    #   resp.asset.activation_issues[0].affected_asset_ids #=> Array
    #   resp.asset.activation_issues[0].affected_asset_ids[0] #=> String
    #   resp.asset.activation_issues[0].message #=> String
    #   resp.asset.public_url #=> String
    #   resp.asset.created_at #=> Time
    #   resp.asset.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/GetCampaignAsset AWS API Documentation
    #
    # @overload get_campaign_asset(params = {})
    # @param [Hash] params ({})
    def get_campaign_asset(params = {}, options = {})
      req = build_request(:get_campaign_asset, params)
      req.send_request(options)
    end

    # Reads a campaign's current activation task.
    #
    # Keyed on the **campaign**, with no task identifier, because a campaign
    # has at most one activation task: runs are serialised, so there is no
    # collection to address into. The caller always holds the task id
    # anyway, because Start returned it — the id is a correlation value, not
    # an address.
    #
    # Returns the campaign's most recent task. A new task overwrites the
    # previous one, so this is not a history: the durable per-asset record
    # is on the assets themselves. Returns ResourceNotFoundException when
    # the campaign has never had a task, or when its last one has expired.
    #
    # @option params [required, String] :catalog
    #   The catalog (AWS or Sandbox).
    #
    # @option params [required, String] :campaign_identifier
    #   The campaign whose current task to read. This addresses the task, and
    #   also authorizes the call.
    #
    # @return [Types::GetCampaignAssetActivationTaskResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCampaignAssetActivationTaskResponse#campaign_id #campaign_id} => String
    #   * {Types::GetCampaignAssetActivationTaskResponse#task_id #task_id} => String
    #   * {Types::GetCampaignAssetActivationTaskResponse#task_status #task_status} => String
    #   * {Types::GetCampaignAssetActivationTaskResponse#started_at #started_at} => Time
    #   * {Types::GetCampaignAssetActivationTaskResponse#ended_at #ended_at} => Time
    #   * {Types::GetCampaignAssetActivationTaskResponse#assets #assets} => Array&lt;Types::CampaignAssetActivationOutcome&gt;
    #
    #
    # @example Example: Read a finished task where one asset failed
    #
    #   resp = client.get_campaign_asset_activation_task({
    #     campaign_identifier: "camp-5Hq2m8x4k1p9w", 
    #     catalog: "AWS", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     assets: [
    #       {
    #         campaign_asset_id: "ast-4b81e0c9f2a7b", 
    #         status: "SUCCEEDED", 
    #       }, 
    #       {
    #         campaign_asset_id: "ast-9f3c1a2b7d40e", 
    #         status: "SUCCEEDED", 
    #       }, 
    #       {
    #         campaign_asset_id: "ast-2k7m4p9x1c6qd", 
    #         status: "SUCCEEDED", 
    #       }, 
    #       {
    #         campaign_asset_id: "ast-7w3n8r5t2h1ya", 
    #         message: "The connected social account is no longer authorized.", 
    #         reason: "SOCIAL_CONNECTION_EXPIRED", 
    #         status: "FAILED", 
    #       }, 
    #     ], 
    #     campaign_id: "camp-5Hq2m8x4k1p9w", 
    #     ended_at: Time.parse(1764547431), 
    #     started_at: Time.parse(1764547200), 
    #     task_id: "atsk-7k2M9x4qp1w8n", 
    #     task_status: "PARTIAL_FAILURE", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_campaign_asset_activation_task({
    #     catalog: "AWS", # required, accepts AWS, Sandbox
    #     campaign_identifier: "CampaignIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.campaign_id #=> String
    #   resp.task_id #=> String
    #   resp.task_status #=> String, one of "IN_PROGRESS", "SUCCEEDED", "PARTIAL_FAILURE", "FAILED"
    #   resp.started_at #=> Time
    #   resp.ended_at #=> Time
    #   resp.assets #=> Array
    #   resp.assets[0].campaign_asset_id #=> String
    #   resp.assets[0].status #=> String, one of "IN_PROGRESS", "SUCCEEDED", "FAILED"
    #   resp.assets[0].reason #=> String, one of "ASSET_NOT_FOUND", "ASSET_NOT_STARTABLE", "ASSET_START_IN_PROGRESS", "ASSET_ALREADY_ACTIVE", "SEND_WINDOW_TOO_SOON", "REQUIRED_FIELD_MISSING", "RECIPIENT_LIST_MISSING", "ENGAGEMENT_GROUPS_UNAVAILABLE", "SENDER_EMAIL_MISSING", "END_ON_MISSING", "ASSET_CONTENT_MISSING", "ASSET_NOT_ACTIVATABLE", "TEMPLATE_CHANGED", "PARTNER_IMAGE_REJECTED", "PREREQUISITE_ASSET_NOT_ACTIVE", "PARTNER_NOT_PROVISIONED", "RECIPIENT_LIST_EMPTY", "RECIPIENT_LIMIT_EXCEEDED", "CONTACT_OPT_IN_REQUIRED", "MAILING_CREDITS_EXHAUSTED", "SENDER_EMAIL_INVALID", "SOCIAL_CONNECTION_MISSING", "SOCIAL_CONNECTION_EXPIRED", "SOCIAL_CONNECTION_PAGE_REQUIRED", "DELIVERY_FAILED", "INTERNAL_ERROR", "MAILING_CREDITS_INSUFFICIENT", "PARTNER_PROFILE_FIELD_MISSING", "PARTNER_PROFILE_FIELD_DOES_NOT_FIT", "SOCIAL_CONNECTION_NOT_CHOSEN", "PRIVACY_POLICY_URL_MISSING", "PARTNER_ADDRESS_MISSING", "SEND_MODE_MISSING", "CONTENT_REJECTED", "URL_NOT_ALLOWED", "SENDER_NOT_APPROVED"
    #   resp.assets[0].message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/GetCampaignAssetActivationTask AWS API Documentation
    #
    # @overload get_campaign_asset_activation_task(params = {})
    # @param [Hash] params ({})
    def get_campaign_asset_activation_task(params = {}, options = {})
      req = build_request(:get_campaign_asset_activation_task, params)
      req.send_request(options)
    end

    # Retrieves a campaign asset export task by its identifier, reporting
    # its status and, when the task is COMPLETED, a freshly minted
    # short-lived presigned URL for downloading the ZIP archive.
    #
    # The download URL is minted on each call and is valid for at most 15
    # minutes; clients should download promptly rather than caching it. When
    # the task has FAILED, FailureReason explains why. Poll this operation
    # (roughly every 2-5 seconds) until the task reaches a terminal state.
    #
    # @option params [required, String] :catalog
    #   The catalog (AWS or Sandbox).
    #
    # @option params [required, String] :campaign_identifier
    #   The campaign that owns the export task. Accepts the campaign id or
    #   ARN. Required so the read is authorized on campaign/\{CampaignId}; the
    #   task must belong to this campaign or the request resolves to
    #   not-found.
    #
    # @option params [required, String] :campaign_asset_export_task_identifier
    #   The export task to retrieve: the `Id` StartCampaignAssetExportTask
    #   returned (`etsk-…`).
    #
    #   An id only. An export task has no ARN: none is returned, recorded or
    #   authorized on (the read authorizes on its campaign), so there is no
    #   ARN to accept (DG-063 D-35).
    #
    # @return [Types::GetCampaignAssetExportTaskResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCampaignAssetExportTaskResponse#id #id} => String
    #   * {Types::GetCampaignAssetExportTaskResponse#status #status} => String
    #   * {Types::GetCampaignAssetExportTaskResponse#created_at #created_at} => Time
    #   * {Types::GetCampaignAssetExportTaskResponse#download_url #download_url} => String
    #   * {Types::GetCampaignAssetExportTaskResponse#expires_at #expires_at} => Time
    #   * {Types::GetCampaignAssetExportTaskResponse#failure_reason #failure_reason} => Types::CampaignAssetExportFailureReason
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_campaign_asset_export_task({
    #     catalog: "AWS", # required, accepts AWS, Sandbox
    #     campaign_identifier: "CampaignIdentifier", # required
    #     campaign_asset_export_task_identifier: "CampaignAssetExportTaskId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.status #=> String, one of "IN_PROGRESS", "COMPLETED", "FAILED"
    #   resp.created_at #=> Time
    #   resp.download_url #=> String
    #   resp.expires_at #=> Time
    #   resp.failure_reason.code #=> String, one of "EXPORT_TIMEOUT", "EXPORT_TOO_LARGE", "PACKAGING_ERROR", "SOURCE_OBJECT_MISSING", "INTERNAL_ERROR"
    #   resp.failure_reason.message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/GetCampaignAssetExportTask AWS API Documentation
    #
    # @overload get_campaign_asset_export_task(params = {})
    # @param [Hash] params ({})
    def get_campaign_asset_export_task(params = {}, options = {})
      req = build_request(:get_campaign_asset_export_task, params)
      req.send_request(options)
    end

    # Retrieves full detail of one campaign template, including its ordered
    # asset templates with their field schema and layout previews.
    #
    # @option params [required, String] :catalog
    #   The catalog (AWS or Sandbox).
    #
    # @option params [required, String] :identifier
    #   The campaign template's id. A campaign template has no ARN (DG-084).
    #
    # @return [Types::GetCampaignTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCampaignTemplateResponse#campaign_template #campaign_template} => Types::CampaignTemplate
    #
    #
    # @example Example: Get a campaign template
    #
    #   resp = client.get_campaign_template({
    #     catalog: "AWS", 
    #     identifier: "tmpl-987xyz654abcd", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     campaign_template: {
    #       collection: "GENERAL", 
    #       id: "tmpl-987xyz654abcd", 
    #       name: "GenAI for Financial Services", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_campaign_template({
    #     catalog: "AWS", # required, accepts AWS, Sandbox
    #     identifier: "CampaignTemplateId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.campaign_template.id #=> String
    #   resp.campaign_template.name #=> String
    #   resp.campaign_template.industry #=> String, one of "FINANCIAL_SERVICES", "HEALTHCARE", "MANUFACTURING", "RETAIL", "MEDIA_ENTERTAINMENT", "ENERGY", "EDUCATION", "GOVERNMENT", "TELECOMMUNICATIONS", "AUTOMOTIVE", "INSURANCE", "OTHER"
    #   resp.campaign_template.use_case #=> String
    #   resp.campaign_template.description #=> String
    #   resp.campaign_template.language_code #=> String, one of "en", "es", "es-419", "fr", "de", "it", "pt-BR", "id", "tr", "ja", "ko", "zh-Hans", "zh-Hant", "ar"
    #   resp.campaign_template.collection #=> String, one of "GENERAL", "BUILD_WITH_AI"
    #   resp.campaign_template.aws_services #=> Array
    #   resp.campaign_template.aws_services[0] #=> String
    #   resp.campaign_template.customer_segments #=> Array
    #   resp.campaign_template.customer_segments[0] #=> String, one of "ENTERPRISE", "SMB", "PUBLIC_SECTOR", "ISV"
    #   resp.campaign_template.themes #=> Array
    #   resp.campaign_template.themes[0] #=> String, one of "AI", "MIGRATION_MODERNIZATION", "SECURITY", "DATA_ANALYTICS", "AWS_TRAINING_CERTIFICATION", "AWS_MARKETPLACE", "CONNECT", "EVENTS"
    #   resp.campaign_template.setup_duration #=> String
    #   resp.campaign_template.thumbnail_url #=> String
    #   resp.campaign_template.effective_date_begin #=> Time
    #   resp.campaign_template.asset_templates #=> Array
    #   resp.campaign_template.asset_templates[0].id #=> String
    #   resp.campaign_template.asset_templates[0].type #=> String, one of "EMAIL", "SOCIAL_POST", "LANDING_PAGE", "BANNER_AD", "DOCUMENT"
    #   resp.campaign_template.asset_templates[0].label #=> String
    #   resp.campaign_template.asset_templates[0].display_order #=> Integer
    #   resp.campaign_template.asset_templates[0].fields #=> Array
    #   resp.campaign_template.asset_templates[0].fields[0].field_id #=> String
    #   resp.campaign_template.asset_templates[0].fields[0].label #=> String
    #   resp.campaign_template.asset_templates[0].fields[0].description #=> String
    #   resp.campaign_template.asset_templates[0].fields[0].section #=> String, one of "HEADER", "BODY", "FOOTER"
    #   resp.campaign_template.asset_templates[0].fields[0].page #=> Integer
    #   resp.campaign_template.asset_templates[0].fields[0].required #=> Boolean
    #   resp.campaign_template.asset_templates[0].fields[0].type.text.min_length #=> Integer
    #   resp.campaign_template.asset_templates[0].fields[0].type.text.max_length #=> Integer
    #   resp.campaign_template.asset_templates[0].fields[0].type.text.pattern #=> String
    #   resp.campaign_template.asset_templates[0].fields[0].type.text.placeholder #=> String
    #   resp.campaign_template.asset_templates[0].fields[0].type.rich_text.max_length #=> Integer
    #   resp.campaign_template.asset_templates[0].fields[0].type.rich_text.allowed_tags #=> Array
    #   resp.campaign_template.asset_templates[0].fields[0].type.rich_text.allowed_tags[0] #=> String
    #   resp.campaign_template.asset_templates[0].fields[0].type.rich_text.placeholder #=> String
    #   resp.campaign_template.asset_templates[0].fields[0].type.image.max_size_bytes #=> Integer
    #   resp.campaign_template.asset_templates[0].fields[0].type.image.allowed_formats #=> Array
    #   resp.campaign_template.asset_templates[0].fields[0].type.image.allowed_formats[0] #=> String, one of "PNG", "JPEG"
    #   resp.campaign_template.asset_templates[0].fields[0].type.image.default_value.format #=> String, one of "HTML", "PDF", "IMAGE"
    #   resp.campaign_template.asset_templates[0].fields[0].type.image.default_value.url #=> String
    #   resp.campaign_template.asset_templates[0].fields[0].type.image.default_value.page_type #=> String, one of "FORM", "CONFIRMATION"
    #   resp.campaign_template.asset_templates[0].fields[0].type.image.recommended_width_pixels #=> Integer
    #   resp.campaign_template.asset_templates[0].fields[0].type.image.recommended_height_pixels #=> Integer
    #   resp.campaign_template.asset_templates[0].fields[0].type.asset_link.category #=> String, one of "EMAIL", "LANDING_PAGE", "SOCIAL_POST", "BANNER_AD", "DOCUMENT"
    #   resp.campaign_template.asset_templates[0].fields[0].type.asset_link.label_field_id #=> String
    #   resp.campaign_template.asset_templates[0].fields[0].campaign_setting #=> String, one of "SENDER_EMAIL", "END_ON", "EMAIL_TARGET", "PRIVACY_POLICY_URL", "PARTNER_ADDRESS", "PARTNER_BADGE"
    #   resp.campaign_template.asset_templates[0].fields[0].partner_profile_field #=> String, one of "DISPLAY_NAME", "WEBSITE_URL", "LOGO", "WEBSITE_DOMAIN", "COPYRIGHT_LINE", "PARTNER_DETAILS", "COPYRIGHT_AND_DETAILS", "COPYRIGHT_YEAR_LINE"
    #   resp.campaign_template.asset_templates[0].layout_previews #=> Array
    #   resp.campaign_template.asset_templates[0].layout_previews[0].format #=> String, one of "HTML", "PDF", "IMAGE"
    #   resp.campaign_template.asset_templates[0].layout_previews[0].url #=> String
    #   resp.campaign_template.asset_templates[0].layout_previews[0].page_type #=> String, one of "FORM", "CONFIRMATION"
    #   resp.campaign_template.asset_templates[0].prerequisite_asset_template_ids #=> Array
    #   resp.campaign_template.asset_templates[0].prerequisite_asset_template_ids[0] #=> String
    #   resp.campaign_template.asset_templates[0].social_platform #=> String, one of "FACEBOOK", "LINKEDIN", "X"
    #   resp.campaign_template.reference_materials #=> Array
    #   resp.campaign_template.reference_materials[0].name #=> String
    #   resp.campaign_template.reference_materials[0].url #=> String
    #   resp.campaign_template.created_at #=> Time
    #   resp.campaign_template.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/GetCampaignTemplate AWS API Documentation
    #
    # @overload get_campaign_template(params = {})
    # @param [Hash] params ({})
    def get_campaign_template(params = {}, options = {})
      req = build_request(:get_campaign_template, params)
      req.send_request(options)
    end

    # Lists assets for a campaign with pagination.
    #
    # @option params [required, String] :catalog
    #   The catalog (AWS or Sandbox).
    #
    # @option params [required, String] :campaign_identifier
    #   The campaign identifier.
    #
    # @option params [Integer] :max_results
    #   Maximum results per page.
    #
    # @option params [String] :next_token
    #   Pagination token.
    #
    # @return [Types::ListCampaignAssetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCampaignAssetsResponse#items #items} => Array&lt;Types::CampaignAssetSummary&gt;
    #   * {Types::ListCampaignAssetsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: List assets for a campaign
    #
    #   resp = client.list_campaign_assets({
    #     campaign_identifier: "camp-5Hq2m8x4k1p9w", 
    #     catalog: "AWS", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     items: [
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_campaign_assets({
    #     catalog: "AWS", # required, accepts AWS, Sandbox
    #     campaign_identifier: "CampaignIdentifier", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].id #=> String
    #   resp.items[0].category #=> String, one of "EMAIL", "LANDING_PAGE", "SOCIAL_POST", "BANNER_AD", "DOCUMENT"
    #   resp.items[0].name #=> String
    #   resp.items[0].link_label #=> String
    #   resp.items[0].state #=> String, one of "INACTIVE", "ACTIVE"
    #   resp.items[0].last_activation_status #=> String, one of "IN_PROGRESS", "SUCCEEDED", "FAILED"
    #   resp.items[0].delivery_status #=> String, one of "PENDING", "DELIVERED", "FAILED"
    #   resp.items[0].delivery_status_reason #=> String, one of "ASSET_NOT_FOUND", "ASSET_NOT_STARTABLE", "ASSET_START_IN_PROGRESS", "ASSET_ALREADY_ACTIVE", "SEND_WINDOW_TOO_SOON", "REQUIRED_FIELD_MISSING", "RECIPIENT_LIST_MISSING", "ENGAGEMENT_GROUPS_UNAVAILABLE", "SENDER_EMAIL_MISSING", "END_ON_MISSING", "ASSET_CONTENT_MISSING", "ASSET_NOT_ACTIVATABLE", "TEMPLATE_CHANGED", "PARTNER_IMAGE_REJECTED", "PREREQUISITE_ASSET_NOT_ACTIVE", "PARTNER_NOT_PROVISIONED", "RECIPIENT_LIST_EMPTY", "RECIPIENT_LIMIT_EXCEEDED", "CONTACT_OPT_IN_REQUIRED", "MAILING_CREDITS_EXHAUSTED", "SENDER_EMAIL_INVALID", "SOCIAL_CONNECTION_MISSING", "SOCIAL_CONNECTION_EXPIRED", "SOCIAL_CONNECTION_PAGE_REQUIRED", "DELIVERY_FAILED", "INTERNAL_ERROR", "MAILING_CREDITS_INSUFFICIENT", "PARTNER_PROFILE_FIELD_MISSING", "PARTNER_PROFILE_FIELD_DOES_NOT_FIT", "SOCIAL_CONNECTION_NOT_CHOSEN", "PRIVACY_POLICY_URL_MISSING", "PARTNER_ADDRESS_MISSING", "SEND_MODE_MISSING", "CONTENT_REJECTED", "URL_NOT_ALLOWED", "SENDER_NOT_APPROVED"
    #   resp.items[0].source_asset_template_id #=> String
    #   resp.items[0].social_platform #=> String, one of "FACEBOOK", "LINKEDIN", "X"
    #   resp.items[0].started_at #=> Time
    #   resp.items[0].file_format #=> String, one of "PDF", "DOCX", "PPTX", "HTML", "IMAGE"
    #   resp.items[0].send_mode #=> String, one of "ON_ACTIVATION", "SCHEDULED"
    #   resp.items[0].scheduled_send_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/ListCampaignAssets AWS API Documentation
    #
    # @overload list_campaign_assets(params = {})
    # @param [Hash] params ({})
    def list_campaign_assets(params = {}, options = {})
      req = build_request(:list_campaign_assets, params)
      req.send_request(options)
    end

    # Lists campaigns with optional filters and pagination.
    #
    # @option params [required, String] :catalog
    #   The catalog (AWS or Sandbox).
    #
    # @option params [Array<String>] :campaign_identifiers
    #   Only these campaigns, each named by its id or its campaign ARN. A
    #   campaign that does not exist, was deleted, or whose ARN names another
    #   account or catalog is left out rather than refused.
    #
    # @option params [String] :name
    #   Only campaigns whose name contains this, compared case-insensitively.
    #
    # @option params [Array<String>] :states
    #   Only campaigns in one of these states.
    #
    # @option params [Types::CampaignSort] :sort
    #   The order of the results. Default: `CREATED_AT`, `DESCENDING`.
    #
    # @option params [Integer] :max_results
    #   Maximum results per page.
    #
    # @option params [String] :next_token
    #   Pagination token. Bound to the filters and sort it was issued for: a
    #   request that changes `CampaignIdentifiers`, `Name`, `States` or `Sort`
    #   between pages is refused with `ValidationException`. `MaxResults` may
    #   change.
    #
    # @return [Types::ListCampaignsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCampaignsResponse#items #items} => Array&lt;Types::CampaignSummary&gt;
    #   * {Types::ListCampaignsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: List campaigns
    #
    #   resp = client.list_campaigns({
    #     catalog: "AWS", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     items: [
    #     ], 
    #   }
    #
    # @example Example: Name the campaigns a page links to
    #
    #   resp = client.list_campaigns({
    #     campaign_identifiers: [
    #       "arn:aws:partnercentral:us-east-1:123456789012:catalog/AWS/campaign/camp-5Hq2m8x4k1p9w", 
    #       "camp-8Rt3w6y1n4b2v", 
    #     ], 
    #     catalog: "AWS", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     items: [
    #       {
    #         arn: "arn:aws:partnercentral:us-east-1:123456789012:catalog/AWS/campaign/camp-5Hq2m8x4k1p9w", 
    #         campaign_id: "camp-5Hq2m8x4k1p9w", 
    #         name: "Q4 GenAI Campaign", 
    #         start_on: "2026-11-01", 
    #         state: "ACTIVE", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Example: Search active campaigns by name, by launch date
    #
    #   resp = client.list_campaigns({
    #     catalog: "AWS", 
    #     max_results: 20, 
    #     name: "genai", 
    #     sort: {
    #       sort_by: "START_ON", 
    #       sort_order: "ASCENDING", 
    #     }, 
    #     states: [
    #       "ACTIVE", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     items: [
    #       {
    #         arn: "arn:aws:partnercentral:us-east-1:123456789012:catalog/AWS/campaign/camp-5Hq2m8x4k1p9w", 
    #         campaign_id: "camp-5Hq2m8x4k1p9w", 
    #         name: "Q4 GenAI Campaign", 
    #         start_on: "2026-11-01", 
    #         state: "ACTIVE", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_campaigns({
    #     catalog: "AWS", # required, accepts AWS, Sandbox
    #     campaign_identifiers: ["CampaignIdentifier"],
    #     name: "CampaignName",
    #     states: ["DRAFT"], # accepts DRAFT, ACTIVE, COMPLETED
    #     sort: {
    #       sort_by: "NAME", # required, accepts NAME, STATE, START_ON, CREATED_AT
    #       sort_order: "ASCENDING", # required, accepts ASCENDING, DESCENDING
    #     },
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].campaign_id #=> String
    #   resp.items[0].arn #=> String
    #   resp.items[0].name #=> String
    #   resp.items[0].state #=> String, one of "DRAFT", "ACTIVE", "COMPLETED"
    #   resp.items[0].language #=> String, one of "en", "es", "es-419", "fr", "de", "it", "pt-BR", "id", "tr", "ja", "ko", "zh-Hans", "zh-Hant", "ar"
    #   resp.items[0].start_on #=> String
    #   resp.items[0].end_on #=> String
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/ListCampaigns AWS API Documentation
    #
    # @overload list_campaigns(params = {})
    # @param [Hash] params ({})
    def list_campaigns(params = {}, options = {})
      req = build_request(:list_campaigns, params)
      req.send_request(options)
    end

    # Lists the partner's social connections, optionally filtered by
    # platform.
    #
    # @option params [required, String] :catalog
    #   Catalog to list connections from.
    #
    # @option params [String] :platform
    #   Restrict results to a single social platform.
    #
    # @option params [Integer] :max_results
    #   Maximum number of results to return per page.
    #
    # @option params [String] :next_token
    #   Pagination token from a previous response.
    #
    # @return [Types::ListSocialConnectionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSocialConnectionsResponse#items #items} => Array&lt;Types::SocialConnectionSummary&gt;
    #   * {Types::ListSocialConnectionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_social_connections({
    #     catalog: "AWS", # required, accepts AWS, Sandbox
    #     platform: "FACEBOOK", # accepts FACEBOOK, LINKEDIN, X
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].id #=> String
    #   resp.items[0].platform #=> String, one of "FACEBOOK", "LINKEDIN", "X"
    #   resp.items[0].status #=> String, one of "AUTHORIZED", "EXPIRED", "PAGE_REQUIRED"
    #   resp.items[0].page_name #=> String
    #   resp.items[0].account_name #=> String
    #   resp.items[0].connected_at #=> Time
    #   resp.items[0].expires_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/ListSocialConnections AWS API Documentation
    #
    # @overload list_social_connections(params = {})
    # @param [Hash] params ({})
    def list_social_connections(params = {}, options = {})
      req = build_request(:list_social_connections, params)
      req.send_request(options)
    end

    # Lists the tags applied to a Partner Central Marketing resource.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource whose tags should be returned.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#resource_arn #resource_arn} => String
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "TaggableResourceArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_arn #=> String
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Searches and browses the AWS-authored campaign template catalog. With
    # no SearchText it returns the whole catalog in the default order, so
    # browse and keyword search share one shape; GetCampaignTemplate reads
    # one template.
    #
    # @option params [required, String] :catalog
    #   The catalog (AWS or Sandbox). AWS and Sandbox templates may differ.
    #
    # @option params [String] :search_text
    #   Free-text query matched against the template's name and description.
    #   Any word may match, and the last word matches as a prefix when it has
    #   3 or more characters, so `nov` finds Amazon Nova. A template whose
    #   name holds the query as a phrase ranks first, then whole-word matches,
    #   then prefix-only ones. Omit to browse the whole catalog. Text analysis
    #   is derived from each template's own LanguageCode, never from the
    #   language filter.
    #
    # @option params [Array<String>] :industry
    #   Restrict to templates in these industries. Values within this member
    #   are OR-ed; distinct facet members are AND-ed. Exact, case-sensitive
    #   match.
    #
    # @option params [Array<String>] :use_case
    #   Restrict to templates with these campaign use cases. Values within
    #   this member are OR-ed; distinct facet members are AND-ed. Exact,
    #   case-sensitive match.
    #
    # @option params [Array<String>] :language
    #   Restrict to templates in these language(s), matched by each
    #   template's `LanguageCode`. Values within this member are OR-ed;
    #   distinct facet members are AND-ed. Narrows results; it does not
    #   reinterpret SearchText.
    #
    # @option params [Array<String>] :aws_services
    #   Restrict to templates promoting these AWS services. Values within this
    #   member are OR-ed; distinct facet members are AND-ed. Exact,
    #   case-sensitive match.
    #
    # @option params [Array<String>] :customer_segments
    #   Restrict to templates for these customer segments. Values within this
    #   member are OR-ed; distinct facet members are AND-ed. A template that
    #   names no customer segment matches every value.
    #
    # @option params [Array<String>] :themes
    #   Restrict to templates with these themes. Values within this member are
    #   OR-ed; distinct facet members are AND-ed. A template that names no
    #   theme matches every value.
    #
    # @option params [Array<String>] :collection
    #   Restrict to templates in these collections. Values within this member
    #   are OR-ed; distinct facet members are AND-ed. Omit for no restriction;
    #   there is no default.
    #
    # @option params [Integer] :max_results
    #   Maximum results per page.
    #
    # @option params [String] :next_token
    #   Pagination token.
    #
    # @return [Types::SearchCampaignTemplatesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchCampaignTemplatesResponse#total_results #total_results} => Integer
    #   * {Types::SearchCampaignTemplatesResponse#campaign_templates #campaign_templates} => Array&lt;Types::CampaignTemplateSummary&gt;
    #   * {Types::SearchCampaignTemplatesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: Browse the whole catalog
    #
    #   resp = client.search_campaign_templates({
    #     catalog: "AWS", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     campaign_templates: [
    #     ], 
    #     total_results: 0, 
    #   }
    #
    # @example Example: Search with a facet filter
    #
    #   resp = client.search_campaign_templates({
    #     catalog: "AWS", 
    #     industry: [
    #       "TELECOMMUNICATIONS", 
    #     ], 
    #     search_text: "contact center", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     campaign_templates: [
    #     ], 
    #     total_results: 0, 
    #   }
    #
    # @example Example: Browse the Build with AI collection in one language
    #
    #   resp = client.search_campaign_templates({
    #     catalog: "AWS", 
    #     collection: [
    #       "BUILD_WITH_AI", 
    #     ], 
    #     language: [
    #       "ja", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     campaign_templates: [
    #       {
    #         collection: "BUILD_WITH_AI", 
    #         id: "tmpl-z7icunek7m2x8", 
    #         language_code: "ja", 
    #         name: "Build with AI (Japanese)", 
    #       }, 
    #     ], 
    #     total_results: 1, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_campaign_templates({
    #     catalog: "AWS", # required, accepts AWS, Sandbox
    #     search_text: "TemplateSearchText",
    #     industry: ["FINANCIAL_SERVICES"], # accepts FINANCIAL_SERVICES, HEALTHCARE, MANUFACTURING, RETAIL, MEDIA_ENTERTAINMENT, ENERGY, EDUCATION, GOVERNMENT, TELECOMMUNICATIONS, AUTOMOTIVE, INSURANCE, OTHER
    #     use_case: ["UseCaseFilter"],
    #     language: ["en"], # accepts en, es, es-419, fr, de, it, pt-BR, id, tr, ja, ko, zh-Hans, zh-Hant, ar
    #     aws_services: ["String"],
    #     customer_segments: ["ENTERPRISE"], # accepts ENTERPRISE, SMB, PUBLIC_SECTOR, ISV
    #     themes: ["AI"], # accepts AI, MIGRATION_MODERNIZATION, SECURITY, DATA_ANALYTICS, AWS_TRAINING_CERTIFICATION, AWS_MARKETPLACE, CONNECT, EVENTS
    #     collection: ["GENERAL"], # accepts GENERAL, BUILD_WITH_AI
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.total_results #=> Integer
    #   resp.campaign_templates #=> Array
    #   resp.campaign_templates[0].id #=> String
    #   resp.campaign_templates[0].name #=> String
    #   resp.campaign_templates[0].industry #=> String, one of "FINANCIAL_SERVICES", "HEALTHCARE", "MANUFACTURING", "RETAIL", "MEDIA_ENTERTAINMENT", "ENERGY", "EDUCATION", "GOVERNMENT", "TELECOMMUNICATIONS", "AUTOMOTIVE", "INSURANCE", "OTHER"
    #   resp.campaign_templates[0].use_case #=> String
    #   resp.campaign_templates[0].description #=> String
    #   resp.campaign_templates[0].language_code #=> String, one of "en", "es", "es-419", "fr", "de", "it", "pt-BR", "id", "tr", "ja", "ko", "zh-Hans", "zh-Hant", "ar"
    #   resp.campaign_templates[0].collection #=> String, one of "GENERAL", "BUILD_WITH_AI"
    #   resp.campaign_templates[0].aws_services #=> Array
    #   resp.campaign_templates[0].aws_services[0] #=> String
    #   resp.campaign_templates[0].customer_segments #=> Array
    #   resp.campaign_templates[0].customer_segments[0] #=> String, one of "ENTERPRISE", "SMB", "PUBLIC_SECTOR", "ISV"
    #   resp.campaign_templates[0].themes #=> Array
    #   resp.campaign_templates[0].themes[0] #=> String, one of "AI", "MIGRATION_MODERNIZATION", "SECURITY", "DATA_ANALYTICS", "AWS_TRAINING_CERTIFICATION", "AWS_MARKETPLACE", "CONNECT", "EVENTS"
    #   resp.campaign_templates[0].thumbnail_url #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/SearchCampaignTemplates AWS API Documentation
    #
    # @overload search_campaign_templates(params = {})
    # @param [Hash] params ({})
    def search_campaign_templates(params = {}, options = {})
      req = build_request(:search_campaign_templates, params)
      req.send_request(options)
    end

    # Activates 1–25 of a campaign's assets as one ordered unit, and
    # returns a task to poll.
    #
    # Takes a **list** because the service owns the ordering. Assets link to
    # one another by URL — an email's call-to-action carries the landing
    # page's URL, the landing page's download field carries the
    # document's — and a URL does not exist until the asset it points at is
    # activated. Those edges are derived by the service from the campaign's
    # pinned template, so reconstructing and topologically sorting them is
    # work the service has already done, and getting it wrong arms an email
    # with a dead link. Name every asset you want live and the service
    # sequences them; "activate everything" is the list with every id in it,
    # which ListCampaignAssets already gave you.
    #
    # Asynchronous, because activating an asset installs or arms behaviour
    # that runs later and an email activation bulk-loads its audience into
    # the delivery platform. Everything decidable **without** a write to the
    # delivery platform is evaluated before this returns; everything else
    # lands on the task.
    #
    # A refusal that applies to one asset does not fail the request: that
    # asset is on the task already FAILED, with its reason, and the rest
    # run. A refusal that applies to the whole request — a malformed list,
    # an unknown campaign, another task already running on this campaign,
    # this service's service-linked role being deleted (ConflictException
    # `SERVICE_LINKED_ROLE_DELETION_IN_PROGRESS`), a campaign setting an
    # asset in the request needs (ValidationException
    # `CAMPAIGN_INCOMPLETE`), a campaign sender that no longer passes
    # `CreateCampaign`'s sender rules while the request names an email
    # (ValidationException with no `FieldList`, whose message ends with one
    # `Reason: <code>` token per failed rule: `PATTERN_MISMATCH`,
    # `SENDER_DOMAIN_NOT_ALLIANCE_LEAD`, or `SENDER_DOMAIN_DKIM_MISSING`
    # and/or `SENDER_DOMAIN_DMARC_MISSING`) — is thrown, and nothing starts.
    #
    # One task runs on a campaign at a time. A second concurrent call is
    # refused with ConflictException / CAMPAIGN\_ACTIVATION\_IN\_PROGRESS,
    # whose `ResourceId` names the task already holding the campaign. Two
    # tasks over *disjoint* asset sets are refused too: the guard is
    # deliberately campaign-wide, because overlapping runs made the
    # per-asset status misleading rather than merely contended.
    #
    # @option params [required, String] :catalog
    #   The catalog (AWS or Sandbox).
    #
    # @option params [required, String] :campaign_identifier
    #   The campaign identifier, which also authorizes the call.
    #
    # @option params [required, Array<String>] :campaign_asset_identifiers
    #   The assets to activate, in any order — the service derives the
    #   dependency order and ignores the order given here.
    #
    # @option params [String] :client_token
    #   Idempotency token. Two requests carrying the same token are one
    #   request, and the second returns the first one's task rather than
    #   starting a second.
    #
    #   The deduplication window is the **life of the task record**, not a
    #   fixed number of hours: replaying a token after the task has expired
    #   starts a new task. Stated because a caller would otherwise assume the
    #   usual few-hour guarantee.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::StartCampaignAssetActivationTaskResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartCampaignAssetActivationTaskResponse#campaign_id #campaign_id} => String
    #   * {Types::StartCampaignAssetActivationTaskResponse#task_id #task_id} => String
    #   * {Types::StartCampaignAssetActivationTaskResponse#task_status #task_status} => String
    #   * {Types::StartCampaignAssetActivationTaskResponse#started_at #started_at} => Time
    #   * {Types::StartCampaignAssetActivationTaskResponse#ended_at #ended_at} => Time
    #   * {Types::StartCampaignAssetActivationTaskResponse#assets #assets} => Array&lt;Types::CampaignAssetActivationOutcome&gt;
    #
    #
    # @example Example: Activate a whole campaign kit
    #
    #   resp = client.start_campaign_asset_activation_task({
    #     campaign_asset_identifiers: [
    #       "ast-4b81e0c9f2a7b", 
    #       "ast-9f3c1a2b7d40e", 
    #       "ast-2k7m4p9x1c6qd", 
    #       "ast-7w3n8r5t2h1ya", 
    #     ], 
    #     campaign_identifier: "camp-5Hq2m8x4k1p9w", 
    #     catalog: "AWS", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     assets: [
    #       {
    #         campaign_asset_id: "ast-4b81e0c9f2a7b", 
    #         status: "IN_PROGRESS", 
    #       }, 
    #       {
    #         campaign_asset_id: "ast-9f3c1a2b7d40e", 
    #         status: "IN_PROGRESS", 
    #       }, 
    #       {
    #         campaign_asset_id: "ast-2k7m4p9x1c6qd", 
    #         status: "IN_PROGRESS", 
    #       }, 
    #       {
    #         campaign_asset_id: "ast-7w3n8r5t2h1ya", 
    #         status: "IN_PROGRESS", 
    #       }, 
    #     ], 
    #     campaign_id: "camp-5Hq2m8x4k1p9w", 
    #     started_at: Time.parse(1764547200), 
    #     task_id: "atsk-7k2M9x4qp1w8n", 
    #     task_status: "IN_PROGRESS", 
    #   }
    #
    # @example Example: Some assets refused, the rest started anyway
    #
    #   resp = client.start_campaign_asset_activation_task({
    #     campaign_asset_identifiers: [
    #       "ast-4b81e0c9f2a7b", 
    #       "ast-9f3c1a2b7d40e", 
    #       "ast-2k7m4p9x1c6qd", 
    #       "ast-7w3n8r5t2h1ya", 
    #     ], 
    #     campaign_identifier: "camp-5Hq2m8x4k1p9w", 
    #     catalog: "AWS", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     assets: [
    #       {
    #         campaign_asset_id: "ast-4b81e0c9f2a7b", 
    #         message: "An asset this one embeds is not live.", 
    #         reason: "PREREQUISITE_ASSET_NOT_ACTIVE", 
    #         status: "FAILED", 
    #       }, 
    #       {
    #         campaign_asset_id: "ast-9f3c1a2b7d40e", 
    #         message: "An asset this one embeds is not live.", 
    #         reason: "PREREQUISITE_ASSET_NOT_ACTIVE", 
    #         status: "FAILED", 
    #       }, 
    #       {
    #         campaign_asset_id: "ast-2k7m4p9x1c6qd", 
    #         message: "Required fields are empty.", 
    #         reason: "REQUIRED_FIELD_MISSING", 
    #         status: "FAILED", 
    #       }, 
    #       {
    #         campaign_asset_id: "ast-7w3n8r5t2h1ya", 
    #         status: "IN_PROGRESS", 
    #       }, 
    #     ], 
    #     campaign_id: "camp-5Hq2m8x4k1p9w", 
    #     started_at: Time.parse(1764547200), 
    #     task_id: "atsk-3n7V2h5r9t4kc", 
    #     task_status: "IN_PROGRESS", 
    #   }
    #
    # @example Example: Every asset refused, so the task is FAILED at once
    #
    #   resp = client.start_campaign_asset_activation_task({
    #     campaign_asset_identifiers: [
    #       "ast-2k7m4p9x1c6qd", 
    #     ], 
    #     campaign_identifier: "camp-5Hq2m8x4k1p9w", 
    #     catalog: "AWS", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     assets: [
    #       {
    #         campaign_asset_id: "ast-2k7m4p9x1c6qd", 
    #         message: "This kind of asset is downloaded rather than published.", 
    #         reason: "ASSET_NOT_STARTABLE", 
    #         status: "FAILED", 
    #       }, 
    #     ], 
    #     campaign_id: "camp-5Hq2m8x4k1p9w", 
    #     ended_at: Time.parse(1764547200), 
    #     started_at: Time.parse(1764547200), 
    #     task_id: "atsk-9p4W2k7m3x8qa", 
    #     task_status: "FAILED", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_campaign_asset_activation_task({
    #     catalog: "AWS", # required, accepts AWS, Sandbox
    #     campaign_identifier: "CampaignIdentifier", # required
    #     campaign_asset_identifiers: ["CampaignAssetId"], # required
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.campaign_id #=> String
    #   resp.task_id #=> String
    #   resp.task_status #=> String, one of "IN_PROGRESS", "SUCCEEDED", "PARTIAL_FAILURE", "FAILED"
    #   resp.started_at #=> Time
    #   resp.ended_at #=> Time
    #   resp.assets #=> Array
    #   resp.assets[0].campaign_asset_id #=> String
    #   resp.assets[0].status #=> String, one of "IN_PROGRESS", "SUCCEEDED", "FAILED"
    #   resp.assets[0].reason #=> String, one of "ASSET_NOT_FOUND", "ASSET_NOT_STARTABLE", "ASSET_START_IN_PROGRESS", "ASSET_ALREADY_ACTIVE", "SEND_WINDOW_TOO_SOON", "REQUIRED_FIELD_MISSING", "RECIPIENT_LIST_MISSING", "ENGAGEMENT_GROUPS_UNAVAILABLE", "SENDER_EMAIL_MISSING", "END_ON_MISSING", "ASSET_CONTENT_MISSING", "ASSET_NOT_ACTIVATABLE", "TEMPLATE_CHANGED", "PARTNER_IMAGE_REJECTED", "PREREQUISITE_ASSET_NOT_ACTIVE", "PARTNER_NOT_PROVISIONED", "RECIPIENT_LIST_EMPTY", "RECIPIENT_LIMIT_EXCEEDED", "CONTACT_OPT_IN_REQUIRED", "MAILING_CREDITS_EXHAUSTED", "SENDER_EMAIL_INVALID", "SOCIAL_CONNECTION_MISSING", "SOCIAL_CONNECTION_EXPIRED", "SOCIAL_CONNECTION_PAGE_REQUIRED", "DELIVERY_FAILED", "INTERNAL_ERROR", "MAILING_CREDITS_INSUFFICIENT", "PARTNER_PROFILE_FIELD_MISSING", "PARTNER_PROFILE_FIELD_DOES_NOT_FIT", "SOCIAL_CONNECTION_NOT_CHOSEN", "PRIVACY_POLICY_URL_MISSING", "PARTNER_ADDRESS_MISSING", "SEND_MODE_MISSING", "CONTENT_REJECTED", "URL_NOT_ALLOWED", "SENDER_NOT_APPROVED"
    #   resp.assets[0].message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/StartCampaignAssetActivationTask AWS API Documentation
    #
    # @overload start_campaign_asset_activation_task(params = {})
    # @param [Hash] params ({})
    def start_campaign_asset_activation_task(params = {}, options = {})
      req = build_request(:start_campaign_asset_activation_task, params)
      req.send_request(options)
    end

    # Starts an asynchronous task that packages a campaign's assets into a
    # single downloadable ZIP archive.
    #
    # Fire-and-return: the campaign is validated (it must exist and not be
    # cancelled), a task record is persisted, an asynchronous execution is
    # started, and the task id is returned with status IN\_PROGRESS. This
    # operation does not inspect assets — all resolution, exclusion, and
    # failure are determined by the execution and surfaced only by
    # GetCampaignAssetExportTask.
    #
    # Every campaign is exportable, including one never activated, because
    # renderable assets are composed on demand at export time rather than
    # requiring finished, launched deliverables.
    #
    # @option params [required, String] :catalog
    #   The catalog (AWS or Sandbox).
    #
    # @option params [required, String] :campaign_identifier
    #   The campaign whose assets are exported. Accepts the campaign id or
    #   ARN.
    #
    # @option params [String] :client_token
    #   Idempotency token. Two requests carrying the same token within the
    #   dedup window are one request and return the same task id.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::StartCampaignAssetExportTaskResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartCampaignAssetExportTaskResponse#id #id} => String
    #   * {Types::StartCampaignAssetExportTaskResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_campaign_asset_export_task({
    #     catalog: "AWS", # required, accepts AWS, Sandbox
    #     campaign_identifier: "CampaignIdentifier", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.status #=> String, one of "IN_PROGRESS", "COMPLETED", "FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/StartCampaignAssetExportTask AWS API Documentation
    #
    # @overload start_campaign_asset_export_task(params = {})
    # @param [Hash] params ({})
    def start_campaign_asset_export_task(params = {}, options = {})
      req = build_request(:start_campaign_asset_export_task, params)
      req.send_request(options)
    end

    # Adds or replaces tags on a Partner Central Marketing resource.
    #
    # Idempotent: applying a tag that is already present with the same value
    # is a no-op, and supplying a key that already exists replaces its
    # value.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource to tag.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   The tags to add or replace.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "TaggableResourceArn", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes tags from a Partner Central Marketing resource.
    #
    # Idempotent: removing a key that is not present succeeds.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource to remove tags from.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The tag keys to remove. Associated values are removed with them.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "TaggableResourceArn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Edits a campaign in place.
    #
    # Partial update: an omitted field is left unchanged, which is the
    # standard meaning of an `Update` verb — a full replacement would be a
    # `Put`. Change-only, with no way to clear a field back to empty,
    # because the campaign's file members cannot round-trip: they are
    # written as an `s3://` reference and read back as a URL or as metadata,
    # so a replacement payload could not resend an unchanged recipient list
    # without re-uploading it.
    #
    # Refused while an activation task runs
    # (`CAMPAIGN_ACTIVATION_IN_PROGRESS`) and once the campaign is completed
    # (`CAMPAIGN_COMPLETED`, the UTC date is after its `EndOn`).
    #
    # Last-writer-wins, with no concurrency token: this is low-contention
    # metadata owned by one partner.
    #
    # @option params [required, String] :catalog
    #   The catalog (AWS or Sandbox).
    #
    # @option params [required, String] :campaign_identifier
    #   The campaign identifier.
    #
    # @option params [String] :name
    #   The display name.
    #
    # @option params [String] :sender_email
    #   Sets or replaces the address the campaign's emails are sent from.
    #   Checked by the same three rules as on `CreateCampaign`, with the same
    #   codes, but only when it differs, ignoring case, from the stored
    #   sender: re-sending the stored one is not checked, and
    #   `StartCampaignAssetActivationTask` re-checks it before an email
    #   activates.
    #
    #   Replaces, never clears: like every member of this operation, an
    #   omitted value leaves the sender as it was, and there is no way to
    #   remove one once set.
    #
    # @option params [String] :privacy_policy_url
    #   Sets or replaces the URL of the partner's privacy policy. Replaces,
    #   never clears.
    #
    # @option params [String] :partner_address
    #   Sets or replaces the partner's postal address. Replaces, never
    #   clears.
    #
    # @option params [Types::FileRef] :partner_badge
    #   Sets or replaces the partner's badge, checked exactly as on
    #   `CreateCampaign`. Replaces, never clears: upload the Standalone AWS
    #   Partner badge to show it again. The badge an asset already published
    #   keeps showing on it until that asset is activated again.
    #
    # @option params [Types::FileRef] :email_target
    #   Replaces the campaign's attached recipient list.
    #
    #   The referenced object is copied and pinned again on every call that
    #   supplies it, so the pinned copy always reflects the *last*
    #   `UpdateCampaign` that named one. Editing the source object in your
    #   own bucket without calling this operation again has no effect.
    #   Replaces, never detaches: a partner can swap the list but cannot
    #   remove it.
    #
    # @option params [Array<String>] :email_target_engagement_group_ids
    #   Engagement groups whose contacts the campaign's emails will also go
    #   to (see `CreateCampaign`). Replaces the stored list; never clears it.
    #
    #   As on `CreateCampaign`: each group once (`INVALID\_VALUE`
    #   otherwise), not checked against your groups when saved, and resolved
    #   at Start where the stage can (`ENGAGEMENT\_GROUPS\_UNAVAILABLE`
    #   where it can't).
    #
    # @option params [Hash<String,Array>] :social_connections
    #   Sets the account the campaign's social posts publish from, per
    #   platform. Each platform named replaces that platform's choice; a
    #   platform not named keeps its own. Replaces, never clears.
    #
    #   Not checked against your connections here: a connection can be deleted
    #   at any time, so the activation checks the choice. See
    #   `Campaign$SocialConnections`.
    #
    # @option params [Types::MonetaryValue] :estimated_budget
    #   What the partner expects the campaign to cost.
    #
    # @option params [Types::MonetaryValue] :total_budget
    #   The campaign's total budget.
    #
    # @option params [Types::TargetAudience] :target_audience
    #   Target audience configuration.
    #
    # @option params [String] :client_token
    #   Idempotency token. Accepted and not stored: this is a change-only
    #   partial update with last-writer-wins, so re-applying the same call
    #   produces the same result and the same response. There is nothing a
    #   replay cache would protect.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :start_on
    #   The first day of the campaign's run window. Not after `EndOn`
    #   (`ValidationException`, `INVALID_VALUE`).
    #
    # @option params [String] :end_on
    #   The last day of the campaign's run window, inclusive and in UTC.
    #
    #   Editable only while the campaign is open, like everything else here:
    #   once the stored `EndOn` has passed the campaign is completed and this
    #   update is refused (`CAMPAIGN_COMPLETED`). Refused with
    #   `ValidationException` (`INVALID_VALUE`) when it is in the past, or
    #   earlier than the day of a scheduled send on one of the campaign's
    #   assets: move or cancel that send first. Setting it to today ends the
    #   campaign at the next UTC midnight.
    #
    # @return [Types::UpdateCampaignResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateCampaignResponse#id #id} => String
    #
    #
    # @example Example: Rename a campaign and raise its budget
    #
    #   resp = client.update_campaign({
    #     campaign_identifier: "camp-5Hq2m8x4k1p9w", 
    #     catalog: "AWS", 
    #     name: "Q4 GenAI Campaign (EMEA)", 
    #     total_budget: {
    #       amount: "40000.00", 
    #       currency_code: "USD", 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     id: "camp-5Hq2m8x4k1p9w", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_campaign({
    #     catalog: "AWS", # required, accepts AWS, Sandbox
    #     campaign_identifier: "CampaignIdentifier", # required
    #     name: "CampaignName",
    #     sender_email: "SenderEmail",
    #     privacy_policy_url: "PrivacyPolicyUrl",
    #     partner_address: "PartnerAddress",
    #     partner_badge: {
    #       s3_uri: "S3Uri", # required
    #       version_id: "S3VersionId", # required
    #     },
    #     email_target: {
    #       s3_uri: "S3Uri", # required
    #       version_id: "S3VersionId", # required
    #     },
    #     email_target_engagement_group_ids: ["EngagementGroupId"],
    #     social_connections: {
    #       "FACEBOOK" => ["SocialConnectionId"],
    #     },
    #     estimated_budget: {
    #       amount: "Amount", # required
    #       currency_code: "CurrencyCode", # required
    #     },
    #     total_budget: {
    #       amount: "Amount", # required
    #       currency_code: "CurrencyCode", # required
    #     },
    #     target_audience: {
    #       industries: ["FINANCIAL_SERVICES"], # accepts FINANCIAL_SERVICES, HEALTHCARE, MANUFACTURING, RETAIL, MEDIA_ENTERTAINMENT, ENERGY, EDUCATION, GOVERNMENT, TELECOMMUNICATIONS, AUTOMOTIVE, INSURANCE, OTHER
    #       company_sizes: ["STARTUP"], # accepts STARTUP, SMALL_BUSINESS, MID_MARKET, ENTERPRISE, GLOBAL_ENTERPRISE
    #       countries: ["CountryCode"],
    #     },
    #     client_token: "ClientToken",
    #     start_on: "UtcDate",
    #     end_on: "UtcDate",
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/UpdateCampaign AWS API Documentation
    #
    # @overload update_campaign(params = {})
    # @param [Hash] params ({})
    def update_campaign(params = {}, options = {})
      req = build_request(:update_campaign, params)
      req.send_request(options)
    end

    # Updates an asset's field values, layout or send time. Refused with
    # `ConflictException` while the campaign's running activation task
    # still owns the asset (`ASSET_START_IN_PROGRESS`), and for a live email
    # or social post (`ASSET_ALREADY_ACTIVE`): deactivate it first.
    #
    # @option params [required, String] :catalog
    #   The catalog (AWS or Sandbox).
    #
    # @option params [required, String] :campaign_identifier
    #   The campaign identifier.
    #
    # @option params [required, String] :campaign_asset_identifier
    #   The asset identifier.
    #
    # @option params [Array<Types::FieldValueInput>] :field_values
    #   Value-only updates to the asset's pinned template fields, keyed by
    #   FieldId. The field schema (labels, descriptions, constraints,
    #   placeholders, image defaults) is service-owned and pinned at
    #   instantiation, so clients send only the values they are changing.
    #   Fields omitted keep their stored values; send the entry with `Value`
    #   omitted to clear one.
    #
    #   Named `FieldValues` to match the member it edits on `CampaignAsset`,
    #   which is the same concept read back. It was `templateFieldUpdates`;
    #   the two names for one concept were the defect, not the length.
    #
    # @option params [String] :layout
    #   Selects a multi-layout asset's layout: one of the values in
    #   `CampaignAsset.layout.options`.
    #
    #   PATCH: omitted leaves the selection unchanged, and there is no way to
    #   clear it. A value that is not one of the asset's options — or any
    #   value on a single-layout asset — is a plain `ValidationException`, and
    #   nothing in the call is applied. Every pinned field stays writable
    #   whichever layout is selected.
    #
    # @option params [String] :send_mode
    #   When a **sendable** asset (`EMAIL`, `SOCIAL_POST`) sends: on
    #   activation, or at `ScheduledSendAt`.
    #
    #   A mode beside a value rather than a union, on purpose:
    #   `ScheduledSendAt` stays a plain `Timestamp`, and the precedent is
    #   EventBridge Scheduler's `FlexibleTimeWindow { Mode,
    #   MaximumWindowInMinutes }`. The pair is checked as one, and a request
    #   where they disagree is refused with `ValidationException`
    #   (`INVALID_VALUE`, naming the member) and applies nothing:
    #
    #   * `SCHEDULED` requires `ScheduledSendAt`; a reschedule resends
    #     `SCHEDULED` with the new time;
    #   * `ON_ACTIVATION` forbids `ScheduledSendAt`, and drops any time
    #     already stored;
    #   * `ScheduledSendAt` without `SendMode` is refused.
    #
    #   PATCH: omitted leaves both unchanged. Until a mode is chosen the asset
    #   reports `SEND_MODE_MISSING` and does not activate: no default, because
    #   an unchosen send mails the real audience. Rejected with
    #   `ValidationException` (`NOT_SUPPORTED_FOR_CATEGORY`) for a category
    #   that has no send (`LANDING_PAGE`, `DOCUMENT`, `BANNER_AD`). Like every
    #   other edit, it reaches the delivery platform at the asset's next
    #   activation, and a live email or social post refuses it
    #   (`ASSET_ALREADY_ACTIVE`): deactivate first.
    #
    # @option params [Time,DateTime,Date,Integer,String] :scheduled_send_at
    #   The send time, with `SendMode: SCHEDULED` and only then. See
    #   `SendMode`.
    #
    #   Must be at least an hour out (`SEND_WINDOW_TOO_SOON`), unless it is
    #   the time already stored: resending the stored mode and time changes
    #   nothing and is accepted, so a form that always resubmits does not trip
    #   the window.
    #
    #   Must also fall on or before the campaign's `EndOn` (by the end of
    #   that UTC day): refused with `ValidationException` (`INVALID_VALUE`)
    #   otherwise, so nothing is scheduled to send after the campaign
    #   completes.
    #
    #   Was `scheduleDate`, a `YYYY-MM-DD` string. Retyped because a date
    #   alone cannot express a send *time*, which is the whole point of a
    #   schedule — and because the resource already spelled the same concept
    #   `ScheduledSendAt` on the activation responses. Two spellings of one
    #   concept on one resource was the defect.
    #
    # @option params [String] :client_token
    #   Idempotency token. Retry-safety only — this is **not** a concurrency
    #   token, and sequential edits to one field are last-writer-wins.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::UpdateCampaignAssetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateCampaignAssetResponse#id #id} => String
    #   * {Types::UpdateCampaignAssetResponse#state #state} => String
    #   * {Types::UpdateCampaignAssetResponse#activation_issues #activation_issues} => Array&lt;Types::ActivationIssue&gt;
    #
    #
    # @example Example: Update asset content
    #
    #   resp = client.update_campaign_asset({
    #     campaign_asset_identifier: "ast-4b81e0c9f2a7b", 
    #     campaign_identifier: "camp-5Hq2m8x4k1p9w", 
    #     catalog: "AWS", 
    #     field_values: [
    #       {
    #         field_id: "Subject", 
    #         value: {
    #           text: "New subject line", 
    #         }, 
    #       }, 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     activation_issues: [
    #       {
    #         code: "REQUIRED_FIELD_MISSING", 
    #         field_id: "Headline", 
    #         message: "This required field is empty.", 
    #       }, 
    #     ], 
    #     id: "ast-4b81e0c9f2a7b", 
    #     state: "ACTIVE", 
    #   }
    #
    # @example Example: Reschedule a sendable asset
    #
    #   resp = client.update_campaign_asset({
    #     campaign_asset_identifier: "ast-4b81e0c9f2a7b", 
    #     campaign_identifier: "camp-5Hq2m8x4k1p9w", 
    #     catalog: "AWS", 
    #     client_token: "f2a7c1e4-9b3d-4a51-8e6f-0c2d5b8a7e13", 
    #     scheduled_send_at: Time.parse(1793491200), 
    #     send_mode: "SCHEDULED", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     activation_issues: [
    #     ], 
    #     id: "ast-4b81e0c9f2a7b", 
    #     state: "INACTIVE", 
    #   }
    #
    # @example Example: Copy an image from a previous campaign's asset
    #
    #   # The image already stored on another of your assets is copied into this field. It is checked
    #   # against this field's constraints and not scanned again. The call also needs
    #   # partnercentral:GetCampaignAsset on the source campaign.
    #
    #   resp = client.update_campaign_asset({
    #     campaign_asset_identifier: "ast-4b81e0c9f2a7b", 
    #     campaign_identifier: "camp-5Hq2m8x4k1p9w", 
    #     catalog: "AWS", 
    #     field_values: [
    #       {
    #         field_id: "HeaderImage", 
    #         value: {
    #           campaign_asset_image: {
    #             campaign_asset_identifier: "ast-0f9e8d7c6b5a2", 
    #             campaign_identifier: "camp-2Lp7d9f3j6s1z", 
    #             field_id: "HeaderImage", 
    #           }, 
    #         }, 
    #       }, 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     activation_issues: [
    #     ], 
    #     id: "ast-4b81e0c9f2a7b", 
    #     state: "INACTIVE", 
    #   }
    #
    # @example Example: Use a suggested image from Build with AI
    #
    #   # The URL Build with AI returned for a suggested image is sent unchanged as imageReference. The
    #   # image is copied into this asset and not scanned. Any other URL is refused.
    #
    #   resp = client.update_campaign_asset({
    #     campaign_asset_identifier: "ast-4b81e0c9f2a7b", 
    #     campaign_identifier: "camp-5Hq2m8x4k1p9w", 
    #     catalog: "AWS", 
    #     field_values: [
    #       {
    #         field_id: "HeaderImage", 
    #         value: {
    #           image_reference: "https://d111111abcdef8.cloudfront.net/suggested-image-url-from-build-with-ai.jpg", 
    #         }, 
    #       }, 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     activation_issues: [
    #     ], 
    #     id: "ast-4b81e0c9f2a7b", 
    #     state: "INACTIVE", 
    #   }
    #
    # @example Example: An update refused for two fields at once
    #
    #   # Every failed field is reported in one refusal, and nothing applies — a declined image and an
    #   # over-long headline arrive together in `fieldList`, each with its own `code`. This replaced a
    #   # read-path `fileDetails[]` report (DG-040 Decision 11), so a partner handles image and text
    #   # failures the same way.
    #
    #   resp = client.update_campaign_asset({
    #     campaign_asset_identifier: "ast-4b81e0c9f2a7b", 
    #     campaign_identifier: "camp-5Hq2m8x4k1p9w", 
    #     catalog: "AWS", 
    #     field_values: [
    #       {
    #         field_id: "HeaderImage", 
    #         value: {
    #           image_reference: "s3://staging-bucket/123456789012/hero.png?versionId=v1", 
    #         }, 
    #       }, 
    #       {
    #         field_id: "Headline", 
    #         value: {
    #           text: "This headline is far longer than the field allows", 
    #         }, 
    #       }, 
    #     ], 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_campaign_asset({
    #     catalog: "AWS", # required, accepts AWS, Sandbox
    #     campaign_identifier: "CampaignIdentifier", # required
    #     campaign_asset_identifier: "CampaignAssetId", # required
    #     field_values: [
    #       {
    #         field_id: "TemplateFieldId", # required
    #         value: {
    #           text: "AssetBodyContent",
    #           image_reference: "FileReference",
    #           linked_asset_id: "CampaignAssetId",
    #           campaign_asset_image: {
    #             campaign_identifier: "CampaignIdentifier", # required
    #             campaign_asset_identifier: "CampaignAssetId", # required
    #             field_id: "TemplateFieldId", # required
    #           },
    #         },
    #       },
    #     ],
    #     layout: "LayoutOptionValue",
    #     send_mode: "ON_ACTIVATION", # accepts ON_ACTIVATION, SCHEDULED
    #     scheduled_send_at: Time.now,
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.state #=> String, one of "INACTIVE", "ACTIVE"
    #   resp.activation_issues #=> Array
    #   resp.activation_issues[0].code #=> String, one of "ASSET_NOT_FOUND", "ASSET_NOT_STARTABLE", "ASSET_START_IN_PROGRESS", "ASSET_ALREADY_ACTIVE", "SEND_WINDOW_TOO_SOON", "REQUIRED_FIELD_MISSING", "RECIPIENT_LIST_MISSING", "ENGAGEMENT_GROUPS_UNAVAILABLE", "SENDER_EMAIL_MISSING", "END_ON_MISSING", "ASSET_CONTENT_MISSING", "ASSET_NOT_ACTIVATABLE", "TEMPLATE_CHANGED", "PARTNER_IMAGE_REJECTED", "PREREQUISITE_ASSET_NOT_ACTIVE", "PARTNER_NOT_PROVISIONED", "RECIPIENT_LIST_EMPTY", "RECIPIENT_LIMIT_EXCEEDED", "CONTACT_OPT_IN_REQUIRED", "MAILING_CREDITS_EXHAUSTED", "SENDER_EMAIL_INVALID", "SOCIAL_CONNECTION_MISSING", "SOCIAL_CONNECTION_EXPIRED", "SOCIAL_CONNECTION_PAGE_REQUIRED", "DELIVERY_FAILED", "INTERNAL_ERROR", "MAILING_CREDITS_INSUFFICIENT", "PARTNER_PROFILE_FIELD_MISSING", "PARTNER_PROFILE_FIELD_DOES_NOT_FIT", "SOCIAL_CONNECTION_NOT_CHOSEN", "PRIVACY_POLICY_URL_MISSING", "PARTNER_ADDRESS_MISSING", "SEND_MODE_MISSING", "CONTENT_REJECTED", "URL_NOT_ALLOWED", "SENDER_NOT_APPROVED"
    #   resp.activation_issues[0].field_id #=> String
    #   resp.activation_issues[0].campaign_setting #=> String, one of "SENDER_EMAIL", "END_ON", "EMAIL_TARGET", "PRIVACY_POLICY_URL", "PARTNER_ADDRESS", "PARTNER_BADGE"
    #   resp.activation_issues[0].partner_profile_field #=> String, one of "DISPLAY_NAME", "WEBSITE_URL", "LOGO", "WEBSITE_DOMAIN", "COPYRIGHT_LINE", "PARTNER_DETAILS", "COPYRIGHT_AND_DETAILS", "COPYRIGHT_YEAR_LINE"
    #   resp.activation_issues[0].affected_asset_ids #=> Array
    #   resp.activation_issues[0].affected_asset_ids[0] #=> String
    #   resp.activation_issues[0].message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/UpdateCampaignAsset AWS API Documentation
    #
    # @overload update_campaign_asset(params = {})
    # @param [Hash] params ({})
    def update_campaign_asset(params = {}, options = {})
      req = build_request(:update_campaign_asset, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::PartnerCentralMarketing')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-partnercentralmarketing'
      context[:gem_version] = '1.0.0'
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
