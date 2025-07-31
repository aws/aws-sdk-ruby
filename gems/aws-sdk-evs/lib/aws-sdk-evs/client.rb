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

module Aws::Evs
  # An API client for Evs.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::Evs::Client.new(
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

    @identifier = :evs

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
    add_plugin(Aws::Evs::Plugins::Endpoints)

    # @overload initialize(options)
    #   @param [Hash] options
    #
    #   @option options [Array<Seahorse::Client::Plugin>] :plugins ([]])
    #     A list of plugins to apply to the client. Each plugin is either a
    #     class name or an instance of a plugin class.
    #
    #   @option options [required, Aws::CredentialProvider] :credentials
    #     Your AWS credentials used for authentication. This can be an instance of any one of the
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
    #     * EC2/ECS IMDS instance profile - When used by default, the timeouts
    #       are very aggressive. Construct and pass an instance of
    #       `Aws::InstanceProfileCredentials` or `Aws::ECSCredentials` to
    #       enable retries and extended timeouts. Instance profile credential
    #       fetching can be disabled by setting `ENV['AWS_EC2_METADATA_DISABLED']`
    #       to `true`.
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
    #     Your Bearer token used for authentication. This can be an instance of any one of the
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
    #   @option options [Aws::Evs::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::Evs::EndpointParameters`.
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

    # Creates an Amazon EVS environment that runs VCF software, such as SDDC
    # Manager, NSX Manager, and vCenter Server.
    #
    # During environment creation, Amazon EVS performs validations on DNS
    # settings, provisions VLAN subnets and hosts, and deploys the supplied
    # version of VCF.
    #
    # It can take several hours to create an environment. After the
    # deployment completes, you can configure VCF according to your unique
    # requirements.
    #
    # <note markdown="1"> You cannot use the `dedicatedHostId` and `placementGroupId` parameters
    # together in the same `CreateEnvironment` action. This results in a
    # `ValidationException` response.
    #
    #  </note>
    #
    # <note markdown="1"> EC2 instances created through Amazon EVS do not support associating an
    # IAM instance profile.
    #
    #  </note>
    #
    # @option params [String] :client_token
    #   <note markdown="1"> This parameter is not used in Amazon EVS
    #   currently. If you supply
    #   input for this parameter, it will have no effect.
    #
    #    </note>
    #
    #    A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the environment creation request. If you do not specify
    #   a client token, a randomly generated token is used for the request to
    #   ensure idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :environment_name
    #   The name to give to your environment. The name can contain only
    #   alphanumeric characters (case-sensitive), hyphens, and underscores. It
    #   must start with an alphanumeric character, and can't be longer than
    #   100 characters. The name must be unique within the Amazon Web Services
    #   Region and Amazon Web Services account that you're creating the
    #   environment in.
    #
    # @option params [String] :kms_key_id
    #   A unique ID for the customer-managed KMS key that is used to encrypt
    #   the VCF credential pairs for SDDC Manager, NSX Manager, and vCenter
    #   appliances. These credentials are stored in Amazon Web Services
    #   Secrets Manager.
    #
    # @option params [Hash<String,String>] :tags
    #   Metadata that assists with categorization and organization. Each tag
    #   consists of a key and an optional value. You define both. Tags don't
    #   propagate to any other cluster or Amazon Web Services resources.
    #
    # @option params [Types::ServiceAccessSecurityGroups] :service_access_security_groups
    #   The security group that controls communication between the Amazon EVS
    #   control plane and VPC. The default security group is used if a custom
    #   security group isn't specified.
    #
    #   The security group should allow access to the following.
    #
    #   * TCP/UDP access to the DNS servers
    #
    #   * HTTPS/SSH access to the host management VLAN subnet
    #
    #   * HTTPS/SSH access to the Management VM VLAN subnet
    #
    #   You should avoid modifying the security group rules after deployment,
    #   as this can break the persistent connection between the Amazon EVS
    #   control plane and VPC. This can cause future environment actions like
    #   adding or removing hosts to fail.
    #
    # @option params [required, String] :vpc_id
    #   A unique ID for the VPC that connects to the environment control plane
    #   for service access.
    #
    #   Amazon EVS requires that all VPC subnets exist in a single
    #   Availability Zone in a Region where the service is available.
    #
    #   The VPC that you select must have a valid DHCP option set with domain
    #   name, at least two DNS servers, and an NTP server. These settings are
    #   used to configure your VCF appliances and hosts.
    #
    #   If you plan to use HCX over the internet, choose a VPC that has a
    #   primary CIDR block and a /28 secondary CIDR block from an IPAM pool.
    #   Make sure that your VPC also has an attached internet gateway.
    #
    #   Amazon EVS does not support the following Amazon Web Services
    #   networking options for NSX overlay connectivity: cross-Region VPC
    #   peering, Amazon S3 gateway endpoints, or Amazon Web Services Direct
    #   Connect virtual private gateway associations.
    #
    # @option params [required, String] :service_access_subnet_id
    #   The subnet that is used to establish connectivity between the Amazon
    #   EVS control plane and VPC. Amazon EVS uses this subnet to validate
    #   mandatory DNS records for your VCF appliances and hosts and create the
    #   environment.
    #
    # @option params [required, String] :vcf_version
    #   The VCF version to use for the environment. Amazon EVS only supports
    #   VCF version 5.2.1 at this time.
    #
    # @option params [required, Boolean] :terms_accepted
    #   Customer confirmation that the customer has purchased and maintains
    #   sufficient VCF software licenses to cover all physical processor cores
    #   in the environment, in compliance with VMware's licensing
    #   requirements and terms of use.
    #
    # @option params [required, Array<Types::LicenseInfo>] :license_info
    #   The license information that Amazon EVS requires to create an
    #   environment. Amazon EVS requires two license keys: a VCF solution key
    #   and a vSAN license key. VCF licenses must have sufficient core
    #   entitlements to cover vCPU core and vSAN storage capacity needs.
    #
    #   VCF licenses can be used for only one Amazon EVS environment. Amazon
    #   EVS does not support reuse of VCF licenses for multiple environments.
    #
    #   VCF license information can be retrieved from the Broadcom portal.
    #
    # @option params [required, Types::InitialVlans] :initial_vlans
    #   The initial VLAN subnets for the environment. You must specify a
    #   non-overlapping CIDR block for each VLAN subnet.
    #
    # @option params [required, Array<Types::HostInfoForCreate>] :hosts
    #   The ESXi hosts to add to the environment. Amazon EVS requires that you
    #   provide details for a minimum of 4 hosts during environment creation.
    #
    #   For each host, you must provide the desired hostname, EC2 SSH key, and
    #   EC2 instance type. Optionally, you can also provide a partition or
    #   cluster placement group to use, or use Amazon EC2 Dedicated Hosts.
    #
    # @option params [required, Types::ConnectivityInfo] :connectivity_info
    #   The connectivity configuration for the environment. Amazon EVS
    #   requires that you specify two route server peer IDs. During
    #   environment creation, the route server endpoints peer with the NSX
    #   edges over the NSX, providing BGP dynamic routing for overlay
    #   networks.
    #
    # @option params [required, Types::VcfHostnames] :vcf_hostnames
    #   The DNS hostnames for the virtual machines that host the VCF
    #   management appliances. Amazon EVS requires that you provide DNS
    #   hostnames for the following appliances: vCenter, NSX Manager, SDDC
    #   Manager, and Cloud Builder.
    #
    # @option params [required, String] :site_id
    #   The Broadcom Site ID that is allocated to you as part of your
    #   electronic software delivery. This ID allows customer access to the
    #   Broadcom portal, and is provided to you by Broadcom at the close of
    #   your software contract or contract renewal. Amazon EVS uses the
    #   Broadcom Site ID that you provide to meet Broadcom VCF license usage
    #   reporting requirements for Amazon EVS.
    #
    # @return [Types::CreateEnvironmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateEnvironmentResponse#environment #environment} => Types::Environment
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_environment({
    #     client_token: "ClientToken",
    #     environment_name: "EnvironmentName",
    #     kms_key_id: "String",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     service_access_security_groups: {
    #       security_groups: ["SecurityGroupId"],
    #     },
    #     vpc_id: "VpcId", # required
    #     service_access_subnet_id: "SubnetId", # required
    #     vcf_version: "VCF-5.2.1", # required, accepts VCF-5.2.1
    #     terms_accepted: false, # required
    #     license_info: [ # required
    #       {
    #         solution_key: "SolutionKey", # required
    #         vsan_key: "VSanLicenseKey", # required
    #       },
    #     ],
    #     initial_vlans: { # required
    #       vmk_management: { # required
    #         cidr: "Cidr", # required
    #       },
    #       vm_management: { # required
    #         cidr: "Cidr", # required
    #       },
    #       v_motion: { # required
    #         cidr: "Cidr", # required
    #       },
    #       v_san: { # required
    #         cidr: "Cidr", # required
    #       },
    #       v_tep: { # required
    #         cidr: "Cidr", # required
    #       },
    #       edge_v_tep: { # required
    #         cidr: "Cidr", # required
    #       },
    #       nsx_uplink: { # required
    #         cidr: "Cidr", # required
    #       },
    #       hcx: { # required
    #         cidr: "Cidr", # required
    #       },
    #       expansion_vlan_1: { # required
    #         cidr: "Cidr", # required
    #       },
    #       expansion_vlan_2: { # required
    #         cidr: "Cidr", # required
    #       },
    #     },
    #     hosts: [ # required
    #       {
    #         host_name: "HostName", # required
    #         key_name: "KeyName", # required
    #         instance_type: "i4i.metal", # required, accepts i4i.metal
    #         placement_group_id: "PlacementGroupId",
    #         dedicated_host_id: "DedicatedHostId",
    #       },
    #     ],
    #     connectivity_info: { # required
    #       private_route_server_peerings: ["RouteServerPeering"], # required
    #     },
    #     vcf_hostnames: { # required
    #       v_center: "HostName", # required
    #       nsx: "HostName", # required
    #       nsx_manager_1: "HostName", # required
    #       nsx_manager_2: "HostName", # required
    #       nsx_manager_3: "HostName", # required
    #       nsx_edge_1: "HostName", # required
    #       nsx_edge_2: "HostName", # required
    #       sddc_manager: "HostName", # required
    #       cloud_builder: "HostName", # required
    #     },
    #     site_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.environment.environment_id #=> String
    #   resp.environment.environment_state #=> String, one of "CREATING", "CREATED", "DELETING", "DELETED", "CREATE_FAILED"
    #   resp.environment.state_details #=> String
    #   resp.environment.created_at #=> Time
    #   resp.environment.modified_at #=> Time
    #   resp.environment.environment_arn #=> String
    #   resp.environment.environment_name #=> String
    #   resp.environment.vpc_id #=> String
    #   resp.environment.service_access_subnet_id #=> String
    #   resp.environment.vcf_version #=> String, one of "VCF-5.2.1"
    #   resp.environment.terms_accepted #=> Boolean
    #   resp.environment.license_info #=> Array
    #   resp.environment.license_info[0].solution_key #=> String
    #   resp.environment.license_info[0].vsan_key #=> String
    #   resp.environment.site_id #=> String
    #   resp.environment.environment_status #=> String, one of "PASSED", "FAILED", "UNKNOWN"
    #   resp.environment.checks #=> Array
    #   resp.environment.checks[0].type #=> String, one of "KEY_REUSE", "KEY_COVERAGE", "REACHABILITY", "HOST_COUNT"
    #   resp.environment.checks[0].result #=> String, one of "PASSED", "FAILED", "UNKNOWN"
    #   resp.environment.checks[0].impaired_since #=> Time
    #   resp.environment.connectivity_info.private_route_server_peerings #=> Array
    #   resp.environment.connectivity_info.private_route_server_peerings[0] #=> String
    #   resp.environment.vcf_hostnames.v_center #=> String
    #   resp.environment.vcf_hostnames.nsx #=> String
    #   resp.environment.vcf_hostnames.nsx_manager_1 #=> String
    #   resp.environment.vcf_hostnames.nsx_manager_2 #=> String
    #   resp.environment.vcf_hostnames.nsx_manager_3 #=> String
    #   resp.environment.vcf_hostnames.nsx_edge_1 #=> String
    #   resp.environment.vcf_hostnames.nsx_edge_2 #=> String
    #   resp.environment.vcf_hostnames.sddc_manager #=> String
    #   resp.environment.vcf_hostnames.cloud_builder #=> String
    #   resp.environment.kms_key_id #=> String
    #   resp.environment.service_access_security_groups.security_groups #=> Array
    #   resp.environment.service_access_security_groups.security_groups[0] #=> String
    #   resp.environment.credentials #=> Array
    #   resp.environment.credentials[0].secret_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evs-2023-07-27/CreateEnvironment AWS API Documentation
    #
    # @overload create_environment(params = {})
    # @param [Hash] params ({})
    def create_environment(params = {}, options = {})
      req = build_request(:create_environment, params)
      req.send_request(options)
    end

    # Creates an ESXi host and adds it to an Amazon EVS environment. Amazon
    # EVS supports 4-16 hosts per environment.
    #
    # This action can only be used after the Amazon EVS environment is
    # deployed. All Amazon EVS hosts are created with the latest AMI release
    # version for the respective VCF version of the environment.
    #
    # You can use the `dedicatedHostId` parameter to specify an Amazon EC2
    # Dedicated Host for ESXi host creation.
    #
    # You can use the `placementGroupId` parameter to specify a cluster or
    # partition placement group to launch EC2 instances into.
    #
    # <note markdown="1"> You cannot use the `dedicatedHostId` and `placementGroupId` parameters
    # together in the same `CreateEnvironmentHost` action. This results in a
    # `ValidationException` response.
    #
    #  </note>
    #
    # <note markdown="1"> EC2 instances created through Amazon EVS do not support associating an
    # IAM instance profile.
    #
    #  </note>
    #
    # @option params [String] :client_token
    #   <note markdown="1"> This parameter is not used in Amazon EVS
    #   currently. If you supply
    #   input for this parameter, it will have no effect.
    #
    #    </note>
    #
    #    A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the host creation request. If you do not specify a
    #   client token, a randomly generated token is used for the request to
    #   ensure idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :environment_id
    #   A unique ID for the environment that the host is added to.
    #
    # @option params [required, Types::HostInfoForCreate] :host
    #   The host that is created and added to the environment.
    #
    # @return [Types::CreateEnvironmentHostResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateEnvironmentHostResponse#environment_summary #environment_summary} => Types::EnvironmentSummary
    #   * {Types::CreateEnvironmentHostResponse#host #host} => Types::Host
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_environment_host({
    #     client_token: "ClientToken",
    #     environment_id: "EnvironmentId", # required
    #     host: { # required
    #       host_name: "HostName", # required
    #       key_name: "KeyName", # required
    #       instance_type: "i4i.metal", # required, accepts i4i.metal
    #       placement_group_id: "PlacementGroupId",
    #       dedicated_host_id: "DedicatedHostId",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.environment_summary.environment_id #=> String
    #   resp.environment_summary.environment_name #=> String
    #   resp.environment_summary.vcf_version #=> String, one of "VCF-5.2.1"
    #   resp.environment_summary.environment_status #=> String, one of "PASSED", "FAILED", "UNKNOWN"
    #   resp.environment_summary.environment_state #=> String, one of "CREATING", "CREATED", "DELETING", "DELETED", "CREATE_FAILED"
    #   resp.environment_summary.created_at #=> Time
    #   resp.environment_summary.modified_at #=> Time
    #   resp.environment_summary.environment_arn #=> String
    #   resp.host.host_name #=> String
    #   resp.host.ip_address #=> String
    #   resp.host.key_name #=> String
    #   resp.host.instance_type #=> String, one of "i4i.metal"
    #   resp.host.placement_group_id #=> String
    #   resp.host.dedicated_host_id #=> String
    #   resp.host.created_at #=> Time
    #   resp.host.modified_at #=> Time
    #   resp.host.host_state #=> String, one of "CREATING", "CREATED", "UPDATING", "DELETING", "DELETED", "CREATE_FAILED", "UPDATE_FAILED"
    #   resp.host.state_details #=> String
    #   resp.host.ec2_instance_id #=> String
    #   resp.host.network_interfaces #=> Array
    #   resp.host.network_interfaces[0].network_interface_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evs-2023-07-27/CreateEnvironmentHost AWS API Documentation
    #
    # @overload create_environment_host(params = {})
    # @param [Hash] params ({})
    def create_environment_host(params = {}, options = {})
      req = build_request(:create_environment_host, params)
      req.send_request(options)
    end

    # Deletes an Amazon EVS environment.
    #
    # Amazon EVS environments will only be enabled for deletion once the
    # hosts are deleted. You can delete hosts using the
    # `DeleteEnvironmentHost` action.
    #
    # Environment deletion also deletes the associated Amazon EVS VLAN
    # subnets. Other associated Amazon Web Services resources are not
    # deleted. These resources may continue to incur costs.
    #
    # @option params [String] :client_token
    #   <note markdown="1"> This parameter is not used in Amazon EVS
    #   currently. If you supply
    #   input for this parameter, it will have no effect.
    #
    #    </note>
    #
    #    A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the environment deletion request. If you do not specify
    #   a client token, a randomly generated token is used for the request to
    #   ensure idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :environment_id
    #   A unique ID associated with the environment to be deleted.
    #
    # @return [Types::DeleteEnvironmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteEnvironmentResponse#environment #environment} => Types::Environment
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_environment({
    #     client_token: "ClientToken",
    #     environment_id: "EnvironmentId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.environment.environment_id #=> String
    #   resp.environment.environment_state #=> String, one of "CREATING", "CREATED", "DELETING", "DELETED", "CREATE_FAILED"
    #   resp.environment.state_details #=> String
    #   resp.environment.created_at #=> Time
    #   resp.environment.modified_at #=> Time
    #   resp.environment.environment_arn #=> String
    #   resp.environment.environment_name #=> String
    #   resp.environment.vpc_id #=> String
    #   resp.environment.service_access_subnet_id #=> String
    #   resp.environment.vcf_version #=> String, one of "VCF-5.2.1"
    #   resp.environment.terms_accepted #=> Boolean
    #   resp.environment.license_info #=> Array
    #   resp.environment.license_info[0].solution_key #=> String
    #   resp.environment.license_info[0].vsan_key #=> String
    #   resp.environment.site_id #=> String
    #   resp.environment.environment_status #=> String, one of "PASSED", "FAILED", "UNKNOWN"
    #   resp.environment.checks #=> Array
    #   resp.environment.checks[0].type #=> String, one of "KEY_REUSE", "KEY_COVERAGE", "REACHABILITY", "HOST_COUNT"
    #   resp.environment.checks[0].result #=> String, one of "PASSED", "FAILED", "UNKNOWN"
    #   resp.environment.checks[0].impaired_since #=> Time
    #   resp.environment.connectivity_info.private_route_server_peerings #=> Array
    #   resp.environment.connectivity_info.private_route_server_peerings[0] #=> String
    #   resp.environment.vcf_hostnames.v_center #=> String
    #   resp.environment.vcf_hostnames.nsx #=> String
    #   resp.environment.vcf_hostnames.nsx_manager_1 #=> String
    #   resp.environment.vcf_hostnames.nsx_manager_2 #=> String
    #   resp.environment.vcf_hostnames.nsx_manager_3 #=> String
    #   resp.environment.vcf_hostnames.nsx_edge_1 #=> String
    #   resp.environment.vcf_hostnames.nsx_edge_2 #=> String
    #   resp.environment.vcf_hostnames.sddc_manager #=> String
    #   resp.environment.vcf_hostnames.cloud_builder #=> String
    #   resp.environment.kms_key_id #=> String
    #   resp.environment.service_access_security_groups.security_groups #=> Array
    #   resp.environment.service_access_security_groups.security_groups[0] #=> String
    #   resp.environment.credentials #=> Array
    #   resp.environment.credentials[0].secret_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evs-2023-07-27/DeleteEnvironment AWS API Documentation
    #
    # @overload delete_environment(params = {})
    # @param [Hash] params ({})
    def delete_environment(params = {}, options = {})
      req = build_request(:delete_environment, params)
      req.send_request(options)
    end

    # Deletes a host from an Amazon EVS environment.
    #
    # <note markdown="1"> Before deleting a host, you must unassign and decommission the host
    # from within the SDDC Manager user interface. Not doing so could impact
    # the availability of your virtual machines or result in data loss.
    #
    #  </note>
    #
    # @option params [String] :client_token
    #   <note markdown="1"> This parameter is not used in Amazon EVS
    #   currently. If you supply
    #   input for this parameter, it will have no effect.
    #
    #    </note>
    #
    #    A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the host deletion request. If you do not specify a
    #   client token, a randomly generated token is used for the request to
    #   ensure idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :environment_id
    #   A unique ID for the host's environment.
    #
    # @option params [required, String] :host_name
    #   The DNS hostname associated with the host to be deleted.
    #
    # @return [Types::DeleteEnvironmentHostResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteEnvironmentHostResponse#environment_summary #environment_summary} => Types::EnvironmentSummary
    #   * {Types::DeleteEnvironmentHostResponse#host #host} => Types::Host
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_environment_host({
    #     client_token: "ClientToken",
    #     environment_id: "EnvironmentId", # required
    #     host_name: "HostName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.environment_summary.environment_id #=> String
    #   resp.environment_summary.environment_name #=> String
    #   resp.environment_summary.vcf_version #=> String, one of "VCF-5.2.1"
    #   resp.environment_summary.environment_status #=> String, one of "PASSED", "FAILED", "UNKNOWN"
    #   resp.environment_summary.environment_state #=> String, one of "CREATING", "CREATED", "DELETING", "DELETED", "CREATE_FAILED"
    #   resp.environment_summary.created_at #=> Time
    #   resp.environment_summary.modified_at #=> Time
    #   resp.environment_summary.environment_arn #=> String
    #   resp.host.host_name #=> String
    #   resp.host.ip_address #=> String
    #   resp.host.key_name #=> String
    #   resp.host.instance_type #=> String, one of "i4i.metal"
    #   resp.host.placement_group_id #=> String
    #   resp.host.dedicated_host_id #=> String
    #   resp.host.created_at #=> Time
    #   resp.host.modified_at #=> Time
    #   resp.host.host_state #=> String, one of "CREATING", "CREATED", "UPDATING", "DELETING", "DELETED", "CREATE_FAILED", "UPDATE_FAILED"
    #   resp.host.state_details #=> String
    #   resp.host.ec2_instance_id #=> String
    #   resp.host.network_interfaces #=> Array
    #   resp.host.network_interfaces[0].network_interface_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evs-2023-07-27/DeleteEnvironmentHost AWS API Documentation
    #
    # @overload delete_environment_host(params = {})
    # @param [Hash] params ({})
    def delete_environment_host(params = {}, options = {})
      req = build_request(:delete_environment_host, params)
      req.send_request(options)
    end

    # Returns a description of the specified environment.
    #
    # @option params [required, String] :environment_id
    #   A unique ID for the environment.
    #
    # @return [Types::GetEnvironmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEnvironmentResponse#environment #environment} => Types::Environment
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_environment({
    #     environment_id: "EnvironmentId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.environment.environment_id #=> String
    #   resp.environment.environment_state #=> String, one of "CREATING", "CREATED", "DELETING", "DELETED", "CREATE_FAILED"
    #   resp.environment.state_details #=> String
    #   resp.environment.created_at #=> Time
    #   resp.environment.modified_at #=> Time
    #   resp.environment.environment_arn #=> String
    #   resp.environment.environment_name #=> String
    #   resp.environment.vpc_id #=> String
    #   resp.environment.service_access_subnet_id #=> String
    #   resp.environment.vcf_version #=> String, one of "VCF-5.2.1"
    #   resp.environment.terms_accepted #=> Boolean
    #   resp.environment.license_info #=> Array
    #   resp.environment.license_info[0].solution_key #=> String
    #   resp.environment.license_info[0].vsan_key #=> String
    #   resp.environment.site_id #=> String
    #   resp.environment.environment_status #=> String, one of "PASSED", "FAILED", "UNKNOWN"
    #   resp.environment.checks #=> Array
    #   resp.environment.checks[0].type #=> String, one of "KEY_REUSE", "KEY_COVERAGE", "REACHABILITY", "HOST_COUNT"
    #   resp.environment.checks[0].result #=> String, one of "PASSED", "FAILED", "UNKNOWN"
    #   resp.environment.checks[0].impaired_since #=> Time
    #   resp.environment.connectivity_info.private_route_server_peerings #=> Array
    #   resp.environment.connectivity_info.private_route_server_peerings[0] #=> String
    #   resp.environment.vcf_hostnames.v_center #=> String
    #   resp.environment.vcf_hostnames.nsx #=> String
    #   resp.environment.vcf_hostnames.nsx_manager_1 #=> String
    #   resp.environment.vcf_hostnames.nsx_manager_2 #=> String
    #   resp.environment.vcf_hostnames.nsx_manager_3 #=> String
    #   resp.environment.vcf_hostnames.nsx_edge_1 #=> String
    #   resp.environment.vcf_hostnames.nsx_edge_2 #=> String
    #   resp.environment.vcf_hostnames.sddc_manager #=> String
    #   resp.environment.vcf_hostnames.cloud_builder #=> String
    #   resp.environment.kms_key_id #=> String
    #   resp.environment.service_access_security_groups.security_groups #=> Array
    #   resp.environment.service_access_security_groups.security_groups[0] #=> String
    #   resp.environment.credentials #=> Array
    #   resp.environment.credentials[0].secret_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evs-2023-07-27/GetEnvironment AWS API Documentation
    #
    # @overload get_environment(params = {})
    # @param [Hash] params ({})
    def get_environment(params = {}, options = {})
      req = build_request(:get_environment, params)
      req.send_request(options)
    end

    # List the hosts within an environment.
    #
    # @option params [String] :next_token
    #   A unique pagination token for each page. If `nextToken` is returned,
    #   there are more results available. Make the call again using the
    #   returned token with all other arguments unchanged to retrieve the next
    #   page. Each pagination token expires after 24 hours. Using an expired
    #   pagination token will return an *HTTP 400 InvalidToken* error.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return. If you specify `MaxResults`
    #   in the request, the response includes information up to the limit
    #   specified.
    #
    # @option params [required, String] :environment_id
    #   A unique ID for the environment.
    #
    # @return [Types::ListEnvironmentHostsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEnvironmentHostsResponse#next_token #next_token} => String
    #   * {Types::ListEnvironmentHostsResponse#environment_hosts #environment_hosts} => Array&lt;Types::Host&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_environment_hosts({
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #     environment_id: "EnvironmentId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.environment_hosts #=> Array
    #   resp.environment_hosts[0].host_name #=> String
    #   resp.environment_hosts[0].ip_address #=> String
    #   resp.environment_hosts[0].key_name #=> String
    #   resp.environment_hosts[0].instance_type #=> String, one of "i4i.metal"
    #   resp.environment_hosts[0].placement_group_id #=> String
    #   resp.environment_hosts[0].dedicated_host_id #=> String
    #   resp.environment_hosts[0].created_at #=> Time
    #   resp.environment_hosts[0].modified_at #=> Time
    #   resp.environment_hosts[0].host_state #=> String, one of "CREATING", "CREATED", "UPDATING", "DELETING", "DELETED", "CREATE_FAILED", "UPDATE_FAILED"
    #   resp.environment_hosts[0].state_details #=> String
    #   resp.environment_hosts[0].ec2_instance_id #=> String
    #   resp.environment_hosts[0].network_interfaces #=> Array
    #   resp.environment_hosts[0].network_interfaces[0].network_interface_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evs-2023-07-27/ListEnvironmentHosts AWS API Documentation
    #
    # @overload list_environment_hosts(params = {})
    # @param [Hash] params ({})
    def list_environment_hosts(params = {}, options = {})
      req = build_request(:list_environment_hosts, params)
      req.send_request(options)
    end

    # Lists environment VLANs that are associated with the specified
    # environment.
    #
    # @option params [String] :next_token
    #   A unique pagination token for each page. If `nextToken` is returned,
    #   there are more results available. Make the call again using the
    #   returned token with all other arguments unchanged to retrieve the next
    #   page. Each pagination token expires after 24 hours. Using an expired
    #   pagination token will return an *HTTP 400 InvalidToken* error.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return. If you specify `MaxResults`
    #   in the request, the response includes information up to the limit
    #   specified.
    #
    # @option params [required, String] :environment_id
    #   A unique ID for the environment.
    #
    # @return [Types::ListEnvironmentVlansResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEnvironmentVlansResponse#next_token #next_token} => String
    #   * {Types::ListEnvironmentVlansResponse#environment_vlans #environment_vlans} => Array&lt;Types::Vlan&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_environment_vlans({
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #     environment_id: "EnvironmentId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.environment_vlans #=> Array
    #   resp.environment_vlans[0].vlan_id #=> Integer
    #   resp.environment_vlans[0].cidr #=> String
    #   resp.environment_vlans[0].availability_zone #=> String
    #   resp.environment_vlans[0].function_name #=> String
    #   resp.environment_vlans[0].subnet_id #=> String
    #   resp.environment_vlans[0].created_at #=> Time
    #   resp.environment_vlans[0].modified_at #=> Time
    #   resp.environment_vlans[0].vlan_state #=> String, one of "CREATING", "CREATED", "DELETING", "DELETED", "CREATE_FAILED"
    #   resp.environment_vlans[0].state_details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evs-2023-07-27/ListEnvironmentVlans AWS API Documentation
    #
    # @overload list_environment_vlans(params = {})
    # @param [Hash] params ({})
    def list_environment_vlans(params = {}, options = {})
      req = build_request(:list_environment_vlans, params)
      req.send_request(options)
    end

    # Lists the Amazon EVS environments in your Amazon Web Services account
    # in the specified Amazon Web Services Region.
    #
    # @option params [String] :next_token
    #   A unique pagination token for each page. If `nextToken` is returned,
    #   there are more results available. Make the call again using the
    #   returned token with all other arguments unchanged to retrieve the next
    #   page. Each pagination token expires after 24 hours. Using an expired
    #   pagination token will return an *HTTP 400 InvalidToken* error.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return. If you specify `MaxResults`
    #   in the request, the response includes information up to the limit
    #   specified.
    #
    # @option params [Array<String>] :state
    #   The state of an environment. Used to filter response results to return
    #   only environments with the specified `environmentState`.
    #
    # @return [Types::ListEnvironmentsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEnvironmentsResponse#next_token #next_token} => String
    #   * {Types::ListEnvironmentsResponse#environment_summaries #environment_summaries} => Array&lt;Types::EnvironmentSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_environments({
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #     state: ["CREATING"], # accepts CREATING, CREATED, DELETING, DELETED, CREATE_FAILED
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.environment_summaries #=> Array
    #   resp.environment_summaries[0].environment_id #=> String
    #   resp.environment_summaries[0].environment_name #=> String
    #   resp.environment_summaries[0].vcf_version #=> String, one of "VCF-5.2.1"
    #   resp.environment_summaries[0].environment_status #=> String, one of "PASSED", "FAILED", "UNKNOWN"
    #   resp.environment_summaries[0].environment_state #=> String, one of "CREATING", "CREATED", "DELETING", "DELETED", "CREATE_FAILED"
    #   resp.environment_summaries[0].created_at #=> Time
    #   resp.environment_summaries[0].modified_at #=> Time
    #   resp.environment_summaries[0].environment_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evs-2023-07-27/ListEnvironments AWS API Documentation
    #
    # @overload list_environments(params = {})
    # @param [Hash] params ({})
    def list_environments(params = {}, options = {})
      req = build_request(:list_environments, params)
      req.send_request(options)
    end

    # Lists the tags for an Amazon EVS resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) that identifies the resource to list
    #   tags for.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/evs-2023-07-27/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Associates the specified tags to an Amazon EVS resource with the
    # specified `resourceArn`. If existing tags on a resource are not
    # specified in the request parameters, they aren't changed. When a
    # resource is deleted, the tags associated with that resource are also
    # deleted. Tags that you create for Amazon EVS resources don't
    # propagate to any other resources associated with the environment. For
    # example, if you tag an environment with this operation, that tag
    # doesn't automatically propagate to the VLAN subnets and hosts
    # associated with the environment.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource to add tags to.
    #
    # @option params [required, Hash<String,String>] :tags
    #   Metadata that assists with categorization and organization. Each tag
    #   consists of a key and an optional value. You define both. Tags don't
    #   propagate to any other environment or Amazon Web Services resources.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/evs-2023-07-27/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Deletes specified tags from an Amazon EVS resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource to delete tags from.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The keys of the tags to delete.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/evs-2023-07-27/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::Evs')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-evs'
      context[:gem_version] = '1.2.0'
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
