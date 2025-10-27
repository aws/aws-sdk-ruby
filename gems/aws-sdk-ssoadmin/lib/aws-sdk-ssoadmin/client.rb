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

module Aws::SSOAdmin
  # An API client for SSOAdmin.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::SSOAdmin::Client.new(
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

    @identifier = :ssoadmin

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
    add_plugin(Aws::SSOAdmin::Plugins::Endpoints)

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
    #   @option options [Aws::SSOAdmin::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::SSOAdmin::EndpointParameters`.
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

    # Attaches the specified customer managed policy to the specified
    # PermissionSet.
    #
    # @option params [required, String] :instance_arn
    #   The ARN of the IAM Identity Center instance under which the operation
    #   will be executed.
    #
    # @option params [required, String] :permission_set_arn
    #   The ARN of the `PermissionSet`.
    #
    # @option params [required, Types::CustomerManagedPolicyReference] :customer_managed_policy_reference
    #   Specifies the name and path of a customer managed policy. You must
    #   have an IAM policy that matches the name and path in each Amazon Web
    #   Services account where you want to deploy your permission set.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.attach_customer_managed_policy_reference_to_permission_set({
    #     instance_arn: "InstanceArn", # required
    #     permission_set_arn: "PermissionSetArn", # required
    #     customer_managed_policy_reference: { # required
    #       name: "ManagedPolicyName", # required
    #       path: "ManagedPolicyPath",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/AttachCustomerManagedPolicyReferenceToPermissionSet AWS API Documentation
    #
    # @overload attach_customer_managed_policy_reference_to_permission_set(params = {})
    # @param [Hash] params ({})
    def attach_customer_managed_policy_reference_to_permission_set(params = {}, options = {})
      req = build_request(:attach_customer_managed_policy_reference_to_permission_set, params)
      req.send_request(options)
    end

    # Attaches an Amazon Web Services managed policy ARN to a permission
    # set.
    #
    # <note markdown="1"> If the permission set is already referenced by one or more account
    # assignments, you will need to call ` ProvisionPermissionSet ` after
    # this operation. Calling `ProvisionPermissionSet` applies the
    # corresponding IAM policy updates to all assigned accounts.
    #
    #  </note>
    #
    # @option params [required, String] :instance_arn
    #   The ARN of the IAM Identity Center instance under which the operation
    #   will be executed. For more information about ARNs, see [Amazon
    #   Resource Names (ARNs) and Amazon Web Services Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *Amazon Web Services General Reference*.
    #
    # @option params [required, String] :permission_set_arn
    #   The ARN of the PermissionSet that the managed policy should be
    #   attached to.
    #
    # @option params [required, String] :managed_policy_arn
    #   The Amazon Web Services managed policy ARN to be attached to a
    #   permission set.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.attach_managed_policy_to_permission_set({
    #     instance_arn: "InstanceArn", # required
    #     permission_set_arn: "PermissionSetArn", # required
    #     managed_policy_arn: "ManagedPolicyArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/AttachManagedPolicyToPermissionSet AWS API Documentation
    #
    # @overload attach_managed_policy_to_permission_set(params = {})
    # @param [Hash] params ({})
    def attach_managed_policy_to_permission_set(params = {}, options = {})
      req = build_request(:attach_managed_policy_to_permission_set, params)
      req.send_request(options)
    end

    # Assigns access to a principal for a specified Amazon Web Services
    # account using a specified permission set.
    #
    # <note markdown="1"> The term *principal* here refers to a user or group that is defined in
    # IAM Identity Center.
    #
    #  </note>
    #
    # <note markdown="1"> As part of a successful `CreateAccountAssignment` call, the specified
    # permission set will automatically be provisioned to the account in the
    # form of an IAM policy. That policy is attached to the IAM role created
    # in IAM Identity Center. If the permission set is subsequently updated,
    # the corresponding IAM policies attached to roles in your accounts will
    # not be updated automatically. In this case, you must call `
    # ProvisionPermissionSet ` to make these updates.
    #
    #  </note>
    #
    # <note markdown="1"> After a successful response, call
    # `DescribeAccountAssignmentCreationStatus` to describe the status of an
    # assignment creation request.
    #
    #  </note>
    #
    # @option params [required, String] :instance_arn
    #   The ARN of the IAM Identity Center instance under which the operation
    #   will be executed. For more information about ARNs, see [Amazon
    #   Resource Names (ARNs) and Amazon Web Services Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *Amazon Web Services General Reference*.
    #
    # @option params [required, String] :target_id
    #   TargetID is an Amazon Web Services account identifier, (For example,
    #   123456789012).
    #
    # @option params [required, String] :target_type
    #   The entity type for which the assignment will be created.
    #
    # @option params [required, String] :permission_set_arn
    #   The ARN of the permission set that the admin wants to grant the
    #   principal access to.
    #
    # @option params [required, String] :principal_type
    #   The entity type for which the assignment will be created.
    #
    # @option params [required, String] :principal_id
    #   An identifier for an object in IAM Identity Center, such as a user or
    #   group. PrincipalIds are GUIDs (For example,
    #   f81d4fae-7dec-11d0-a765-00a0c91e6bf6). For more information about
    #   PrincipalIds in IAM Identity Center, see the [IAM Identity Center
    #   Identity Store API
    #   Reference](/singlesignon/latest/IdentityStoreAPIReference/welcome.html).
    #
    # @return [Types::CreateAccountAssignmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAccountAssignmentResponse#account_assignment_creation_status #account_assignment_creation_status} => Types::AccountAssignmentOperationStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_account_assignment({
    #     instance_arn: "InstanceArn", # required
    #     target_id: "TargetId", # required
    #     target_type: "AWS_ACCOUNT", # required, accepts AWS_ACCOUNT
    #     permission_set_arn: "PermissionSetArn", # required
    #     principal_type: "USER", # required, accepts USER, GROUP
    #     principal_id: "PrincipalId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.account_assignment_creation_status.status #=> String, one of "IN_PROGRESS", "FAILED", "SUCCEEDED"
    #   resp.account_assignment_creation_status.request_id #=> String
    #   resp.account_assignment_creation_status.failure_reason #=> String
    #   resp.account_assignment_creation_status.target_id #=> String
    #   resp.account_assignment_creation_status.target_type #=> String, one of "AWS_ACCOUNT"
    #   resp.account_assignment_creation_status.permission_set_arn #=> String
    #   resp.account_assignment_creation_status.principal_type #=> String, one of "USER", "GROUP"
    #   resp.account_assignment_creation_status.principal_id #=> String
    #   resp.account_assignment_creation_status.created_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/CreateAccountAssignment AWS API Documentation
    #
    # @overload create_account_assignment(params = {})
    # @param [Hash] params ({})
    def create_account_assignment(params = {}, options = {})
      req = build_request(:create_account_assignment, params)
      req.send_request(options)
    end

    # Creates an OAuth 2.0 customer managed application in IAM Identity
    # Center for the given application provider.
    #
    # <note markdown="1"> This API does not support creating SAML 2.0 customer managed
    # applications or Amazon Web Services managed applications. To learn how
    # to create an Amazon Web Services managed application, see the
    # application user guide. You can create a SAML 2.0 customer managed
    # application in the Amazon Web Services Management Console only. See
    # [Setting up customer managed SAML 2.0 applications][1]. For more
    # information on these application types, see [Amazon Web Services
    # managed applications][2].
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/singlesignon/latest/userguide/customermanagedapps-saml2-setup.html
    # [2]: https://docs.aws.amazon.com/singlesignon/latest/userguide/awsapps.html
    #
    # @option params [required, String] :instance_arn
    #   The ARN of the instance of IAM Identity Center under which the
    #   operation will run. For more information about ARNs, see [Amazon
    #   Resource Names (ARNs) and Amazon Web Services Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *Amazon Web Services General Reference*.
    #
    # @option params [required, String] :application_provider_arn
    #   The ARN of the application provider under which the operation will
    #   run.
    #
    # @option params [required, String] :name
    #   The name of the .
    #
    # @option params [String] :description
    #   The description of the .
    #
    # @option params [Types::PortalOptions] :portal_options
    #   A structure that describes the options for the portal associated with
    #   an application.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Specifies tags to be attached to the application.
    #
    # @option params [String] :status
    #   Specifies whether the application is enabled or disabled.
    #
    # @option params [String] :client_token
    #   Specifies a unique, case-sensitive ID that you provide to ensure the
    #   idempotency of the request. This lets you safely retry the request
    #   without accidentally performing the same operation a second time.
    #   Passing the same value to a later call to an operation requires that
    #   you also pass the same value for all other parameters. We recommend
    #   that you use a [UUID type of value][1].
    #
    #   If you don't provide this value, then Amazon Web Services generates a
    #   random one for you.
    #
    #   If you retry the operation with the same `ClientToken`, but with
    #   different parameters, the retry fails with an
    #   `IdempotentParameterMismatch` error.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://wikipedia.org/wiki/Universally_unique_identifier
    #
    # @return [Types::CreateApplicationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateApplicationResponse#application_arn #application_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_application({
    #     instance_arn: "InstanceArn", # required
    #     application_provider_arn: "ApplicationProviderArn", # required
    #     name: "ApplicationNameType", # required
    #     description: "Description",
    #     portal_options: {
    #       sign_in_options: {
    #         origin: "IDENTITY_CENTER", # required, accepts IDENTITY_CENTER, APPLICATION
    #         application_url: "ApplicationUrl",
    #       },
    #       visibility: "ENABLED", # accepts ENABLED, DISABLED
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     status: "ENABLED", # accepts ENABLED, DISABLED
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.application_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/CreateApplication AWS API Documentation
    #
    # @overload create_application(params = {})
    # @param [Hash] params ({})
    def create_application(params = {}, options = {})
      req = build_request(:create_application, params)
      req.send_request(options)
    end

    # Grant application access to a user or group.
    #
    # @option params [required, String] :application_arn
    #   The ARN of the application for which the assignment is created.
    #
    # @option params [required, String] :principal_id
    #   An identifier for an object in IAM Identity Center, such as a user or
    #   group. PrincipalIds are GUIDs (For example,
    #   f81d4fae-7dec-11d0-a765-00a0c91e6bf6). For more information about
    #   PrincipalIds in IAM Identity Center, see the [IAM Identity Center
    #   Identity Store API Reference][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/welcome.html
    #
    # @option params [required, String] :principal_type
    #   The entity type for which the assignment will be created.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_application_assignment({
    #     application_arn: "ApplicationArn", # required
    #     principal_id: "PrincipalId", # required
    #     principal_type: "USER", # required, accepts USER, GROUP
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/CreateApplicationAssignment AWS API Documentation
    #
    # @overload create_application_assignment(params = {})
    # @param [Hash] params ({})
    def create_application_assignment(params = {}, options = {})
      req = build_request(:create_application_assignment, params)
      req.send_request(options)
    end

    # Creates an instance of IAM Identity Center for a standalone Amazon Web
    # Services account that is not managed by Organizations or a member
    # Amazon Web Services account in an organization. You can create only
    # one instance per account and across all Amazon Web Services Regions.
    #
    # The CreateInstance request is rejected if the following apply:
    #
    # * The instance is created within the organization management account.
    #
    # * An instance already exists in the same account.
    #
    # @option params [String] :name
    #   The name of the instance of IAM Identity Center.
    #
    # @option params [String] :client_token
    #   Specifies a unique, case-sensitive ID that you provide to ensure the
    #   idempotency of the request. This lets you safely retry the request
    #   without accidentally performing the same operation a second time.
    #   Passing the same value to a later call to an operation requires that
    #   you also pass the same value for all other parameters. We recommend
    #   that you use a [UUID type of value][1].
    #
    #   If you don't provide this value, then Amazon Web Services generates a
    #   random one for you.
    #
    #   If you retry the operation with the same `ClientToken`, but with
    #   different parameters, the retry fails with an
    #   `IdempotentParameterMismatch` error.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://wikipedia.org/wiki/Universally_unique_identifier
    #
    # @option params [Array<Types::Tag>] :tags
    #   Specifies tags to be attached to the instance of IAM Identity Center.
    #
    # @return [Types::CreateInstanceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateInstanceResponse#instance_arn #instance_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_instance({
    #     name: "NameType",
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
    #   resp.instance_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/CreateInstance AWS API Documentation
    #
    # @overload create_instance(params = {})
    # @param [Hash] params ({})
    def create_instance(params = {}, options = {})
      req = build_request(:create_instance, params)
      req.send_request(options)
    end

    # Enables the attributes-based access control (ABAC) feature for the
    # specified IAM Identity Center instance. You can also specify new
    # attributes to add to your ABAC configuration during the enabling
    # process. For more information about ABAC, see [Attribute-Based Access
    # Control](/singlesignon/latest/userguide/abac.html) in the *IAM
    # Identity Center User Guide*.
    #
    # <note markdown="1"> After a successful response, call
    # `DescribeInstanceAccessControlAttributeConfiguration` to validate that
    # `InstanceAccessControlAttributeConfiguration` was created.
    #
    #  </note>
    #
    # @option params [required, String] :instance_arn
    #   The ARN of the IAM Identity Center instance under which the operation
    #   will be executed.
    #
    # @option params [required, Types::InstanceAccessControlAttributeConfiguration] :instance_access_control_attribute_configuration
    #   Specifies the IAM Identity Center identity store attributes to add to
    #   your ABAC configuration. When using an external identity provider as
    #   an identity source, you can pass attributes through the SAML
    #   assertion. Doing so provides an alternative to configuring attributes
    #   from the IAM Identity Center identity store. If a SAML assertion
    #   passes any of these attributes, IAM Identity Center will replace the
    #   attribute value with the value from the IAM Identity Center identity
    #   store.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_instance_access_control_attribute_configuration({
    #     instance_arn: "InstanceArn", # required
    #     instance_access_control_attribute_configuration: { # required
    #       access_control_attributes: [ # required
    #         {
    #           key: "AccessControlAttributeKey", # required
    #           value: { # required
    #             source: ["AccessControlAttributeValueSource"], # required
    #           },
    #         },
    #       ],
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/CreateInstanceAccessControlAttributeConfiguration AWS API Documentation
    #
    # @overload create_instance_access_control_attribute_configuration(params = {})
    # @param [Hash] params ({})
    def create_instance_access_control_attribute_configuration(params = {}, options = {})
      req = build_request(:create_instance_access_control_attribute_configuration, params)
      req.send_request(options)
    end

    # Creates a permission set within a specified IAM Identity Center
    # instance.
    #
    # <note markdown="1"> To grant users and groups access to Amazon Web Services account
    # resources, use ` CreateAccountAssignment `.
    #
    #  </note>
    #
    # @option params [required, String] :name
    #   The name of the PermissionSet.
    #
    # @option params [String] :description
    #   The description of the PermissionSet.
    #
    # @option params [required, String] :instance_arn
    #   The ARN of the IAM Identity Center instance under which the operation
    #   will be executed. For more information about ARNs, see [Amazon
    #   Resource Names (ARNs) and Amazon Web Services Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *Amazon Web Services General Reference*.
    #
    # @option params [String] :session_duration
    #   The length of time that the application user sessions are valid in the
    #   ISO-8601 standard.
    #
    # @option params [String] :relay_state
    #   Used to redirect users within the application during the federation
    #   authentication process.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags to attach to the new PermissionSet.
    #
    # @return [Types::CreatePermissionSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePermissionSetResponse#permission_set #permission_set} => Types::PermissionSet
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_permission_set({
    #     name: "PermissionSetName", # required
    #     description: "PermissionSetDescription",
    #     instance_arn: "InstanceArn", # required
    #     session_duration: "Duration",
    #     relay_state: "RelayState",
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
    #   resp.permission_set.name #=> String
    #   resp.permission_set.permission_set_arn #=> String
    #   resp.permission_set.description #=> String
    #   resp.permission_set.created_date #=> Time
    #   resp.permission_set.session_duration #=> String
    #   resp.permission_set.relay_state #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/CreatePermissionSet AWS API Documentation
    #
    # @overload create_permission_set(params = {})
    # @param [Hash] params ({})
    def create_permission_set(params = {}, options = {})
      req = build_request(:create_permission_set, params)
      req.send_request(options)
    end

    # Creates a connection to a trusted token issuer in an instance of IAM
    # Identity Center. A trusted token issuer enables trusted identity
    # propagation to be used with applications that authenticate outside of
    # Amazon Web Services.
    #
    # This trusted token issuer describes an external identity provider
    # (IdP) that can generate claims or assertions in the form of access
    # tokens for a user. Applications enabled for IAM Identity Center can
    # use these tokens for authentication.
    #
    # @option params [required, String] :instance_arn
    #   Specifies the ARN of the instance of IAM Identity Center to contain
    #   the new trusted token issuer configuration.
    #
    # @option params [required, String] :name
    #   Specifies the name of the new trusted token issuer configuration.
    #
    # @option params [required, String] :trusted_token_issuer_type
    #   Specifies the type of the new trusted token issuer.
    #
    # @option params [required, Types::TrustedTokenIssuerConfiguration] :trusted_token_issuer_configuration
    #   Specifies settings that apply to the new trusted token issuer
    #   configuration. The settings that are available depend on what
    #   `TrustedTokenIssuerType` you specify.
    #
    # @option params [String] :client_token
    #   Specifies a unique, case-sensitive ID that you provide to ensure the
    #   idempotency of the request. This lets you safely retry the request
    #   without accidentally performing the same operation a second time.
    #   Passing the same value to a later call to an operation requires that
    #   you also pass the same value for all other parameters. We recommend
    #   that you use a [UUID type of value.][1].
    #
    #   If you don't provide this value, then Amazon Web Services generates a
    #   random one for you.
    #
    #   If you retry the operation with the same `ClientToken`, but with
    #   different parameters, the retry fails with an
    #   `IdempotentParameterMismatch` error.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://wikipedia.org/wiki/Universally_unique_identifier
    #
    # @option params [Array<Types::Tag>] :tags
    #   Specifies tags to be attached to the new trusted token issuer
    #   configuration.
    #
    # @return [Types::CreateTrustedTokenIssuerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateTrustedTokenIssuerResponse#trusted_token_issuer_arn #trusted_token_issuer_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_trusted_token_issuer({
    #     instance_arn: "InstanceArn", # required
    #     name: "TrustedTokenIssuerName", # required
    #     trusted_token_issuer_type: "OIDC_JWT", # required, accepts OIDC_JWT
    #     trusted_token_issuer_configuration: { # required
    #       oidc_jwt_configuration: {
    #         issuer_url: "TrustedTokenIssuerUrl", # required
    #         claim_attribute_path: "ClaimAttributePath", # required
    #         identity_store_attribute_path: "JMESPath", # required
    #         jwks_retrieval_option: "OPEN_ID_DISCOVERY", # required, accepts OPEN_ID_DISCOVERY
    #       },
    #     },
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
    #   resp.trusted_token_issuer_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/CreateTrustedTokenIssuer AWS API Documentation
    #
    # @overload create_trusted_token_issuer(params = {})
    # @param [Hash] params ({})
    def create_trusted_token_issuer(params = {}, options = {})
      req = build_request(:create_trusted_token_issuer, params)
      req.send_request(options)
    end

    # Deletes a principal's access from a specified Amazon Web Services
    # account using a specified permission set.
    #
    # <note markdown="1"> After a successful response, call
    # `DescribeAccountAssignmentDeletionStatus` to describe the status of an
    # assignment deletion request.
    #
    #  </note>
    #
    # @option params [required, String] :instance_arn
    #   The ARN of the IAM Identity Center instance under which the operation
    #   will be executed. For more information about ARNs, see [Amazon
    #   Resource Names (ARNs) and Amazon Web Services Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *Amazon Web Services General Reference*.
    #
    # @option params [required, String] :target_id
    #   TargetID is an Amazon Web Services account identifier, (For example,
    #   123456789012).
    #
    # @option params [required, String] :target_type
    #   The entity type for which the assignment will be deleted.
    #
    # @option params [required, String] :permission_set_arn
    #   The ARN of the permission set that will be used to remove access.
    #
    # @option params [required, String] :principal_type
    #   The entity type for which the assignment will be deleted.
    #
    # @option params [required, String] :principal_id
    #   An identifier for an object in IAM Identity Center, such as a user or
    #   group. PrincipalIds are GUIDs (For example,
    #   f81d4fae-7dec-11d0-a765-00a0c91e6bf6). For more information about
    #   PrincipalIds in IAM Identity Center, see the [IAM Identity Center
    #   Identity Store API
    #   Reference](/singlesignon/latest/IdentityStoreAPIReference/welcome.html).
    #
    # @return [Types::DeleteAccountAssignmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteAccountAssignmentResponse#account_assignment_deletion_status #account_assignment_deletion_status} => Types::AccountAssignmentOperationStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_account_assignment({
    #     instance_arn: "InstanceArn", # required
    #     target_id: "TargetId", # required
    #     target_type: "AWS_ACCOUNT", # required, accepts AWS_ACCOUNT
    #     permission_set_arn: "PermissionSetArn", # required
    #     principal_type: "USER", # required, accepts USER, GROUP
    #     principal_id: "PrincipalId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.account_assignment_deletion_status.status #=> String, one of "IN_PROGRESS", "FAILED", "SUCCEEDED"
    #   resp.account_assignment_deletion_status.request_id #=> String
    #   resp.account_assignment_deletion_status.failure_reason #=> String
    #   resp.account_assignment_deletion_status.target_id #=> String
    #   resp.account_assignment_deletion_status.target_type #=> String, one of "AWS_ACCOUNT"
    #   resp.account_assignment_deletion_status.permission_set_arn #=> String
    #   resp.account_assignment_deletion_status.principal_type #=> String, one of "USER", "GROUP"
    #   resp.account_assignment_deletion_status.principal_id #=> String
    #   resp.account_assignment_deletion_status.created_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/DeleteAccountAssignment AWS API Documentation
    #
    # @overload delete_account_assignment(params = {})
    # @param [Hash] params ({})
    def delete_account_assignment(params = {}, options = {})
      req = build_request(:delete_account_assignment, params)
      req.send_request(options)
    end

    # Deletes the association with the application. The connected service
    # resource still exists.
    #
    # @option params [required, String] :application_arn
    #   Specifies the ARN of the application. For more information about ARNs,
    #   see [Amazon Resource Names (ARNs) and Amazon Web Services Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *Amazon Web Services General Reference*.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_application({
    #     application_arn: "ApplicationArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/DeleteApplication AWS API Documentation
    #
    # @overload delete_application(params = {})
    # @param [Hash] params ({})
    def delete_application(params = {}, options = {})
      req = build_request(:delete_application, params)
      req.send_request(options)
    end

    # Deletes an IAM Identity Center access scope from an application.
    #
    # @option params [required, String] :application_arn
    #   Specifies the ARN of the application with the access scope to delete.
    #
    # @option params [required, String] :scope
    #   Specifies the name of the access scope to remove from the application.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_application_access_scope({
    #     application_arn: "ApplicationArn", # required
    #     scope: "Scope", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/DeleteApplicationAccessScope AWS API Documentation
    #
    # @overload delete_application_access_scope(params = {})
    # @param [Hash] params ({})
    def delete_application_access_scope(params = {}, options = {})
      req = build_request(:delete_application_access_scope, params)
      req.send_request(options)
    end

    # Revoke application access to an application by deleting application
    # assignments for a user or group.
    #
    # @option params [required, String] :application_arn
    #   Specifies the ARN of the application.
    #
    # @option params [required, String] :principal_id
    #   An identifier for an object in IAM Identity Center, such as a user or
    #   group. PrincipalIds are GUIDs (For example,
    #   f81d4fae-7dec-11d0-a765-00a0c91e6bf6). For more information about
    #   PrincipalIds in IAM Identity Center, see the [IAM Identity Center
    #   Identity Store API Reference][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/welcome.html
    #
    # @option params [required, String] :principal_type
    #   The entity type for which the assignment will be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_application_assignment({
    #     application_arn: "ApplicationArn", # required
    #     principal_id: "PrincipalId", # required
    #     principal_type: "USER", # required, accepts USER, GROUP
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/DeleteApplicationAssignment AWS API Documentation
    #
    # @overload delete_application_assignment(params = {})
    # @param [Hash] params ({})
    def delete_application_assignment(params = {}, options = {})
      req = build_request(:delete_application_assignment, params)
      req.send_request(options)
    end

    # Deletes an authentication method from an application.
    #
    # @option params [required, String] :application_arn
    #   Specifies the ARN of the application with the authentication method to
    #   delete.
    #
    # @option params [required, String] :authentication_method_type
    #   Specifies the authentication method type to delete from the
    #   application.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_application_authentication_method({
    #     application_arn: "ApplicationArn", # required
    #     authentication_method_type: "IAM", # required, accepts IAM
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/DeleteApplicationAuthenticationMethod AWS API Documentation
    #
    # @overload delete_application_authentication_method(params = {})
    # @param [Hash] params ({})
    def delete_application_authentication_method(params = {}, options = {})
      req = build_request(:delete_application_authentication_method, params)
      req.send_request(options)
    end

    # Deletes a grant from an application.
    #
    # @option params [required, String] :application_arn
    #   Specifies the ARN of the application with the grant to delete.
    #
    # @option params [required, String] :grant_type
    #   Specifies the type of grant to delete from the application.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_application_grant({
    #     application_arn: "ApplicationArn", # required
    #     grant_type: "authorization_code", # required, accepts authorization_code, refresh_token, urn:ietf:params:oauth:grant-type:jwt-bearer, urn:ietf:params:oauth:grant-type:token-exchange
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/DeleteApplicationGrant AWS API Documentation
    #
    # @overload delete_application_grant(params = {})
    # @param [Hash] params ({})
    def delete_application_grant(params = {}, options = {})
      req = build_request(:delete_application_grant, params)
      req.send_request(options)
    end

    # Deletes the inline policy from a specified permission set.
    #
    # @option params [required, String] :instance_arn
    #   The ARN of the IAM Identity Center instance under which the operation
    #   will be executed. For more information about ARNs, see [Amazon
    #   Resource Names (ARNs) and Amazon Web Services Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *Amazon Web Services General Reference*.
    #
    # @option params [required, String] :permission_set_arn
    #   The ARN of the permission set that will be used to remove access.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_inline_policy_from_permission_set({
    #     instance_arn: "InstanceArn", # required
    #     permission_set_arn: "PermissionSetArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/DeleteInlinePolicyFromPermissionSet AWS API Documentation
    #
    # @overload delete_inline_policy_from_permission_set(params = {})
    # @param [Hash] params ({})
    def delete_inline_policy_from_permission_set(params = {}, options = {})
      req = build_request(:delete_inline_policy_from_permission_set, params)
      req.send_request(options)
    end

    # Deletes the instance of IAM Identity Center. Only the account that
    # owns the instance can call this API. Neither the delegated
    # administrator nor member account can delete the organization instance,
    # but those roles can delete their own instance.
    #
    # @option params [required, String] :instance_arn
    #   The ARN of the instance of IAM Identity Center under which the
    #   operation will run.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_instance({
    #     instance_arn: "InstanceArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/DeleteInstance AWS API Documentation
    #
    # @overload delete_instance(params = {})
    # @param [Hash] params ({})
    def delete_instance(params = {}, options = {})
      req = build_request(:delete_instance, params)
      req.send_request(options)
    end

    # Disables the attributes-based access control (ABAC) feature for the
    # specified IAM Identity Center instance and deletes all of the
    # attribute mappings that have been configured. Once deleted, any
    # attributes that are received from an identity source and any custom
    # attributes you have previously configured will not be passed. For more
    # information about ABAC, see [Attribute-Based Access
    # Control](/singlesignon/latest/userguide/abac.html) in the *IAM
    # Identity Center User Guide*.
    #
    # @option params [required, String] :instance_arn
    #   The ARN of the IAM Identity Center instance under which the operation
    #   will be executed.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_instance_access_control_attribute_configuration({
    #     instance_arn: "InstanceArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/DeleteInstanceAccessControlAttributeConfiguration AWS API Documentation
    #
    # @overload delete_instance_access_control_attribute_configuration(params = {})
    # @param [Hash] params ({})
    def delete_instance_access_control_attribute_configuration(params = {}, options = {})
      req = build_request(:delete_instance_access_control_attribute_configuration, params)
      req.send_request(options)
    end

    # Deletes the specified permission set.
    #
    # @option params [required, String] :instance_arn
    #   The ARN of the IAM Identity Center instance under which the operation
    #   will be executed. For more information about ARNs, see [Amazon
    #   Resource Names (ARNs) and Amazon Web Services Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *Amazon Web Services General Reference*.
    #
    # @option params [required, String] :permission_set_arn
    #   The ARN of the permission set that should be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_permission_set({
    #     instance_arn: "InstanceArn", # required
    #     permission_set_arn: "PermissionSetArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/DeletePermissionSet AWS API Documentation
    #
    # @overload delete_permission_set(params = {})
    # @param [Hash] params ({})
    def delete_permission_set(params = {}, options = {})
      req = build_request(:delete_permission_set, params)
      req.send_request(options)
    end

    # Deletes the permissions boundary from a specified PermissionSet.
    #
    # @option params [required, String] :instance_arn
    #   The ARN of the IAM Identity Center instance under which the operation
    #   will be executed.
    #
    # @option params [required, String] :permission_set_arn
    #   The ARN of the `PermissionSet`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_permissions_boundary_from_permission_set({
    #     instance_arn: "InstanceArn", # required
    #     permission_set_arn: "PermissionSetArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/DeletePermissionsBoundaryFromPermissionSet AWS API Documentation
    #
    # @overload delete_permissions_boundary_from_permission_set(params = {})
    # @param [Hash] params ({})
    def delete_permissions_boundary_from_permission_set(params = {}, options = {})
      req = build_request(:delete_permissions_boundary_from_permission_set, params)
      req.send_request(options)
    end

    # Deletes a trusted token issuer configuration from an instance of IAM
    # Identity Center.
    #
    # <note markdown="1"> Deleting this trusted token issuer configuration will cause users to
    # lose access to any applications that are configured to use the trusted
    # token issuer.
    #
    #  </note>
    #
    # @option params [required, String] :trusted_token_issuer_arn
    #   Specifies the ARN of the trusted token issuer configuration to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_trusted_token_issuer({
    #     trusted_token_issuer_arn: "TrustedTokenIssuerArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/DeleteTrustedTokenIssuer AWS API Documentation
    #
    # @overload delete_trusted_token_issuer(params = {})
    # @param [Hash] params ({})
    def delete_trusted_token_issuer(params = {}, options = {})
      req = build_request(:delete_trusted_token_issuer, params)
      req.send_request(options)
    end

    # Describes the status of the assignment creation request.
    #
    # @option params [required, String] :instance_arn
    #   The ARN of the IAM Identity Center instance under which the operation
    #   will be executed. For more information about ARNs, see [Amazon
    #   Resource Names (ARNs) and Amazon Web Services Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *Amazon Web Services General Reference*.
    #
    # @option params [required, String] :account_assignment_creation_request_id
    #   The identifier that is used to track the request operation progress.
    #
    # @return [Types::DescribeAccountAssignmentCreationStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAccountAssignmentCreationStatusResponse#account_assignment_creation_status #account_assignment_creation_status} => Types::AccountAssignmentOperationStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_account_assignment_creation_status({
    #     instance_arn: "InstanceArn", # required
    #     account_assignment_creation_request_id: "UUId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.account_assignment_creation_status.status #=> String, one of "IN_PROGRESS", "FAILED", "SUCCEEDED"
    #   resp.account_assignment_creation_status.request_id #=> String
    #   resp.account_assignment_creation_status.failure_reason #=> String
    #   resp.account_assignment_creation_status.target_id #=> String
    #   resp.account_assignment_creation_status.target_type #=> String, one of "AWS_ACCOUNT"
    #   resp.account_assignment_creation_status.permission_set_arn #=> String
    #   resp.account_assignment_creation_status.principal_type #=> String, one of "USER", "GROUP"
    #   resp.account_assignment_creation_status.principal_id #=> String
    #   resp.account_assignment_creation_status.created_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/DescribeAccountAssignmentCreationStatus AWS API Documentation
    #
    # @overload describe_account_assignment_creation_status(params = {})
    # @param [Hash] params ({})
    def describe_account_assignment_creation_status(params = {}, options = {})
      req = build_request(:describe_account_assignment_creation_status, params)
      req.send_request(options)
    end

    # Describes the status of the assignment deletion request.
    #
    # @option params [required, String] :instance_arn
    #   The ARN of the IAM Identity Center instance under which the operation
    #   will be executed. For more information about ARNs, see [Amazon
    #   Resource Names (ARNs) and Amazon Web Services Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *Amazon Web Services General Reference*.
    #
    # @option params [required, String] :account_assignment_deletion_request_id
    #   The identifier that is used to track the request operation progress.
    #
    # @return [Types::DescribeAccountAssignmentDeletionStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAccountAssignmentDeletionStatusResponse#account_assignment_deletion_status #account_assignment_deletion_status} => Types::AccountAssignmentOperationStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_account_assignment_deletion_status({
    #     instance_arn: "InstanceArn", # required
    #     account_assignment_deletion_request_id: "UUId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.account_assignment_deletion_status.status #=> String, one of "IN_PROGRESS", "FAILED", "SUCCEEDED"
    #   resp.account_assignment_deletion_status.request_id #=> String
    #   resp.account_assignment_deletion_status.failure_reason #=> String
    #   resp.account_assignment_deletion_status.target_id #=> String
    #   resp.account_assignment_deletion_status.target_type #=> String, one of "AWS_ACCOUNT"
    #   resp.account_assignment_deletion_status.permission_set_arn #=> String
    #   resp.account_assignment_deletion_status.principal_type #=> String, one of "USER", "GROUP"
    #   resp.account_assignment_deletion_status.principal_id #=> String
    #   resp.account_assignment_deletion_status.created_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/DescribeAccountAssignmentDeletionStatus AWS API Documentation
    #
    # @overload describe_account_assignment_deletion_status(params = {})
    # @param [Hash] params ({})
    def describe_account_assignment_deletion_status(params = {}, options = {})
      req = build_request(:describe_account_assignment_deletion_status, params)
      req.send_request(options)
    end

    # Retrieves the details of an application associated with an instance of
    # IAM Identity Center.
    #
    # @option params [required, String] :application_arn
    #   Specifies the ARN of the application. For more information about ARNs,
    #   see [Amazon Resource Names (ARNs) and Amazon Web Services Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *Amazon Web Services General Reference*.
    #
    # @return [Types::DescribeApplicationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeApplicationResponse#application_arn #application_arn} => String
    #   * {Types::DescribeApplicationResponse#application_provider_arn #application_provider_arn} => String
    #   * {Types::DescribeApplicationResponse#name #name} => String
    #   * {Types::DescribeApplicationResponse#application_account #application_account} => String
    #   * {Types::DescribeApplicationResponse#instance_arn #instance_arn} => String
    #   * {Types::DescribeApplicationResponse#status #status} => String
    #   * {Types::DescribeApplicationResponse#portal_options #portal_options} => Types::PortalOptions
    #   * {Types::DescribeApplicationResponse#description #description} => String
    #   * {Types::DescribeApplicationResponse#created_date #created_date} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_application({
    #     application_arn: "ApplicationArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.application_arn #=> String
    #   resp.application_provider_arn #=> String
    #   resp.name #=> String
    #   resp.application_account #=> String
    #   resp.instance_arn #=> String
    #   resp.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.portal_options.sign_in_options.origin #=> String, one of "IDENTITY_CENTER", "APPLICATION"
    #   resp.portal_options.sign_in_options.application_url #=> String
    #   resp.portal_options.visibility #=> String, one of "ENABLED", "DISABLED"
    #   resp.description #=> String
    #   resp.created_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/DescribeApplication AWS API Documentation
    #
    # @overload describe_application(params = {})
    # @param [Hash] params ({})
    def describe_application(params = {}, options = {})
      req = build_request(:describe_application, params)
      req.send_request(options)
    end

    # Retrieves a direct assignment of a user or group to an application. If
    # the user doesn’t have a direct assignment to the application, the user
    # may still have access to the application through a group. Therefore,
    # don’t use this API to test access to an application for a user.
    # Instead use ListApplicationAssignmentsForPrincipal.
    #
    # @option params [required, String] :application_arn
    #   Specifies the ARN of the application. For more information about ARNs,
    #   see [Amazon Resource Names (ARNs) and Amazon Web Services Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *Amazon Web Services General Reference*.
    #
    # @option params [required, String] :principal_id
    #   An identifier for an object in IAM Identity Center, such as a user or
    #   group. PrincipalIds are GUIDs (For example,
    #   f81d4fae-7dec-11d0-a765-00a0c91e6bf6). For more information about
    #   PrincipalIds in IAM Identity Center, see the [IAM Identity Center
    #   Identity Store API Reference][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/welcome.html
    #
    # @option params [required, String] :principal_type
    #   The entity type for which the assignment will be created.
    #
    # @return [Types::DescribeApplicationAssignmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeApplicationAssignmentResponse#principal_type #principal_type} => String
    #   * {Types::DescribeApplicationAssignmentResponse#principal_id #principal_id} => String
    #   * {Types::DescribeApplicationAssignmentResponse#application_arn #application_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_application_assignment({
    #     application_arn: "ApplicationArn", # required
    #     principal_id: "PrincipalId", # required
    #     principal_type: "USER", # required, accepts USER, GROUP
    #   })
    #
    # @example Response structure
    #
    #   resp.principal_type #=> String, one of "USER", "GROUP"
    #   resp.principal_id #=> String
    #   resp.application_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/DescribeApplicationAssignment AWS API Documentation
    #
    # @overload describe_application_assignment(params = {})
    # @param [Hash] params ({})
    def describe_application_assignment(params = {}, options = {})
      req = build_request(:describe_application_assignment, params)
      req.send_request(options)
    end

    # Retrieves details about a provider that can be used to connect an
    # Amazon Web Services managed application or customer managed
    # application to IAM Identity Center.
    #
    # @option params [required, String] :application_provider_arn
    #   Specifies the ARN of the application provider for which you want
    #   details.
    #
    # @return [Types::DescribeApplicationProviderResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeApplicationProviderResponse#application_provider_arn #application_provider_arn} => String
    #   * {Types::DescribeApplicationProviderResponse#federation_protocol #federation_protocol} => String
    #   * {Types::DescribeApplicationProviderResponse#display_data #display_data} => Types::DisplayData
    #   * {Types::DescribeApplicationProviderResponse#resource_server_config #resource_server_config} => Types::ResourceServerConfig
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_application_provider({
    #     application_provider_arn: "ApplicationProviderArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.application_provider_arn #=> String
    #   resp.federation_protocol #=> String, one of "SAML", "OAUTH"
    #   resp.display_data.display_name #=> String
    #   resp.display_data.icon_url #=> String
    #   resp.display_data.description #=> String
    #   resp.resource_server_config.scopes #=> Hash
    #   resp.resource_server_config.scopes["ResourceServerScope"].long_description #=> String
    #   resp.resource_server_config.scopes["ResourceServerScope"].detailed_title #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/DescribeApplicationProvider AWS API Documentation
    #
    # @overload describe_application_provider(params = {})
    # @param [Hash] params ({})
    def describe_application_provider(params = {}, options = {})
      req = build_request(:describe_application_provider, params)
      req.send_request(options)
    end

    # Returns the details of an instance of IAM Identity Center. The status
    # can be one of the following:
    #
    # * `CREATE_IN_PROGRESS` - The instance is in the process of being
    #   created. When the instance is ready for use, DescribeInstance
    #   returns the status of `ACTIVE`. While the instance is in the
    #   `CREATE_IN_PROGRESS` state, you can call only DescribeInstance and
    #   DeleteInstance operations.
    #
    # * `DELETE_IN_PROGRESS` - The instance is being deleted. Returns
    #   `AccessDeniedException` after the delete operation completes.
    #
    # * `ACTIVE` - The instance is active.
    #
    # @option params [required, String] :instance_arn
    #   The ARN of the instance of IAM Identity Center under which the
    #   operation will run.
    #
    # @return [Types::DescribeInstanceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeInstanceResponse#instance_arn #instance_arn} => String
    #   * {Types::DescribeInstanceResponse#identity_store_id #identity_store_id} => String
    #   * {Types::DescribeInstanceResponse#owner_account_id #owner_account_id} => String
    #   * {Types::DescribeInstanceResponse#name #name} => String
    #   * {Types::DescribeInstanceResponse#created_date #created_date} => Time
    #   * {Types::DescribeInstanceResponse#status #status} => String
    #   * {Types::DescribeInstanceResponse#status_reason #status_reason} => String
    #   * {Types::DescribeInstanceResponse#encryption_configuration_details #encryption_configuration_details} => Types::EncryptionConfigurationDetails
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_instance({
    #     instance_arn: "InstanceArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.instance_arn #=> String
    #   resp.identity_store_id #=> String
    #   resp.owner_account_id #=> String
    #   resp.name #=> String
    #   resp.created_date #=> Time
    #   resp.status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_FAILED", "DELETE_IN_PROGRESS", "ACTIVE"
    #   resp.status_reason #=> String
    #   resp.encryption_configuration_details.key_type #=> String, one of "AWS_OWNED_KMS_KEY", "CUSTOMER_MANAGED_KEY"
    #   resp.encryption_configuration_details.kms_key_arn #=> String
    #   resp.encryption_configuration_details.encryption_status #=> String, one of "UPDATING", "ENABLED", "UPDATE_FAILED"
    #   resp.encryption_configuration_details.encryption_status_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/DescribeInstance AWS API Documentation
    #
    # @overload describe_instance(params = {})
    # @param [Hash] params ({})
    def describe_instance(params = {}, options = {})
      req = build_request(:describe_instance, params)
      req.send_request(options)
    end

    # Returns the list of IAM Identity Center identity store attributes that
    # have been configured to work with attributes-based access control
    # (ABAC) for the specified IAM Identity Center instance. This will not
    # return attributes configured and sent by an external identity
    # provider. For more information about ABAC, see [Attribute-Based Access
    # Control](/singlesignon/latest/userguide/abac.html) in the *IAM
    # Identity Center User Guide*.
    #
    # @option params [required, String] :instance_arn
    #   The ARN of the IAM Identity Center instance under which the operation
    #   will be executed.
    #
    # @return [Types::DescribeInstanceAccessControlAttributeConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeInstanceAccessControlAttributeConfigurationResponse#status #status} => String
    #   * {Types::DescribeInstanceAccessControlAttributeConfigurationResponse#status_reason #status_reason} => String
    #   * {Types::DescribeInstanceAccessControlAttributeConfigurationResponse#instance_access_control_attribute_configuration #instance_access_control_attribute_configuration} => Types::InstanceAccessControlAttributeConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_instance_access_control_attribute_configuration({
    #     instance_arn: "InstanceArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> String, one of "ENABLED", "CREATION_IN_PROGRESS", "CREATION_FAILED"
    #   resp.status_reason #=> String
    #   resp.instance_access_control_attribute_configuration.access_control_attributes #=> Array
    #   resp.instance_access_control_attribute_configuration.access_control_attributes[0].key #=> String
    #   resp.instance_access_control_attribute_configuration.access_control_attributes[0].value.source #=> Array
    #   resp.instance_access_control_attribute_configuration.access_control_attributes[0].value.source[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/DescribeInstanceAccessControlAttributeConfiguration AWS API Documentation
    #
    # @overload describe_instance_access_control_attribute_configuration(params = {})
    # @param [Hash] params ({})
    def describe_instance_access_control_attribute_configuration(params = {}, options = {})
      req = build_request(:describe_instance_access_control_attribute_configuration, params)
      req.send_request(options)
    end

    # Gets the details of the permission set.
    #
    # @option params [required, String] :instance_arn
    #   The ARN of the IAM Identity Center instance under which the operation
    #   will be executed. For more information about ARNs, see [Amazon
    #   Resource Names (ARNs) and Amazon Web Services Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *Amazon Web Services General Reference*.
    #
    # @option params [required, String] :permission_set_arn
    #   The ARN of the permission set.
    #
    # @return [Types::DescribePermissionSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribePermissionSetResponse#permission_set #permission_set} => Types::PermissionSet
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_permission_set({
    #     instance_arn: "InstanceArn", # required
    #     permission_set_arn: "PermissionSetArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.permission_set.name #=> String
    #   resp.permission_set.permission_set_arn #=> String
    #   resp.permission_set.description #=> String
    #   resp.permission_set.created_date #=> Time
    #   resp.permission_set.session_duration #=> String
    #   resp.permission_set.relay_state #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/DescribePermissionSet AWS API Documentation
    #
    # @overload describe_permission_set(params = {})
    # @param [Hash] params ({})
    def describe_permission_set(params = {}, options = {})
      req = build_request(:describe_permission_set, params)
      req.send_request(options)
    end

    # Describes the status for the given permission set provisioning
    # request.
    #
    # @option params [required, String] :instance_arn
    #   The ARN of the IAM Identity Center instance under which the operation
    #   will be executed. For more information about ARNs, see [Amazon
    #   Resource Names (ARNs) and Amazon Web Services Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *Amazon Web Services General Reference*.
    #
    # @option params [required, String] :provision_permission_set_request_id
    #   The identifier that is provided by the ProvisionPermissionSet call to
    #   retrieve the current status of the provisioning workflow.
    #
    # @return [Types::DescribePermissionSetProvisioningStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribePermissionSetProvisioningStatusResponse#permission_set_provisioning_status #permission_set_provisioning_status} => Types::PermissionSetProvisioningStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_permission_set_provisioning_status({
    #     instance_arn: "InstanceArn", # required
    #     provision_permission_set_request_id: "UUId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.permission_set_provisioning_status.status #=> String, one of "IN_PROGRESS", "FAILED", "SUCCEEDED"
    #   resp.permission_set_provisioning_status.request_id #=> String
    #   resp.permission_set_provisioning_status.account_id #=> String
    #   resp.permission_set_provisioning_status.permission_set_arn #=> String
    #   resp.permission_set_provisioning_status.failure_reason #=> String
    #   resp.permission_set_provisioning_status.created_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/DescribePermissionSetProvisioningStatus AWS API Documentation
    #
    # @overload describe_permission_set_provisioning_status(params = {})
    # @param [Hash] params ({})
    def describe_permission_set_provisioning_status(params = {}, options = {})
      req = build_request(:describe_permission_set_provisioning_status, params)
      req.send_request(options)
    end

    # Retrieves details about a trusted token issuer configuration stored in
    # an instance of IAM Identity Center. Details include the name of the
    # trusted token issuer, the issuer URL, and the path of the source
    # attribute and the destination attribute for a trusted token issuer
    # configuration.
    #
    # @option params [required, String] :trusted_token_issuer_arn
    #   Specifies the ARN of the trusted token issuer configuration that you
    #   want details about.
    #
    # @return [Types::DescribeTrustedTokenIssuerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTrustedTokenIssuerResponse#trusted_token_issuer_arn #trusted_token_issuer_arn} => String
    #   * {Types::DescribeTrustedTokenIssuerResponse#name #name} => String
    #   * {Types::DescribeTrustedTokenIssuerResponse#trusted_token_issuer_type #trusted_token_issuer_type} => String
    #   * {Types::DescribeTrustedTokenIssuerResponse#trusted_token_issuer_configuration #trusted_token_issuer_configuration} => Types::TrustedTokenIssuerConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_trusted_token_issuer({
    #     trusted_token_issuer_arn: "TrustedTokenIssuerArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.trusted_token_issuer_arn #=> String
    #   resp.name #=> String
    #   resp.trusted_token_issuer_type #=> String, one of "OIDC_JWT"
    #   resp.trusted_token_issuer_configuration.oidc_jwt_configuration.issuer_url #=> String
    #   resp.trusted_token_issuer_configuration.oidc_jwt_configuration.claim_attribute_path #=> String
    #   resp.trusted_token_issuer_configuration.oidc_jwt_configuration.identity_store_attribute_path #=> String
    #   resp.trusted_token_issuer_configuration.oidc_jwt_configuration.jwks_retrieval_option #=> String, one of "OPEN_ID_DISCOVERY"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/DescribeTrustedTokenIssuer AWS API Documentation
    #
    # @overload describe_trusted_token_issuer(params = {})
    # @param [Hash] params ({})
    def describe_trusted_token_issuer(params = {}, options = {})
      req = build_request(:describe_trusted_token_issuer, params)
      req.send_request(options)
    end

    # Detaches the specified customer managed policy from the specified
    # PermissionSet.
    #
    # @option params [required, String] :instance_arn
    #   The ARN of the IAM Identity Center instance under which the operation
    #   will be executed.
    #
    # @option params [required, String] :permission_set_arn
    #   The ARN of the `PermissionSet`.
    #
    # @option params [required, Types::CustomerManagedPolicyReference] :customer_managed_policy_reference
    #   Specifies the name and path of a customer managed policy. You must
    #   have an IAM policy that matches the name and path in each Amazon Web
    #   Services account where you want to deploy your permission set.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detach_customer_managed_policy_reference_from_permission_set({
    #     instance_arn: "InstanceArn", # required
    #     permission_set_arn: "PermissionSetArn", # required
    #     customer_managed_policy_reference: { # required
    #       name: "ManagedPolicyName", # required
    #       path: "ManagedPolicyPath",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/DetachCustomerManagedPolicyReferenceFromPermissionSet AWS API Documentation
    #
    # @overload detach_customer_managed_policy_reference_from_permission_set(params = {})
    # @param [Hash] params ({})
    def detach_customer_managed_policy_reference_from_permission_set(params = {}, options = {})
      req = build_request(:detach_customer_managed_policy_reference_from_permission_set, params)
      req.send_request(options)
    end

    # Detaches the attached Amazon Web Services managed policy ARN from the
    # specified permission set.
    #
    # @option params [required, String] :instance_arn
    #   The ARN of the IAM Identity Center instance under which the operation
    #   will be executed. For more information about ARNs, see [Amazon
    #   Resource Names (ARNs) and Amazon Web Services Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *Amazon Web Services General Reference*.
    #
    # @option params [required, String] :permission_set_arn
    #   The ARN of the PermissionSet from which the policy should be detached.
    #
    # @option params [required, String] :managed_policy_arn
    #   The Amazon Web Services managed policy ARN to be detached from a
    #   permission set.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detach_managed_policy_from_permission_set({
    #     instance_arn: "InstanceArn", # required
    #     permission_set_arn: "PermissionSetArn", # required
    #     managed_policy_arn: "ManagedPolicyArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/DetachManagedPolicyFromPermissionSet AWS API Documentation
    #
    # @overload detach_managed_policy_from_permission_set(params = {})
    # @param [Hash] params ({})
    def detach_managed_policy_from_permission_set(params = {}, options = {})
      req = build_request(:detach_managed_policy_from_permission_set, params)
      req.send_request(options)
    end

    # Retrieves the authorized targets for an IAM Identity Center access
    # scope for an application.
    #
    # @option params [required, String] :application_arn
    #   Specifies the ARN of the application with the access scope that you
    #   want to retrieve.
    #
    # @option params [required, String] :scope
    #   Specifies the name of the access scope for which you want the
    #   authorized targets.
    #
    # @return [Types::GetApplicationAccessScopeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetApplicationAccessScopeResponse#scope #scope} => String
    #   * {Types::GetApplicationAccessScopeResponse#authorized_targets #authorized_targets} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_application_access_scope({
    #     application_arn: "ApplicationArn", # required
    #     scope: "Scope", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.scope #=> String
    #   resp.authorized_targets #=> Array
    #   resp.authorized_targets[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/GetApplicationAccessScope AWS API Documentation
    #
    # @overload get_application_access_scope(params = {})
    # @param [Hash] params ({})
    def get_application_access_scope(params = {}, options = {})
      req = build_request(:get_application_access_scope, params)
      req.send_request(options)
    end

    # Retrieves the configuration of PutApplicationAssignmentConfiguration.
    #
    # @option params [required, String] :application_arn
    #   Specifies the ARN of the application. For more information about ARNs,
    #   see [Amazon Resource Names (ARNs) and Amazon Web Services Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *Amazon Web Services General Reference*.
    #
    # @return [Types::GetApplicationAssignmentConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetApplicationAssignmentConfigurationResponse#assignment_required #assignment_required} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_application_assignment_configuration({
    #     application_arn: "ApplicationArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.assignment_required #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/GetApplicationAssignmentConfiguration AWS API Documentation
    #
    # @overload get_application_assignment_configuration(params = {})
    # @param [Hash] params ({})
    def get_application_assignment_configuration(params = {}, options = {})
      req = build_request(:get_application_assignment_configuration, params)
      req.send_request(options)
    end

    # Retrieves details about an authentication method used by an
    # application.
    #
    # @option params [required, String] :application_arn
    #   Specifies the ARN of the application.
    #
    # @option params [required, String] :authentication_method_type
    #   Specifies the type of authentication method for which you want
    #   details.
    #
    # @return [Types::GetApplicationAuthenticationMethodResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetApplicationAuthenticationMethodResponse#authentication_method #authentication_method} => Types::AuthenticationMethod
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_application_authentication_method({
    #     application_arn: "ApplicationArn", # required
    #     authentication_method_type: "IAM", # required, accepts IAM
    #   })
    #
    # @example Response structure
    #
    #
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/GetApplicationAuthenticationMethod AWS API Documentation
    #
    # @overload get_application_authentication_method(params = {})
    # @param [Hash] params ({})
    def get_application_authentication_method(params = {}, options = {})
      req = build_request(:get_application_authentication_method, params)
      req.send_request(options)
    end

    # Retrieves details about an application grant.
    #
    # @option params [required, String] :application_arn
    #   Specifies the ARN of the application that contains the grant.
    #
    # @option params [required, String] :grant_type
    #   Specifies the type of grant.
    #
    # @return [Types::GetApplicationGrantResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetApplicationGrantResponse#grant #grant} => Types::Grant
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_application_grant({
    #     application_arn: "ApplicationArn", # required
    #     grant_type: "authorization_code", # required, accepts authorization_code, refresh_token, urn:ietf:params:oauth:grant-type:jwt-bearer, urn:ietf:params:oauth:grant-type:token-exchange
    #   })
    #
    # @example Response structure
    #
    #   resp.grant.authorization_code.redirect_uris #=> Array
    #   resp.grant.authorization_code.redirect_uris[0] #=> String
    #   resp.grant.jwt_bearer.authorized_token_issuers #=> Array
    #   resp.grant.jwt_bearer.authorized_token_issuers[0].trusted_token_issuer_arn #=> String
    #   resp.grant.jwt_bearer.authorized_token_issuers[0].authorized_audiences #=> Array
    #   resp.grant.jwt_bearer.authorized_token_issuers[0].authorized_audiences[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/GetApplicationGrant AWS API Documentation
    #
    # @overload get_application_grant(params = {})
    # @param [Hash] params ({})
    def get_application_grant(params = {}, options = {})
      req = build_request(:get_application_grant, params)
      req.send_request(options)
    end

    # Retrieves the session configuration for an application in IAM Identity
    # Center.
    #
    # The session configuration determines how users can access an
    # application. This includes whether user background sessions are
    # enabled. User background sessions allow users to start a job on a
    # supported Amazon Web Services managed application without having to
    # remain signed in to an active session while the job runs.
    #
    # @option params [required, String] :application_arn
    #   The Amazon Resource Name (ARN) of the application for which to
    #   retrieve the session configuration.
    #
    # @return [Types::GetApplicationSessionConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetApplicationSessionConfigurationResponse#user_background_session_application_status #user_background_session_application_status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_application_session_configuration({
    #     application_arn: "ApplicationArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.user_background_session_application_status #=> String, one of "ENABLED", "DISABLED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/GetApplicationSessionConfiguration AWS API Documentation
    #
    # @overload get_application_session_configuration(params = {})
    # @param [Hash] params ({})
    def get_application_session_configuration(params = {}, options = {})
      req = build_request(:get_application_session_configuration, params)
      req.send_request(options)
    end

    # Obtains the inline policy assigned to the permission set.
    #
    # @option params [required, String] :instance_arn
    #   The ARN of the IAM Identity Center instance under which the operation
    #   will be executed. For more information about ARNs, see [Amazon
    #   Resource Names (ARNs) and Amazon Web Services Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *Amazon Web Services General Reference*.
    #
    # @option params [required, String] :permission_set_arn
    #   The ARN of the permission set.
    #
    # @return [Types::GetInlinePolicyForPermissionSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetInlinePolicyForPermissionSetResponse#inline_policy #inline_policy} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_inline_policy_for_permission_set({
    #     instance_arn: "InstanceArn", # required
    #     permission_set_arn: "PermissionSetArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.inline_policy #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/GetInlinePolicyForPermissionSet AWS API Documentation
    #
    # @overload get_inline_policy_for_permission_set(params = {})
    # @param [Hash] params ({})
    def get_inline_policy_for_permission_set(params = {}, options = {})
      req = build_request(:get_inline_policy_for_permission_set, params)
      req.send_request(options)
    end

    # Obtains the permissions boundary for a specified PermissionSet.
    #
    # @option params [required, String] :instance_arn
    #   The ARN of the IAM Identity Center instance under which the operation
    #   will be executed.
    #
    # @option params [required, String] :permission_set_arn
    #   The ARN of the `PermissionSet`.
    #
    # @return [Types::GetPermissionsBoundaryForPermissionSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPermissionsBoundaryForPermissionSetResponse#permissions_boundary #permissions_boundary} => Types::PermissionsBoundary
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_permissions_boundary_for_permission_set({
    #     instance_arn: "InstanceArn", # required
    #     permission_set_arn: "PermissionSetArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.permissions_boundary.customer_managed_policy_reference.name #=> String
    #   resp.permissions_boundary.customer_managed_policy_reference.path #=> String
    #   resp.permissions_boundary.managed_policy_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/GetPermissionsBoundaryForPermissionSet AWS API Documentation
    #
    # @overload get_permissions_boundary_for_permission_set(params = {})
    # @param [Hash] params ({})
    def get_permissions_boundary_for_permission_set(params = {}, options = {})
      req = build_request(:get_permissions_boundary_for_permission_set, params)
      req.send_request(options)
    end

    # Lists the status of the Amazon Web Services account assignment
    # creation requests for a specified IAM Identity Center instance.
    #
    # @option params [required, String] :instance_arn
    #   The ARN of the IAM Identity Center instance under which the operation
    #   will be executed. For more information about ARNs, see [Amazon
    #   Resource Names (ARNs) and Amazon Web Services Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *Amazon Web Services General Reference*.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to display for the assignment.
    #
    # @option params [String] :next_token
    #   The pagination token for the list API. Initially the value is null.
    #   Use the output of previous API calls to make subsequent calls.
    #
    # @option params [Types::OperationStatusFilter] :filter
    #   Filters results based on the passed attribute value.
    #
    # @return [Types::ListAccountAssignmentCreationStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAccountAssignmentCreationStatusResponse#account_assignments_creation_status #account_assignments_creation_status} => Array&lt;Types::AccountAssignmentOperationStatusMetadata&gt;
    #   * {Types::ListAccountAssignmentCreationStatusResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_account_assignment_creation_status({
    #     instance_arn: "InstanceArn", # required
    #     max_results: 1,
    #     next_token: "Token",
    #     filter: {
    #       status: "IN_PROGRESS", # accepts IN_PROGRESS, FAILED, SUCCEEDED
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.account_assignments_creation_status #=> Array
    #   resp.account_assignments_creation_status[0].status #=> String, one of "IN_PROGRESS", "FAILED", "SUCCEEDED"
    #   resp.account_assignments_creation_status[0].request_id #=> String
    #   resp.account_assignments_creation_status[0].created_date #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ListAccountAssignmentCreationStatus AWS API Documentation
    #
    # @overload list_account_assignment_creation_status(params = {})
    # @param [Hash] params ({})
    def list_account_assignment_creation_status(params = {}, options = {})
      req = build_request(:list_account_assignment_creation_status, params)
      req.send_request(options)
    end

    # Lists the status of the Amazon Web Services account assignment
    # deletion requests for a specified IAM Identity Center instance.
    #
    # @option params [required, String] :instance_arn
    #   The ARN of the IAM Identity Center instance under which the operation
    #   will be executed. For more information about ARNs, see [Amazon
    #   Resource Names (ARNs) and Amazon Web Services Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *Amazon Web Services General Reference*.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to display for the assignment.
    #
    # @option params [String] :next_token
    #   The pagination token for the list API. Initially the value is null.
    #   Use the output of previous API calls to make subsequent calls.
    #
    # @option params [Types::OperationStatusFilter] :filter
    #   Filters results based on the passed attribute value.
    #
    # @return [Types::ListAccountAssignmentDeletionStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAccountAssignmentDeletionStatusResponse#account_assignments_deletion_status #account_assignments_deletion_status} => Array&lt;Types::AccountAssignmentOperationStatusMetadata&gt;
    #   * {Types::ListAccountAssignmentDeletionStatusResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_account_assignment_deletion_status({
    #     instance_arn: "InstanceArn", # required
    #     max_results: 1,
    #     next_token: "Token",
    #     filter: {
    #       status: "IN_PROGRESS", # accepts IN_PROGRESS, FAILED, SUCCEEDED
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.account_assignments_deletion_status #=> Array
    #   resp.account_assignments_deletion_status[0].status #=> String, one of "IN_PROGRESS", "FAILED", "SUCCEEDED"
    #   resp.account_assignments_deletion_status[0].request_id #=> String
    #   resp.account_assignments_deletion_status[0].created_date #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ListAccountAssignmentDeletionStatus AWS API Documentation
    #
    # @overload list_account_assignment_deletion_status(params = {})
    # @param [Hash] params ({})
    def list_account_assignment_deletion_status(params = {}, options = {})
      req = build_request(:list_account_assignment_deletion_status, params)
      req.send_request(options)
    end

    # Lists the assignee of the specified Amazon Web Services account with
    # the specified permission set.
    #
    # @option params [required, String] :instance_arn
    #   The ARN of the IAM Identity Center instance under which the operation
    #   will be executed. For more information about ARNs, see [Amazon
    #   Resource Names (ARNs) and Amazon Web Services Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *Amazon Web Services General Reference*.
    #
    # @option params [required, String] :account_id
    #   The identifier of the Amazon Web Services account from which to list
    #   the assignments.
    #
    # @option params [required, String] :permission_set_arn
    #   The ARN of the permission set from which to list assignments.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to display for the assignment.
    #
    # @option params [String] :next_token
    #   The pagination token for the list API. Initially the value is null.
    #   Use the output of previous API calls to make subsequent calls.
    #
    # @return [Types::ListAccountAssignmentsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAccountAssignmentsResponse#account_assignments #account_assignments} => Array&lt;Types::AccountAssignment&gt;
    #   * {Types::ListAccountAssignmentsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_account_assignments({
    #     instance_arn: "InstanceArn", # required
    #     account_id: "TargetId", # required
    #     permission_set_arn: "PermissionSetArn", # required
    #     max_results: 1,
    #     next_token: "Token",
    #   })
    #
    # @example Response structure
    #
    #   resp.account_assignments #=> Array
    #   resp.account_assignments[0].account_id #=> String
    #   resp.account_assignments[0].permission_set_arn #=> String
    #   resp.account_assignments[0].principal_type #=> String, one of "USER", "GROUP"
    #   resp.account_assignments[0].principal_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ListAccountAssignments AWS API Documentation
    #
    # @overload list_account_assignments(params = {})
    # @param [Hash] params ({})
    def list_account_assignments(params = {}, options = {})
      req = build_request(:list_account_assignments, params)
      req.send_request(options)
    end

    # Retrieves a list of the IAM Identity Center associated Amazon Web
    # Services accounts that the principal has access to. This action must
    # be called from the management account containing your organization
    # instance of IAM Identity Center. This action is not valid for account
    # instances of IAM Identity Center.
    #
    # @option params [required, String] :instance_arn
    #   Specifies the ARN of the instance of IAM Identity Center that contains
    #   the principal.
    #
    # @option params [required, String] :principal_id
    #   Specifies the principal for which you want to retrieve the list of
    #   account assignments.
    #
    # @option params [required, String] :principal_type
    #   Specifies the type of the principal.
    #
    # @option params [Types::ListAccountAssignmentsFilter] :filter
    #   Specifies an Amazon Web Services account ID number. Results are
    #   filtered to only those that match this ID number.
    #
    # @option params [String] :next_token
    #   Specifies that you want to receive the next page of results. Valid
    #   only if you received a `NextToken` response in the previous request.
    #   If you did, it indicates that more output is available. Set this
    #   parameter to the value provided by the previous call's `NextToken`
    #   response to request the next page of results.
    #
    # @option params [Integer] :max_results
    #   Specifies the total number of results that you want included in each
    #   response. If additional items exist beyond the number you specify, the
    #   `NextToken` response element is returned with a value (not null).
    #   Include the specified value as the `NextToken` request parameter in
    #   the next call to the operation to get the next set of results. Note
    #   that the service might return fewer results than the maximum even when
    #   there are more results available. You should check `NextToken` after
    #   every operation to ensure that you receive all of the results.
    #
    # @return [Types::ListAccountAssignmentsForPrincipalResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAccountAssignmentsForPrincipalResponse#account_assignments #account_assignments} => Array&lt;Types::AccountAssignmentForPrincipal&gt;
    #   * {Types::ListAccountAssignmentsForPrincipalResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_account_assignments_for_principal({
    #     instance_arn: "InstanceArn", # required
    #     principal_id: "PrincipalId", # required
    #     principal_type: "USER", # required, accepts USER, GROUP
    #     filter: {
    #       account_id: "AccountId",
    #     },
    #     next_token: "Token",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.account_assignments #=> Array
    #   resp.account_assignments[0].account_id #=> String
    #   resp.account_assignments[0].permission_set_arn #=> String
    #   resp.account_assignments[0].principal_id #=> String
    #   resp.account_assignments[0].principal_type #=> String, one of "USER", "GROUP"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ListAccountAssignmentsForPrincipal AWS API Documentation
    #
    # @overload list_account_assignments_for_principal(params = {})
    # @param [Hash] params ({})
    def list_account_assignments_for_principal(params = {}, options = {})
      req = build_request(:list_account_assignments_for_principal, params)
      req.send_request(options)
    end

    # Lists all the Amazon Web Services accounts where the specified
    # permission set is provisioned.
    #
    # @option params [required, String] :instance_arn
    #   The ARN of the IAM Identity Center instance under which the operation
    #   will be executed. For more information about ARNs, see [Amazon
    #   Resource Names (ARNs) and Amazon Web Services Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *Amazon Web Services General Reference*.
    #
    # @option params [required, String] :permission_set_arn
    #   The ARN of the PermissionSet from which the associated Amazon Web
    #   Services accounts will be listed.
    #
    # @option params [String] :provisioning_status
    #   The permission set provisioning status for an Amazon Web Services
    #   account.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to display for the PermissionSet.
    #
    # @option params [String] :next_token
    #   The pagination token for the list API. Initially the value is null.
    #   Use the output of previous API calls to make subsequent calls.
    #
    # @return [Types::ListAccountsForProvisionedPermissionSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAccountsForProvisionedPermissionSetResponse#account_ids #account_ids} => Array&lt;String&gt;
    #   * {Types::ListAccountsForProvisionedPermissionSetResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_accounts_for_provisioned_permission_set({
    #     instance_arn: "InstanceArn", # required
    #     permission_set_arn: "PermissionSetArn", # required
    #     provisioning_status: "LATEST_PERMISSION_SET_PROVISIONED", # accepts LATEST_PERMISSION_SET_PROVISIONED, LATEST_PERMISSION_SET_NOT_PROVISIONED
    #     max_results: 1,
    #     next_token: "Token",
    #   })
    #
    # @example Response structure
    #
    #   resp.account_ids #=> Array
    #   resp.account_ids[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ListAccountsForProvisionedPermissionSet AWS API Documentation
    #
    # @overload list_accounts_for_provisioned_permission_set(params = {})
    # @param [Hash] params ({})
    def list_accounts_for_provisioned_permission_set(params = {}, options = {})
      req = build_request(:list_accounts_for_provisioned_permission_set, params)
      req.send_request(options)
    end

    # Lists the access scopes and authorized targets associated with an
    # application.
    #
    # @option params [required, String] :application_arn
    #   Specifies the ARN of the application.
    #
    # @option params [Integer] :max_results
    #   Specifies the total number of results that you want included in each
    #   response. If additional items exist beyond the number you specify, the
    #   `NextToken` response element is returned with a value (not null).
    #   Include the specified value as the `NextToken` request parameter in
    #   the next call to the operation to get the next set of results. Note
    #   that the service might return fewer results than the maximum even when
    #   there are more results available. You should check `NextToken` after
    #   every operation to ensure that you receive all of the results.
    #
    # @option params [String] :next_token
    #   Specifies that you want to receive the next page of results. Valid
    #   only if you received a `NextToken` response in the previous request.
    #   If you did, it indicates that more output is available. Set this
    #   parameter to the value provided by the previous call's `NextToken`
    #   response to request the next page of results.
    #
    # @return [Types::ListApplicationAccessScopesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListApplicationAccessScopesResponse#scopes #scopes} => Array&lt;Types::ScopeDetails&gt;
    #   * {Types::ListApplicationAccessScopesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_application_access_scopes({
    #     application_arn: "ApplicationArn", # required
    #     max_results: 1,
    #     next_token: "Token",
    #   })
    #
    # @example Response structure
    #
    #   resp.scopes #=> Array
    #   resp.scopes[0].scope #=> String
    #   resp.scopes[0].authorized_targets #=> Array
    #   resp.scopes[0].authorized_targets[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ListApplicationAccessScopes AWS API Documentation
    #
    # @overload list_application_access_scopes(params = {})
    # @param [Hash] params ({})
    def list_application_access_scopes(params = {}, options = {})
      req = build_request(:list_application_access_scopes, params)
      req.send_request(options)
    end

    # Lists Amazon Web Services account users that are assigned to an
    # application.
    #
    # @option params [required, String] :application_arn
    #   Specifies the ARN of the application.
    #
    # @option params [Integer] :max_results
    #   Specifies the total number of results that you want included in each
    #   response. If additional items exist beyond the number you specify, the
    #   `NextToken` response element is returned with a value (not null).
    #   Include the specified value as the `NextToken` request parameter in
    #   the next call to the operation to get the next set of results. Note
    #   that the service might return fewer results than the maximum even when
    #   there are more results available. You should check `NextToken` after
    #   every operation to ensure that you receive all of the results.
    #
    # @option params [String] :next_token
    #   Specifies that you want to receive the next page of results. Valid
    #   only if you received a `NextToken` response in the previous request.
    #   If you did, it indicates that more output is available. Set this
    #   parameter to the value provided by the previous call's `NextToken`
    #   response to request the next page of results.
    #
    # @return [Types::ListApplicationAssignmentsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListApplicationAssignmentsResponse#application_assignments #application_assignments} => Array&lt;Types::ApplicationAssignment&gt;
    #   * {Types::ListApplicationAssignmentsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_application_assignments({
    #     application_arn: "ApplicationArn", # required
    #     max_results: 1,
    #     next_token: "Token",
    #   })
    #
    # @example Response structure
    #
    #   resp.application_assignments #=> Array
    #   resp.application_assignments[0].application_arn #=> String
    #   resp.application_assignments[0].principal_id #=> String
    #   resp.application_assignments[0].principal_type #=> String, one of "USER", "GROUP"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ListApplicationAssignments AWS API Documentation
    #
    # @overload list_application_assignments(params = {})
    # @param [Hash] params ({})
    def list_application_assignments(params = {}, options = {})
      req = build_request(:list_application_assignments, params)
      req.send_request(options)
    end

    # Lists the applications to which a specified principal is assigned. You
    # must provide a filter when calling this action from a member account
    # against your organization instance of IAM Identity Center. A filter is
    # not required when called from the management account against an
    # organization instance of IAM Identity Center, or from a member account
    # against an account instance of IAM Identity Center in the same
    # account.
    #
    # @option params [required, String] :instance_arn
    #   Specifies the instance of IAM Identity Center that contains principal
    #   and applications.
    #
    # @option params [required, String] :principal_id
    #   Specifies the unique identifier of the principal for which you want to
    #   retrieve its assignments.
    #
    # @option params [required, String] :principal_type
    #   Specifies the type of the principal for which you want to retrieve its
    #   assignments.
    #
    # @option params [Types::ListApplicationAssignmentsFilter] :filter
    #   Filters the output to include only assignments associated with the
    #   application that has the specified ARN.
    #
    # @option params [String] :next_token
    #   Specifies that you want to receive the next page of results. Valid
    #   only if you received a `NextToken` response in the previous request.
    #   If you did, it indicates that more output is available. Set this
    #   parameter to the value provided by the previous call's `NextToken`
    #   response to request the next page of results.
    #
    # @option params [Integer] :max_results
    #   Specifies the total number of results that you want included in each
    #   response. If additional items exist beyond the number you specify, the
    #   `NextToken` response element is returned with a value (not null).
    #   Include the specified value as the `NextToken` request parameter in
    #   the next call to the operation to get the next set of results. Note
    #   that the service might return fewer results than the maximum even when
    #   there are more results available. You should check `NextToken` after
    #   every operation to ensure that you receive all of the results.
    #
    # @return [Types::ListApplicationAssignmentsForPrincipalResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListApplicationAssignmentsForPrincipalResponse#application_assignments #application_assignments} => Array&lt;Types::ApplicationAssignmentForPrincipal&gt;
    #   * {Types::ListApplicationAssignmentsForPrincipalResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_application_assignments_for_principal({
    #     instance_arn: "InstanceArn", # required
    #     principal_id: "PrincipalId", # required
    #     principal_type: "USER", # required, accepts USER, GROUP
    #     filter: {
    #       application_arn: "ApplicationArn",
    #     },
    #     next_token: "Token",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.application_assignments #=> Array
    #   resp.application_assignments[0].application_arn #=> String
    #   resp.application_assignments[0].principal_id #=> String
    #   resp.application_assignments[0].principal_type #=> String, one of "USER", "GROUP"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ListApplicationAssignmentsForPrincipal AWS API Documentation
    #
    # @overload list_application_assignments_for_principal(params = {})
    # @param [Hash] params ({})
    def list_application_assignments_for_principal(params = {}, options = {})
      req = build_request(:list_application_assignments_for_principal, params)
      req.send_request(options)
    end

    # Lists all of the authentication methods supported by the specified
    # application.
    #
    # @option params [required, String] :application_arn
    #   Specifies the ARN of the application with the authentication methods
    #   you want to list.
    #
    # @option params [String] :next_token
    #   Specifies that you want to receive the next page of results. Valid
    #   only if you received a `NextToken` response in the previous request.
    #   If you did, it indicates that more output is available. Set this
    #   parameter to the value provided by the previous call's `NextToken`
    #   response to request the next page of results.
    #
    # @return [Types::ListApplicationAuthenticationMethodsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListApplicationAuthenticationMethodsResponse#authentication_methods #authentication_methods} => Array&lt;Types::AuthenticationMethodItem&gt;
    #   * {Types::ListApplicationAuthenticationMethodsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_application_authentication_methods({
    #     application_arn: "ApplicationArn", # required
    #     next_token: "Token",
    #   })
    #
    # @example Response structure
    #
    #   resp.authentication_methods #=> Array
    #   resp.authentication_methods[0].authentication_method_type #=> String, one of "IAM"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ListApplicationAuthenticationMethods AWS API Documentation
    #
    # @overload list_application_authentication_methods(params = {})
    # @param [Hash] params ({})
    def list_application_authentication_methods(params = {}, options = {})
      req = build_request(:list_application_authentication_methods, params)
      req.send_request(options)
    end

    # List the grants associated with an application.
    #
    # @option params [required, String] :application_arn
    #   Specifies the ARN of the application whose grants you want to list.
    #
    # @option params [String] :next_token
    #   Specifies that you want to receive the next page of results. Valid
    #   only if you received a `NextToken` response in the previous request.
    #   If you did, it indicates that more output is available. Set this
    #   parameter to the value provided by the previous call's `NextToken`
    #   response to request the next page of results.
    #
    # @return [Types::ListApplicationGrantsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListApplicationGrantsResponse#grants #grants} => Array&lt;Types::GrantItem&gt;
    #   * {Types::ListApplicationGrantsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_application_grants({
    #     application_arn: "ApplicationArn", # required
    #     next_token: "Token",
    #   })
    #
    # @example Response structure
    #
    #   resp.grants #=> Array
    #   resp.grants[0].grant_type #=> String, one of "authorization_code", "refresh_token", "urn:ietf:params:oauth:grant-type:jwt-bearer", "urn:ietf:params:oauth:grant-type:token-exchange"
    #   resp.grants[0].grant.authorization_code.redirect_uris #=> Array
    #   resp.grants[0].grant.authorization_code.redirect_uris[0] #=> String
    #   resp.grants[0].grant.jwt_bearer.authorized_token_issuers #=> Array
    #   resp.grants[0].grant.jwt_bearer.authorized_token_issuers[0].trusted_token_issuer_arn #=> String
    #   resp.grants[0].grant.jwt_bearer.authorized_token_issuers[0].authorized_audiences #=> Array
    #   resp.grants[0].grant.jwt_bearer.authorized_token_issuers[0].authorized_audiences[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ListApplicationGrants AWS API Documentation
    #
    # @overload list_application_grants(params = {})
    # @param [Hash] params ({})
    def list_application_grants(params = {}, options = {})
      req = build_request(:list_application_grants, params)
      req.send_request(options)
    end

    # Lists the application providers configured in the IAM Identity Center
    # identity store.
    #
    # @option params [Integer] :max_results
    #   Specifies the total number of results that you want included in each
    #   response. If additional items exist beyond the number you specify, the
    #   `NextToken` response element is returned with a value (not null).
    #   Include the specified value as the `NextToken` request parameter in
    #   the next call to the operation to get the next set of results. Note
    #   that the service might return fewer results than the maximum even when
    #   there are more results available. You should check `NextToken` after
    #   every operation to ensure that you receive all of the results.
    #
    # @option params [String] :next_token
    #   Specifies that you want to receive the next page of results. Valid
    #   only if you received a `NextToken` response in the previous request.
    #   If you did, it indicates that more output is available. Set this
    #   parameter to the value provided by the previous call's `NextToken`
    #   response to request the next page of results.
    #
    # @return [Types::ListApplicationProvidersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListApplicationProvidersResponse#application_providers #application_providers} => Array&lt;Types::ApplicationProvider&gt;
    #   * {Types::ListApplicationProvidersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_application_providers({
    #     max_results: 1,
    #     next_token: "Token",
    #   })
    #
    # @example Response structure
    #
    #   resp.application_providers #=> Array
    #   resp.application_providers[0].application_provider_arn #=> String
    #   resp.application_providers[0].federation_protocol #=> String, one of "SAML", "OAUTH"
    #   resp.application_providers[0].display_data.display_name #=> String
    #   resp.application_providers[0].display_data.icon_url #=> String
    #   resp.application_providers[0].display_data.description #=> String
    #   resp.application_providers[0].resource_server_config.scopes #=> Hash
    #   resp.application_providers[0].resource_server_config.scopes["ResourceServerScope"].long_description #=> String
    #   resp.application_providers[0].resource_server_config.scopes["ResourceServerScope"].detailed_title #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ListApplicationProviders AWS API Documentation
    #
    # @overload list_application_providers(params = {})
    # @param [Hash] params ({})
    def list_application_providers(params = {}, options = {})
      req = build_request(:list_application_providers, params)
      req.send_request(options)
    end

    # Lists all applications associated with the instance of IAM Identity
    # Center. When listing applications for an organization instance in the
    # management account, member accounts must use the `applicationAccount`
    # parameter to filter the list to only applications created from that
    # account. When listing applications for an account instance in the same
    # member account, a filter is not required.
    #
    # @option params [required, String] :instance_arn
    #   The ARN of the IAM Identity Center application under which the
    #   operation will run. For more information about ARNs, see [Amazon
    #   Resource Names (ARNs) and Amazon Web Services Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *Amazon Web Services General Reference*.
    #
    # @option params [Integer] :max_results
    #   Specifies the total number of results that you want included in each
    #   response. If additional items exist beyond the number you specify, the
    #   `NextToken` response element is returned with a value (not null).
    #   Include the specified value as the `NextToken` request parameter in
    #   the next call to the operation to get the next set of results. Note
    #   that the service might return fewer results than the maximum even when
    #   there are more results available. You should check `NextToken` after
    #   every operation to ensure that you receive all of the results.
    #
    # @option params [String] :next_token
    #   Specifies that you want to receive the next page of results. Valid
    #   only if you received a `NextToken` response in the previous request.
    #   If you did, it indicates that more output is available. Set this
    #   parameter to the value provided by the previous call's `NextToken`
    #   response to request the next page of results.
    #
    # @option params [Types::ListApplicationsFilter] :filter
    #   Filters response results.
    #
    # @return [Types::ListApplicationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListApplicationsResponse#applications #applications} => Array&lt;Types::Application&gt;
    #   * {Types::ListApplicationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_applications({
    #     instance_arn: "InstanceArn", # required
    #     max_results: 1,
    #     next_token: "Token",
    #     filter: {
    #       application_account: "AccountId",
    #       application_provider: "ApplicationProviderArn",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.applications #=> Array
    #   resp.applications[0].application_arn #=> String
    #   resp.applications[0].application_provider_arn #=> String
    #   resp.applications[0].name #=> String
    #   resp.applications[0].application_account #=> String
    #   resp.applications[0].instance_arn #=> String
    #   resp.applications[0].status #=> String, one of "ENABLED", "DISABLED"
    #   resp.applications[0].portal_options.sign_in_options.origin #=> String, one of "IDENTITY_CENTER", "APPLICATION"
    #   resp.applications[0].portal_options.sign_in_options.application_url #=> String
    #   resp.applications[0].portal_options.visibility #=> String, one of "ENABLED", "DISABLED"
    #   resp.applications[0].description #=> String
    #   resp.applications[0].created_date #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ListApplications AWS API Documentation
    #
    # @overload list_applications(params = {})
    # @param [Hash] params ({})
    def list_applications(params = {}, options = {})
      req = build_request(:list_applications, params)
      req.send_request(options)
    end

    # Lists all customer managed policies attached to a specified
    # PermissionSet.
    #
    # @option params [required, String] :instance_arn
    #   The ARN of the IAM Identity Center instance under which the operation
    #   will be executed.
    #
    # @option params [required, String] :permission_set_arn
    #   The ARN of the `PermissionSet`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to display for the list call.
    #
    # @option params [String] :next_token
    #   The pagination token for the list API. Initially the value is null.
    #   Use the output of previous API calls to make subsequent calls.
    #
    # @return [Types::ListCustomerManagedPolicyReferencesInPermissionSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCustomerManagedPolicyReferencesInPermissionSetResponse#customer_managed_policy_references #customer_managed_policy_references} => Array&lt;Types::CustomerManagedPolicyReference&gt;
    #   * {Types::ListCustomerManagedPolicyReferencesInPermissionSetResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_customer_managed_policy_references_in_permission_set({
    #     instance_arn: "InstanceArn", # required
    #     permission_set_arn: "PermissionSetArn", # required
    #     max_results: 1,
    #     next_token: "Token",
    #   })
    #
    # @example Response structure
    #
    #   resp.customer_managed_policy_references #=> Array
    #   resp.customer_managed_policy_references[0].name #=> String
    #   resp.customer_managed_policy_references[0].path #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ListCustomerManagedPolicyReferencesInPermissionSet AWS API Documentation
    #
    # @overload list_customer_managed_policy_references_in_permission_set(params = {})
    # @param [Hash] params ({})
    def list_customer_managed_policy_references_in_permission_set(params = {}, options = {})
      req = build_request(:list_customer_managed_policy_references_in_permission_set, params)
      req.send_request(options)
    end

    # Lists the details of the organization and account instances of IAM
    # Identity Center that were created in or visible to the account calling
    # this API.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to display for the instance.
    #
    # @option params [String] :next_token
    #   The pagination token for the list API. Initially the value is null.
    #   Use the output of previous API calls to make subsequent calls.
    #
    # @return [Types::ListInstancesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListInstancesResponse#instances #instances} => Array&lt;Types::InstanceMetadata&gt;
    #   * {Types::ListInstancesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_instances({
    #     max_results: 1,
    #     next_token: "Token",
    #   })
    #
    # @example Response structure
    #
    #   resp.instances #=> Array
    #   resp.instances[0].instance_arn #=> String
    #   resp.instances[0].identity_store_id #=> String
    #   resp.instances[0].owner_account_id #=> String
    #   resp.instances[0].name #=> String
    #   resp.instances[0].created_date #=> Time
    #   resp.instances[0].status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_FAILED", "DELETE_IN_PROGRESS", "ACTIVE"
    #   resp.instances[0].status_reason #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ListInstances AWS API Documentation
    #
    # @overload list_instances(params = {})
    # @param [Hash] params ({})
    def list_instances(params = {}, options = {})
      req = build_request(:list_instances, params)
      req.send_request(options)
    end

    # Lists the Amazon Web Services managed policy that is attached to a
    # specified permission set.
    #
    # @option params [required, String] :instance_arn
    #   The ARN of the IAM Identity Center instance under which the operation
    #   will be executed. For more information about ARNs, see [Amazon
    #   Resource Names (ARNs) and Amazon Web Services Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *Amazon Web Services General Reference*.
    #
    # @option params [required, String] :permission_set_arn
    #   The ARN of the PermissionSet whose managed policies will be listed.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to display for the PermissionSet.
    #
    # @option params [String] :next_token
    #   The pagination token for the list API. Initially the value is null.
    #   Use the output of previous API calls to make subsequent calls.
    #
    # @return [Types::ListManagedPoliciesInPermissionSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListManagedPoliciesInPermissionSetResponse#attached_managed_policies #attached_managed_policies} => Array&lt;Types::AttachedManagedPolicy&gt;
    #   * {Types::ListManagedPoliciesInPermissionSetResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_managed_policies_in_permission_set({
    #     instance_arn: "InstanceArn", # required
    #     permission_set_arn: "PermissionSetArn", # required
    #     max_results: 1,
    #     next_token: "Token",
    #   })
    #
    # @example Response structure
    #
    #   resp.attached_managed_policies #=> Array
    #   resp.attached_managed_policies[0].name #=> String
    #   resp.attached_managed_policies[0].arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ListManagedPoliciesInPermissionSet AWS API Documentation
    #
    # @overload list_managed_policies_in_permission_set(params = {})
    # @param [Hash] params ({})
    def list_managed_policies_in_permission_set(params = {}, options = {})
      req = build_request(:list_managed_policies_in_permission_set, params)
      req.send_request(options)
    end

    # Lists the status of the permission set provisioning requests for a
    # specified IAM Identity Center instance.
    #
    # @option params [required, String] :instance_arn
    #   The ARN of the IAM Identity Center instance under which the operation
    #   will be executed. For more information about ARNs, see [Amazon
    #   Resource Names (ARNs) and Amazon Web Services Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *Amazon Web Services General Reference*.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to display for the assignment.
    #
    # @option params [String] :next_token
    #   The pagination token for the list API. Initially the value is null.
    #   Use the output of previous API calls to make subsequent calls.
    #
    # @option params [Types::OperationStatusFilter] :filter
    #   Filters results based on the passed attribute value.
    #
    # @return [Types::ListPermissionSetProvisioningStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPermissionSetProvisioningStatusResponse#permission_sets_provisioning_status #permission_sets_provisioning_status} => Array&lt;Types::PermissionSetProvisioningStatusMetadata&gt;
    #   * {Types::ListPermissionSetProvisioningStatusResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_permission_set_provisioning_status({
    #     instance_arn: "InstanceArn", # required
    #     max_results: 1,
    #     next_token: "Token",
    #     filter: {
    #       status: "IN_PROGRESS", # accepts IN_PROGRESS, FAILED, SUCCEEDED
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.permission_sets_provisioning_status #=> Array
    #   resp.permission_sets_provisioning_status[0].status #=> String, one of "IN_PROGRESS", "FAILED", "SUCCEEDED"
    #   resp.permission_sets_provisioning_status[0].request_id #=> String
    #   resp.permission_sets_provisioning_status[0].created_date #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ListPermissionSetProvisioningStatus AWS API Documentation
    #
    # @overload list_permission_set_provisioning_status(params = {})
    # @param [Hash] params ({})
    def list_permission_set_provisioning_status(params = {}, options = {})
      req = build_request(:list_permission_set_provisioning_status, params)
      req.send_request(options)
    end

    # Lists the PermissionSets in an IAM Identity Center instance.
    #
    # @option params [required, String] :instance_arn
    #   The ARN of the IAM Identity Center instance under which the operation
    #   will be executed. For more information about ARNs, see [Amazon
    #   Resource Names (ARNs) and Amazon Web Services Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *Amazon Web Services General Reference*.
    #
    # @option params [String] :next_token
    #   The pagination token for the list API. Initially the value is null.
    #   Use the output of previous API calls to make subsequent calls.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to display for the assignment.
    #
    # @return [Types::ListPermissionSetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPermissionSetsResponse#permission_sets #permission_sets} => Array&lt;String&gt;
    #   * {Types::ListPermissionSetsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_permission_sets({
    #     instance_arn: "InstanceArn", # required
    #     next_token: "Token",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.permission_sets #=> Array
    #   resp.permission_sets[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ListPermissionSets AWS API Documentation
    #
    # @overload list_permission_sets(params = {})
    # @param [Hash] params ({})
    def list_permission_sets(params = {}, options = {})
      req = build_request(:list_permission_sets, params)
      req.send_request(options)
    end

    # Lists all the permission sets that are provisioned to a specified
    # Amazon Web Services account.
    #
    # @option params [required, String] :instance_arn
    #   The ARN of the IAM Identity Center instance under which the operation
    #   will be executed. For more information about ARNs, see [Amazon
    #   Resource Names (ARNs) and Amazon Web Services Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *Amazon Web Services General Reference*.
    #
    # @option params [required, String] :account_id
    #   The identifier of the Amazon Web Services account from which to list
    #   the assignments.
    #
    # @option params [String] :provisioning_status
    #   The status object for the permission set provisioning operation.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to display for the assignment.
    #
    # @option params [String] :next_token
    #   The pagination token for the list API. Initially the value is null.
    #   Use the output of previous API calls to make subsequent calls.
    #
    # @return [Types::ListPermissionSetsProvisionedToAccountResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPermissionSetsProvisionedToAccountResponse#next_token #next_token} => String
    #   * {Types::ListPermissionSetsProvisionedToAccountResponse#permission_sets #permission_sets} => Array&lt;String&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_permission_sets_provisioned_to_account({
    #     instance_arn: "InstanceArn", # required
    #     account_id: "AccountId", # required
    #     provisioning_status: "LATEST_PERMISSION_SET_PROVISIONED", # accepts LATEST_PERMISSION_SET_PROVISIONED, LATEST_PERMISSION_SET_NOT_PROVISIONED
    #     max_results: 1,
    #     next_token: "Token",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.permission_sets #=> Array
    #   resp.permission_sets[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ListPermissionSetsProvisionedToAccount AWS API Documentation
    #
    # @overload list_permission_sets_provisioned_to_account(params = {})
    # @param [Hash] params ({})
    def list_permission_sets_provisioned_to_account(params = {}, options = {})
      req = build_request(:list_permission_sets_provisioned_to_account, params)
      req.send_request(options)
    end

    # Lists the tags that are attached to a specified resource.
    #
    # @option params [String] :instance_arn
    #   The ARN of the IAM Identity Center instance under which the operation
    #   will be executed. For more information about ARNs, see [Amazon
    #   Resource Names (ARNs) and Amazon Web Services Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *Amazon Web Services General Reference*.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource with the tags to be listed.
    #
    # @option params [String] :next_token
    #   The pagination token for the list API. Initially the value is null.
    #   Use the output of previous API calls to make subsequent calls.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #   * {Types::ListTagsForResourceResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     instance_arn: "InstanceArn",
    #     resource_arn: "TaggableResourceArn", # required
    #     next_token: "Token",
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Lists all the trusted token issuers configured in an instance of IAM
    # Identity Center.
    #
    # @option params [required, String] :instance_arn
    #   Specifies the ARN of the instance of IAM Identity Center with the
    #   trusted token issuer configurations that you want to list.
    #
    # @option params [Integer] :max_results
    #   Specifies the total number of results that you want included in each
    #   response. If additional items exist beyond the number you specify, the
    #   `NextToken` response element is returned with a value (not null).
    #   Include the specified value as the `NextToken` request parameter in
    #   the next call to the operation to get the next set of results. Note
    #   that the service might return fewer results than the maximum even when
    #   there are more results available. You should check `NextToken` after
    #   every operation to ensure that you receive all of the results.
    #
    # @option params [String] :next_token
    #   Specifies that you want to receive the next page of results. Valid
    #   only if you received a `NextToken` response in the previous request.
    #   If you did, it indicates that more output is available. Set this
    #   parameter to the value provided by the previous call's `NextToken`
    #   response to request the next page of results.
    #
    # @return [Types::ListTrustedTokenIssuersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTrustedTokenIssuersResponse#trusted_token_issuers #trusted_token_issuers} => Array&lt;Types::TrustedTokenIssuerMetadata&gt;
    #   * {Types::ListTrustedTokenIssuersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_trusted_token_issuers({
    #     instance_arn: "InstanceArn", # required
    #     max_results: 1,
    #     next_token: "Token",
    #   })
    #
    # @example Response structure
    #
    #   resp.trusted_token_issuers #=> Array
    #   resp.trusted_token_issuers[0].trusted_token_issuer_arn #=> String
    #   resp.trusted_token_issuers[0].name #=> String
    #   resp.trusted_token_issuers[0].trusted_token_issuer_type #=> String, one of "OIDC_JWT"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ListTrustedTokenIssuers AWS API Documentation
    #
    # @overload list_trusted_token_issuers(params = {})
    # @param [Hash] params ({})
    def list_trusted_token_issuers(params = {}, options = {})
      req = build_request(:list_trusted_token_issuers, params)
      req.send_request(options)
    end

    # The process by which a specified permission set is provisioned to the
    # specified target.
    #
    # @option params [required, String] :instance_arn
    #   The ARN of the IAM Identity Center instance under which the operation
    #   will be executed. For more information about ARNs, see [Amazon
    #   Resource Names (ARNs) and Amazon Web Services Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *Amazon Web Services General Reference*.
    #
    # @option params [required, String] :permission_set_arn
    #   The ARN of the permission set.
    #
    # @option params [String] :target_id
    #   TargetID is an Amazon Web Services account identifier, (For example,
    #   123456789012).
    #
    # @option params [required, String] :target_type
    #   The entity type for which the assignment will be created.
    #
    # @return [Types::ProvisionPermissionSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ProvisionPermissionSetResponse#permission_set_provisioning_status #permission_set_provisioning_status} => Types::PermissionSetProvisioningStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.provision_permission_set({
    #     instance_arn: "InstanceArn", # required
    #     permission_set_arn: "PermissionSetArn", # required
    #     target_id: "TargetId",
    #     target_type: "AWS_ACCOUNT", # required, accepts AWS_ACCOUNT, ALL_PROVISIONED_ACCOUNTS
    #   })
    #
    # @example Response structure
    #
    #   resp.permission_set_provisioning_status.status #=> String, one of "IN_PROGRESS", "FAILED", "SUCCEEDED"
    #   resp.permission_set_provisioning_status.request_id #=> String
    #   resp.permission_set_provisioning_status.account_id #=> String
    #   resp.permission_set_provisioning_status.permission_set_arn #=> String
    #   resp.permission_set_provisioning_status.failure_reason #=> String
    #   resp.permission_set_provisioning_status.created_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ProvisionPermissionSet AWS API Documentation
    #
    # @overload provision_permission_set(params = {})
    # @param [Hash] params ({})
    def provision_permission_set(params = {}, options = {})
      req = build_request(:provision_permission_set, params)
      req.send_request(options)
    end

    # Adds or updates the list of authorized targets for an IAM Identity
    # Center access scope for an application.
    #
    # @option params [required, String] :scope
    #   Specifies the name of the access scope to be associated with the
    #   specified targets.
    #
    # @option params [Array<String>] :authorized_targets
    #   Specifies an array list of ARNs that represent the authorized targets
    #   for this access scope.
    #
    # @option params [required, String] :application_arn
    #   Specifies the ARN of the application with the access scope with the
    #   targets to add or update.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_application_access_scope({
    #     scope: "Scope", # required
    #     authorized_targets: ["ScopeTarget"],
    #     application_arn: "ApplicationArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/PutApplicationAccessScope AWS API Documentation
    #
    # @overload put_application_access_scope(params = {})
    # @param [Hash] params ({})
    def put_application_access_scope(params = {}, options = {})
      req = build_request(:put_application_access_scope, params)
      req.send_request(options)
    end

    # Configure how users gain access to an application. If
    # `AssignmentsRequired` is `true` (default value), users don’t have
    # access to the application unless an assignment is created using the
    # [CreateApplicationAssignment API][1]. If `false`, all users have
    # access to the application. If an assignment is created using
    # [CreateApplicationAssignment][1]., the user retains access if
    # `AssignmentsRequired` is set to `true`.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/singlesignon/latest/APIReference/API_CreateApplicationAssignment.html
    #
    # @option params [required, String] :application_arn
    #   Specifies the ARN of the application. For more information about ARNs,
    #   see [Amazon Resource Names (ARNs) and Amazon Web Services Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *Amazon Web Services General Reference*.
    #
    # @option params [required, Boolean] :assignment_required
    #   If `AssignmentsRequired` is `true` (default value), users don’t have
    #   access to the application unless an assignment is created using the
    #   [CreateApplicationAssignment API][1]. If `false`, all users have
    #   access to the application.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/singlesignon/latest/APIReference/API_CreateApplicationAssignment.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_application_assignment_configuration({
    #     application_arn: "ApplicationArn", # required
    #     assignment_required: false, # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/PutApplicationAssignmentConfiguration AWS API Documentation
    #
    # @overload put_application_assignment_configuration(params = {})
    # @param [Hash] params ({})
    def put_application_assignment_configuration(params = {}, options = {})
      req = build_request(:put_application_assignment_configuration, params)
      req.send_request(options)
    end

    # Adds or updates an authentication method for an application.
    #
    # @option params [required, String] :application_arn
    #   Specifies the ARN of the application with the authentication method to
    #   add or update.
    #
    # @option params [required, String] :authentication_method_type
    #   Specifies the type of the authentication method that you want to add
    #   or update.
    #
    # @option params [required, Types::AuthenticationMethod] :authentication_method
    #   Specifies a structure that describes the authentication method to add
    #   or update. The structure type you provide is determined by the
    #   `AuthenticationMethodType` parameter.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_application_authentication_method({
    #     application_arn: "ApplicationArn", # required
    #     authentication_method_type: "IAM", # required, accepts IAM
    #     authentication_method: { # required
    #       iam: {
    #         actor_policy: { # required
    #         },
    #       },
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/PutApplicationAuthenticationMethod AWS API Documentation
    #
    # @overload put_application_authentication_method(params = {})
    # @param [Hash] params ({})
    def put_application_authentication_method(params = {}, options = {})
      req = build_request(:put_application_authentication_method, params)
      req.send_request(options)
    end

    # Creates a configuration for an application to use grants. Conceptually
    # grants are authorization to request actions related to tokens. This
    # configuration will be used when parties are requesting and receiving
    # tokens during the trusted identity propagation process. For more
    # information on the IAM Identity Center supported grant workflows, see
    # [SAML 2.0 and OAuth 2.0][1].
    #
    # A grant is created between your applications and Identity Center
    # instance which enables an application to use specified mechanisms to
    # obtain tokens. These tokens are used by your applications to gain
    # access to Amazon Web Services resources on behalf of users. The
    # following elements are within these exchanges:
    #
    # * **Requester** - The application requesting access to Amazon Web
    #   Services resources.
    #
    # * **Subject** - Typically the user that is requesting access to Amazon
    #   Web Services resources.
    #
    # * **Grant** - Conceptually, a grant is authorization to access Amazon
    #   Web Services resources. These grants authorize token generation for
    #   authenticating access to the requester and for the request to make
    #   requests on behalf of the subjects. There are four types of grants:
    #
    #   * **AuthorizationCode** - Allows an application to request
    #     authorization through a series of user-agent redirects.
    #
    #   * <b>JWT bearer </b> - Authorizes an application to exchange a JSON
    #     Web Token that came from an external identity provider. To learn
    #     more, see [RFC 6479][2].
    #
    #   * **Refresh token** - Enables application to request new access
    #     tokens to replace expiring or expired access tokens.
    #
    #   * **Exchange token** - A grant that requests tokens from the
    #     authorization server by providing a ‘subject’ token with access
    #     scope authorizing trusted identity propagation to this
    #     application. To learn more, see [RFC 8693][3].
    # * **Authorization server** - IAM Identity Center requests tokens.
    #
    # User credentials are never shared directly within these exchanges.
    # Instead, applications use grants to request access tokens from IAM
    # Identity Center. For more information, see [RFC 6479][2].
    #
    # **Use cases**
    #
    # * Connecting to custom applications.
    #
    # * Configuring an Amazon Web Services service to make calls to another
    #   Amazon Web Services services using JWT tokens.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/singlesignon/latest/userguide/customermanagedapps-saml2-oauth2.html
    # [2]: https://datatracker.ietf.org/doc/html/rfc6749
    # [3]: https://datatracker.ietf.org/doc/html/rfc8693
    #
    # @option params [required, String] :application_arn
    #   Specifies the ARN of the application to update.
    #
    # @option params [required, String] :grant_type
    #   Specifies the type of grant to update.
    #
    # @option params [required, Types::Grant] :grant
    #   Specifies a structure that describes the grant to update.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_application_grant({
    #     application_arn: "ApplicationArn", # required
    #     grant_type: "authorization_code", # required, accepts authorization_code, refresh_token, urn:ietf:params:oauth:grant-type:jwt-bearer, urn:ietf:params:oauth:grant-type:token-exchange
    #     grant: { # required
    #       authorization_code: {
    #         redirect_uris: ["URI"],
    #       },
    #       jwt_bearer: {
    #         authorized_token_issuers: [
    #           {
    #             trusted_token_issuer_arn: "TrustedTokenIssuerArn",
    #             authorized_audiences: ["TokenIssuerAudience"],
    #           },
    #         ],
    #       },
    #       refresh_token: {
    #       },
    #       token_exchange: {
    #       },
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/PutApplicationGrant AWS API Documentation
    #
    # @overload put_application_grant(params = {})
    # @param [Hash] params ({})
    def put_application_grant(params = {}, options = {})
      req = build_request(:put_application_grant, params)
      req.send_request(options)
    end

    # Updates the session configuration for an application in IAM Identity
    # Center.
    #
    # The session configuration determines how users can access an
    # application. This includes whether user background sessions are
    # enabled. User background sessions allow users to start a job on a
    # supported Amazon Web Services managed application without having to
    # remain signed in to an active session while the job runs.
    #
    # @option params [required, String] :application_arn
    #   The Amazon Resource Name (ARN) of the application for which to update
    #   the session configuration.
    #
    # @option params [String] :user_background_session_application_status
    #   The status of user background sessions for the application.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_application_session_configuration({
    #     application_arn: "ApplicationArn", # required
    #     user_background_session_application_status: "ENABLED", # accepts ENABLED, DISABLED
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/PutApplicationSessionConfiguration AWS API Documentation
    #
    # @overload put_application_session_configuration(params = {})
    # @param [Hash] params ({})
    def put_application_session_configuration(params = {}, options = {})
      req = build_request(:put_application_session_configuration, params)
      req.send_request(options)
    end

    # Attaches an inline policy to a permission set.
    #
    # <note markdown="1"> If the permission set is already referenced by one or more account
    # assignments, you will need to call ` ProvisionPermissionSet ` after
    # this action to apply the corresponding IAM policy updates to all
    # assigned accounts.
    #
    #  </note>
    #
    # @option params [required, String] :instance_arn
    #   The ARN of the IAM Identity Center instance under which the operation
    #   will be executed. For more information about ARNs, see [Amazon
    #   Resource Names (ARNs) and Amazon Web Services Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *Amazon Web Services General Reference*.
    #
    # @option params [required, String] :permission_set_arn
    #   The ARN of the permission set.
    #
    # @option params [required, String] :inline_policy
    #   The inline policy to attach to a PermissionSet.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_inline_policy_to_permission_set({
    #     instance_arn: "InstanceArn", # required
    #     permission_set_arn: "PermissionSetArn", # required
    #     inline_policy: "PermissionSetPolicyDocument", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/PutInlinePolicyToPermissionSet AWS API Documentation
    #
    # @overload put_inline_policy_to_permission_set(params = {})
    # @param [Hash] params ({})
    def put_inline_policy_to_permission_set(params = {}, options = {})
      req = build_request(:put_inline_policy_to_permission_set, params)
      req.send_request(options)
    end

    # Attaches an Amazon Web Services managed or customer managed policy to
    # the specified PermissionSet as a permissions boundary.
    #
    # @option params [required, String] :instance_arn
    #   The ARN of the IAM Identity Center instance under which the operation
    #   will be executed.
    #
    # @option params [required, String] :permission_set_arn
    #   The ARN of the `PermissionSet`.
    #
    # @option params [required, Types::PermissionsBoundary] :permissions_boundary
    #   The permissions boundary that you want to attach to a `PermissionSet`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_permissions_boundary_to_permission_set({
    #     instance_arn: "InstanceArn", # required
    #     permission_set_arn: "PermissionSetArn", # required
    #     permissions_boundary: { # required
    #       customer_managed_policy_reference: {
    #         name: "ManagedPolicyName", # required
    #         path: "ManagedPolicyPath",
    #       },
    #       managed_policy_arn: "ManagedPolicyArn",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/PutPermissionsBoundaryToPermissionSet AWS API Documentation
    #
    # @overload put_permissions_boundary_to_permission_set(params = {})
    # @param [Hash] params ({})
    def put_permissions_boundary_to_permission_set(params = {}, options = {})
      req = build_request(:put_permissions_boundary_to_permission_set, params)
      req.send_request(options)
    end

    # Associates a set of tags with a specified resource.
    #
    # @option params [String] :instance_arn
    #   The ARN of the IAM Identity Center instance under which the operation
    #   will be executed. For more information about ARNs, see [Amazon
    #   Resource Names (ARNs) and Amazon Web Services Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *Amazon Web Services General Reference*.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource with the tags to be listed.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   A set of key-value pairs that are used to manage the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     instance_arn: "InstanceArn",
    #     resource_arn: "TaggableResourceArn", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Disassociates a set of tags from a specified resource.
    #
    # @option params [String] :instance_arn
    #   The ARN of the IAM Identity Center instance under which the operation
    #   will be executed. For more information about ARNs, see [Amazon
    #   Resource Names (ARNs) and Amazon Web Services Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *Amazon Web Services General Reference*.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource with the tags to be listed.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The keys of tags that are attached to the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     instance_arn: "InstanceArn",
    #     resource_arn: "TaggableResourceArn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates application properties.
    #
    # @option params [required, String] :application_arn
    #   Specifies the ARN of the application. For more information about ARNs,
    #   see [Amazon Resource Names (ARNs) and Amazon Web Services Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *Amazon Web Services General Reference*.
    #
    # @option params [String] :name
    #   Specifies the updated name for the application.
    #
    # @option params [String] :description
    #   The description of the .
    #
    # @option params [String] :status
    #   Specifies whether the application is enabled or disabled.
    #
    # @option params [Types::UpdateApplicationPortalOptions] :portal_options
    #   A structure that describes the options for the portal associated with
    #   an application.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_application({
    #     application_arn: "ApplicationArn", # required
    #     name: "ApplicationNameType",
    #     description: "Description",
    #     status: "ENABLED", # accepts ENABLED, DISABLED
    #     portal_options: {
    #       sign_in_options: {
    #         origin: "IDENTITY_CENTER", # required, accepts IDENTITY_CENTER, APPLICATION
    #         application_url: "ApplicationUrl",
    #       },
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/UpdateApplication AWS API Documentation
    #
    # @overload update_application(params = {})
    # @param [Hash] params ({})
    def update_application(params = {}, options = {})
      req = build_request(:update_application, params)
      req.send_request(options)
    end

    # Update the details for the instance of IAM Identity Center that is
    # owned by the Amazon Web Services account.
    #
    # @option params [String] :name
    #   Updates the instance name.
    #
    # @option params [required, String] :instance_arn
    #   The ARN of the instance of IAM Identity Center under which the
    #   operation will run. For more information about ARNs, see [Amazon
    #   Resource Names (ARNs) and Amazon Web Services Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *Amazon Web Services General Reference*.
    #
    # @option params [Types::EncryptionConfiguration] :encryption_configuration
    #   Specifies the encryption configuration for your IAM Identity Center
    #   instance. You can use this to configure customer managed KMS keys
    #   (CMK) or Amazon Web Services owned KMS keys for encrypting your
    #   instance data.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_instance({
    #     name: "NameType",
    #     instance_arn: "InstanceArn", # required
    #     encryption_configuration: {
    #       key_type: "AWS_OWNED_KMS_KEY", # required, accepts AWS_OWNED_KMS_KEY, CUSTOMER_MANAGED_KEY
    #       kms_key_arn: "KmsKeyArn",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/UpdateInstance AWS API Documentation
    #
    # @overload update_instance(params = {})
    # @param [Hash] params ({})
    def update_instance(params = {}, options = {})
      req = build_request(:update_instance, params)
      req.send_request(options)
    end

    # Updates the IAM Identity Center identity store attributes that you can
    # use with the IAM Identity Center instance for attributes-based access
    # control (ABAC). When using an external identity provider as an
    # identity source, you can pass attributes through the SAML assertion as
    # an alternative to configuring attributes from the IAM Identity Center
    # identity store. If a SAML assertion passes any of these attributes,
    # IAM Identity Center replaces the attribute value with the value from
    # the IAM Identity Center identity store. For more information about
    # ABAC, see [Attribute-Based Access
    # Control](/singlesignon/latest/userguide/abac.html) in the *IAM
    # Identity Center User Guide*.
    #
    # @option params [required, String] :instance_arn
    #   The ARN of the IAM Identity Center instance under which the operation
    #   will be executed.
    #
    # @option params [required, Types::InstanceAccessControlAttributeConfiguration] :instance_access_control_attribute_configuration
    #   Updates the attributes for your ABAC configuration.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_instance_access_control_attribute_configuration({
    #     instance_arn: "InstanceArn", # required
    #     instance_access_control_attribute_configuration: { # required
    #       access_control_attributes: [ # required
    #         {
    #           key: "AccessControlAttributeKey", # required
    #           value: { # required
    #             source: ["AccessControlAttributeValueSource"], # required
    #           },
    #         },
    #       ],
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/UpdateInstanceAccessControlAttributeConfiguration AWS API Documentation
    #
    # @overload update_instance_access_control_attribute_configuration(params = {})
    # @param [Hash] params ({})
    def update_instance_access_control_attribute_configuration(params = {}, options = {})
      req = build_request(:update_instance_access_control_attribute_configuration, params)
      req.send_request(options)
    end

    # Updates an existing permission set.
    #
    # @option params [required, String] :instance_arn
    #   The ARN of the IAM Identity Center instance under which the operation
    #   will be executed. For more information about ARNs, see [Amazon
    #   Resource Names (ARNs) and Amazon Web Services Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *Amazon Web Services General Reference*.
    #
    # @option params [required, String] :permission_set_arn
    #   The ARN of the permission set.
    #
    # @option params [String] :description
    #   The description of the PermissionSet.
    #
    # @option params [String] :session_duration
    #   The length of time that the application user sessions are valid for in
    #   the ISO-8601 standard.
    #
    # @option params [String] :relay_state
    #   Used to redirect users within the application during the federation
    #   authentication process.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_permission_set({
    #     instance_arn: "InstanceArn", # required
    #     permission_set_arn: "PermissionSetArn", # required
    #     description: "PermissionSetDescription",
    #     session_duration: "Duration",
    #     relay_state: "RelayState",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/UpdatePermissionSet AWS API Documentation
    #
    # @overload update_permission_set(params = {})
    # @param [Hash] params ({})
    def update_permission_set(params = {}, options = {})
      req = build_request(:update_permission_set, params)
      req.send_request(options)
    end

    # Updates the name of the trusted token issuer, or the path of a source
    # attribute or destination attribute for a trusted token issuer
    # configuration.
    #
    # <note markdown="1"> Updating this trusted token issuer configuration might cause users to
    # lose access to any applications that are configured to use the trusted
    # token issuer.
    #
    #  </note>
    #
    # @option params [required, String] :trusted_token_issuer_arn
    #   Specifies the ARN of the trusted token issuer configuration that you
    #   want to update.
    #
    # @option params [String] :name
    #   Specifies the updated name to be applied to the trusted token issuer
    #   configuration.
    #
    # @option params [Types::TrustedTokenIssuerUpdateConfiguration] :trusted_token_issuer_configuration
    #   Specifies a structure with settings to apply to the specified trusted
    #   token issuer. The settings that you can provide are determined by the
    #   type of the trusted token issuer that you are updating.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_trusted_token_issuer({
    #     trusted_token_issuer_arn: "TrustedTokenIssuerArn", # required
    #     name: "TrustedTokenIssuerName",
    #     trusted_token_issuer_configuration: {
    #       oidc_jwt_configuration: {
    #         claim_attribute_path: "ClaimAttributePath",
    #         identity_store_attribute_path: "JMESPath",
    #         jwks_retrieval_option: "OPEN_ID_DISCOVERY", # accepts OPEN_ID_DISCOVERY
    #       },
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/UpdateTrustedTokenIssuer AWS API Documentation
    #
    # @overload update_trusted_token_issuer(params = {})
    # @param [Hash] params ({})
    def update_trusted_token_issuer(params = {}, options = {})
      req = build_request(:update_trusted_token_issuer, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::SSOAdmin')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-ssoadmin'
      context[:gem_version] = '1.63.0'
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
