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

module Aws::EKS
  # An API client for EKS.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::EKS::Client.new(
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

    @identifier = :eks

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
    add_plugin(Aws::EKS::Plugins::Endpoints)

    # @overload initialize(options)
    #   @param [Hash] options
    #
    #   @option options [Array<Seahorse::Client::Plugin>] :plugins ([]])
    #     A list of plugins to apply to the client. Each plugin is either a
    #     class name or an instance of a plugin class.
    #
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
    #     * The `:access_key_id`, `:secret_access_key`, `:session_token`, and
    #       `:account_id` options.
    #     * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY'],
    #       ENV['AWS_SESSION_TOKEN'], and ENV['AWS_ACCOUNT_ID']
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #     * EC2/ECS IMDS instance profile - When used by default, the timeouts
    #       are very aggressive. Construct and pass an instance of
    #       `Aws::InstanceProfileCredentials` or `Aws::ECSCredentials` to
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
    #     Used when loading credentials from the shared credentials file
    #     at HOME/.aws/credentials.  When not specified, 'default' is used.
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
    #   @option options [Aws::EKS::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::EKS::EndpointParameters`.
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

    # Associates an access policy and its scope to an access entry. For more
    # information about associating access policies, see [Associating and
    # disassociating access policies to and from access entries][1] in the
    # *Amazon EKS User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/eks/latest/userguide/access-policies.html
    #
    # @option params [required, String] :cluster_name
    #   The name of your cluster.
    #
    # @option params [required, String] :principal_arn
    #   The Amazon Resource Name (ARN) of the IAM user or role for the
    #   `AccessEntry` that you're associating the access policy to.
    #
    # @option params [required, String] :policy_arn
    #   The ARN of the `AccessPolicy` that you're associating. For a list of
    #   ARNs, use `ListAccessPolicies`.
    #
    # @option params [required, Types::AccessScope] :access_scope
    #   The scope for the `AccessPolicy`. You can scope access policies to an
    #   entire cluster or to specific Kubernetes namespaces.
    #
    # @return [Types::AssociateAccessPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociateAccessPolicyResponse#cluster_name #cluster_name} => String
    #   * {Types::AssociateAccessPolicyResponse#principal_arn #principal_arn} => String
    #   * {Types::AssociateAccessPolicyResponse#associated_access_policy #associated_access_policy} => Types::AssociatedAccessPolicy
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_access_policy({
    #     cluster_name: "String", # required
    #     principal_arn: "String", # required
    #     policy_arn: "String", # required
    #     access_scope: { # required
    #       type: "cluster", # accepts cluster, namespace
    #       namespaces: ["String"],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster_name #=> String
    #   resp.principal_arn #=> String
    #   resp.associated_access_policy.policy_arn #=> String
    #   resp.associated_access_policy.access_scope.type #=> String, one of "cluster", "namespace"
    #   resp.associated_access_policy.access_scope.namespaces #=> Array
    #   resp.associated_access_policy.access_scope.namespaces[0] #=> String
    #   resp.associated_access_policy.associated_at #=> Time
    #   resp.associated_access_policy.modified_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/AssociateAccessPolicy AWS API Documentation
    #
    # @overload associate_access_policy(params = {})
    # @param [Hash] params ({})
    def associate_access_policy(params = {}, options = {})
      req = build_request(:associate_access_policy, params)
      req.send_request(options)
    end

    # Associates an encryption configuration to an existing cluster.
    #
    # Use this API to enable encryption on existing clusters that don't
    # already have encryption enabled. This allows you to implement a
    # defense-in-depth security strategy without migrating applications to
    # new Amazon EKS clusters.
    #
    # @option params [required, String] :cluster_name
    #   The name of your cluster.
    #
    # @option params [required, Array<Types::EncryptionConfig>] :encryption_config
    #   The configuration you are using for encryption.
    #
    # @option params [String] :client_request_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::AssociateEncryptionConfigResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociateEncryptionConfigResponse#update #update} => Types::Update
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_encryption_config({
    #     cluster_name: "String", # required
    #     encryption_config: [ # required
    #       {
    #         resources: ["String"],
    #         provider: {
    #           key_arn: "String",
    #         },
    #       },
    #     ],
    #     client_request_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.update.id #=> String
    #   resp.update.status #=> String, one of "InProgress", "Failed", "Cancelled", "Successful"
    #   resp.update.type #=> String, one of "VersionUpdate", "EndpointAccessUpdate", "LoggingUpdate", "ConfigUpdate", "AssociateIdentityProviderConfig", "DisassociateIdentityProviderConfig", "AssociateEncryptionConfig", "AddonUpdate", "VpcConfigUpdate", "AccessConfigUpdate", "UpgradePolicyUpdate", "ZonalShiftConfigUpdate", "AutoModeUpdate"
    #   resp.update.params #=> Array
    #   resp.update.params[0].type #=> String, one of "Version", "PlatformVersion", "EndpointPrivateAccess", "EndpointPublicAccess", "ClusterLogging", "DesiredSize", "LabelsToAdd", "LabelsToRemove", "TaintsToAdd", "TaintsToRemove", "MaxSize", "MinSize", "ReleaseVersion", "PublicAccessCidrs", "LaunchTemplateName", "LaunchTemplateVersion", "IdentityProviderConfig", "EncryptionConfig", "AddonVersion", "ServiceAccountRoleArn", "ResolveConflicts", "MaxUnavailable", "MaxUnavailablePercentage", "NodeRepairEnabled", "UpdateStrategy", "ConfigurationValues", "SecurityGroups", "Subnets", "AuthenticationMode", "PodIdentityAssociations", "UpgradePolicy", "ZonalShiftConfig", "ComputeConfig", "StorageConfig", "KubernetesNetworkConfig"
    #   resp.update.params[0].value #=> String
    #   resp.update.created_at #=> Time
    #   resp.update.errors #=> Array
    #   resp.update.errors[0].error_code #=> String, one of "SubnetNotFound", "SecurityGroupNotFound", "EniLimitReached", "IpNotAvailable", "AccessDenied", "OperationNotPermitted", "VpcIdNotFound", "Unknown", "NodeCreationFailure", "PodEvictionFailure", "InsufficientFreeAddresses", "ClusterUnreachable", "InsufficientNumberOfReplicas", "ConfigurationConflict", "AdmissionRequestDenied", "UnsupportedAddonModification", "K8sResourceNotFound"
    #   resp.update.errors[0].error_message #=> String
    #   resp.update.errors[0].resource_ids #=> Array
    #   resp.update.errors[0].resource_ids[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/AssociateEncryptionConfig AWS API Documentation
    #
    # @overload associate_encryption_config(params = {})
    # @param [Hash] params ({})
    def associate_encryption_config(params = {}, options = {})
      req = build_request(:associate_encryption_config, params)
      req.send_request(options)
    end

    # Associates an identity provider configuration to a cluster.
    #
    # If you want to authenticate identities using an identity provider, you
    # can create an identity provider configuration and associate it to your
    # cluster. After configuring authentication to your cluster you can
    # create Kubernetes `Role` and `ClusterRole` objects, assign permissions
    # to them, and then bind them to the identities using Kubernetes
    # `RoleBinding` and `ClusterRoleBinding` objects. For more information
    # see [Using RBAC Authorization][1] in the Kubernetes documentation.
    #
    #
    #
    # [1]: https://kubernetes.io/docs/reference/access-authn-authz/rbac/
    #
    # @option params [required, String] :cluster_name
    #   The name of your cluster.
    #
    # @option params [required, Types::OidcIdentityProviderConfigRequest] :oidc
    #   An object representing an OpenID Connect (OIDC) identity provider
    #   configuration.
    #
    # @option params [Hash<String,String>] :tags
    #   Metadata that assists with categorization and organization. Each tag
    #   consists of a key and an optional value. You define both. Tags don't
    #   propagate to any other cluster or Amazon Web Services resources.
    #
    # @option params [String] :client_request_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::AssociateIdentityProviderConfigResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociateIdentityProviderConfigResponse#update #update} => Types::Update
    #   * {Types::AssociateIdentityProviderConfigResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_identity_provider_config({
    #     cluster_name: "String", # required
    #     oidc: { # required
    #       identity_provider_config_name: "String", # required
    #       issuer_url: "String", # required
    #       client_id: "String", # required
    #       username_claim: "String",
    #       username_prefix: "String",
    #       groups_claim: "String",
    #       groups_prefix: "String",
    #       required_claims: {
    #         "requiredClaimsKey" => "requiredClaimsValue",
    #       },
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     client_request_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.update.id #=> String
    #   resp.update.status #=> String, one of "InProgress", "Failed", "Cancelled", "Successful"
    #   resp.update.type #=> String, one of "VersionUpdate", "EndpointAccessUpdate", "LoggingUpdate", "ConfigUpdate", "AssociateIdentityProviderConfig", "DisassociateIdentityProviderConfig", "AssociateEncryptionConfig", "AddonUpdate", "VpcConfigUpdate", "AccessConfigUpdate", "UpgradePolicyUpdate", "ZonalShiftConfigUpdate", "AutoModeUpdate"
    #   resp.update.params #=> Array
    #   resp.update.params[0].type #=> String, one of "Version", "PlatformVersion", "EndpointPrivateAccess", "EndpointPublicAccess", "ClusterLogging", "DesiredSize", "LabelsToAdd", "LabelsToRemove", "TaintsToAdd", "TaintsToRemove", "MaxSize", "MinSize", "ReleaseVersion", "PublicAccessCidrs", "LaunchTemplateName", "LaunchTemplateVersion", "IdentityProviderConfig", "EncryptionConfig", "AddonVersion", "ServiceAccountRoleArn", "ResolveConflicts", "MaxUnavailable", "MaxUnavailablePercentage", "NodeRepairEnabled", "UpdateStrategy", "ConfigurationValues", "SecurityGroups", "Subnets", "AuthenticationMode", "PodIdentityAssociations", "UpgradePolicy", "ZonalShiftConfig", "ComputeConfig", "StorageConfig", "KubernetesNetworkConfig"
    #   resp.update.params[0].value #=> String
    #   resp.update.created_at #=> Time
    #   resp.update.errors #=> Array
    #   resp.update.errors[0].error_code #=> String, one of "SubnetNotFound", "SecurityGroupNotFound", "EniLimitReached", "IpNotAvailable", "AccessDenied", "OperationNotPermitted", "VpcIdNotFound", "Unknown", "NodeCreationFailure", "PodEvictionFailure", "InsufficientFreeAddresses", "ClusterUnreachable", "InsufficientNumberOfReplicas", "ConfigurationConflict", "AdmissionRequestDenied", "UnsupportedAddonModification", "K8sResourceNotFound"
    #   resp.update.errors[0].error_message #=> String
    #   resp.update.errors[0].resource_ids #=> Array
    #   resp.update.errors[0].resource_ids[0] #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/AssociateIdentityProviderConfig AWS API Documentation
    #
    # @overload associate_identity_provider_config(params = {})
    # @param [Hash] params ({})
    def associate_identity_provider_config(params = {}, options = {})
      req = build_request(:associate_identity_provider_config, params)
      req.send_request(options)
    end

    # Creates an access entry.
    #
    # An access entry allows an IAM principal to access your cluster. Access
    # entries can replace the need to maintain entries in the `aws-auth`
    # `ConfigMap` for authentication. You have the following options for
    # authorizing an IAM principal to access Kubernetes objects on your
    # cluster: Kubernetes role-based access control (RBAC), Amazon EKS, or
    # both. Kubernetes RBAC authorization requires you to create and manage
    # Kubernetes `Role`, `ClusterRole`, `RoleBinding`, and
    # `ClusterRoleBinding` objects, in addition to managing access entries.
    # If you use Amazon EKS authorization exclusively, you don't need to
    # create and manage Kubernetes `Role`, `ClusterRole`, `RoleBinding`, and
    # `ClusterRoleBinding` objects.
    #
    # For more information about access entries, see [Access entries][1] in
    # the *Amazon EKS User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/eks/latest/userguide/access-entries.html
    #
    # @option params [required, String] :cluster_name
    #   The name of your cluster.
    #
    # @option params [required, String] :principal_arn
    #   The ARN of the IAM principal for the `AccessEntry`. You can specify
    #   one ARN for each access entry. You can't specify the same ARN in more
    #   than one access entry. This value can't be changed after access entry
    #   creation.
    #
    #   The valid principals differ depending on the type of the access entry
    #   in the `type` field. For `STANDARD` access entries, you can use every
    #   IAM principal type. For nodes (`EC2` (for EKS Auto Mode), `EC2_LINUX`,
    #   `EC2_WINDOWS`, `FARGATE_LINUX`, and `HYBRID_LINUX`), the only valid
    #   ARN is IAM roles. You can't use the STS session principal type with
    #   access entries because this is a temporary principal for each session
    #   and not a permanent identity that can be assigned permissions.
    #
    #   [IAM best practices][1] recommend using IAM roles with temporary
    #   credentials, rather than IAM users with long-term credentials.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/best-practices.html#bp-users-federation-idp
    #
    # @option params [Array<String>] :kubernetes_groups
    #   The value for `name` that you've specified for `kind: Group` as a
    #   `subject` in a Kubernetes `RoleBinding` or `ClusterRoleBinding`
    #   object. Amazon EKS doesn't confirm that the value for `name` exists
    #   in any bindings on your cluster. You can specify one or more names.
    #
    #   Kubernetes authorizes the `principalArn` of the access entry to access
    #   any cluster objects that you've specified in a Kubernetes `Role` or
    #   `ClusterRole` object that is also specified in a binding's `roleRef`.
    #   For more information about creating Kubernetes `RoleBinding`,
    #   `ClusterRoleBinding`, `Role`, or `ClusterRole` objects, see [Using
    #   RBAC Authorization in the Kubernetes documentation][1].
    #
    #   If you want Amazon EKS to authorize the `principalArn` (instead of, or
    #   in addition to Kubernetes authorizing the `principalArn`), you can
    #   associate one or more access policies to the access entry using
    #   `AssociateAccessPolicy`. If you associate any access policies, the
    #   `principalARN` has all permissions assigned in the associated access
    #   policies and all permissions in any Kubernetes `Role` or `ClusterRole`
    #   objects that the group names are bound to.
    #
    #
    #
    #   [1]: https://kubernetes.io/docs/reference/access-authn-authz/rbac/
    #
    # @option params [Hash<String,String>] :tags
    #   Metadata that assists with categorization and organization. Each tag
    #   consists of a key and an optional value. You define both. Tags don't
    #   propagate to any other cluster or Amazon Web Services resources.
    #
    # @option params [String] :client_request_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :username
    #   The username to authenticate to Kubernetes with. We recommend not
    #   specifying a username and letting Amazon EKS specify it for you. For
    #   more information about the value Amazon EKS specifies for you, or
    #   constraints before specifying your own username, see [Creating access
    #   entries][1] in the *Amazon EKS User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/access-entries.html#creating-access-entries
    #
    # @option params [String] :type
    #   The type of the new access entry. Valid values are `STANDARD`,
    #   `FARGATE_LINUX`, `EC2_LINUX`, `EC2_WINDOWS`, `EC2` (for EKS Auto
    #   Mode), `HYBRID_LINUX`, and `HYPERPOD_LINUX`.
    #
    #   If the `principalArn` is for an IAM role that's used for self-managed
    #   Amazon EC2 nodes, specify `EC2_LINUX` or `EC2_WINDOWS`. Amazon EKS
    #   grants the necessary permissions to the node for you. If the
    #   `principalArn` is for any other purpose, specify `STANDARD`. If you
    #   don't specify a value, Amazon EKS sets the value to `STANDARD`. If
    #   you have the access mode of the cluster set to `API_AND_CONFIG_MAP`,
    #   it's unnecessary to create access entries for IAM roles used with
    #   Fargate profiles or managed Amazon EC2 nodes, because Amazon EKS
    #   creates entries in the `aws-auth` `ConfigMap` for the roles. You
    #   can't change this value once you've created the access entry.
    #
    #   If you set the value to `EC2_LINUX` or `EC2_WINDOWS`, you can't
    #   specify values for `kubernetesGroups`, or associate an `AccessPolicy`
    #   to the access entry.
    #
    # @return [Types::CreateAccessEntryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAccessEntryResponse#access_entry #access_entry} => Types::AccessEntry
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_access_entry({
    #     cluster_name: "String", # required
    #     principal_arn: "String", # required
    #     kubernetes_groups: ["String"],
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     client_request_token: "String",
    #     username: "String",
    #     type: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.access_entry.cluster_name #=> String
    #   resp.access_entry.principal_arn #=> String
    #   resp.access_entry.kubernetes_groups #=> Array
    #   resp.access_entry.kubernetes_groups[0] #=> String
    #   resp.access_entry.access_entry_arn #=> String
    #   resp.access_entry.created_at #=> Time
    #   resp.access_entry.modified_at #=> Time
    #   resp.access_entry.tags #=> Hash
    #   resp.access_entry.tags["TagKey"] #=> String
    #   resp.access_entry.username #=> String
    #   resp.access_entry.type #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/CreateAccessEntry AWS API Documentation
    #
    # @overload create_access_entry(params = {})
    # @param [Hash] params ({})
    def create_access_entry(params = {}, options = {})
      req = build_request(:create_access_entry, params)
      req.send_request(options)
    end

    # Creates an Amazon EKS add-on.
    #
    # Amazon EKS add-ons help to automate the provisioning and lifecycle
    # management of common operational software for Amazon EKS clusters. For
    # more information, see [Amazon EKS add-ons][1] in the *Amazon EKS User
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/eks/latest/userguide/eks-add-ons.html
    #
    # @option params [required, String] :cluster_name
    #   The name of your cluster.
    #
    # @option params [required, String] :addon_name
    #   The name of the add-on. The name must match one of the names returned
    #   by `DescribeAddonVersions`.
    #
    # @option params [String] :addon_version
    #   The version of the add-on. The version must match one of the versions
    #   returned by [ `DescribeAddonVersions` ][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/APIReference/API_DescribeAddonVersions.html
    #
    # @option params [String] :service_account_role_arn
    #   The Amazon Resource Name (ARN) of an existing IAM role to bind to the
    #   add-on's service account. The role must be assigned the IAM
    #   permissions required by the add-on. If you don't specify an existing
    #   IAM role, then the add-on uses the permissions assigned to the node
    #   IAM role. For more information, see [Amazon EKS node IAM role][1] in
    #   the *Amazon EKS User Guide*.
    #
    #   <note markdown="1"> To specify an existing IAM role, you must have an IAM OpenID Connect
    #   (OIDC) provider created for your cluster. For more information, see
    #   [Enabling IAM roles for service accounts on your cluster][2] in the
    #   *Amazon EKS User Guide*.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/create-node-role.html
    #   [2]: https://docs.aws.amazon.com/eks/latest/userguide/enable-iam-roles-for-service-accounts.html
    #
    # @option params [String] :resolve_conflicts
    #   How to resolve field value conflicts for an Amazon EKS add-on.
    #   Conflicts are handled based on the value you choose:
    #
    #   * **None** – If the self-managed version of the add-on is installed on
    #     your cluster, Amazon EKS doesn't change the value. Creation of the
    #     add-on might fail.
    #
    #   * **Overwrite** – If the self-managed version of the add-on is
    #     installed on your cluster and the Amazon EKS default value is
    #     different than the existing value, Amazon EKS changes the value to
    #     the Amazon EKS default value.
    #
    #   * **Preserve** – This is similar to the NONE option. If the
    #     self-managed version of the add-on is installed on your cluster
    #     Amazon EKS doesn't change the add-on resource properties. Creation
    #     of the add-on might fail if conflicts are detected. This option
    #     works differently during the update operation. For more information,
    #     see [ `UpdateAddon` ][1].
    #
    #   If you don't currently have the self-managed version of the add-on
    #   installed on your cluster, the Amazon EKS add-on is installed. Amazon
    #   EKS sets all values to default values, regardless of the option that
    #   you specify.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/APIReference/API_UpdateAddon.html
    #
    # @option params [String] :client_request_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Hash<String,String>] :tags
    #   Metadata that assists with categorization and organization. Each tag
    #   consists of a key and an optional value. You define both. Tags don't
    #   propagate to any other cluster or Amazon Web Services resources.
    #
    # @option params [String] :configuration_values
    #   The set of configuration values for the add-on that's created. The
    #   values that you provide are validated against the schema returned by
    #   `DescribeAddonConfiguration`.
    #
    # @option params [Array<Types::AddonPodIdentityAssociations>] :pod_identity_associations
    #   An array of Pod Identity Assocations to be created. Each EKS Pod
    #   Identity association maps a Kubernetes service account to an IAM Role.
    #
    #   For more information, see [Attach an IAM Role to an Amazon EKS add-on
    #   using Pod Identity][1] in the *Amazon EKS User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/add-ons-iam.html
    #
    # @return [Types::CreateAddonResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAddonResponse#addon #addon} => Types::Addon
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_addon({
    #     cluster_name: "ClusterName", # required
    #     addon_name: "String", # required
    #     addon_version: "String",
    #     service_account_role_arn: "RoleArn",
    #     resolve_conflicts: "OVERWRITE", # accepts OVERWRITE, NONE, PRESERVE
    #     client_request_token: "String",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     configuration_values: "String",
    #     pod_identity_associations: [
    #       {
    #         service_account: "String", # required
    #         role_arn: "String", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.addon.addon_name #=> String
    #   resp.addon.cluster_name #=> String
    #   resp.addon.status #=> String, one of "CREATING", "ACTIVE", "CREATE_FAILED", "UPDATING", "DELETING", "DELETE_FAILED", "DEGRADED", "UPDATE_FAILED"
    #   resp.addon.addon_version #=> String
    #   resp.addon.health.issues #=> Array
    #   resp.addon.health.issues[0].code #=> String, one of "AccessDenied", "InternalFailure", "ClusterUnreachable", "InsufficientNumberOfReplicas", "ConfigurationConflict", "AdmissionRequestDenied", "UnsupportedAddonModification", "K8sResourceNotFound", "AddonSubscriptionNeeded", "AddonPermissionFailure"
    #   resp.addon.health.issues[0].message #=> String
    #   resp.addon.health.issues[0].resource_ids #=> Array
    #   resp.addon.health.issues[0].resource_ids[0] #=> String
    #   resp.addon.addon_arn #=> String
    #   resp.addon.created_at #=> Time
    #   resp.addon.modified_at #=> Time
    #   resp.addon.service_account_role_arn #=> String
    #   resp.addon.tags #=> Hash
    #   resp.addon.tags["TagKey"] #=> String
    #   resp.addon.publisher #=> String
    #   resp.addon.owner #=> String
    #   resp.addon.marketplace_information.product_id #=> String
    #   resp.addon.marketplace_information.product_url #=> String
    #   resp.addon.configuration_values #=> String
    #   resp.addon.pod_identity_associations #=> Array
    #   resp.addon.pod_identity_associations[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/CreateAddon AWS API Documentation
    #
    # @overload create_addon(params = {})
    # @param [Hash] params ({})
    def create_addon(params = {}, options = {})
      req = build_request(:create_addon, params)
      req.send_request(options)
    end

    # Creates an Amazon EKS control plane.
    #
    # The Amazon EKS control plane consists of control plane instances that
    # run the Kubernetes software, such as `etcd` and the API server. The
    # control plane runs in an account managed by Amazon Web Services, and
    # the Kubernetes API is exposed by the Amazon EKS API server endpoint.
    # Each Amazon EKS cluster control plane is single tenant and unique. It
    # runs on its own set of Amazon EC2 instances.
    #
    # The cluster control plane is provisioned across multiple Availability
    # Zones and fronted by an Elastic Load Balancing Network Load Balancer.
    # Amazon EKS also provisions elastic network interfaces in your VPC
    # subnets to provide connectivity from the control plane instances to
    # the nodes (for example, to support `kubectl exec`, `logs`, and `proxy`
    # data flows).
    #
    # Amazon EKS nodes run in your Amazon Web Services account and connect
    # to your cluster's control plane over the Kubernetes API server
    # endpoint and a certificate file that is created for your cluster.
    #
    # You can use the `endpointPublicAccess` and `endpointPrivateAccess`
    # parameters to enable or disable public and private access to your
    # cluster's Kubernetes API server endpoint. By default, public access
    # is enabled, and private access is disabled. For more information, see
    # [Amazon EKS Cluster Endpoint Access Control][1] in the <i> <i>Amazon
    # EKS User Guide</i> </i>.
    #
    # You can use the `logging` parameter to enable or disable exporting the
    # Kubernetes control plane logs for your cluster to CloudWatch Logs. By
    # default, cluster control plane logs aren't exported to CloudWatch
    # Logs. For more information, see [Amazon EKS Cluster Control Plane
    # Logs][2] in the <i> <i>Amazon EKS User Guide</i> </i>.
    #
    # <note markdown="1"> CloudWatch Logs ingestion, archive storage, and data scanning rates
    # apply to exported control plane logs. For more information, see
    # [CloudWatch Pricing][3].
    #
    #  </note>
    #
    # In most cases, it takes several minutes to create a cluster. After you
    # create an Amazon EKS cluster, you must configure your Kubernetes
    # tooling to communicate with the API server and launch nodes into your
    # cluster. For more information, see [Allowing users to access your
    # cluster][4] and [Launching Amazon EKS nodes][5] in the *Amazon EKS
    # User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/eks/latest/userguide/cluster-endpoint.html
    # [2]: https://docs.aws.amazon.com/eks/latest/userguide/control-plane-logs.html
    # [3]: http://aws.amazon.com/cloudwatch/pricing/
    # [4]: https://docs.aws.amazon.com/eks/latest/userguide/cluster-auth.html
    # [5]: https://docs.aws.amazon.com/eks/latest/userguide/launch-workers.html
    #
    # @option params [required, String] :name
    #   The unique name to give to your cluster. The name can contain only
    #   alphanumeric characters (case-sensitive), hyphens, and underscores. It
    #   must start with an alphanumeric character and can't be longer than
    #   100 characters. The name must be unique within the Amazon Web Services
    #   Region and Amazon Web Services account that you're creating the
    #   cluster in.
    #
    # @option params [String] :version
    #   The desired Kubernetes version for your cluster. If you don't specify
    #   a value here, the default version available in Amazon EKS is used.
    #
    #   <note markdown="1"> The default version might not be the latest version available.
    #
    #    </note>
    #
    # @option params [required, String] :role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that provides
    #   permissions for the Kubernetes control plane to make calls to Amazon
    #   Web Services API operations on your behalf. For more information, see
    #   [Amazon EKS Service IAM Role][1] in the <i> <i>Amazon EKS User
    #   Guide</i> </i>.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/service_IAM_role.html
    #
    # @option params [required, Types::VpcConfigRequest] :resources_vpc_config
    #   The VPC configuration that's used by the cluster control plane.
    #   Amazon EKS VPC resources have specific requirements to work properly
    #   with Kubernetes. For more information, see [Cluster VPC
    #   Considerations][1] and [Cluster Security Group Considerations][2] in
    #   the *Amazon EKS User Guide*. You must specify at least two subnets.
    #   You can specify up to five security groups. However, we recommend that
    #   you use a dedicated security group for your cluster control plane.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/network_reqs.html
    #   [2]: https://docs.aws.amazon.com/eks/latest/userguide/sec-group-reqs.html
    #
    # @option params [Types::KubernetesNetworkConfigRequest] :kubernetes_network_config
    #   The Kubernetes network configuration for the cluster.
    #
    # @option params [Types::Logging] :logging
    #   Enable or disable exporting the Kubernetes control plane logs for your
    #   cluster to CloudWatch Logs . By default, cluster control plane logs
    #   aren't exported to CloudWatch Logs . For more information, see
    #   [Amazon EKS Cluster control plane logs][1] in the <i> <i>Amazon EKS
    #   User Guide</i> </i>.
    #
    #   <note markdown="1"> CloudWatch Logs ingestion, archive storage, and data scanning rates
    #   apply to exported control plane logs. For more information, see
    #   [CloudWatch Pricing][2].
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/control-plane-logs.html
    #   [2]: http://aws.amazon.com/cloudwatch/pricing/
    #
    # @option params [String] :client_request_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Hash<String,String>] :tags
    #   Metadata that assists with categorization and organization. Each tag
    #   consists of a key and an optional value. You define both. Tags don't
    #   propagate to any other cluster or Amazon Web Services resources.
    #
    # @option params [Array<Types::EncryptionConfig>] :encryption_config
    #   The encryption configuration for the cluster.
    #
    # @option params [Types::OutpostConfigRequest] :outpost_config
    #   An object representing the configuration of your local Amazon EKS
    #   cluster on an Amazon Web Services Outpost. Before creating a local
    #   cluster on an Outpost, review [Local clusters for Amazon EKS on Amazon
    #   Web Services Outposts][1] in the *Amazon EKS User Guide*. This object
    #   isn't available for creating Amazon EKS clusters on the Amazon Web
    #   Services cloud.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/eks-outposts-local-cluster-overview.html
    #
    # @option params [Types::CreateAccessConfigRequest] :access_config
    #   The access configuration for the cluster.
    #
    # @option params [Boolean] :bootstrap_self_managed_addons
    #   If you set this value to `False` when creating a cluster, the default
    #   networking add-ons will not be installed.
    #
    #   The default networking addons include vpc-cni, coredns, and
    #   kube-proxy.
    #
    #   Use this option when you plan to install third-party alternative
    #   add-ons or self-manage the default networking add-ons.
    #
    # @option params [Types::UpgradePolicyRequest] :upgrade_policy
    #   New clusters, by default, have extended support enabled. You can
    #   disable extended support when creating a cluster by setting this value
    #   to `STANDARD`.
    #
    # @option params [Types::ZonalShiftConfigRequest] :zonal_shift_config
    #   Enable or disable ARC zonal shift for the cluster. If zonal shift is
    #   enabled, Amazon Web Services configures zonal autoshift for the
    #   cluster.
    #
    #   Zonal shift is a feature of Amazon Application Recovery Controller
    #   (ARC). ARC zonal shift is designed to be a temporary measure that
    #   allows you to move traffic for a resource away from an impaired AZ
    #   until the zonal shift expires or you cancel it. You can extend the
    #   zonal shift if necessary.
    #
    #   You can start a zonal shift for an Amazon EKS cluster, or you can
    #   allow Amazon Web Services to do it for you by enabling *zonal
    #   autoshift*. This shift updates the flow of east-to-west network
    #   traffic in your cluster to only consider network endpoints for Pods
    #   running on worker nodes in healthy AZs. Additionally, any ALB or NLB
    #   handling ingress traffic for applications in your Amazon EKS cluster
    #   will automatically route traffic to targets in the healthy AZs. For
    #   more information about zonal shift in EKS, see [Learn about Amazon
    #   Application Recovery Controller (ARC) Zonal Shift in Amazon EKS][1] in
    #   the <i> <i>Amazon EKS User Guide</i> </i>.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/zone-shift.html
    #
    # @option params [Types::RemoteNetworkConfigRequest] :remote_network_config
    #   The configuration in the cluster for EKS Hybrid Nodes. You can't
    #   change or update this configuration after the cluster is created.
    #
    # @option params [Types::ComputeConfigRequest] :compute_config
    #   Enable or disable the compute capability of EKS Auto Mode when
    #   creating your EKS Auto Mode cluster. If the compute capability is
    #   enabled, EKS Auto Mode will create and delete EC2 Managed Instances in
    #   your Amazon Web Services account
    #
    # @option params [Types::StorageConfigRequest] :storage_config
    #   Enable or disable the block storage capability of EKS Auto Mode when
    #   creating your EKS Auto Mode cluster. If the block storage capability
    #   is enabled, EKS Auto Mode will create and delete EBS volumes in your
    #   Amazon Web Services account.
    #
    # @return [Types::CreateClusterResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateClusterResponse#cluster #cluster} => Types::Cluster
    #
    #
    # @example Example: To create a new cluster
    #
    #   # The following example creates an Amazon EKS cluster called prod.
    #
    #   resp = client.create_cluster({
    #     version: "1.10", 
    #     name: "prod", 
    #     client_request_token: "1d2129a1-3d38-460a-9756-e5b91fddb951", 
    #     resources_vpc_config: {
    #       security_group_ids: [
    #         "sg-6979fe18", 
    #       ], 
    #       subnet_ids: [
    #         "subnet-6782e71e", 
    #         "subnet-e7e761ac", 
    #       ], 
    #     }, 
    #     role_arn: "arn:aws:iam::012345678910:role/eks-service-role-AWSServiceRoleForAmazonEKS-J7ONKE3BQ4PI", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_cluster({
    #     name: "ClusterName", # required
    #     version: "String",
    #     role_arn: "String", # required
    #     resources_vpc_config: { # required
    #       subnet_ids: ["String"],
    #       security_group_ids: ["String"],
    #       endpoint_public_access: false,
    #       endpoint_private_access: false,
    #       public_access_cidrs: ["String"],
    #     },
    #     kubernetes_network_config: {
    #       service_ipv_4_cidr: "String",
    #       ip_family: "ipv4", # accepts ipv4, ipv6
    #       elastic_load_balancing: {
    #         enabled: false,
    #       },
    #     },
    #     logging: {
    #       cluster_logging: [
    #         {
    #           types: ["api"], # accepts api, audit, authenticator, controllerManager, scheduler
    #           enabled: false,
    #         },
    #       ],
    #     },
    #     client_request_token: "String",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     encryption_config: [
    #       {
    #         resources: ["String"],
    #         provider: {
    #           key_arn: "String",
    #         },
    #       },
    #     ],
    #     outpost_config: {
    #       outpost_arns: ["String"], # required
    #       control_plane_instance_type: "String", # required
    #       control_plane_placement: {
    #         group_name: "String",
    #       },
    #     },
    #     access_config: {
    #       bootstrap_cluster_creator_admin_permissions: false,
    #       authentication_mode: "API", # accepts API, API_AND_CONFIG_MAP, CONFIG_MAP
    #     },
    #     bootstrap_self_managed_addons: false,
    #     upgrade_policy: {
    #       support_type: "STANDARD", # accepts STANDARD, EXTENDED
    #     },
    #     zonal_shift_config: {
    #       enabled: false,
    #     },
    #     remote_network_config: {
    #       remote_node_networks: [
    #         {
    #           cidrs: ["String"],
    #         },
    #       ],
    #       remote_pod_networks: [
    #         {
    #           cidrs: ["String"],
    #         },
    #       ],
    #     },
    #     compute_config: {
    #       enabled: false,
    #       node_pools: ["String"],
    #       node_role_arn: "String",
    #     },
    #     storage_config: {
    #       block_storage: {
    #         enabled: false,
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster.name #=> String
    #   resp.cluster.arn #=> String
    #   resp.cluster.created_at #=> Time
    #   resp.cluster.version #=> String
    #   resp.cluster.endpoint #=> String
    #   resp.cluster.role_arn #=> String
    #   resp.cluster.resources_vpc_config.subnet_ids #=> Array
    #   resp.cluster.resources_vpc_config.subnet_ids[0] #=> String
    #   resp.cluster.resources_vpc_config.security_group_ids #=> Array
    #   resp.cluster.resources_vpc_config.security_group_ids[0] #=> String
    #   resp.cluster.resources_vpc_config.cluster_security_group_id #=> String
    #   resp.cluster.resources_vpc_config.vpc_id #=> String
    #   resp.cluster.resources_vpc_config.endpoint_public_access #=> Boolean
    #   resp.cluster.resources_vpc_config.endpoint_private_access #=> Boolean
    #   resp.cluster.resources_vpc_config.public_access_cidrs #=> Array
    #   resp.cluster.resources_vpc_config.public_access_cidrs[0] #=> String
    #   resp.cluster.kubernetes_network_config.service_ipv_4_cidr #=> String
    #   resp.cluster.kubernetes_network_config.service_ipv_6_cidr #=> String
    #   resp.cluster.kubernetes_network_config.ip_family #=> String, one of "ipv4", "ipv6"
    #   resp.cluster.kubernetes_network_config.elastic_load_balancing.enabled #=> Boolean
    #   resp.cluster.logging.cluster_logging #=> Array
    #   resp.cluster.logging.cluster_logging[0].types #=> Array
    #   resp.cluster.logging.cluster_logging[0].types[0] #=> String, one of "api", "audit", "authenticator", "controllerManager", "scheduler"
    #   resp.cluster.logging.cluster_logging[0].enabled #=> Boolean
    #   resp.cluster.identity.oidc.issuer #=> String
    #   resp.cluster.status #=> String, one of "CREATING", "ACTIVE", "DELETING", "FAILED", "UPDATING", "PENDING"
    #   resp.cluster.certificate_authority.data #=> String
    #   resp.cluster.client_request_token #=> String
    #   resp.cluster.platform_version #=> String
    #   resp.cluster.tags #=> Hash
    #   resp.cluster.tags["TagKey"] #=> String
    #   resp.cluster.encryption_config #=> Array
    #   resp.cluster.encryption_config[0].resources #=> Array
    #   resp.cluster.encryption_config[0].resources[0] #=> String
    #   resp.cluster.encryption_config[0].provider.key_arn #=> String
    #   resp.cluster.connector_config.activation_id #=> String
    #   resp.cluster.connector_config.activation_code #=> String
    #   resp.cluster.connector_config.activation_expiry #=> Time
    #   resp.cluster.connector_config.provider #=> String
    #   resp.cluster.connector_config.role_arn #=> String
    #   resp.cluster.id #=> String
    #   resp.cluster.health.issues #=> Array
    #   resp.cluster.health.issues[0].code #=> String, one of "AccessDenied", "ClusterUnreachable", "ConfigurationConflict", "InternalFailure", "ResourceLimitExceeded", "ResourceNotFound", "IamRoleNotFound", "VpcNotFound", "InsufficientFreeAddresses", "Ec2ServiceNotSubscribed", "Ec2SubnetNotFound", "Ec2SecurityGroupNotFound", "KmsGrantRevoked", "KmsKeyNotFound", "KmsKeyMarkedForDeletion", "KmsKeyDisabled", "StsRegionalEndpointDisabled", "UnsupportedVersion", "Other"
    #   resp.cluster.health.issues[0].message #=> String
    #   resp.cluster.health.issues[0].resource_ids #=> Array
    #   resp.cluster.health.issues[0].resource_ids[0] #=> String
    #   resp.cluster.outpost_config.outpost_arns #=> Array
    #   resp.cluster.outpost_config.outpost_arns[0] #=> String
    #   resp.cluster.outpost_config.control_plane_instance_type #=> String
    #   resp.cluster.outpost_config.control_plane_placement.group_name #=> String
    #   resp.cluster.access_config.bootstrap_cluster_creator_admin_permissions #=> Boolean
    #   resp.cluster.access_config.authentication_mode #=> String, one of "API", "API_AND_CONFIG_MAP", "CONFIG_MAP"
    #   resp.cluster.upgrade_policy.support_type #=> String, one of "STANDARD", "EXTENDED"
    #   resp.cluster.zonal_shift_config.enabled #=> Boolean
    #   resp.cluster.remote_network_config.remote_node_networks #=> Array
    #   resp.cluster.remote_network_config.remote_node_networks[0].cidrs #=> Array
    #   resp.cluster.remote_network_config.remote_node_networks[0].cidrs[0] #=> String
    #   resp.cluster.remote_network_config.remote_pod_networks #=> Array
    #   resp.cluster.remote_network_config.remote_pod_networks[0].cidrs #=> Array
    #   resp.cluster.remote_network_config.remote_pod_networks[0].cidrs[0] #=> String
    #   resp.cluster.compute_config.enabled #=> Boolean
    #   resp.cluster.compute_config.node_pools #=> Array
    #   resp.cluster.compute_config.node_pools[0] #=> String
    #   resp.cluster.compute_config.node_role_arn #=> String
    #   resp.cluster.storage_config.block_storage.enabled #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/CreateCluster AWS API Documentation
    #
    # @overload create_cluster(params = {})
    # @param [Hash] params ({})
    def create_cluster(params = {}, options = {})
      req = build_request(:create_cluster, params)
      req.send_request(options)
    end

    # Creates an EKS Anywhere subscription. When a subscription is created,
    # it is a contract agreement for the length of the term specified in the
    # request. Licenses that are used to validate support are provisioned in
    # Amazon Web Services License Manager and the caller account is granted
    # access to EKS Anywhere Curated Packages.
    #
    # @option params [required, String] :name
    #   The unique name for your subscription. It must be unique in your
    #   Amazon Web Services account in the Amazon Web Services Region you're
    #   creating the subscription in. The name can contain only alphanumeric
    #   characters (case-sensitive), hyphens, and underscores. It must start
    #   with an alphabetic character and can't be longer than 100 characters.
    #
    # @option params [required, Types::EksAnywhereSubscriptionTerm] :term
    #   An object representing the term duration and term unit type of your
    #   subscription. This determines the term length of your subscription.
    #   Valid values are MONTHS for term unit and 12 or 36 for term duration,
    #   indicating a 12 month or 36 month subscription. This value cannot be
    #   changed after creating the subscription.
    #
    # @option params [Integer] :license_quantity
    #   The number of licenses to purchase with the subscription. Valid values
    #   are between 1 and 100. This value can't be changed after creating the
    #   subscription.
    #
    # @option params [String] :license_type
    #   The license type for all licenses in the subscription. Valid value is
    #   CLUSTER. With the CLUSTER license type, each license covers support
    #   for a single EKS Anywhere cluster.
    #
    # @option params [Boolean] :auto_renew
    #   A boolean indicating whether the subscription auto renews at the end
    #   of the term.
    #
    # @option params [String] :client_request_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Hash<String,String>] :tags
    #   The metadata for a subscription to assist with categorization and
    #   organization. Each tag consists of a key and an optional value.
    #   Subscription tags don't propagate to any other resources associated
    #   with the subscription.
    #
    # @return [Types::CreateEksAnywhereSubscriptionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateEksAnywhereSubscriptionResponse#subscription #subscription} => Types::EksAnywhereSubscription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_eks_anywhere_subscription({
    #     name: "EksAnywhereSubscriptionName", # required
    #     term: { # required
    #       duration: 1,
    #       unit: "MONTHS", # accepts MONTHS
    #     },
    #     license_quantity: 1,
    #     license_type: "Cluster", # accepts Cluster
    #     auto_renew: false,
    #     client_request_token: "String",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.subscription.id #=> String
    #   resp.subscription.arn #=> String
    #   resp.subscription.created_at #=> Time
    #   resp.subscription.effective_date #=> Time
    #   resp.subscription.expiration_date #=> Time
    #   resp.subscription.license_quantity #=> Integer
    #   resp.subscription.license_type #=> String, one of "Cluster"
    #   resp.subscription.term.duration #=> Integer
    #   resp.subscription.term.unit #=> String, one of "MONTHS"
    #   resp.subscription.status #=> String
    #   resp.subscription.auto_renew #=> Boolean
    #   resp.subscription.license_arns #=> Array
    #   resp.subscription.license_arns[0] #=> String
    #   resp.subscription.licenses #=> Array
    #   resp.subscription.licenses[0].id #=> String
    #   resp.subscription.licenses[0].token #=> String
    #   resp.subscription.tags #=> Hash
    #   resp.subscription.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/CreateEksAnywhereSubscription AWS API Documentation
    #
    # @overload create_eks_anywhere_subscription(params = {})
    # @param [Hash] params ({})
    def create_eks_anywhere_subscription(params = {}, options = {})
      req = build_request(:create_eks_anywhere_subscription, params)
      req.send_request(options)
    end

    # Creates an Fargate profile for your Amazon EKS cluster. You must have
    # at least one Fargate profile in a cluster to be able to run pods on
    # Fargate.
    #
    # The Fargate profile allows an administrator to declare which pods run
    # on Fargate and specify which pods run on which Fargate profile. This
    # declaration is done through the profile's selectors. Each profile can
    # have up to five selectors that contain a namespace and labels. A
    # namespace is required for every selector. The label field consists of
    # multiple optional key-value pairs. Pods that match the selectors are
    # scheduled on Fargate. If a to-be-scheduled pod matches any of the
    # selectors in the Fargate profile, then that pod is run on Fargate.
    #
    # When you create a Fargate profile, you must specify a pod execution
    # role to use with the pods that are scheduled with the profile. This
    # role is added to the cluster's Kubernetes [Role Based Access
    # Control][1] (RBAC) for authorization so that the `kubelet` that is
    # running on the Fargate infrastructure can register with your Amazon
    # EKS cluster so that it can appear in your cluster as a node. The pod
    # execution role also provides IAM permissions to the Fargate
    # infrastructure to allow read access to Amazon ECR image repositories.
    # For more information, see [Pod Execution Role][2] in the *Amazon EKS
    # User Guide*.
    #
    # Fargate profiles are immutable. However, you can create a new updated
    # profile to replace an existing profile and then delete the original
    # after the updated profile has finished creating.
    #
    # If any Fargate profiles in a cluster are in the `DELETING` status, you
    # must wait for that Fargate profile to finish deleting before you can
    # create any other profiles in that cluster.
    #
    # For more information, see [Fargate profile][3] in the *Amazon EKS User
    # Guide*.
    #
    #
    #
    # [1]: https://kubernetes.io/docs/reference/access-authn-authz/rbac/
    # [2]: https://docs.aws.amazon.com/eks/latest/userguide/pod-execution-role.html
    # [3]: https://docs.aws.amazon.com/eks/latest/userguide/fargate-profile.html
    #
    # @option params [required, String] :fargate_profile_name
    #   The name of the Fargate profile.
    #
    # @option params [required, String] :cluster_name
    #   The name of your cluster.
    #
    # @option params [required, String] :pod_execution_role_arn
    #   The Amazon Resource Name (ARN) of the `Pod` execution role to use for
    #   a `Pod` that matches the selectors in the Fargate profile. The `Pod`
    #   execution role allows Fargate infrastructure to register with your
    #   cluster as a node, and it provides read access to Amazon ECR image
    #   repositories. For more information, see [ `Pod` execution role][1] in
    #   the *Amazon EKS User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/pod-execution-role.html
    #
    # @option params [Array<String>] :subnets
    #   The IDs of subnets to launch a `Pod` into. A `Pod` running on Fargate
    #   isn't assigned a public IP address, so only private subnets (with no
    #   direct route to an Internet Gateway) are accepted for this parameter.
    #
    # @option params [Array<Types::FargateProfileSelector>] :selectors
    #   The selectors to match for a `Pod` to use this Fargate profile. Each
    #   selector must have an associated Kubernetes `namespace`. Optionally,
    #   you can also specify `labels` for a `namespace`. You may specify up to
    #   five selectors in a Fargate profile.
    #
    # @option params [String] :client_request_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Hash<String,String>] :tags
    #   Metadata that assists with categorization and organization. Each tag
    #   consists of a key and an optional value. You define both. Tags don't
    #   propagate to any other cluster or Amazon Web Services resources.
    #
    # @return [Types::CreateFargateProfileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateFargateProfileResponse#fargate_profile #fargate_profile} => Types::FargateProfile
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_fargate_profile({
    #     fargate_profile_name: "String", # required
    #     cluster_name: "String", # required
    #     pod_execution_role_arn: "String", # required
    #     subnets: ["String"],
    #     selectors: [
    #       {
    #         namespace: "String",
    #         labels: {
    #           "String" => "String",
    #         },
    #       },
    #     ],
    #     client_request_token: "String",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.fargate_profile.fargate_profile_name #=> String
    #   resp.fargate_profile.fargate_profile_arn #=> String
    #   resp.fargate_profile.cluster_name #=> String
    #   resp.fargate_profile.created_at #=> Time
    #   resp.fargate_profile.pod_execution_role_arn #=> String
    #   resp.fargate_profile.subnets #=> Array
    #   resp.fargate_profile.subnets[0] #=> String
    #   resp.fargate_profile.selectors #=> Array
    #   resp.fargate_profile.selectors[0].namespace #=> String
    #   resp.fargate_profile.selectors[0].labels #=> Hash
    #   resp.fargate_profile.selectors[0].labels["String"] #=> String
    #   resp.fargate_profile.status #=> String, one of "CREATING", "ACTIVE", "DELETING", "CREATE_FAILED", "DELETE_FAILED"
    #   resp.fargate_profile.tags #=> Hash
    #   resp.fargate_profile.tags["TagKey"] #=> String
    #   resp.fargate_profile.health.issues #=> Array
    #   resp.fargate_profile.health.issues[0].code #=> String, one of "PodExecutionRoleAlreadyInUse", "AccessDenied", "ClusterUnreachable", "InternalFailure"
    #   resp.fargate_profile.health.issues[0].message #=> String
    #   resp.fargate_profile.health.issues[0].resource_ids #=> Array
    #   resp.fargate_profile.health.issues[0].resource_ids[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/CreateFargateProfile AWS API Documentation
    #
    # @overload create_fargate_profile(params = {})
    # @param [Hash] params ({})
    def create_fargate_profile(params = {}, options = {})
      req = build_request(:create_fargate_profile, params)
      req.send_request(options)
    end

    # Creates a managed node group for an Amazon EKS cluster.
    #
    # You can only create a node group for your cluster that is equal to the
    # current Kubernetes version for the cluster. All node groups are
    # created with the latest AMI release version for the respective minor
    # Kubernetes version of the cluster, unless you deploy a custom AMI
    # using a launch template.
    #
    # For later updates, you will only be able to update a node group using
    # a launch template only if it was originally deployed with a launch
    # template. Additionally, the launch template ID or name must match what
    # was used when the node group was created. You can update the launch
    # template version with necessary changes. For more information about
    # using launch templates, see [Customizing managed nodes with launch
    # templates][1].
    #
    # An Amazon EKS managed node group is an Amazon EC2 Auto Scaling group
    # and associated Amazon EC2 instances that are managed by Amazon Web
    # Services for an Amazon EKS cluster. For more information, see [Managed
    # node groups][2] in the *Amazon EKS User Guide*.
    #
    # <note markdown="1"> Windows AMI types are only supported for commercial Amazon Web
    # Services Regions that support Windows on Amazon EKS.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html
    # [2]: https://docs.aws.amazon.com/eks/latest/userguide/managed-node-groups.html
    #
    # @option params [required, String] :cluster_name
    #   The name of your cluster.
    #
    # @option params [required, String] :nodegroup_name
    #   The unique name to give your node group.
    #
    # @option params [Types::NodegroupScalingConfig] :scaling_config
    #   The scaling configuration details for the Auto Scaling group that is
    #   created for your node group.
    #
    # @option params [Integer] :disk_size
    #   The root device disk size (in GiB) for your node group instances. The
    #   default disk size is 20 GiB for Linux and Bottlerocket. The default
    #   disk size is 50 GiB for Windows. If you specify `launchTemplate`, then
    #   don't specify `diskSize`, or the node group deployment will fail. For
    #   more information about using launch templates with Amazon EKS, see
    #   [Customizing managed nodes with launch templates][1] in the *Amazon
    #   EKS User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html
    #
    # @option params [required, Array<String>] :subnets
    #   The subnets to use for the Auto Scaling group that is created for your
    #   node group. If you specify `launchTemplate`, then don't specify `
    #   SubnetId ` in your launch template, or the node group deployment will
    #   fail. For more information about using launch templates with Amazon
    #   EKS, see [Customizing managed nodes with launch templates][1] in the
    #   *Amazon EKS User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html
    #
    # @option params [Array<String>] :instance_types
    #   Specify the instance types for a node group. If you specify a GPU
    #   instance type, make sure to also specify an applicable GPU AMI type
    #   with the `amiType` parameter. If you specify `launchTemplate`, then
    #   you can specify zero or one instance type in your launch template *or*
    #   you can specify 0-20 instance types for `instanceTypes`. If however,
    #   you specify an instance type in your launch template *and* specify any
    #   `instanceTypes`, the node group deployment will fail. If you don't
    #   specify an instance type in a launch template or for `instanceTypes`,
    #   then `t3.medium` is used, by default. If you specify `Spot` for
    #   `capacityType`, then we recommend specifying multiple values for
    #   `instanceTypes`. For more information, see [Managed node group
    #   capacity types][1] and [Customizing managed nodes with launch
    #   templates][2] in the *Amazon EKS User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/managed-node-groups.html#managed-node-group-capacity-types
    #   [2]: https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html
    #
    # @option params [String] :ami_type
    #   The AMI type for your node group. If you specify `launchTemplate`, and
    #   your launch template uses a custom AMI, then don't specify `amiType`,
    #   or the node group deployment will fail. If your launch template uses a
    #   Windows custom AMI, then add `eks:kube-proxy-windows` to your Windows
    #   nodes `rolearn` in the `aws-auth` `ConfigMap`. For more information
    #   about using launch templates with Amazon EKS, see [Customizing managed
    #   nodes with launch templates][1] in the *Amazon EKS User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html
    #
    # @option params [Types::RemoteAccessConfig] :remote_access
    #   The remote access configuration to use with your node group. For
    #   Linux, the protocol is SSH. For Windows, the protocol is RDP. If you
    #   specify `launchTemplate`, then don't specify `remoteAccess`, or the
    #   node group deployment will fail. For more information about using
    #   launch templates with Amazon EKS, see [Customizing managed nodes with
    #   launch templates][1] in the *Amazon EKS User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html
    #
    # @option params [required, String] :node_role
    #   The Amazon Resource Name (ARN) of the IAM role to associate with your
    #   node group. The Amazon EKS worker node `kubelet` daemon makes calls to
    #   Amazon Web Services APIs on your behalf. Nodes receive permissions for
    #   these API calls through an IAM instance profile and associated
    #   policies. Before you can launch nodes and register them into a
    #   cluster, you must create an IAM role for those nodes to use when they
    #   are launched. For more information, see [Amazon EKS node IAM role][1]
    #   in the <i> <i>Amazon EKS User Guide</i> </i>. If you specify
    #   `launchTemplate`, then don't specify ` IamInstanceProfile ` in your
    #   launch template, or the node group deployment will fail. For more
    #   information about using launch templates with Amazon EKS, see
    #   [Customizing managed nodes with launch templates][2] in the *Amazon
    #   EKS User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/create-node-role.html
    #   [2]: https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html
    #
    # @option params [Hash<String,String>] :labels
    #   The Kubernetes `labels` to apply to the nodes in the node group when
    #   they are created.
    #
    # @option params [Array<Types::Taint>] :taints
    #   The Kubernetes taints to be applied to the nodes in the node group.
    #   For more information, see [Node taints on managed node groups][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/node-taints-managed-node-groups.html
    #
    # @option params [Hash<String,String>] :tags
    #   Metadata that assists with categorization and organization. Each tag
    #   consists of a key and an optional value. You define both. Tags don't
    #   propagate to any other cluster or Amazon Web Services resources.
    #
    # @option params [String] :client_request_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Types::LaunchTemplateSpecification] :launch_template
    #   An object representing a node group's launch template specification.
    #   When using this object, don't directly specify `instanceTypes`,
    #   `diskSize`, or `remoteAccess`. You cannot later specify a different
    #   launch template ID or name than what was used to create the node
    #   group.
    #
    #   Make sure that the launch template meets the requirements in
    #   `launchTemplateSpecification`. Also refer to [Customizing managed
    #   nodes with launch templates][1] in the *Amazon EKS User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html
    #
    # @option params [Types::NodegroupUpdateConfig] :update_config
    #   The node group update configuration.
    #
    # @option params [Types::NodeRepairConfig] :node_repair_config
    #   The node auto repair configuration for the node group.
    #
    # @option params [String] :capacity_type
    #   The capacity type for your node group.
    #
    # @option params [String] :version
    #   The Kubernetes version to use for your managed nodes. By default, the
    #   Kubernetes version of the cluster is used, and this is the only
    #   accepted specified value. If you specify `launchTemplate`, and your
    #   launch template uses a custom AMI, then don't specify `version`, or
    #   the node group deployment will fail. For more information about using
    #   launch templates with Amazon EKS, see [Customizing managed nodes with
    #   launch templates][1] in the *Amazon EKS User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html
    #
    # @option params [String] :release_version
    #   The AMI version of the Amazon EKS optimized AMI to use with your node
    #   group. By default, the latest available AMI version for the node
    #   group's current Kubernetes version is used. For information about
    #   Linux versions, see [Amazon EKS optimized Amazon Linux AMI
    #   versions][1] in the *Amazon EKS User Guide*. Amazon EKS managed node
    #   groups support the November 2022 and later releases of the Windows
    #   AMIs. For information about Windows versions, see [Amazon EKS
    #   optimized Windows AMI versions][2] in the *Amazon EKS User Guide*.
    #
    #   If you specify `launchTemplate`, and your launch template uses a
    #   custom AMI, then don't specify `releaseVersion`, or the node group
    #   deployment will fail. For more information about using launch
    #   templates with Amazon EKS, see [Customizing managed nodes with launch
    #   templates][3] in the *Amazon EKS User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/eks-linux-ami-versions.html
    #   [2]: https://docs.aws.amazon.com/eks/latest/userguide/eks-ami-versions-windows.html
    #   [3]: https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html
    #
    # @return [Types::CreateNodegroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateNodegroupResponse#nodegroup #nodegroup} => Types::Nodegroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_nodegroup({
    #     cluster_name: "String", # required
    #     nodegroup_name: "String", # required
    #     scaling_config: {
    #       min_size: 1,
    #       max_size: 1,
    #       desired_size: 1,
    #     },
    #     disk_size: 1,
    #     subnets: ["String"], # required
    #     instance_types: ["String"],
    #     ami_type: "AL2_x86_64", # accepts AL2_x86_64, AL2_x86_64_GPU, AL2_ARM_64, CUSTOM, BOTTLEROCKET_ARM_64, BOTTLEROCKET_x86_64, BOTTLEROCKET_ARM_64_NVIDIA, BOTTLEROCKET_x86_64_NVIDIA, WINDOWS_CORE_2019_x86_64, WINDOWS_FULL_2019_x86_64, WINDOWS_CORE_2022_x86_64, WINDOWS_FULL_2022_x86_64, AL2023_x86_64_STANDARD, AL2023_ARM_64_STANDARD, AL2023_x86_64_NEURON, AL2023_x86_64_NVIDIA
    #     remote_access: {
    #       ec2_ssh_key: "String",
    #       source_security_groups: ["String"],
    #     },
    #     node_role: "String", # required
    #     labels: {
    #       "labelKey" => "labelValue",
    #     },
    #     taints: [
    #       {
    #         key: "taintKey",
    #         value: "taintValue",
    #         effect: "NO_SCHEDULE", # accepts NO_SCHEDULE, NO_EXECUTE, PREFER_NO_SCHEDULE
    #       },
    #     ],
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     client_request_token: "String",
    #     launch_template: {
    #       name: "String",
    #       version: "String",
    #       id: "String",
    #     },
    #     update_config: {
    #       max_unavailable: 1,
    #       max_unavailable_percentage: 1,
    #       update_strategy: "DEFAULT", # accepts DEFAULT, MINIMAL
    #     },
    #     node_repair_config: {
    #       enabled: false,
    #     },
    #     capacity_type: "ON_DEMAND", # accepts ON_DEMAND, SPOT, CAPACITY_BLOCK
    #     version: "String",
    #     release_version: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.nodegroup.nodegroup_name #=> String
    #   resp.nodegroup.nodegroup_arn #=> String
    #   resp.nodegroup.cluster_name #=> String
    #   resp.nodegroup.version #=> String
    #   resp.nodegroup.release_version #=> String
    #   resp.nodegroup.created_at #=> Time
    #   resp.nodegroup.modified_at #=> Time
    #   resp.nodegroup.status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED", "DEGRADED"
    #   resp.nodegroup.capacity_type #=> String, one of "ON_DEMAND", "SPOT", "CAPACITY_BLOCK"
    #   resp.nodegroup.scaling_config.min_size #=> Integer
    #   resp.nodegroup.scaling_config.max_size #=> Integer
    #   resp.nodegroup.scaling_config.desired_size #=> Integer
    #   resp.nodegroup.instance_types #=> Array
    #   resp.nodegroup.instance_types[0] #=> String
    #   resp.nodegroup.subnets #=> Array
    #   resp.nodegroup.subnets[0] #=> String
    #   resp.nodegroup.remote_access.ec2_ssh_key #=> String
    #   resp.nodegroup.remote_access.source_security_groups #=> Array
    #   resp.nodegroup.remote_access.source_security_groups[0] #=> String
    #   resp.nodegroup.ami_type #=> String, one of "AL2_x86_64", "AL2_x86_64_GPU", "AL2_ARM_64", "CUSTOM", "BOTTLEROCKET_ARM_64", "BOTTLEROCKET_x86_64", "BOTTLEROCKET_ARM_64_NVIDIA", "BOTTLEROCKET_x86_64_NVIDIA", "WINDOWS_CORE_2019_x86_64", "WINDOWS_FULL_2019_x86_64", "WINDOWS_CORE_2022_x86_64", "WINDOWS_FULL_2022_x86_64", "AL2023_x86_64_STANDARD", "AL2023_ARM_64_STANDARD", "AL2023_x86_64_NEURON", "AL2023_x86_64_NVIDIA"
    #   resp.nodegroup.node_role #=> String
    #   resp.nodegroup.labels #=> Hash
    #   resp.nodegroup.labels["labelKey"] #=> String
    #   resp.nodegroup.taints #=> Array
    #   resp.nodegroup.taints[0].key #=> String
    #   resp.nodegroup.taints[0].value #=> String
    #   resp.nodegroup.taints[0].effect #=> String, one of "NO_SCHEDULE", "NO_EXECUTE", "PREFER_NO_SCHEDULE"
    #   resp.nodegroup.resources.auto_scaling_groups #=> Array
    #   resp.nodegroup.resources.auto_scaling_groups[0].name #=> String
    #   resp.nodegroup.resources.remote_access_security_group #=> String
    #   resp.nodegroup.disk_size #=> Integer
    #   resp.nodegroup.health.issues #=> Array
    #   resp.nodegroup.health.issues[0].code #=> String, one of "AutoScalingGroupNotFound", "AutoScalingGroupInvalidConfiguration", "Ec2SecurityGroupNotFound", "Ec2SecurityGroupDeletionFailure", "Ec2LaunchTemplateNotFound", "Ec2LaunchTemplateVersionMismatch", "Ec2SubnetNotFound", "Ec2SubnetInvalidConfiguration", "IamInstanceProfileNotFound", "Ec2SubnetMissingIpv6Assignment", "IamLimitExceeded", "IamNodeRoleNotFound", "NodeCreationFailure", "AsgInstanceLaunchFailures", "InstanceLimitExceeded", "InsufficientFreeAddresses", "AccessDenied", "InternalFailure", "ClusterUnreachable", "AmiIdNotFound", "AutoScalingGroupOptInRequired", "AutoScalingGroupRateLimitExceeded", "Ec2LaunchTemplateDeletionFailure", "Ec2LaunchTemplateInvalidConfiguration", "Ec2LaunchTemplateMaxLimitExceeded", "Ec2SubnetListTooLong", "IamThrottling", "NodeTerminationFailure", "PodEvictionFailure", "SourceEc2LaunchTemplateNotFound", "LimitExceeded", "Unknown", "AutoScalingGroupInstanceRefreshActive", "KubernetesLabelInvalid", "Ec2LaunchTemplateVersionMaxLimitExceeded", "Ec2InstanceTypeDoesNotExist"
    #   resp.nodegroup.health.issues[0].message #=> String
    #   resp.nodegroup.health.issues[0].resource_ids #=> Array
    #   resp.nodegroup.health.issues[0].resource_ids[0] #=> String
    #   resp.nodegroup.update_config.max_unavailable #=> Integer
    #   resp.nodegroup.update_config.max_unavailable_percentage #=> Integer
    #   resp.nodegroup.update_config.update_strategy #=> String, one of "DEFAULT", "MINIMAL"
    #   resp.nodegroup.node_repair_config.enabled #=> Boolean
    #   resp.nodegroup.launch_template.name #=> String
    #   resp.nodegroup.launch_template.version #=> String
    #   resp.nodegroup.launch_template.id #=> String
    #   resp.nodegroup.tags #=> Hash
    #   resp.nodegroup.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/CreateNodegroup AWS API Documentation
    #
    # @overload create_nodegroup(params = {})
    # @param [Hash] params ({})
    def create_nodegroup(params = {}, options = {})
      req = build_request(:create_nodegroup, params)
      req.send_request(options)
    end

    # Creates an EKS Pod Identity association between a service account in
    # an Amazon EKS cluster and an IAM role with *EKS Pod Identity*. Use EKS
    # Pod Identity to give temporary IAM credentials to pods and the
    # credentials are rotated automatically.
    #
    # Amazon EKS Pod Identity associations provide the ability to manage
    # credentials for your applications, similar to the way that Amazon EC2
    # instance profiles provide credentials to Amazon EC2 instances.
    #
    # If a pod uses a service account that has an association, Amazon EKS
    # sets environment variables in the containers of the pod. The
    # environment variables configure the Amazon Web Services SDKs,
    # including the Command Line Interface, to use the EKS Pod Identity
    # credentials.
    #
    # Pod Identity is a simpler method than *IAM roles for service
    # accounts*, as this method doesn't use OIDC identity providers.
    # Additionally, you can configure a role for Pod Identity once, and
    # reuse it across clusters.
    #
    # @option params [required, String] :cluster_name
    #   The name of the cluster to create the association in.
    #
    # @option params [required, String] :namespace
    #   The name of the Kubernetes namespace inside the cluster to create the
    #   association in. The service account and the pods that use the service
    #   account must be in this namespace.
    #
    # @option params [required, String] :service_account
    #   The name of the Kubernetes service account inside the cluster to
    #   associate the IAM credentials with.
    #
    # @option params [required, String] :role_arn
    #   The Amazon Resource Name (ARN) of the IAM role to associate with the
    #   service account. The EKS Pod Identity agent manages credentials to
    #   assume this role for applications in the containers in the pods that
    #   use this service account.
    #
    # @option params [String] :client_request_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Hash<String,String>] :tags
    #   Metadata that assists with categorization and organization. Each tag
    #   consists of a key and an optional value. You define both. Tags don't
    #   propagate to any other cluster or Amazon Web Services resources.
    #
    #   The following basic restrictions apply to tags:
    #
    #   * Maximum number of tags per resource – 50
    #
    #   * For each resource, each tag key must be unique, and each tag key can
    #     have only one value.
    #
    #   * Maximum key length – 128 Unicode characters in UTF-8
    #
    #   * Maximum value length – 256 Unicode characters in UTF-8
    #
    #   * If your tagging schema is used across multiple services and
    #     resources, remember that other services may have restrictions on
    #     allowed characters. Generally allowed characters are: letters,
    #     numbers, and spaces representable in UTF-8, and the following
    #     characters: + - = . \_ : / @.
    #
    #   * Tag keys and values are case-sensitive.
    #
    #   * Do not use `aws:`, `AWS:`, or any upper or lowercase combination of
    #     such as a prefix for either keys or values as it is reserved for
    #     Amazon Web Services use. You cannot edit or delete tag keys or
    #     values with this prefix. Tags with this prefix do not count against
    #     your tags per resource limit.
    #
    # @return [Types::CreatePodIdentityAssociationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePodIdentityAssociationResponse#association #association} => Types::PodIdentityAssociation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_pod_identity_association({
    #     cluster_name: "String", # required
    #     namespace: "String", # required
    #     service_account: "String", # required
    #     role_arn: "String", # required
    #     client_request_token: "String",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.association.cluster_name #=> String
    #   resp.association.namespace #=> String
    #   resp.association.service_account #=> String
    #   resp.association.role_arn #=> String
    #   resp.association.association_arn #=> String
    #   resp.association.association_id #=> String
    #   resp.association.tags #=> Hash
    #   resp.association.tags["TagKey"] #=> String
    #   resp.association.created_at #=> Time
    #   resp.association.modified_at #=> Time
    #   resp.association.owner_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/CreatePodIdentityAssociation AWS API Documentation
    #
    # @overload create_pod_identity_association(params = {})
    # @param [Hash] params ({})
    def create_pod_identity_association(params = {}, options = {})
      req = build_request(:create_pod_identity_association, params)
      req.send_request(options)
    end

    # Deletes an access entry.
    #
    # Deleting an access entry of a type other than `Standard` can cause
    # your cluster to function improperly. If you delete an access entry in
    # error, you can recreate it.
    #
    # @option params [required, String] :cluster_name
    #   The name of your cluster.
    #
    # @option params [required, String] :principal_arn
    #   The ARN of the IAM principal for the `AccessEntry`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_access_entry({
    #     cluster_name: "String", # required
    #     principal_arn: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DeleteAccessEntry AWS API Documentation
    #
    # @overload delete_access_entry(params = {})
    # @param [Hash] params ({})
    def delete_access_entry(params = {}, options = {})
      req = build_request(:delete_access_entry, params)
      req.send_request(options)
    end

    # Deletes an Amazon EKS add-on.
    #
    # When you remove an add-on, it's deleted from the cluster. You can
    # always manually start an add-on on the cluster using the Kubernetes
    # API.
    #
    # @option params [required, String] :cluster_name
    #   The name of your cluster.
    #
    # @option params [required, String] :addon_name
    #   The name of the add-on. The name must match one of the names returned
    #   by [ `ListAddons` ][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/APIReference/API_ListAddons.html
    #
    # @option params [Boolean] :preserve
    #   Specifying this option preserves the add-on software on your cluster
    #   but Amazon EKS stops managing any settings for the add-on. If an IAM
    #   account is associated with the add-on, it isn't removed.
    #
    # @return [Types::DeleteAddonResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteAddonResponse#addon #addon} => Types::Addon
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_addon({
    #     cluster_name: "ClusterName", # required
    #     addon_name: "String", # required
    #     preserve: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.addon.addon_name #=> String
    #   resp.addon.cluster_name #=> String
    #   resp.addon.status #=> String, one of "CREATING", "ACTIVE", "CREATE_FAILED", "UPDATING", "DELETING", "DELETE_FAILED", "DEGRADED", "UPDATE_FAILED"
    #   resp.addon.addon_version #=> String
    #   resp.addon.health.issues #=> Array
    #   resp.addon.health.issues[0].code #=> String, one of "AccessDenied", "InternalFailure", "ClusterUnreachable", "InsufficientNumberOfReplicas", "ConfigurationConflict", "AdmissionRequestDenied", "UnsupportedAddonModification", "K8sResourceNotFound", "AddonSubscriptionNeeded", "AddonPermissionFailure"
    #   resp.addon.health.issues[0].message #=> String
    #   resp.addon.health.issues[0].resource_ids #=> Array
    #   resp.addon.health.issues[0].resource_ids[0] #=> String
    #   resp.addon.addon_arn #=> String
    #   resp.addon.created_at #=> Time
    #   resp.addon.modified_at #=> Time
    #   resp.addon.service_account_role_arn #=> String
    #   resp.addon.tags #=> Hash
    #   resp.addon.tags["TagKey"] #=> String
    #   resp.addon.publisher #=> String
    #   resp.addon.owner #=> String
    #   resp.addon.marketplace_information.product_id #=> String
    #   resp.addon.marketplace_information.product_url #=> String
    #   resp.addon.configuration_values #=> String
    #   resp.addon.pod_identity_associations #=> Array
    #   resp.addon.pod_identity_associations[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DeleteAddon AWS API Documentation
    #
    # @overload delete_addon(params = {})
    # @param [Hash] params ({})
    def delete_addon(params = {}, options = {})
      req = build_request(:delete_addon, params)
      req.send_request(options)
    end

    # Deletes an Amazon EKS cluster control plane.
    #
    # If you have active services in your cluster that are associated with a
    # load balancer, you must delete those services before deleting the
    # cluster so that the load balancers are deleted properly. Otherwise,
    # you can have orphaned resources in your VPC that prevent you from
    # being able to delete the VPC. For more information, see [Deleting a
    # cluster][1] in the *Amazon EKS User Guide*.
    #
    # If you have managed node groups or Fargate profiles attached to the
    # cluster, you must delete them first. For more information, see
    # `DeleteNodgroup` and `DeleteFargateProfile`.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/eks/latest/userguide/delete-cluster.html
    #
    # @option params [required, String] :name
    #   The name of the cluster to delete.
    #
    # @return [Types::DeleteClusterResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteClusterResponse#cluster #cluster} => Types::Cluster
    #
    #
    # @example Example: To delete a cluster
    #
    #   # This example command deletes a cluster named `devel` in your default region.
    #
    #   resp = client.delete_cluster({
    #     name: "devel", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_cluster({
    #     name: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster.name #=> String
    #   resp.cluster.arn #=> String
    #   resp.cluster.created_at #=> Time
    #   resp.cluster.version #=> String
    #   resp.cluster.endpoint #=> String
    #   resp.cluster.role_arn #=> String
    #   resp.cluster.resources_vpc_config.subnet_ids #=> Array
    #   resp.cluster.resources_vpc_config.subnet_ids[0] #=> String
    #   resp.cluster.resources_vpc_config.security_group_ids #=> Array
    #   resp.cluster.resources_vpc_config.security_group_ids[0] #=> String
    #   resp.cluster.resources_vpc_config.cluster_security_group_id #=> String
    #   resp.cluster.resources_vpc_config.vpc_id #=> String
    #   resp.cluster.resources_vpc_config.endpoint_public_access #=> Boolean
    #   resp.cluster.resources_vpc_config.endpoint_private_access #=> Boolean
    #   resp.cluster.resources_vpc_config.public_access_cidrs #=> Array
    #   resp.cluster.resources_vpc_config.public_access_cidrs[0] #=> String
    #   resp.cluster.kubernetes_network_config.service_ipv_4_cidr #=> String
    #   resp.cluster.kubernetes_network_config.service_ipv_6_cidr #=> String
    #   resp.cluster.kubernetes_network_config.ip_family #=> String, one of "ipv4", "ipv6"
    #   resp.cluster.kubernetes_network_config.elastic_load_balancing.enabled #=> Boolean
    #   resp.cluster.logging.cluster_logging #=> Array
    #   resp.cluster.logging.cluster_logging[0].types #=> Array
    #   resp.cluster.logging.cluster_logging[0].types[0] #=> String, one of "api", "audit", "authenticator", "controllerManager", "scheduler"
    #   resp.cluster.logging.cluster_logging[0].enabled #=> Boolean
    #   resp.cluster.identity.oidc.issuer #=> String
    #   resp.cluster.status #=> String, one of "CREATING", "ACTIVE", "DELETING", "FAILED", "UPDATING", "PENDING"
    #   resp.cluster.certificate_authority.data #=> String
    #   resp.cluster.client_request_token #=> String
    #   resp.cluster.platform_version #=> String
    #   resp.cluster.tags #=> Hash
    #   resp.cluster.tags["TagKey"] #=> String
    #   resp.cluster.encryption_config #=> Array
    #   resp.cluster.encryption_config[0].resources #=> Array
    #   resp.cluster.encryption_config[0].resources[0] #=> String
    #   resp.cluster.encryption_config[0].provider.key_arn #=> String
    #   resp.cluster.connector_config.activation_id #=> String
    #   resp.cluster.connector_config.activation_code #=> String
    #   resp.cluster.connector_config.activation_expiry #=> Time
    #   resp.cluster.connector_config.provider #=> String
    #   resp.cluster.connector_config.role_arn #=> String
    #   resp.cluster.id #=> String
    #   resp.cluster.health.issues #=> Array
    #   resp.cluster.health.issues[0].code #=> String, one of "AccessDenied", "ClusterUnreachable", "ConfigurationConflict", "InternalFailure", "ResourceLimitExceeded", "ResourceNotFound", "IamRoleNotFound", "VpcNotFound", "InsufficientFreeAddresses", "Ec2ServiceNotSubscribed", "Ec2SubnetNotFound", "Ec2SecurityGroupNotFound", "KmsGrantRevoked", "KmsKeyNotFound", "KmsKeyMarkedForDeletion", "KmsKeyDisabled", "StsRegionalEndpointDisabled", "UnsupportedVersion", "Other"
    #   resp.cluster.health.issues[0].message #=> String
    #   resp.cluster.health.issues[0].resource_ids #=> Array
    #   resp.cluster.health.issues[0].resource_ids[0] #=> String
    #   resp.cluster.outpost_config.outpost_arns #=> Array
    #   resp.cluster.outpost_config.outpost_arns[0] #=> String
    #   resp.cluster.outpost_config.control_plane_instance_type #=> String
    #   resp.cluster.outpost_config.control_plane_placement.group_name #=> String
    #   resp.cluster.access_config.bootstrap_cluster_creator_admin_permissions #=> Boolean
    #   resp.cluster.access_config.authentication_mode #=> String, one of "API", "API_AND_CONFIG_MAP", "CONFIG_MAP"
    #   resp.cluster.upgrade_policy.support_type #=> String, one of "STANDARD", "EXTENDED"
    #   resp.cluster.zonal_shift_config.enabled #=> Boolean
    #   resp.cluster.remote_network_config.remote_node_networks #=> Array
    #   resp.cluster.remote_network_config.remote_node_networks[0].cidrs #=> Array
    #   resp.cluster.remote_network_config.remote_node_networks[0].cidrs[0] #=> String
    #   resp.cluster.remote_network_config.remote_pod_networks #=> Array
    #   resp.cluster.remote_network_config.remote_pod_networks[0].cidrs #=> Array
    #   resp.cluster.remote_network_config.remote_pod_networks[0].cidrs[0] #=> String
    #   resp.cluster.compute_config.enabled #=> Boolean
    #   resp.cluster.compute_config.node_pools #=> Array
    #   resp.cluster.compute_config.node_pools[0] #=> String
    #   resp.cluster.compute_config.node_role_arn #=> String
    #   resp.cluster.storage_config.block_storage.enabled #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DeleteCluster AWS API Documentation
    #
    # @overload delete_cluster(params = {})
    # @param [Hash] params ({})
    def delete_cluster(params = {}, options = {})
      req = build_request(:delete_cluster, params)
      req.send_request(options)
    end

    # Deletes an expired or inactive subscription. Deleting inactive
    # subscriptions removes them from the Amazon Web Services Management
    # Console view and from list/describe API responses. Subscriptions can
    # only be cancelled within 7 days of creation and are cancelled by
    # creating a ticket in the Amazon Web Services Support Center.
    #
    # @option params [required, String] :id
    #   The ID of the subscription.
    #
    # @return [Types::DeleteEksAnywhereSubscriptionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteEksAnywhereSubscriptionResponse#subscription #subscription} => Types::EksAnywhereSubscription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_eks_anywhere_subscription({
    #     id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.subscription.id #=> String
    #   resp.subscription.arn #=> String
    #   resp.subscription.created_at #=> Time
    #   resp.subscription.effective_date #=> Time
    #   resp.subscription.expiration_date #=> Time
    #   resp.subscription.license_quantity #=> Integer
    #   resp.subscription.license_type #=> String, one of "Cluster"
    #   resp.subscription.term.duration #=> Integer
    #   resp.subscription.term.unit #=> String, one of "MONTHS"
    #   resp.subscription.status #=> String
    #   resp.subscription.auto_renew #=> Boolean
    #   resp.subscription.license_arns #=> Array
    #   resp.subscription.license_arns[0] #=> String
    #   resp.subscription.licenses #=> Array
    #   resp.subscription.licenses[0].id #=> String
    #   resp.subscription.licenses[0].token #=> String
    #   resp.subscription.tags #=> Hash
    #   resp.subscription.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DeleteEksAnywhereSubscription AWS API Documentation
    #
    # @overload delete_eks_anywhere_subscription(params = {})
    # @param [Hash] params ({})
    def delete_eks_anywhere_subscription(params = {}, options = {})
      req = build_request(:delete_eks_anywhere_subscription, params)
      req.send_request(options)
    end

    # Deletes an Fargate profile.
    #
    # When you delete a Fargate profile, any `Pod` running on Fargate that
    # was created with the profile is deleted. If the `Pod` matches another
    # Fargate profile, then it is scheduled on Fargate with that profile. If
    # it no longer matches any Fargate profiles, then it's not scheduled on
    # Fargate and may remain in a pending state.
    #
    # Only one Fargate profile in a cluster can be in the `DELETING` status
    # at a time. You must wait for a Fargate profile to finish deleting
    # before you can delete any other profiles in that cluster.
    #
    # @option params [required, String] :cluster_name
    #   The name of your cluster.
    #
    # @option params [required, String] :fargate_profile_name
    #   The name of the Fargate profile to delete.
    #
    # @return [Types::DeleteFargateProfileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteFargateProfileResponse#fargate_profile #fargate_profile} => Types::FargateProfile
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_fargate_profile({
    #     cluster_name: "String", # required
    #     fargate_profile_name: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.fargate_profile.fargate_profile_name #=> String
    #   resp.fargate_profile.fargate_profile_arn #=> String
    #   resp.fargate_profile.cluster_name #=> String
    #   resp.fargate_profile.created_at #=> Time
    #   resp.fargate_profile.pod_execution_role_arn #=> String
    #   resp.fargate_profile.subnets #=> Array
    #   resp.fargate_profile.subnets[0] #=> String
    #   resp.fargate_profile.selectors #=> Array
    #   resp.fargate_profile.selectors[0].namespace #=> String
    #   resp.fargate_profile.selectors[0].labels #=> Hash
    #   resp.fargate_profile.selectors[0].labels["String"] #=> String
    #   resp.fargate_profile.status #=> String, one of "CREATING", "ACTIVE", "DELETING", "CREATE_FAILED", "DELETE_FAILED"
    #   resp.fargate_profile.tags #=> Hash
    #   resp.fargate_profile.tags["TagKey"] #=> String
    #   resp.fargate_profile.health.issues #=> Array
    #   resp.fargate_profile.health.issues[0].code #=> String, one of "PodExecutionRoleAlreadyInUse", "AccessDenied", "ClusterUnreachable", "InternalFailure"
    #   resp.fargate_profile.health.issues[0].message #=> String
    #   resp.fargate_profile.health.issues[0].resource_ids #=> Array
    #   resp.fargate_profile.health.issues[0].resource_ids[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DeleteFargateProfile AWS API Documentation
    #
    # @overload delete_fargate_profile(params = {})
    # @param [Hash] params ({})
    def delete_fargate_profile(params = {}, options = {})
      req = build_request(:delete_fargate_profile, params)
      req.send_request(options)
    end

    # Deletes a managed node group.
    #
    # @option params [required, String] :cluster_name
    #   The name of your cluster.
    #
    # @option params [required, String] :nodegroup_name
    #   The name of the node group to delete.
    #
    # @return [Types::DeleteNodegroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteNodegroupResponse#nodegroup #nodegroup} => Types::Nodegroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_nodegroup({
    #     cluster_name: "String", # required
    #     nodegroup_name: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.nodegroup.nodegroup_name #=> String
    #   resp.nodegroup.nodegroup_arn #=> String
    #   resp.nodegroup.cluster_name #=> String
    #   resp.nodegroup.version #=> String
    #   resp.nodegroup.release_version #=> String
    #   resp.nodegroup.created_at #=> Time
    #   resp.nodegroup.modified_at #=> Time
    #   resp.nodegroup.status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED", "DEGRADED"
    #   resp.nodegroup.capacity_type #=> String, one of "ON_DEMAND", "SPOT", "CAPACITY_BLOCK"
    #   resp.nodegroup.scaling_config.min_size #=> Integer
    #   resp.nodegroup.scaling_config.max_size #=> Integer
    #   resp.nodegroup.scaling_config.desired_size #=> Integer
    #   resp.nodegroup.instance_types #=> Array
    #   resp.nodegroup.instance_types[0] #=> String
    #   resp.nodegroup.subnets #=> Array
    #   resp.nodegroup.subnets[0] #=> String
    #   resp.nodegroup.remote_access.ec2_ssh_key #=> String
    #   resp.nodegroup.remote_access.source_security_groups #=> Array
    #   resp.nodegroup.remote_access.source_security_groups[0] #=> String
    #   resp.nodegroup.ami_type #=> String, one of "AL2_x86_64", "AL2_x86_64_GPU", "AL2_ARM_64", "CUSTOM", "BOTTLEROCKET_ARM_64", "BOTTLEROCKET_x86_64", "BOTTLEROCKET_ARM_64_NVIDIA", "BOTTLEROCKET_x86_64_NVIDIA", "WINDOWS_CORE_2019_x86_64", "WINDOWS_FULL_2019_x86_64", "WINDOWS_CORE_2022_x86_64", "WINDOWS_FULL_2022_x86_64", "AL2023_x86_64_STANDARD", "AL2023_ARM_64_STANDARD", "AL2023_x86_64_NEURON", "AL2023_x86_64_NVIDIA"
    #   resp.nodegroup.node_role #=> String
    #   resp.nodegroup.labels #=> Hash
    #   resp.nodegroup.labels["labelKey"] #=> String
    #   resp.nodegroup.taints #=> Array
    #   resp.nodegroup.taints[0].key #=> String
    #   resp.nodegroup.taints[0].value #=> String
    #   resp.nodegroup.taints[0].effect #=> String, one of "NO_SCHEDULE", "NO_EXECUTE", "PREFER_NO_SCHEDULE"
    #   resp.nodegroup.resources.auto_scaling_groups #=> Array
    #   resp.nodegroup.resources.auto_scaling_groups[0].name #=> String
    #   resp.nodegroup.resources.remote_access_security_group #=> String
    #   resp.nodegroup.disk_size #=> Integer
    #   resp.nodegroup.health.issues #=> Array
    #   resp.nodegroup.health.issues[0].code #=> String, one of "AutoScalingGroupNotFound", "AutoScalingGroupInvalidConfiguration", "Ec2SecurityGroupNotFound", "Ec2SecurityGroupDeletionFailure", "Ec2LaunchTemplateNotFound", "Ec2LaunchTemplateVersionMismatch", "Ec2SubnetNotFound", "Ec2SubnetInvalidConfiguration", "IamInstanceProfileNotFound", "Ec2SubnetMissingIpv6Assignment", "IamLimitExceeded", "IamNodeRoleNotFound", "NodeCreationFailure", "AsgInstanceLaunchFailures", "InstanceLimitExceeded", "InsufficientFreeAddresses", "AccessDenied", "InternalFailure", "ClusterUnreachable", "AmiIdNotFound", "AutoScalingGroupOptInRequired", "AutoScalingGroupRateLimitExceeded", "Ec2LaunchTemplateDeletionFailure", "Ec2LaunchTemplateInvalidConfiguration", "Ec2LaunchTemplateMaxLimitExceeded", "Ec2SubnetListTooLong", "IamThrottling", "NodeTerminationFailure", "PodEvictionFailure", "SourceEc2LaunchTemplateNotFound", "LimitExceeded", "Unknown", "AutoScalingGroupInstanceRefreshActive", "KubernetesLabelInvalid", "Ec2LaunchTemplateVersionMaxLimitExceeded", "Ec2InstanceTypeDoesNotExist"
    #   resp.nodegroup.health.issues[0].message #=> String
    #   resp.nodegroup.health.issues[0].resource_ids #=> Array
    #   resp.nodegroup.health.issues[0].resource_ids[0] #=> String
    #   resp.nodegroup.update_config.max_unavailable #=> Integer
    #   resp.nodegroup.update_config.max_unavailable_percentage #=> Integer
    #   resp.nodegroup.update_config.update_strategy #=> String, one of "DEFAULT", "MINIMAL"
    #   resp.nodegroup.node_repair_config.enabled #=> Boolean
    #   resp.nodegroup.launch_template.name #=> String
    #   resp.nodegroup.launch_template.version #=> String
    #   resp.nodegroup.launch_template.id #=> String
    #   resp.nodegroup.tags #=> Hash
    #   resp.nodegroup.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DeleteNodegroup AWS API Documentation
    #
    # @overload delete_nodegroup(params = {})
    # @param [Hash] params ({})
    def delete_nodegroup(params = {}, options = {})
      req = build_request(:delete_nodegroup, params)
      req.send_request(options)
    end

    # Deletes a EKS Pod Identity association.
    #
    # The temporary Amazon Web Services credentials from the previous IAM
    # role session might still be valid until the session expiry. If you
    # need to immediately revoke the temporary session credentials, then go
    # to the role in the IAM console.
    #
    # @option params [required, String] :cluster_name
    #   The cluster name that
    #
    # @option params [required, String] :association_id
    #   The ID of the association to be deleted.
    #
    # @return [Types::DeletePodIdentityAssociationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeletePodIdentityAssociationResponse#association #association} => Types::PodIdentityAssociation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_pod_identity_association({
    #     cluster_name: "String", # required
    #     association_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.association.cluster_name #=> String
    #   resp.association.namespace #=> String
    #   resp.association.service_account #=> String
    #   resp.association.role_arn #=> String
    #   resp.association.association_arn #=> String
    #   resp.association.association_id #=> String
    #   resp.association.tags #=> Hash
    #   resp.association.tags["TagKey"] #=> String
    #   resp.association.created_at #=> Time
    #   resp.association.modified_at #=> Time
    #   resp.association.owner_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DeletePodIdentityAssociation AWS API Documentation
    #
    # @overload delete_pod_identity_association(params = {})
    # @param [Hash] params ({})
    def delete_pod_identity_association(params = {}, options = {})
      req = build_request(:delete_pod_identity_association, params)
      req.send_request(options)
    end

    # Deregisters a connected cluster to remove it from the Amazon EKS
    # control plane.
    #
    # A connected cluster is a Kubernetes cluster that you've connected to
    # your control plane using the [Amazon EKS Connector][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/eks/latest/userguide/eks-connector.html
    #
    # @option params [required, String] :name
    #   The name of the connected cluster to deregister.
    #
    # @return [Types::DeregisterClusterResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeregisterClusterResponse#cluster #cluster} => Types::Cluster
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deregister_cluster({
    #     name: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster.name #=> String
    #   resp.cluster.arn #=> String
    #   resp.cluster.created_at #=> Time
    #   resp.cluster.version #=> String
    #   resp.cluster.endpoint #=> String
    #   resp.cluster.role_arn #=> String
    #   resp.cluster.resources_vpc_config.subnet_ids #=> Array
    #   resp.cluster.resources_vpc_config.subnet_ids[0] #=> String
    #   resp.cluster.resources_vpc_config.security_group_ids #=> Array
    #   resp.cluster.resources_vpc_config.security_group_ids[0] #=> String
    #   resp.cluster.resources_vpc_config.cluster_security_group_id #=> String
    #   resp.cluster.resources_vpc_config.vpc_id #=> String
    #   resp.cluster.resources_vpc_config.endpoint_public_access #=> Boolean
    #   resp.cluster.resources_vpc_config.endpoint_private_access #=> Boolean
    #   resp.cluster.resources_vpc_config.public_access_cidrs #=> Array
    #   resp.cluster.resources_vpc_config.public_access_cidrs[0] #=> String
    #   resp.cluster.kubernetes_network_config.service_ipv_4_cidr #=> String
    #   resp.cluster.kubernetes_network_config.service_ipv_6_cidr #=> String
    #   resp.cluster.kubernetes_network_config.ip_family #=> String, one of "ipv4", "ipv6"
    #   resp.cluster.kubernetes_network_config.elastic_load_balancing.enabled #=> Boolean
    #   resp.cluster.logging.cluster_logging #=> Array
    #   resp.cluster.logging.cluster_logging[0].types #=> Array
    #   resp.cluster.logging.cluster_logging[0].types[0] #=> String, one of "api", "audit", "authenticator", "controllerManager", "scheduler"
    #   resp.cluster.logging.cluster_logging[0].enabled #=> Boolean
    #   resp.cluster.identity.oidc.issuer #=> String
    #   resp.cluster.status #=> String, one of "CREATING", "ACTIVE", "DELETING", "FAILED", "UPDATING", "PENDING"
    #   resp.cluster.certificate_authority.data #=> String
    #   resp.cluster.client_request_token #=> String
    #   resp.cluster.platform_version #=> String
    #   resp.cluster.tags #=> Hash
    #   resp.cluster.tags["TagKey"] #=> String
    #   resp.cluster.encryption_config #=> Array
    #   resp.cluster.encryption_config[0].resources #=> Array
    #   resp.cluster.encryption_config[0].resources[0] #=> String
    #   resp.cluster.encryption_config[0].provider.key_arn #=> String
    #   resp.cluster.connector_config.activation_id #=> String
    #   resp.cluster.connector_config.activation_code #=> String
    #   resp.cluster.connector_config.activation_expiry #=> Time
    #   resp.cluster.connector_config.provider #=> String
    #   resp.cluster.connector_config.role_arn #=> String
    #   resp.cluster.id #=> String
    #   resp.cluster.health.issues #=> Array
    #   resp.cluster.health.issues[0].code #=> String, one of "AccessDenied", "ClusterUnreachable", "ConfigurationConflict", "InternalFailure", "ResourceLimitExceeded", "ResourceNotFound", "IamRoleNotFound", "VpcNotFound", "InsufficientFreeAddresses", "Ec2ServiceNotSubscribed", "Ec2SubnetNotFound", "Ec2SecurityGroupNotFound", "KmsGrantRevoked", "KmsKeyNotFound", "KmsKeyMarkedForDeletion", "KmsKeyDisabled", "StsRegionalEndpointDisabled", "UnsupportedVersion", "Other"
    #   resp.cluster.health.issues[0].message #=> String
    #   resp.cluster.health.issues[0].resource_ids #=> Array
    #   resp.cluster.health.issues[0].resource_ids[0] #=> String
    #   resp.cluster.outpost_config.outpost_arns #=> Array
    #   resp.cluster.outpost_config.outpost_arns[0] #=> String
    #   resp.cluster.outpost_config.control_plane_instance_type #=> String
    #   resp.cluster.outpost_config.control_plane_placement.group_name #=> String
    #   resp.cluster.access_config.bootstrap_cluster_creator_admin_permissions #=> Boolean
    #   resp.cluster.access_config.authentication_mode #=> String, one of "API", "API_AND_CONFIG_MAP", "CONFIG_MAP"
    #   resp.cluster.upgrade_policy.support_type #=> String, one of "STANDARD", "EXTENDED"
    #   resp.cluster.zonal_shift_config.enabled #=> Boolean
    #   resp.cluster.remote_network_config.remote_node_networks #=> Array
    #   resp.cluster.remote_network_config.remote_node_networks[0].cidrs #=> Array
    #   resp.cluster.remote_network_config.remote_node_networks[0].cidrs[0] #=> String
    #   resp.cluster.remote_network_config.remote_pod_networks #=> Array
    #   resp.cluster.remote_network_config.remote_pod_networks[0].cidrs #=> Array
    #   resp.cluster.remote_network_config.remote_pod_networks[0].cidrs[0] #=> String
    #   resp.cluster.compute_config.enabled #=> Boolean
    #   resp.cluster.compute_config.node_pools #=> Array
    #   resp.cluster.compute_config.node_pools[0] #=> String
    #   resp.cluster.compute_config.node_role_arn #=> String
    #   resp.cluster.storage_config.block_storage.enabled #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DeregisterCluster AWS API Documentation
    #
    # @overload deregister_cluster(params = {})
    # @param [Hash] params ({})
    def deregister_cluster(params = {}, options = {})
      req = build_request(:deregister_cluster, params)
      req.send_request(options)
    end

    # Describes an access entry.
    #
    # @option params [required, String] :cluster_name
    #   The name of your cluster.
    #
    # @option params [required, String] :principal_arn
    #   The ARN of the IAM principal for the `AccessEntry`.
    #
    # @return [Types::DescribeAccessEntryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAccessEntryResponse#access_entry #access_entry} => Types::AccessEntry
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_access_entry({
    #     cluster_name: "String", # required
    #     principal_arn: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.access_entry.cluster_name #=> String
    #   resp.access_entry.principal_arn #=> String
    #   resp.access_entry.kubernetes_groups #=> Array
    #   resp.access_entry.kubernetes_groups[0] #=> String
    #   resp.access_entry.access_entry_arn #=> String
    #   resp.access_entry.created_at #=> Time
    #   resp.access_entry.modified_at #=> Time
    #   resp.access_entry.tags #=> Hash
    #   resp.access_entry.tags["TagKey"] #=> String
    #   resp.access_entry.username #=> String
    #   resp.access_entry.type #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DescribeAccessEntry AWS API Documentation
    #
    # @overload describe_access_entry(params = {})
    # @param [Hash] params ({})
    def describe_access_entry(params = {}, options = {})
      req = build_request(:describe_access_entry, params)
      req.send_request(options)
    end

    # Describes an Amazon EKS add-on.
    #
    # @option params [required, String] :cluster_name
    #   The name of your cluster.
    #
    # @option params [required, String] :addon_name
    #   The name of the add-on. The name must match one of the names returned
    #   by [ `ListAddons` ][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/APIReference/API_ListAddons.html
    #
    # @return [Types::DescribeAddonResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAddonResponse#addon #addon} => Types::Addon
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_addon({
    #     cluster_name: "ClusterName", # required
    #     addon_name: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.addon.addon_name #=> String
    #   resp.addon.cluster_name #=> String
    #   resp.addon.status #=> String, one of "CREATING", "ACTIVE", "CREATE_FAILED", "UPDATING", "DELETING", "DELETE_FAILED", "DEGRADED", "UPDATE_FAILED"
    #   resp.addon.addon_version #=> String
    #   resp.addon.health.issues #=> Array
    #   resp.addon.health.issues[0].code #=> String, one of "AccessDenied", "InternalFailure", "ClusterUnreachable", "InsufficientNumberOfReplicas", "ConfigurationConflict", "AdmissionRequestDenied", "UnsupportedAddonModification", "K8sResourceNotFound", "AddonSubscriptionNeeded", "AddonPermissionFailure"
    #   resp.addon.health.issues[0].message #=> String
    #   resp.addon.health.issues[0].resource_ids #=> Array
    #   resp.addon.health.issues[0].resource_ids[0] #=> String
    #   resp.addon.addon_arn #=> String
    #   resp.addon.created_at #=> Time
    #   resp.addon.modified_at #=> Time
    #   resp.addon.service_account_role_arn #=> String
    #   resp.addon.tags #=> Hash
    #   resp.addon.tags["TagKey"] #=> String
    #   resp.addon.publisher #=> String
    #   resp.addon.owner #=> String
    #   resp.addon.marketplace_information.product_id #=> String
    #   resp.addon.marketplace_information.product_url #=> String
    #   resp.addon.configuration_values #=> String
    #   resp.addon.pod_identity_associations #=> Array
    #   resp.addon.pod_identity_associations[0] #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * addon_active
    #   * addon_deleted
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DescribeAddon AWS API Documentation
    #
    # @overload describe_addon(params = {})
    # @param [Hash] params ({})
    def describe_addon(params = {}, options = {})
      req = build_request(:describe_addon, params)
      req.send_request(options)
    end

    # Returns configuration options.
    #
    # @option params [required, String] :addon_name
    #   The name of the add-on. The name must match one of the names returned
    #   by `DescribeAddonVersions`.
    #
    # @option params [required, String] :addon_version
    #   The version of the add-on. The version must match one of the versions
    #   returned by [ `DescribeAddonVersions` ][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/APIReference/API_DescribeAddonVersions.html
    #
    # @return [Types::DescribeAddonConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAddonConfigurationResponse#addon_name #addon_name} => String
    #   * {Types::DescribeAddonConfigurationResponse#addon_version #addon_version} => String
    #   * {Types::DescribeAddonConfigurationResponse#configuration_schema #configuration_schema} => String
    #   * {Types::DescribeAddonConfigurationResponse#pod_identity_configuration #pod_identity_configuration} => Array&lt;Types::AddonPodIdentityConfiguration&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_addon_configuration({
    #     addon_name: "String", # required
    #     addon_version: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.addon_name #=> String
    #   resp.addon_version #=> String
    #   resp.configuration_schema #=> String
    #   resp.pod_identity_configuration #=> Array
    #   resp.pod_identity_configuration[0].service_account #=> String
    #   resp.pod_identity_configuration[0].recommended_managed_policies #=> Array
    #   resp.pod_identity_configuration[0].recommended_managed_policies[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DescribeAddonConfiguration AWS API Documentation
    #
    # @overload describe_addon_configuration(params = {})
    # @param [Hash] params ({})
    def describe_addon_configuration(params = {}, options = {})
      req = build_request(:describe_addon_configuration, params)
      req.send_request(options)
    end

    # Describes the versions for an add-on.
    #
    # Information such as the Kubernetes versions that you can use the
    # add-on with, the `owner`, `publisher`, and the `type` of the add-on
    # are returned.
    #
    # @option params [String] :kubernetes_version
    #   The Kubernetes versions that you can use the add-on with.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results, returned in paginated output. You
    #   receive `maxResults` in a single page, along with a `nextToken`
    #   response element. You can see the remaining results of the initial
    #   request by sending another request with the returned `nextToken`
    #   value. This value can be between 1 and 100. If you don't use this
    #   parameter, 100 results and a `nextToken` value, if applicable, are
    #   returned.
    #
    # @option params [String] :next_token
    #   The `nextToken` value returned from a previous paginated request,
    #   where `maxResults` was used and the results exceeded the value of that
    #   parameter. Pagination continues from the end of the previous results
    #   that returned the `nextToken` value. This value is null when there are
    #   no more results to return.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is used only
    #   to retrieve the next items in a list and not for other programmatic
    #   purposes.
    #
    #    </note>
    #
    # @option params [String] :addon_name
    #   The name of the add-on. The name must match one of the names returned
    #   by [ `ListAddons` ][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/APIReference/API_ListAddons.html
    #
    # @option params [Array<String>] :types
    #   The type of the add-on. For valid `types`, don't specify a value for
    #   this property.
    #
    # @option params [Array<String>] :publishers
    #   The publisher of the add-on. For valid `publishers`, don't specify a
    #   value for this property.
    #
    # @option params [Array<String>] :owners
    #   The owner of the add-on. For valid `owners`, don't specify a value
    #   for this property.
    #
    # @return [Types::DescribeAddonVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAddonVersionsResponse#addons #addons} => Array&lt;Types::AddonInfo&gt;
    #   * {Types::DescribeAddonVersionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_addon_versions({
    #     kubernetes_version: "String",
    #     max_results: 1,
    #     next_token: "String",
    #     addon_name: "String",
    #     types: ["String"],
    #     publishers: ["String"],
    #     owners: ["String"],
    #   })
    #
    # @example Response structure
    #
    #   resp.addons #=> Array
    #   resp.addons[0].addon_name #=> String
    #   resp.addons[0].type #=> String
    #   resp.addons[0].addon_versions #=> Array
    #   resp.addons[0].addon_versions[0].addon_version #=> String
    #   resp.addons[0].addon_versions[0].architecture #=> Array
    #   resp.addons[0].addon_versions[0].architecture[0] #=> String
    #   resp.addons[0].addon_versions[0].compute_types #=> Array
    #   resp.addons[0].addon_versions[0].compute_types[0] #=> String
    #   resp.addons[0].addon_versions[0].compatibilities #=> Array
    #   resp.addons[0].addon_versions[0].compatibilities[0].cluster_version #=> String
    #   resp.addons[0].addon_versions[0].compatibilities[0].platform_versions #=> Array
    #   resp.addons[0].addon_versions[0].compatibilities[0].platform_versions[0] #=> String
    #   resp.addons[0].addon_versions[0].compatibilities[0].default_version #=> Boolean
    #   resp.addons[0].addon_versions[0].requires_configuration #=> Boolean
    #   resp.addons[0].addon_versions[0].requires_iam_permissions #=> Boolean
    #   resp.addons[0].publisher #=> String
    #   resp.addons[0].owner #=> String
    #   resp.addons[0].marketplace_information.product_id #=> String
    #   resp.addons[0].marketplace_information.product_url #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DescribeAddonVersions AWS API Documentation
    #
    # @overload describe_addon_versions(params = {})
    # @param [Hash] params ({})
    def describe_addon_versions(params = {}, options = {})
      req = build_request(:describe_addon_versions, params)
      req.send_request(options)
    end

    # Describes an Amazon EKS cluster.
    #
    # The API server endpoint and certificate authority data returned by
    # this operation are required for `kubelet` and `kubectl` to communicate
    # with your Kubernetes API server. For more information, see [Creating
    # or updating a `kubeconfig` file for an Amazon EKS cluster][1].
    #
    # <note markdown="1"> The API server endpoint and certificate authority data aren't
    # available until the cluster reaches the `ACTIVE` state.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/eks/latest/userguide/create-kubeconfig.html
    #
    # @option params [required, String] :name
    #   The name of your cluster.
    #
    # @return [Types::DescribeClusterResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeClusterResponse#cluster #cluster} => Types::Cluster
    #
    #
    # @example Example: To describe a cluster
    #
    #   # This example command provides a description of the specified cluster in your default region.
    #
    #   resp = client.describe_cluster({
    #     name: "devel", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     cluster: {
    #       version: "1.10", 
    #       name: "devel", 
    #       arn: "arn:aws:eks:us-west-2:012345678910:cluster/devel", 
    #       certificate_authority: {
    #         data: "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUN5RENDQWJDZ0F3SUJBZ0lCQURBTkJna3Foa2lHOXcwQkFRc0ZBREFWTVJNd0VRWURWUVFERXdwcmRXSmwKY201bGRHVnpNQjRYRFRFNE1EVXpNVEl6TVRFek1Wb1hEVEk0TURVeU9ESXpNVEV6TVZvd0ZURVRNQkVHQTFVRQpBeE1LYTNWaVpYSnVaWFJsY3pDQ0FTSXdEUVlKS29aSWh2Y05BUUVCQlFBRGdnRVBBRENDQVFvQ2dnRUJBTTZWCjVUaG4rdFcySm9Xa2hQMzRlVUZMNitaRXJOZGIvWVdrTmtDdWNGS2RaaXl2TjlMVmdvUmV2MjlFVFZlN1ZGbSsKUTJ3ZURyRXJiQyt0dVlibkFuN1ZLYmE3ay9hb1BHekZMdmVnb0t6b0M1N2NUdGVwZzRIazRlK2tIWHNaME10MApyb3NzcjhFM1ROeExETnNJTThGL1cwdjhsTGNCbWRPcjQyV2VuTjFHZXJnaDNSZ2wzR3JIazBnNTU0SjFWenJZCm9hTi8zODFUczlOTFF2QTBXb0xIcjBFRlZpTFdSZEoyZ3lXaC9ybDVyOFNDOHZaQXg1YW1BU0hVd01aTFpWRC8KTDBpOW4wRVM0MkpVdzQyQmxHOEdpd3NhTkJWV3lUTHZKclNhRXlDSHFtVVZaUTFDZkFXUjl0L3JleVVOVXM3TApWV1FqM3BFbk9RMitMSWJrc0RzQ0F3RUFBYU1qTUNFd0RnWURWUjBQQVFIL0JBUURBZ0trTUE4R0ExVWRFd0VCCi93UUZNQU1CQWY4d0RRWUpLb1pJaHZjTkFRRUxCUUFEZ2dFQkFNZ3RsQ1dIQ2U2YzVHMXl2YlFTS0Q4K2hUalkKSm1NSG56L2EvRGt0WG9YUjFVQzIrZUgzT1BZWmVjRVZZZHVaSlZCckNNQ2VWR0ZkeWdBYlNLc1FxWDg0S2RXbAp1MU5QaERDSmEyRHliN2pVMUV6VThTQjFGZUZ5ZFE3a0hNS1E1blpBRVFQOTY4S01hSGUrSm0yQ2x1UFJWbEJVCjF4WlhTS1gzTVZ0K1Q0SU1EV2d6c3JRSjVuQkRjdEtLcUZtM3pKdVVubHo5ZEpVckdscEltMjVJWXJDckxYUFgKWkUwRUtRNWEzMHhkVWNrTHRGQkQrOEtBdFdqSS9yZUZPNzM1YnBMdVoyOTBaNm42QlF3elRrS0p4cnhVc3QvOAppNGsxcnlsaUdWMm5SSjBUYjNORkczNHgrYWdzYTRoSTFPbU90TFM0TmgvRXJxT3lIUXNDc2hEQUtKUT0KLS0tLS1FTkQgQ0VSVElGSUNBVEUtLS0tLQo=", 
    #       }, 
    #       created_at: Time.parse(1527807879.988), 
    #       endpoint: "https://A0DCCD80A04F01705DD065655C30CC3D.yl4.us-west-2.eks.amazonaws.com", 
    #       resources_vpc_config: {
    #         security_group_ids: [
    #           "sg-6979fe18", 
    #         ], 
    #         subnet_ids: [
    #           "subnet-6782e71e", 
    #           "subnet-e7e761ac", 
    #         ], 
    #         vpc_id: "vpc-950809ec", 
    #       }, 
    #       role_arn: "arn:aws:iam::012345678910:role/eks-service-role-AWSServiceRoleForAmazonEKS-J7ONKE3BQ4PI", 
    #       status: "ACTIVE", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_cluster({
    #     name: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster.name #=> String
    #   resp.cluster.arn #=> String
    #   resp.cluster.created_at #=> Time
    #   resp.cluster.version #=> String
    #   resp.cluster.endpoint #=> String
    #   resp.cluster.role_arn #=> String
    #   resp.cluster.resources_vpc_config.subnet_ids #=> Array
    #   resp.cluster.resources_vpc_config.subnet_ids[0] #=> String
    #   resp.cluster.resources_vpc_config.security_group_ids #=> Array
    #   resp.cluster.resources_vpc_config.security_group_ids[0] #=> String
    #   resp.cluster.resources_vpc_config.cluster_security_group_id #=> String
    #   resp.cluster.resources_vpc_config.vpc_id #=> String
    #   resp.cluster.resources_vpc_config.endpoint_public_access #=> Boolean
    #   resp.cluster.resources_vpc_config.endpoint_private_access #=> Boolean
    #   resp.cluster.resources_vpc_config.public_access_cidrs #=> Array
    #   resp.cluster.resources_vpc_config.public_access_cidrs[0] #=> String
    #   resp.cluster.kubernetes_network_config.service_ipv_4_cidr #=> String
    #   resp.cluster.kubernetes_network_config.service_ipv_6_cidr #=> String
    #   resp.cluster.kubernetes_network_config.ip_family #=> String, one of "ipv4", "ipv6"
    #   resp.cluster.kubernetes_network_config.elastic_load_balancing.enabled #=> Boolean
    #   resp.cluster.logging.cluster_logging #=> Array
    #   resp.cluster.logging.cluster_logging[0].types #=> Array
    #   resp.cluster.logging.cluster_logging[0].types[0] #=> String, one of "api", "audit", "authenticator", "controllerManager", "scheduler"
    #   resp.cluster.logging.cluster_logging[0].enabled #=> Boolean
    #   resp.cluster.identity.oidc.issuer #=> String
    #   resp.cluster.status #=> String, one of "CREATING", "ACTIVE", "DELETING", "FAILED", "UPDATING", "PENDING"
    #   resp.cluster.certificate_authority.data #=> String
    #   resp.cluster.client_request_token #=> String
    #   resp.cluster.platform_version #=> String
    #   resp.cluster.tags #=> Hash
    #   resp.cluster.tags["TagKey"] #=> String
    #   resp.cluster.encryption_config #=> Array
    #   resp.cluster.encryption_config[0].resources #=> Array
    #   resp.cluster.encryption_config[0].resources[0] #=> String
    #   resp.cluster.encryption_config[0].provider.key_arn #=> String
    #   resp.cluster.connector_config.activation_id #=> String
    #   resp.cluster.connector_config.activation_code #=> String
    #   resp.cluster.connector_config.activation_expiry #=> Time
    #   resp.cluster.connector_config.provider #=> String
    #   resp.cluster.connector_config.role_arn #=> String
    #   resp.cluster.id #=> String
    #   resp.cluster.health.issues #=> Array
    #   resp.cluster.health.issues[0].code #=> String, one of "AccessDenied", "ClusterUnreachable", "ConfigurationConflict", "InternalFailure", "ResourceLimitExceeded", "ResourceNotFound", "IamRoleNotFound", "VpcNotFound", "InsufficientFreeAddresses", "Ec2ServiceNotSubscribed", "Ec2SubnetNotFound", "Ec2SecurityGroupNotFound", "KmsGrantRevoked", "KmsKeyNotFound", "KmsKeyMarkedForDeletion", "KmsKeyDisabled", "StsRegionalEndpointDisabled", "UnsupportedVersion", "Other"
    #   resp.cluster.health.issues[0].message #=> String
    #   resp.cluster.health.issues[0].resource_ids #=> Array
    #   resp.cluster.health.issues[0].resource_ids[0] #=> String
    #   resp.cluster.outpost_config.outpost_arns #=> Array
    #   resp.cluster.outpost_config.outpost_arns[0] #=> String
    #   resp.cluster.outpost_config.control_plane_instance_type #=> String
    #   resp.cluster.outpost_config.control_plane_placement.group_name #=> String
    #   resp.cluster.access_config.bootstrap_cluster_creator_admin_permissions #=> Boolean
    #   resp.cluster.access_config.authentication_mode #=> String, one of "API", "API_AND_CONFIG_MAP", "CONFIG_MAP"
    #   resp.cluster.upgrade_policy.support_type #=> String, one of "STANDARD", "EXTENDED"
    #   resp.cluster.zonal_shift_config.enabled #=> Boolean
    #   resp.cluster.remote_network_config.remote_node_networks #=> Array
    #   resp.cluster.remote_network_config.remote_node_networks[0].cidrs #=> Array
    #   resp.cluster.remote_network_config.remote_node_networks[0].cidrs[0] #=> String
    #   resp.cluster.remote_network_config.remote_pod_networks #=> Array
    #   resp.cluster.remote_network_config.remote_pod_networks[0].cidrs #=> Array
    #   resp.cluster.remote_network_config.remote_pod_networks[0].cidrs[0] #=> String
    #   resp.cluster.compute_config.enabled #=> Boolean
    #   resp.cluster.compute_config.node_pools #=> Array
    #   resp.cluster.compute_config.node_pools[0] #=> String
    #   resp.cluster.compute_config.node_role_arn #=> String
    #   resp.cluster.storage_config.block_storage.enabled #=> Boolean
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * cluster_active
    #   * cluster_deleted
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DescribeCluster AWS API Documentation
    #
    # @overload describe_cluster(params = {})
    # @param [Hash] params ({})
    def describe_cluster(params = {}, options = {})
      req = build_request(:describe_cluster, params)
      req.send_request(options)
    end

    # Lists available Kubernetes versions for Amazon EKS clusters.
    #
    # @option params [String] :cluster_type
    #   The type of cluster to filter versions by.
    #
    # @option params [Integer] :max_results
    #   Maximum number of results to return.
    #
    # @option params [String] :next_token
    #   Pagination token for the next set of results.
    #
    # @option params [Boolean] :default_only
    #   Filter to show only default versions.
    #
    # @option params [Boolean] :include_all
    #   Include all available versions in the response.
    #
    # @option params [Array<String>] :cluster_versions
    #   List of specific cluster versions to describe.
    #
    # @option params [String] :status
    #   This field is deprecated. Use `versionStatus` instead, as that field
    #   matches for input and output of this action.
    #
    #   Filter versions by their current status.
    #
    # @option params [String] :version_status
    #   Filter versions by their current status.
    #
    # @return [Types::DescribeClusterVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeClusterVersionsResponse#next_token #next_token} => String
    #   * {Types::DescribeClusterVersionsResponse#cluster_versions #cluster_versions} => Array&lt;Types::ClusterVersionInformation&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_cluster_versions({
    #     cluster_type: "String",
    #     max_results: 1,
    #     next_token: "String",
    #     default_only: false,
    #     include_all: false,
    #     cluster_versions: ["String"],
    #     status: "unsupported", # accepts unsupported, standard-support, extended-support
    #     version_status: "UNSUPPORTED", # accepts UNSUPPORTED, STANDARD_SUPPORT, EXTENDED_SUPPORT
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.cluster_versions #=> Array
    #   resp.cluster_versions[0].cluster_version #=> String
    #   resp.cluster_versions[0].cluster_type #=> String
    #   resp.cluster_versions[0].default_platform_version #=> String
    #   resp.cluster_versions[0].default_version #=> Boolean
    #   resp.cluster_versions[0].release_date #=> Time
    #   resp.cluster_versions[0].end_of_standard_support_date #=> Time
    #   resp.cluster_versions[0].end_of_extended_support_date #=> Time
    #   resp.cluster_versions[0].status #=> String, one of "unsupported", "standard-support", "extended-support"
    #   resp.cluster_versions[0].version_status #=> String, one of "UNSUPPORTED", "STANDARD_SUPPORT", "EXTENDED_SUPPORT"
    #   resp.cluster_versions[0].kubernetes_patch_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DescribeClusterVersions AWS API Documentation
    #
    # @overload describe_cluster_versions(params = {})
    # @param [Hash] params ({})
    def describe_cluster_versions(params = {}, options = {})
      req = build_request(:describe_cluster_versions, params)
      req.send_request(options)
    end

    # Returns descriptive information about a subscription.
    #
    # @option params [required, String] :id
    #   The ID of the subscription.
    #
    # @return [Types::DescribeEksAnywhereSubscriptionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeEksAnywhereSubscriptionResponse#subscription #subscription} => Types::EksAnywhereSubscription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_eks_anywhere_subscription({
    #     id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.subscription.id #=> String
    #   resp.subscription.arn #=> String
    #   resp.subscription.created_at #=> Time
    #   resp.subscription.effective_date #=> Time
    #   resp.subscription.expiration_date #=> Time
    #   resp.subscription.license_quantity #=> Integer
    #   resp.subscription.license_type #=> String, one of "Cluster"
    #   resp.subscription.term.duration #=> Integer
    #   resp.subscription.term.unit #=> String, one of "MONTHS"
    #   resp.subscription.status #=> String
    #   resp.subscription.auto_renew #=> Boolean
    #   resp.subscription.license_arns #=> Array
    #   resp.subscription.license_arns[0] #=> String
    #   resp.subscription.licenses #=> Array
    #   resp.subscription.licenses[0].id #=> String
    #   resp.subscription.licenses[0].token #=> String
    #   resp.subscription.tags #=> Hash
    #   resp.subscription.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DescribeEksAnywhereSubscription AWS API Documentation
    #
    # @overload describe_eks_anywhere_subscription(params = {})
    # @param [Hash] params ({})
    def describe_eks_anywhere_subscription(params = {}, options = {})
      req = build_request(:describe_eks_anywhere_subscription, params)
      req.send_request(options)
    end

    # Describes an Fargate profile.
    #
    # @option params [required, String] :cluster_name
    #   The name of your cluster.
    #
    # @option params [required, String] :fargate_profile_name
    #   The name of the Fargate profile to describe.
    #
    # @return [Types::DescribeFargateProfileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeFargateProfileResponse#fargate_profile #fargate_profile} => Types::FargateProfile
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_fargate_profile({
    #     cluster_name: "String", # required
    #     fargate_profile_name: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.fargate_profile.fargate_profile_name #=> String
    #   resp.fargate_profile.fargate_profile_arn #=> String
    #   resp.fargate_profile.cluster_name #=> String
    #   resp.fargate_profile.created_at #=> Time
    #   resp.fargate_profile.pod_execution_role_arn #=> String
    #   resp.fargate_profile.subnets #=> Array
    #   resp.fargate_profile.subnets[0] #=> String
    #   resp.fargate_profile.selectors #=> Array
    #   resp.fargate_profile.selectors[0].namespace #=> String
    #   resp.fargate_profile.selectors[0].labels #=> Hash
    #   resp.fargate_profile.selectors[0].labels["String"] #=> String
    #   resp.fargate_profile.status #=> String, one of "CREATING", "ACTIVE", "DELETING", "CREATE_FAILED", "DELETE_FAILED"
    #   resp.fargate_profile.tags #=> Hash
    #   resp.fargate_profile.tags["TagKey"] #=> String
    #   resp.fargate_profile.health.issues #=> Array
    #   resp.fargate_profile.health.issues[0].code #=> String, one of "PodExecutionRoleAlreadyInUse", "AccessDenied", "ClusterUnreachable", "InternalFailure"
    #   resp.fargate_profile.health.issues[0].message #=> String
    #   resp.fargate_profile.health.issues[0].resource_ids #=> Array
    #   resp.fargate_profile.health.issues[0].resource_ids[0] #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * fargate_profile_active
    #   * fargate_profile_deleted
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DescribeFargateProfile AWS API Documentation
    #
    # @overload describe_fargate_profile(params = {})
    # @param [Hash] params ({})
    def describe_fargate_profile(params = {}, options = {})
      req = build_request(:describe_fargate_profile, params)
      req.send_request(options)
    end

    # Describes an identity provider configuration.
    #
    # @option params [required, String] :cluster_name
    #   The name of your cluster.
    #
    # @option params [required, Types::IdentityProviderConfig] :identity_provider_config
    #   An object representing an identity provider configuration.
    #
    # @return [Types::DescribeIdentityProviderConfigResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeIdentityProviderConfigResponse#identity_provider_config #identity_provider_config} => Types::IdentityProviderConfigResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_identity_provider_config({
    #     cluster_name: "String", # required
    #     identity_provider_config: { # required
    #       type: "String", # required
    #       name: "String", # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.identity_provider_config.oidc.identity_provider_config_name #=> String
    #   resp.identity_provider_config.oidc.identity_provider_config_arn #=> String
    #   resp.identity_provider_config.oidc.cluster_name #=> String
    #   resp.identity_provider_config.oidc.issuer_url #=> String
    #   resp.identity_provider_config.oidc.client_id #=> String
    #   resp.identity_provider_config.oidc.username_claim #=> String
    #   resp.identity_provider_config.oidc.username_prefix #=> String
    #   resp.identity_provider_config.oidc.groups_claim #=> String
    #   resp.identity_provider_config.oidc.groups_prefix #=> String
    #   resp.identity_provider_config.oidc.required_claims #=> Hash
    #   resp.identity_provider_config.oidc.required_claims["requiredClaimsKey"] #=> String
    #   resp.identity_provider_config.oidc.tags #=> Hash
    #   resp.identity_provider_config.oidc.tags["TagKey"] #=> String
    #   resp.identity_provider_config.oidc.status #=> String, one of "CREATING", "DELETING", "ACTIVE"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DescribeIdentityProviderConfig AWS API Documentation
    #
    # @overload describe_identity_provider_config(params = {})
    # @param [Hash] params ({})
    def describe_identity_provider_config(params = {}, options = {})
      req = build_request(:describe_identity_provider_config, params)
      req.send_request(options)
    end

    # Returns details about an insight that you specify using its ID.
    #
    # @option params [required, String] :cluster_name
    #   The name of the cluster to describe the insight for.
    #
    # @option params [required, String] :id
    #   The identity of the insight to describe.
    #
    # @return [Types::DescribeInsightResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeInsightResponse#insight #insight} => Types::Insight
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_insight({
    #     cluster_name: "String", # required
    #     id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.insight.id #=> String
    #   resp.insight.name #=> String
    #   resp.insight.category #=> String, one of "UPGRADE_READINESS"
    #   resp.insight.kubernetes_version #=> String
    #   resp.insight.last_refresh_time #=> Time
    #   resp.insight.last_transition_time #=> Time
    #   resp.insight.description #=> String
    #   resp.insight.insight_status.status #=> String, one of "PASSING", "WARNING", "ERROR", "UNKNOWN"
    #   resp.insight.insight_status.reason #=> String
    #   resp.insight.recommendation #=> String
    #   resp.insight.additional_info #=> Hash
    #   resp.insight.additional_info["String"] #=> String
    #   resp.insight.resources #=> Array
    #   resp.insight.resources[0].insight_status.status #=> String, one of "PASSING", "WARNING", "ERROR", "UNKNOWN"
    #   resp.insight.resources[0].insight_status.reason #=> String
    #   resp.insight.resources[0].kubernetes_resource_uri #=> String
    #   resp.insight.resources[0].arn #=> String
    #   resp.insight.category_specific_summary.deprecation_details #=> Array
    #   resp.insight.category_specific_summary.deprecation_details[0].usage #=> String
    #   resp.insight.category_specific_summary.deprecation_details[0].replaced_with #=> String
    #   resp.insight.category_specific_summary.deprecation_details[0].stop_serving_version #=> String
    #   resp.insight.category_specific_summary.deprecation_details[0].start_serving_replacement_version #=> String
    #   resp.insight.category_specific_summary.deprecation_details[0].client_stats #=> Array
    #   resp.insight.category_specific_summary.deprecation_details[0].client_stats[0].user_agent #=> String
    #   resp.insight.category_specific_summary.deprecation_details[0].client_stats[0].number_of_requests_last_30_days #=> Integer
    #   resp.insight.category_specific_summary.deprecation_details[0].client_stats[0].last_request_time #=> Time
    #   resp.insight.category_specific_summary.addon_compatibility_details #=> Array
    #   resp.insight.category_specific_summary.addon_compatibility_details[0].name #=> String
    #   resp.insight.category_specific_summary.addon_compatibility_details[0].compatible_versions #=> Array
    #   resp.insight.category_specific_summary.addon_compatibility_details[0].compatible_versions[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DescribeInsight AWS API Documentation
    #
    # @overload describe_insight(params = {})
    # @param [Hash] params ({})
    def describe_insight(params = {}, options = {})
      req = build_request(:describe_insight, params)
      req.send_request(options)
    end

    # Describes a managed node group.
    #
    # @option params [required, String] :cluster_name
    #   The name of your cluster.
    #
    # @option params [required, String] :nodegroup_name
    #   The name of the node group to describe.
    #
    # @return [Types::DescribeNodegroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeNodegroupResponse#nodegroup #nodegroup} => Types::Nodegroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_nodegroup({
    #     cluster_name: "String", # required
    #     nodegroup_name: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.nodegroup.nodegroup_name #=> String
    #   resp.nodegroup.nodegroup_arn #=> String
    #   resp.nodegroup.cluster_name #=> String
    #   resp.nodegroup.version #=> String
    #   resp.nodegroup.release_version #=> String
    #   resp.nodegroup.created_at #=> Time
    #   resp.nodegroup.modified_at #=> Time
    #   resp.nodegroup.status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED", "DEGRADED"
    #   resp.nodegroup.capacity_type #=> String, one of "ON_DEMAND", "SPOT", "CAPACITY_BLOCK"
    #   resp.nodegroup.scaling_config.min_size #=> Integer
    #   resp.nodegroup.scaling_config.max_size #=> Integer
    #   resp.nodegroup.scaling_config.desired_size #=> Integer
    #   resp.nodegroup.instance_types #=> Array
    #   resp.nodegroup.instance_types[0] #=> String
    #   resp.nodegroup.subnets #=> Array
    #   resp.nodegroup.subnets[0] #=> String
    #   resp.nodegroup.remote_access.ec2_ssh_key #=> String
    #   resp.nodegroup.remote_access.source_security_groups #=> Array
    #   resp.nodegroup.remote_access.source_security_groups[0] #=> String
    #   resp.nodegroup.ami_type #=> String, one of "AL2_x86_64", "AL2_x86_64_GPU", "AL2_ARM_64", "CUSTOM", "BOTTLEROCKET_ARM_64", "BOTTLEROCKET_x86_64", "BOTTLEROCKET_ARM_64_NVIDIA", "BOTTLEROCKET_x86_64_NVIDIA", "WINDOWS_CORE_2019_x86_64", "WINDOWS_FULL_2019_x86_64", "WINDOWS_CORE_2022_x86_64", "WINDOWS_FULL_2022_x86_64", "AL2023_x86_64_STANDARD", "AL2023_ARM_64_STANDARD", "AL2023_x86_64_NEURON", "AL2023_x86_64_NVIDIA"
    #   resp.nodegroup.node_role #=> String
    #   resp.nodegroup.labels #=> Hash
    #   resp.nodegroup.labels["labelKey"] #=> String
    #   resp.nodegroup.taints #=> Array
    #   resp.nodegroup.taints[0].key #=> String
    #   resp.nodegroup.taints[0].value #=> String
    #   resp.nodegroup.taints[0].effect #=> String, one of "NO_SCHEDULE", "NO_EXECUTE", "PREFER_NO_SCHEDULE"
    #   resp.nodegroup.resources.auto_scaling_groups #=> Array
    #   resp.nodegroup.resources.auto_scaling_groups[0].name #=> String
    #   resp.nodegroup.resources.remote_access_security_group #=> String
    #   resp.nodegroup.disk_size #=> Integer
    #   resp.nodegroup.health.issues #=> Array
    #   resp.nodegroup.health.issues[0].code #=> String, one of "AutoScalingGroupNotFound", "AutoScalingGroupInvalidConfiguration", "Ec2SecurityGroupNotFound", "Ec2SecurityGroupDeletionFailure", "Ec2LaunchTemplateNotFound", "Ec2LaunchTemplateVersionMismatch", "Ec2SubnetNotFound", "Ec2SubnetInvalidConfiguration", "IamInstanceProfileNotFound", "Ec2SubnetMissingIpv6Assignment", "IamLimitExceeded", "IamNodeRoleNotFound", "NodeCreationFailure", "AsgInstanceLaunchFailures", "InstanceLimitExceeded", "InsufficientFreeAddresses", "AccessDenied", "InternalFailure", "ClusterUnreachable", "AmiIdNotFound", "AutoScalingGroupOptInRequired", "AutoScalingGroupRateLimitExceeded", "Ec2LaunchTemplateDeletionFailure", "Ec2LaunchTemplateInvalidConfiguration", "Ec2LaunchTemplateMaxLimitExceeded", "Ec2SubnetListTooLong", "IamThrottling", "NodeTerminationFailure", "PodEvictionFailure", "SourceEc2LaunchTemplateNotFound", "LimitExceeded", "Unknown", "AutoScalingGroupInstanceRefreshActive", "KubernetesLabelInvalid", "Ec2LaunchTemplateVersionMaxLimitExceeded", "Ec2InstanceTypeDoesNotExist"
    #   resp.nodegroup.health.issues[0].message #=> String
    #   resp.nodegroup.health.issues[0].resource_ids #=> Array
    #   resp.nodegroup.health.issues[0].resource_ids[0] #=> String
    #   resp.nodegroup.update_config.max_unavailable #=> Integer
    #   resp.nodegroup.update_config.max_unavailable_percentage #=> Integer
    #   resp.nodegroup.update_config.update_strategy #=> String, one of "DEFAULT", "MINIMAL"
    #   resp.nodegroup.node_repair_config.enabled #=> Boolean
    #   resp.nodegroup.launch_template.name #=> String
    #   resp.nodegroup.launch_template.version #=> String
    #   resp.nodegroup.launch_template.id #=> String
    #   resp.nodegroup.tags #=> Hash
    #   resp.nodegroup.tags["TagKey"] #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * nodegroup_active
    #   * nodegroup_deleted
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DescribeNodegroup AWS API Documentation
    #
    # @overload describe_nodegroup(params = {})
    # @param [Hash] params ({})
    def describe_nodegroup(params = {}, options = {})
      req = build_request(:describe_nodegroup, params)
      req.send_request(options)
    end

    # Returns descriptive information about an EKS Pod Identity association.
    #
    # This action requires the ID of the association. You can get the ID
    # from the response to the `CreatePodIdentityAssocation` for newly
    # created associations. Or, you can list the IDs for associations with
    # `ListPodIdentityAssociations` and filter the list by namespace or
    # service account.
    #
    # @option params [required, String] :cluster_name
    #   The name of the cluster that the association is in.
    #
    # @option params [required, String] :association_id
    #   The ID of the association that you want the description of.
    #
    # @return [Types::DescribePodIdentityAssociationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribePodIdentityAssociationResponse#association #association} => Types::PodIdentityAssociation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_pod_identity_association({
    #     cluster_name: "String", # required
    #     association_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.association.cluster_name #=> String
    #   resp.association.namespace #=> String
    #   resp.association.service_account #=> String
    #   resp.association.role_arn #=> String
    #   resp.association.association_arn #=> String
    #   resp.association.association_id #=> String
    #   resp.association.tags #=> Hash
    #   resp.association.tags["TagKey"] #=> String
    #   resp.association.created_at #=> Time
    #   resp.association.modified_at #=> Time
    #   resp.association.owner_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DescribePodIdentityAssociation AWS API Documentation
    #
    # @overload describe_pod_identity_association(params = {})
    # @param [Hash] params ({})
    def describe_pod_identity_association(params = {}, options = {})
      req = build_request(:describe_pod_identity_association, params)
      req.send_request(options)
    end

    # Describes an update to an Amazon EKS resource.
    #
    # When the status of the update is `Successful`, the update is complete.
    # If an update fails, the status is `Failed`, and an error detail
    # explains the reason for the failure.
    #
    # @option params [required, String] :name
    #   The name of the Amazon EKS cluster associated with the update.
    #
    # @option params [required, String] :update_id
    #   The ID of the update to describe.
    #
    # @option params [String] :nodegroup_name
    #   The name of the Amazon EKS node group associated with the update. This
    #   parameter is required if the update is a node group update.
    #
    # @option params [String] :addon_name
    #   The name of the add-on. The name must match one of the names returned
    #   by [ `ListAddons` ][1]. This parameter is required if the update is an
    #   add-on update.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/APIReference/API_ListAddons.html
    #
    # @return [Types::DescribeUpdateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeUpdateResponse#update #update} => Types::Update
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_update({
    #     name: "String", # required
    #     update_id: "String", # required
    #     nodegroup_name: "String",
    #     addon_name: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.update.id #=> String
    #   resp.update.status #=> String, one of "InProgress", "Failed", "Cancelled", "Successful"
    #   resp.update.type #=> String, one of "VersionUpdate", "EndpointAccessUpdate", "LoggingUpdate", "ConfigUpdate", "AssociateIdentityProviderConfig", "DisassociateIdentityProviderConfig", "AssociateEncryptionConfig", "AddonUpdate", "VpcConfigUpdate", "AccessConfigUpdate", "UpgradePolicyUpdate", "ZonalShiftConfigUpdate", "AutoModeUpdate"
    #   resp.update.params #=> Array
    #   resp.update.params[0].type #=> String, one of "Version", "PlatformVersion", "EndpointPrivateAccess", "EndpointPublicAccess", "ClusterLogging", "DesiredSize", "LabelsToAdd", "LabelsToRemove", "TaintsToAdd", "TaintsToRemove", "MaxSize", "MinSize", "ReleaseVersion", "PublicAccessCidrs", "LaunchTemplateName", "LaunchTemplateVersion", "IdentityProviderConfig", "EncryptionConfig", "AddonVersion", "ServiceAccountRoleArn", "ResolveConflicts", "MaxUnavailable", "MaxUnavailablePercentage", "NodeRepairEnabled", "UpdateStrategy", "ConfigurationValues", "SecurityGroups", "Subnets", "AuthenticationMode", "PodIdentityAssociations", "UpgradePolicy", "ZonalShiftConfig", "ComputeConfig", "StorageConfig", "KubernetesNetworkConfig"
    #   resp.update.params[0].value #=> String
    #   resp.update.created_at #=> Time
    #   resp.update.errors #=> Array
    #   resp.update.errors[0].error_code #=> String, one of "SubnetNotFound", "SecurityGroupNotFound", "EniLimitReached", "IpNotAvailable", "AccessDenied", "OperationNotPermitted", "VpcIdNotFound", "Unknown", "NodeCreationFailure", "PodEvictionFailure", "InsufficientFreeAddresses", "ClusterUnreachable", "InsufficientNumberOfReplicas", "ConfigurationConflict", "AdmissionRequestDenied", "UnsupportedAddonModification", "K8sResourceNotFound"
    #   resp.update.errors[0].error_message #=> String
    #   resp.update.errors[0].resource_ids #=> Array
    #   resp.update.errors[0].resource_ids[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DescribeUpdate AWS API Documentation
    #
    # @overload describe_update(params = {})
    # @param [Hash] params ({})
    def describe_update(params = {}, options = {})
      req = build_request(:describe_update, params)
      req.send_request(options)
    end

    # Disassociates an access policy from an access entry.
    #
    # @option params [required, String] :cluster_name
    #   The name of your cluster.
    #
    # @option params [required, String] :principal_arn
    #   The ARN of the IAM principal for the `AccessEntry`.
    #
    # @option params [required, String] :policy_arn
    #   The ARN of the policy to disassociate from the access entry. For a
    #   list of associated policies ARNs, use `ListAssociatedAccessPolicies`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_access_policy({
    #     cluster_name: "String", # required
    #     principal_arn: "String", # required
    #     policy_arn: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DisassociateAccessPolicy AWS API Documentation
    #
    # @overload disassociate_access_policy(params = {})
    # @param [Hash] params ({})
    def disassociate_access_policy(params = {}, options = {})
      req = build_request(:disassociate_access_policy, params)
      req.send_request(options)
    end

    # Disassociates an identity provider configuration from a cluster.
    #
    # If you disassociate an identity provider from your cluster, users
    # included in the provider can no longer access the cluster. However,
    # you can still access the cluster with IAM principals.
    #
    # @option params [required, String] :cluster_name
    #   The name of your cluster.
    #
    # @option params [required, Types::IdentityProviderConfig] :identity_provider_config
    #   An object representing an identity provider configuration.
    #
    # @option params [String] :client_request_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::DisassociateIdentityProviderConfigResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DisassociateIdentityProviderConfigResponse#update #update} => Types::Update
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_identity_provider_config({
    #     cluster_name: "String", # required
    #     identity_provider_config: { # required
    #       type: "String", # required
    #       name: "String", # required
    #     },
    #     client_request_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.update.id #=> String
    #   resp.update.status #=> String, one of "InProgress", "Failed", "Cancelled", "Successful"
    #   resp.update.type #=> String, one of "VersionUpdate", "EndpointAccessUpdate", "LoggingUpdate", "ConfigUpdate", "AssociateIdentityProviderConfig", "DisassociateIdentityProviderConfig", "AssociateEncryptionConfig", "AddonUpdate", "VpcConfigUpdate", "AccessConfigUpdate", "UpgradePolicyUpdate", "ZonalShiftConfigUpdate", "AutoModeUpdate"
    #   resp.update.params #=> Array
    #   resp.update.params[0].type #=> String, one of "Version", "PlatformVersion", "EndpointPrivateAccess", "EndpointPublicAccess", "ClusterLogging", "DesiredSize", "LabelsToAdd", "LabelsToRemove", "TaintsToAdd", "TaintsToRemove", "MaxSize", "MinSize", "ReleaseVersion", "PublicAccessCidrs", "LaunchTemplateName", "LaunchTemplateVersion", "IdentityProviderConfig", "EncryptionConfig", "AddonVersion", "ServiceAccountRoleArn", "ResolveConflicts", "MaxUnavailable", "MaxUnavailablePercentage", "NodeRepairEnabled", "UpdateStrategy", "ConfigurationValues", "SecurityGroups", "Subnets", "AuthenticationMode", "PodIdentityAssociations", "UpgradePolicy", "ZonalShiftConfig", "ComputeConfig", "StorageConfig", "KubernetesNetworkConfig"
    #   resp.update.params[0].value #=> String
    #   resp.update.created_at #=> Time
    #   resp.update.errors #=> Array
    #   resp.update.errors[0].error_code #=> String, one of "SubnetNotFound", "SecurityGroupNotFound", "EniLimitReached", "IpNotAvailable", "AccessDenied", "OperationNotPermitted", "VpcIdNotFound", "Unknown", "NodeCreationFailure", "PodEvictionFailure", "InsufficientFreeAddresses", "ClusterUnreachable", "InsufficientNumberOfReplicas", "ConfigurationConflict", "AdmissionRequestDenied", "UnsupportedAddonModification", "K8sResourceNotFound"
    #   resp.update.errors[0].error_message #=> String
    #   resp.update.errors[0].resource_ids #=> Array
    #   resp.update.errors[0].resource_ids[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DisassociateIdentityProviderConfig AWS API Documentation
    #
    # @overload disassociate_identity_provider_config(params = {})
    # @param [Hash] params ({})
    def disassociate_identity_provider_config(params = {}, options = {})
      req = build_request(:disassociate_identity_provider_config, params)
      req.send_request(options)
    end

    # Lists the access entries for your cluster.
    #
    # @option params [required, String] :cluster_name
    #   The name of your cluster.
    #
    # @option params [String] :associated_policy_arn
    #   The ARN of an `AccessPolicy`. When you specify an access policy ARN,
    #   only the access entries associated to that access policy are returned.
    #   For a list of available policy ARNs, use `ListAccessPolicies`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results, returned in paginated output. You
    #   receive `maxResults` in a single page, along with a `nextToken`
    #   response element. You can see the remaining results of the initial
    #   request by sending another request with the returned `nextToken`
    #   value. This value can be between 1 and 100. If you don't use this
    #   parameter, 100 results and a `nextToken` value, if applicable, are
    #   returned.
    #
    # @option params [String] :next_token
    #   The `nextToken` value returned from a previous paginated request,
    #   where `maxResults` was used and the results exceeded the value of that
    #   parameter. Pagination continues from the end of the previous results
    #   that returned the `nextToken` value. This value is null when there are
    #   no more results to return.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is used only
    #   to retrieve the next items in a list and not for other programmatic
    #   purposes.
    #
    #    </note>
    #
    # @return [Types::ListAccessEntriesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAccessEntriesResponse#access_entries #access_entries} => Array&lt;String&gt;
    #   * {Types::ListAccessEntriesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_access_entries({
    #     cluster_name: "String", # required
    #     associated_policy_arn: "String",
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.access_entries #=> Array
    #   resp.access_entries[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ListAccessEntries AWS API Documentation
    #
    # @overload list_access_entries(params = {})
    # @param [Hash] params ({})
    def list_access_entries(params = {}, options = {})
      req = build_request(:list_access_entries, params)
      req.send_request(options)
    end

    # Lists the available access policies.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results, returned in paginated output. You
    #   receive `maxResults` in a single page, along with a `nextToken`
    #   response element. You can see the remaining results of the initial
    #   request by sending another request with the returned `nextToken`
    #   value. This value can be between 1 and 100. If you don't use this
    #   parameter, 100 results and a `nextToken` value, if applicable, are
    #   returned.
    #
    # @option params [String] :next_token
    #   The `nextToken` value returned from a previous paginated request,
    #   where `maxResults` was used and the results exceeded the value of that
    #   parameter. Pagination continues from the end of the previous results
    #   that returned the `nextToken` value. This value is null when there are
    #   no more results to return.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is used only
    #   to retrieve the next items in a list and not for other programmatic
    #   purposes.
    #
    #    </note>
    #
    # @return [Types::ListAccessPoliciesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAccessPoliciesResponse#access_policies #access_policies} => Array&lt;Types::AccessPolicy&gt;
    #   * {Types::ListAccessPoliciesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_access_policies({
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.access_policies #=> Array
    #   resp.access_policies[0].name #=> String
    #   resp.access_policies[0].arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ListAccessPolicies AWS API Documentation
    #
    # @overload list_access_policies(params = {})
    # @param [Hash] params ({})
    def list_access_policies(params = {}, options = {})
      req = build_request(:list_access_policies, params)
      req.send_request(options)
    end

    # Lists the installed add-ons.
    #
    # @option params [required, String] :cluster_name
    #   The name of your cluster.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results, returned in paginated output. You
    #   receive `maxResults` in a single page, along with a `nextToken`
    #   response element. You can see the remaining results of the initial
    #   request by sending another request with the returned `nextToken`
    #   value. This value can be between 1 and 100. If you don't use this
    #   parameter, 100 results and a `nextToken` value, if applicable, are
    #   returned.
    #
    # @option params [String] :next_token
    #   The `nextToken` value returned from a previous paginated request,
    #   where `maxResults` was used and the results exceeded the value of that
    #   parameter. Pagination continues from the end of the previous results
    #   that returned the `nextToken` value. This value is null when there are
    #   no more results to return.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is used only
    #   to retrieve the next items in a list and not for other programmatic
    #   purposes.
    #
    #    </note>
    #
    # @return [Types::ListAddonsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAddonsResponse#addons #addons} => Array&lt;String&gt;
    #   * {Types::ListAddonsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_addons({
    #     cluster_name: "ClusterName", # required
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.addons #=> Array
    #   resp.addons[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ListAddons AWS API Documentation
    #
    # @overload list_addons(params = {})
    # @param [Hash] params ({})
    def list_addons(params = {}, options = {})
      req = build_request(:list_addons, params)
      req.send_request(options)
    end

    # Lists the access policies associated with an access entry.
    #
    # @option params [required, String] :cluster_name
    #   The name of your cluster.
    #
    # @option params [required, String] :principal_arn
    #   The ARN of the IAM principal for the `AccessEntry`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results, returned in paginated output. You
    #   receive `maxResults` in a single page, along with a `nextToken`
    #   response element. You can see the remaining results of the initial
    #   request by sending another request with the returned `nextToken`
    #   value. This value can be between 1 and 100. If you don't use this
    #   parameter, 100 results and a `nextToken` value, if applicable, are
    #   returned.
    #
    # @option params [String] :next_token
    #   The `nextToken` value returned from a previous paginated request,
    #   where `maxResults` was used and the results exceeded the value of that
    #   parameter. Pagination continues from the end of the previous results
    #   that returned the `nextToken` value. This value is null when there are
    #   no more results to return.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is used only
    #   to retrieve the next items in a list and not for other programmatic
    #   purposes.
    #
    #    </note>
    #
    # @return [Types::ListAssociatedAccessPoliciesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAssociatedAccessPoliciesResponse#cluster_name #cluster_name} => String
    #   * {Types::ListAssociatedAccessPoliciesResponse#principal_arn #principal_arn} => String
    #   * {Types::ListAssociatedAccessPoliciesResponse#next_token #next_token} => String
    #   * {Types::ListAssociatedAccessPoliciesResponse#associated_access_policies #associated_access_policies} => Array&lt;Types::AssociatedAccessPolicy&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_associated_access_policies({
    #     cluster_name: "String", # required
    #     principal_arn: "String", # required
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster_name #=> String
    #   resp.principal_arn #=> String
    #   resp.next_token #=> String
    #   resp.associated_access_policies #=> Array
    #   resp.associated_access_policies[0].policy_arn #=> String
    #   resp.associated_access_policies[0].access_scope.type #=> String, one of "cluster", "namespace"
    #   resp.associated_access_policies[0].access_scope.namespaces #=> Array
    #   resp.associated_access_policies[0].access_scope.namespaces[0] #=> String
    #   resp.associated_access_policies[0].associated_at #=> Time
    #   resp.associated_access_policies[0].modified_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ListAssociatedAccessPolicies AWS API Documentation
    #
    # @overload list_associated_access_policies(params = {})
    # @param [Hash] params ({})
    def list_associated_access_policies(params = {}, options = {})
      req = build_request(:list_associated_access_policies, params)
      req.send_request(options)
    end

    # Lists the Amazon EKS clusters in your Amazon Web Services account in
    # the specified Amazon Web Services Region.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results, returned in paginated output. You
    #   receive `maxResults` in a single page, along with a `nextToken`
    #   response element. You can see the remaining results of the initial
    #   request by sending another request with the returned `nextToken`
    #   value. This value can be between 1 and 100. If you don't use this
    #   parameter, 100 results and a `nextToken` value, if applicable, are
    #   returned.
    #
    # @option params [String] :next_token
    #   The `nextToken` value returned from a previous paginated request,
    #   where `maxResults` was used and the results exceeded the value of that
    #   parameter. Pagination continues from the end of the previous results
    #   that returned the `nextToken` value. This value is null when there are
    #   no more results to return.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is used only
    #   to retrieve the next items in a list and not for other programmatic
    #   purposes.
    #
    #    </note>
    #
    # @option params [Array<String>] :include
    #   Indicates whether external clusters are included in the returned list.
    #   Use '`all`' to return
    #   [https://docs.aws.amazon.com/eks/latest/userguide/eks-connector.html][1]connected
    #   clusters, or blank to return only Amazon EKS clusters. '`all`' must
    #   be in lowercase otherwise an error occurs.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/eks-connector.html
    #
    # @return [Types::ListClustersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListClustersResponse#clusters #clusters} => Array&lt;String&gt;
    #   * {Types::ListClustersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To list your available clusters
    #
    #   # This example command lists all of your available clusters in your default region.
    #
    #   resp = client.list_clusters({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     clusters: [
    #       "devel", 
    #       "prod", 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_clusters({
    #     max_results: 1,
    #     next_token: "String",
    #     include: ["String"],
    #   })
    #
    # @example Response structure
    #
    #   resp.clusters #=> Array
    #   resp.clusters[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ListClusters AWS API Documentation
    #
    # @overload list_clusters(params = {})
    # @param [Hash] params ({})
    def list_clusters(params = {}, options = {})
      req = build_request(:list_clusters, params)
      req.send_request(options)
    end

    # Displays the full description of the subscription.
    #
    # @option params [Integer] :max_results
    #   The maximum number of cluster results returned by
    #   ListEksAnywhereSubscriptions in paginated output. When you use this
    #   parameter, ListEksAnywhereSubscriptions returns only maxResults
    #   results in a single page along with a nextToken response element. You
    #   can see the remaining results of the initial request by sending
    #   another ListEksAnywhereSubscriptions request with the returned
    #   nextToken value. This value can be between 1 and 100. If you don't
    #   use this parameter, ListEksAnywhereSubscriptions returns up to 10
    #   results and a nextToken value if applicable.
    #
    # @option params [String] :next_token
    #   The `nextToken` value returned from a previous paginated
    #   `ListEksAnywhereSubscriptions` request where `maxResults` was used and
    #   the results exceeded the value of that parameter. Pagination continues
    #   from the end of the previous results that returned the `nextToken`
    #   value.
    #
    # @option params [Array<String>] :include_status
    #   An array of subscription statuses to filter on.
    #
    # @return [Types::ListEksAnywhereSubscriptionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEksAnywhereSubscriptionsResponse#subscriptions #subscriptions} => Array&lt;Types::EksAnywhereSubscription&gt;
    #   * {Types::ListEksAnywhereSubscriptionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_eks_anywhere_subscriptions({
    #     max_results: 1,
    #     next_token: "String",
    #     include_status: ["CREATING"], # accepts CREATING, ACTIVE, UPDATING, EXPIRING, EXPIRED, DELETING
    #   })
    #
    # @example Response structure
    #
    #   resp.subscriptions #=> Array
    #   resp.subscriptions[0].id #=> String
    #   resp.subscriptions[0].arn #=> String
    #   resp.subscriptions[0].created_at #=> Time
    #   resp.subscriptions[0].effective_date #=> Time
    #   resp.subscriptions[0].expiration_date #=> Time
    #   resp.subscriptions[0].license_quantity #=> Integer
    #   resp.subscriptions[0].license_type #=> String, one of "Cluster"
    #   resp.subscriptions[0].term.duration #=> Integer
    #   resp.subscriptions[0].term.unit #=> String, one of "MONTHS"
    #   resp.subscriptions[0].status #=> String
    #   resp.subscriptions[0].auto_renew #=> Boolean
    #   resp.subscriptions[0].license_arns #=> Array
    #   resp.subscriptions[0].license_arns[0] #=> String
    #   resp.subscriptions[0].licenses #=> Array
    #   resp.subscriptions[0].licenses[0].id #=> String
    #   resp.subscriptions[0].licenses[0].token #=> String
    #   resp.subscriptions[0].tags #=> Hash
    #   resp.subscriptions[0].tags["TagKey"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ListEksAnywhereSubscriptions AWS API Documentation
    #
    # @overload list_eks_anywhere_subscriptions(params = {})
    # @param [Hash] params ({})
    def list_eks_anywhere_subscriptions(params = {}, options = {})
      req = build_request(:list_eks_anywhere_subscriptions, params)
      req.send_request(options)
    end

    # Lists the Fargate profiles associated with the specified cluster in
    # your Amazon Web Services account in the specified Amazon Web Services
    # Region.
    #
    # @option params [required, String] :cluster_name
    #   The name of your cluster.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results, returned in paginated output. You
    #   receive `maxResults` in a single page, along with a `nextToken`
    #   response element. You can see the remaining results of the initial
    #   request by sending another request with the returned `nextToken`
    #   value. This value can be between 1 and 100. If you don't use this
    #   parameter, 100 results and a `nextToken` value, if applicable, are
    #   returned.
    #
    # @option params [String] :next_token
    #   The `nextToken` value returned from a previous paginated request,
    #   where `maxResults` was used and the results exceeded the value of that
    #   parameter. Pagination continues from the end of the previous results
    #   that returned the `nextToken` value. This value is null when there are
    #   no more results to return.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is used only
    #   to retrieve the next items in a list and not for other programmatic
    #   purposes.
    #
    #    </note>
    #
    # @return [Types::ListFargateProfilesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFargateProfilesResponse#fargate_profile_names #fargate_profile_names} => Array&lt;String&gt;
    #   * {Types::ListFargateProfilesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_fargate_profiles({
    #     cluster_name: "String", # required
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.fargate_profile_names #=> Array
    #   resp.fargate_profile_names[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ListFargateProfiles AWS API Documentation
    #
    # @overload list_fargate_profiles(params = {})
    # @param [Hash] params ({})
    def list_fargate_profiles(params = {}, options = {})
      req = build_request(:list_fargate_profiles, params)
      req.send_request(options)
    end

    # Lists the identity provider configurations for your cluster.
    #
    # @option params [required, String] :cluster_name
    #   The name of your cluster.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results, returned in paginated output. You
    #   receive `maxResults` in a single page, along with a `nextToken`
    #   response element. You can see the remaining results of the initial
    #   request by sending another request with the returned `nextToken`
    #   value. This value can be between 1 and 100. If you don't use this
    #   parameter, 100 results and a `nextToken` value, if applicable, are
    #   returned.
    #
    # @option params [String] :next_token
    #   The `nextToken` value returned from a previous paginated request,
    #   where `maxResults` was used and the results exceeded the value of that
    #   parameter. Pagination continues from the end of the previous results
    #   that returned the `nextToken` value. This value is null when there are
    #   no more results to return.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is used only
    #   to retrieve the next items in a list and not for other programmatic
    #   purposes.
    #
    #    </note>
    #
    # @return [Types::ListIdentityProviderConfigsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListIdentityProviderConfigsResponse#identity_provider_configs #identity_provider_configs} => Array&lt;Types::IdentityProviderConfig&gt;
    #   * {Types::ListIdentityProviderConfigsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_identity_provider_configs({
    #     cluster_name: "String", # required
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.identity_provider_configs #=> Array
    #   resp.identity_provider_configs[0].type #=> String
    #   resp.identity_provider_configs[0].name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ListIdentityProviderConfigs AWS API Documentation
    #
    # @overload list_identity_provider_configs(params = {})
    # @param [Hash] params ({})
    def list_identity_provider_configs(params = {}, options = {})
      req = build_request(:list_identity_provider_configs, params)
      req.send_request(options)
    end

    # Returns a list of all insights checked for against the specified
    # cluster. You can filter which insights are returned by category,
    # associated Kubernetes version, and status.
    #
    # @option params [required, String] :cluster_name
    #   The name of the Amazon EKS cluster associated with the insights.
    #
    # @option params [Types::InsightsFilter] :filter
    #   The criteria to filter your list of insights for your cluster. You can
    #   filter which insights are returned by category, associated Kubernetes
    #   version, and status.
    #
    # @option params [Integer] :max_results
    #   The maximum number of identity provider configurations returned by
    #   `ListInsights` in paginated output. When you use this parameter,
    #   `ListInsights` returns only `maxResults` results in a single page
    #   along with a `nextToken` response element. You can see the remaining
    #   results of the initial request by sending another `ListInsights`
    #   request with the returned `nextToken` value. This value can be between
    #   1 and 100. If you don't use this parameter, `ListInsights` returns up
    #   to 100 results and a `nextToken` value, if applicable.
    #
    # @option params [String] :next_token
    #   The `nextToken` value returned from a previous paginated
    #   `ListInsights` request. When the results of a `ListInsights` request
    #   exceed `maxResults`, you can use this value to retrieve the next page
    #   of results. This value is `null` when there are no more results to
    #   return.
    #
    # @return [Types::ListInsightsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListInsightsResponse#insights #insights} => Array&lt;Types::InsightSummary&gt;
    #   * {Types::ListInsightsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_insights({
    #     cluster_name: "String", # required
    #     filter: {
    #       categories: ["UPGRADE_READINESS"], # accepts UPGRADE_READINESS
    #       kubernetes_versions: ["String"],
    #       statuses: ["PASSING"], # accepts PASSING, WARNING, ERROR, UNKNOWN
    #     },
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.insights #=> Array
    #   resp.insights[0].id #=> String
    #   resp.insights[0].name #=> String
    #   resp.insights[0].category #=> String, one of "UPGRADE_READINESS"
    #   resp.insights[0].kubernetes_version #=> String
    #   resp.insights[0].last_refresh_time #=> Time
    #   resp.insights[0].last_transition_time #=> Time
    #   resp.insights[0].description #=> String
    #   resp.insights[0].insight_status.status #=> String, one of "PASSING", "WARNING", "ERROR", "UNKNOWN"
    #   resp.insights[0].insight_status.reason #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ListInsights AWS API Documentation
    #
    # @overload list_insights(params = {})
    # @param [Hash] params ({})
    def list_insights(params = {}, options = {})
      req = build_request(:list_insights, params)
      req.send_request(options)
    end

    # Lists the managed node groups associated with the specified cluster in
    # your Amazon Web Services account in the specified Amazon Web Services
    # Region. Self-managed node groups aren't listed.
    #
    # @option params [required, String] :cluster_name
    #   The name of your cluster.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results, returned in paginated output. You
    #   receive `maxResults` in a single page, along with a `nextToken`
    #   response element. You can see the remaining results of the initial
    #   request by sending another request with the returned `nextToken`
    #   value. This value can be between 1 and 100. If you don't use this
    #   parameter, 100 results and a `nextToken` value, if applicable, are
    #   returned.
    #
    # @option params [String] :next_token
    #   The `nextToken` value returned from a previous paginated request,
    #   where `maxResults` was used and the results exceeded the value of that
    #   parameter. Pagination continues from the end of the previous results
    #   that returned the `nextToken` value. This value is null when there are
    #   no more results to return.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is used only
    #   to retrieve the next items in a list and not for other programmatic
    #   purposes.
    #
    #    </note>
    #
    # @return [Types::ListNodegroupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListNodegroupsResponse#nodegroups #nodegroups} => Array&lt;String&gt;
    #   * {Types::ListNodegroupsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_nodegroups({
    #     cluster_name: "String", # required
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.nodegroups #=> Array
    #   resp.nodegroups[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ListNodegroups AWS API Documentation
    #
    # @overload list_nodegroups(params = {})
    # @param [Hash] params ({})
    def list_nodegroups(params = {}, options = {})
      req = build_request(:list_nodegroups, params)
      req.send_request(options)
    end

    # List the EKS Pod Identity associations in a cluster. You can filter
    # the list by the namespace that the association is in or the service
    # account that the association uses.
    #
    # @option params [required, String] :cluster_name
    #   The name of the cluster that the associations are in.
    #
    # @option params [String] :namespace
    #   The name of the Kubernetes namespace inside the cluster that the
    #   associations are in.
    #
    # @option params [String] :service_account
    #   The name of the Kubernetes service account that the associations use.
    #
    # @option params [Integer] :max_results
    #   The maximum number of EKS Pod Identity association results returned by
    #   `ListPodIdentityAssociations` in paginated output. When you use this
    #   parameter, `ListPodIdentityAssociations` returns only `maxResults`
    #   results in a single page along with a `nextToken` response element.
    #   You can see the remaining results of the initial request by sending
    #   another `ListPodIdentityAssociations` request with the returned
    #   `nextToken` value. This value can be between 1 and 100. If you don't
    #   use this parameter, `ListPodIdentityAssociations` returns up to 100
    #   results and a `nextToken` value if applicable.
    #
    # @option params [String] :next_token
    #   The `nextToken` value returned from a previous paginated `ListUpdates`
    #   request where `maxResults` was used and the results exceeded the value
    #   of that parameter. Pagination continues from the end of the previous
    #   results that returned the `nextToken` value.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is used only
    #   to retrieve the next items in a list and not for other programmatic
    #   purposes.
    #
    #    </note>
    #
    # @return [Types::ListPodIdentityAssociationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPodIdentityAssociationsResponse#associations #associations} => Array&lt;Types::PodIdentityAssociationSummary&gt;
    #   * {Types::ListPodIdentityAssociationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_pod_identity_associations({
    #     cluster_name: "String", # required
    #     namespace: "String",
    #     service_account: "String",
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.associations #=> Array
    #   resp.associations[0].cluster_name #=> String
    #   resp.associations[0].namespace #=> String
    #   resp.associations[0].service_account #=> String
    #   resp.associations[0].association_arn #=> String
    #   resp.associations[0].association_id #=> String
    #   resp.associations[0].owner_arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ListPodIdentityAssociations AWS API Documentation
    #
    # @overload list_pod_identity_associations(params = {})
    # @param [Hash] params ({})
    def list_pod_identity_associations(params = {}, options = {})
      req = build_request(:list_pod_identity_associations, params)
      req.send_request(options)
    end

    # List the tags for an Amazon EKS resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) that identifies the resource to list
    #   tags for.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    #
    # @example Example: To list tags for a cluster
    #
    #   # This example lists all of the tags for the `beta` cluster.
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "arn:aws:eks:us-west-2:012345678910:cluster/beta", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     tags: {
    #       "aws:tag:domain" => "beta", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Lists the updates associated with an Amazon EKS resource in your
    # Amazon Web Services account, in the specified Amazon Web Services
    # Region.
    #
    # @option params [required, String] :name
    #   The name of the Amazon EKS cluster to list updates for.
    #
    # @option params [String] :nodegroup_name
    #   The name of the Amazon EKS managed node group to list updates for.
    #
    # @option params [String] :addon_name
    #   The names of the installed add-ons that have available updates.
    #
    # @option params [String] :next_token
    #   The `nextToken` value returned from a previous paginated request,
    #   where `maxResults` was used and the results exceeded the value of that
    #   parameter. Pagination continues from the end of the previous results
    #   that returned the `nextToken` value. This value is null when there are
    #   no more results to return.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is used only
    #   to retrieve the next items in a list and not for other programmatic
    #   purposes.
    #
    #    </note>
    #
    # @option params [Integer] :max_results
    #   The maximum number of results, returned in paginated output. You
    #   receive `maxResults` in a single page, along with a `nextToken`
    #   response element. You can see the remaining results of the initial
    #   request by sending another request with the returned `nextToken`
    #   value. This value can be between 1 and 100. If you don't use this
    #   parameter, 100 results and a `nextToken` value, if applicable, are
    #   returned.
    #
    # @return [Types::ListUpdatesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListUpdatesResponse#update_ids #update_ids} => Array&lt;String&gt;
    #   * {Types::ListUpdatesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_updates({
    #     name: "String", # required
    #     nodegroup_name: "String",
    #     addon_name: "String",
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.update_ids #=> Array
    #   resp.update_ids[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ListUpdates AWS API Documentation
    #
    # @overload list_updates(params = {})
    # @param [Hash] params ({})
    def list_updates(params = {}, options = {})
      req = build_request(:list_updates, params)
      req.send_request(options)
    end

    # Connects a Kubernetes cluster to the Amazon EKS control plane.
    #
    # Any Kubernetes cluster can be connected to the Amazon EKS control
    # plane to view current information about the cluster and its nodes.
    #
    # Cluster connection requires two steps. First, send a [
    # `RegisterClusterRequest` ][1] to add it to the Amazon EKS control
    # plane.
    #
    # Second, a [Manifest][2] containing the `activationID` and
    # `activationCode` must be applied to the Kubernetes cluster through
    # it's native provider to provide visibility.
    #
    # After the manifest is updated and applied, the connected cluster is
    # visible to the Amazon EKS control plane. If the manifest isn't
    # applied within three days, the connected cluster will no longer be
    # visible and must be deregistered using `DeregisterCluster`.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/eks/latest/APIReference/API_RegisterClusterRequest.html
    # [2]: https://amazon-eks.s3.us-west-2.amazonaws.com/eks-connector/manifests/eks-connector/latest/eks-connector.yaml
    #
    # @option params [required, String] :name
    #   A unique name for this cluster in your Amazon Web Services Region.
    #
    # @option params [required, Types::ConnectorConfigRequest] :connector_config
    #   The configuration settings required to connect the Kubernetes cluster
    #   to the Amazon EKS control plane.
    #
    # @option params [String] :client_request_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Hash<String,String>] :tags
    #   Metadata that assists with categorization and organization. Each tag
    #   consists of a key and an optional value. You define both. Tags don't
    #   propagate to any other cluster or Amazon Web Services resources.
    #
    # @return [Types::RegisterClusterResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RegisterClusterResponse#cluster #cluster} => Types::Cluster
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_cluster({
    #     name: "ClusterName", # required
    #     connector_config: { # required
    #       role_arn: "String", # required
    #       provider: "EKS_ANYWHERE", # required, accepts EKS_ANYWHERE, ANTHOS, GKE, AKS, OPENSHIFT, TANZU, RANCHER, EC2, OTHER
    #     },
    #     client_request_token: "String",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster.name #=> String
    #   resp.cluster.arn #=> String
    #   resp.cluster.created_at #=> Time
    #   resp.cluster.version #=> String
    #   resp.cluster.endpoint #=> String
    #   resp.cluster.role_arn #=> String
    #   resp.cluster.resources_vpc_config.subnet_ids #=> Array
    #   resp.cluster.resources_vpc_config.subnet_ids[0] #=> String
    #   resp.cluster.resources_vpc_config.security_group_ids #=> Array
    #   resp.cluster.resources_vpc_config.security_group_ids[0] #=> String
    #   resp.cluster.resources_vpc_config.cluster_security_group_id #=> String
    #   resp.cluster.resources_vpc_config.vpc_id #=> String
    #   resp.cluster.resources_vpc_config.endpoint_public_access #=> Boolean
    #   resp.cluster.resources_vpc_config.endpoint_private_access #=> Boolean
    #   resp.cluster.resources_vpc_config.public_access_cidrs #=> Array
    #   resp.cluster.resources_vpc_config.public_access_cidrs[0] #=> String
    #   resp.cluster.kubernetes_network_config.service_ipv_4_cidr #=> String
    #   resp.cluster.kubernetes_network_config.service_ipv_6_cidr #=> String
    #   resp.cluster.kubernetes_network_config.ip_family #=> String, one of "ipv4", "ipv6"
    #   resp.cluster.kubernetes_network_config.elastic_load_balancing.enabled #=> Boolean
    #   resp.cluster.logging.cluster_logging #=> Array
    #   resp.cluster.logging.cluster_logging[0].types #=> Array
    #   resp.cluster.logging.cluster_logging[0].types[0] #=> String, one of "api", "audit", "authenticator", "controllerManager", "scheduler"
    #   resp.cluster.logging.cluster_logging[0].enabled #=> Boolean
    #   resp.cluster.identity.oidc.issuer #=> String
    #   resp.cluster.status #=> String, one of "CREATING", "ACTIVE", "DELETING", "FAILED", "UPDATING", "PENDING"
    #   resp.cluster.certificate_authority.data #=> String
    #   resp.cluster.client_request_token #=> String
    #   resp.cluster.platform_version #=> String
    #   resp.cluster.tags #=> Hash
    #   resp.cluster.tags["TagKey"] #=> String
    #   resp.cluster.encryption_config #=> Array
    #   resp.cluster.encryption_config[0].resources #=> Array
    #   resp.cluster.encryption_config[0].resources[0] #=> String
    #   resp.cluster.encryption_config[0].provider.key_arn #=> String
    #   resp.cluster.connector_config.activation_id #=> String
    #   resp.cluster.connector_config.activation_code #=> String
    #   resp.cluster.connector_config.activation_expiry #=> Time
    #   resp.cluster.connector_config.provider #=> String
    #   resp.cluster.connector_config.role_arn #=> String
    #   resp.cluster.id #=> String
    #   resp.cluster.health.issues #=> Array
    #   resp.cluster.health.issues[0].code #=> String, one of "AccessDenied", "ClusterUnreachable", "ConfigurationConflict", "InternalFailure", "ResourceLimitExceeded", "ResourceNotFound", "IamRoleNotFound", "VpcNotFound", "InsufficientFreeAddresses", "Ec2ServiceNotSubscribed", "Ec2SubnetNotFound", "Ec2SecurityGroupNotFound", "KmsGrantRevoked", "KmsKeyNotFound", "KmsKeyMarkedForDeletion", "KmsKeyDisabled", "StsRegionalEndpointDisabled", "UnsupportedVersion", "Other"
    #   resp.cluster.health.issues[0].message #=> String
    #   resp.cluster.health.issues[0].resource_ids #=> Array
    #   resp.cluster.health.issues[0].resource_ids[0] #=> String
    #   resp.cluster.outpost_config.outpost_arns #=> Array
    #   resp.cluster.outpost_config.outpost_arns[0] #=> String
    #   resp.cluster.outpost_config.control_plane_instance_type #=> String
    #   resp.cluster.outpost_config.control_plane_placement.group_name #=> String
    #   resp.cluster.access_config.bootstrap_cluster_creator_admin_permissions #=> Boolean
    #   resp.cluster.access_config.authentication_mode #=> String, one of "API", "API_AND_CONFIG_MAP", "CONFIG_MAP"
    #   resp.cluster.upgrade_policy.support_type #=> String, one of "STANDARD", "EXTENDED"
    #   resp.cluster.zonal_shift_config.enabled #=> Boolean
    #   resp.cluster.remote_network_config.remote_node_networks #=> Array
    #   resp.cluster.remote_network_config.remote_node_networks[0].cidrs #=> Array
    #   resp.cluster.remote_network_config.remote_node_networks[0].cidrs[0] #=> String
    #   resp.cluster.remote_network_config.remote_pod_networks #=> Array
    #   resp.cluster.remote_network_config.remote_pod_networks[0].cidrs #=> Array
    #   resp.cluster.remote_network_config.remote_pod_networks[0].cidrs[0] #=> String
    #   resp.cluster.compute_config.enabled #=> Boolean
    #   resp.cluster.compute_config.node_pools #=> Array
    #   resp.cluster.compute_config.node_pools[0] #=> String
    #   resp.cluster.compute_config.node_role_arn #=> String
    #   resp.cluster.storage_config.block_storage.enabled #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/RegisterCluster AWS API Documentation
    #
    # @overload register_cluster(params = {})
    # @param [Hash] params ({})
    def register_cluster(params = {}, options = {})
      req = build_request(:register_cluster, params)
      req.send_request(options)
    end

    # Associates the specified tags to an Amazon EKS resource with the
    # specified `resourceArn`. If existing tags on a resource are not
    # specified in the request parameters, they aren't changed. When a
    # resource is deleted, the tags associated with that resource are also
    # deleted. Tags that you create for Amazon EKS resources don't
    # propagate to any other resources associated with the cluster. For
    # example, if you tag a cluster with this operation, that tag doesn't
    # automatically propagate to the subnets and nodes associated with the
    # cluster.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource to add tags to.
    #
    # @option params [required, Hash<String,String>] :tags
    #   Metadata that assists with categorization and organization. Each tag
    #   consists of a key and an optional value. You define both. Tags don't
    #   propagate to any other cluster or Amazon Web Services resources.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "String", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Deletes specified tags from an Amazon EKS resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource to delete tags from.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The keys of the tags to remove.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "String", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates an access entry.
    #
    # @option params [required, String] :cluster_name
    #   The name of your cluster.
    #
    # @option params [required, String] :principal_arn
    #   The ARN of the IAM principal for the `AccessEntry`.
    #
    # @option params [Array<String>] :kubernetes_groups
    #   The value for `name` that you've specified for `kind: Group` as a
    #   `subject` in a Kubernetes `RoleBinding` or `ClusterRoleBinding`
    #   object. Amazon EKS doesn't confirm that the value for `name` exists
    #   in any bindings on your cluster. You can specify one or more names.
    #
    #   Kubernetes authorizes the `principalArn` of the access entry to access
    #   any cluster objects that you've specified in a Kubernetes `Role` or
    #   `ClusterRole` object that is also specified in a binding's `roleRef`.
    #   For more information about creating Kubernetes `RoleBinding`,
    #   `ClusterRoleBinding`, `Role`, or `ClusterRole` objects, see [Using
    #   RBAC Authorization in the Kubernetes documentation][1].
    #
    #   If you want Amazon EKS to authorize the `principalArn` (instead of, or
    #   in addition to Kubernetes authorizing the `principalArn`), you can
    #   associate one or more access policies to the access entry using
    #   `AssociateAccessPolicy`. If you associate any access policies, the
    #   `principalARN` has all permissions assigned in the associated access
    #   policies and all permissions in any Kubernetes `Role` or `ClusterRole`
    #   objects that the group names are bound to.
    #
    #
    #
    #   [1]: https://kubernetes.io/docs/reference/access-authn-authz/rbac/
    #
    # @option params [String] :client_request_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :username
    #   The username to authenticate to Kubernetes with. We recommend not
    #   specifying a username and letting Amazon EKS specify it for you. For
    #   more information about the value Amazon EKS specifies for you, or
    #   constraints before specifying your own username, see [Creating access
    #   entries][1] in the *Amazon EKS User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/access-entries.html#creating-access-entries
    #
    # @return [Types::UpdateAccessEntryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAccessEntryResponse#access_entry #access_entry} => Types::AccessEntry
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_access_entry({
    #     cluster_name: "String", # required
    #     principal_arn: "String", # required
    #     kubernetes_groups: ["String"],
    #     client_request_token: "String",
    #     username: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.access_entry.cluster_name #=> String
    #   resp.access_entry.principal_arn #=> String
    #   resp.access_entry.kubernetes_groups #=> Array
    #   resp.access_entry.kubernetes_groups[0] #=> String
    #   resp.access_entry.access_entry_arn #=> String
    #   resp.access_entry.created_at #=> Time
    #   resp.access_entry.modified_at #=> Time
    #   resp.access_entry.tags #=> Hash
    #   resp.access_entry.tags["TagKey"] #=> String
    #   resp.access_entry.username #=> String
    #   resp.access_entry.type #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/UpdateAccessEntry AWS API Documentation
    #
    # @overload update_access_entry(params = {})
    # @param [Hash] params ({})
    def update_access_entry(params = {}, options = {})
      req = build_request(:update_access_entry, params)
      req.send_request(options)
    end

    # Updates an Amazon EKS add-on.
    #
    # @option params [required, String] :cluster_name
    #   The name of your cluster.
    #
    # @option params [required, String] :addon_name
    #   The name of the add-on. The name must match one of the names returned
    #   by [ `ListAddons` ][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/APIReference/API_ListAddons.html
    #
    # @option params [String] :addon_version
    #   The version of the add-on. The version must match one of the versions
    #   returned by [ `DescribeAddonVersions` ][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/APIReference/API_DescribeAddonVersions.html
    #
    # @option params [String] :service_account_role_arn
    #   The Amazon Resource Name (ARN) of an existing IAM role to bind to the
    #   add-on's service account. The role must be assigned the IAM
    #   permissions required by the add-on. If you don't specify an existing
    #   IAM role, then the add-on uses the permissions assigned to the node
    #   IAM role. For more information, see [Amazon EKS node IAM role][1] in
    #   the *Amazon EKS User Guide*.
    #
    #   <note markdown="1"> To specify an existing IAM role, you must have an IAM OpenID Connect
    #   (OIDC) provider created for your cluster. For more information, see
    #   [Enabling IAM roles for service accounts on your cluster][2] in the
    #   *Amazon EKS User Guide*.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/create-node-role.html
    #   [2]: https://docs.aws.amazon.com/eks/latest/userguide/enable-iam-roles-for-service-accounts.html
    #
    # @option params [String] :resolve_conflicts
    #   How to resolve field value conflicts for an Amazon EKS add-on if
    #   you've changed a value from the Amazon EKS default value. Conflicts
    #   are handled based on the option you choose:
    #
    #   * **None** – Amazon EKS doesn't change the value. The update might
    #     fail.
    #
    #   * **Overwrite** – Amazon EKS overwrites the changed value back to the
    #     Amazon EKS default value.
    #
    #   * **Preserve** – Amazon EKS preserves the value. If you choose this
    #     option, we recommend that you test any field and value changes on a
    #     non-production cluster before updating the add-on on your production
    #     cluster.
    #
    # @option params [String] :client_request_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :configuration_values
    #   The set of configuration values for the add-on that's created. The
    #   values that you provide are validated against the schema returned by
    #   `DescribeAddonConfiguration`.
    #
    # @option params [Array<Types::AddonPodIdentityAssociations>] :pod_identity_associations
    #   An array of Pod Identity Assocations to be updated. Each EKS Pod
    #   Identity association maps a Kubernetes service account to an IAM Role.
    #   If this value is left blank, no change. If an empty array is provided,
    #   existing Pod Identity Assocations owned by the Addon are deleted.
    #
    #   For more information, see [Attach an IAM Role to an Amazon EKS add-on
    #   using Pod Identity][1] in the *Amazon EKS User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/add-ons-iam.html
    #
    # @return [Types::UpdateAddonResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAddonResponse#update #update} => Types::Update
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_addon({
    #     cluster_name: "ClusterName", # required
    #     addon_name: "String", # required
    #     addon_version: "String",
    #     service_account_role_arn: "RoleArn",
    #     resolve_conflicts: "OVERWRITE", # accepts OVERWRITE, NONE, PRESERVE
    #     client_request_token: "String",
    #     configuration_values: "String",
    #     pod_identity_associations: [
    #       {
    #         service_account: "String", # required
    #         role_arn: "String", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.update.id #=> String
    #   resp.update.status #=> String, one of "InProgress", "Failed", "Cancelled", "Successful"
    #   resp.update.type #=> String, one of "VersionUpdate", "EndpointAccessUpdate", "LoggingUpdate", "ConfigUpdate", "AssociateIdentityProviderConfig", "DisassociateIdentityProviderConfig", "AssociateEncryptionConfig", "AddonUpdate", "VpcConfigUpdate", "AccessConfigUpdate", "UpgradePolicyUpdate", "ZonalShiftConfigUpdate", "AutoModeUpdate"
    #   resp.update.params #=> Array
    #   resp.update.params[0].type #=> String, one of "Version", "PlatformVersion", "EndpointPrivateAccess", "EndpointPublicAccess", "ClusterLogging", "DesiredSize", "LabelsToAdd", "LabelsToRemove", "TaintsToAdd", "TaintsToRemove", "MaxSize", "MinSize", "ReleaseVersion", "PublicAccessCidrs", "LaunchTemplateName", "LaunchTemplateVersion", "IdentityProviderConfig", "EncryptionConfig", "AddonVersion", "ServiceAccountRoleArn", "ResolveConflicts", "MaxUnavailable", "MaxUnavailablePercentage", "NodeRepairEnabled", "UpdateStrategy", "ConfigurationValues", "SecurityGroups", "Subnets", "AuthenticationMode", "PodIdentityAssociations", "UpgradePolicy", "ZonalShiftConfig", "ComputeConfig", "StorageConfig", "KubernetesNetworkConfig"
    #   resp.update.params[0].value #=> String
    #   resp.update.created_at #=> Time
    #   resp.update.errors #=> Array
    #   resp.update.errors[0].error_code #=> String, one of "SubnetNotFound", "SecurityGroupNotFound", "EniLimitReached", "IpNotAvailable", "AccessDenied", "OperationNotPermitted", "VpcIdNotFound", "Unknown", "NodeCreationFailure", "PodEvictionFailure", "InsufficientFreeAddresses", "ClusterUnreachable", "InsufficientNumberOfReplicas", "ConfigurationConflict", "AdmissionRequestDenied", "UnsupportedAddonModification", "K8sResourceNotFound"
    #   resp.update.errors[0].error_message #=> String
    #   resp.update.errors[0].resource_ids #=> Array
    #   resp.update.errors[0].resource_ids[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/UpdateAddon AWS API Documentation
    #
    # @overload update_addon(params = {})
    # @param [Hash] params ({})
    def update_addon(params = {}, options = {})
      req = build_request(:update_addon, params)
      req.send_request(options)
    end

    # Updates an Amazon EKS cluster configuration. Your cluster continues to
    # function during the update. The response output includes an update ID
    # that you can use to track the status of your cluster update with
    # `DescribeUpdate`"/&gt;.
    #
    # You can use this API operation to enable or disable exporting the
    # Kubernetes control plane logs for your cluster to CloudWatch Logs. By
    # default, cluster control plane logs aren't exported to CloudWatch
    # Logs. For more information, see [Amazon EKS Cluster control plane
    # logs][1] in the <i> <i>Amazon EKS User Guide</i> </i>.
    #
    # <note markdown="1"> CloudWatch Logs ingestion, archive storage, and data scanning rates
    # apply to exported control plane logs. For more information, see
    # [CloudWatch Pricing][2].
    #
    #  </note>
    #
    # You can also use this API operation to enable or disable public and
    # private access to your cluster's Kubernetes API server endpoint. By
    # default, public access is enabled, and private access is disabled. For
    # more information, see [Amazon EKS cluster endpoint access control][3]
    # in the <i> <i>Amazon EKS User Guide</i> </i>.
    #
    # You can also use this API operation to choose different subnets and
    # security groups for the cluster. You must specify at least two subnets
    # that are in different Availability Zones. You can't change which VPC
    # the subnets are from, the subnets must be in the same VPC as the
    # subnets that the cluster was created with. For more information about
    # the VPC requirements, see
    # [https://docs.aws.amazon.com/eks/latest/userguide/network\_reqs.html][4]
    # in the <i> <i>Amazon EKS User Guide</i> </i>.
    #
    # You can also use this API operation to enable or disable ARC zonal
    # shift. If zonal shift is enabled, Amazon Web Services configures zonal
    # autoshift for the cluster.
    #
    # Cluster updates are asynchronous, and they should finish within a few
    # minutes. During an update, the cluster status moves to `UPDATING`
    # (this status transition is eventually consistent). When the update is
    # complete (either `Failed` or `Successful`), the cluster status moves
    # to `Active`.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/eks/latest/userguide/control-plane-logs.html
    # [2]: http://aws.amazon.com/cloudwatch/pricing/
    # [3]: https://docs.aws.amazon.com/eks/latest/userguide/cluster-endpoint.html
    # [4]: https://docs.aws.amazon.com/eks/latest/userguide/network_reqs.html
    #
    # @option params [required, String] :name
    #   The name of the Amazon EKS cluster to update.
    #
    # @option params [Types::VpcConfigRequest] :resources_vpc_config
    #   An object representing the VPC configuration to use for an Amazon EKS
    #   cluster.
    #
    # @option params [Types::Logging] :logging
    #   Enable or disable exporting the Kubernetes control plane logs for your
    #   cluster to CloudWatch Logs . By default, cluster control plane logs
    #   aren't exported to CloudWatch Logs . For more information, see
    #   [Amazon EKS cluster control plane logs][1] in the <i> <i>Amazon EKS
    #   User Guide</i> </i>.
    #
    #   <note markdown="1"> CloudWatch Logs ingestion, archive storage, and data scanning rates
    #   apply to exported control plane logs. For more information, see
    #   [CloudWatch Pricing][2].
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/control-plane-logs.html
    #   [2]: http://aws.amazon.com/cloudwatch/pricing/
    #
    # @option params [String] :client_request_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Types::UpdateAccessConfigRequest] :access_config
    #   The access configuration for the cluster.
    #
    # @option params [Types::UpgradePolicyRequest] :upgrade_policy
    #   You can enable or disable extended support for clusters currently on
    #   standard support. You cannot disable extended support once it starts.
    #   You must enable extended support before your cluster exits standard
    #   support.
    #
    # @option params [Types::ZonalShiftConfigRequest] :zonal_shift_config
    #   Enable or disable ARC zonal shift for the cluster. If zonal shift is
    #   enabled, Amazon Web Services configures zonal autoshift for the
    #   cluster.
    #
    #   Zonal shift is a feature of Amazon Application Recovery Controller
    #   (ARC). ARC zonal shift is designed to be a temporary measure that
    #   allows you to move traffic for a resource away from an impaired AZ
    #   until the zonal shift expires or you cancel it. You can extend the
    #   zonal shift if necessary.
    #
    #   You can start a zonal shift for an EKS cluster, or you can allow
    #   Amazon Web Services to do it for you by enabling *zonal autoshift*.
    #   This shift updates the flow of east-to-west network traffic in your
    #   cluster to only consider network endpoints for Pods running on worker
    #   nodes in healthy AZs. Additionally, any ALB or NLB handling ingress
    #   traffic for applications in your EKS cluster will automatically route
    #   traffic to targets in the healthy AZs. For more information about
    #   zonal shift in EKS, see [Learn about Amazon Application Recovery
    #   Controller (ARC) Zonal Shift in Amazon EKS][1] in the <i> <i>Amazon
    #   EKS User Guide</i> </i>.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/zone-shift.html
    #
    # @option params [Types::ComputeConfigRequest] :compute_config
    #   Update the configuration of the compute capability of your EKS Auto
    #   Mode cluster. For example, enable the capability.
    #
    # @option params [Types::KubernetesNetworkConfigRequest] :kubernetes_network_config
    #   The Kubernetes network configuration for the cluster.
    #
    # @option params [Types::StorageConfigRequest] :storage_config
    #   Update the configuration of the block storage capability of your EKS
    #   Auto Mode cluster. For example, enable the capability.
    #
    # @return [Types::UpdateClusterConfigResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateClusterConfigResponse#update #update} => Types::Update
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_cluster_config({
    #     name: "String", # required
    #     resources_vpc_config: {
    #       subnet_ids: ["String"],
    #       security_group_ids: ["String"],
    #       endpoint_public_access: false,
    #       endpoint_private_access: false,
    #       public_access_cidrs: ["String"],
    #     },
    #     logging: {
    #       cluster_logging: [
    #         {
    #           types: ["api"], # accepts api, audit, authenticator, controllerManager, scheduler
    #           enabled: false,
    #         },
    #       ],
    #     },
    #     client_request_token: "String",
    #     access_config: {
    #       authentication_mode: "API", # accepts API, API_AND_CONFIG_MAP, CONFIG_MAP
    #     },
    #     upgrade_policy: {
    #       support_type: "STANDARD", # accepts STANDARD, EXTENDED
    #     },
    #     zonal_shift_config: {
    #       enabled: false,
    #     },
    #     compute_config: {
    #       enabled: false,
    #       node_pools: ["String"],
    #       node_role_arn: "String",
    #     },
    #     kubernetes_network_config: {
    #       service_ipv_4_cidr: "String",
    #       ip_family: "ipv4", # accepts ipv4, ipv6
    #       elastic_load_balancing: {
    #         enabled: false,
    #       },
    #     },
    #     storage_config: {
    #       block_storage: {
    #         enabled: false,
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.update.id #=> String
    #   resp.update.status #=> String, one of "InProgress", "Failed", "Cancelled", "Successful"
    #   resp.update.type #=> String, one of "VersionUpdate", "EndpointAccessUpdate", "LoggingUpdate", "ConfigUpdate", "AssociateIdentityProviderConfig", "DisassociateIdentityProviderConfig", "AssociateEncryptionConfig", "AddonUpdate", "VpcConfigUpdate", "AccessConfigUpdate", "UpgradePolicyUpdate", "ZonalShiftConfigUpdate", "AutoModeUpdate"
    #   resp.update.params #=> Array
    #   resp.update.params[0].type #=> String, one of "Version", "PlatformVersion", "EndpointPrivateAccess", "EndpointPublicAccess", "ClusterLogging", "DesiredSize", "LabelsToAdd", "LabelsToRemove", "TaintsToAdd", "TaintsToRemove", "MaxSize", "MinSize", "ReleaseVersion", "PublicAccessCidrs", "LaunchTemplateName", "LaunchTemplateVersion", "IdentityProviderConfig", "EncryptionConfig", "AddonVersion", "ServiceAccountRoleArn", "ResolveConflicts", "MaxUnavailable", "MaxUnavailablePercentage", "NodeRepairEnabled", "UpdateStrategy", "ConfigurationValues", "SecurityGroups", "Subnets", "AuthenticationMode", "PodIdentityAssociations", "UpgradePolicy", "ZonalShiftConfig", "ComputeConfig", "StorageConfig", "KubernetesNetworkConfig"
    #   resp.update.params[0].value #=> String
    #   resp.update.created_at #=> Time
    #   resp.update.errors #=> Array
    #   resp.update.errors[0].error_code #=> String, one of "SubnetNotFound", "SecurityGroupNotFound", "EniLimitReached", "IpNotAvailable", "AccessDenied", "OperationNotPermitted", "VpcIdNotFound", "Unknown", "NodeCreationFailure", "PodEvictionFailure", "InsufficientFreeAddresses", "ClusterUnreachable", "InsufficientNumberOfReplicas", "ConfigurationConflict", "AdmissionRequestDenied", "UnsupportedAddonModification", "K8sResourceNotFound"
    #   resp.update.errors[0].error_message #=> String
    #   resp.update.errors[0].resource_ids #=> Array
    #   resp.update.errors[0].resource_ids[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/UpdateClusterConfig AWS API Documentation
    #
    # @overload update_cluster_config(params = {})
    # @param [Hash] params ({})
    def update_cluster_config(params = {}, options = {})
      req = build_request(:update_cluster_config, params)
      req.send_request(options)
    end

    # Updates an Amazon EKS cluster to the specified Kubernetes version.
    # Your cluster continues to function during the update. The response
    # output includes an update ID that you can use to track the status of
    # your cluster update with the [ `DescribeUpdate` ][1] API operation.
    #
    # Cluster updates are asynchronous, and they should finish within a few
    # minutes. During an update, the cluster status moves to `UPDATING`
    # (this status transition is eventually consistent). When the update is
    # complete (either `Failed` or `Successful`), the cluster status moves
    # to `Active`.
    #
    # If your cluster has managed node groups attached to it, all of your
    # node groups' Kubernetes versions must match the cluster's Kubernetes
    # version in order to update the cluster to a new Kubernetes version.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/eks/latest/APIReference/API_DescribeUpdate.html
    #
    # @option params [required, String] :name
    #   The name of the Amazon EKS cluster to update.
    #
    # @option params [required, String] :version
    #   The desired Kubernetes version following a successful update.
    #
    # @option params [String] :client_request_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::UpdateClusterVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateClusterVersionResponse#update #update} => Types::Update
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_cluster_version({
    #     name: "String", # required
    #     version: "String", # required
    #     client_request_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.update.id #=> String
    #   resp.update.status #=> String, one of "InProgress", "Failed", "Cancelled", "Successful"
    #   resp.update.type #=> String, one of "VersionUpdate", "EndpointAccessUpdate", "LoggingUpdate", "ConfigUpdate", "AssociateIdentityProviderConfig", "DisassociateIdentityProviderConfig", "AssociateEncryptionConfig", "AddonUpdate", "VpcConfigUpdate", "AccessConfigUpdate", "UpgradePolicyUpdate", "ZonalShiftConfigUpdate", "AutoModeUpdate"
    #   resp.update.params #=> Array
    #   resp.update.params[0].type #=> String, one of "Version", "PlatformVersion", "EndpointPrivateAccess", "EndpointPublicAccess", "ClusterLogging", "DesiredSize", "LabelsToAdd", "LabelsToRemove", "TaintsToAdd", "TaintsToRemove", "MaxSize", "MinSize", "ReleaseVersion", "PublicAccessCidrs", "LaunchTemplateName", "LaunchTemplateVersion", "IdentityProviderConfig", "EncryptionConfig", "AddonVersion", "ServiceAccountRoleArn", "ResolveConflicts", "MaxUnavailable", "MaxUnavailablePercentage", "NodeRepairEnabled", "UpdateStrategy", "ConfigurationValues", "SecurityGroups", "Subnets", "AuthenticationMode", "PodIdentityAssociations", "UpgradePolicy", "ZonalShiftConfig", "ComputeConfig", "StorageConfig", "KubernetesNetworkConfig"
    #   resp.update.params[0].value #=> String
    #   resp.update.created_at #=> Time
    #   resp.update.errors #=> Array
    #   resp.update.errors[0].error_code #=> String, one of "SubnetNotFound", "SecurityGroupNotFound", "EniLimitReached", "IpNotAvailable", "AccessDenied", "OperationNotPermitted", "VpcIdNotFound", "Unknown", "NodeCreationFailure", "PodEvictionFailure", "InsufficientFreeAddresses", "ClusterUnreachable", "InsufficientNumberOfReplicas", "ConfigurationConflict", "AdmissionRequestDenied", "UnsupportedAddonModification", "K8sResourceNotFound"
    #   resp.update.errors[0].error_message #=> String
    #   resp.update.errors[0].resource_ids #=> Array
    #   resp.update.errors[0].resource_ids[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/UpdateClusterVersion AWS API Documentation
    #
    # @overload update_cluster_version(params = {})
    # @param [Hash] params ({})
    def update_cluster_version(params = {}, options = {})
      req = build_request(:update_cluster_version, params)
      req.send_request(options)
    end

    # Update an EKS Anywhere Subscription. Only auto renewal and tags can be
    # updated after subscription creation.
    #
    # @option params [required, String] :id
    #   The ID of the subscription.
    #
    # @option params [required, Boolean] :auto_renew
    #   A boolean indicating whether or not to automatically renew the
    #   subscription.
    #
    # @option params [String] :client_request_token
    #   Unique, case-sensitive identifier to ensure the idempotency of the
    #   request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::UpdateEksAnywhereSubscriptionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateEksAnywhereSubscriptionResponse#subscription #subscription} => Types::EksAnywhereSubscription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_eks_anywhere_subscription({
    #     id: "String", # required
    #     auto_renew: false, # required
    #     client_request_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.subscription.id #=> String
    #   resp.subscription.arn #=> String
    #   resp.subscription.created_at #=> Time
    #   resp.subscription.effective_date #=> Time
    #   resp.subscription.expiration_date #=> Time
    #   resp.subscription.license_quantity #=> Integer
    #   resp.subscription.license_type #=> String, one of "Cluster"
    #   resp.subscription.term.duration #=> Integer
    #   resp.subscription.term.unit #=> String, one of "MONTHS"
    #   resp.subscription.status #=> String
    #   resp.subscription.auto_renew #=> Boolean
    #   resp.subscription.license_arns #=> Array
    #   resp.subscription.license_arns[0] #=> String
    #   resp.subscription.licenses #=> Array
    #   resp.subscription.licenses[0].id #=> String
    #   resp.subscription.licenses[0].token #=> String
    #   resp.subscription.tags #=> Hash
    #   resp.subscription.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/UpdateEksAnywhereSubscription AWS API Documentation
    #
    # @overload update_eks_anywhere_subscription(params = {})
    # @param [Hash] params ({})
    def update_eks_anywhere_subscription(params = {}, options = {})
      req = build_request(:update_eks_anywhere_subscription, params)
      req.send_request(options)
    end

    # Updates an Amazon EKS managed node group configuration. Your node
    # group continues to function during the update. The response output
    # includes an update ID that you can use to track the status of your
    # node group update with the [ `DescribeUpdate` ][1] API operation. You
    # can update the Kubernetes labels and taints for a node group and the
    # scaling and version update configuration.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/eks/latest/APIReference/API_DescribeUpdate.html
    #
    # @option params [required, String] :cluster_name
    #   The name of your cluster.
    #
    # @option params [required, String] :nodegroup_name
    #   The name of the managed node group to update.
    #
    # @option params [Types::UpdateLabelsPayload] :labels
    #   The Kubernetes `labels` to apply to the nodes in the node group after
    #   the update.
    #
    # @option params [Types::UpdateTaintsPayload] :taints
    #   The Kubernetes taints to be applied to the nodes in the node group
    #   after the update. For more information, see [Node taints on managed
    #   node groups][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/node-taints-managed-node-groups.html
    #
    # @option params [Types::NodegroupScalingConfig] :scaling_config
    #   The scaling configuration details for the Auto Scaling group after the
    #   update.
    #
    # @option params [Types::NodegroupUpdateConfig] :update_config
    #   The node group update configuration.
    #
    # @option params [Types::NodeRepairConfig] :node_repair_config
    #   The node auto repair configuration for the node group.
    #
    # @option params [String] :client_request_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::UpdateNodegroupConfigResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateNodegroupConfigResponse#update #update} => Types::Update
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_nodegroup_config({
    #     cluster_name: "String", # required
    #     nodegroup_name: "String", # required
    #     labels: {
    #       add_or_update_labels: {
    #         "labelKey" => "labelValue",
    #       },
    #       remove_labels: ["String"],
    #     },
    #     taints: {
    #       add_or_update_taints: [
    #         {
    #           key: "taintKey",
    #           value: "taintValue",
    #           effect: "NO_SCHEDULE", # accepts NO_SCHEDULE, NO_EXECUTE, PREFER_NO_SCHEDULE
    #         },
    #       ],
    #       remove_taints: [
    #         {
    #           key: "taintKey",
    #           value: "taintValue",
    #           effect: "NO_SCHEDULE", # accepts NO_SCHEDULE, NO_EXECUTE, PREFER_NO_SCHEDULE
    #         },
    #       ],
    #     },
    #     scaling_config: {
    #       min_size: 1,
    #       max_size: 1,
    #       desired_size: 1,
    #     },
    #     update_config: {
    #       max_unavailable: 1,
    #       max_unavailable_percentage: 1,
    #       update_strategy: "DEFAULT", # accepts DEFAULT, MINIMAL
    #     },
    #     node_repair_config: {
    #       enabled: false,
    #     },
    #     client_request_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.update.id #=> String
    #   resp.update.status #=> String, one of "InProgress", "Failed", "Cancelled", "Successful"
    #   resp.update.type #=> String, one of "VersionUpdate", "EndpointAccessUpdate", "LoggingUpdate", "ConfigUpdate", "AssociateIdentityProviderConfig", "DisassociateIdentityProviderConfig", "AssociateEncryptionConfig", "AddonUpdate", "VpcConfigUpdate", "AccessConfigUpdate", "UpgradePolicyUpdate", "ZonalShiftConfigUpdate", "AutoModeUpdate"
    #   resp.update.params #=> Array
    #   resp.update.params[0].type #=> String, one of "Version", "PlatformVersion", "EndpointPrivateAccess", "EndpointPublicAccess", "ClusterLogging", "DesiredSize", "LabelsToAdd", "LabelsToRemove", "TaintsToAdd", "TaintsToRemove", "MaxSize", "MinSize", "ReleaseVersion", "PublicAccessCidrs", "LaunchTemplateName", "LaunchTemplateVersion", "IdentityProviderConfig", "EncryptionConfig", "AddonVersion", "ServiceAccountRoleArn", "ResolveConflicts", "MaxUnavailable", "MaxUnavailablePercentage", "NodeRepairEnabled", "UpdateStrategy", "ConfigurationValues", "SecurityGroups", "Subnets", "AuthenticationMode", "PodIdentityAssociations", "UpgradePolicy", "ZonalShiftConfig", "ComputeConfig", "StorageConfig", "KubernetesNetworkConfig"
    #   resp.update.params[0].value #=> String
    #   resp.update.created_at #=> Time
    #   resp.update.errors #=> Array
    #   resp.update.errors[0].error_code #=> String, one of "SubnetNotFound", "SecurityGroupNotFound", "EniLimitReached", "IpNotAvailable", "AccessDenied", "OperationNotPermitted", "VpcIdNotFound", "Unknown", "NodeCreationFailure", "PodEvictionFailure", "InsufficientFreeAddresses", "ClusterUnreachable", "InsufficientNumberOfReplicas", "ConfigurationConflict", "AdmissionRequestDenied", "UnsupportedAddonModification", "K8sResourceNotFound"
    #   resp.update.errors[0].error_message #=> String
    #   resp.update.errors[0].resource_ids #=> Array
    #   resp.update.errors[0].resource_ids[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/UpdateNodegroupConfig AWS API Documentation
    #
    # @overload update_nodegroup_config(params = {})
    # @param [Hash] params ({})
    def update_nodegroup_config(params = {}, options = {})
      req = build_request(:update_nodegroup_config, params)
      req.send_request(options)
    end

    # Updates the Kubernetes version or AMI version of an Amazon EKS managed
    # node group.
    #
    # You can update a node group using a launch template only if the node
    # group was originally deployed with a launch template. Additionally,
    # the launch template ID or name must match what was used when the node
    # group was created. You can update the launch template version with
    # necessary changes.
    #
    # If you need to update a custom AMI in a node group that was deployed
    # with a launch template, then update your custom AMI, specify the new
    # ID in a new version of the launch template, and then update the node
    # group to the new version of the launch template.
    #
    # If you update without a launch template, then you can update to the
    # latest available AMI version of a node group's current Kubernetes
    # version by not specifying a Kubernetes version in the request. You can
    # update to the latest AMI version of your cluster's current Kubernetes
    # version by specifying your cluster's Kubernetes version in the
    # request. For information about Linux versions, see [Amazon EKS
    # optimized Amazon Linux AMI versions][1] in the *Amazon EKS User
    # Guide*. For information about Windows versions, see [Amazon EKS
    # optimized Windows AMI versions][2] in the *Amazon EKS User Guide*.
    #
    # You cannot roll back a node group to an earlier Kubernetes version or
    # AMI version.
    #
    # When a node in a managed node group is terminated due to a scaling
    # action or update, every `Pod` on that node is drained first. Amazon
    # EKS attempts to drain the nodes gracefully and will fail if it is
    # unable to do so. You can `force` the update if Amazon EKS is unable to
    # drain the nodes as a result of a `Pod` disruption budget issue.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/eks/latest/userguide/eks-linux-ami-versions.html
    # [2]: https://docs.aws.amazon.com/eks/latest/userguide/eks-ami-versions-windows.html
    #
    # @option params [required, String] :cluster_name
    #   The name of your cluster.
    #
    # @option params [required, String] :nodegroup_name
    #   The name of the managed node group to update.
    #
    # @option params [String] :version
    #   The Kubernetes version to update to. If no version is specified, then
    #   the Kubernetes version of the node group does not change. You can
    #   specify the Kubernetes version of the cluster to update the node group
    #   to the latest AMI version of the cluster's Kubernetes version. If you
    #   specify `launchTemplate`, and your launch template uses a custom AMI,
    #   then don't specify `version`, or the node group update will fail. For
    #   more information about using launch templates with Amazon EKS, see
    #   [Customizing managed nodes with launch templates][1] in the *Amazon
    #   EKS User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html
    #
    # @option params [String] :release_version
    #   The AMI version of the Amazon EKS optimized AMI to use for the update.
    #   By default, the latest available AMI version for the node group's
    #   Kubernetes version is used. For information about Linux versions, see
    #   [Amazon EKS optimized Amazon Linux AMI versions][1] in the *Amazon EKS
    #   User Guide*. Amazon EKS managed node groups support the November 2022
    #   and later releases of the Windows AMIs. For information about Windows
    #   versions, see [Amazon EKS optimized Windows AMI versions][2] in the
    #   *Amazon EKS User Guide*.
    #
    #   If you specify `launchTemplate`, and your launch template uses a
    #   custom AMI, then don't specify `releaseVersion`, or the node group
    #   update will fail. For more information about using launch templates
    #   with Amazon EKS, see [Customizing managed nodes with launch
    #   templates][3] in the *Amazon EKS User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/eks-linux-ami-versions.html
    #   [2]: https://docs.aws.amazon.com/eks/latest/userguide/eks-ami-versions-windows.html
    #   [3]: https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html
    #
    # @option params [Types::LaunchTemplateSpecification] :launch_template
    #   An object representing a node group's launch template specification.
    #   You can only update a node group using a launch template if the node
    #   group was originally deployed with a launch template. When updating,
    #   you must specify the same launch template ID or name that was used to
    #   create the node group.
    #
    # @option params [Boolean] :force
    #   Force the update if any `Pod` on the existing node group can't be
    #   drained due to a `Pod` disruption budget issue. If an update fails
    #   because all Pods can't be drained, you can force the update after it
    #   fails to terminate the old node whether or not any `Pod` is running on
    #   the node.
    #
    # @option params [String] :client_request_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::UpdateNodegroupVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateNodegroupVersionResponse#update #update} => Types::Update
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_nodegroup_version({
    #     cluster_name: "String", # required
    #     nodegroup_name: "String", # required
    #     version: "String",
    #     release_version: "String",
    #     launch_template: {
    #       name: "String",
    #       version: "String",
    #       id: "String",
    #     },
    #     force: false,
    #     client_request_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.update.id #=> String
    #   resp.update.status #=> String, one of "InProgress", "Failed", "Cancelled", "Successful"
    #   resp.update.type #=> String, one of "VersionUpdate", "EndpointAccessUpdate", "LoggingUpdate", "ConfigUpdate", "AssociateIdentityProviderConfig", "DisassociateIdentityProviderConfig", "AssociateEncryptionConfig", "AddonUpdate", "VpcConfigUpdate", "AccessConfigUpdate", "UpgradePolicyUpdate", "ZonalShiftConfigUpdate", "AutoModeUpdate"
    #   resp.update.params #=> Array
    #   resp.update.params[0].type #=> String, one of "Version", "PlatformVersion", "EndpointPrivateAccess", "EndpointPublicAccess", "ClusterLogging", "DesiredSize", "LabelsToAdd", "LabelsToRemove", "TaintsToAdd", "TaintsToRemove", "MaxSize", "MinSize", "ReleaseVersion", "PublicAccessCidrs", "LaunchTemplateName", "LaunchTemplateVersion", "IdentityProviderConfig", "EncryptionConfig", "AddonVersion", "ServiceAccountRoleArn", "ResolveConflicts", "MaxUnavailable", "MaxUnavailablePercentage", "NodeRepairEnabled", "UpdateStrategy", "ConfigurationValues", "SecurityGroups", "Subnets", "AuthenticationMode", "PodIdentityAssociations", "UpgradePolicy", "ZonalShiftConfig", "ComputeConfig", "StorageConfig", "KubernetesNetworkConfig"
    #   resp.update.params[0].value #=> String
    #   resp.update.created_at #=> Time
    #   resp.update.errors #=> Array
    #   resp.update.errors[0].error_code #=> String, one of "SubnetNotFound", "SecurityGroupNotFound", "EniLimitReached", "IpNotAvailable", "AccessDenied", "OperationNotPermitted", "VpcIdNotFound", "Unknown", "NodeCreationFailure", "PodEvictionFailure", "InsufficientFreeAddresses", "ClusterUnreachable", "InsufficientNumberOfReplicas", "ConfigurationConflict", "AdmissionRequestDenied", "UnsupportedAddonModification", "K8sResourceNotFound"
    #   resp.update.errors[0].error_message #=> String
    #   resp.update.errors[0].resource_ids #=> Array
    #   resp.update.errors[0].resource_ids[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/UpdateNodegroupVersion AWS API Documentation
    #
    # @overload update_nodegroup_version(params = {})
    # @param [Hash] params ({})
    def update_nodegroup_version(params = {}, options = {})
      req = build_request(:update_nodegroup_version, params)
      req.send_request(options)
    end

    # Updates a EKS Pod Identity association. Only the IAM role can be
    # changed; an association can't be moved between clusters, namespaces,
    # or service accounts. If you need to edit the namespace or service
    # account, you need to delete the association and then create a new
    # association with your desired settings.
    #
    # @option params [required, String] :cluster_name
    #   The name of the cluster that you want to update the association in.
    #
    # @option params [required, String] :association_id
    #   The ID of the association to be updated.
    #
    # @option params [String] :role_arn
    #   The new IAM role to change the
    #
    # @option params [String] :client_request_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::UpdatePodIdentityAssociationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdatePodIdentityAssociationResponse#association #association} => Types::PodIdentityAssociation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_pod_identity_association({
    #     cluster_name: "String", # required
    #     association_id: "String", # required
    #     role_arn: "String",
    #     client_request_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.association.cluster_name #=> String
    #   resp.association.namespace #=> String
    #   resp.association.service_account #=> String
    #   resp.association.role_arn #=> String
    #   resp.association.association_arn #=> String
    #   resp.association.association_id #=> String
    #   resp.association.tags #=> Hash
    #   resp.association.tags["TagKey"] #=> String
    #   resp.association.created_at #=> Time
    #   resp.association.modified_at #=> Time
    #   resp.association.owner_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/UpdatePodIdentityAssociation AWS API Documentation
    #
    # @overload update_pod_identity_association(params = {})
    # @param [Hash] params ({})
    def update_pod_identity_association(params = {}, options = {})
      req = build_request(:update_pod_identity_association, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::EKS')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-eks'
      context[:gem_version] = '1.131.0'
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
    # | waiter_name             | params                            | :delay   | :max_attempts |
    # | ----------------------- | --------------------------------- | -------- | ------------- |
    # | addon_active            | {Client#describe_addon}           | 10       | 60            |
    # | addon_deleted           | {Client#describe_addon}           | 10       | 60            |
    # | cluster_active          | {Client#describe_cluster}         | 30       | 40            |
    # | cluster_deleted         | {Client#describe_cluster}         | 30       | 40            |
    # | fargate_profile_active  | {Client#describe_fargate_profile} | 10       | 60            |
    # | fargate_profile_deleted | {Client#describe_fargate_profile} | 30       | 60            |
    # | nodegroup_active        | {Client#describe_nodegroup}       | 30       | 80            |
    # | nodegroup_deleted       | {Client#describe_nodegroup}       | 30       | 40            |
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
        addon_active: Waiters::AddonActive,
        addon_deleted: Waiters::AddonDeleted,
        cluster_active: Waiters::ClusterActive,
        cluster_deleted: Waiters::ClusterDeleted,
        fargate_profile_active: Waiters::FargateProfileActive,
        fargate_profile_deleted: Waiters::FargateProfileDeleted,
        nodegroup_active: Waiters::NodegroupActive,
        nodegroup_deleted: Waiters::NodegroupDeleted
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
