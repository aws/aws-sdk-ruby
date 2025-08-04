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
require 'aws-sdk-core/plugins/protocols/rest_json'

module Aws::Route53Profiles
  # An API client for Route53Profiles.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::Route53Profiles::Client.new(
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

    @identifier = :route53profiles

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
    add_plugin(Aws::Plugins::Protocols::RestJson)
    add_plugin(Aws::Route53Profiles::Plugins::Endpoints)

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
    #     Used only in `standard` and adaptive retry modes. Specifies whether to apply
    #     a clock skew correction and retry requests with skewed client clocks.
    #
    #   @option options [String] :defaults_mode ("legacy")
    #     See {Aws::DefaultsModeConfiguration} for a list of the
    #     accepted modes and the configuration defaults that are included.
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
    #     4 times. Used in `standard` and `adaptive` retry modes.
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
    #   @option options [Aws::Route53Profiles::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::Route53Profiles::EndpointParameters`.
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

    # Associates a Route 53 Profiles profile with a VPC. A VPC can have only
    # one Profile associated with it, but a Profile can be associated with
    # 1000 of VPCs (and you can request a higher quota). For more
    # information, see
    # [https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DNSLimitations.html#limits-api-entities][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DNSLimitations.html#limits-api-entities
    #
    # @option params [required, String] :name
    #   A name for the association.
    #
    # @option params [required, String] :profile_id
    #   ID of the Profile.
    #
    # @option params [required, String] :resource_id
    #   The ID of the VPC.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of the tag keys and values that you want to identify the
    #   Profile association.
    #
    # @return [Types::AssociateProfileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociateProfileResponse#profile_association #profile_association} => Types::ProfileAssociation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_profile({
    #     name: "Name", # required
    #     profile_id: "ResourceId", # required
    #     resource_id: "ResourceId", # required
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
    #   resp.profile_association.creation_time #=> Time
    #   resp.profile_association.id #=> String
    #   resp.profile_association.modification_time #=> Time
    #   resp.profile_association.name #=> String
    #   resp.profile_association.owner_id #=> String
    #   resp.profile_association.profile_id #=> String
    #   resp.profile_association.resource_id #=> String
    #   resp.profile_association.status #=> String, one of "COMPLETE", "DELETING", "UPDATING", "CREATING", "DELETED", "FAILED"
    #   resp.profile_association.status_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53profiles-2018-05-10/AssociateProfile AWS API Documentation
    #
    # @overload associate_profile(params = {})
    # @param [Hash] params ({})
    def associate_profile(params = {}, options = {})
      req = build_request(:associate_profile, params)
      req.send_request(options)
    end

    # Associates a DNS reource configuration to a Route 53 Profile.
    #
    # @option params [required, String] :name
    #   Name for the resource association.
    #
    # @option params [required, String] :profile_id
    #   ID of the Profile.
    #
    # @option params [required, String] :resource_arn
    #   Amazon resource number, ARN, of the DNS resource.
    #
    # @option params [String] :resource_properties
    #   If you are adding a DNS Firewall rule group, include also a priority.
    #   The priority indicates the processing order for the rule groups,
    #   starting with the priority assinged the lowest value.
    #
    #   The allowed values for priority are between 100 and 9900.
    #
    # @return [Types::AssociateResourceToProfileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociateResourceToProfileResponse#profile_resource_association #profile_resource_association} => Types::ProfileResourceAssociation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_resource_to_profile({
    #     name: "Name", # required
    #     profile_id: "ResourceId", # required
    #     resource_arn: "Arn", # required
    #     resource_properties: "ResourceProperties",
    #   })
    #
    # @example Response structure
    #
    #   resp.profile_resource_association.creation_time #=> Time
    #   resp.profile_resource_association.id #=> String
    #   resp.profile_resource_association.modification_time #=> Time
    #   resp.profile_resource_association.name #=> String
    #   resp.profile_resource_association.owner_id #=> String
    #   resp.profile_resource_association.profile_id #=> String
    #   resp.profile_resource_association.resource_arn #=> String
    #   resp.profile_resource_association.resource_properties #=> String
    #   resp.profile_resource_association.resource_type #=> String
    #   resp.profile_resource_association.status #=> String, one of "COMPLETE", "DELETING", "UPDATING", "CREATING", "DELETED", "FAILED"
    #   resp.profile_resource_association.status_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53profiles-2018-05-10/AssociateResourceToProfile AWS API Documentation
    #
    # @overload associate_resource_to_profile(params = {})
    # @param [Hash] params ({})
    def associate_resource_to_profile(params = {}, options = {})
      req = build_request(:associate_resource_to_profile, params)
      req.send_request(options)
    end

    # Creates an empty Route 53 Profile.
    #
    # @option params [required, String] :client_token
    #   `ClientToken` is an idempotency token that ensures a call to
    #   `CreateProfile` completes only once. You choose the value to pass. For
    #   example, an issue might prevent you from getting a response from
    #   `CreateProfile`. In this case, safely retry your call to
    #   `CreateProfile` by using the same `CreateProfile` parameter value.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :name
    #   A name for the Profile.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of the tag keys and values that you want to associate with the
    #   Route 53 Profile.
    #
    # @return [Types::CreateProfileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateProfileResponse#profile #profile} => Types::Profile
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_profile({
    #     client_token: "CreatorRequestId", # required
    #     name: "Name", # required
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
    #   resp.profile.arn #=> String
    #   resp.profile.client_token #=> String
    #   resp.profile.creation_time #=> Time
    #   resp.profile.id #=> String
    #   resp.profile.modification_time #=> Time
    #   resp.profile.name #=> String
    #   resp.profile.owner_id #=> String
    #   resp.profile.share_status #=> String, one of "NOT_SHARED", "SHARED_WITH_ME", "SHARED_BY_ME"
    #   resp.profile.status #=> String, one of "COMPLETE", "DELETING", "UPDATING", "CREATING", "DELETED", "FAILED"
    #   resp.profile.status_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53profiles-2018-05-10/CreateProfile AWS API Documentation
    #
    # @overload create_profile(params = {})
    # @param [Hash] params ({})
    def create_profile(params = {}, options = {})
      req = build_request(:create_profile, params)
      req.send_request(options)
    end

    # Deletes the specified Route 53 Profile. Before you can delete a
    # profile, you must first disassociate it from all VPCs.
    #
    # @option params [required, String] :profile_id
    #   The ID of the Profile that you want to delete.
    #
    # @return [Types::DeleteProfileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteProfileResponse#profile #profile} => Types::Profile
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_profile({
    #     profile_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.profile.arn #=> String
    #   resp.profile.client_token #=> String
    #   resp.profile.creation_time #=> Time
    #   resp.profile.id #=> String
    #   resp.profile.modification_time #=> Time
    #   resp.profile.name #=> String
    #   resp.profile.owner_id #=> String
    #   resp.profile.share_status #=> String, one of "NOT_SHARED", "SHARED_WITH_ME", "SHARED_BY_ME"
    #   resp.profile.status #=> String, one of "COMPLETE", "DELETING", "UPDATING", "CREATING", "DELETED", "FAILED"
    #   resp.profile.status_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53profiles-2018-05-10/DeleteProfile AWS API Documentation
    #
    # @overload delete_profile(params = {})
    # @param [Hash] params ({})
    def delete_profile(params = {}, options = {})
      req = build_request(:delete_profile, params)
      req.send_request(options)
    end

    # Dissociates a specified Route 53 Profile from the specified VPC.
    #
    # @option params [required, String] :profile_id
    #   ID of the Profile.
    #
    # @option params [required, String] :resource_id
    #   The ID of the VPC.
    #
    # @return [Types::DisassociateProfileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DisassociateProfileResponse#profile_association #profile_association} => Types::ProfileAssociation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_profile({
    #     profile_id: "ResourceId", # required
    #     resource_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.profile_association.creation_time #=> Time
    #   resp.profile_association.id #=> String
    #   resp.profile_association.modification_time #=> Time
    #   resp.profile_association.name #=> String
    #   resp.profile_association.owner_id #=> String
    #   resp.profile_association.profile_id #=> String
    #   resp.profile_association.resource_id #=> String
    #   resp.profile_association.status #=> String, one of "COMPLETE", "DELETING", "UPDATING", "CREATING", "DELETED", "FAILED"
    #   resp.profile_association.status_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53profiles-2018-05-10/DisassociateProfile AWS API Documentation
    #
    # @overload disassociate_profile(params = {})
    # @param [Hash] params ({})
    def disassociate_profile(params = {}, options = {})
      req = build_request(:disassociate_profile, params)
      req.send_request(options)
    end

    # Dissoaciated a specified resource, from the Route 53 Profile.
    #
    # @option params [required, String] :profile_id
    #   The ID of the Profile.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #
    # @return [Types::DisassociateResourceFromProfileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DisassociateResourceFromProfileResponse#profile_resource_association #profile_resource_association} => Types::ProfileResourceAssociation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_resource_from_profile({
    #     profile_id: "ResourceId", # required
    #     resource_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.profile_resource_association.creation_time #=> Time
    #   resp.profile_resource_association.id #=> String
    #   resp.profile_resource_association.modification_time #=> Time
    #   resp.profile_resource_association.name #=> String
    #   resp.profile_resource_association.owner_id #=> String
    #   resp.profile_resource_association.profile_id #=> String
    #   resp.profile_resource_association.resource_arn #=> String
    #   resp.profile_resource_association.resource_properties #=> String
    #   resp.profile_resource_association.resource_type #=> String
    #   resp.profile_resource_association.status #=> String, one of "COMPLETE", "DELETING", "UPDATING", "CREATING", "DELETED", "FAILED"
    #   resp.profile_resource_association.status_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53profiles-2018-05-10/DisassociateResourceFromProfile AWS API Documentation
    #
    # @overload disassociate_resource_from_profile(params = {})
    # @param [Hash] params ({})
    def disassociate_resource_from_profile(params = {}, options = {})
      req = build_request(:disassociate_resource_from_profile, params)
      req.send_request(options)
    end

    # Returns information about a specified Route 53 Profile, such as
    # whether whether the Profile is shared, and the current status of the
    # Profile.
    #
    # @option params [required, String] :profile_id
    #   ID of the Profile.
    #
    # @return [Types::GetProfileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetProfileResponse#profile #profile} => Types::Profile
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_profile({
    #     profile_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.profile.arn #=> String
    #   resp.profile.client_token #=> String
    #   resp.profile.creation_time #=> Time
    #   resp.profile.id #=> String
    #   resp.profile.modification_time #=> Time
    #   resp.profile.name #=> String
    #   resp.profile.owner_id #=> String
    #   resp.profile.share_status #=> String, one of "NOT_SHARED", "SHARED_WITH_ME", "SHARED_BY_ME"
    #   resp.profile.status #=> String, one of "COMPLETE", "DELETING", "UPDATING", "CREATING", "DELETED", "FAILED"
    #   resp.profile.status_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53profiles-2018-05-10/GetProfile AWS API Documentation
    #
    # @overload get_profile(params = {})
    # @param [Hash] params ({})
    def get_profile(params = {}, options = {})
      req = build_request(:get_profile, params)
      req.send_request(options)
    end

    # Retrieves a Route 53 Profile association for a VPC. A VPC can have
    # only one Profile association, but a Profile can be associated with up
    # to 5000 VPCs.
    #
    # @option params [required, String] :profile_association_id
    #   The identifier of the association you want to get information about.
    #
    # @return [Types::GetProfileAssociationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetProfileAssociationResponse#profile_association #profile_association} => Types::ProfileAssociation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_profile_association({
    #     profile_association_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.profile_association.creation_time #=> Time
    #   resp.profile_association.id #=> String
    #   resp.profile_association.modification_time #=> Time
    #   resp.profile_association.name #=> String
    #   resp.profile_association.owner_id #=> String
    #   resp.profile_association.profile_id #=> String
    #   resp.profile_association.resource_id #=> String
    #   resp.profile_association.status #=> String, one of "COMPLETE", "DELETING", "UPDATING", "CREATING", "DELETED", "FAILED"
    #   resp.profile_association.status_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53profiles-2018-05-10/GetProfileAssociation AWS API Documentation
    #
    # @overload get_profile_association(params = {})
    # @param [Hash] params ({})
    def get_profile_association(params = {}, options = {})
      req = build_request(:get_profile_association, params)
      req.send_request(options)
    end

    # Returns information about a specified Route 53 Profile resource
    # association.
    #
    # @option params [required, String] :profile_resource_association_id
    #   The ID of the profile resource association that you want to get
    #   information about.
    #
    # @return [Types::GetProfileResourceAssociationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetProfileResourceAssociationResponse#profile_resource_association #profile_resource_association} => Types::ProfileResourceAssociation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_profile_resource_association({
    #     profile_resource_association_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.profile_resource_association.creation_time #=> Time
    #   resp.profile_resource_association.id #=> String
    #   resp.profile_resource_association.modification_time #=> Time
    #   resp.profile_resource_association.name #=> String
    #   resp.profile_resource_association.owner_id #=> String
    #   resp.profile_resource_association.profile_id #=> String
    #   resp.profile_resource_association.resource_arn #=> String
    #   resp.profile_resource_association.resource_properties #=> String
    #   resp.profile_resource_association.resource_type #=> String
    #   resp.profile_resource_association.status #=> String, one of "COMPLETE", "DELETING", "UPDATING", "CREATING", "DELETED", "FAILED"
    #   resp.profile_resource_association.status_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53profiles-2018-05-10/GetProfileResourceAssociation AWS API Documentation
    #
    # @overload get_profile_resource_association(params = {})
    # @param [Hash] params ({})
    def get_profile_resource_association(params = {}, options = {})
      req = build_request(:get_profile_resource_association, params)
      req.send_request(options)
    end

    # Lists all the VPCs that the specified Route 53 Profile is associated
    # with.
    #
    # @option params [Integer] :max_results
    #   The maximum number of objects that you want to return for this
    #   request. If more objects are available, in the response, a `NextToken`
    #   value, which you can use in a subsequent call to get the next batch of
    #   objects, is provided.
    #
    #   If you don't specify a value for `MaxResults`, up to 100 objects are
    #   returned.
    #
    # @option params [String] :next_token
    #   For the first call to this list request, omit this value.
    #
    #   When you request a list of objects, at most the number of objects
    #   specified by `MaxResults` is returned. If more objects are available
    #   for retrieval, a `NextToken` value is returned in the response. To
    #   retrieve the next batch of objects, use the token that was returned
    #   for the prior request in your next request.
    #
    # @option params [String] :profile_id
    #   ID of the Profile.
    #
    # @option params [String] :resource_id
    #   ID of the VPC.
    #
    # @return [Types::ListProfileAssociationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListProfileAssociationsResponse#next_token #next_token} => String
    #   * {Types::ListProfileAssociationsResponse#profile_associations #profile_associations} => Array&lt;Types::ProfileAssociation&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_profile_associations({
    #     max_results: 1,
    #     next_token: "NextToken",
    #     profile_id: "ResourceId",
    #     resource_id: "ResourceId",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.profile_associations #=> Array
    #   resp.profile_associations[0].creation_time #=> Time
    #   resp.profile_associations[0].id #=> String
    #   resp.profile_associations[0].modification_time #=> Time
    #   resp.profile_associations[0].name #=> String
    #   resp.profile_associations[0].owner_id #=> String
    #   resp.profile_associations[0].profile_id #=> String
    #   resp.profile_associations[0].resource_id #=> String
    #   resp.profile_associations[0].status #=> String, one of "COMPLETE", "DELETING", "UPDATING", "CREATING", "DELETED", "FAILED"
    #   resp.profile_associations[0].status_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53profiles-2018-05-10/ListProfileAssociations AWS API Documentation
    #
    # @overload list_profile_associations(params = {})
    # @param [Hash] params ({})
    def list_profile_associations(params = {}, options = {})
      req = build_request(:list_profile_associations, params)
      req.send_request(options)
    end

    # Lists all the resource associations for the specified Route 53
    # Profile.
    #
    # @option params [Integer] :max_results
    #   The maximum number of objects that you want to return for this
    #   request. If more objects are available, in the response, a `NextToken`
    #   value, which you can use in a subsequent call to get the next batch of
    #   objects, is provided.
    #
    #   If you don't specify a value for `MaxResults`, up to 100 objects are
    #   returned.
    #
    # @option params [String] :next_token
    #   For the first call to this list request, omit this value.
    #
    #   When you request a list of objects, at most the number of objects
    #   specified by `MaxResults` is returned. If more objects are available
    #   for retrieval, a `NextToken` value is returned in the response. To
    #   retrieve the next batch of objects, use the token that was returned
    #   for the prior request in your next request.
    #
    # @option params [required, String] :profile_id
    #   The ID of the Profile.
    #
    # @option params [String] :resource_type
    #   ID of a resource if you want information on only one type.
    #
    # @return [Types::ListProfileResourceAssociationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListProfileResourceAssociationsResponse#next_token #next_token} => String
    #   * {Types::ListProfileResourceAssociationsResponse#profile_resource_associations #profile_resource_associations} => Array&lt;Types::ProfileResourceAssociation&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_profile_resource_associations({
    #     max_results: 1,
    #     next_token: "NextToken",
    #     profile_id: "ResourceId", # required
    #     resource_type: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.profile_resource_associations #=> Array
    #   resp.profile_resource_associations[0].creation_time #=> Time
    #   resp.profile_resource_associations[0].id #=> String
    #   resp.profile_resource_associations[0].modification_time #=> Time
    #   resp.profile_resource_associations[0].name #=> String
    #   resp.profile_resource_associations[0].owner_id #=> String
    #   resp.profile_resource_associations[0].profile_id #=> String
    #   resp.profile_resource_associations[0].resource_arn #=> String
    #   resp.profile_resource_associations[0].resource_properties #=> String
    #   resp.profile_resource_associations[0].resource_type #=> String
    #   resp.profile_resource_associations[0].status #=> String, one of "COMPLETE", "DELETING", "UPDATING", "CREATING", "DELETED", "FAILED"
    #   resp.profile_resource_associations[0].status_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53profiles-2018-05-10/ListProfileResourceAssociations AWS API Documentation
    #
    # @overload list_profile_resource_associations(params = {})
    # @param [Hash] params ({})
    def list_profile_resource_associations(params = {}, options = {})
      req = build_request(:list_profile_resource_associations, params)
      req.send_request(options)
    end

    # Lists all the Route 53 Profiles associated with your Amazon Web
    # Services account.
    #
    # @option params [Integer] :max_results
    #   The maximum number of objects that you want to return for this
    #   request. If more objects are available, in the response, a `NextToken`
    #   value, which you can use in a subsequent call to get the next batch of
    #   objects, is provided.
    #
    #   If you don't specify a value for `MaxResults`, up to 100 objects are
    #   returned.
    #
    # @option params [String] :next_token
    #   For the first call to this list request, omit this value.
    #
    #   When you request a list of objects, at most the number of objects
    #   specified by `MaxResults` is returned. If more objects are available
    #   for retrieval, a `NextToken` value is returned in the response. To
    #   retrieve the next batch of objects, use the token that was returned
    #   for the prior request in your next request.
    #
    # @return [Types::ListProfilesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListProfilesResponse#next_token #next_token} => String
    #   * {Types::ListProfilesResponse#profile_summaries #profile_summaries} => Array&lt;Types::ProfileSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_profiles({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.profile_summaries #=> Array
    #   resp.profile_summaries[0].arn #=> String
    #   resp.profile_summaries[0].id #=> String
    #   resp.profile_summaries[0].name #=> String
    #   resp.profile_summaries[0].share_status #=> String, one of "NOT_SHARED", "SHARED_WITH_ME", "SHARED_BY_ME"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53profiles-2018-05-10/ListProfiles AWS API Documentation
    #
    # @overload list_profiles(params = {})
    # @param [Hash] params ({})
    def list_profiles(params = {}, options = {})
      req = build_request(:list_profiles, params)
      req.send_request(options)
    end

    # Lists the tags that you associated with the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) for the resource that you want to list
    #   the tags for.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53profiles-2018-05-10/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Adds one or more tags to a specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) for the resource that you want to add
    #   tags to.
    #
    # @option params [required, Hash<String,String>] :tags
    #   The tags that you want to add to the specified resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "Arn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53profiles-2018-05-10/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes one or more tags from a specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) for the resource that you want to
    #   remove tags from.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The tags that you want to remove to the specified resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "Arn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53profiles-2018-05-10/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates the specified Route 53 Profile resourse association.
    #
    # @option params [String] :name
    #   Name of the resource association.
    #
    # @option params [required, String] :profile_resource_association_id
    #   ID of the resource association.
    #
    # @option params [String] :resource_properties
    #   If you are adding a DNS Firewall rule group, include also a priority.
    #   The priority indicates the processing order for the rule groups,
    #   starting with the priority assinged the lowest value.
    #
    #   The allowed values for priority are between 100 and 9900.
    #
    # @return [Types::UpdateProfileResourceAssociationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateProfileResourceAssociationResponse#profile_resource_association #profile_resource_association} => Types::ProfileResourceAssociation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_profile_resource_association({
    #     name: "Name",
    #     profile_resource_association_id: "ResourceId", # required
    #     resource_properties: "ResourceProperties",
    #   })
    #
    # @example Response structure
    #
    #   resp.profile_resource_association.creation_time #=> Time
    #   resp.profile_resource_association.id #=> String
    #   resp.profile_resource_association.modification_time #=> Time
    #   resp.profile_resource_association.name #=> String
    #   resp.profile_resource_association.owner_id #=> String
    #   resp.profile_resource_association.profile_id #=> String
    #   resp.profile_resource_association.resource_arn #=> String
    #   resp.profile_resource_association.resource_properties #=> String
    #   resp.profile_resource_association.resource_type #=> String
    #   resp.profile_resource_association.status #=> String, one of "COMPLETE", "DELETING", "UPDATING", "CREATING", "DELETED", "FAILED"
    #   resp.profile_resource_association.status_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53profiles-2018-05-10/UpdateProfileResourceAssociation AWS API Documentation
    #
    # @overload update_profile_resource_association(params = {})
    # @param [Hash] params ({})
    def update_profile_resource_association(params = {}, options = {})
      req = build_request(:update_profile_resource_association, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::Route53Profiles')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-route53profiles'
      context[:gem_version] = '1.23.0'
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
