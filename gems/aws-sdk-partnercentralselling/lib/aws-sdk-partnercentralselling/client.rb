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
require 'aws-sdk-core/plugins/protocols/json_rpc'

module Aws::PartnerCentralSelling
  # An API client for PartnerCentralSelling.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::PartnerCentralSelling::Client.new(
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

    @identifier = :partnercentralselling

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
    add_plugin(Aws::Plugins::Protocols::JsonRpc)
    add_plugin(Aws::PartnerCentralSelling::Plugins::Endpoints)

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
    #   @option options [Boolean] :simple_json (false)
    #     Disables request parameter conversion, validation, and formatting.
    #     Also disables response data type conversions. The request parameters
    #     hash must be formatted exactly as the API expects.This option is useful
    #     when you want to ensure the highest level of performance by avoiding
    #     overhead of walking request parameters and response data structures.
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
    #   @option options [Aws::PartnerCentralSelling::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::PartnerCentralSelling::EndpointParameters`.
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

    # Use the `AcceptEngagementInvitation` action to accept an engagement
    # invitation shared by AWS. Accepting the invitation indicates your
    # willingness to participate in the engagement, granting you access to
    # all engagement-related data.
    #
    # @option params [required, String] :catalog
    #   The `CatalogType` parameter specifies the catalog associated with the
    #   engagement invitation. Accepted values are `AWS` and `Sandbox`, which
    #   determine the environment in which the engagement invitation is
    #   managed.
    #
    # @option params [required, String] :identifier
    #   The `Identifier` parameter in the `AcceptEngagementInvitationRequest`
    #   specifies the unique identifier of the `EngagementInvitation` to be
    #   accepted. Providing the correct identifier ensures that the intended
    #   invitation is accepted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.accept_engagement_invitation({
    #     catalog: "CatalogIdentifier", # required
    #     identifier: "EngagementInvitationArnOrIdentifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/AcceptEngagementInvitation AWS API Documentation
    #
    # @overload accept_engagement_invitation(params = {})
    # @param [Hash] params ({})
    def accept_engagement_invitation(params = {}, options = {})
      req = build_request(:accept_engagement_invitation, params)
      req.send_request(options)
    end

    # Enables you to reassign an existing `Opportunity` to another user
    # within your Partner Central account. The specified user receives the
    # opportunity, and it appears on their Partner Central dashboard,
    # allowing them to take necessary actions or proceed with the
    # opportunity.
    #
    # This is useful for distributing opportunities to the appropriate team
    # members or departments within your organization, ensuring that each
    # opportunity is handled by the right person. By default, the
    # opportunity owner is the one who creates it. Currently, there's no
    # API to enumerate the list of available users.
    #
    # @option params [required, String] :catalog
    #   Specifies the catalog associated with the request. This field takes a
    #   string value from a predefined list: `AWS` or `Sandbox`. The catalog
    #   determines which environment the opportunity is assigned in. Use `AWS`
    #   to assign real opportunities in the Amazon Web Services catalog, and
    #   `Sandbox` for testing in secure, isolated environments.
    #
    # @option params [required, String] :identifier
    #   Requires the `Opportunity`'s unique identifier when you want to
    #   assign it to another user. Provide the correct identifier so the
    #   intended opportunity is reassigned.
    #
    # @option params [required, Types::AssigneeContact] :assignee
    #   Specifies the user or team member responsible for managing the
    #   assigned opportunity. This field identifies the *Assignee* based on
    #   the partner's internal team structure. Ensure that the email address
    #   is associated with a registered user in your Partner Central account.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.assign_opportunity({
    #     catalog: "CatalogIdentifier", # required
    #     identifier: "OpportunityIdentifier", # required
    #     assignee: { # required
    #       email: "Email", # required
    #       first_name: "AssigneeContactFirstNameString", # required
    #       last_name: "AssigneeContactLastNameString", # required
    #       phone: "PhoneNumber",
    #       business_title: "JobTitle", # required
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/AssignOpportunity AWS API Documentation
    #
    # @overload assign_opportunity(params = {})
    # @param [Hash] params ({})
    def assign_opportunity(params = {}, options = {})
      req = build_request(:assign_opportunity, params)
      req.send_request(options)
    end

    # Enables you to create a formal association between an `Opportunity`
    # and various related entities, enriching the context and details of the
    # opportunity for better collaboration and decision making. You can
    # associate an opportunity with the following entity types:
    #
    # * Partner Solution: A software product or consulting practice created
    #   and delivered by Partners. Partner Solutions help customers address
    #   business challenges using Amazon Web Services services.
    #
    # * Amazon Web Services Products: Amazon Web Services offers many
    #   products and services that provide scalable, reliable, and
    #   cost-effective infrastructure solutions. For the latest list of
    #   Amazon Web Services products, see [Amazon Web Services products][1].
    #
    # * Amazon Web Services Marketplace private offer: Allows Amazon Web
    #   Services Marketplace sellers to extend custom pricing and terms to
    #   individual Amazon Web Services customers. Sellers can negotiate
    #   custom prices, payment schedules, and end user license terms through
    #   private offers, enabling Amazon Web Services customers to acquire
    #   software solutions tailored to their specific needs. For more
    #   information, see [Private offers in Amazon Web Services
    #   Marketplace][2].
    #
    # To obtain identifiers for these entities, use the following methods:
    #
    # * Solution: Use the `ListSolutions` operation.
    #
    # * AWS Products: For the latest list of Amazon Web Services products,
    #   see [Amazon Web Services products][1].
    #
    # * Amazon Web Services Marketplace private offer: Use the [Using the
    #   Amazon Web Services Marketplace Catalog API][3] to list entities.
    #   Specifically, use the `ListEntities` operation to retrieve a list of
    #   private offers. The request returns the details of available private
    #   offers. For more information, see [ListEntities][4].
    #
    #
    #
    # [1]: https://github.com/aws-samples/partner-crm-integration-samples/blob/main/resources/aws_products.json
    # [2]: https://docs.aws.amazon.com/marketplace/latest/buyerguide/buyer-private-offers.html
    # [3]: https://docs.aws.amazon.com/marketplace/latest/APIReference/catalog-apis.html
    # [4]: https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/API_ListEntities.html
    #
    # @option params [required, String] :catalog
    #   Specifies the catalog associated with the request. This field takes a
    #   string value from a predefined list: `AWS` or `Sandbox`. The catalog
    #   determines which environment the opportunity association is made in.
    #   Use `AWS` to associate opportunities in the Amazon Web Services
    #   catalog, and `Sandbox` for testing in secure, isolated environments.
    #
    # @option params [required, String] :opportunity_identifier
    #   Requires the `Opportunity`'s unique identifier when you want to
    #   associate it with a related entity. Provide the correct identifier so
    #   the intended opportunity is updated with the association.
    #
    # @option params [required, String] :related_entity_type
    #   Specifies the entity type that you're associating with the `
    #   Opportunity`. This helps to categorize and properly process the
    #   association.
    #
    # @option params [required, String] :related_entity_identifier
    #   Requires the related entity's unique identifier when you want to
    #   associate it with the ` Opportunity`. For Amazon Web Services
    #   Marketplace entities, provide the Amazon Resource Name (ARN). Use the
    #   [ Amazon Web Services Marketplace API][1] to obtain the ARN.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/welcome.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_opportunity({
    #     catalog: "CatalogIdentifier", # required
    #     opportunity_identifier: "OpportunityIdentifier", # required
    #     related_entity_type: "Solutions", # required, accepts Solutions, AwsProducts, AwsMarketplaceOffers, AwsMarketplaceOfferSets
    #     related_entity_identifier: "AssociateOpportunityRequestRelatedEntityIdentifierString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/AssociateOpportunity AWS API Documentation
    #
    # @overload associate_opportunity(params = {})
    # @param [Hash] params ({})
    def associate_opportunity(params = {}, options = {})
      req = build_request(:associate_opportunity, params)
      req.send_request(options)
    end

    # The `CreateEngagement` action allows you to create an `Engagement`,
    # which serves as a collaborative space between different parties such
    # as AWS Partners and AWS Sellers. This action automatically adds the
    # caller's AWS account as an active member of the newly created
    # `Engagement`.
    #
    # @option params [required, String] :catalog
    #   The `CreateEngagementRequest$Catalog` parameter specifies the catalog
    #   related to the engagement. Accepted values are `AWS` and `Sandbox`,
    #   which determine the environment in which the engagement is managed.
    #
    # @option params [required, String] :client_token
    #   The `CreateEngagementRequest$ClientToken` parameter specifies a
    #   unique, case-sensitive identifier to ensure that the request is
    #   handled exactly once. The value must not exceed sixty-four
    #   alphanumeric characters.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :title
    #   Specifies the title of the `Engagement`.
    #
    # @option params [required, String] :description
    #   Provides a description of the `Engagement`.
    #
    # @option params [Array<Types::EngagementContextDetails>] :contexts
    #   The `Contexts` field is a required array of objects, with a maximum of
    #   5 contexts allowed, specifying detailed information about customer
    #   projects associated with the Engagement. Each context object contains
    #   a `Type` field indicating the context type, which must be
    #   `CustomerProject` in this version, and a `Payload` field containing
    #   the `CustomerProject` details. The `CustomerProject` object is
    #   composed of two main components: `Customer` and `Project`. The
    #   `Customer` object includes information such as `CompanyName`,
    #   `WebsiteUrl`, `Industry`, and `CountryCode`, providing essential
    #   details about the customer. The `Project` object contains `Title`,
    #   `BusinessProblem`, and `TargetCompletionDate`, offering insights into
    #   the specific project associated with the customer. This structure
    #   allows comprehensive context to be included within the Engagement,
    #   facilitating effective collaboration between parties by providing
    #   relevant customer and project information.
    #
    # @return [Types::CreateEngagementResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateEngagementResponse#id #id} => String
    #   * {Types::CreateEngagementResponse#arn #arn} => String
    #   * {Types::CreateEngagementResponse#modified_at #modified_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_engagement({
    #     catalog: "CatalogIdentifier", # required
    #     client_token: "ClientToken", # required
    #     title: "EngagementTitle", # required
    #     description: "EngagementDescription", # required
    #     contexts: [
    #       {
    #         id: "EngagementContextIdentifier",
    #         type: "CustomerProject", # required, accepts CustomerProject, Lead
    #         payload: {
    #           customer_project: {
    #             customer: {
    #               industry: "Aerospace", # required, accepts Aerospace, Agriculture, Automotive, Computers and Electronics, Consumer Goods, Education, Energy - Oil and Gas, Energy - Power and Utilities, Financial Services, Gaming, Government, Healthcare, Hospitality, Life Sciences, Manufacturing, Marketing and Advertising, Media and Entertainment, Mining, Non-Profit Organization, Professional Services, Real Estate and Construction, Retail, Software and Internet, Telecommunications, Transportation and Logistics, Travel, Wholesale and Distribution, Other
    #               company_name: "CompanyName", # required
    #               website_url: "CompanyWebsiteUrl", # required
    #               country_code: "US", # required, accepts US, AF, AX, AL, DZ, AS, AD, AO, AI, AQ, AG, AR, AM, AW, AU, AT, AZ, BS, BH, BD, BB, BY, BE, BZ, BJ, BM, BT, BO, BQ, BA, BW, BV, BR, IO, BN, BG, BF, BI, KH, CM, CA, CV, KY, CF, TD, CL, CN, CX, CC, CO, KM, CG, CK, CR, CI, HR, CU, CW, CY, CZ, CD, DK, DJ, DM, DO, EC, EG, SV, GQ, ER, EE, ET, FK, FO, FJ, FI, FR, GF, PF, TF, GA, GM, GE, DE, GH, GI, GR, GL, GD, GP, GU, GT, GG, GN, GW, GY, HT, HM, VA, HN, HK, HU, IS, IN, ID, IR, IQ, IE, IM, IL, IT, JM, JP, JE, JO, KZ, KE, KI, KR, KW, KG, LA, LV, LB, LS, LR, LY, LI, LT, LU, MO, MK, MG, MW, MY, MV, ML, MT, MH, MQ, MR, MU, YT, MX, FM, MD, MC, MN, ME, MS, MA, MZ, MM, NA, NR, NP, NL, AN, NC, NZ, NI, NE, NG, NU, NF, MP, NO, OM, PK, PW, PS, PA, PG, PY, PE, PH, PN, PL, PT, PR, QA, RE, RO, RU, RW, BL, SH, KN, LC, MF, PM, VC, WS, SM, ST, SA, SN, RS, SC, SL, SG, SX, SK, SI, SB, SO, ZA, GS, SS, ES, LK, SD, SR, SJ, SZ, SE, CH, SY, TW, TJ, TZ, TH, TL, TG, TK, TO, TT, TN, TR, TM, TC, TV, UG, UA, AE, GB, UM, UY, UZ, VU, VE, VN, VG, VI, WF, EH, YE, ZM, ZW
    #             },
    #             project: {
    #               title: "EngagementCustomerProjectTitle", # required
    #               business_problem: "EngagementCustomerBusinessProblem", # required
    #               target_completion_date: "EngagementCustomerProjectDetailsTargetCompletionDateString", # required
    #             },
    #           },
    #           lead: {
    #             qualification_status: "LeadQualificationStatus",
    #             customer: { # required
    #               industry: "Aerospace", # accepts Aerospace, Agriculture, Automotive, Computers and Electronics, Consumer Goods, Education, Energy - Oil and Gas, Energy - Power and Utilities, Financial Services, Gaming, Government, Healthcare, Hospitality, Life Sciences, Manufacturing, Marketing and Advertising, Media and Entertainment, Mining, Non-Profit Organization, Professional Services, Real Estate and Construction, Retail, Software and Internet, Telecommunications, Transportation and Logistics, Travel, Wholesale and Distribution, Other
    #               company_name: "CompanyName", # required
    #               website_url: "CompanyWebsiteUrl",
    #               address: { # required
    #                 city: "AddressSummaryCityString",
    #                 postal_code: "AddressSummaryPostalCodeString",
    #                 state_or_region: "AddressPart",
    #                 country_code: "US", # accepts US, AF, AX, AL, DZ, AS, AD, AO, AI, AQ, AG, AR, AM, AW, AU, AT, AZ, BS, BH, BD, BB, BY, BE, BZ, BJ, BM, BT, BO, BQ, BA, BW, BV, BR, IO, BN, BG, BF, BI, KH, CM, CA, CV, KY, CF, TD, CL, CN, CX, CC, CO, KM, CG, CK, CR, CI, HR, CU, CW, CY, CZ, CD, DK, DJ, DM, DO, EC, EG, SV, GQ, ER, EE, ET, FK, FO, FJ, FI, FR, GF, PF, TF, GA, GM, GE, DE, GH, GI, GR, GL, GD, GP, GU, GT, GG, GN, GW, GY, HT, HM, VA, HN, HK, HU, IS, IN, ID, IR, IQ, IE, IM, IL, IT, JM, JP, JE, JO, KZ, KE, KI, KR, KW, KG, LA, LV, LB, LS, LR, LY, LI, LT, LU, MO, MK, MG, MW, MY, MV, ML, MT, MH, MQ, MR, MU, YT, MX, FM, MD, MC, MN, ME, MS, MA, MZ, MM, NA, NR, NP, NL, AN, NC, NZ, NI, NE, NG, NU, NF, MP, NO, OM, PK, PW, PS, PA, PG, PY, PE, PH, PN, PL, PT, PR, QA, RE, RO, RU, RW, BL, SH, KN, LC, MF, PM, VC, WS, SM, ST, SA, SN, RS, SC, SL, SG, SX, SK, SI, SB, SO, ZA, GS, SS, ES, LK, SD, SR, SJ, SZ, SE, CH, SY, TW, TJ, TZ, TH, TL, TG, TK, TO, TT, TN, TR, TM, TC, TV, UG, UA, AE, GB, UM, UY, UZ, VU, VE, VN, VG, VI, WF, EH, YE, ZM, ZW
    #               },
    #               aws_maturity: "AwsMaturity",
    #               market_segment: "Enterprise", # accepts Enterprise, Large, Medium, Small, Micro
    #             },
    #             interactions: [ # required
    #               {
    #                 source_type: "LeadSourceType", # required
    #                 source_id: "LeadSourceId", # required
    #                 source_name: "LeadSourceName", # required
    #                 usecase: "EngagementUseCase",
    #                 interaction_date: Time.now,
    #                 customer_action: "CustomerAction", # required
    #                 business_problem: "EngagementCustomerBusinessProblem",
    #                 contact: { # required
    #                   business_title: "JobTitle", # required
    #                   email: "Email", # required
    #                   first_name: "Name", # required
    #                   last_name: "Name", # required
    #                   phone: "PhoneNumber",
    #                 },
    #               },
    #             ],
    #           },
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.arn #=> String
    #   resp.modified_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/CreateEngagement AWS API Documentation
    #
    # @overload create_engagement(params = {})
    # @param [Hash] params ({})
    def create_engagement(params = {}, options = {})
      req = build_request(:create_engagement, params)
      req.send_request(options)
    end

    # Creates a new context within an existing engagement. This action
    # allows you to add contextual information such as customer projects or
    # documents to an engagement, providing additional details that help
    # facilitate collaboration between engagement members.
    #
    # @option params [required, String] :catalog
    #   Specifies the catalog associated with the engagement context request.
    #   This field takes a string value from a predefined list: `AWS` or
    #   `Sandbox`. The catalog determines which environment the engagement
    #   context is created in. Use `AWS` to create contexts in the production
    #   environment, and `Sandbox` for testing in secure, isolated
    #   environments.
    #
    # @option params [required, String] :engagement_identifier
    #   The unique identifier of the `Engagement` for which the context is
    #   being created. This parameter ensures the context is associated with
    #   the correct engagement and provides the necessary linkage between the
    #   engagement and its contextual information.
    #
    # @option params [required, String] :client_token
    #   A unique, case-sensitive identifier provided by the client to ensure
    #   that the request is handled exactly once. This token helps prevent
    #   duplicate context creations and must not exceed sixty-four
    #   alphanumeric characters. Use a UUID or other unique string to ensure
    #   idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :type
    #   Specifies the type of context being created for the engagement. This
    #   field determines the structure and content of the context payload.
    #   Valid values include `CustomerProject` for customer project-related
    #   contexts. The type field ensures that the context is properly
    #   categorized and processed according to its intended purpose.
    #
    # @option params [required, Types::EngagementContextPayload] :payload
    #   Represents the payload of an Engagement context. The structure of this
    #   payload varies based on the context type specified in the
    #   EngagementContextDetails.
    #
    # @return [Types::CreateEngagementContextResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateEngagementContextResponse#engagement_id #engagement_id} => String
    #   * {Types::CreateEngagementContextResponse#engagement_arn #engagement_arn} => String
    #   * {Types::CreateEngagementContextResponse#engagement_last_modified_at #engagement_last_modified_at} => Time
    #   * {Types::CreateEngagementContextResponse#context_id #context_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_engagement_context({
    #     catalog: "CatalogIdentifier", # required
    #     engagement_identifier: "EngagementArnOrIdentifier", # required
    #     client_token: "ClientToken", # required
    #     type: "CustomerProject", # required, accepts CustomerProject, Lead
    #     payload: { # required
    #       customer_project: {
    #         customer: {
    #           industry: "Aerospace", # required, accepts Aerospace, Agriculture, Automotive, Computers and Electronics, Consumer Goods, Education, Energy - Oil and Gas, Energy - Power and Utilities, Financial Services, Gaming, Government, Healthcare, Hospitality, Life Sciences, Manufacturing, Marketing and Advertising, Media and Entertainment, Mining, Non-Profit Organization, Professional Services, Real Estate and Construction, Retail, Software and Internet, Telecommunications, Transportation and Logistics, Travel, Wholesale and Distribution, Other
    #           company_name: "CompanyName", # required
    #           website_url: "CompanyWebsiteUrl", # required
    #           country_code: "US", # required, accepts US, AF, AX, AL, DZ, AS, AD, AO, AI, AQ, AG, AR, AM, AW, AU, AT, AZ, BS, BH, BD, BB, BY, BE, BZ, BJ, BM, BT, BO, BQ, BA, BW, BV, BR, IO, BN, BG, BF, BI, KH, CM, CA, CV, KY, CF, TD, CL, CN, CX, CC, CO, KM, CG, CK, CR, CI, HR, CU, CW, CY, CZ, CD, DK, DJ, DM, DO, EC, EG, SV, GQ, ER, EE, ET, FK, FO, FJ, FI, FR, GF, PF, TF, GA, GM, GE, DE, GH, GI, GR, GL, GD, GP, GU, GT, GG, GN, GW, GY, HT, HM, VA, HN, HK, HU, IS, IN, ID, IR, IQ, IE, IM, IL, IT, JM, JP, JE, JO, KZ, KE, KI, KR, KW, KG, LA, LV, LB, LS, LR, LY, LI, LT, LU, MO, MK, MG, MW, MY, MV, ML, MT, MH, MQ, MR, MU, YT, MX, FM, MD, MC, MN, ME, MS, MA, MZ, MM, NA, NR, NP, NL, AN, NC, NZ, NI, NE, NG, NU, NF, MP, NO, OM, PK, PW, PS, PA, PG, PY, PE, PH, PN, PL, PT, PR, QA, RE, RO, RU, RW, BL, SH, KN, LC, MF, PM, VC, WS, SM, ST, SA, SN, RS, SC, SL, SG, SX, SK, SI, SB, SO, ZA, GS, SS, ES, LK, SD, SR, SJ, SZ, SE, CH, SY, TW, TJ, TZ, TH, TL, TG, TK, TO, TT, TN, TR, TM, TC, TV, UG, UA, AE, GB, UM, UY, UZ, VU, VE, VN, VG, VI, WF, EH, YE, ZM, ZW
    #         },
    #         project: {
    #           title: "EngagementCustomerProjectTitle", # required
    #           business_problem: "EngagementCustomerBusinessProblem", # required
    #           target_completion_date: "EngagementCustomerProjectDetailsTargetCompletionDateString", # required
    #         },
    #       },
    #       lead: {
    #         qualification_status: "LeadQualificationStatus",
    #         customer: { # required
    #           industry: "Aerospace", # accepts Aerospace, Agriculture, Automotive, Computers and Electronics, Consumer Goods, Education, Energy - Oil and Gas, Energy - Power and Utilities, Financial Services, Gaming, Government, Healthcare, Hospitality, Life Sciences, Manufacturing, Marketing and Advertising, Media and Entertainment, Mining, Non-Profit Organization, Professional Services, Real Estate and Construction, Retail, Software and Internet, Telecommunications, Transportation and Logistics, Travel, Wholesale and Distribution, Other
    #           company_name: "CompanyName", # required
    #           website_url: "CompanyWebsiteUrl",
    #           address: { # required
    #             city: "AddressSummaryCityString",
    #             postal_code: "AddressSummaryPostalCodeString",
    #             state_or_region: "AddressPart",
    #             country_code: "US", # accepts US, AF, AX, AL, DZ, AS, AD, AO, AI, AQ, AG, AR, AM, AW, AU, AT, AZ, BS, BH, BD, BB, BY, BE, BZ, BJ, BM, BT, BO, BQ, BA, BW, BV, BR, IO, BN, BG, BF, BI, KH, CM, CA, CV, KY, CF, TD, CL, CN, CX, CC, CO, KM, CG, CK, CR, CI, HR, CU, CW, CY, CZ, CD, DK, DJ, DM, DO, EC, EG, SV, GQ, ER, EE, ET, FK, FO, FJ, FI, FR, GF, PF, TF, GA, GM, GE, DE, GH, GI, GR, GL, GD, GP, GU, GT, GG, GN, GW, GY, HT, HM, VA, HN, HK, HU, IS, IN, ID, IR, IQ, IE, IM, IL, IT, JM, JP, JE, JO, KZ, KE, KI, KR, KW, KG, LA, LV, LB, LS, LR, LY, LI, LT, LU, MO, MK, MG, MW, MY, MV, ML, MT, MH, MQ, MR, MU, YT, MX, FM, MD, MC, MN, ME, MS, MA, MZ, MM, NA, NR, NP, NL, AN, NC, NZ, NI, NE, NG, NU, NF, MP, NO, OM, PK, PW, PS, PA, PG, PY, PE, PH, PN, PL, PT, PR, QA, RE, RO, RU, RW, BL, SH, KN, LC, MF, PM, VC, WS, SM, ST, SA, SN, RS, SC, SL, SG, SX, SK, SI, SB, SO, ZA, GS, SS, ES, LK, SD, SR, SJ, SZ, SE, CH, SY, TW, TJ, TZ, TH, TL, TG, TK, TO, TT, TN, TR, TM, TC, TV, UG, UA, AE, GB, UM, UY, UZ, VU, VE, VN, VG, VI, WF, EH, YE, ZM, ZW
    #           },
    #           aws_maturity: "AwsMaturity",
    #           market_segment: "Enterprise", # accepts Enterprise, Large, Medium, Small, Micro
    #         },
    #         interactions: [ # required
    #           {
    #             source_type: "LeadSourceType", # required
    #             source_id: "LeadSourceId", # required
    #             source_name: "LeadSourceName", # required
    #             usecase: "EngagementUseCase",
    #             interaction_date: Time.now,
    #             customer_action: "CustomerAction", # required
    #             business_problem: "EngagementCustomerBusinessProblem",
    #             contact: { # required
    #               business_title: "JobTitle", # required
    #               email: "Email", # required
    #               first_name: "Name", # required
    #               last_name: "Name", # required
    #               phone: "PhoneNumber",
    #             },
    #           },
    #         ],
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.engagement_id #=> String
    #   resp.engagement_arn #=> String
    #   resp.engagement_last_modified_at #=> Time
    #   resp.context_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/CreateEngagementContext AWS API Documentation
    #
    # @overload create_engagement_context(params = {})
    # @param [Hash] params ({})
    def create_engagement_context(params = {}, options = {})
      req = build_request(:create_engagement_context, params)
      req.send_request(options)
    end

    # This action creates an invitation from a sender to a single receiver
    # to join an engagement.
    #
    # @option params [required, String] :catalog
    #   Specifies the catalog related to the engagement. Accepted values are
    #   `AWS` and `Sandbox`, which determine the environment in which the
    #   engagement is managed.
    #
    # @option params [required, String] :client_token
    #   Specifies a unique, client-generated UUID to ensure that the request
    #   is handled exactly once. This token helps prevent duplicate invitation
    #   creations.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :engagement_identifier
    #   The unique identifier of the `Engagement` associated with the
    #   invitation. This parameter ensures the invitation is created within
    #   the correct `Engagement` context.
    #
    # @option params [required, Types::Invitation] :invitation
    #   The `Invitation` object all information necessary to initiate an
    #   engagement invitation to a partner. It contains a personalized message
    #   from the sender, the invitation's receiver, and a payload. The
    #   `Payload` can be the `OpportunityInvitation`, which includes detailed
    #   structures for sender contacts, partner responsibilities, customer
    #   information, and project details.
    #
    # @return [Types::CreateEngagementInvitationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateEngagementInvitationResponse#id #id} => String
    #   * {Types::CreateEngagementInvitationResponse#arn #arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_engagement_invitation({
    #     catalog: "CatalogIdentifier", # required
    #     client_token: "ClientToken", # required
    #     engagement_identifier: "EngagementIdentifier", # required
    #     invitation: { # required
    #       message: "InvitationMessage", # required
    #       receiver: { # required
    #         account: {
    #           alias: "Alias",
    #           aws_account_id: "AwsAccount", # required
    #         },
    #       },
    #       payload: { # required
    #         opportunity_invitation: {
    #           sender_contacts: [
    #             {
    #               email: "SenderContactEmail", # required
    #               first_name: "Name",
    #               last_name: "Name",
    #               business_title: "JobTitle",
    #               phone: "PhoneNumber",
    #             },
    #           ],
    #           receiver_responsibilities: ["Distributor"], # required, accepts Distributor, Reseller, Hardware Partner, Managed Service Provider, Software Partner, Services Partner, Training Partner, Co-Sell Facilitator, Facilitator
    #           customer: { # required
    #             industry: "Aerospace", # required, accepts Aerospace, Agriculture, Automotive, Computers and Electronics, Consumer Goods, Education, Energy - Oil and Gas, Energy - Power and Utilities, Financial Services, Gaming, Government, Healthcare, Hospitality, Life Sciences, Manufacturing, Marketing and Advertising, Media and Entertainment, Mining, Non-Profit Organization, Professional Services, Real Estate and Construction, Retail, Software and Internet, Telecommunications, Transportation and Logistics, Travel, Wholesale and Distribution, Other
    #             company_name: "CompanyName", # required
    #             website_url: "CompanyWebsiteUrl", # required
    #             country_code: "US", # required, accepts US, AF, AX, AL, DZ, AS, AD, AO, AI, AQ, AG, AR, AM, AW, AU, AT, AZ, BS, BH, BD, BB, BY, BE, BZ, BJ, BM, BT, BO, BQ, BA, BW, BV, BR, IO, BN, BG, BF, BI, KH, CM, CA, CV, KY, CF, TD, CL, CN, CX, CC, CO, KM, CG, CK, CR, CI, HR, CU, CW, CY, CZ, CD, DK, DJ, DM, DO, EC, EG, SV, GQ, ER, EE, ET, FK, FO, FJ, FI, FR, GF, PF, TF, GA, GM, GE, DE, GH, GI, GR, GL, GD, GP, GU, GT, GG, GN, GW, GY, HT, HM, VA, HN, HK, HU, IS, IN, ID, IR, IQ, IE, IM, IL, IT, JM, JP, JE, JO, KZ, KE, KI, KR, KW, KG, LA, LV, LB, LS, LR, LY, LI, LT, LU, MO, MK, MG, MW, MY, MV, ML, MT, MH, MQ, MR, MU, YT, MX, FM, MD, MC, MN, ME, MS, MA, MZ, MM, NA, NR, NP, NL, AN, NC, NZ, NI, NE, NG, NU, NF, MP, NO, OM, PK, PW, PS, PA, PG, PY, PE, PH, PN, PL, PT, PR, QA, RE, RO, RU, RW, BL, SH, KN, LC, MF, PM, VC, WS, SM, ST, SA, SN, RS, SC, SL, SG, SX, SK, SI, SB, SO, ZA, GS, SS, ES, LK, SD, SR, SJ, SZ, SE, CH, SY, TW, TJ, TZ, TH, TL, TG, TK, TO, TT, TN, TR, TM, TC, TV, UG, UA, AE, GB, UM, UY, UZ, VU, VE, VN, VG, VI, WF, EH, YE, ZM, ZW
    #           },
    #           project: { # required
    #             business_problem: "EngagementCustomerBusinessProblem", # required
    #             title: "ProjectDetailsTitleString", # required
    #             target_completion_date: "Date", # required
    #             expected_customer_spend: [ # required
    #               {
    #                 amount: "Amount", # required
    #                 currency_code: "USD", # required, accepts USD, EUR, GBP, AUD, CAD, CNY, NZD, INR, JPY, CHF, SEK, AED, AFN, ALL, AMD, ANG, AOA, ARS, AWG, AZN, BAM, BBD, BDT, BGN, BHD, BIF, BMD, BND, BOB, BOV, BRL, BSD, BTN, BWP, BYN, BZD, CDF, CHE, CHW, CLF, CLP, COP, COU, CRC, CUC, CUP, CVE, CZK, DJF, DKK, DOP, DZD, EGP, ERN, ETB, FJD, FKP, GEL, GHS, GIP, GMD, GNF, GTQ, GYD, HKD, HNL, HRK, HTG, HUF, IDR, ILS, IQD, IRR, ISK, JMD, JOD, KES, KGS, KHR, KMF, KPW, KRW, KWD, KYD, KZT, LAK, LBP, LKR, LRD, LSL, LYD, MAD, MDL, MGA, MKD, MMK, MNT, MOP, MRU, MUR, MVR, MWK, MXN, MXV, MYR, MZN, NAD, NGN, NIO, NOK, NPR, OMR, PAB, PEN, PGK, PHP, PKR, PLN, PYG, QAR, RON, RSD, RUB, RWF, SAR, SBD, SCR, SDG, SGD, SHP, SLL, SOS, SRD, SSP, STN, SVC, SYP, SZL, THB, TJS, TMT, TND, TOP, TRY, TTD, TWD, TZS, UAH, UGX, USN, UYI, UYU, UZS, VEF, VND, VUV, WST, XAF, XCD, XDR, XOF, XPF, XSU, XUA, YER, ZAR, ZMW, ZWL
    #                 frequency: "Monthly", # required, accepts Monthly
    #                 target_company: "ExpectedCustomerSpendTargetCompanyString", # required
    #                 estimation_url: "WebsiteUrl",
    #               },
    #             ],
    #           },
    #         },
    #         lead_invitation: {
    #           customer: { # required
    #             industry: "Aerospace", # accepts Aerospace, Agriculture, Automotive, Computers and Electronics, Consumer Goods, Education, Energy - Oil and Gas, Energy - Power and Utilities, Financial Services, Gaming, Government, Healthcare, Hospitality, Life Sciences, Manufacturing, Marketing and Advertising, Media and Entertainment, Mining, Non-Profit Organization, Professional Services, Real Estate and Construction, Retail, Software and Internet, Telecommunications, Transportation and Logistics, Travel, Wholesale and Distribution, Other
    #             company_name: "CompanyName", # required
    #             website_url: "CompanyWebsiteUrl",
    #             country_code: "US", # required, accepts US, AF, AX, AL, DZ, AS, AD, AO, AI, AQ, AG, AR, AM, AW, AU, AT, AZ, BS, BH, BD, BB, BY, BE, BZ, BJ, BM, BT, BO, BQ, BA, BW, BV, BR, IO, BN, BG, BF, BI, KH, CM, CA, CV, KY, CF, TD, CL, CN, CX, CC, CO, KM, CG, CK, CR, CI, HR, CU, CW, CY, CZ, CD, DK, DJ, DM, DO, EC, EG, SV, GQ, ER, EE, ET, FK, FO, FJ, FI, FR, GF, PF, TF, GA, GM, GE, DE, GH, GI, GR, GL, GD, GP, GU, GT, GG, GN, GW, GY, HT, HM, VA, HN, HK, HU, IS, IN, ID, IR, IQ, IE, IM, IL, IT, JM, JP, JE, JO, KZ, KE, KI, KR, KW, KG, LA, LV, LB, LS, LR, LY, LI, LT, LU, MO, MK, MG, MW, MY, MV, ML, MT, MH, MQ, MR, MU, YT, MX, FM, MD, MC, MN, ME, MS, MA, MZ, MM, NA, NR, NP, NL, AN, NC, NZ, NI, NE, NG, NU, NF, MP, NO, OM, PK, PW, PS, PA, PG, PY, PE, PH, PN, PL, PT, PR, QA, RE, RO, RU, RW, BL, SH, KN, LC, MF, PM, VC, WS, SM, ST, SA, SN, RS, SC, SL, SG, SX, SK, SI, SB, SO, ZA, GS, SS, ES, LK, SD, SR, SJ, SZ, SE, CH, SY, TW, TJ, TZ, TH, TL, TG, TK, TO, TT, TN, TR, TM, TC, TV, UG, UA, AE, GB, UM, UY, UZ, VU, VE, VN, VG, VI, WF, EH, YE, ZM, ZW
    #             aws_maturity: "AwsMaturity",
    #             market_segment: "Enterprise", # accepts Enterprise, Large, Medium, Small, Micro
    #           },
    #           interaction: { # required
    #             source_type: "LeadSourceType", # required
    #             source_id: "LeadSourceId", # required
    #             source_name: "LeadSourceName", # required
    #             usecase: "EngagementUseCase",
    #             contact_business_title: "JobTitle", # required
    #           },
    #         },
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/CreateEngagementInvitation AWS API Documentation
    #
    # @overload create_engagement_invitation(params = {})
    # @param [Hash] params ({})
    def create_engagement_invitation(params = {}, options = {})
      req = build_request(:create_engagement_invitation, params)
      req.send_request(options)
    end

    # Creates an `Opportunity` record in Partner Central. Use this operation
    # to create a potential business opportunity for submission to Amazon
    # Web Services. Creating an opportunity sets `Lifecycle.ReviewStatus` to
    # `Pending Submission`.
    #
    # To submit an opportunity, follow these steps:
    #
    # 1.  To create the opportunity, use `CreateOpportunity`.
    #
    # 2.  To associate a solution with the opportunity, use
    #     `AssociateOpportunity`.
    #
    # 3.  To start the engagement with AWS, use
    #     `StartEngagementFromOpportunity`.
    #
    # After submission, you can't edit the opportunity until the review is
    # complete. But opportunities in the `Pending Submission` state must
    # have complete details. You can update the opportunity while it's in
    # the `Pending Submission` state.
    #
    # There's a set of mandatory fields to create opportunities, but
    # consider providing optional fields to enrich the opportunity record.
    #
    # @option params [required, String] :catalog
    #   Specifies the catalog associated with the request. This field takes a
    #   string value from a predefined list: `AWS` or `Sandbox`. The catalog
    #   determines which environment the opportunity is created in. Use `AWS`
    #   to create opportunities in the Amazon Web Services catalog, and
    #   `Sandbox` for testing in secure, isolated environments.
    #
    # @option params [Array<String>] :primary_needs_from_aws
    #   Identifies the type of support the partner needs from Amazon Web
    #   Services.
    #
    #   Valid values:
    #
    #   * Cosell—Architectural Validation: Confirmation from Amazon Web
    #     Services that the partner's proposed solution architecture is
    #     aligned with Amazon Web Services best practices and poses minimal
    #     architectural risks.
    #
    #   * Cosell—Business Presentation: Request Amazon Web Services seller's
    #     participation in a joint customer presentation.
    #
    #   * Cosell—Competitive Information: Access to Amazon Web Services
    #     competitive resources and support for the partner's proposed
    #     solution.
    #
    #   * Cosell—Pricing Assistance: Connect with an Amazon Web Services
    #     seller for support situations where a partner may be receiving an
    #     upfront discount on a service (for example: EDP deals).
    #
    #   * Cosell—Technical Consultation: Connect with an Amazon Web Services
    #     Solutions Architect to address the partner's questions about the
    #     proposed solution.
    #
    #   * Cosell—Total Cost of Ownership Evaluation: Assistance with quoting
    #     different cost savings of proposed solutions on Amazon Web Services
    #     versus on-premises or a traditional hosting environment.
    #
    #   * Cosell—Deal Support: Request Amazon Web Services seller's support
    #     to progress the opportunity (for example: joint customer call,
    #     strategic positioning).
    #
    #   * Cosell—Support for Public Tender/RFx: Opportunity related to the
    #     public sector where the partner needs Amazon Web Services RFx
    #     support.
    #
    # @option params [String] :national_security
    #   Indicates whether the `Opportunity` pertains to a national security
    #   project. This field must be set to `true` only when the customer's
    #   industry is *Government*. Additional privacy and security measures
    #   apply during the review and management process for opportunities
    #   marked as `NationalSecurity`.
    #
    # @option params [String] :partner_opportunity_identifier
    #   Specifies the opportunity's unique identifier in the partner's CRM
    #   system. This value is essential to track and reconcile because it's
    #   included in the outbound payload to the partner.
    #
    #   This field allows partners to link an opportunity to their CRM, which
    #   helps to ensure seamless integration and accurate synchronization
    #   between the Partner Central API and the partner's internal systems.
    #
    # @option params [Types::Customer] :customer
    #   Specifies customer details associated with the `Opportunity`.
    #
    # @option params [Types::Project] :project
    #   An object that contains project details for the `Opportunity`.
    #
    # @option params [String] :opportunity_type
    #   Specifies the opportunity type as a renewal, new, or expansion.
    #
    #   Opportunity types:
    #
    #   * New opportunity: Represents a new business opportunity with a
    #     potential customer that's not previously engaged with your
    #     solutions or services.
    #
    #   * Renewal opportunity: Represents an opportunity to renew an existing
    #     contract or subscription with a current customer, ensuring
    #     continuity of service.
    #
    #   * Expansion opportunity: Represents an opportunity to expand the scope
    #     of an existing contract or subscription, either by adding new
    #     services or increasing the volume of existing services for a current
    #     customer.
    #
    # @option params [Types::Marketing] :marketing
    #   This object contains marketing details and is optional for an
    #   opportunity.
    #
    # @option params [Types::SoftwareRevenue] :software_revenue
    #   Specifies details of a customer's procurement terms. This is required
    #   only for partners in eligible programs.
    #
    # @option params [required, String] :client_token
    #   Required to be unique, and should be unchanging, it can be randomly
    #   generated or a meaningful string.
    #
    #   Default: None
    #
    #   Best practice: To help ensure uniqueness and avoid conflicts, use a
    #   Universally Unique Identifier (UUID) as the `ClientToken`. You can use
    #   standard libraries from most programming languages to generate this.
    #   If you use the same client token, the API returns the following error:
    #   "Conflicting client token submitted for a new request body."
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Types::LifeCycle] :life_cycle
    #   An object that contains lifecycle details for the `Opportunity`.
    #
    # @option params [String] :origin
    #   Specifies the origin of the opportunity, indicating if it was sourced
    #   from Amazon Web Services or the partner. For all opportunities created
    #   with `Catalog: AWS`, this field must only be `Partner Referral`.
    #   However, when using `Catalog: Sandbox`, you can set this field to `AWS
    #   Referral` to simulate Amazon Web Services referral creation. This
    #   allows Amazon Web Services-originated flows testing in the sandbox
    #   catalog.
    #
    # @option params [Array<Types::Contact>] :opportunity_team
    #   Represents the internal team handling the opportunity. Specify
    #   collaborating members of this opportunity who are within the
    #   partner's organization.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A map of the key-value pairs of the tag or tags to assign.
    #
    # @return [Types::CreateOpportunityResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateOpportunityResponse#id #id} => String
    #   * {Types::CreateOpportunityResponse#partner_opportunity_identifier #partner_opportunity_identifier} => String
    #   * {Types::CreateOpportunityResponse#last_modified_date #last_modified_date} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_opportunity({
    #     catalog: "CatalogIdentifier", # required
    #     primary_needs_from_aws: ["Co-Sell - Architectural Validation"], # accepts Co-Sell - Architectural Validation, Co-Sell - Business Presentation, Co-Sell - Competitive Information, Co-Sell - Pricing Assistance, Co-Sell - Technical Consultation, Co-Sell - Total Cost of Ownership Evaluation, Co-Sell - Deal Support, Co-Sell - Support for Public Tender / RFx
    #     national_security: "Yes", # accepts Yes, No
    #     partner_opportunity_identifier: "CreateOpportunityRequestPartnerOpportunityIdentifierString",
    #     customer: {
    #       account: {
    #         industry: "Aerospace", # accepts Aerospace, Agriculture, Automotive, Computers and Electronics, Consumer Goods, Education, Energy - Oil and Gas, Energy - Power and Utilities, Financial Services, Gaming, Government, Healthcare, Hospitality, Life Sciences, Manufacturing, Marketing and Advertising, Media and Entertainment, Mining, Non-Profit Organization, Professional Services, Real Estate and Construction, Retail, Software and Internet, Telecommunications, Transportation and Logistics, Travel, Wholesale and Distribution, Other
    #         other_industry: "AccountOtherIndustryString",
    #         company_name: "AccountCompanyNameString", # required
    #         website_url: "WebsiteUrl",
    #         aws_account_id: "AwsAccount",
    #         address: {
    #           city: "AddressCityString",
    #           postal_code: "AddressPostalCodeString",
    #           state_or_region: "AddressPart",
    #           country_code: "US", # accepts US, AF, AX, AL, DZ, AS, AD, AO, AI, AQ, AG, AR, AM, AW, AU, AT, AZ, BS, BH, BD, BB, BY, BE, BZ, BJ, BM, BT, BO, BQ, BA, BW, BV, BR, IO, BN, BG, BF, BI, KH, CM, CA, CV, KY, CF, TD, CL, CN, CX, CC, CO, KM, CG, CK, CR, CI, HR, CU, CW, CY, CZ, CD, DK, DJ, DM, DO, EC, EG, SV, GQ, ER, EE, ET, FK, FO, FJ, FI, FR, GF, PF, TF, GA, GM, GE, DE, GH, GI, GR, GL, GD, GP, GU, GT, GG, GN, GW, GY, HT, HM, VA, HN, HK, HU, IS, IN, ID, IR, IQ, IE, IM, IL, IT, JM, JP, JE, JO, KZ, KE, KI, KR, KW, KG, LA, LV, LB, LS, LR, LY, LI, LT, LU, MO, MK, MG, MW, MY, MV, ML, MT, MH, MQ, MR, MU, YT, MX, FM, MD, MC, MN, ME, MS, MA, MZ, MM, NA, NR, NP, NL, AN, NC, NZ, NI, NE, NG, NU, NF, MP, NO, OM, PK, PW, PS, PA, PG, PY, PE, PH, PN, PL, PT, PR, QA, RE, RO, RU, RW, BL, SH, KN, LC, MF, PM, VC, WS, SM, ST, SA, SN, RS, SC, SL, SG, SX, SK, SI, SB, SO, ZA, GS, SS, ES, LK, SD, SR, SJ, SZ, SE, CH, SY, TW, TJ, TZ, TH, TL, TG, TK, TO, TT, TN, TR, TM, TC, TV, UG, UA, AE, GB, UM, UY, UZ, VU, VE, VN, VG, VI, WF, EH, YE, ZM, ZW
    #           street_address: "AddressStreetAddressString",
    #         },
    #         duns: "DunsNumber",
    #       },
    #       contacts: [
    #         {
    #           email: "Email",
    #           first_name: "ContactFirstNameString",
    #           last_name: "ContactLastNameString",
    #           business_title: "JobTitle",
    #           phone: "PhoneNumber",
    #         },
    #       ],
    #     },
    #     project: {
    #       delivery_models: ["SaaS or PaaS"], # accepts SaaS or PaaS, BYOL or AMI, Managed Services, Professional Services, Resell, Other
    #       expected_customer_spend: [
    #         {
    #           amount: "Amount", # required
    #           currency_code: "USD", # required, accepts USD, EUR, GBP, AUD, CAD, CNY, NZD, INR, JPY, CHF, SEK, AED, AFN, ALL, AMD, ANG, AOA, ARS, AWG, AZN, BAM, BBD, BDT, BGN, BHD, BIF, BMD, BND, BOB, BOV, BRL, BSD, BTN, BWP, BYN, BZD, CDF, CHE, CHW, CLF, CLP, COP, COU, CRC, CUC, CUP, CVE, CZK, DJF, DKK, DOP, DZD, EGP, ERN, ETB, FJD, FKP, GEL, GHS, GIP, GMD, GNF, GTQ, GYD, HKD, HNL, HRK, HTG, HUF, IDR, ILS, IQD, IRR, ISK, JMD, JOD, KES, KGS, KHR, KMF, KPW, KRW, KWD, KYD, KZT, LAK, LBP, LKR, LRD, LSL, LYD, MAD, MDL, MGA, MKD, MMK, MNT, MOP, MRU, MUR, MVR, MWK, MXN, MXV, MYR, MZN, NAD, NGN, NIO, NOK, NPR, OMR, PAB, PEN, PGK, PHP, PKR, PLN, PYG, QAR, RON, RSD, RUB, RWF, SAR, SBD, SCR, SDG, SGD, SHP, SLL, SOS, SRD, SSP, STN, SVC, SYP, SZL, THB, TJS, TMT, TND, TOP, TRY, TTD, TWD, TZS, UAH, UGX, USN, UYI, UYU, UZS, VEF, VND, VUV, WST, XAF, XCD, XDR, XOF, XPF, XSU, XUA, YER, ZAR, ZMW, ZWL
    #           frequency: "Monthly", # required, accepts Monthly
    #           target_company: "ExpectedCustomerSpendTargetCompanyString", # required
    #           estimation_url: "WebsiteUrl",
    #         },
    #       ],
    #       title: "ProjectTitleString",
    #       apn_programs: ["String"],
    #       customer_business_problem: "ProjectCustomerBusinessProblemString",
    #       customer_use_case: "String",
    #       related_opportunity_identifier: "OpportunityIdentifier",
    #       sales_activities: ["Initialized discussions with customer"], # accepts Initialized discussions with customer, Customer has shown interest in solution, Conducted POC / Demo, In evaluation / planning stage, Agreed on solution to Business Problem, Completed Action Plan, Finalized Deployment Need, SOW Signed
    #       competitor_name: "Oracle Cloud", # accepts Oracle Cloud, On-Prem, Co-location, Akamai, AliCloud, Google Cloud Platform, IBM Softlayer, Microsoft Azure, Other- Cost Optimization, No Competition, *Other
    #       other_competitor_names: "ProjectOtherCompetitorNamesString",
    #       other_solution_description: "ProjectOtherSolutionDescriptionString",
    #       additional_comments: "ProjectAdditionalCommentsString",
    #     },
    #     opportunity_type: "Net New Business", # accepts Net New Business, Flat Renewal, Expansion
    #     marketing: {
    #       campaign_name: "String",
    #       source: "Marketing Activity", # accepts Marketing Activity, None
    #       use_cases: ["String"],
    #       channels: ["AWS Marketing Central"], # accepts AWS Marketing Central, Content Syndication, Display, Email, Live Event, Out Of Home (OOH), Print, Search, Social, Telemarketing, TV, Video, Virtual Event
    #       aws_funding_used: "Yes", # accepts Yes, No
    #     },
    #     software_revenue: {
    #       delivery_model: "Contract", # accepts Contract, Pay-as-you-go, Subscription
    #       value: {
    #         amount: "MonetaryValueAmountString", # required
    #         currency_code: "USD", # required, accepts USD, EUR, GBP, AUD, CAD, CNY, NZD, INR, JPY, CHF, SEK, AED, AFN, ALL, AMD, ANG, AOA, ARS, AWG, AZN, BAM, BBD, BDT, BGN, BHD, BIF, BMD, BND, BOB, BOV, BRL, BSD, BTN, BWP, BYN, BZD, CDF, CHE, CHW, CLF, CLP, COP, COU, CRC, CUC, CUP, CVE, CZK, DJF, DKK, DOP, DZD, EGP, ERN, ETB, FJD, FKP, GEL, GHS, GIP, GMD, GNF, GTQ, GYD, HKD, HNL, HRK, HTG, HUF, IDR, ILS, IQD, IRR, ISK, JMD, JOD, KES, KGS, KHR, KMF, KPW, KRW, KWD, KYD, KZT, LAK, LBP, LKR, LRD, LSL, LYD, MAD, MDL, MGA, MKD, MMK, MNT, MOP, MRU, MUR, MVR, MWK, MXN, MXV, MYR, MZN, NAD, NGN, NIO, NOK, NPR, OMR, PAB, PEN, PGK, PHP, PKR, PLN, PYG, QAR, RON, RSD, RUB, RWF, SAR, SBD, SCR, SDG, SGD, SHP, SLL, SOS, SRD, SSP, STN, SVC, SYP, SZL, THB, TJS, TMT, TND, TOP, TRY, TTD, TWD, TZS, UAH, UGX, USN, UYI, UYU, UZS, VEF, VND, VUV, WST, XAF, XCD, XDR, XOF, XPF, XSU, XUA, YER, ZAR, ZMW, ZWL
    #       },
    #       effective_date: "Date",
    #       expiration_date: "Date",
    #     },
    #     client_token: "ClientToken", # required
    #     life_cycle: {
    #       stage: "Prospect", # accepts Prospect, Qualified, Technical Validation, Business Validation, Committed, Launched, Closed Lost
    #       closed_lost_reason: "Customer Deficiency", # accepts Customer Deficiency, Delay / Cancellation of Project, Legal / Tax / Regulatory, Lost to Competitor - Google, Lost to Competitor - Microsoft, Lost to Competitor - SoftLayer, Lost to Competitor - VMWare, Lost to Competitor - Other, No Opportunity, On Premises Deployment, Partner Gap, Price, Security / Compliance, Technical Limitations, Customer Experience, Other, People/Relationship/Governance, Product/Technology, Financial/Commercial
    #       next_steps: "LifeCycleNextStepsString",
    #       target_close_date: "Date",
    #       review_status: "Pending Submission", # accepts Pending Submission, Submitted, In review, Approved, Rejected, Action Required
    #       review_comments: "String",
    #       review_status_reason: "String",
    #       next_steps_history: [
    #         {
    #           value: "String", # required
    #           time: Time.now, # required
    #         },
    #       ],
    #     },
    #     origin: "AWS Referral", # accepts AWS Referral, Partner Referral
    #     opportunity_team: [
    #       {
    #         email: "Email",
    #         first_name: "ContactFirstNameString",
    #         last_name: "ContactLastNameString",
    #         business_title: "JobTitle",
    #         phone: "PhoneNumber",
    #       },
    #     ],
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
    #   resp.partner_opportunity_identifier #=> String
    #   resp.last_modified_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/CreateOpportunity AWS API Documentation
    #
    # @overload create_opportunity(params = {})
    # @param [Hash] params ({})
    def create_opportunity(params = {}, options = {})
      req = build_request(:create_opportunity, params)
      req.send_request(options)
    end

    # This action allows you to create an immutable snapshot of a specific
    # resource, such as an opportunity, within the context of an engagement.
    # The snapshot captures a subset of the resource's data based on the
    # schema defined by the provided template.
    #
    # @option params [required, String] :catalog
    #   Specifies the catalog where the snapshot is created. Valid values are
    #   `AWS` and `Sandbox`.
    #
    # @option params [required, String] :engagement_identifier
    #   The unique identifier of the engagement associated with this snapshot.
    #   This field links the snapshot to a specific engagement context.
    #
    # @option params [required, String] :resource_type
    #   Specifies the type of resource for which the snapshot is being
    #   created. This field determines the structure and content of the
    #   snapshot. Must be one of the supported resource types, such as:
    #   `Opportunity`.
    #
    # @option params [required, String] :resource_identifier
    #   The unique identifier of the specific resource to be snapshotted. The
    #   format and constraints of this identifier depend on the `ResourceType`
    #   specified. For example: For `Opportunity` type, it will be an
    #   opportunity ID.
    #
    # @option params [required, String] :resource_snapshot_template_identifier
    #   The name of the template that defines the schema for the snapshot.
    #   This template determines which subset of the resource data will be
    #   included in the snapshot. Must correspond to an existing and valid
    #   template for the specified `ResourceType`.
    #
    # @option params [required, String] :client_token
    #   Specifies a unique, client-generated UUID to ensure that the request
    #   is handled exactly once. This token helps prevent duplicate snapshot
    #   creations.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateResourceSnapshotResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateResourceSnapshotResponse#arn #arn} => String
    #   * {Types::CreateResourceSnapshotResponse#revision #revision} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_resource_snapshot({
    #     catalog: "CatalogIdentifier", # required
    #     engagement_identifier: "EngagementIdentifier", # required
    #     resource_type: "Opportunity", # required, accepts Opportunity
    #     resource_identifier: "ResourceIdentifier", # required
    #     resource_snapshot_template_identifier: "ResourceTemplateName", # required
    #     client_token: "ClientToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.revision #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/CreateResourceSnapshot AWS API Documentation
    #
    # @overload create_resource_snapshot(params = {})
    # @param [Hash] params ({})
    def create_resource_snapshot(params = {}, options = {})
      req = build_request(:create_resource_snapshot, params)
      req.send_request(options)
    end

    # Use this action to create a job to generate a snapshot of the
    # specified resource within an engagement. It initiates an asynchronous
    # process to create a resource snapshot. The job creates a new snapshot
    # only if the resource state has changed, adhering to the same access
    # control and immutability rules as direct snapshot creation.
    #
    # @option params [required, String] :catalog
    #   Specifies the catalog in which to create the snapshot job. Valid
    #   values are `AWS` and ` Sandbox`.
    #
    # @option params [required, String] :client_token
    #   A client-generated UUID used for idempotency check. The token helps
    #   prevent duplicate job creations.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :engagement_identifier
    #   Specifies the identifier of the engagement associated with the
    #   resource to be snapshotted.
    #
    # @option params [required, String] :resource_type
    #   The type of resource for which the snapshot job is being created. Must
    #   be one of the supported resource types i.e. `Opportunity`
    #
    # @option params [required, String] :resource_identifier
    #   Specifies the identifier of the specific resource to be snapshotted.
    #   The format depends on the ` ResourceType`.
    #
    # @option params [required, String] :resource_snapshot_template_identifier
    #   Specifies the name of the template that defines the schema for the
    #   snapshot.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A map of the key-value pairs of the tag or tags to assign.
    #
    # @return [Types::CreateResourceSnapshotJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateResourceSnapshotJobResponse#id #id} => String
    #   * {Types::CreateResourceSnapshotJobResponse#arn #arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_resource_snapshot_job({
    #     catalog: "CatalogIdentifier", # required
    #     client_token: "ClientToken", # required
    #     engagement_identifier: "EngagementIdentifier", # required
    #     resource_type: "Opportunity", # required, accepts Opportunity
    #     resource_identifier: "ResourceIdentifier", # required
    #     resource_snapshot_template_identifier: "ResourceTemplateName", # required
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/CreateResourceSnapshotJob AWS API Documentation
    #
    # @overload create_resource_snapshot_job(params = {})
    # @param [Hash] params ({})
    def create_resource_snapshot_job(params = {}, options = {})
      req = build_request(:create_resource_snapshot_job, params)
      req.send_request(options)
    end

    # Use this action to deletes a previously created resource snapshot job.
    # The job must be in a stopped state before it can be deleted.
    #
    # @option params [required, String] :catalog
    #   Specifies the catalog from which to delete the snapshot job. Valid
    #   values are `AWS` and `Sandbox`.
    #
    # @option params [required, String] :resource_snapshot_job_identifier
    #   The unique identifier of the resource snapshot job to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_resource_snapshot_job({
    #     catalog: "CatalogIdentifier", # required
    #     resource_snapshot_job_identifier: "ResourceSnapshotJobIdentifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/DeleteResourceSnapshotJob AWS API Documentation
    #
    # @overload delete_resource_snapshot_job(params = {})
    # @param [Hash] params ({})
    def delete_resource_snapshot_job(params = {}, options = {})
      req = build_request(:delete_resource_snapshot_job, params)
      req.send_request(options)
    end

    # Allows you to remove an existing association between an `Opportunity`
    # and related entities, such as a Partner Solution, Amazon Web Services
    # product, or an Amazon Web Services Marketplace offer. This operation
    # is the counterpart to `AssociateOpportunity`, and it provides
    # flexibility to manage associations as business needs change.
    #
    # Use this operation to update the associations of an `Opportunity` due
    # to changes in the related entities, or if an association was made in
    # error. Ensuring accurate associations helps maintain clarity and
    # accuracy to track and manage business opportunities. When you replace
    # an entity, first attach the new entity and then disassociate the one
    # to be removed, especially if it's the last remaining entity that's
    # required.
    #
    # @option params [required, String] :catalog
    #   Specifies the catalog associated with the request. This field takes a
    #   string value from a predefined list: `AWS` or `Sandbox`. The catalog
    #   determines which environment the opportunity disassociation is made
    #   in. Use `AWS` to disassociate opportunities in the Amazon Web Services
    #   catalog, and `Sandbox` for testing in secure, isolated environments.
    #
    # @option params [required, String] :opportunity_identifier
    #   The opportunity's unique identifier for when you want to disassociate
    #   it from related entities. This identifier helps to ensure that the
    #   correct opportunity is updated.
    #
    #   Validation: Ensure that the provided identifier corresponds to an
    #   existing opportunity in the Amazon Web Services system because
    #   incorrect identifiers result in an error and no changes are made.
    #
    # @option params [required, String] :related_entity_type
    #   The type of the entity that you're disassociating from the
    #   opportunity. When you specify the entity type, it helps the system
    #   correctly process the disassociation request to ensure that the right
    #   connections are removed.
    #
    #   Examples of entity types include Partner Solution, Amazon Web Services
    #   product, and Amazon Web Services Marketplaceoffer. Ensure that the
    #   value matches one of the expected entity types.
    #
    #   Validation: Provide a valid entity type to help ensure successful
    #   disassociation. An invalid or incorrect entity type results in an
    #   error.
    #
    # @option params [required, String] :related_entity_identifier
    #   The related entity's identifier that you want to disassociate from
    #   the opportunity. Depending on the type of entity, this could be a
    #   simple identifier or an Amazon Resource Name (ARN) for entities
    #   managed through Amazon Web Services Marketplace.
    #
    #   For Amazon Web Services Marketplace entities, use the Amazon Web
    #   Services Marketplace API to obtain the necessary ARNs. For guidance on
    #   retrieving these ARNs, see [ Amazon Web Services MarketplaceUsing the
    #   Amazon Web Services Marketplace Catalog API][1].
    #
    #   Validation: Ensure the identifier or ARN is valid and corresponds to
    #   an existing entity. An incorrect or invalid identifier results in an
    #   error.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/welcome.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_opportunity({
    #     catalog: "CatalogIdentifier", # required
    #     opportunity_identifier: "OpportunityIdentifier", # required
    #     related_entity_type: "Solutions", # required, accepts Solutions, AwsProducts, AwsMarketplaceOffers, AwsMarketplaceOfferSets
    #     related_entity_identifier: "DisassociateOpportunityRequestRelatedEntityIdentifierString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/DisassociateOpportunity AWS API Documentation
    #
    # @overload disassociate_opportunity(params = {})
    # @param [Hash] params ({})
    def disassociate_opportunity(params = {}, options = {})
      req = build_request(:disassociate_opportunity, params)
      req.send_request(options)
    end

    # Retrieves a summary of an AWS Opportunity. This summary includes
    # high-level details about the opportunity sourced from AWS, such as
    # lifecycle information, customer details, and involvement type. It is
    # useful for tracking updates on the AWS opportunity corresponding to an
    # opportunity in the partner's account.
    #
    # @option params [required, String] :catalog
    #   Specifies the catalog in which the AWS Opportunity is located.
    #   Accepted values include `AWS` for production opportunities or
    #   `Sandbox` for testing purposes. The catalog determines which
    #   environment the opportunity data is pulled from.
    #
    # @option params [required, String] :related_opportunity_identifier
    #   The unique identifier for the related partner opportunity. Use this
    #   field to correlate an AWS opportunity with its corresponding partner
    #   opportunity.
    #
    # @return [Types::GetAwsOpportunitySummaryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAwsOpportunitySummaryResponse#related_opportunity_id #related_opportunity_id} => String
    #   * {Types::GetAwsOpportunitySummaryResponse#origin #origin} => String
    #   * {Types::GetAwsOpportunitySummaryResponse#involvement_type #involvement_type} => String
    #   * {Types::GetAwsOpportunitySummaryResponse#visibility #visibility} => String
    #   * {Types::GetAwsOpportunitySummaryResponse#life_cycle #life_cycle} => Types::AwsOpportunityLifeCycle
    #   * {Types::GetAwsOpportunitySummaryResponse#opportunity_team #opportunity_team} => Array&lt;Types::AwsTeamMember&gt;
    #   * {Types::GetAwsOpportunitySummaryResponse#insights #insights} => Types::AwsOpportunityInsights
    #   * {Types::GetAwsOpportunitySummaryResponse#involvement_type_change_reason #involvement_type_change_reason} => String
    #   * {Types::GetAwsOpportunitySummaryResponse#related_entity_ids #related_entity_ids} => Types::AwsOpportunityRelatedEntities
    #   * {Types::GetAwsOpportunitySummaryResponse#customer #customer} => Types::AwsOpportunityCustomer
    #   * {Types::GetAwsOpportunitySummaryResponse#project #project} => Types::AwsOpportunityProject
    #   * {Types::GetAwsOpportunitySummaryResponse#catalog #catalog} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_aws_opportunity_summary({
    #     catalog: "CatalogIdentifier", # required
    #     related_opportunity_identifier: "OpportunityIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.related_opportunity_id #=> String
    #   resp.origin #=> String, one of "AWS Referral", "Partner Referral"
    #   resp.involvement_type #=> String, one of "For Visibility Only", "Co-Sell"
    #   resp.visibility #=> String, one of "Full", "Limited"
    #   resp.life_cycle.target_close_date #=> String
    #   resp.life_cycle.closed_lost_reason #=> String, one of "Administrative", "Business Associate Agreement", "Company Acquired/Dissolved", "Competitive Offering", "Customer Data Requirement", "Customer Deficiency", "Customer Experience", "Delay / Cancellation of Project", "Duplicate", "Duplicate Opportunity", "Executive Blocker", "Failed Vetting", "Feature Limitation", "Financial/Commercial", "Insufficient Amazon Value", "Insufficient AWS Value", "International Constraints", "Legal / Tax / Regulatory", "Legal Terms and Conditions", "Lost to Competitor", "Lost to Competitor - Google", "Lost to Competitor - Microsoft", "Lost to Competitor - Other", "Lost to Competitor - Rackspace", "Lost to Competitor - SoftLayer", "Lost to Competitor - VMWare", "No Customer Reference", "No Integration Resources", "No Opportunity", "No Perceived Value of MP", "No Response", "Not Committed to AWS", "No Update", "On Premises Deployment", "Other", "Other (Details in Description)", "Partner Gap", "Past Due", "People/Relationship/Governance", "Platform Technology Limitation", "Preference for Competitor", "Price", "Product/Technology", "Product Not on AWS", "Security / Compliance", "Self-Service", "Technical Limitations", "Term Sheet Impasse"
    #   resp.life_cycle.stage #=> String, one of "Not Started", "In Progress", "Prospect", "Engaged", "Identified", "Qualify", "Research", "Seller Engaged", "Evaluating", "Seller Registered", "Term Sheet Negotiation", "Contract Negotiation", "Onboarding", "Building Integration", "Qualified", "On-hold", "Technical Validation", "Business Validation", "Committed", "Launched", "Deferred to Partner", "Closed Lost", "Completed", "Closed Incomplete"
    #   resp.life_cycle.next_steps #=> String
    #   resp.life_cycle.next_steps_history #=> Array
    #   resp.life_cycle.next_steps_history[0].value #=> String
    #   resp.life_cycle.next_steps_history[0].time #=> Time
    #   resp.opportunity_team #=> Array
    #   resp.opportunity_team[0].email #=> String
    #   resp.opportunity_team[0].first_name #=> String
    #   resp.opportunity_team[0].last_name #=> String
    #   resp.opportunity_team[0].business_title #=> String, one of "AWSSalesRep", "AWSAccountOwner", "WWPSPDM", "PDM", "PSM", "ISVSM"
    #   resp.insights.next_best_actions #=> String
    #   resp.insights.engagement_score #=> String, one of "High", "Medium", "Low"
    #   resp.involvement_type_change_reason #=> String, one of "Expansion Opportunity", "Change in Deal Information", "Customer Requested", "Technical Complexity", "Risk Mitigation"
    #   resp.related_entity_ids.aws_products #=> Array
    #   resp.related_entity_ids.aws_products[0] #=> String
    #   resp.related_entity_ids.solutions #=> Array
    #   resp.related_entity_ids.solutions[0] #=> String
    #   resp.customer.contacts #=> Array
    #   resp.customer.contacts[0].email #=> String
    #   resp.customer.contacts[0].first_name #=> String
    #   resp.customer.contacts[0].last_name #=> String
    #   resp.customer.contacts[0].business_title #=> String
    #   resp.customer.contacts[0].phone #=> String
    #   resp.project.expected_customer_spend #=> Array
    #   resp.project.expected_customer_spend[0].amount #=> String
    #   resp.project.expected_customer_spend[0].currency_code #=> String, one of "USD", "EUR", "GBP", "AUD", "CAD", "CNY", "NZD", "INR", "JPY", "CHF", "SEK", "AED", "AFN", "ALL", "AMD", "ANG", "AOA", "ARS", "AWG", "AZN", "BAM", "BBD", "BDT", "BGN", "BHD", "BIF", "BMD", "BND", "BOB", "BOV", "BRL", "BSD", "BTN", "BWP", "BYN", "BZD", "CDF", "CHE", "CHW", "CLF", "CLP", "COP", "COU", "CRC", "CUC", "CUP", "CVE", "CZK", "DJF", "DKK", "DOP", "DZD", "EGP", "ERN", "ETB", "FJD", "FKP", "GEL", "GHS", "GIP", "GMD", "GNF", "GTQ", "GYD", "HKD", "HNL", "HRK", "HTG", "HUF", "IDR", "ILS", "IQD", "IRR", "ISK", "JMD", "JOD", "KES", "KGS", "KHR", "KMF", "KPW", "KRW", "KWD", "KYD", "KZT", "LAK", "LBP", "LKR", "LRD", "LSL", "LYD", "MAD", "MDL", "MGA", "MKD", "MMK", "MNT", "MOP", "MRU", "MUR", "MVR", "MWK", "MXN", "MXV", "MYR", "MZN", "NAD", "NGN", "NIO", "NOK", "NPR", "OMR", "PAB", "PEN", "PGK", "PHP", "PKR", "PLN", "PYG", "QAR", "RON", "RSD", "RUB", "RWF", "SAR", "SBD", "SCR", "SDG", "SGD", "SHP", "SLL", "SOS", "SRD", "SSP", "STN", "SVC", "SYP", "SZL", "THB", "TJS", "TMT", "TND", "TOP", "TRY", "TTD", "TWD", "TZS", "UAH", "UGX", "USN", "UYI", "UYU", "UZS", "VEF", "VND", "VUV", "WST", "XAF", "XCD", "XDR", "XOF", "XPF", "XSU", "XUA", "YER", "ZAR", "ZMW", "ZWL"
    #   resp.project.expected_customer_spend[0].frequency #=> String, one of "Monthly"
    #   resp.project.expected_customer_spend[0].target_company #=> String
    #   resp.project.expected_customer_spend[0].estimation_url #=> String
    #   resp.catalog #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/GetAwsOpportunitySummary AWS API Documentation
    #
    # @overload get_aws_opportunity_summary(params = {})
    # @param [Hash] params ({})
    def get_aws_opportunity_summary(params = {}, options = {})
      req = build_request(:get_aws_opportunity_summary, params)
      req.send_request(options)
    end

    # Use this action to retrieve the engagement record for a given
    # `EngagementIdentifier`.
    #
    # @option params [required, String] :catalog
    #   Specifies the catalog related to the engagement request. Valid values
    #   are `AWS` and `Sandbox`.
    #
    # @option params [required, String] :identifier
    #   Specifies the identifier of the Engagement record to retrieve.
    #
    # @return [Types::GetEngagementResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEngagementResponse#id #id} => String
    #   * {Types::GetEngagementResponse#arn #arn} => String
    #   * {Types::GetEngagementResponse#title #title} => String
    #   * {Types::GetEngagementResponse#description #description} => String
    #   * {Types::GetEngagementResponse#created_at #created_at} => Time
    #   * {Types::GetEngagementResponse#created_by #created_by} => String
    #   * {Types::GetEngagementResponse#member_count #member_count} => Integer
    #   * {Types::GetEngagementResponse#modified_at #modified_at} => Time
    #   * {Types::GetEngagementResponse#modified_by #modified_by} => String
    #   * {Types::GetEngagementResponse#contexts #contexts} => Array&lt;Types::EngagementContextDetails&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_engagement({
    #     catalog: "CatalogIdentifier", # required
    #     identifier: "EngagementArnOrIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.arn #=> String
    #   resp.title #=> String
    #   resp.description #=> String
    #   resp.created_at #=> Time
    #   resp.created_by #=> String
    #   resp.member_count #=> Integer
    #   resp.modified_at #=> Time
    #   resp.modified_by #=> String
    #   resp.contexts #=> Array
    #   resp.contexts[0].id #=> String
    #   resp.contexts[0].type #=> String, one of "CustomerProject", "Lead"
    #   resp.contexts[0].payload.customer_project.customer.industry #=> String, one of "Aerospace", "Agriculture", "Automotive", "Computers and Electronics", "Consumer Goods", "Education", "Energy - Oil and Gas", "Energy - Power and Utilities", "Financial Services", "Gaming", "Government", "Healthcare", "Hospitality", "Life Sciences", "Manufacturing", "Marketing and Advertising", "Media and Entertainment", "Mining", "Non-Profit Organization", "Professional Services", "Real Estate and Construction", "Retail", "Software and Internet", "Telecommunications", "Transportation and Logistics", "Travel", "Wholesale and Distribution", "Other"
    #   resp.contexts[0].payload.customer_project.customer.company_name #=> String
    #   resp.contexts[0].payload.customer_project.customer.website_url #=> String
    #   resp.contexts[0].payload.customer_project.customer.country_code #=> String, one of "US", "AF", "AX", "AL", "DZ", "AS", "AD", "AO", "AI", "AQ", "AG", "AR", "AM", "AW", "AU", "AT", "AZ", "BS", "BH", "BD", "BB", "BY", "BE", "BZ", "BJ", "BM", "BT", "BO", "BQ", "BA", "BW", "BV", "BR", "IO", "BN", "BG", "BF", "BI", "KH", "CM", "CA", "CV", "KY", "CF", "TD", "CL", "CN", "CX", "CC", "CO", "KM", "CG", "CK", "CR", "CI", "HR", "CU", "CW", "CY", "CZ", "CD", "DK", "DJ", "DM", "DO", "EC", "EG", "SV", "GQ", "ER", "EE", "ET", "FK", "FO", "FJ", "FI", "FR", "GF", "PF", "TF", "GA", "GM", "GE", "DE", "GH", "GI", "GR", "GL", "GD", "GP", "GU", "GT", "GG", "GN", "GW", "GY", "HT", "HM", "VA", "HN", "HK", "HU", "IS", "IN", "ID", "IR", "IQ", "IE", "IM", "IL", "IT", "JM", "JP", "JE", "JO", "KZ", "KE", "KI", "KR", "KW", "KG", "LA", "LV", "LB", "LS", "LR", "LY", "LI", "LT", "LU", "MO", "MK", "MG", "MW", "MY", "MV", "ML", "MT", "MH", "MQ", "MR", "MU", "YT", "MX", "FM", "MD", "MC", "MN", "ME", "MS", "MA", "MZ", "MM", "NA", "NR", "NP", "NL", "AN", "NC", "NZ", "NI", "NE", "NG", "NU", "NF", "MP", "NO", "OM", "PK", "PW", "PS", "PA", "PG", "PY", "PE", "PH", "PN", "PL", "PT", "PR", "QA", "RE", "RO", "RU", "RW", "BL", "SH", "KN", "LC", "MF", "PM", "VC", "WS", "SM", "ST", "SA", "SN", "RS", "SC", "SL", "SG", "SX", "SK", "SI", "SB", "SO", "ZA", "GS", "SS", "ES", "LK", "SD", "SR", "SJ", "SZ", "SE", "CH", "SY", "TW", "TJ", "TZ", "TH", "TL", "TG", "TK", "TO", "TT", "TN", "TR", "TM", "TC", "TV", "UG", "UA", "AE", "GB", "UM", "UY", "UZ", "VU", "VE", "VN", "VG", "VI", "WF", "EH", "YE", "ZM", "ZW"
    #   resp.contexts[0].payload.customer_project.project.title #=> String
    #   resp.contexts[0].payload.customer_project.project.business_problem #=> String
    #   resp.contexts[0].payload.customer_project.project.target_completion_date #=> String
    #   resp.contexts[0].payload.lead.qualification_status #=> String
    #   resp.contexts[0].payload.lead.customer.industry #=> String, one of "Aerospace", "Agriculture", "Automotive", "Computers and Electronics", "Consumer Goods", "Education", "Energy - Oil and Gas", "Energy - Power and Utilities", "Financial Services", "Gaming", "Government", "Healthcare", "Hospitality", "Life Sciences", "Manufacturing", "Marketing and Advertising", "Media and Entertainment", "Mining", "Non-Profit Organization", "Professional Services", "Real Estate and Construction", "Retail", "Software and Internet", "Telecommunications", "Transportation and Logistics", "Travel", "Wholesale and Distribution", "Other"
    #   resp.contexts[0].payload.lead.customer.company_name #=> String
    #   resp.contexts[0].payload.lead.customer.website_url #=> String
    #   resp.contexts[0].payload.lead.customer.address.city #=> String
    #   resp.contexts[0].payload.lead.customer.address.postal_code #=> String
    #   resp.contexts[0].payload.lead.customer.address.state_or_region #=> String
    #   resp.contexts[0].payload.lead.customer.address.country_code #=> String, one of "US", "AF", "AX", "AL", "DZ", "AS", "AD", "AO", "AI", "AQ", "AG", "AR", "AM", "AW", "AU", "AT", "AZ", "BS", "BH", "BD", "BB", "BY", "BE", "BZ", "BJ", "BM", "BT", "BO", "BQ", "BA", "BW", "BV", "BR", "IO", "BN", "BG", "BF", "BI", "KH", "CM", "CA", "CV", "KY", "CF", "TD", "CL", "CN", "CX", "CC", "CO", "KM", "CG", "CK", "CR", "CI", "HR", "CU", "CW", "CY", "CZ", "CD", "DK", "DJ", "DM", "DO", "EC", "EG", "SV", "GQ", "ER", "EE", "ET", "FK", "FO", "FJ", "FI", "FR", "GF", "PF", "TF", "GA", "GM", "GE", "DE", "GH", "GI", "GR", "GL", "GD", "GP", "GU", "GT", "GG", "GN", "GW", "GY", "HT", "HM", "VA", "HN", "HK", "HU", "IS", "IN", "ID", "IR", "IQ", "IE", "IM", "IL", "IT", "JM", "JP", "JE", "JO", "KZ", "KE", "KI", "KR", "KW", "KG", "LA", "LV", "LB", "LS", "LR", "LY", "LI", "LT", "LU", "MO", "MK", "MG", "MW", "MY", "MV", "ML", "MT", "MH", "MQ", "MR", "MU", "YT", "MX", "FM", "MD", "MC", "MN", "ME", "MS", "MA", "MZ", "MM", "NA", "NR", "NP", "NL", "AN", "NC", "NZ", "NI", "NE", "NG", "NU", "NF", "MP", "NO", "OM", "PK", "PW", "PS", "PA", "PG", "PY", "PE", "PH", "PN", "PL", "PT", "PR", "QA", "RE", "RO", "RU", "RW", "BL", "SH", "KN", "LC", "MF", "PM", "VC", "WS", "SM", "ST", "SA", "SN", "RS", "SC", "SL", "SG", "SX", "SK", "SI", "SB", "SO", "ZA", "GS", "SS", "ES", "LK", "SD", "SR", "SJ", "SZ", "SE", "CH", "SY", "TW", "TJ", "TZ", "TH", "TL", "TG", "TK", "TO", "TT", "TN", "TR", "TM", "TC", "TV", "UG", "UA", "AE", "GB", "UM", "UY", "UZ", "VU", "VE", "VN", "VG", "VI", "WF", "EH", "YE", "ZM", "ZW"
    #   resp.contexts[0].payload.lead.customer.aws_maturity #=> String
    #   resp.contexts[0].payload.lead.customer.market_segment #=> String, one of "Enterprise", "Large", "Medium", "Small", "Micro"
    #   resp.contexts[0].payload.lead.interactions #=> Array
    #   resp.contexts[0].payload.lead.interactions[0].source_type #=> String
    #   resp.contexts[0].payload.lead.interactions[0].source_id #=> String
    #   resp.contexts[0].payload.lead.interactions[0].source_name #=> String
    #   resp.contexts[0].payload.lead.interactions[0].usecase #=> String
    #   resp.contexts[0].payload.lead.interactions[0].interaction_date #=> Time
    #   resp.contexts[0].payload.lead.interactions[0].customer_action #=> String
    #   resp.contexts[0].payload.lead.interactions[0].business_problem #=> String
    #   resp.contexts[0].payload.lead.interactions[0].contact.business_title #=> String
    #   resp.contexts[0].payload.lead.interactions[0].contact.email #=> String
    #   resp.contexts[0].payload.lead.interactions[0].contact.first_name #=> String
    #   resp.contexts[0].payload.lead.interactions[0].contact.last_name #=> String
    #   resp.contexts[0].payload.lead.interactions[0].contact.phone #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/GetEngagement AWS API Documentation
    #
    # @overload get_engagement(params = {})
    # @param [Hash] params ({})
    def get_engagement(params = {}, options = {})
      req = build_request(:get_engagement, params)
      req.send_request(options)
    end

    # Retrieves the details of an engagement invitation shared by AWS with a
    # partner. The information includes aspects such as customer, project
    # details, and lifecycle information. To connect an engagement
    # invitation with an opportunity, match the invitation’s
    # `Payload.Project.Title` with opportunity `Project.Title`.
    #
    # @option params [required, String] :catalog
    #   Specifies the catalog associated with the request. The field accepts
    #   values from the predefined set: `AWS` for live operations or `Sandbox`
    #   for testing environments.
    #
    # @option params [required, String] :identifier
    #   Specifies the unique identifier for the retrieved engagement
    #   invitation.
    #
    # @return [Types::GetEngagementInvitationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEngagementInvitationResponse#arn #arn} => String
    #   * {Types::GetEngagementInvitationResponse#payload_type #payload_type} => String
    #   * {Types::GetEngagementInvitationResponse#id #id} => String
    #   * {Types::GetEngagementInvitationResponse#engagement_id #engagement_id} => String
    #   * {Types::GetEngagementInvitationResponse#engagement_title #engagement_title} => String
    #   * {Types::GetEngagementInvitationResponse#status #status} => String
    #   * {Types::GetEngagementInvitationResponse#invitation_date #invitation_date} => Time
    #   * {Types::GetEngagementInvitationResponse#expiration_date #expiration_date} => Time
    #   * {Types::GetEngagementInvitationResponse#sender_aws_account_id #sender_aws_account_id} => String
    #   * {Types::GetEngagementInvitationResponse#sender_company_name #sender_company_name} => String
    #   * {Types::GetEngagementInvitationResponse#receiver #receiver} => Types::Receiver
    #   * {Types::GetEngagementInvitationResponse#catalog #catalog} => String
    #   * {Types::GetEngagementInvitationResponse#rejection_reason #rejection_reason} => String
    #   * {Types::GetEngagementInvitationResponse#payload #payload} => Types::Payload
    #   * {Types::GetEngagementInvitationResponse#invitation_message #invitation_message} => String
    #   * {Types::GetEngagementInvitationResponse#engagement_description #engagement_description} => String
    #   * {Types::GetEngagementInvitationResponse#existing_members #existing_members} => Array&lt;Types::EngagementMemberSummary&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_engagement_invitation({
    #     catalog: "CatalogIdentifier", # required
    #     identifier: "EngagementInvitationArnOrIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.payload_type #=> String, one of "OpportunityInvitation", "LeadInvitation"
    #   resp.id #=> String
    #   resp.engagement_id #=> String
    #   resp.engagement_title #=> String
    #   resp.status #=> String, one of "ACCEPTED", "PENDING", "REJECTED", "EXPIRED"
    #   resp.invitation_date #=> Time
    #   resp.expiration_date #=> Time
    #   resp.sender_aws_account_id #=> String
    #   resp.sender_company_name #=> String
    #   resp.receiver.account.alias #=> String
    #   resp.receiver.account.aws_account_id #=> String
    #   resp.catalog #=> String
    #   resp.rejection_reason #=> String
    #   resp.payload.opportunity_invitation.sender_contacts #=> Array
    #   resp.payload.opportunity_invitation.sender_contacts[0].email #=> String
    #   resp.payload.opportunity_invitation.sender_contacts[0].first_name #=> String
    #   resp.payload.opportunity_invitation.sender_contacts[0].last_name #=> String
    #   resp.payload.opportunity_invitation.sender_contacts[0].business_title #=> String
    #   resp.payload.opportunity_invitation.sender_contacts[0].phone #=> String
    #   resp.payload.opportunity_invitation.receiver_responsibilities #=> Array
    #   resp.payload.opportunity_invitation.receiver_responsibilities[0] #=> String, one of "Distributor", "Reseller", "Hardware Partner", "Managed Service Provider", "Software Partner", "Services Partner", "Training Partner", "Co-Sell Facilitator", "Facilitator"
    #   resp.payload.opportunity_invitation.customer.industry #=> String, one of "Aerospace", "Agriculture", "Automotive", "Computers and Electronics", "Consumer Goods", "Education", "Energy - Oil and Gas", "Energy - Power and Utilities", "Financial Services", "Gaming", "Government", "Healthcare", "Hospitality", "Life Sciences", "Manufacturing", "Marketing and Advertising", "Media and Entertainment", "Mining", "Non-Profit Organization", "Professional Services", "Real Estate and Construction", "Retail", "Software and Internet", "Telecommunications", "Transportation and Logistics", "Travel", "Wholesale and Distribution", "Other"
    #   resp.payload.opportunity_invitation.customer.company_name #=> String
    #   resp.payload.opportunity_invitation.customer.website_url #=> String
    #   resp.payload.opportunity_invitation.customer.country_code #=> String, one of "US", "AF", "AX", "AL", "DZ", "AS", "AD", "AO", "AI", "AQ", "AG", "AR", "AM", "AW", "AU", "AT", "AZ", "BS", "BH", "BD", "BB", "BY", "BE", "BZ", "BJ", "BM", "BT", "BO", "BQ", "BA", "BW", "BV", "BR", "IO", "BN", "BG", "BF", "BI", "KH", "CM", "CA", "CV", "KY", "CF", "TD", "CL", "CN", "CX", "CC", "CO", "KM", "CG", "CK", "CR", "CI", "HR", "CU", "CW", "CY", "CZ", "CD", "DK", "DJ", "DM", "DO", "EC", "EG", "SV", "GQ", "ER", "EE", "ET", "FK", "FO", "FJ", "FI", "FR", "GF", "PF", "TF", "GA", "GM", "GE", "DE", "GH", "GI", "GR", "GL", "GD", "GP", "GU", "GT", "GG", "GN", "GW", "GY", "HT", "HM", "VA", "HN", "HK", "HU", "IS", "IN", "ID", "IR", "IQ", "IE", "IM", "IL", "IT", "JM", "JP", "JE", "JO", "KZ", "KE", "KI", "KR", "KW", "KG", "LA", "LV", "LB", "LS", "LR", "LY", "LI", "LT", "LU", "MO", "MK", "MG", "MW", "MY", "MV", "ML", "MT", "MH", "MQ", "MR", "MU", "YT", "MX", "FM", "MD", "MC", "MN", "ME", "MS", "MA", "MZ", "MM", "NA", "NR", "NP", "NL", "AN", "NC", "NZ", "NI", "NE", "NG", "NU", "NF", "MP", "NO", "OM", "PK", "PW", "PS", "PA", "PG", "PY", "PE", "PH", "PN", "PL", "PT", "PR", "QA", "RE", "RO", "RU", "RW", "BL", "SH", "KN", "LC", "MF", "PM", "VC", "WS", "SM", "ST", "SA", "SN", "RS", "SC", "SL", "SG", "SX", "SK", "SI", "SB", "SO", "ZA", "GS", "SS", "ES", "LK", "SD", "SR", "SJ", "SZ", "SE", "CH", "SY", "TW", "TJ", "TZ", "TH", "TL", "TG", "TK", "TO", "TT", "TN", "TR", "TM", "TC", "TV", "UG", "UA", "AE", "GB", "UM", "UY", "UZ", "VU", "VE", "VN", "VG", "VI", "WF", "EH", "YE", "ZM", "ZW"
    #   resp.payload.opportunity_invitation.project.business_problem #=> String
    #   resp.payload.opportunity_invitation.project.title #=> String
    #   resp.payload.opportunity_invitation.project.target_completion_date #=> String
    #   resp.payload.opportunity_invitation.project.expected_customer_spend #=> Array
    #   resp.payload.opportunity_invitation.project.expected_customer_spend[0].amount #=> String
    #   resp.payload.opportunity_invitation.project.expected_customer_spend[0].currency_code #=> String, one of "USD", "EUR", "GBP", "AUD", "CAD", "CNY", "NZD", "INR", "JPY", "CHF", "SEK", "AED", "AFN", "ALL", "AMD", "ANG", "AOA", "ARS", "AWG", "AZN", "BAM", "BBD", "BDT", "BGN", "BHD", "BIF", "BMD", "BND", "BOB", "BOV", "BRL", "BSD", "BTN", "BWP", "BYN", "BZD", "CDF", "CHE", "CHW", "CLF", "CLP", "COP", "COU", "CRC", "CUC", "CUP", "CVE", "CZK", "DJF", "DKK", "DOP", "DZD", "EGP", "ERN", "ETB", "FJD", "FKP", "GEL", "GHS", "GIP", "GMD", "GNF", "GTQ", "GYD", "HKD", "HNL", "HRK", "HTG", "HUF", "IDR", "ILS", "IQD", "IRR", "ISK", "JMD", "JOD", "KES", "KGS", "KHR", "KMF", "KPW", "KRW", "KWD", "KYD", "KZT", "LAK", "LBP", "LKR", "LRD", "LSL", "LYD", "MAD", "MDL", "MGA", "MKD", "MMK", "MNT", "MOP", "MRU", "MUR", "MVR", "MWK", "MXN", "MXV", "MYR", "MZN", "NAD", "NGN", "NIO", "NOK", "NPR", "OMR", "PAB", "PEN", "PGK", "PHP", "PKR", "PLN", "PYG", "QAR", "RON", "RSD", "RUB", "RWF", "SAR", "SBD", "SCR", "SDG", "SGD", "SHP", "SLL", "SOS", "SRD", "SSP", "STN", "SVC", "SYP", "SZL", "THB", "TJS", "TMT", "TND", "TOP", "TRY", "TTD", "TWD", "TZS", "UAH", "UGX", "USN", "UYI", "UYU", "UZS", "VEF", "VND", "VUV", "WST", "XAF", "XCD", "XDR", "XOF", "XPF", "XSU", "XUA", "YER", "ZAR", "ZMW", "ZWL"
    #   resp.payload.opportunity_invitation.project.expected_customer_spend[0].frequency #=> String, one of "Monthly"
    #   resp.payload.opportunity_invitation.project.expected_customer_spend[0].target_company #=> String
    #   resp.payload.opportunity_invitation.project.expected_customer_spend[0].estimation_url #=> String
    #   resp.payload.lead_invitation.customer.industry #=> String, one of "Aerospace", "Agriculture", "Automotive", "Computers and Electronics", "Consumer Goods", "Education", "Energy - Oil and Gas", "Energy - Power and Utilities", "Financial Services", "Gaming", "Government", "Healthcare", "Hospitality", "Life Sciences", "Manufacturing", "Marketing and Advertising", "Media and Entertainment", "Mining", "Non-Profit Organization", "Professional Services", "Real Estate and Construction", "Retail", "Software and Internet", "Telecommunications", "Transportation and Logistics", "Travel", "Wholesale and Distribution", "Other"
    #   resp.payload.lead_invitation.customer.company_name #=> String
    #   resp.payload.lead_invitation.customer.website_url #=> String
    #   resp.payload.lead_invitation.customer.country_code #=> String, one of "US", "AF", "AX", "AL", "DZ", "AS", "AD", "AO", "AI", "AQ", "AG", "AR", "AM", "AW", "AU", "AT", "AZ", "BS", "BH", "BD", "BB", "BY", "BE", "BZ", "BJ", "BM", "BT", "BO", "BQ", "BA", "BW", "BV", "BR", "IO", "BN", "BG", "BF", "BI", "KH", "CM", "CA", "CV", "KY", "CF", "TD", "CL", "CN", "CX", "CC", "CO", "KM", "CG", "CK", "CR", "CI", "HR", "CU", "CW", "CY", "CZ", "CD", "DK", "DJ", "DM", "DO", "EC", "EG", "SV", "GQ", "ER", "EE", "ET", "FK", "FO", "FJ", "FI", "FR", "GF", "PF", "TF", "GA", "GM", "GE", "DE", "GH", "GI", "GR", "GL", "GD", "GP", "GU", "GT", "GG", "GN", "GW", "GY", "HT", "HM", "VA", "HN", "HK", "HU", "IS", "IN", "ID", "IR", "IQ", "IE", "IM", "IL", "IT", "JM", "JP", "JE", "JO", "KZ", "KE", "KI", "KR", "KW", "KG", "LA", "LV", "LB", "LS", "LR", "LY", "LI", "LT", "LU", "MO", "MK", "MG", "MW", "MY", "MV", "ML", "MT", "MH", "MQ", "MR", "MU", "YT", "MX", "FM", "MD", "MC", "MN", "ME", "MS", "MA", "MZ", "MM", "NA", "NR", "NP", "NL", "AN", "NC", "NZ", "NI", "NE", "NG", "NU", "NF", "MP", "NO", "OM", "PK", "PW", "PS", "PA", "PG", "PY", "PE", "PH", "PN", "PL", "PT", "PR", "QA", "RE", "RO", "RU", "RW", "BL", "SH", "KN", "LC", "MF", "PM", "VC", "WS", "SM", "ST", "SA", "SN", "RS", "SC", "SL", "SG", "SX", "SK", "SI", "SB", "SO", "ZA", "GS", "SS", "ES", "LK", "SD", "SR", "SJ", "SZ", "SE", "CH", "SY", "TW", "TJ", "TZ", "TH", "TL", "TG", "TK", "TO", "TT", "TN", "TR", "TM", "TC", "TV", "UG", "UA", "AE", "GB", "UM", "UY", "UZ", "VU", "VE", "VN", "VG", "VI", "WF", "EH", "YE", "ZM", "ZW"
    #   resp.payload.lead_invitation.customer.aws_maturity #=> String
    #   resp.payload.lead_invitation.customer.market_segment #=> String, one of "Enterprise", "Large", "Medium", "Small", "Micro"
    #   resp.payload.lead_invitation.interaction.source_type #=> String
    #   resp.payload.lead_invitation.interaction.source_id #=> String
    #   resp.payload.lead_invitation.interaction.source_name #=> String
    #   resp.payload.lead_invitation.interaction.usecase #=> String
    #   resp.payload.lead_invitation.interaction.contact_business_title #=> String
    #   resp.invitation_message #=> String
    #   resp.engagement_description #=> String
    #   resp.existing_members #=> Array
    #   resp.existing_members[0].company_name #=> String
    #   resp.existing_members[0].website_url #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/GetEngagementInvitation AWS API Documentation
    #
    # @overload get_engagement_invitation(params = {})
    # @param [Hash] params ({})
    def get_engagement_invitation(params = {}, options = {})
      req = build_request(:get_engagement_invitation, params)
      req.send_request(options)
    end

    # Fetches the `Opportunity` record from Partner Central by a given
    # `Identifier`.
    #
    # Use the `ListOpportunities` action or the event notification (from
    # Amazon EventBridge) to obtain this identifier.
    #
    # @option params [required, String] :catalog
    #   Specifies the catalog associated with the request. This field takes a
    #   string value from a predefined list: `AWS` or `Sandbox`. The catalog
    #   determines which environment the opportunity is fetched from. Use
    #   `AWS` to retrieve opportunities in the Amazon Web Services catalog,
    #   and `Sandbox` to retrieve opportunities in a secure, isolated testing
    #   environment.
    #
    # @option params [required, String] :identifier
    #   Read-only, system generated `Opportunity` unique identifier.
    #
    # @return [Types::GetOpportunityResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetOpportunityResponse#catalog #catalog} => String
    #   * {Types::GetOpportunityResponse#primary_needs_from_aws #primary_needs_from_aws} => Array&lt;String&gt;
    #   * {Types::GetOpportunityResponse#national_security #national_security} => String
    #   * {Types::GetOpportunityResponse#partner_opportunity_identifier #partner_opportunity_identifier} => String
    #   * {Types::GetOpportunityResponse#customer #customer} => Types::Customer
    #   * {Types::GetOpportunityResponse#project #project} => Types::Project
    #   * {Types::GetOpportunityResponse#opportunity_type #opportunity_type} => String
    #   * {Types::GetOpportunityResponse#marketing #marketing} => Types::Marketing
    #   * {Types::GetOpportunityResponse#software_revenue #software_revenue} => Types::SoftwareRevenue
    #   * {Types::GetOpportunityResponse#id #id} => String
    #   * {Types::GetOpportunityResponse#arn #arn} => String
    #   * {Types::GetOpportunityResponse#last_modified_date #last_modified_date} => Time
    #   * {Types::GetOpportunityResponse#created_date #created_date} => Time
    #   * {Types::GetOpportunityResponse#related_entity_identifiers #related_entity_identifiers} => Types::RelatedEntityIdentifiers
    #   * {Types::GetOpportunityResponse#life_cycle #life_cycle} => Types::LifeCycle
    #   * {Types::GetOpportunityResponse#opportunity_team #opportunity_team} => Array&lt;Types::Contact&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_opportunity({
    #     catalog: "CatalogIdentifier", # required
    #     identifier: "OpportunityIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.catalog #=> String
    #   resp.primary_needs_from_aws #=> Array
    #   resp.primary_needs_from_aws[0] #=> String, one of "Co-Sell - Architectural Validation", "Co-Sell - Business Presentation", "Co-Sell - Competitive Information", "Co-Sell - Pricing Assistance", "Co-Sell - Technical Consultation", "Co-Sell - Total Cost of Ownership Evaluation", "Co-Sell - Deal Support", "Co-Sell - Support for Public Tender / RFx"
    #   resp.national_security #=> String, one of "Yes", "No"
    #   resp.partner_opportunity_identifier #=> String
    #   resp.customer.account.industry #=> String, one of "Aerospace", "Agriculture", "Automotive", "Computers and Electronics", "Consumer Goods", "Education", "Energy - Oil and Gas", "Energy - Power and Utilities", "Financial Services", "Gaming", "Government", "Healthcare", "Hospitality", "Life Sciences", "Manufacturing", "Marketing and Advertising", "Media and Entertainment", "Mining", "Non-Profit Organization", "Professional Services", "Real Estate and Construction", "Retail", "Software and Internet", "Telecommunications", "Transportation and Logistics", "Travel", "Wholesale and Distribution", "Other"
    #   resp.customer.account.other_industry #=> String
    #   resp.customer.account.company_name #=> String
    #   resp.customer.account.website_url #=> String
    #   resp.customer.account.aws_account_id #=> String
    #   resp.customer.account.address.city #=> String
    #   resp.customer.account.address.postal_code #=> String
    #   resp.customer.account.address.state_or_region #=> String
    #   resp.customer.account.address.country_code #=> String, one of "US", "AF", "AX", "AL", "DZ", "AS", "AD", "AO", "AI", "AQ", "AG", "AR", "AM", "AW", "AU", "AT", "AZ", "BS", "BH", "BD", "BB", "BY", "BE", "BZ", "BJ", "BM", "BT", "BO", "BQ", "BA", "BW", "BV", "BR", "IO", "BN", "BG", "BF", "BI", "KH", "CM", "CA", "CV", "KY", "CF", "TD", "CL", "CN", "CX", "CC", "CO", "KM", "CG", "CK", "CR", "CI", "HR", "CU", "CW", "CY", "CZ", "CD", "DK", "DJ", "DM", "DO", "EC", "EG", "SV", "GQ", "ER", "EE", "ET", "FK", "FO", "FJ", "FI", "FR", "GF", "PF", "TF", "GA", "GM", "GE", "DE", "GH", "GI", "GR", "GL", "GD", "GP", "GU", "GT", "GG", "GN", "GW", "GY", "HT", "HM", "VA", "HN", "HK", "HU", "IS", "IN", "ID", "IR", "IQ", "IE", "IM", "IL", "IT", "JM", "JP", "JE", "JO", "KZ", "KE", "KI", "KR", "KW", "KG", "LA", "LV", "LB", "LS", "LR", "LY", "LI", "LT", "LU", "MO", "MK", "MG", "MW", "MY", "MV", "ML", "MT", "MH", "MQ", "MR", "MU", "YT", "MX", "FM", "MD", "MC", "MN", "ME", "MS", "MA", "MZ", "MM", "NA", "NR", "NP", "NL", "AN", "NC", "NZ", "NI", "NE", "NG", "NU", "NF", "MP", "NO", "OM", "PK", "PW", "PS", "PA", "PG", "PY", "PE", "PH", "PN", "PL", "PT", "PR", "QA", "RE", "RO", "RU", "RW", "BL", "SH", "KN", "LC", "MF", "PM", "VC", "WS", "SM", "ST", "SA", "SN", "RS", "SC", "SL", "SG", "SX", "SK", "SI", "SB", "SO", "ZA", "GS", "SS", "ES", "LK", "SD", "SR", "SJ", "SZ", "SE", "CH", "SY", "TW", "TJ", "TZ", "TH", "TL", "TG", "TK", "TO", "TT", "TN", "TR", "TM", "TC", "TV", "UG", "UA", "AE", "GB", "UM", "UY", "UZ", "VU", "VE", "VN", "VG", "VI", "WF", "EH", "YE", "ZM", "ZW"
    #   resp.customer.account.address.street_address #=> String
    #   resp.customer.account.duns #=> String
    #   resp.customer.contacts #=> Array
    #   resp.customer.contacts[0].email #=> String
    #   resp.customer.contacts[0].first_name #=> String
    #   resp.customer.contacts[0].last_name #=> String
    #   resp.customer.contacts[0].business_title #=> String
    #   resp.customer.contacts[0].phone #=> String
    #   resp.project.delivery_models #=> Array
    #   resp.project.delivery_models[0] #=> String, one of "SaaS or PaaS", "BYOL or AMI", "Managed Services", "Professional Services", "Resell", "Other"
    #   resp.project.expected_customer_spend #=> Array
    #   resp.project.expected_customer_spend[0].amount #=> String
    #   resp.project.expected_customer_spend[0].currency_code #=> String, one of "USD", "EUR", "GBP", "AUD", "CAD", "CNY", "NZD", "INR", "JPY", "CHF", "SEK", "AED", "AFN", "ALL", "AMD", "ANG", "AOA", "ARS", "AWG", "AZN", "BAM", "BBD", "BDT", "BGN", "BHD", "BIF", "BMD", "BND", "BOB", "BOV", "BRL", "BSD", "BTN", "BWP", "BYN", "BZD", "CDF", "CHE", "CHW", "CLF", "CLP", "COP", "COU", "CRC", "CUC", "CUP", "CVE", "CZK", "DJF", "DKK", "DOP", "DZD", "EGP", "ERN", "ETB", "FJD", "FKP", "GEL", "GHS", "GIP", "GMD", "GNF", "GTQ", "GYD", "HKD", "HNL", "HRK", "HTG", "HUF", "IDR", "ILS", "IQD", "IRR", "ISK", "JMD", "JOD", "KES", "KGS", "KHR", "KMF", "KPW", "KRW", "KWD", "KYD", "KZT", "LAK", "LBP", "LKR", "LRD", "LSL", "LYD", "MAD", "MDL", "MGA", "MKD", "MMK", "MNT", "MOP", "MRU", "MUR", "MVR", "MWK", "MXN", "MXV", "MYR", "MZN", "NAD", "NGN", "NIO", "NOK", "NPR", "OMR", "PAB", "PEN", "PGK", "PHP", "PKR", "PLN", "PYG", "QAR", "RON", "RSD", "RUB", "RWF", "SAR", "SBD", "SCR", "SDG", "SGD", "SHP", "SLL", "SOS", "SRD", "SSP", "STN", "SVC", "SYP", "SZL", "THB", "TJS", "TMT", "TND", "TOP", "TRY", "TTD", "TWD", "TZS", "UAH", "UGX", "USN", "UYI", "UYU", "UZS", "VEF", "VND", "VUV", "WST", "XAF", "XCD", "XDR", "XOF", "XPF", "XSU", "XUA", "YER", "ZAR", "ZMW", "ZWL"
    #   resp.project.expected_customer_spend[0].frequency #=> String, one of "Monthly"
    #   resp.project.expected_customer_spend[0].target_company #=> String
    #   resp.project.expected_customer_spend[0].estimation_url #=> String
    #   resp.project.title #=> String
    #   resp.project.apn_programs #=> Array
    #   resp.project.apn_programs[0] #=> String
    #   resp.project.customer_business_problem #=> String
    #   resp.project.customer_use_case #=> String
    #   resp.project.related_opportunity_identifier #=> String
    #   resp.project.sales_activities #=> Array
    #   resp.project.sales_activities[0] #=> String, one of "Initialized discussions with customer", "Customer has shown interest in solution", "Conducted POC / Demo", "In evaluation / planning stage", "Agreed on solution to Business Problem", "Completed Action Plan", "Finalized Deployment Need", "SOW Signed"
    #   resp.project.competitor_name #=> String, one of "Oracle Cloud", "On-Prem", "Co-location", "Akamai", "AliCloud", "Google Cloud Platform", "IBM Softlayer", "Microsoft Azure", "Other- Cost Optimization", "No Competition", "*Other"
    #   resp.project.other_competitor_names #=> String
    #   resp.project.other_solution_description #=> String
    #   resp.project.additional_comments #=> String
    #   resp.opportunity_type #=> String, one of "Net New Business", "Flat Renewal", "Expansion"
    #   resp.marketing.campaign_name #=> String
    #   resp.marketing.source #=> String, one of "Marketing Activity", "None"
    #   resp.marketing.use_cases #=> Array
    #   resp.marketing.use_cases[0] #=> String
    #   resp.marketing.channels #=> Array
    #   resp.marketing.channels[0] #=> String, one of "AWS Marketing Central", "Content Syndication", "Display", "Email", "Live Event", "Out Of Home (OOH)", "Print", "Search", "Social", "Telemarketing", "TV", "Video", "Virtual Event"
    #   resp.marketing.aws_funding_used #=> String, one of "Yes", "No"
    #   resp.software_revenue.delivery_model #=> String, one of "Contract", "Pay-as-you-go", "Subscription"
    #   resp.software_revenue.value.amount #=> String
    #   resp.software_revenue.value.currency_code #=> String, one of "USD", "EUR", "GBP", "AUD", "CAD", "CNY", "NZD", "INR", "JPY", "CHF", "SEK", "AED", "AFN", "ALL", "AMD", "ANG", "AOA", "ARS", "AWG", "AZN", "BAM", "BBD", "BDT", "BGN", "BHD", "BIF", "BMD", "BND", "BOB", "BOV", "BRL", "BSD", "BTN", "BWP", "BYN", "BZD", "CDF", "CHE", "CHW", "CLF", "CLP", "COP", "COU", "CRC", "CUC", "CUP", "CVE", "CZK", "DJF", "DKK", "DOP", "DZD", "EGP", "ERN", "ETB", "FJD", "FKP", "GEL", "GHS", "GIP", "GMD", "GNF", "GTQ", "GYD", "HKD", "HNL", "HRK", "HTG", "HUF", "IDR", "ILS", "IQD", "IRR", "ISK", "JMD", "JOD", "KES", "KGS", "KHR", "KMF", "KPW", "KRW", "KWD", "KYD", "KZT", "LAK", "LBP", "LKR", "LRD", "LSL", "LYD", "MAD", "MDL", "MGA", "MKD", "MMK", "MNT", "MOP", "MRU", "MUR", "MVR", "MWK", "MXN", "MXV", "MYR", "MZN", "NAD", "NGN", "NIO", "NOK", "NPR", "OMR", "PAB", "PEN", "PGK", "PHP", "PKR", "PLN", "PYG", "QAR", "RON", "RSD", "RUB", "RWF", "SAR", "SBD", "SCR", "SDG", "SGD", "SHP", "SLL", "SOS", "SRD", "SSP", "STN", "SVC", "SYP", "SZL", "THB", "TJS", "TMT", "TND", "TOP", "TRY", "TTD", "TWD", "TZS", "UAH", "UGX", "USN", "UYI", "UYU", "UZS", "VEF", "VND", "VUV", "WST", "XAF", "XCD", "XDR", "XOF", "XPF", "XSU", "XUA", "YER", "ZAR", "ZMW", "ZWL"
    #   resp.software_revenue.effective_date #=> String
    #   resp.software_revenue.expiration_date #=> String
    #   resp.id #=> String
    #   resp.arn #=> String
    #   resp.last_modified_date #=> Time
    #   resp.created_date #=> Time
    #   resp.related_entity_identifiers.aws_marketplace_offers #=> Array
    #   resp.related_entity_identifiers.aws_marketplace_offers[0] #=> String
    #   resp.related_entity_identifiers.aws_marketplace_offer_sets #=> Array
    #   resp.related_entity_identifiers.aws_marketplace_offer_sets[0] #=> String
    #   resp.related_entity_identifiers.solutions #=> Array
    #   resp.related_entity_identifiers.solutions[0] #=> String
    #   resp.related_entity_identifiers.aws_products #=> Array
    #   resp.related_entity_identifiers.aws_products[0] #=> String
    #   resp.life_cycle.stage #=> String, one of "Prospect", "Qualified", "Technical Validation", "Business Validation", "Committed", "Launched", "Closed Lost"
    #   resp.life_cycle.closed_lost_reason #=> String, one of "Customer Deficiency", "Delay / Cancellation of Project", "Legal / Tax / Regulatory", "Lost to Competitor - Google", "Lost to Competitor - Microsoft", "Lost to Competitor - SoftLayer", "Lost to Competitor - VMWare", "Lost to Competitor - Other", "No Opportunity", "On Premises Deployment", "Partner Gap", "Price", "Security / Compliance", "Technical Limitations", "Customer Experience", "Other", "People/Relationship/Governance", "Product/Technology", "Financial/Commercial"
    #   resp.life_cycle.next_steps #=> String
    #   resp.life_cycle.target_close_date #=> String
    #   resp.life_cycle.review_status #=> String, one of "Pending Submission", "Submitted", "In review", "Approved", "Rejected", "Action Required"
    #   resp.life_cycle.review_comments #=> String
    #   resp.life_cycle.review_status_reason #=> String
    #   resp.life_cycle.next_steps_history #=> Array
    #   resp.life_cycle.next_steps_history[0].value #=> String
    #   resp.life_cycle.next_steps_history[0].time #=> Time
    #   resp.opportunity_team #=> Array
    #   resp.opportunity_team[0].email #=> String
    #   resp.opportunity_team[0].first_name #=> String
    #   resp.opportunity_team[0].last_name #=> String
    #   resp.opportunity_team[0].business_title #=> String
    #   resp.opportunity_team[0].phone #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/GetOpportunity AWS API Documentation
    #
    # @overload get_opportunity(params = {})
    # @param [Hash] params ({})
    def get_opportunity(params = {}, options = {})
      req = build_request(:get_opportunity, params)
      req.send_request(options)
    end

    # Use this action to retrieve a specific snapshot record.
    #
    # @option params [required, String] :catalog
    #   Specifies the catalog related to the request. Valid values are:
    #
    #   * AWS: Retrieves the snapshot from the production AWS environment.
    #
    #   * Sandbox: Retrieves the snapshot from a sandbox environment used for
    #     testing or development purposes.
    #
    # @option params [required, String] :engagement_identifier
    #   The unique identifier of the engagement associated with the snapshot.
    #   This field links the snapshot to a specific engagement context.
    #
    # @option params [required, String] :resource_type
    #   Specifies the type of resource that was snapshotted. This field
    #   determines the structure and content of the snapshot payload. Valid
    #   value includes:`Opportunity`: For opportunity-related data.
    #
    # @option params [required, String] :resource_identifier
    #   The unique identifier of the specific resource that was snapshotted.
    #   The format and constraints of this identifier depend on the
    #   ResourceType specified. For `Opportunity` type, it will be an
    #   `opportunity ID`
    #
    # @option params [required, String] :resource_snapshot_template_identifier
    #   he name of the template that defines the schema for the snapshot. This
    #   template determines which subset of the resource data is included in
    #   the snapshot and must correspond to an existing and valid template for
    #   the specified `ResourceType`.
    #
    # @option params [Integer] :revision
    #   Specifies which revision of the snapshot to retrieve. If omitted
    #   returns the latest revision.
    #
    # @return [Types::GetResourceSnapshotResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetResourceSnapshotResponse#catalog #catalog} => String
    #   * {Types::GetResourceSnapshotResponse#arn #arn} => String
    #   * {Types::GetResourceSnapshotResponse#created_by #created_by} => String
    #   * {Types::GetResourceSnapshotResponse#created_at #created_at} => Time
    #   * {Types::GetResourceSnapshotResponse#engagement_id #engagement_id} => String
    #   * {Types::GetResourceSnapshotResponse#resource_type #resource_type} => String
    #   * {Types::GetResourceSnapshotResponse#resource_id #resource_id} => String
    #   * {Types::GetResourceSnapshotResponse#resource_snapshot_template_name #resource_snapshot_template_name} => String
    #   * {Types::GetResourceSnapshotResponse#revision #revision} => Integer
    #   * {Types::GetResourceSnapshotResponse#payload #payload} => Types::ResourceSnapshotPayload
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resource_snapshot({
    #     catalog: "CatalogIdentifier", # required
    #     engagement_identifier: "EngagementIdentifier", # required
    #     resource_type: "Opportunity", # required, accepts Opportunity
    #     resource_identifier: "ResourceIdentifier", # required
    #     resource_snapshot_template_identifier: "ResourceTemplateName", # required
    #     revision: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.catalog #=> String
    #   resp.arn #=> String
    #   resp.created_by #=> String
    #   resp.created_at #=> Time
    #   resp.engagement_id #=> String
    #   resp.resource_type #=> String, one of "Opportunity"
    #   resp.resource_id #=> String
    #   resp.resource_snapshot_template_name #=> String
    #   resp.revision #=> Integer
    #   resp.payload.opportunity_summary.opportunity_type #=> String, one of "Net New Business", "Flat Renewal", "Expansion"
    #   resp.payload.opportunity_summary.lifecycle.target_close_date #=> String
    #   resp.payload.opportunity_summary.lifecycle.review_status #=> String, one of "Pending Submission", "Submitted", "In review", "Approved", "Rejected", "Action Required"
    #   resp.payload.opportunity_summary.lifecycle.stage #=> String, one of "Prospect", "Qualified", "Technical Validation", "Business Validation", "Committed", "Launched", "Closed Lost"
    #   resp.payload.opportunity_summary.lifecycle.next_steps #=> String
    #   resp.payload.opportunity_summary.opportunity_team #=> Array
    #   resp.payload.opportunity_summary.opportunity_team[0].email #=> String
    #   resp.payload.opportunity_summary.opportunity_team[0].first_name #=> String
    #   resp.payload.opportunity_summary.opportunity_team[0].last_name #=> String
    #   resp.payload.opportunity_summary.opportunity_team[0].business_title #=> String
    #   resp.payload.opportunity_summary.opportunity_team[0].phone #=> String
    #   resp.payload.opportunity_summary.primary_needs_from_aws #=> Array
    #   resp.payload.opportunity_summary.primary_needs_from_aws[0] #=> String, one of "Co-Sell - Architectural Validation", "Co-Sell - Business Presentation", "Co-Sell - Competitive Information", "Co-Sell - Pricing Assistance", "Co-Sell - Technical Consultation", "Co-Sell - Total Cost of Ownership Evaluation", "Co-Sell - Deal Support", "Co-Sell - Support for Public Tender / RFx"
    #   resp.payload.opportunity_summary.customer.account.industry #=> String, one of "Aerospace", "Agriculture", "Automotive", "Computers and Electronics", "Consumer Goods", "Education", "Energy - Oil and Gas", "Energy - Power and Utilities", "Financial Services", "Gaming", "Government", "Healthcare", "Hospitality", "Life Sciences", "Manufacturing", "Marketing and Advertising", "Media and Entertainment", "Mining", "Non-Profit Organization", "Professional Services", "Real Estate and Construction", "Retail", "Software and Internet", "Telecommunications", "Transportation and Logistics", "Travel", "Wholesale and Distribution", "Other"
    #   resp.payload.opportunity_summary.customer.account.other_industry #=> String
    #   resp.payload.opportunity_summary.customer.account.company_name #=> String
    #   resp.payload.opportunity_summary.customer.account.website_url #=> String
    #   resp.payload.opportunity_summary.customer.account.aws_account_id #=> String
    #   resp.payload.opportunity_summary.customer.account.address.city #=> String
    #   resp.payload.opportunity_summary.customer.account.address.postal_code #=> String
    #   resp.payload.opportunity_summary.customer.account.address.state_or_region #=> String
    #   resp.payload.opportunity_summary.customer.account.address.country_code #=> String, one of "US", "AF", "AX", "AL", "DZ", "AS", "AD", "AO", "AI", "AQ", "AG", "AR", "AM", "AW", "AU", "AT", "AZ", "BS", "BH", "BD", "BB", "BY", "BE", "BZ", "BJ", "BM", "BT", "BO", "BQ", "BA", "BW", "BV", "BR", "IO", "BN", "BG", "BF", "BI", "KH", "CM", "CA", "CV", "KY", "CF", "TD", "CL", "CN", "CX", "CC", "CO", "KM", "CG", "CK", "CR", "CI", "HR", "CU", "CW", "CY", "CZ", "CD", "DK", "DJ", "DM", "DO", "EC", "EG", "SV", "GQ", "ER", "EE", "ET", "FK", "FO", "FJ", "FI", "FR", "GF", "PF", "TF", "GA", "GM", "GE", "DE", "GH", "GI", "GR", "GL", "GD", "GP", "GU", "GT", "GG", "GN", "GW", "GY", "HT", "HM", "VA", "HN", "HK", "HU", "IS", "IN", "ID", "IR", "IQ", "IE", "IM", "IL", "IT", "JM", "JP", "JE", "JO", "KZ", "KE", "KI", "KR", "KW", "KG", "LA", "LV", "LB", "LS", "LR", "LY", "LI", "LT", "LU", "MO", "MK", "MG", "MW", "MY", "MV", "ML", "MT", "MH", "MQ", "MR", "MU", "YT", "MX", "FM", "MD", "MC", "MN", "ME", "MS", "MA", "MZ", "MM", "NA", "NR", "NP", "NL", "AN", "NC", "NZ", "NI", "NE", "NG", "NU", "NF", "MP", "NO", "OM", "PK", "PW", "PS", "PA", "PG", "PY", "PE", "PH", "PN", "PL", "PT", "PR", "QA", "RE", "RO", "RU", "RW", "BL", "SH", "KN", "LC", "MF", "PM", "VC", "WS", "SM", "ST", "SA", "SN", "RS", "SC", "SL", "SG", "SX", "SK", "SI", "SB", "SO", "ZA", "GS", "SS", "ES", "LK", "SD", "SR", "SJ", "SZ", "SE", "CH", "SY", "TW", "TJ", "TZ", "TH", "TL", "TG", "TK", "TO", "TT", "TN", "TR", "TM", "TC", "TV", "UG", "UA", "AE", "GB", "UM", "UY", "UZ", "VU", "VE", "VN", "VG", "VI", "WF", "EH", "YE", "ZM", "ZW"
    #   resp.payload.opportunity_summary.customer.account.address.street_address #=> String
    #   resp.payload.opportunity_summary.customer.account.duns #=> String
    #   resp.payload.opportunity_summary.customer.contacts #=> Array
    #   resp.payload.opportunity_summary.customer.contacts[0].email #=> String
    #   resp.payload.opportunity_summary.customer.contacts[0].first_name #=> String
    #   resp.payload.opportunity_summary.customer.contacts[0].last_name #=> String
    #   resp.payload.opportunity_summary.customer.contacts[0].business_title #=> String
    #   resp.payload.opportunity_summary.customer.contacts[0].phone #=> String
    #   resp.payload.opportunity_summary.project.delivery_models #=> Array
    #   resp.payload.opportunity_summary.project.delivery_models[0] #=> String, one of "SaaS or PaaS", "BYOL or AMI", "Managed Services", "Professional Services", "Resell", "Other"
    #   resp.payload.opportunity_summary.project.expected_customer_spend #=> Array
    #   resp.payload.opportunity_summary.project.expected_customer_spend[0].amount #=> String
    #   resp.payload.opportunity_summary.project.expected_customer_spend[0].currency_code #=> String, one of "USD", "EUR", "GBP", "AUD", "CAD", "CNY", "NZD", "INR", "JPY", "CHF", "SEK", "AED", "AFN", "ALL", "AMD", "ANG", "AOA", "ARS", "AWG", "AZN", "BAM", "BBD", "BDT", "BGN", "BHD", "BIF", "BMD", "BND", "BOB", "BOV", "BRL", "BSD", "BTN", "BWP", "BYN", "BZD", "CDF", "CHE", "CHW", "CLF", "CLP", "COP", "COU", "CRC", "CUC", "CUP", "CVE", "CZK", "DJF", "DKK", "DOP", "DZD", "EGP", "ERN", "ETB", "FJD", "FKP", "GEL", "GHS", "GIP", "GMD", "GNF", "GTQ", "GYD", "HKD", "HNL", "HRK", "HTG", "HUF", "IDR", "ILS", "IQD", "IRR", "ISK", "JMD", "JOD", "KES", "KGS", "KHR", "KMF", "KPW", "KRW", "KWD", "KYD", "KZT", "LAK", "LBP", "LKR", "LRD", "LSL", "LYD", "MAD", "MDL", "MGA", "MKD", "MMK", "MNT", "MOP", "MRU", "MUR", "MVR", "MWK", "MXN", "MXV", "MYR", "MZN", "NAD", "NGN", "NIO", "NOK", "NPR", "OMR", "PAB", "PEN", "PGK", "PHP", "PKR", "PLN", "PYG", "QAR", "RON", "RSD", "RUB", "RWF", "SAR", "SBD", "SCR", "SDG", "SGD", "SHP", "SLL", "SOS", "SRD", "SSP", "STN", "SVC", "SYP", "SZL", "THB", "TJS", "TMT", "TND", "TOP", "TRY", "TTD", "TWD", "TZS", "UAH", "UGX", "USN", "UYI", "UYU", "UZS", "VEF", "VND", "VUV", "WST", "XAF", "XCD", "XDR", "XOF", "XPF", "XSU", "XUA", "YER", "ZAR", "ZMW", "ZWL"
    #   resp.payload.opportunity_summary.project.expected_customer_spend[0].frequency #=> String, one of "Monthly"
    #   resp.payload.opportunity_summary.project.expected_customer_spend[0].target_company #=> String
    #   resp.payload.opportunity_summary.project.expected_customer_spend[0].estimation_url #=> String
    #   resp.payload.opportunity_summary.project.customer_use_case #=> String
    #   resp.payload.opportunity_summary.project.sales_activities #=> Array
    #   resp.payload.opportunity_summary.project.sales_activities[0] #=> String, one of "Initialized discussions with customer", "Customer has shown interest in solution", "Conducted POC / Demo", "In evaluation / planning stage", "Agreed on solution to Business Problem", "Completed Action Plan", "Finalized Deployment Need", "SOW Signed"
    #   resp.payload.opportunity_summary.project.other_solution_description #=> String
    #   resp.payload.opportunity_summary.related_entity_identifiers.aws_marketplace_offers #=> Array
    #   resp.payload.opportunity_summary.related_entity_identifiers.aws_marketplace_offers[0] #=> String
    #   resp.payload.opportunity_summary.related_entity_identifiers.aws_marketplace_offer_sets #=> Array
    #   resp.payload.opportunity_summary.related_entity_identifiers.aws_marketplace_offer_sets[0] #=> String
    #   resp.payload.opportunity_summary.related_entity_identifiers.solutions #=> Array
    #   resp.payload.opportunity_summary.related_entity_identifiers.solutions[0] #=> String
    #   resp.payload.opportunity_summary.related_entity_identifiers.aws_products #=> Array
    #   resp.payload.opportunity_summary.related_entity_identifiers.aws_products[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/GetResourceSnapshot AWS API Documentation
    #
    # @overload get_resource_snapshot(params = {})
    # @param [Hash] params ({})
    def get_resource_snapshot(params = {}, options = {})
      req = build_request(:get_resource_snapshot, params)
      req.send_request(options)
    end

    # Use this action to retrieves information about a specific resource
    # snapshot job.
    #
    # @option params [required, String] :catalog
    #   Specifies the catalog related to the request. Valid values are:
    #
    #   * AWS: Retrieves the snapshot job from the production AWS environment.
    #
    #   * Sandbox: Retrieves the snapshot job from a sandbox environment used
    #     for testing or development purposes.
    #
    # @option params [required, String] :resource_snapshot_job_identifier
    #   The unique identifier of the resource snapshot job to be retrieved.
    #   This identifier is crucial for pinpointing the specific job you want
    #   to query.
    #
    # @return [Types::GetResourceSnapshotJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetResourceSnapshotJobResponse#catalog #catalog} => String
    #   * {Types::GetResourceSnapshotJobResponse#id #id} => String
    #   * {Types::GetResourceSnapshotJobResponse#arn #arn} => String
    #   * {Types::GetResourceSnapshotJobResponse#engagement_id #engagement_id} => String
    #   * {Types::GetResourceSnapshotJobResponse#resource_type #resource_type} => String
    #   * {Types::GetResourceSnapshotJobResponse#resource_id #resource_id} => String
    #   * {Types::GetResourceSnapshotJobResponse#resource_arn #resource_arn} => String
    #   * {Types::GetResourceSnapshotJobResponse#resource_snapshot_template_name #resource_snapshot_template_name} => String
    #   * {Types::GetResourceSnapshotJobResponse#created_at #created_at} => Time
    #   * {Types::GetResourceSnapshotJobResponse#status #status} => String
    #   * {Types::GetResourceSnapshotJobResponse#last_successful_execution_date #last_successful_execution_date} => Time
    #   * {Types::GetResourceSnapshotJobResponse#last_failure #last_failure} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resource_snapshot_job({
    #     catalog: "CatalogIdentifier", # required
    #     resource_snapshot_job_identifier: "ResourceSnapshotJobIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.catalog #=> String
    #   resp.id #=> String
    #   resp.arn #=> String
    #   resp.engagement_id #=> String
    #   resp.resource_type #=> String, one of "Opportunity"
    #   resp.resource_id #=> String
    #   resp.resource_arn #=> String
    #   resp.resource_snapshot_template_name #=> String
    #   resp.created_at #=> Time
    #   resp.status #=> String, one of "Running", "Stopped"
    #   resp.last_successful_execution_date #=> Time
    #   resp.last_failure #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/GetResourceSnapshotJob AWS API Documentation
    #
    # @overload get_resource_snapshot_job(params = {})
    # @param [Hash] params ({})
    def get_resource_snapshot_job(params = {}, options = {})
      req = build_request(:get_resource_snapshot_job, params)
      req.send_request(options)
    end

    # Retrieves the currently set system settings, which include the IAM
    # Role used for resource snapshot jobs.
    #
    # @option params [required, String] :catalog
    #   Specifies the catalog in which the settings are defined. Acceptable
    #   values include `AWS` for production and `Sandbox` for testing
    #   environments.
    #
    # @return [Types::GetSellingSystemSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSellingSystemSettingsResponse#catalog #catalog} => String
    #   * {Types::GetSellingSystemSettingsResponse#resource_snapshot_job_role_arn #resource_snapshot_job_role_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_selling_system_settings({
    #     catalog: "CatalogIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.catalog #=> String
    #   resp.resource_snapshot_job_role_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/GetSellingSystemSettings AWS API Documentation
    #
    # @overload get_selling_system_settings(params = {})
    # @param [Hash] params ({})
    def get_selling_system_settings(params = {}, options = {})
      req = build_request(:get_selling_system_settings, params)
      req.send_request(options)
    end

    # Lists all in-progress, completed, or failed
    # StartEngagementByAcceptingInvitationTask tasks that were initiated by
    # the caller's account.
    #
    # @option params [Integer] :max_results
    #   Use this parameter to control the number of items returned in each
    #   request, which can be useful for performance tuning and managing large
    #   result sets.
    #
    # @option params [String] :next_token
    #   Use this parameter for pagination when the result set spans multiple
    #   pages. This value is obtained from the NextToken field in the response
    #   of a previous call to this API.
    #
    # @option params [Types::ListTasksSortBase] :sort
    #   Specifies the sorting criteria for the returned results. This allows
    #   you to order the tasks based on specific attributes.
    #
    # @option params [required, String] :catalog
    #   Specifies the catalog related to the request. Valid values are:
    #
    #   * AWS: Retrieves the request from the production AWS environment.
    #
    #   * Sandbox: Retrieves the request from a sandbox environment used for
    #     testing or development purposes.
    #
    # @option params [Array<String>] :task_status
    #   Filters the tasks based on their current status. This allows you to
    #   focus on tasks in specific states.
    #
    # @option params [Array<String>] :opportunity_identifier
    #   Filters tasks by the identifiers of the opportunities they created or
    #   are associated with.
    #
    # @option params [Array<String>] :engagement_invitation_identifier
    #   Filters tasks by the identifiers of the engagement invitations they
    #   are processing.
    #
    # @option params [Array<String>] :task_identifier
    #   Filters tasks by their unique identifiers. Use this when you want to
    #   retrieve information about specific tasks.
    #
    # @return [Types::ListEngagementByAcceptingInvitationTasksResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEngagementByAcceptingInvitationTasksResponse#task_summaries #task_summaries} => Array&lt;Types::ListEngagementByAcceptingInvitationTaskSummary&gt;
    #   * {Types::ListEngagementByAcceptingInvitationTasksResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_engagement_by_accepting_invitation_tasks({
    #     max_results: 1,
    #     next_token: "ListEngagementByAcceptingInvitationTasksRequestNextTokenString",
    #     sort: {
    #       sort_order: "ASCENDING", # required, accepts ASCENDING, DESCENDING
    #       sort_by: "StartTime", # required, accepts StartTime
    #     },
    #     catalog: "CatalogIdentifier", # required
    #     task_status: ["IN_PROGRESS"], # accepts IN_PROGRESS, COMPLETE, FAILED
    #     opportunity_identifier: ["OpportunityIdentifier"],
    #     engagement_invitation_identifier: ["EngagementInvitationArnOrIdentifier"],
    #     task_identifier: ["TaskArnOrIdentifier"],
    #   })
    #
    # @example Response structure
    #
    #   resp.task_summaries #=> Array
    #   resp.task_summaries[0].task_id #=> String
    #   resp.task_summaries[0].task_arn #=> String
    #   resp.task_summaries[0].start_time #=> Time
    #   resp.task_summaries[0].task_status #=> String, one of "IN_PROGRESS", "COMPLETE", "FAILED"
    #   resp.task_summaries[0].message #=> String
    #   resp.task_summaries[0].reason_code #=> String, one of "InvitationAccessDenied", "InvitationValidationFailed", "EngagementAccessDenied", "OpportunityAccessDenied", "ResourceSnapshotJobAccessDenied", "ResourceSnapshotJobValidationFailed", "ResourceSnapshotJobConflict", "EngagementValidationFailed", "EngagementConflict", "OpportunitySubmissionFailed", "EngagementInvitationConflict", "InternalError", "OpportunityValidationFailed", "OpportunityConflict", "ResourceSnapshotAccessDenied", "ResourceSnapshotValidationFailed", "ResourceSnapshotConflict", "ServiceQuotaExceeded", "RequestThrottled", "ContextNotFound", "CustomerProjectContextNotPermitted", "DisqualifiedLeadNotPermitted"
    #   resp.task_summaries[0].opportunity_id #=> String
    #   resp.task_summaries[0].resource_snapshot_job_id #=> String
    #   resp.task_summaries[0].engagement_invitation_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/ListEngagementByAcceptingInvitationTasks AWS API Documentation
    #
    # @overload list_engagement_by_accepting_invitation_tasks(params = {})
    # @param [Hash] params ({})
    def list_engagement_by_accepting_invitation_tasks(params = {}, options = {})
      req = build_request(:list_engagement_by_accepting_invitation_tasks, params)
      req.send_request(options)
    end

    # Lists all in-progress, completed, or failed
    # `EngagementFromOpportunity` tasks that were initiated by the caller's
    # account.
    #
    # @option params [Integer] :max_results
    #   Specifies the maximum number of results to return in a single page of
    #   the response.Use this parameter to control the number of items
    #   returned in each request, which can be useful for performance tuning
    #   and managing large result sets.
    #
    # @option params [String] :next_token
    #   The token for requesting the next page of results. This value is
    #   obtained from the NextToken field in the response of a previous call
    #   to this API. Use this parameter for pagination when the result set
    #   spans multiple pages.
    #
    # @option params [Types::ListTasksSortBase] :sort
    #   Specifies the sorting criteria for the returned results. This allows
    #   you to order the tasks based on specific attributes.
    #
    # @option params [required, String] :catalog
    #   Specifies the catalog related to the request. Valid values are:
    #
    #   * AWS: Retrieves the request from the production AWS environment.
    #
    #   * Sandbox: Retrieves the request from a sandbox environment used for
    #     testing or development purposes.
    #
    # @option params [Array<String>] :task_status
    #   Filters the tasks based on their current status. This allows you to
    #   focus on tasks in specific states.
    #
    # @option params [Array<String>] :task_identifier
    #   Filters tasks by their unique identifiers. Use this when you want to
    #   retrieve information about specific tasks.
    #
    # @option params [Array<String>] :opportunity_identifier
    #   The identifier of the original opportunity associated with this task.
    #
    # @option params [Array<String>] :engagement_identifier
    #   Filters tasks by the identifiers of the engagements they created or
    #   are associated with.
    #
    # @return [Types::ListEngagementFromOpportunityTasksResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEngagementFromOpportunityTasksResponse#task_summaries #task_summaries} => Array&lt;Types::ListEngagementFromOpportunityTaskSummary&gt;
    #   * {Types::ListEngagementFromOpportunityTasksResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_engagement_from_opportunity_tasks({
    #     max_results: 1,
    #     next_token: "ListEngagementFromOpportunityTasksRequestNextTokenString",
    #     sort: {
    #       sort_order: "ASCENDING", # required, accepts ASCENDING, DESCENDING
    #       sort_by: "StartTime", # required, accepts StartTime
    #     },
    #     catalog: "CatalogIdentifier", # required
    #     task_status: ["IN_PROGRESS"], # accepts IN_PROGRESS, COMPLETE, FAILED
    #     task_identifier: ["TaskArnOrIdentifier"],
    #     opportunity_identifier: ["OpportunityIdentifier"],
    #     engagement_identifier: ["EngagementArnOrIdentifier"],
    #   })
    #
    # @example Response structure
    #
    #   resp.task_summaries #=> Array
    #   resp.task_summaries[0].task_id #=> String
    #   resp.task_summaries[0].task_arn #=> String
    #   resp.task_summaries[0].start_time #=> Time
    #   resp.task_summaries[0].task_status #=> String, one of "IN_PROGRESS", "COMPLETE", "FAILED"
    #   resp.task_summaries[0].message #=> String
    #   resp.task_summaries[0].reason_code #=> String, one of "InvitationAccessDenied", "InvitationValidationFailed", "EngagementAccessDenied", "OpportunityAccessDenied", "ResourceSnapshotJobAccessDenied", "ResourceSnapshotJobValidationFailed", "ResourceSnapshotJobConflict", "EngagementValidationFailed", "EngagementConflict", "OpportunitySubmissionFailed", "EngagementInvitationConflict", "InternalError", "OpportunityValidationFailed", "OpportunityConflict", "ResourceSnapshotAccessDenied", "ResourceSnapshotValidationFailed", "ResourceSnapshotConflict", "ServiceQuotaExceeded", "RequestThrottled", "ContextNotFound", "CustomerProjectContextNotPermitted", "DisqualifiedLeadNotPermitted"
    #   resp.task_summaries[0].opportunity_id #=> String
    #   resp.task_summaries[0].resource_snapshot_job_id #=> String
    #   resp.task_summaries[0].engagement_id #=> String
    #   resp.task_summaries[0].engagement_invitation_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/ListEngagementFromOpportunityTasks AWS API Documentation
    #
    # @overload list_engagement_from_opportunity_tasks(params = {})
    # @param [Hash] params ({})
    def list_engagement_from_opportunity_tasks(params = {}, options = {})
      req = build_request(:list_engagement_from_opportunity_tasks, params)
      req.send_request(options)
    end

    # Retrieves a list of engagement invitations sent to the partner. This
    # allows partners to view all pending or past engagement invitations,
    # helping them track opportunities shared by AWS.
    #
    # @option params [required, String] :catalog
    #   Specifies the catalog from which to list the engagement invitations.
    #   Use `AWS` for production invitations or `Sandbox` for testing
    #   environments.
    #
    # @option params [Integer] :max_results
    #   Specifies the maximum number of engagement invitations to return in
    #   the response. If more results are available, a pagination token will
    #   be provided.
    #
    # @option params [String] :next_token
    #   A pagination token used to retrieve additional pages of results when
    #   the response to a previous request was truncated. Pass this token to
    #   continue listing invitations from where the previous call left off.
    #
    # @option params [Types::OpportunityEngagementInvitationSort] :sort
    #   Specifies the sorting options for listing engagement invitations.
    #   Invitations can be sorted by fields such as `InvitationDate` or
    #   `Status` to help partners view results in their preferred order.
    #
    # @option params [Array<String>] :payload_type
    #   Defines the type of payload associated with the engagement invitations
    #   to be listed. The attributes in this payload help decide on acceptance
    #   or rejection of the invitation.
    #
    # @option params [required, String] :participant_type
    #   Specifies the type of participant for which to list engagement
    #   invitations. Identifies the role of the participant.
    #
    # @option params [Array<String>] :status
    #   Status values to filter the invitations.
    #
    # @option params [Array<String>] :engagement_identifier
    #   Retrieves a list of engagement invitation summaries based on specified
    #   filters. The ListEngagementInvitations operation allows you to view
    #   all invitations that you have sent or received. You must specify the
    #   ParticipantType to filter invitations where you are either the SENDER
    #   or the RECEIVER. Invitations will automatically expire if not accepted
    #   within 15 days.
    #
    # @option params [Array<String>] :sender_aws_account_id
    #   List of sender AWS account IDs to filter the invitations.
    #
    # @return [Types::ListEngagementInvitationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEngagementInvitationsResponse#engagement_invitation_summaries #engagement_invitation_summaries} => Array&lt;Types::EngagementInvitationSummary&gt;
    #   * {Types::ListEngagementInvitationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_engagement_invitations({
    #     catalog: "CatalogIdentifier", # required
    #     max_results: 1,
    #     next_token: "String",
    #     sort: {
    #       sort_order: "ASCENDING", # required, accepts ASCENDING, DESCENDING
    #       sort_by: "InvitationDate", # required, accepts InvitationDate
    #     },
    #     payload_type: ["OpportunityInvitation"], # accepts OpportunityInvitation, LeadInvitation
    #     participant_type: "SENDER", # required, accepts SENDER, RECEIVER
    #     status: ["ACCEPTED"], # accepts ACCEPTED, PENDING, REJECTED, EXPIRED
    #     engagement_identifier: ["EngagementArnOrIdentifier"],
    #     sender_aws_account_id: ["AwsAccount"],
    #   })
    #
    # @example Response structure
    #
    #   resp.engagement_invitation_summaries #=> Array
    #   resp.engagement_invitation_summaries[0].arn #=> String
    #   resp.engagement_invitation_summaries[0].payload_type #=> String, one of "OpportunityInvitation", "LeadInvitation"
    #   resp.engagement_invitation_summaries[0].id #=> String
    #   resp.engagement_invitation_summaries[0].engagement_id #=> String
    #   resp.engagement_invitation_summaries[0].engagement_title #=> String
    #   resp.engagement_invitation_summaries[0].status #=> String, one of "ACCEPTED", "PENDING", "REJECTED", "EXPIRED"
    #   resp.engagement_invitation_summaries[0].invitation_date #=> Time
    #   resp.engagement_invitation_summaries[0].expiration_date #=> Time
    #   resp.engagement_invitation_summaries[0].sender_aws_account_id #=> String
    #   resp.engagement_invitation_summaries[0].sender_company_name #=> String
    #   resp.engagement_invitation_summaries[0].receiver.account.alias #=> String
    #   resp.engagement_invitation_summaries[0].receiver.account.aws_account_id #=> String
    #   resp.engagement_invitation_summaries[0].catalog #=> String
    #   resp.engagement_invitation_summaries[0].participant_type #=> String, one of "SENDER", "RECEIVER"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/ListEngagementInvitations AWS API Documentation
    #
    # @overload list_engagement_invitations(params = {})
    # @param [Hash] params ({})
    def list_engagement_invitations(params = {}, options = {})
      req = build_request(:list_engagement_invitations, params)
      req.send_request(options)
    end

    # Retrieves the details of member partners in an Engagement. This
    # operation can only be invoked by members of the Engagement. The
    # `ListEngagementMembers` operation allows you to fetch information
    # about the members of a specific Engagement. This action is restricted
    # to members of the Engagement being queried.
    #
    # @option params [required, String] :catalog
    #   The catalog related to the request.
    #
    # @option params [required, String] :identifier
    #   Identifier of the Engagement record to retrieve members from.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call.
    #
    # @option params [String] :next_token
    #   The token for the next set of results.
    #
    # @return [Types::ListEngagementMembersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEngagementMembersResponse#engagement_member_list #engagement_member_list} => Array&lt;Types::EngagementMember&gt;
    #   * {Types::ListEngagementMembersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_engagement_members({
    #     catalog: "CatalogIdentifier", # required
    #     identifier: "EngagementArnOrIdentifier", # required
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.engagement_member_list #=> Array
    #   resp.engagement_member_list[0].company_name #=> String
    #   resp.engagement_member_list[0].website_url #=> String
    #   resp.engagement_member_list[0].account_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/ListEngagementMembers AWS API Documentation
    #
    # @overload list_engagement_members(params = {})
    # @param [Hash] params ({})
    def list_engagement_members(params = {}, options = {})
      req = build_request(:list_engagement_members, params)
      req.send_request(options)
    end

    # Lists the associations between resources and engagements where the
    # caller is a member and has at least one snapshot in the engagement.
    #
    # @option params [required, String] :catalog
    #   Specifies the catalog in which to search for engagement-resource
    #   associations. Valid Values: "AWS" or "Sandbox"
    #
    #   * `AWS` for production environments.
    #
    #   * `Sandbox` for testing and development purposes.
    #
    # @option params [Integer] :max_results
    #   Limits the number of results returned in a single call. Use this to
    #   control the number of results returned, especially useful for
    #   pagination.
    #
    # @option params [String] :next_token
    #   A token used for pagination of results. Include this token in
    #   subsequent requests to retrieve the next set of results.
    #
    # @option params [String] :engagement_identifier
    #   Filters the results to include only associations related to the
    #   specified engagement. Use this when you want to find all resources
    #   associated with a specific engagement.
    #
    # @option params [String] :resource_type
    #   Filters the results to include only associations with resources of the
    #   specified type.
    #
    # @option params [String] :resource_identifier
    #   Filters the results to include only associations with the specified
    #   resource. Varies depending on the resource type. Use this when you
    #   want to find all engagements associated with a specific resource.
    #
    # @option params [String] :created_by
    #   Filters the response to include only snapshots of resources owned by
    #   the specified AWS account ID. Use this when you want to find
    #   associations related to resources owned by a particular account.
    #
    # @return [Types::ListEngagementResourceAssociationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEngagementResourceAssociationsResponse#engagement_resource_association_summaries #engagement_resource_association_summaries} => Array&lt;Types::EngagementResourceAssociationSummary&gt;
    #   * {Types::ListEngagementResourceAssociationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_engagement_resource_associations({
    #     catalog: "CatalogIdentifier", # required
    #     max_results: 1,
    #     next_token: "String",
    #     engagement_identifier: "EngagementIdentifier",
    #     resource_type: "Opportunity", # accepts Opportunity
    #     resource_identifier: "ResourceIdentifier",
    #     created_by: "AwsAccount",
    #   })
    #
    # @example Response structure
    #
    #   resp.engagement_resource_association_summaries #=> Array
    #   resp.engagement_resource_association_summaries[0].catalog #=> String
    #   resp.engagement_resource_association_summaries[0].engagement_id #=> String
    #   resp.engagement_resource_association_summaries[0].resource_type #=> String, one of "Opportunity"
    #   resp.engagement_resource_association_summaries[0].resource_id #=> String
    #   resp.engagement_resource_association_summaries[0].created_by #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/ListEngagementResourceAssociations AWS API Documentation
    #
    # @overload list_engagement_resource_associations(params = {})
    # @param [Hash] params ({})
    def list_engagement_resource_associations(params = {}, options = {})
      req = build_request(:list_engagement_resource_associations, params)
      req.send_request(options)
    end

    # This action allows users to retrieve a list of Engagement records from
    # Partner Central. This action can be used to manage and track various
    # engagements across different stages of the partner selling process.
    #
    # @option params [required, String] :catalog
    #   Specifies the catalog related to the request.
    #
    # @option params [Array<String>] :created_by
    #   A list of AWS account IDs. When specified, the response includes
    #   engagements created by these accounts. This filter is useful for
    #   finding engagements created by specific team members.
    #
    # @option params [Array<String>] :exclude_created_by
    #   An array of strings representing AWS Account IDs. Use this to exclude
    #   engagements created by specific users.
    #
    # @option params [Array<String>] :context_types
    #   Filters engagements to include only those containing the specified
    #   context types, such as "CustomerProject" or "Lead". Use this to
    #   find engagements that have specific types of contextual information
    #   associated with them.
    #
    # @option params [Array<String>] :exclude_context_types
    #   Filters engagements to exclude those containing the specified context
    #   types. Use this to find engagements that do not have certain types of
    #   contextual information, helping to narrow results based on context
    #   exclusion criteria.
    #
    # @option params [Types::EngagementSort] :sort
    #   Specifies the sorting parameters for listing Engagements.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. This value is returned from a
    #   previous call.
    #
    # @option params [Array<String>] :engagement_identifier
    #   An array of strings representing engagement identifiers to retrieve.
    #
    # @return [Types::ListEngagementsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEngagementsResponse#engagement_summary_list #engagement_summary_list} => Array&lt;Types::EngagementSummary&gt;
    #   * {Types::ListEngagementsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_engagements({
    #     catalog: "CatalogIdentifier", # required
    #     created_by: ["AwsAccount"],
    #     exclude_created_by: ["AwsAccount"],
    #     context_types: ["CustomerProject"], # accepts CustomerProject, Lead
    #     exclude_context_types: ["CustomerProject"], # accepts CustomerProject, Lead
    #     sort: {
    #       sort_order: "ASCENDING", # required, accepts ASCENDING, DESCENDING
    #       sort_by: "CreatedDate", # required, accepts CreatedDate
    #     },
    #     max_results: 1,
    #     next_token: "String",
    #     engagement_identifier: ["EngagementArnOrIdentifier"],
    #   })
    #
    # @example Response structure
    #
    #   resp.engagement_summary_list #=> Array
    #   resp.engagement_summary_list[0].arn #=> String
    #   resp.engagement_summary_list[0].id #=> String
    #   resp.engagement_summary_list[0].title #=> String
    #   resp.engagement_summary_list[0].created_at #=> Time
    #   resp.engagement_summary_list[0].created_by #=> String
    #   resp.engagement_summary_list[0].member_count #=> Integer
    #   resp.engagement_summary_list[0].modified_at #=> Time
    #   resp.engagement_summary_list[0].modified_by #=> String
    #   resp.engagement_summary_list[0].context_types #=> Array
    #   resp.engagement_summary_list[0].context_types[0] #=> String, one of "CustomerProject", "Lead"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/ListEngagements AWS API Documentation
    #
    # @overload list_engagements(params = {})
    # @param [Hash] params ({})
    def list_engagements(params = {}, options = {})
      req = build_request(:list_engagements, params)
      req.send_request(options)
    end

    # This request accepts a list of filters that retrieve opportunity
    # subsets as well as sort options. This feature is available to partners
    # from [Partner Central][1] using the `ListOpportunities` API action.
    #
    # To synchronize your system with Amazon Web Services, list only the
    # opportunities that were newly created or updated. We recommend you
    # rely on events emitted by the service into your Amazon Web Services
    # account’s Amazon EventBridge default event bus. You can also use the
    # `ListOpportunities` action.
    #
    # We recommend the following approach:
    #
    # 1.  Find the latest `LastModifiedDate` that you stored, and only use
    #     the values that came from Amazon Web Services. Don’t use values
    #     generated by your system.
    #
    # 2.  When you send a `ListOpportunities` request, submit the date in
    #     ISO 8601 format in the `AfterLastModifiedDate` filter.
    #
    # 3.  Amazon Web Services only returns opportunities created or updated
    #     on or after that date and time. Use `NextToken` to iterate over
    #     all pages.
    #
    #
    #
    # [1]: https://partnercentral.awspartner.com/
    #
    # @option params [required, String] :catalog
    #   Specifies the catalog associated with the request. This field takes a
    #   string value from a predefined list: `AWS` or `Sandbox`. The catalog
    #   determines which environment the opportunities are listed in. Use
    #   `AWS` for listing real opportunities in the Amazon Web Services
    #   catalog, and `Sandbox` for testing in secure, isolated environments.
    #
    # @option params [Integer] :max_results
    #   Specifies the maximum number of results to return in a single call.
    #   This limits the number of opportunities returned in the response to
    #   avoid providing too many results at once.
    #
    #   Default: 20
    #
    # @option params [String] :next_token
    #   A pagination token used to retrieve the next set of results in
    #   subsequent calls. This token is included in the response only if there
    #   are additional result pages available.
    #
    # @option params [Types::OpportunitySort] :sort
    #   An object that specifies how the response is sorted. The default
    #   `Sort.SortBy` value is `LastModifiedDate`.
    #
    # @option params [Types::LastModifiedDate] :last_modified_date
    #   Filters the opportunities based on their last modified date. This
    #   filter helps retrieve opportunities that were updated after the
    #   specified date, allowing partners to track recent changes or updates.
    #
    # @option params [Array<String>] :identifier
    #   Filters the opportunities based on the opportunity identifier. This
    #   allows partners to retrieve specific opportunities by providing their
    #   unique identifiers, ensuring precise results.
    #
    # @option params [Array<String>] :life_cycle_stage
    #   Filters the opportunities based on their lifecycle stage. This filter
    #   allows partners to retrieve opportunities at various stages in the
    #   sales cycle, such as `Qualified`, `Technical Validation`, `Business
    #   Validation`, or `Closed Won`.
    #
    # @option params [Array<String>] :life_cycle_review_status
    #   Filters the opportunities based on their current lifecycle approval
    #   status. Use this filter to retrieve opportunities with statuses such
    #   as `Pending Submission`, `In Review`, `Action Required`, or
    #   `Approved`.
    #
    # @option params [Array<String>] :customer_company_name
    #   Filters the opportunities based on the customer's company name. This
    #   allows partners to search for opportunities associated with a specific
    #   customer by matching the provided company name string.
    #
    # @return [Types::ListOpportunitiesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListOpportunitiesResponse#opportunity_summaries #opportunity_summaries} => Array&lt;Types::OpportunitySummary&gt;
    #   * {Types::ListOpportunitiesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_opportunities({
    #     catalog: "CatalogIdentifier", # required
    #     max_results: 1,
    #     next_token: "String",
    #     sort: {
    #       sort_order: "ASCENDING", # required, accepts ASCENDING, DESCENDING
    #       sort_by: "LastModifiedDate", # required, accepts LastModifiedDate, Identifier, CustomerCompanyName
    #     },
    #     last_modified_date: {
    #       after_last_modified_date: Time.now,
    #       before_last_modified_date: Time.now,
    #     },
    #     identifier: ["OpportunityIdentifier"],
    #     life_cycle_stage: ["Prospect"], # accepts Prospect, Qualified, Technical Validation, Business Validation, Committed, Launched, Closed Lost
    #     life_cycle_review_status: ["Pending Submission"], # accepts Pending Submission, Submitted, In review, Approved, Rejected, Action Required
    #     customer_company_name: ["String"],
    #   })
    #
    # @example Response structure
    #
    #   resp.opportunity_summaries #=> Array
    #   resp.opportunity_summaries[0].catalog #=> String
    #   resp.opportunity_summaries[0].id #=> String
    #   resp.opportunity_summaries[0].arn #=> String
    #   resp.opportunity_summaries[0].partner_opportunity_identifier #=> String
    #   resp.opportunity_summaries[0].opportunity_type #=> String, one of "Net New Business", "Flat Renewal", "Expansion"
    #   resp.opportunity_summaries[0].last_modified_date #=> Time
    #   resp.opportunity_summaries[0].created_date #=> Time
    #   resp.opportunity_summaries[0].life_cycle.stage #=> String, one of "Prospect", "Qualified", "Technical Validation", "Business Validation", "Committed", "Launched", "Closed Lost"
    #   resp.opportunity_summaries[0].life_cycle.closed_lost_reason #=> String, one of "Customer Deficiency", "Delay / Cancellation of Project", "Legal / Tax / Regulatory", "Lost to Competitor - Google", "Lost to Competitor - Microsoft", "Lost to Competitor - SoftLayer", "Lost to Competitor - VMWare", "Lost to Competitor - Other", "No Opportunity", "On Premises Deployment", "Partner Gap", "Price", "Security / Compliance", "Technical Limitations", "Customer Experience", "Other", "People/Relationship/Governance", "Product/Technology", "Financial/Commercial"
    #   resp.opportunity_summaries[0].life_cycle.next_steps #=> String
    #   resp.opportunity_summaries[0].life_cycle.target_close_date #=> String
    #   resp.opportunity_summaries[0].life_cycle.review_status #=> String, one of "Pending Submission", "Submitted", "In review", "Approved", "Rejected", "Action Required"
    #   resp.opportunity_summaries[0].life_cycle.review_comments #=> String
    #   resp.opportunity_summaries[0].life_cycle.review_status_reason #=> String
    #   resp.opportunity_summaries[0].customer.account.industry #=> String, one of "Aerospace", "Agriculture", "Automotive", "Computers and Electronics", "Consumer Goods", "Education", "Energy - Oil and Gas", "Energy - Power and Utilities", "Financial Services", "Gaming", "Government", "Healthcare", "Hospitality", "Life Sciences", "Manufacturing", "Marketing and Advertising", "Media and Entertainment", "Mining", "Non-Profit Organization", "Professional Services", "Real Estate and Construction", "Retail", "Software and Internet", "Telecommunications", "Transportation and Logistics", "Travel", "Wholesale and Distribution", "Other"
    #   resp.opportunity_summaries[0].customer.account.other_industry #=> String
    #   resp.opportunity_summaries[0].customer.account.company_name #=> String
    #   resp.opportunity_summaries[0].customer.account.website_url #=> String
    #   resp.opportunity_summaries[0].customer.account.address.city #=> String
    #   resp.opportunity_summaries[0].customer.account.address.postal_code #=> String
    #   resp.opportunity_summaries[0].customer.account.address.state_or_region #=> String
    #   resp.opportunity_summaries[0].customer.account.address.country_code #=> String, one of "US", "AF", "AX", "AL", "DZ", "AS", "AD", "AO", "AI", "AQ", "AG", "AR", "AM", "AW", "AU", "AT", "AZ", "BS", "BH", "BD", "BB", "BY", "BE", "BZ", "BJ", "BM", "BT", "BO", "BQ", "BA", "BW", "BV", "BR", "IO", "BN", "BG", "BF", "BI", "KH", "CM", "CA", "CV", "KY", "CF", "TD", "CL", "CN", "CX", "CC", "CO", "KM", "CG", "CK", "CR", "CI", "HR", "CU", "CW", "CY", "CZ", "CD", "DK", "DJ", "DM", "DO", "EC", "EG", "SV", "GQ", "ER", "EE", "ET", "FK", "FO", "FJ", "FI", "FR", "GF", "PF", "TF", "GA", "GM", "GE", "DE", "GH", "GI", "GR", "GL", "GD", "GP", "GU", "GT", "GG", "GN", "GW", "GY", "HT", "HM", "VA", "HN", "HK", "HU", "IS", "IN", "ID", "IR", "IQ", "IE", "IM", "IL", "IT", "JM", "JP", "JE", "JO", "KZ", "KE", "KI", "KR", "KW", "KG", "LA", "LV", "LB", "LS", "LR", "LY", "LI", "LT", "LU", "MO", "MK", "MG", "MW", "MY", "MV", "ML", "MT", "MH", "MQ", "MR", "MU", "YT", "MX", "FM", "MD", "MC", "MN", "ME", "MS", "MA", "MZ", "MM", "NA", "NR", "NP", "NL", "AN", "NC", "NZ", "NI", "NE", "NG", "NU", "NF", "MP", "NO", "OM", "PK", "PW", "PS", "PA", "PG", "PY", "PE", "PH", "PN", "PL", "PT", "PR", "QA", "RE", "RO", "RU", "RW", "BL", "SH", "KN", "LC", "MF", "PM", "VC", "WS", "SM", "ST", "SA", "SN", "RS", "SC", "SL", "SG", "SX", "SK", "SI", "SB", "SO", "ZA", "GS", "SS", "ES", "LK", "SD", "SR", "SJ", "SZ", "SE", "CH", "SY", "TW", "TJ", "TZ", "TH", "TL", "TG", "TK", "TO", "TT", "TN", "TR", "TM", "TC", "TV", "UG", "UA", "AE", "GB", "UM", "UY", "UZ", "VU", "VE", "VN", "VG", "VI", "WF", "EH", "YE", "ZM", "ZW"
    #   resp.opportunity_summaries[0].project.delivery_models #=> Array
    #   resp.opportunity_summaries[0].project.delivery_models[0] #=> String, one of "SaaS or PaaS", "BYOL or AMI", "Managed Services", "Professional Services", "Resell", "Other"
    #   resp.opportunity_summaries[0].project.expected_customer_spend #=> Array
    #   resp.opportunity_summaries[0].project.expected_customer_spend[0].amount #=> String
    #   resp.opportunity_summaries[0].project.expected_customer_spend[0].currency_code #=> String, one of "USD", "EUR", "GBP", "AUD", "CAD", "CNY", "NZD", "INR", "JPY", "CHF", "SEK", "AED", "AFN", "ALL", "AMD", "ANG", "AOA", "ARS", "AWG", "AZN", "BAM", "BBD", "BDT", "BGN", "BHD", "BIF", "BMD", "BND", "BOB", "BOV", "BRL", "BSD", "BTN", "BWP", "BYN", "BZD", "CDF", "CHE", "CHW", "CLF", "CLP", "COP", "COU", "CRC", "CUC", "CUP", "CVE", "CZK", "DJF", "DKK", "DOP", "DZD", "EGP", "ERN", "ETB", "FJD", "FKP", "GEL", "GHS", "GIP", "GMD", "GNF", "GTQ", "GYD", "HKD", "HNL", "HRK", "HTG", "HUF", "IDR", "ILS", "IQD", "IRR", "ISK", "JMD", "JOD", "KES", "KGS", "KHR", "KMF", "KPW", "KRW", "KWD", "KYD", "KZT", "LAK", "LBP", "LKR", "LRD", "LSL", "LYD", "MAD", "MDL", "MGA", "MKD", "MMK", "MNT", "MOP", "MRU", "MUR", "MVR", "MWK", "MXN", "MXV", "MYR", "MZN", "NAD", "NGN", "NIO", "NOK", "NPR", "OMR", "PAB", "PEN", "PGK", "PHP", "PKR", "PLN", "PYG", "QAR", "RON", "RSD", "RUB", "RWF", "SAR", "SBD", "SCR", "SDG", "SGD", "SHP", "SLL", "SOS", "SRD", "SSP", "STN", "SVC", "SYP", "SZL", "THB", "TJS", "TMT", "TND", "TOP", "TRY", "TTD", "TWD", "TZS", "UAH", "UGX", "USN", "UYI", "UYU", "UZS", "VEF", "VND", "VUV", "WST", "XAF", "XCD", "XDR", "XOF", "XPF", "XSU", "XUA", "YER", "ZAR", "ZMW", "ZWL"
    #   resp.opportunity_summaries[0].project.expected_customer_spend[0].frequency #=> String, one of "Monthly"
    #   resp.opportunity_summaries[0].project.expected_customer_spend[0].target_company #=> String
    #   resp.opportunity_summaries[0].project.expected_customer_spend[0].estimation_url #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/ListOpportunities AWS API Documentation
    #
    # @overload list_opportunities(params = {})
    # @param [Hash] params ({})
    def list_opportunities(params = {}, options = {})
      req = build_request(:list_opportunities, params)
      req.send_request(options)
    end

    # Lists all in-progress, completed, or failed opportunity creation tasks
    # from engagements that were initiated by the caller's account.
    #
    # @option params [Integer] :max_results
    #   Specifies the maximum number of results to return in a single page of
    #   the response. Use this parameter to control the number of items
    #   returned in each request, which can be useful for performance tuning
    #   and managing large result sets.
    #
    # @option params [String] :next_token
    #   The token for requesting the next page of results. This value is
    #   obtained from the NextToken field in the response of a previous call
    #   to this API. Use this parameter for pagination when the result set
    #   spans multiple pages.
    #
    # @option params [Types::ListTasksSortBase] :sort
    #   Defines the sorting parameters for listing tasks. This structure
    #   allows for specifying the field to sort by and the order of sorting.
    #
    # @option params [required, String] :catalog
    #   Specifies the catalog related to the request. Valid values are `AWS`
    #   for production environments and `Sandbox` for testing or development
    #   purposes. The catalog determines which environment the task data is
    #   retrieved from.
    #
    # @option params [Array<String>] :task_status
    #   Filters the tasks based on their current status. This allows you to
    #   focus on tasks in specific states. Valid values are `COMPLETE` for
    #   tasks that have finished successfully, `INPROGRESS` for tasks that are
    #   currently running, and `FAILED` for tasks that have encountered an
    #   error and failed to complete.
    #
    # @option params [Array<String>] :task_identifier
    #   Filters tasks by their unique identifiers. Use this when you want to
    #   retrieve information about specific tasks. Provide the task ID to get
    #   details about a particular opportunity creation task.
    #
    # @option params [Array<String>] :opportunity_identifier
    #   Filters tasks by the identifiers of the opportunities they created or
    #   are associated with. Use this to find tasks related to specific
    #   opportunity creation processes.
    #
    # @option params [Array<String>] :engagement_identifier
    #   Filters tasks by the identifiers of the engagements from which
    #   opportunities are being created. Use this to find all opportunity
    #   creation tasks associated with a specific engagement.
    #
    # @option params [Array<String>] :context_identifier
    #   Filters tasks by the identifiers of the engagement contexts associated
    #   with the opportunity creation. Use this to find tasks related to
    #   specific contextual information within engagements that are being
    #   converted to opportunities.
    #
    # @return [Types::ListOpportunityFromEngagementTasksResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListOpportunityFromEngagementTasksResponse#task_summaries #task_summaries} => Array&lt;Types::ListOpportunityFromEngagementTaskSummary&gt;
    #   * {Types::ListOpportunityFromEngagementTasksResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_opportunity_from_engagement_tasks({
    #     max_results: 1,
    #     next_token: "ListOpportunityFromEngagementTasksRequestNextTokenString",
    #     sort: {
    #       sort_order: "ASCENDING", # required, accepts ASCENDING, DESCENDING
    #       sort_by: "StartTime", # required, accepts StartTime
    #     },
    #     catalog: "CatalogIdentifier", # required
    #     task_status: ["IN_PROGRESS"], # accepts IN_PROGRESS, COMPLETE, FAILED
    #     task_identifier: ["TaskArnOrIdentifier"],
    #     opportunity_identifier: ["OpportunityIdentifier"],
    #     engagement_identifier: ["EngagementArnOrIdentifier"],
    #     context_identifier: ["ContextIdentifier"],
    #   })
    #
    # @example Response structure
    #
    #   resp.task_summaries #=> Array
    #   resp.task_summaries[0].task_id #=> String
    #   resp.task_summaries[0].task_arn #=> String
    #   resp.task_summaries[0].start_time #=> Time
    #   resp.task_summaries[0].task_status #=> String, one of "IN_PROGRESS", "COMPLETE", "FAILED"
    #   resp.task_summaries[0].message #=> String
    #   resp.task_summaries[0].reason_code #=> String, one of "InvitationAccessDenied", "InvitationValidationFailed", "EngagementAccessDenied", "OpportunityAccessDenied", "ResourceSnapshotJobAccessDenied", "ResourceSnapshotJobValidationFailed", "ResourceSnapshotJobConflict", "EngagementValidationFailed", "EngagementConflict", "OpportunitySubmissionFailed", "EngagementInvitationConflict", "InternalError", "OpportunityValidationFailed", "OpportunityConflict", "ResourceSnapshotAccessDenied", "ResourceSnapshotValidationFailed", "ResourceSnapshotConflict", "ServiceQuotaExceeded", "RequestThrottled", "ContextNotFound", "CustomerProjectContextNotPermitted", "DisqualifiedLeadNotPermitted"
    #   resp.task_summaries[0].opportunity_id #=> String
    #   resp.task_summaries[0].resource_snapshot_job_id #=> String
    #   resp.task_summaries[0].engagement_id #=> String
    #   resp.task_summaries[0].context_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/ListOpportunityFromEngagementTasks AWS API Documentation
    #
    # @overload list_opportunity_from_engagement_tasks(params = {})
    # @param [Hash] params ({})
    def list_opportunity_from_engagement_tasks(params = {}, options = {})
      req = build_request(:list_opportunity_from_engagement_tasks, params)
      req.send_request(options)
    end

    # Lists resource snapshot jobs owned by the customer. This operation
    # supports various filtering scenarios, including listing all jobs owned
    # by the caller, jobs for a specific engagement, jobs with a specific
    # status, or any combination of these filters.
    #
    # @option params [required, String] :catalog
    #   Specifies the catalog related to the request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call. If omitted,
    #   defaults to 50.
    #
    # @option params [String] :next_token
    #   The token for the next set of results.
    #
    # @option params [String] :engagement_identifier
    #   The identifier of the engagement to filter the response.
    #
    # @option params [String] :status
    #   The status of the jobs to filter the response.
    #
    # @option params [Types::SortObject] :sort
    #   Configures the sorting of the response. If omitted, results are sorted
    #   by `CreatedDate` in descending order.
    #
    # @return [Types::ListResourceSnapshotJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListResourceSnapshotJobsResponse#resource_snapshot_job_summaries #resource_snapshot_job_summaries} => Array&lt;Types::ResourceSnapshotJobSummary&gt;
    #   * {Types::ListResourceSnapshotJobsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_resource_snapshot_jobs({
    #     catalog: "CatalogIdentifier", # required
    #     max_results: 1,
    #     next_token: "String",
    #     engagement_identifier: "EngagementIdentifier",
    #     status: "Running", # accepts Running, Stopped
    #     sort: {
    #       sort_by: "CreatedDate", # accepts CreatedDate
    #       sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_snapshot_job_summaries #=> Array
    #   resp.resource_snapshot_job_summaries[0].id #=> String
    #   resp.resource_snapshot_job_summaries[0].arn #=> String
    #   resp.resource_snapshot_job_summaries[0].engagement_id #=> String
    #   resp.resource_snapshot_job_summaries[0].status #=> String, one of "Running", "Stopped"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/ListResourceSnapshotJobs AWS API Documentation
    #
    # @overload list_resource_snapshot_jobs(params = {})
    # @param [Hash] params ({})
    def list_resource_snapshot_jobs(params = {}, options = {})
      req = build_request(:list_resource_snapshot_jobs, params)
      req.send_request(options)
    end

    # Retrieves a list of resource view snapshots based on specified
    # criteria. This operation supports various use cases, including:
    #
    # * Fetching all snapshots associated with an engagement.
    #
    # * Retrieving snapshots of a specific resource type within an
    #   engagement.
    #
    # * Obtaining snapshots for a particular resource using a specified
    #   template.
    #
    # * Accessing the latest snapshot of a resource within an engagement.
    #
    # * Filtering snapshots by resource owner.
    #
    # @option params [required, String] :catalog
    #   Specifies the catalog related to the request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call.
    #
    # @option params [String] :next_token
    #   The token for the next set of results.
    #
    # @option params [required, String] :engagement_identifier
    #   The unique identifier of the engagement associated with the snapshots.
    #
    # @option params [String] :resource_type
    #   Filters the response to include only snapshots of the specified
    #   resource type.
    #
    # @option params [String] :resource_identifier
    #   Filters the response to include only snapshots of the specified
    #   resource.
    #
    # @option params [String] :resource_snapshot_template_identifier
    #   Filters the response to include only snapshots created using the
    #   specified template.
    #
    # @option params [String] :created_by
    #   Filters the response to include only snapshots of resources owned by
    #   the specified AWS account.
    #
    # @return [Types::ListResourceSnapshotsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListResourceSnapshotsResponse#resource_snapshot_summaries #resource_snapshot_summaries} => Array&lt;Types::ResourceSnapshotSummary&gt;
    #   * {Types::ListResourceSnapshotsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_resource_snapshots({
    #     catalog: "CatalogIdentifier", # required
    #     max_results: 1,
    #     next_token: "String",
    #     engagement_identifier: "EngagementIdentifier", # required
    #     resource_type: "Opportunity", # accepts Opportunity
    #     resource_identifier: "ResourceIdentifier",
    #     resource_snapshot_template_identifier: "ResourceTemplateName",
    #     created_by: "AwsAccount",
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_snapshot_summaries #=> Array
    #   resp.resource_snapshot_summaries[0].arn #=> String
    #   resp.resource_snapshot_summaries[0].revision #=> Integer
    #   resp.resource_snapshot_summaries[0].resource_type #=> String, one of "Opportunity"
    #   resp.resource_snapshot_summaries[0].resource_id #=> String
    #   resp.resource_snapshot_summaries[0].resource_snapshot_template_name #=> String
    #   resp.resource_snapshot_summaries[0].created_by #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/ListResourceSnapshots AWS API Documentation
    #
    # @overload list_resource_snapshots(params = {})
    # @param [Hash] params ({})
    def list_resource_snapshots(params = {}, options = {})
      req = build_request(:list_resource_snapshots, params)
      req.send_request(options)
    end

    # Retrieves a list of Partner Solutions that the partner registered on
    # Partner Central. This API is used to generate a list of solutions that
    # an end user selects from for association with an opportunity.
    #
    # @option params [required, String] :catalog
    #   Specifies the catalog associated with the request. This field takes a
    #   string value from a predefined list: `AWS` or `Sandbox`. The catalog
    #   determines which environment the solutions are listed in. Use `AWS` to
    #   list solutions in the Amazon Web Services catalog, and `Sandbox` to
    #   list solutions in a secure and isolated testing environment.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results returned by a single call. This value
    #   must be provided in the next call to retrieve the next set of results.
    #
    #   Default: 20
    #
    # @option params [String] :next_token
    #   A pagination token used to retrieve the next set of results in
    #   subsequent calls. This token is included in the response only if there
    #   are additional result pages available.
    #
    # @option params [Types::SolutionSort] :sort
    #   Object that configures sorting done on the response. Default
    #   `Sort.SortBy` is `Identifier`.
    #
    # @option params [Array<String>] :status
    #   Filters solutions based on their status. This filter helps partners
    #   manage their solution portfolios effectively.
    #
    # @option params [Array<String>] :identifier
    #   Filters the solutions based on their unique identifier. Use this
    #   filter to retrieve specific solutions by providing the solution's
    #   identifier for accurate results.
    #
    # @option params [Array<String>] :category
    #   Filters the solutions based on the category to which they belong. This
    #   allows partners to search for solutions within specific categories,
    #   such as `Software`, `Consulting`, or `Managed Services`.
    #
    # @return [Types::ListSolutionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSolutionsResponse#solution_summaries #solution_summaries} => Array&lt;Types::SolutionBase&gt;
    #   * {Types::ListSolutionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_solutions({
    #     catalog: "CatalogIdentifier", # required
    #     max_results: 1,
    #     next_token: "String",
    #     sort: {
    #       sort_order: "ASCENDING", # required, accepts ASCENDING, DESCENDING
    #       sort_by: "Identifier", # required, accepts Identifier, Name, Status, Category, CreatedDate
    #     },
    #     status: ["Active"], # accepts Active, Inactive, Draft
    #     identifier: ["SolutionIdentifier"],
    #     category: ["String"],
    #   })
    #
    # @example Response structure
    #
    #   resp.solution_summaries #=> Array
    #   resp.solution_summaries[0].catalog #=> String
    #   resp.solution_summaries[0].id #=> String
    #   resp.solution_summaries[0].arn #=> String
    #   resp.solution_summaries[0].name #=> String
    #   resp.solution_summaries[0].status #=> String, one of "Active", "Inactive", "Draft"
    #   resp.solution_summaries[0].category #=> String
    #   resp.solution_summaries[0].created_date #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/ListSolutions AWS API Documentation
    #
    # @overload list_solutions(params = {})
    # @param [Hash] params ({})
    def list_solutions(params = {}, options = {})
      req = build_request(:list_solutions, params)
      req.send_request(options)
    end

    # Returns a list of tags for a resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource for which you want to
    #   retrieve tags.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
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
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Updates the currently set system settings, which include the IAM Role
    # used for resource snapshot jobs.
    #
    # @option params [required, String] :catalog
    #   Specifies the catalog in which the settings will be updated.
    #   Acceptable values include `AWS` for production and `Sandbox` for
    #   testing environments.
    #
    # @option params [String] :resource_snapshot_job_role_identifier
    #   Specifies the ARN of the IAM Role used for resource snapshot job
    #   executions.
    #
    # @return [Types::PutSellingSystemSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutSellingSystemSettingsResponse#catalog #catalog} => String
    #   * {Types::PutSellingSystemSettingsResponse#resource_snapshot_job_role_arn #resource_snapshot_job_role_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_selling_system_settings({
    #     catalog: "CatalogIdentifier", # required
    #     resource_snapshot_job_role_identifier: "ResourceSnapshotJobRoleIdentifier",
    #   })
    #
    # @example Response structure
    #
    #   resp.catalog #=> String
    #   resp.resource_snapshot_job_role_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/PutSellingSystemSettings AWS API Documentation
    #
    # @overload put_selling_system_settings(params = {})
    # @param [Hash] params ({})
    def put_selling_system_settings(params = {}, options = {})
      req = build_request(:put_selling_system_settings, params)
      req.send_request(options)
    end

    # This action rejects an `EngagementInvitation` that AWS shared.
    # Rejecting an invitation indicates that the partner doesn't want to
    # pursue the opportunity, and all related data will become inaccessible
    # thereafter.
    #
    # @option params [required, String] :catalog
    #   This is the catalog that's associated with the engagement invitation.
    #   Acceptable values are `AWS` or `Sandbox`, and these values determine
    #   the environment in which the opportunity is managed.
    #
    # @option params [required, String] :identifier
    #   This is the unique identifier of the rejected `EngagementInvitation`.
    #   Providing the correct identifier helps to ensure that the intended
    #   invitation is rejected.
    #
    # @option params [String] :rejection_reason
    #   This describes the reason for rejecting the engagement invitation,
    #   which helps AWS track usage patterns. Acceptable values include the
    #   following:
    #
    #   * *Customer problem unclear:* The customer's problem isn't
    #     understood.
    #
    #   * *Next steps unclear:* The next steps required to proceed aren't
    #     understood.
    #
    #   * *Unable to support:* The partner is unable to provide support due to
    #     resource or capability constraints.
    #
    #   * *Duplicate of partner referral:* The opportunity is a duplicate of
    #     an existing referral.
    #
    #   * *Other:* Any reason not covered by other values.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reject_engagement_invitation({
    #     catalog: "CatalogIdentifier", # required
    #     identifier: "EngagementInvitationArnOrIdentifier", # required
    #     rejection_reason: "RejectionReasonString",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/RejectEngagementInvitation AWS API Documentation
    #
    # @overload reject_engagement_invitation(params = {})
    # @param [Hash] params ({})
    def reject_engagement_invitation(params = {}, options = {})
      req = build_request(:reject_engagement_invitation, params)
      req.send_request(options)
    end

    # This action starts the engagement by accepting an
    # `EngagementInvitation`. The task is asynchronous and involves the
    # following steps: accepting the invitation, creating an opportunity in
    # the partner’s account from the AWS opportunity, and copying details
    # for tracking. When completed, an `Opportunity Created` event is
    # generated, indicating that the opportunity has been successfully
    # created in the partner's account.
    #
    # @option params [required, String] :catalog
    #   Specifies the catalog related to the task. Use `AWS` for production
    #   engagements and `Sandbox` for testing scenarios.
    #
    # @option params [required, String] :client_token
    #   A unique, case-sensitive identifier provided by the client that helps
    #   to ensure the idempotency of the request. This can be a random or
    #   meaningful string but must be unique for each request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :identifier
    #   Specifies the unique identifier of the `EngagementInvitation` to be
    #   accepted. Providing the correct identifier helps ensure that the
    #   correct engagement is processed.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A map of the key-value pairs of the tag or tags to assign.
    #
    # @return [Types::StartEngagementByAcceptingInvitationTaskResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartEngagementByAcceptingInvitationTaskResponse#task_id #task_id} => String
    #   * {Types::StartEngagementByAcceptingInvitationTaskResponse#task_arn #task_arn} => String
    #   * {Types::StartEngagementByAcceptingInvitationTaskResponse#start_time #start_time} => Time
    #   * {Types::StartEngagementByAcceptingInvitationTaskResponse#task_status #task_status} => String
    #   * {Types::StartEngagementByAcceptingInvitationTaskResponse#message #message} => String
    #   * {Types::StartEngagementByAcceptingInvitationTaskResponse#reason_code #reason_code} => String
    #   * {Types::StartEngagementByAcceptingInvitationTaskResponse#opportunity_id #opportunity_id} => String
    #   * {Types::StartEngagementByAcceptingInvitationTaskResponse#resource_snapshot_job_id #resource_snapshot_job_id} => String
    #   * {Types::StartEngagementByAcceptingInvitationTaskResponse#engagement_invitation_id #engagement_invitation_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_engagement_by_accepting_invitation_task({
    #     catalog: "CatalogIdentifier", # required
    #     client_token: "ClientToken", # required
    #     identifier: "EngagementInvitationArnOrIdentifier", # required
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
    #   resp.task_id #=> String
    #   resp.task_arn #=> String
    #   resp.start_time #=> Time
    #   resp.task_status #=> String, one of "IN_PROGRESS", "COMPLETE", "FAILED"
    #   resp.message #=> String
    #   resp.reason_code #=> String, one of "InvitationAccessDenied", "InvitationValidationFailed", "EngagementAccessDenied", "OpportunityAccessDenied", "ResourceSnapshotJobAccessDenied", "ResourceSnapshotJobValidationFailed", "ResourceSnapshotJobConflict", "EngagementValidationFailed", "EngagementConflict", "OpportunitySubmissionFailed", "EngagementInvitationConflict", "InternalError", "OpportunityValidationFailed", "OpportunityConflict", "ResourceSnapshotAccessDenied", "ResourceSnapshotValidationFailed", "ResourceSnapshotConflict", "ServiceQuotaExceeded", "RequestThrottled", "ContextNotFound", "CustomerProjectContextNotPermitted", "DisqualifiedLeadNotPermitted"
    #   resp.opportunity_id #=> String
    #   resp.resource_snapshot_job_id #=> String
    #   resp.engagement_invitation_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/StartEngagementByAcceptingInvitationTask AWS API Documentation
    #
    # @overload start_engagement_by_accepting_invitation_task(params = {})
    # @param [Hash] params ({})
    def start_engagement_by_accepting_invitation_task(params = {}, options = {})
      req = build_request(:start_engagement_by_accepting_invitation_task, params)
      req.send_request(options)
    end

    # Similar to `StartEngagementByAcceptingInvitationTask`, this action is
    # asynchronous and performs multiple steps before completion. This
    # action orchestrates a comprehensive workflow that combines multiple
    # API operations into a single task to create and initiate an engagement
    # from an existing opportunity. It automatically executes a sequence of
    # operations including `GetOpportunity`, `CreateEngagement` (if it
    # doesn't exist), `CreateResourceSnapshot`,
    # `CreateResourceSnapshotJob`, `CreateEngagementInvitation` (if not
    # already invited/accepted), and `SubmitOpportunity`.
    #
    # @option params [required, String] :catalog
    #   Specifies the catalog in which the engagement is tracked. Acceptable
    #   values include `AWS` for production and `Sandbox` for testing
    #   environments.
    #
    # @option params [required, String] :client_token
    #   A unique token provided by the client to help ensure the idempotency
    #   of the request. It helps prevent the same task from being performed
    #   multiple times.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :identifier
    #   The unique identifier of the opportunity from which the engagement
    #   task is to be initiated. This helps ensure that the task is applied to
    #   the correct opportunity.
    #
    # @option params [required, Types::AwsSubmission] :aws_submission
    #   Indicates the level of AWS involvement in the opportunity. This field
    #   helps track AWS participation throughout the engagement, such as
    #   providing technical support, deal assistance, and sales support.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A map of the key-value pairs of the tag or tags to assign.
    #
    # @return [Types::StartEngagementFromOpportunityTaskResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartEngagementFromOpportunityTaskResponse#task_id #task_id} => String
    #   * {Types::StartEngagementFromOpportunityTaskResponse#task_arn #task_arn} => String
    #   * {Types::StartEngagementFromOpportunityTaskResponse#start_time #start_time} => Time
    #   * {Types::StartEngagementFromOpportunityTaskResponse#task_status #task_status} => String
    #   * {Types::StartEngagementFromOpportunityTaskResponse#message #message} => String
    #   * {Types::StartEngagementFromOpportunityTaskResponse#reason_code #reason_code} => String
    #   * {Types::StartEngagementFromOpportunityTaskResponse#opportunity_id #opportunity_id} => String
    #   * {Types::StartEngagementFromOpportunityTaskResponse#resource_snapshot_job_id #resource_snapshot_job_id} => String
    #   * {Types::StartEngagementFromOpportunityTaskResponse#engagement_id #engagement_id} => String
    #   * {Types::StartEngagementFromOpportunityTaskResponse#engagement_invitation_id #engagement_invitation_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_engagement_from_opportunity_task({
    #     catalog: "CatalogIdentifier", # required
    #     client_token: "ClientToken", # required
    #     identifier: "OpportunityIdentifier", # required
    #     aws_submission: { # required
    #       involvement_type: "For Visibility Only", # required, accepts For Visibility Only, Co-Sell
    #       visibility: "Full", # accepts Full, Limited
    #     },
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
    #   resp.task_id #=> String
    #   resp.task_arn #=> String
    #   resp.start_time #=> Time
    #   resp.task_status #=> String, one of "IN_PROGRESS", "COMPLETE", "FAILED"
    #   resp.message #=> String
    #   resp.reason_code #=> String, one of "InvitationAccessDenied", "InvitationValidationFailed", "EngagementAccessDenied", "OpportunityAccessDenied", "ResourceSnapshotJobAccessDenied", "ResourceSnapshotJobValidationFailed", "ResourceSnapshotJobConflict", "EngagementValidationFailed", "EngagementConflict", "OpportunitySubmissionFailed", "EngagementInvitationConflict", "InternalError", "OpportunityValidationFailed", "OpportunityConflict", "ResourceSnapshotAccessDenied", "ResourceSnapshotValidationFailed", "ResourceSnapshotConflict", "ServiceQuotaExceeded", "RequestThrottled", "ContextNotFound", "CustomerProjectContextNotPermitted", "DisqualifiedLeadNotPermitted"
    #   resp.opportunity_id #=> String
    #   resp.resource_snapshot_job_id #=> String
    #   resp.engagement_id #=> String
    #   resp.engagement_invitation_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/StartEngagementFromOpportunityTask AWS API Documentation
    #
    # @overload start_engagement_from_opportunity_task(params = {})
    # @param [Hash] params ({})
    def start_engagement_from_opportunity_task(params = {}, options = {})
      req = build_request(:start_engagement_from_opportunity_task, params)
      req.send_request(options)
    end

    # This action creates an opportunity from an existing engagement
    # context. The task is asynchronous and orchestrates the process of
    # converting engagement contextual information into a structured
    # opportunity record within the partner's account.
    #
    # @option params [required, String] :catalog
    #   Specifies the catalog in which the opportunity creation task is
    #   executed. Acceptable values include `AWS` for production and `Sandbox`
    #   for testing environments.
    #
    # @option params [required, String] :client_token
    #   A unique token provided by the client to help ensure the idempotency
    #   of the request. It helps prevent the same task from being performed
    #   multiple times.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :identifier
    #   The unique identifier of the engagement from which the opportunity
    #   creation task is to be initiated. This helps ensure that the task is
    #   applied to the correct engagement.
    #
    # @option params [required, String] :context_identifier
    #   The unique identifier of the engagement context from which to create
    #   the opportunity. This specifies the specific contextual information
    #   within the engagement that will be used for opportunity creation.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A map of the key-value pairs of the tag or tags to assign.
    #
    # @return [Types::StartOpportunityFromEngagementTaskResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartOpportunityFromEngagementTaskResponse#task_id #task_id} => String
    #   * {Types::StartOpportunityFromEngagementTaskResponse#task_arn #task_arn} => String
    #   * {Types::StartOpportunityFromEngagementTaskResponse#start_time #start_time} => Time
    #   * {Types::StartOpportunityFromEngagementTaskResponse#task_status #task_status} => String
    #   * {Types::StartOpportunityFromEngagementTaskResponse#message #message} => String
    #   * {Types::StartOpportunityFromEngagementTaskResponse#reason_code #reason_code} => String
    #   * {Types::StartOpportunityFromEngagementTaskResponse#opportunity_id #opportunity_id} => String
    #   * {Types::StartOpportunityFromEngagementTaskResponse#resource_snapshot_job_id #resource_snapshot_job_id} => String
    #   * {Types::StartOpportunityFromEngagementTaskResponse#engagement_id #engagement_id} => String
    #   * {Types::StartOpportunityFromEngagementTaskResponse#context_id #context_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_opportunity_from_engagement_task({
    #     catalog: "CatalogIdentifier", # required
    #     client_token: "ClientToken", # required
    #     identifier: "EngagementArnOrIdentifier", # required
    #     context_identifier: "ContextIdentifier", # required
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
    #   resp.task_id #=> String
    #   resp.task_arn #=> String
    #   resp.start_time #=> Time
    #   resp.task_status #=> String, one of "IN_PROGRESS", "COMPLETE", "FAILED"
    #   resp.message #=> String
    #   resp.reason_code #=> String, one of "InvitationAccessDenied", "InvitationValidationFailed", "EngagementAccessDenied", "OpportunityAccessDenied", "ResourceSnapshotJobAccessDenied", "ResourceSnapshotJobValidationFailed", "ResourceSnapshotJobConflict", "EngagementValidationFailed", "EngagementConflict", "OpportunitySubmissionFailed", "EngagementInvitationConflict", "InternalError", "OpportunityValidationFailed", "OpportunityConflict", "ResourceSnapshotAccessDenied", "ResourceSnapshotValidationFailed", "ResourceSnapshotConflict", "ServiceQuotaExceeded", "RequestThrottled", "ContextNotFound", "CustomerProjectContextNotPermitted", "DisqualifiedLeadNotPermitted"
    #   resp.opportunity_id #=> String
    #   resp.resource_snapshot_job_id #=> String
    #   resp.engagement_id #=> String
    #   resp.context_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/StartOpportunityFromEngagementTask AWS API Documentation
    #
    # @overload start_opportunity_from_engagement_task(params = {})
    # @param [Hash] params ({})
    def start_opportunity_from_engagement_task(params = {}, options = {})
      req = build_request(:start_opportunity_from_engagement_task, params)
      req.send_request(options)
    end

    # Starts a resource snapshot job that has been previously created.
    #
    # @option params [required, String] :catalog
    #   Specifies the catalog related to the request. Valid values are:
    #
    #   * AWS: Starts the request from the production AWS environment.
    #
    #   * Sandbox: Starts the request from a sandbox environment used for
    #     testing or development purposes.
    #
    # @option params [required, String] :resource_snapshot_job_identifier
    #   The identifier of the resource snapshot job to start.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_resource_snapshot_job({
    #     catalog: "CatalogIdentifier", # required
    #     resource_snapshot_job_identifier: "ResourceSnapshotJobIdentifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/StartResourceSnapshotJob AWS API Documentation
    #
    # @overload start_resource_snapshot_job(params = {})
    # @param [Hash] params ({})
    def start_resource_snapshot_job(params = {}, options = {})
      req = build_request(:start_resource_snapshot_job, params)
      req.send_request(options)
    end

    # Stops a resource snapshot job. The job must be started prior to being
    # stopped.
    #
    # @option params [required, String] :catalog
    #   Specifies the catalog related to the request. Valid values are:
    #
    #   * AWS: Stops the request from the production AWS environment.
    #
    #   * Sandbox: Stops the request from a sandbox environment used for
    #     testing or development purposes.
    #
    # @option params [required, String] :resource_snapshot_job_identifier
    #   The identifier of the job to stop.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_resource_snapshot_job({
    #     catalog: "CatalogIdentifier", # required
    #     resource_snapshot_job_identifier: "ResourceSnapshotJobIdentifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/StopResourceSnapshotJob AWS API Documentation
    #
    # @overload stop_resource_snapshot_job(params = {})
    # @param [Hash] params ({})
    def stop_resource_snapshot_job(params = {}, options = {})
      req = build_request(:stop_resource_snapshot_job, params)
      req.send_request(options)
    end

    # Use this action to submit an Opportunity that was previously created
    # by partner for AWS review. After you perform this action, the
    # Opportunity becomes non-editable until it is reviewed by AWS and has `
    # LifeCycle.ReviewStatus ` as either `Approved` or `Action Required`.
    #
    # @option params [required, String] :catalog
    #   Specifies the catalog related to the request. Valid values are:
    #
    #   * AWS: Submits the opportunity request from the production AWS
    #     environment.
    #
    #   * Sandbox: Submits the opportunity request from a sandbox environment
    #     used for testing or development purposes.
    #
    # @option params [required, String] :identifier
    #   The identifier of the Opportunity previously created by partner and
    #   needs to be submitted.
    #
    # @option params [required, String] :involvement_type
    #   Specifies the level of AWS sellers' involvement on the opportunity.
    #   Valid values:
    #
    #   * `Co-sell`: Indicates the user wants to co-sell with AWS. Share the
    #     opportunity with AWS to receive deal assistance and support.
    #
    #   * `For Visibility Only`: Indicates that the user does not need support
    #     from AWS Sales Rep. Share this opportunity with AWS for visibility
    #     only, you will not receive deal assistance and support.
    #
    # @option params [String] :visibility
    #   Determines whether to restrict visibility of the opportunity from AWS
    #   sales. Default value is Full. Valid values:
    #
    #   * `Full`: The opportunity is fully visible to AWS sales.
    #
    #   * `Limited`: The opportunity has restricted visibility to AWS sales.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.submit_opportunity({
    #     catalog: "CatalogIdentifier", # required
    #     identifier: "OpportunityIdentifier", # required
    #     involvement_type: "For Visibility Only", # required, accepts For Visibility Only, Co-Sell
    #     visibility: "Full", # accepts Full, Limited
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/SubmitOpportunity AWS API Documentation
    #
    # @overload submit_opportunity(params = {})
    # @param [Hash] params ({})
    def submit_opportunity(params = {}, options = {})
      req = build_request(:submit_opportunity, params)
      req.send_request(options)
    end

    # Assigns one or more tags (key-value pairs) to the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want to tag.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   A map of the key-value pairs of the tag or tags to assign.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes a tag or tags from a resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want to untag.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The keys of the key-value pairs for the tag or tags you want to remove
    #   from the specified resource.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates the context information for an existing engagement with new or
    # modified data.
    #
    # @option params [required, String] :catalog
    #   Specifies the catalog associated with the engagement context update
    #   request. This field takes a string value from a predefined list: `AWS`
    #   or `Sandbox`. The catalog determines which environment the engagement
    #   context is updated in.
    #
    # @option params [required, String] :engagement_identifier
    #   The unique identifier of the `Engagement` containing the context to be
    #   updated. This parameter ensures the context update is applied to the
    #   correct engagement.
    #
    # @option params [required, String] :context_identifier
    #   The unique identifier of the specific engagement context to be
    #   updated. This ensures that the correct context within the engagement
    #   is modified.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :engagement_last_modified_at
    #   The timestamp when the engagement was last modified, used for
    #   optimistic concurrency control. This helps prevent conflicts when
    #   multiple users attempt to update the same engagement simultaneously.
    #
    # @option params [required, String] :type
    #   Specifies the type of context being updated within the engagement.
    #   This field determines the structure and content of the context payload
    #   being modified.
    #
    # @option params [required, Types::UpdateEngagementContextPayload] :payload
    #   Contains the updated contextual information for the engagement. The
    #   structure of this payload varies based on the context type specified
    #   in the Type field.
    #
    # @return [Types::UpdateEngagementContextResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateEngagementContextResponse#engagement_id #engagement_id} => String
    #   * {Types::UpdateEngagementContextResponse#engagement_arn #engagement_arn} => String
    #   * {Types::UpdateEngagementContextResponse#engagement_last_modified_at #engagement_last_modified_at} => Time
    #   * {Types::UpdateEngagementContextResponse#context_id #context_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_engagement_context({
    #     catalog: "CatalogIdentifier", # required
    #     engagement_identifier: "EngagementArnOrIdentifier", # required
    #     context_identifier: "EngagementContextIdentifier", # required
    #     engagement_last_modified_at: Time.now, # required
    #     type: "CustomerProject", # required, accepts CustomerProject, Lead
    #     payload: { # required
    #       lead: {
    #         qualification_status: "LeadQualificationStatus",
    #         customer: { # required
    #           industry: "Aerospace", # accepts Aerospace, Agriculture, Automotive, Computers and Electronics, Consumer Goods, Education, Energy - Oil and Gas, Energy - Power and Utilities, Financial Services, Gaming, Government, Healthcare, Hospitality, Life Sciences, Manufacturing, Marketing and Advertising, Media and Entertainment, Mining, Non-Profit Organization, Professional Services, Real Estate and Construction, Retail, Software and Internet, Telecommunications, Transportation and Logistics, Travel, Wholesale and Distribution, Other
    #           company_name: "CompanyName", # required
    #           website_url: "CompanyWebsiteUrl",
    #           address: { # required
    #             city: "AddressSummaryCityString",
    #             postal_code: "AddressSummaryPostalCodeString",
    #             state_or_region: "AddressPart",
    #             country_code: "US", # accepts US, AF, AX, AL, DZ, AS, AD, AO, AI, AQ, AG, AR, AM, AW, AU, AT, AZ, BS, BH, BD, BB, BY, BE, BZ, BJ, BM, BT, BO, BQ, BA, BW, BV, BR, IO, BN, BG, BF, BI, KH, CM, CA, CV, KY, CF, TD, CL, CN, CX, CC, CO, KM, CG, CK, CR, CI, HR, CU, CW, CY, CZ, CD, DK, DJ, DM, DO, EC, EG, SV, GQ, ER, EE, ET, FK, FO, FJ, FI, FR, GF, PF, TF, GA, GM, GE, DE, GH, GI, GR, GL, GD, GP, GU, GT, GG, GN, GW, GY, HT, HM, VA, HN, HK, HU, IS, IN, ID, IR, IQ, IE, IM, IL, IT, JM, JP, JE, JO, KZ, KE, KI, KR, KW, KG, LA, LV, LB, LS, LR, LY, LI, LT, LU, MO, MK, MG, MW, MY, MV, ML, MT, MH, MQ, MR, MU, YT, MX, FM, MD, MC, MN, ME, MS, MA, MZ, MM, NA, NR, NP, NL, AN, NC, NZ, NI, NE, NG, NU, NF, MP, NO, OM, PK, PW, PS, PA, PG, PY, PE, PH, PN, PL, PT, PR, QA, RE, RO, RU, RW, BL, SH, KN, LC, MF, PM, VC, WS, SM, ST, SA, SN, RS, SC, SL, SG, SX, SK, SI, SB, SO, ZA, GS, SS, ES, LK, SD, SR, SJ, SZ, SE, CH, SY, TW, TJ, TZ, TH, TL, TG, TK, TO, TT, TN, TR, TM, TC, TV, UG, UA, AE, GB, UM, UY, UZ, VU, VE, VN, VG, VI, WF, EH, YE, ZM, ZW
    #           },
    #           aws_maturity: "AwsMaturity",
    #           market_segment: "Enterprise", # accepts Enterprise, Large, Medium, Small, Micro
    #         },
    #         interaction: {
    #           source_type: "LeadSourceType", # required
    #           source_id: "LeadSourceId", # required
    #           source_name: "LeadSourceName", # required
    #           usecase: "EngagementUseCase",
    #           interaction_date: Time.now,
    #           customer_action: "CustomerAction", # required
    #           business_problem: "EngagementCustomerBusinessProblem",
    #           contact: { # required
    #             business_title: "JobTitle", # required
    #             email: "Email", # required
    #             first_name: "Name", # required
    #             last_name: "Name", # required
    #             phone: "PhoneNumber",
    #           },
    #         },
    #       },
    #       customer_project: {
    #         customer: {
    #           industry: "Aerospace", # required, accepts Aerospace, Agriculture, Automotive, Computers and Electronics, Consumer Goods, Education, Energy - Oil and Gas, Energy - Power and Utilities, Financial Services, Gaming, Government, Healthcare, Hospitality, Life Sciences, Manufacturing, Marketing and Advertising, Media and Entertainment, Mining, Non-Profit Organization, Professional Services, Real Estate and Construction, Retail, Software and Internet, Telecommunications, Transportation and Logistics, Travel, Wholesale and Distribution, Other
    #           company_name: "CompanyName", # required
    #           website_url: "CompanyWebsiteUrl", # required
    #           country_code: "US", # required, accepts US, AF, AX, AL, DZ, AS, AD, AO, AI, AQ, AG, AR, AM, AW, AU, AT, AZ, BS, BH, BD, BB, BY, BE, BZ, BJ, BM, BT, BO, BQ, BA, BW, BV, BR, IO, BN, BG, BF, BI, KH, CM, CA, CV, KY, CF, TD, CL, CN, CX, CC, CO, KM, CG, CK, CR, CI, HR, CU, CW, CY, CZ, CD, DK, DJ, DM, DO, EC, EG, SV, GQ, ER, EE, ET, FK, FO, FJ, FI, FR, GF, PF, TF, GA, GM, GE, DE, GH, GI, GR, GL, GD, GP, GU, GT, GG, GN, GW, GY, HT, HM, VA, HN, HK, HU, IS, IN, ID, IR, IQ, IE, IM, IL, IT, JM, JP, JE, JO, KZ, KE, KI, KR, KW, KG, LA, LV, LB, LS, LR, LY, LI, LT, LU, MO, MK, MG, MW, MY, MV, ML, MT, MH, MQ, MR, MU, YT, MX, FM, MD, MC, MN, ME, MS, MA, MZ, MM, NA, NR, NP, NL, AN, NC, NZ, NI, NE, NG, NU, NF, MP, NO, OM, PK, PW, PS, PA, PG, PY, PE, PH, PN, PL, PT, PR, QA, RE, RO, RU, RW, BL, SH, KN, LC, MF, PM, VC, WS, SM, ST, SA, SN, RS, SC, SL, SG, SX, SK, SI, SB, SO, ZA, GS, SS, ES, LK, SD, SR, SJ, SZ, SE, CH, SY, TW, TJ, TZ, TH, TL, TG, TK, TO, TT, TN, TR, TM, TC, TV, UG, UA, AE, GB, UM, UY, UZ, VU, VE, VN, VG, VI, WF, EH, YE, ZM, ZW
    #         },
    #         project: {
    #           title: "EngagementCustomerProjectTitle", # required
    #           business_problem: "EngagementCustomerBusinessProblem", # required
    #           target_completion_date: "EngagementCustomerProjectDetailsTargetCompletionDateString", # required
    #         },
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.engagement_id #=> String
    #   resp.engagement_arn #=> String
    #   resp.engagement_last_modified_at #=> Time
    #   resp.context_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/UpdateEngagementContext AWS API Documentation
    #
    # @overload update_engagement_context(params = {})
    # @param [Hash] params ({})
    def update_engagement_context(params = {}, options = {})
      req = build_request(:update_engagement_context, params)
      req.send_request(options)
    end

    # Updates the `Opportunity` record identified by a given `Identifier`.
    # This operation allows you to modify the details of an existing
    # opportunity to reflect the latest information and progress. Use this
    # action to keep the opportunity record up-to-date and accurate.
    #
    # When you perform updates, include the entire payload with each
    # request. If any field is omitted, the API assumes that the field is
    # set to `null`. The best practice is to always perform a
    # `GetOpportunity` to retrieve the latest values, then send the complete
    # payload with the updated values to be changed.
    #
    # @option params [required, String] :catalog
    #   Specifies the catalog associated with the request. This field takes a
    #   string value from a predefined list: `AWS` or `Sandbox`. The catalog
    #   determines which environment the opportunity is updated in. Use `AWS`
    #   to update real opportunities in the production environment, and
    #   `Sandbox` for testing in secure, isolated environments. When you use
    #   the `Sandbox` catalog, it allows you to simulate and validate your
    #   interactions with Amazon Web Services services without affecting live
    #   data or operations.
    #
    # @option params [Array<String>] :primary_needs_from_aws
    #   Identifies the type of support the partner needs from Amazon Web
    #   Services.
    #
    #   Valid values:
    #
    #   * Cosell—Architectural Validation: Confirmation from Amazon Web
    #     Services that the partner's proposed solution architecture is
    #     aligned with Amazon Web Services best practices and poses minimal
    #     architectural risks.
    #
    #   * Cosell—Business Presentation: Request Amazon Web Services seller's
    #     participation in a joint customer presentation.
    #
    #   * Cosell—Competitive Information: Access to Amazon Web Services
    #     competitive resources and support for the partner's proposed
    #     solution.
    #
    #   * Cosell—Pricing Assistance: Connect with an AWS seller for support
    #     situations where a partner may be receiving an upfront discount on a
    #     service (for example: EDP deals).
    #
    #   * Cosell—Technical Consultation: Connection with an Amazon Web
    #     Services Solutions Architect to address the partner's questions
    #     about the proposed solution.
    #
    #   * Cosell—Total Cost of Ownership Evaluation: Assistance with quoting
    #     different cost savings of proposed solutions on Amazon Web Services
    #     versus on-premises or a traditional hosting environment.
    #
    #   * Cosell—Deal Support: Request Amazon Web Services seller's support
    #     to progress the opportunity (for example: joint customer call,
    #     strategic positioning).
    #
    #   * Cosell—Support for Public Tender/RFx: Opportunity related to the
    #     public sector where the partner needs RFx support from Amazon Web
    #     Services.
    #
    # @option params [String] :national_security
    #   Specifies if the opportunity is associated with national security
    #   concerns. This flag is only applicable when the industry is
    #   `Government`. For national-security-related opportunities, validation
    #   and compliance rules may apply, impacting the opportunity's
    #   visibility and processing.
    #
    # @option params [String] :partner_opportunity_identifier
    #   Specifies the opportunity's unique identifier in the partner's CRM
    #   system. This value is essential to track and reconcile because it's
    #   included in the outbound payload sent back to the partner.
    #
    # @option params [Types::Customer] :customer
    #   Specifies details of the customer associated with the `Opportunity`.
    #
    # @option params [Types::Project] :project
    #   An object that contains project details summary for the `Opportunity`.
    #
    # @option params [String] :opportunity_type
    #   Specifies the opportunity type as a renewal, new, or expansion.
    #
    #   Opportunity types:
    #
    #   * New opportunity: Represents a new business opportunity with a
    #     potential customer that's not previously engaged with your
    #     solutions or services.
    #
    #   * Renewal opportunity: Represents an opportunity to renew an existing
    #     contract or subscription with a current customer, ensuring
    #     continuity of service.
    #
    #   * Expansion opportunity: Represents an opportunity to expand the scope
    #     of an existing contract or subscription, either by adding new
    #     services or increasing the volume of existing services for a current
    #     customer.
    #
    # @option params [Types::Marketing] :marketing
    #   An object that contains marketing details for the `Opportunity`.
    #
    # @option params [Types::SoftwareRevenue] :software_revenue
    #   Specifies details of a customer's procurement terms. Required only
    #   for partners in eligible programs.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :last_modified_date
    #   `DateTime` when the opportunity was last modified.
    #
    # @option params [required, String] :identifier
    #   Read-only, system generated `Opportunity` unique identifier.
    #
    # @option params [Types::LifeCycle] :life_cycle
    #   An object that contains lifecycle details for the `Opportunity`.
    #
    # @return [Types::UpdateOpportunityResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateOpportunityResponse#id #id} => String
    #   * {Types::UpdateOpportunityResponse#last_modified_date #last_modified_date} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_opportunity({
    #     catalog: "CatalogIdentifier", # required
    #     primary_needs_from_aws: ["Co-Sell - Architectural Validation"], # accepts Co-Sell - Architectural Validation, Co-Sell - Business Presentation, Co-Sell - Competitive Information, Co-Sell - Pricing Assistance, Co-Sell - Technical Consultation, Co-Sell - Total Cost of Ownership Evaluation, Co-Sell - Deal Support, Co-Sell - Support for Public Tender / RFx
    #     national_security: "Yes", # accepts Yes, No
    #     partner_opportunity_identifier: "UpdateOpportunityRequestPartnerOpportunityIdentifierString",
    #     customer: {
    #       account: {
    #         industry: "Aerospace", # accepts Aerospace, Agriculture, Automotive, Computers and Electronics, Consumer Goods, Education, Energy - Oil and Gas, Energy - Power and Utilities, Financial Services, Gaming, Government, Healthcare, Hospitality, Life Sciences, Manufacturing, Marketing and Advertising, Media and Entertainment, Mining, Non-Profit Organization, Professional Services, Real Estate and Construction, Retail, Software and Internet, Telecommunications, Transportation and Logistics, Travel, Wholesale and Distribution, Other
    #         other_industry: "AccountOtherIndustryString",
    #         company_name: "AccountCompanyNameString", # required
    #         website_url: "WebsiteUrl",
    #         aws_account_id: "AwsAccount",
    #         address: {
    #           city: "AddressCityString",
    #           postal_code: "AddressPostalCodeString",
    #           state_or_region: "AddressPart",
    #           country_code: "US", # accepts US, AF, AX, AL, DZ, AS, AD, AO, AI, AQ, AG, AR, AM, AW, AU, AT, AZ, BS, BH, BD, BB, BY, BE, BZ, BJ, BM, BT, BO, BQ, BA, BW, BV, BR, IO, BN, BG, BF, BI, KH, CM, CA, CV, KY, CF, TD, CL, CN, CX, CC, CO, KM, CG, CK, CR, CI, HR, CU, CW, CY, CZ, CD, DK, DJ, DM, DO, EC, EG, SV, GQ, ER, EE, ET, FK, FO, FJ, FI, FR, GF, PF, TF, GA, GM, GE, DE, GH, GI, GR, GL, GD, GP, GU, GT, GG, GN, GW, GY, HT, HM, VA, HN, HK, HU, IS, IN, ID, IR, IQ, IE, IM, IL, IT, JM, JP, JE, JO, KZ, KE, KI, KR, KW, KG, LA, LV, LB, LS, LR, LY, LI, LT, LU, MO, MK, MG, MW, MY, MV, ML, MT, MH, MQ, MR, MU, YT, MX, FM, MD, MC, MN, ME, MS, MA, MZ, MM, NA, NR, NP, NL, AN, NC, NZ, NI, NE, NG, NU, NF, MP, NO, OM, PK, PW, PS, PA, PG, PY, PE, PH, PN, PL, PT, PR, QA, RE, RO, RU, RW, BL, SH, KN, LC, MF, PM, VC, WS, SM, ST, SA, SN, RS, SC, SL, SG, SX, SK, SI, SB, SO, ZA, GS, SS, ES, LK, SD, SR, SJ, SZ, SE, CH, SY, TW, TJ, TZ, TH, TL, TG, TK, TO, TT, TN, TR, TM, TC, TV, UG, UA, AE, GB, UM, UY, UZ, VU, VE, VN, VG, VI, WF, EH, YE, ZM, ZW
    #           street_address: "AddressStreetAddressString",
    #         },
    #         duns: "DunsNumber",
    #       },
    #       contacts: [
    #         {
    #           email: "Email",
    #           first_name: "ContactFirstNameString",
    #           last_name: "ContactLastNameString",
    #           business_title: "JobTitle",
    #           phone: "PhoneNumber",
    #         },
    #       ],
    #     },
    #     project: {
    #       delivery_models: ["SaaS or PaaS"], # accepts SaaS or PaaS, BYOL or AMI, Managed Services, Professional Services, Resell, Other
    #       expected_customer_spend: [
    #         {
    #           amount: "Amount", # required
    #           currency_code: "USD", # required, accepts USD, EUR, GBP, AUD, CAD, CNY, NZD, INR, JPY, CHF, SEK, AED, AFN, ALL, AMD, ANG, AOA, ARS, AWG, AZN, BAM, BBD, BDT, BGN, BHD, BIF, BMD, BND, BOB, BOV, BRL, BSD, BTN, BWP, BYN, BZD, CDF, CHE, CHW, CLF, CLP, COP, COU, CRC, CUC, CUP, CVE, CZK, DJF, DKK, DOP, DZD, EGP, ERN, ETB, FJD, FKP, GEL, GHS, GIP, GMD, GNF, GTQ, GYD, HKD, HNL, HRK, HTG, HUF, IDR, ILS, IQD, IRR, ISK, JMD, JOD, KES, KGS, KHR, KMF, KPW, KRW, KWD, KYD, KZT, LAK, LBP, LKR, LRD, LSL, LYD, MAD, MDL, MGA, MKD, MMK, MNT, MOP, MRU, MUR, MVR, MWK, MXN, MXV, MYR, MZN, NAD, NGN, NIO, NOK, NPR, OMR, PAB, PEN, PGK, PHP, PKR, PLN, PYG, QAR, RON, RSD, RUB, RWF, SAR, SBD, SCR, SDG, SGD, SHP, SLL, SOS, SRD, SSP, STN, SVC, SYP, SZL, THB, TJS, TMT, TND, TOP, TRY, TTD, TWD, TZS, UAH, UGX, USN, UYI, UYU, UZS, VEF, VND, VUV, WST, XAF, XCD, XDR, XOF, XPF, XSU, XUA, YER, ZAR, ZMW, ZWL
    #           frequency: "Monthly", # required, accepts Monthly
    #           target_company: "ExpectedCustomerSpendTargetCompanyString", # required
    #           estimation_url: "WebsiteUrl",
    #         },
    #       ],
    #       title: "ProjectTitleString",
    #       apn_programs: ["String"],
    #       customer_business_problem: "ProjectCustomerBusinessProblemString",
    #       customer_use_case: "String",
    #       related_opportunity_identifier: "OpportunityIdentifier",
    #       sales_activities: ["Initialized discussions with customer"], # accepts Initialized discussions with customer, Customer has shown interest in solution, Conducted POC / Demo, In evaluation / planning stage, Agreed on solution to Business Problem, Completed Action Plan, Finalized Deployment Need, SOW Signed
    #       competitor_name: "Oracle Cloud", # accepts Oracle Cloud, On-Prem, Co-location, Akamai, AliCloud, Google Cloud Platform, IBM Softlayer, Microsoft Azure, Other- Cost Optimization, No Competition, *Other
    #       other_competitor_names: "ProjectOtherCompetitorNamesString",
    #       other_solution_description: "ProjectOtherSolutionDescriptionString",
    #       additional_comments: "ProjectAdditionalCommentsString",
    #     },
    #     opportunity_type: "Net New Business", # accepts Net New Business, Flat Renewal, Expansion
    #     marketing: {
    #       campaign_name: "String",
    #       source: "Marketing Activity", # accepts Marketing Activity, None
    #       use_cases: ["String"],
    #       channels: ["AWS Marketing Central"], # accepts AWS Marketing Central, Content Syndication, Display, Email, Live Event, Out Of Home (OOH), Print, Search, Social, Telemarketing, TV, Video, Virtual Event
    #       aws_funding_used: "Yes", # accepts Yes, No
    #     },
    #     software_revenue: {
    #       delivery_model: "Contract", # accepts Contract, Pay-as-you-go, Subscription
    #       value: {
    #         amount: "MonetaryValueAmountString", # required
    #         currency_code: "USD", # required, accepts USD, EUR, GBP, AUD, CAD, CNY, NZD, INR, JPY, CHF, SEK, AED, AFN, ALL, AMD, ANG, AOA, ARS, AWG, AZN, BAM, BBD, BDT, BGN, BHD, BIF, BMD, BND, BOB, BOV, BRL, BSD, BTN, BWP, BYN, BZD, CDF, CHE, CHW, CLF, CLP, COP, COU, CRC, CUC, CUP, CVE, CZK, DJF, DKK, DOP, DZD, EGP, ERN, ETB, FJD, FKP, GEL, GHS, GIP, GMD, GNF, GTQ, GYD, HKD, HNL, HRK, HTG, HUF, IDR, ILS, IQD, IRR, ISK, JMD, JOD, KES, KGS, KHR, KMF, KPW, KRW, KWD, KYD, KZT, LAK, LBP, LKR, LRD, LSL, LYD, MAD, MDL, MGA, MKD, MMK, MNT, MOP, MRU, MUR, MVR, MWK, MXN, MXV, MYR, MZN, NAD, NGN, NIO, NOK, NPR, OMR, PAB, PEN, PGK, PHP, PKR, PLN, PYG, QAR, RON, RSD, RUB, RWF, SAR, SBD, SCR, SDG, SGD, SHP, SLL, SOS, SRD, SSP, STN, SVC, SYP, SZL, THB, TJS, TMT, TND, TOP, TRY, TTD, TWD, TZS, UAH, UGX, USN, UYI, UYU, UZS, VEF, VND, VUV, WST, XAF, XCD, XDR, XOF, XPF, XSU, XUA, YER, ZAR, ZMW, ZWL
    #       },
    #       effective_date: "Date",
    #       expiration_date: "Date",
    #     },
    #     last_modified_date: Time.now, # required
    #     identifier: "OpportunityIdentifier", # required
    #     life_cycle: {
    #       stage: "Prospect", # accepts Prospect, Qualified, Technical Validation, Business Validation, Committed, Launched, Closed Lost
    #       closed_lost_reason: "Customer Deficiency", # accepts Customer Deficiency, Delay / Cancellation of Project, Legal / Tax / Regulatory, Lost to Competitor - Google, Lost to Competitor - Microsoft, Lost to Competitor - SoftLayer, Lost to Competitor - VMWare, Lost to Competitor - Other, No Opportunity, On Premises Deployment, Partner Gap, Price, Security / Compliance, Technical Limitations, Customer Experience, Other, People/Relationship/Governance, Product/Technology, Financial/Commercial
    #       next_steps: "LifeCycleNextStepsString",
    #       target_close_date: "Date",
    #       review_status: "Pending Submission", # accepts Pending Submission, Submitted, In review, Approved, Rejected, Action Required
    #       review_comments: "String",
    #       review_status_reason: "String",
    #       next_steps_history: [
    #         {
    #           value: "String", # required
    #           time: Time.now, # required
    #         },
    #       ],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.last_modified_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/UpdateOpportunity AWS API Documentation
    #
    # @overload update_opportunity(params = {})
    # @param [Hash] params ({})
    def update_opportunity(params = {}, options = {})
      req = build_request(:update_opportunity, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::PartnerCentralSelling')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-partnercentralselling'
      context[:gem_version] = '1.20.0'
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
