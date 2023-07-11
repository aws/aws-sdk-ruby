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

Aws::Plugins::GlobalConfiguration.add_identifier(:apprunner)

module Aws::AppRunner
  # An API client for AppRunner.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::AppRunner::Client.new(
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

    @identifier = :apprunner

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
    add_plugin(Aws::AppRunner::Plugins::Endpoints)

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
    #   @option options [Aws::AppRunner::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::AppRunner::EndpointParameters`
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

    # Associate your own domain name with the App Runner subdomain URL of
    # your App Runner service.
    #
    # After you call `AssociateCustomDomain` and receive a successful
    # response, use the information in the CustomDomain record that's
    # returned to add CNAME records to your Domain Name System (DNS). For
    # each mapped domain name, add a mapping to the target App Runner
    # subdomain and one or more certificate validation records. App Runner
    # then performs DNS validation to verify that you own or control the
    # domain name that you associated. App Runner tracks domain validity in
    # a certificate stored in [AWS Certificate Manager (ACM)][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/acm/latest/userguide
    #
    # @option params [required, String] :service_arn
    #   The Amazon Resource Name (ARN) of the App Runner service that you want
    #   to associate a custom domain name with.
    #
    # @option params [required, String] :domain_name
    #   A custom domain endpoint to associate. Specify a root domain (for
    #   example, `example.com`), a subdomain (for example, `login.example.com`
    #   or `admin.login.example.com`), or a wildcard (for example,
    #   `*.example.com`).
    #
    # @option params [Boolean] :enable_www_subdomain
    #   Set to `true` to associate the subdomain `www.DomainName ` with the
    #   App Runner service in addition to the base domain.
    #
    #   Default: `true`
    #
    # @return [Types::AssociateCustomDomainResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociateCustomDomainResponse#dns_target #dns_target} => String
    #   * {Types::AssociateCustomDomainResponse#service_arn #service_arn} => String
    #   * {Types::AssociateCustomDomainResponse#custom_domain #custom_domain} => Types::CustomDomain
    #   * {Types::AssociateCustomDomainResponse#vpc_dns_targets #vpc_dns_targets} => Array&lt;Types::VpcDNSTarget&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_custom_domain({
    #     service_arn: "AppRunnerResourceArn", # required
    #     domain_name: "DomainName", # required
    #     enable_www_subdomain: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.dns_target #=> String
    #   resp.service_arn #=> String
    #   resp.custom_domain.domain_name #=> String
    #   resp.custom_domain.enable_www_subdomain #=> Boolean
    #   resp.custom_domain.certificate_validation_records #=> Array
    #   resp.custom_domain.certificate_validation_records[0].name #=> String
    #   resp.custom_domain.certificate_validation_records[0].type #=> String
    #   resp.custom_domain.certificate_validation_records[0].value #=> String
    #   resp.custom_domain.certificate_validation_records[0].status #=> String, one of "PENDING_VALIDATION", "SUCCESS", "FAILED"
    #   resp.custom_domain.status #=> String, one of "CREATING", "CREATE_FAILED", "ACTIVE", "DELETING", "DELETE_FAILED", "PENDING_CERTIFICATE_DNS_VALIDATION", "BINDING_CERTIFICATE"
    #   resp.vpc_dns_targets #=> Array
    #   resp.vpc_dns_targets[0].vpc_ingress_connection_arn #=> String
    #   resp.vpc_dns_targets[0].vpc_id #=> String
    #   resp.vpc_dns_targets[0].domain_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/AssociateCustomDomain AWS API Documentation
    #
    # @overload associate_custom_domain(params = {})
    # @param [Hash] params ({})
    def associate_custom_domain(params = {}, options = {})
      req = build_request(:associate_custom_domain, params)
      req.send_request(options)
    end

    # Create an App Runner automatic scaling configuration resource. App
    # Runner requires this resource when you create or update App Runner
    # services and you require non-default auto scaling settings. You can
    # share an auto scaling configuration across multiple services.
    #
    # Create multiple revisions of a configuration by calling this action
    # multiple times using the same `AutoScalingConfigurationName`. The call
    # returns incremental `AutoScalingConfigurationRevision` values. When
    # you create a service and configure an auto scaling configuration
    # resource, the service uses the latest active revision of the auto
    # scaling configuration by default. You can optionally configure the
    # service to use a specific revision.
    #
    # Configure a higher `MinSize` to increase the spread of your App Runner
    # service over more Availability Zones in the Amazon Web Services
    # Region. The tradeoff is a higher minimal cost.
    #
    # Configure a lower `MaxSize` to control your cost. The tradeoff is
    # lower responsiveness during peak demand.
    #
    # @option params [required, String] :auto_scaling_configuration_name
    #   A name for the auto scaling configuration. When you use it for the
    #   first time in an Amazon Web Services Region, App Runner creates
    #   revision number `1` of this name. When you use the same name in
    #   subsequent calls, App Runner creates incremental revisions of the
    #   configuration.
    #
    #   <note markdown="1"> The name `DefaultConfiguration` is reserved (it's the configuration
    #   that App Runner uses if you don't provide a custome one). You can't
    #   use it to create a new auto scaling configuration, and you can't
    #   create a revision of it.
    #
    #    When you want to use your own auto scaling configuration for your App
    #   Runner service, *create a configuration with a different name*, and
    #   then provide it when you create or update your service.
    #
    #    </note>
    #
    # @option params [Integer] :max_concurrency
    #   The maximum number of concurrent requests that you want an instance to
    #   process. If the number of concurrent requests exceeds this limit, App
    #   Runner scales up your service.
    #
    #   Default: `100`
    #
    # @option params [Integer] :min_size
    #   The minimum number of instances that App Runner provisions for your
    #   service. The service always has at least `MinSize` provisioned
    #   instances. Some of them actively serve traffic. The rest of them
    #   (provisioned and inactive instances) are a cost-effective compute
    #   capacity reserve and are ready to be quickly activated. You pay for
    #   memory usage of all the provisioned instances. You pay for CPU usage
    #   of only the active subset.
    #
    #   App Runner temporarily doubles the number of provisioned instances
    #   during deployments, to maintain the same capacity for both old and new
    #   code.
    #
    #   Default: `1`
    #
    # @option params [Integer] :max_size
    #   The maximum number of instances that your service scales up to. At
    #   most `MaxSize` instances actively serve traffic for your service.
    #
    #   Default: `25`
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of metadata items that you can associate with your auto scaling
    #   configuration resource. A tag is a key-value pair.
    #
    # @return [Types::CreateAutoScalingConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAutoScalingConfigurationResponse#auto_scaling_configuration #auto_scaling_configuration} => Types::AutoScalingConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_auto_scaling_configuration({
    #     auto_scaling_configuration_name: "AutoScalingConfigurationName", # required
    #     max_concurrency: 1,
    #     min_size: 1,
    #     max_size: 1,
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.auto_scaling_configuration.auto_scaling_configuration_arn #=> String
    #   resp.auto_scaling_configuration.auto_scaling_configuration_name #=> String
    #   resp.auto_scaling_configuration.auto_scaling_configuration_revision #=> Integer
    #   resp.auto_scaling_configuration.latest #=> Boolean
    #   resp.auto_scaling_configuration.status #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.auto_scaling_configuration.max_concurrency #=> Integer
    #   resp.auto_scaling_configuration.min_size #=> Integer
    #   resp.auto_scaling_configuration.max_size #=> Integer
    #   resp.auto_scaling_configuration.created_at #=> Time
    #   resp.auto_scaling_configuration.deleted_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/CreateAutoScalingConfiguration AWS API Documentation
    #
    # @overload create_auto_scaling_configuration(params = {})
    # @param [Hash] params ({})
    def create_auto_scaling_configuration(params = {}, options = {})
      req = build_request(:create_auto_scaling_configuration, params)
      req.send_request(options)
    end

    # Create an App Runner connection resource. App Runner requires a
    # connection resource when you create App Runner services that access
    # private repositories from certain third-party providers. You can share
    # a connection across multiple services.
    #
    # A connection resource is needed to access GitHub repositories. GitHub
    # requires a user interface approval process through the App Runner
    # console before you can use the connection.
    #
    # @option params [required, String] :connection_name
    #   A name for the new connection. It must be unique across all App Runner
    #   connections for the Amazon Web Services account in the Amazon Web
    #   Services Region.
    #
    # @option params [required, String] :provider_type
    #   The source repository provider.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of metadata items that you can associate with your connection
    #   resource. A tag is a key-value pair.
    #
    # @return [Types::CreateConnectionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateConnectionResponse#connection #connection} => Types::Connection
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_connection({
    #     connection_name: "ConnectionName", # required
    #     provider_type: "GITHUB", # required, accepts GITHUB
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.connection.connection_name #=> String
    #   resp.connection.connection_arn #=> String
    #   resp.connection.provider_type #=> String, one of "GITHUB"
    #   resp.connection.status #=> String, one of "PENDING_HANDSHAKE", "AVAILABLE", "ERROR", "DELETED"
    #   resp.connection.created_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/CreateConnection AWS API Documentation
    #
    # @overload create_connection(params = {})
    # @param [Hash] params ({})
    def create_connection(params = {}, options = {})
      req = build_request(:create_connection, params)
      req.send_request(options)
    end

    # Create an App Runner observability configuration resource. App Runner
    # requires this resource when you create or update App Runner services
    # and you want to enable non-default observability features. You can
    # share an observability configuration across multiple services.
    #
    # Create multiple revisions of a configuration by calling this action
    # multiple times using the same `ObservabilityConfigurationName`. The
    # call returns incremental `ObservabilityConfigurationRevision` values.
    # When you create a service and configure an observability configuration
    # resource, the service uses the latest active revision of the
    # observability configuration by default. You can optionally configure
    # the service to use a specific revision.
    #
    # The observability configuration resource is designed to configure
    # multiple features (currently one feature, tracing). This action takes
    # optional parameters that describe the configuration of these features
    # (currently one parameter, `TraceConfiguration`). If you don't specify
    # a feature parameter, App Runner doesn't enable the feature.
    #
    # @option params [required, String] :observability_configuration_name
    #   A name for the observability configuration. When you use it for the
    #   first time in an Amazon Web Services Region, App Runner creates
    #   revision number `1` of this name. When you use the same name in
    #   subsequent calls, App Runner creates incremental revisions of the
    #   configuration.
    #
    #   <note markdown="1"> The name `DefaultConfiguration` is reserved. You can't use it to
    #   create a new observability configuration, and you can't create a
    #   revision of it.
    #
    #    When you want to use your own observability configuration for your App
    #   Runner service, *create a configuration with a different name*, and
    #   then provide it when you create or update your service.
    #
    #    </note>
    #
    # @option params [Types::TraceConfiguration] :trace_configuration
    #   The configuration of the tracing feature within this observability
    #   configuration. If you don't specify it, App Runner doesn't enable
    #   tracing.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of metadata items that you can associate with your
    #   observability configuration resource. A tag is a key-value pair.
    #
    # @return [Types::CreateObservabilityConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateObservabilityConfigurationResponse#observability_configuration #observability_configuration} => Types::ObservabilityConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_observability_configuration({
    #     observability_configuration_name: "ObservabilityConfigurationName", # required
    #     trace_configuration: {
    #       vendor: "AWSXRAY", # required, accepts AWSXRAY
    #     },
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.observability_configuration.observability_configuration_arn #=> String
    #   resp.observability_configuration.observability_configuration_name #=> String
    #   resp.observability_configuration.trace_configuration.vendor #=> String, one of "AWSXRAY"
    #   resp.observability_configuration.observability_configuration_revision #=> Integer
    #   resp.observability_configuration.latest #=> Boolean
    #   resp.observability_configuration.status #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.observability_configuration.created_at #=> Time
    #   resp.observability_configuration.deleted_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/CreateObservabilityConfiguration AWS API Documentation
    #
    # @overload create_observability_configuration(params = {})
    # @param [Hash] params ({})
    def create_observability_configuration(params = {}, options = {})
      req = build_request(:create_observability_configuration, params)
      req.send_request(options)
    end

    # Create an App Runner service. After the service is created, the action
    # also automatically starts a deployment.
    #
    # This is an asynchronous operation. On a successful call, you can use
    # the returned `OperationId` and the [ListOperations][1] call to track
    # the operation's progress.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/apprunner/latest/api/API_ListOperations.html
    #
    # @option params [required, String] :service_name
    #   A name for the App Runner service. It must be unique across all the
    #   running App Runner services in your Amazon Web Services account in the
    #   Amazon Web Services Region.
    #
    # @option params [required, Types::SourceConfiguration] :source_configuration
    #   The source to deploy to the App Runner service. It can be a code or an
    #   image repository.
    #
    # @option params [Types::InstanceConfiguration] :instance_configuration
    #   The runtime configuration of instances (scaling units) of your
    #   service.
    #
    # @option params [Array<Types::Tag>] :tags
    #   An optional list of metadata items that you can associate with the App
    #   Runner service resource. A tag is a key-value pair.
    #
    # @option params [Types::EncryptionConfiguration] :encryption_configuration
    #   An optional custom encryption key that App Runner uses to encrypt the
    #   copy of your source repository that it maintains and your service
    #   logs. By default, App Runner uses an Amazon Web Services managed key.
    #
    # @option params [Types::HealthCheckConfiguration] :health_check_configuration
    #   The settings for the health check that App Runner performs to monitor
    #   the health of the App Runner service.
    #
    # @option params [String] :auto_scaling_configuration_arn
    #   The Amazon Resource Name (ARN) of an App Runner automatic scaling
    #   configuration resource that you want to associate with your service.
    #   If not provided, App Runner associates the latest revision of a
    #   default auto scaling configuration.
    #
    #   Specify an ARN with a name and a revision number to associate that
    #   revision. For example:
    #   `arn:aws:apprunner:us-east-1:123456789012:autoscalingconfiguration/high-availability/3`
    #
    #   Specify just the name to associate the latest revision. For example:
    #   `arn:aws:apprunner:us-east-1:123456789012:autoscalingconfiguration/high-availability`
    #
    # @option params [Types::NetworkConfiguration] :network_configuration
    #   Configuration settings related to network traffic of the web
    #   application that the App Runner service runs.
    #
    # @option params [Types::ServiceObservabilityConfiguration] :observability_configuration
    #   The observability configuration of your service.
    #
    # @return [Types::CreateServiceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateServiceResponse#service #service} => Types::Service
    #   * {Types::CreateServiceResponse#operation_id #operation_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_service({
    #     service_name: "ServiceName", # required
    #     source_configuration: { # required
    #       code_repository: {
    #         repository_url: "String", # required
    #         source_code_version: { # required
    #           type: "BRANCH", # required, accepts BRANCH
    #           value: "String", # required
    #         },
    #         code_configuration: {
    #           configuration_source: "REPOSITORY", # required, accepts REPOSITORY, API
    #           code_configuration_values: {
    #             runtime: "PYTHON_3", # required, accepts PYTHON_3, NODEJS_12, NODEJS_14, CORRETTO_8, CORRETTO_11, NODEJS_16, GO_1, DOTNET_6, PHP_81, RUBY_31
    #             build_command: "BuildCommand",
    #             start_command: "StartCommand",
    #             port: "String",
    #             runtime_environment_variables: {
    #               "RuntimeEnvironmentVariablesKey" => "RuntimeEnvironmentVariablesValue",
    #             },
    #             runtime_environment_secrets: {
    #               "RuntimeEnvironmentSecretsName" => "RuntimeEnvironmentSecretsValue",
    #             },
    #           },
    #         },
    #       },
    #       image_repository: {
    #         image_identifier: "ImageIdentifier", # required
    #         image_configuration: {
    #           runtime_environment_variables: {
    #             "RuntimeEnvironmentVariablesKey" => "RuntimeEnvironmentVariablesValue",
    #           },
    #           start_command: "StartCommand",
    #           port: "String",
    #           runtime_environment_secrets: {
    #             "RuntimeEnvironmentSecretsName" => "RuntimeEnvironmentSecretsValue",
    #           },
    #         },
    #         image_repository_type: "ECR", # required, accepts ECR, ECR_PUBLIC
    #       },
    #       auto_deployments_enabled: false,
    #       authentication_configuration: {
    #         connection_arn: "AppRunnerResourceArn",
    #         access_role_arn: "RoleArn",
    #       },
    #     },
    #     instance_configuration: {
    #       cpu: "Cpu",
    #       memory: "Memory",
    #       instance_role_arn: "RoleArn",
    #     },
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       },
    #     ],
    #     encryption_configuration: {
    #       kms_key: "KmsKeyArn", # required
    #     },
    #     health_check_configuration: {
    #       protocol: "TCP", # accepts TCP, HTTP
    #       path: "HealthCheckPath",
    #       interval: 1,
    #       timeout: 1,
    #       healthy_threshold: 1,
    #       unhealthy_threshold: 1,
    #     },
    #     auto_scaling_configuration_arn: "AppRunnerResourceArn",
    #     network_configuration: {
    #       egress_configuration: {
    #         egress_type: "DEFAULT", # accepts DEFAULT, VPC
    #         vpc_connector_arn: "AppRunnerResourceArn",
    #       },
    #       ingress_configuration: {
    #         is_publicly_accessible: false,
    #       },
    #     },
    #     observability_configuration: {
    #       observability_enabled: false, # required
    #       observability_configuration_arn: "AppRunnerResourceArn",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.service.service_name #=> String
    #   resp.service.service_id #=> String
    #   resp.service.service_arn #=> String
    #   resp.service.service_url #=> String
    #   resp.service.created_at #=> Time
    #   resp.service.updated_at #=> Time
    #   resp.service.deleted_at #=> Time
    #   resp.service.status #=> String, one of "CREATE_FAILED", "RUNNING", "DELETED", "DELETE_FAILED", "PAUSED", "OPERATION_IN_PROGRESS"
    #   resp.service.source_configuration.code_repository.repository_url #=> String
    #   resp.service.source_configuration.code_repository.source_code_version.type #=> String, one of "BRANCH"
    #   resp.service.source_configuration.code_repository.source_code_version.value #=> String
    #   resp.service.source_configuration.code_repository.code_configuration.configuration_source #=> String, one of "REPOSITORY", "API"
    #   resp.service.source_configuration.code_repository.code_configuration.code_configuration_values.runtime #=> String, one of "PYTHON_3", "NODEJS_12", "NODEJS_14", "CORRETTO_8", "CORRETTO_11", "NODEJS_16", "GO_1", "DOTNET_6", "PHP_81", "RUBY_31"
    #   resp.service.source_configuration.code_repository.code_configuration.code_configuration_values.build_command #=> String
    #   resp.service.source_configuration.code_repository.code_configuration.code_configuration_values.start_command #=> String
    #   resp.service.source_configuration.code_repository.code_configuration.code_configuration_values.port #=> String
    #   resp.service.source_configuration.code_repository.code_configuration.code_configuration_values.runtime_environment_variables #=> Hash
    #   resp.service.source_configuration.code_repository.code_configuration.code_configuration_values.runtime_environment_variables["RuntimeEnvironmentVariablesKey"] #=> String
    #   resp.service.source_configuration.code_repository.code_configuration.code_configuration_values.runtime_environment_secrets #=> Hash
    #   resp.service.source_configuration.code_repository.code_configuration.code_configuration_values.runtime_environment_secrets["RuntimeEnvironmentSecretsName"] #=> String
    #   resp.service.source_configuration.image_repository.image_identifier #=> String
    #   resp.service.source_configuration.image_repository.image_configuration.runtime_environment_variables #=> Hash
    #   resp.service.source_configuration.image_repository.image_configuration.runtime_environment_variables["RuntimeEnvironmentVariablesKey"] #=> String
    #   resp.service.source_configuration.image_repository.image_configuration.start_command #=> String
    #   resp.service.source_configuration.image_repository.image_configuration.port #=> String
    #   resp.service.source_configuration.image_repository.image_configuration.runtime_environment_secrets #=> Hash
    #   resp.service.source_configuration.image_repository.image_configuration.runtime_environment_secrets["RuntimeEnvironmentSecretsName"] #=> String
    #   resp.service.source_configuration.image_repository.image_repository_type #=> String, one of "ECR", "ECR_PUBLIC"
    #   resp.service.source_configuration.auto_deployments_enabled #=> Boolean
    #   resp.service.source_configuration.authentication_configuration.connection_arn #=> String
    #   resp.service.source_configuration.authentication_configuration.access_role_arn #=> String
    #   resp.service.instance_configuration.cpu #=> String
    #   resp.service.instance_configuration.memory #=> String
    #   resp.service.instance_configuration.instance_role_arn #=> String
    #   resp.service.encryption_configuration.kms_key #=> String
    #   resp.service.health_check_configuration.protocol #=> String, one of "TCP", "HTTP"
    #   resp.service.health_check_configuration.path #=> String
    #   resp.service.health_check_configuration.interval #=> Integer
    #   resp.service.health_check_configuration.timeout #=> Integer
    #   resp.service.health_check_configuration.healthy_threshold #=> Integer
    #   resp.service.health_check_configuration.unhealthy_threshold #=> Integer
    #   resp.service.auto_scaling_configuration_summary.auto_scaling_configuration_arn #=> String
    #   resp.service.auto_scaling_configuration_summary.auto_scaling_configuration_name #=> String
    #   resp.service.auto_scaling_configuration_summary.auto_scaling_configuration_revision #=> Integer
    #   resp.service.network_configuration.egress_configuration.egress_type #=> String, one of "DEFAULT", "VPC"
    #   resp.service.network_configuration.egress_configuration.vpc_connector_arn #=> String
    #   resp.service.network_configuration.ingress_configuration.is_publicly_accessible #=> Boolean
    #   resp.service.observability_configuration.observability_enabled #=> Boolean
    #   resp.service.observability_configuration.observability_configuration_arn #=> String
    #   resp.operation_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/CreateService AWS API Documentation
    #
    # @overload create_service(params = {})
    # @param [Hash] params ({})
    def create_service(params = {}, options = {})
      req = build_request(:create_service, params)
      req.send_request(options)
    end

    # Create an App Runner VPC connector resource. App Runner requires this
    # resource when you want to associate your App Runner service to a
    # custom Amazon Virtual Private Cloud (Amazon VPC).
    #
    # @option params [required, String] :vpc_connector_name
    #   A name for the VPC connector.
    #
    # @option params [required, Array<String>] :subnets
    #   A list of IDs of subnets that App Runner should use when it associates
    #   your service with a custom Amazon VPC. Specify IDs of subnets of a
    #   single Amazon VPC. App Runner determines the Amazon VPC from the
    #   subnets you specify.
    #
    #   <note markdown="1"> App Runner currently only provides support for IPv4.
    #
    #    </note>
    #
    # @option params [Array<String>] :security_groups
    #   A list of IDs of security groups that App Runner should use for access
    #   to Amazon Web Services resources under the specified subnets. If not
    #   specified, App Runner uses the default security group of the Amazon
    #   VPC. The default security group allows all outbound traffic.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of metadata items that you can associate with your VPC
    #   connector resource. A tag is a key-value pair.
    #
    # @return [Types::CreateVpcConnectorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateVpcConnectorResponse#vpc_connector #vpc_connector} => Types::VpcConnector
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_vpc_connector({
    #     vpc_connector_name: "VpcConnectorName", # required
    #     subnets: ["String"], # required
    #     security_groups: ["String"],
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.vpc_connector.vpc_connector_name #=> String
    #   resp.vpc_connector.vpc_connector_arn #=> String
    #   resp.vpc_connector.vpc_connector_revision #=> Integer
    #   resp.vpc_connector.subnets #=> Array
    #   resp.vpc_connector.subnets[0] #=> String
    #   resp.vpc_connector.security_groups #=> Array
    #   resp.vpc_connector.security_groups[0] #=> String
    #   resp.vpc_connector.status #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.vpc_connector.created_at #=> Time
    #   resp.vpc_connector.deleted_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/CreateVpcConnector AWS API Documentation
    #
    # @overload create_vpc_connector(params = {})
    # @param [Hash] params ({})
    def create_vpc_connector(params = {}, options = {})
      req = build_request(:create_vpc_connector, params)
      req.send_request(options)
    end

    # Create an App Runner VPC Ingress Connection resource. App Runner
    # requires this resource when you want to associate your App Runner
    # service with an Amazon VPC endpoint.
    #
    # @option params [required, String] :service_arn
    #   The Amazon Resource Name (ARN) for this App Runner service that is
    #   used to create the VPC Ingress Connection resource.
    #
    # @option params [required, String] :vpc_ingress_connection_name
    #   A name for the VPC Ingress Connection resource. It must be unique
    #   across all the active VPC Ingress Connections in your Amazon Web
    #   Services account in the Amazon Web Services Region.
    #
    # @option params [required, Types::IngressVpcConfiguration] :ingress_vpc_configuration
    #   Specifications for the customer’s Amazon VPC and the related Amazon
    #   Web Services PrivateLink VPC endpoint that are used to create the VPC
    #   Ingress Connection resource.
    #
    # @option params [Array<Types::Tag>] :tags
    #   An optional list of metadata items that you can associate with the VPC
    #   Ingress Connection resource. A tag is a key-value pair.
    #
    # @return [Types::CreateVpcIngressConnectionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateVpcIngressConnectionResponse#vpc_ingress_connection #vpc_ingress_connection} => Types::VpcIngressConnection
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_vpc_ingress_connection({
    #     service_arn: "AppRunnerResourceArn", # required
    #     vpc_ingress_connection_name: "VpcIngressConnectionName", # required
    #     ingress_vpc_configuration: { # required
    #       vpc_id: "String",
    #       vpc_endpoint_id: "String",
    #     },
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.vpc_ingress_connection.vpc_ingress_connection_arn #=> String
    #   resp.vpc_ingress_connection.vpc_ingress_connection_name #=> String
    #   resp.vpc_ingress_connection.service_arn #=> String
    #   resp.vpc_ingress_connection.status #=> String, one of "AVAILABLE", "PENDING_CREATION", "PENDING_UPDATE", "PENDING_DELETION", "FAILED_CREATION", "FAILED_UPDATE", "FAILED_DELETION", "DELETED"
    #   resp.vpc_ingress_connection.account_id #=> String
    #   resp.vpc_ingress_connection.domain_name #=> String
    #   resp.vpc_ingress_connection.ingress_vpc_configuration.vpc_id #=> String
    #   resp.vpc_ingress_connection.ingress_vpc_configuration.vpc_endpoint_id #=> String
    #   resp.vpc_ingress_connection.created_at #=> Time
    #   resp.vpc_ingress_connection.deleted_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/CreateVpcIngressConnection AWS API Documentation
    #
    # @overload create_vpc_ingress_connection(params = {})
    # @param [Hash] params ({})
    def create_vpc_ingress_connection(params = {}, options = {})
      req = build_request(:create_vpc_ingress_connection, params)
      req.send_request(options)
    end

    # Delete an App Runner automatic scaling configuration resource. You can
    # delete a specific revision or the latest active revision. You can't
    # delete a configuration that's used by one or more App Runner
    # services.
    #
    # @option params [required, String] :auto_scaling_configuration_arn
    #   The Amazon Resource Name (ARN) of the App Runner auto scaling
    #   configuration that you want to delete.
    #
    #   The ARN can be a full auto scaling configuration ARN, or a partial ARN
    #   ending with either `.../name ` or `.../name/revision `. If a revision
    #   isn't specified, the latest active revision is deleted.
    #
    # @return [Types::DeleteAutoScalingConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteAutoScalingConfigurationResponse#auto_scaling_configuration #auto_scaling_configuration} => Types::AutoScalingConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_auto_scaling_configuration({
    #     auto_scaling_configuration_arn: "AppRunnerResourceArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.auto_scaling_configuration.auto_scaling_configuration_arn #=> String
    #   resp.auto_scaling_configuration.auto_scaling_configuration_name #=> String
    #   resp.auto_scaling_configuration.auto_scaling_configuration_revision #=> Integer
    #   resp.auto_scaling_configuration.latest #=> Boolean
    #   resp.auto_scaling_configuration.status #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.auto_scaling_configuration.max_concurrency #=> Integer
    #   resp.auto_scaling_configuration.min_size #=> Integer
    #   resp.auto_scaling_configuration.max_size #=> Integer
    #   resp.auto_scaling_configuration.created_at #=> Time
    #   resp.auto_scaling_configuration.deleted_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/DeleteAutoScalingConfiguration AWS API Documentation
    #
    # @overload delete_auto_scaling_configuration(params = {})
    # @param [Hash] params ({})
    def delete_auto_scaling_configuration(params = {}, options = {})
      req = build_request(:delete_auto_scaling_configuration, params)
      req.send_request(options)
    end

    # Delete an App Runner connection. You must first ensure that there are
    # no running App Runner services that use this connection. If there are
    # any, the `DeleteConnection` action fails.
    #
    # @option params [required, String] :connection_arn
    #   The Amazon Resource Name (ARN) of the App Runner connection that you
    #   want to delete.
    #
    # @return [Types::DeleteConnectionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteConnectionResponse#connection #connection} => Types::Connection
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_connection({
    #     connection_arn: "AppRunnerResourceArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.connection.connection_name #=> String
    #   resp.connection.connection_arn #=> String
    #   resp.connection.provider_type #=> String, one of "GITHUB"
    #   resp.connection.status #=> String, one of "PENDING_HANDSHAKE", "AVAILABLE", "ERROR", "DELETED"
    #   resp.connection.created_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/DeleteConnection AWS API Documentation
    #
    # @overload delete_connection(params = {})
    # @param [Hash] params ({})
    def delete_connection(params = {}, options = {})
      req = build_request(:delete_connection, params)
      req.send_request(options)
    end

    # Delete an App Runner observability configuration resource. You can
    # delete a specific revision or the latest active revision. You can't
    # delete a configuration that's used by one or more App Runner
    # services.
    #
    # @option params [required, String] :observability_configuration_arn
    #   The Amazon Resource Name (ARN) of the App Runner observability
    #   configuration that you want to delete.
    #
    #   The ARN can be a full observability configuration ARN, or a partial
    #   ARN ending with either `.../name ` or `.../name/revision `. If a
    #   revision isn't specified, the latest active revision is deleted.
    #
    # @return [Types::DeleteObservabilityConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteObservabilityConfigurationResponse#observability_configuration #observability_configuration} => Types::ObservabilityConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_observability_configuration({
    #     observability_configuration_arn: "AppRunnerResourceArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.observability_configuration.observability_configuration_arn #=> String
    #   resp.observability_configuration.observability_configuration_name #=> String
    #   resp.observability_configuration.trace_configuration.vendor #=> String, one of "AWSXRAY"
    #   resp.observability_configuration.observability_configuration_revision #=> Integer
    #   resp.observability_configuration.latest #=> Boolean
    #   resp.observability_configuration.status #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.observability_configuration.created_at #=> Time
    #   resp.observability_configuration.deleted_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/DeleteObservabilityConfiguration AWS API Documentation
    #
    # @overload delete_observability_configuration(params = {})
    # @param [Hash] params ({})
    def delete_observability_configuration(params = {}, options = {})
      req = build_request(:delete_observability_configuration, params)
      req.send_request(options)
    end

    # Delete an App Runner service.
    #
    # This is an asynchronous operation. On a successful call, you can use
    # the returned `OperationId` and the ListOperations call to track the
    # operation's progress.
    #
    # <note markdown="1"> Make sure that you don't have any active VPCIngressConnections
    # associated with the service you want to delete.
    #
    #  </note>
    #
    # @option params [required, String] :service_arn
    #   The Amazon Resource Name (ARN) of the App Runner service that you want
    #   to delete.
    #
    # @return [Types::DeleteServiceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteServiceResponse#service #service} => Types::Service
    #   * {Types::DeleteServiceResponse#operation_id #operation_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_service({
    #     service_arn: "AppRunnerResourceArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.service.service_name #=> String
    #   resp.service.service_id #=> String
    #   resp.service.service_arn #=> String
    #   resp.service.service_url #=> String
    #   resp.service.created_at #=> Time
    #   resp.service.updated_at #=> Time
    #   resp.service.deleted_at #=> Time
    #   resp.service.status #=> String, one of "CREATE_FAILED", "RUNNING", "DELETED", "DELETE_FAILED", "PAUSED", "OPERATION_IN_PROGRESS"
    #   resp.service.source_configuration.code_repository.repository_url #=> String
    #   resp.service.source_configuration.code_repository.source_code_version.type #=> String, one of "BRANCH"
    #   resp.service.source_configuration.code_repository.source_code_version.value #=> String
    #   resp.service.source_configuration.code_repository.code_configuration.configuration_source #=> String, one of "REPOSITORY", "API"
    #   resp.service.source_configuration.code_repository.code_configuration.code_configuration_values.runtime #=> String, one of "PYTHON_3", "NODEJS_12", "NODEJS_14", "CORRETTO_8", "CORRETTO_11", "NODEJS_16", "GO_1", "DOTNET_6", "PHP_81", "RUBY_31"
    #   resp.service.source_configuration.code_repository.code_configuration.code_configuration_values.build_command #=> String
    #   resp.service.source_configuration.code_repository.code_configuration.code_configuration_values.start_command #=> String
    #   resp.service.source_configuration.code_repository.code_configuration.code_configuration_values.port #=> String
    #   resp.service.source_configuration.code_repository.code_configuration.code_configuration_values.runtime_environment_variables #=> Hash
    #   resp.service.source_configuration.code_repository.code_configuration.code_configuration_values.runtime_environment_variables["RuntimeEnvironmentVariablesKey"] #=> String
    #   resp.service.source_configuration.code_repository.code_configuration.code_configuration_values.runtime_environment_secrets #=> Hash
    #   resp.service.source_configuration.code_repository.code_configuration.code_configuration_values.runtime_environment_secrets["RuntimeEnvironmentSecretsName"] #=> String
    #   resp.service.source_configuration.image_repository.image_identifier #=> String
    #   resp.service.source_configuration.image_repository.image_configuration.runtime_environment_variables #=> Hash
    #   resp.service.source_configuration.image_repository.image_configuration.runtime_environment_variables["RuntimeEnvironmentVariablesKey"] #=> String
    #   resp.service.source_configuration.image_repository.image_configuration.start_command #=> String
    #   resp.service.source_configuration.image_repository.image_configuration.port #=> String
    #   resp.service.source_configuration.image_repository.image_configuration.runtime_environment_secrets #=> Hash
    #   resp.service.source_configuration.image_repository.image_configuration.runtime_environment_secrets["RuntimeEnvironmentSecretsName"] #=> String
    #   resp.service.source_configuration.image_repository.image_repository_type #=> String, one of "ECR", "ECR_PUBLIC"
    #   resp.service.source_configuration.auto_deployments_enabled #=> Boolean
    #   resp.service.source_configuration.authentication_configuration.connection_arn #=> String
    #   resp.service.source_configuration.authentication_configuration.access_role_arn #=> String
    #   resp.service.instance_configuration.cpu #=> String
    #   resp.service.instance_configuration.memory #=> String
    #   resp.service.instance_configuration.instance_role_arn #=> String
    #   resp.service.encryption_configuration.kms_key #=> String
    #   resp.service.health_check_configuration.protocol #=> String, one of "TCP", "HTTP"
    #   resp.service.health_check_configuration.path #=> String
    #   resp.service.health_check_configuration.interval #=> Integer
    #   resp.service.health_check_configuration.timeout #=> Integer
    #   resp.service.health_check_configuration.healthy_threshold #=> Integer
    #   resp.service.health_check_configuration.unhealthy_threshold #=> Integer
    #   resp.service.auto_scaling_configuration_summary.auto_scaling_configuration_arn #=> String
    #   resp.service.auto_scaling_configuration_summary.auto_scaling_configuration_name #=> String
    #   resp.service.auto_scaling_configuration_summary.auto_scaling_configuration_revision #=> Integer
    #   resp.service.network_configuration.egress_configuration.egress_type #=> String, one of "DEFAULT", "VPC"
    #   resp.service.network_configuration.egress_configuration.vpc_connector_arn #=> String
    #   resp.service.network_configuration.ingress_configuration.is_publicly_accessible #=> Boolean
    #   resp.service.observability_configuration.observability_enabled #=> Boolean
    #   resp.service.observability_configuration.observability_configuration_arn #=> String
    #   resp.operation_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/DeleteService AWS API Documentation
    #
    # @overload delete_service(params = {})
    # @param [Hash] params ({})
    def delete_service(params = {}, options = {})
      req = build_request(:delete_service, params)
      req.send_request(options)
    end

    # Delete an App Runner VPC connector resource. You can't delete a
    # connector that's used by one or more App Runner services.
    #
    # @option params [required, String] :vpc_connector_arn
    #   The Amazon Resource Name (ARN) of the App Runner VPC connector that
    #   you want to delete.
    #
    #   The ARN must be a full VPC connector ARN.
    #
    # @return [Types::DeleteVpcConnectorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteVpcConnectorResponse#vpc_connector #vpc_connector} => Types::VpcConnector
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_vpc_connector({
    #     vpc_connector_arn: "AppRunnerResourceArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.vpc_connector.vpc_connector_name #=> String
    #   resp.vpc_connector.vpc_connector_arn #=> String
    #   resp.vpc_connector.vpc_connector_revision #=> Integer
    #   resp.vpc_connector.subnets #=> Array
    #   resp.vpc_connector.subnets[0] #=> String
    #   resp.vpc_connector.security_groups #=> Array
    #   resp.vpc_connector.security_groups[0] #=> String
    #   resp.vpc_connector.status #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.vpc_connector.created_at #=> Time
    #   resp.vpc_connector.deleted_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/DeleteVpcConnector AWS API Documentation
    #
    # @overload delete_vpc_connector(params = {})
    # @param [Hash] params ({})
    def delete_vpc_connector(params = {}, options = {})
      req = build_request(:delete_vpc_connector, params)
      req.send_request(options)
    end

    # Delete an App Runner VPC Ingress Connection resource that's
    # associated with an App Runner service. The VPC Ingress Connection must
    # be in one of the following states to be deleted:
    #
    # * `AVAILABLE`
    #
    # * `FAILED_CREATION`
    #
    # * `FAILED_UPDATE`
    #
    # * `FAILED_DELETION`
    #
    # @option params [required, String] :vpc_ingress_connection_arn
    #   The Amazon Resource Name (ARN) of the App Runner VPC Ingress
    #   Connection that you want to delete.
    #
    # @return [Types::DeleteVpcIngressConnectionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteVpcIngressConnectionResponse#vpc_ingress_connection #vpc_ingress_connection} => Types::VpcIngressConnection
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_vpc_ingress_connection({
    #     vpc_ingress_connection_arn: "AppRunnerResourceArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.vpc_ingress_connection.vpc_ingress_connection_arn #=> String
    #   resp.vpc_ingress_connection.vpc_ingress_connection_name #=> String
    #   resp.vpc_ingress_connection.service_arn #=> String
    #   resp.vpc_ingress_connection.status #=> String, one of "AVAILABLE", "PENDING_CREATION", "PENDING_UPDATE", "PENDING_DELETION", "FAILED_CREATION", "FAILED_UPDATE", "FAILED_DELETION", "DELETED"
    #   resp.vpc_ingress_connection.account_id #=> String
    #   resp.vpc_ingress_connection.domain_name #=> String
    #   resp.vpc_ingress_connection.ingress_vpc_configuration.vpc_id #=> String
    #   resp.vpc_ingress_connection.ingress_vpc_configuration.vpc_endpoint_id #=> String
    #   resp.vpc_ingress_connection.created_at #=> Time
    #   resp.vpc_ingress_connection.deleted_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/DeleteVpcIngressConnection AWS API Documentation
    #
    # @overload delete_vpc_ingress_connection(params = {})
    # @param [Hash] params ({})
    def delete_vpc_ingress_connection(params = {}, options = {})
      req = build_request(:delete_vpc_ingress_connection, params)
      req.send_request(options)
    end

    # Return a full description of an App Runner automatic scaling
    # configuration resource.
    #
    # @option params [required, String] :auto_scaling_configuration_arn
    #   The Amazon Resource Name (ARN) of the App Runner auto scaling
    #   configuration that you want a description for.
    #
    #   The ARN can be a full auto scaling configuration ARN, or a partial ARN
    #   ending with either `.../name ` or `.../name/revision `. If a revision
    #   isn't specified, the latest active revision is described.
    #
    # @return [Types::DescribeAutoScalingConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAutoScalingConfigurationResponse#auto_scaling_configuration #auto_scaling_configuration} => Types::AutoScalingConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_auto_scaling_configuration({
    #     auto_scaling_configuration_arn: "AppRunnerResourceArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.auto_scaling_configuration.auto_scaling_configuration_arn #=> String
    #   resp.auto_scaling_configuration.auto_scaling_configuration_name #=> String
    #   resp.auto_scaling_configuration.auto_scaling_configuration_revision #=> Integer
    #   resp.auto_scaling_configuration.latest #=> Boolean
    #   resp.auto_scaling_configuration.status #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.auto_scaling_configuration.max_concurrency #=> Integer
    #   resp.auto_scaling_configuration.min_size #=> Integer
    #   resp.auto_scaling_configuration.max_size #=> Integer
    #   resp.auto_scaling_configuration.created_at #=> Time
    #   resp.auto_scaling_configuration.deleted_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/DescribeAutoScalingConfiguration AWS API Documentation
    #
    # @overload describe_auto_scaling_configuration(params = {})
    # @param [Hash] params ({})
    def describe_auto_scaling_configuration(params = {}, options = {})
      req = build_request(:describe_auto_scaling_configuration, params)
      req.send_request(options)
    end

    # Return a description of custom domain names that are associated with
    # an App Runner service.
    #
    # @option params [required, String] :service_arn
    #   The Amazon Resource Name (ARN) of the App Runner service that you want
    #   associated custom domain names to be described for.
    #
    # @option params [String] :next_token
    #   A token from a previous result page. It's used for a paginated
    #   request. The request retrieves the next result page. All other
    #   parameter values must be identical to the ones that are specified in
    #   the initial request.
    #
    #   If you don't specify `NextToken`, the request retrieves the first
    #   result page.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results that each response (result page) can
    #   include. It's used for a paginated request.
    #
    #   If you don't specify `MaxResults`, the request retrieves all
    #   available results in a single response.
    #
    # @return [Types::DescribeCustomDomainsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeCustomDomainsResponse#dns_target #dns_target} => String
    #   * {Types::DescribeCustomDomainsResponse#service_arn #service_arn} => String
    #   * {Types::DescribeCustomDomainsResponse#custom_domains #custom_domains} => Array&lt;Types::CustomDomain&gt;
    #   * {Types::DescribeCustomDomainsResponse#vpc_dns_targets #vpc_dns_targets} => Array&lt;Types::VpcDNSTarget&gt;
    #   * {Types::DescribeCustomDomainsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_custom_domains({
    #     service_arn: "AppRunnerResourceArn", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.dns_target #=> String
    #   resp.service_arn #=> String
    #   resp.custom_domains #=> Array
    #   resp.custom_domains[0].domain_name #=> String
    #   resp.custom_domains[0].enable_www_subdomain #=> Boolean
    #   resp.custom_domains[0].certificate_validation_records #=> Array
    #   resp.custom_domains[0].certificate_validation_records[0].name #=> String
    #   resp.custom_domains[0].certificate_validation_records[0].type #=> String
    #   resp.custom_domains[0].certificate_validation_records[0].value #=> String
    #   resp.custom_domains[0].certificate_validation_records[0].status #=> String, one of "PENDING_VALIDATION", "SUCCESS", "FAILED"
    #   resp.custom_domains[0].status #=> String, one of "CREATING", "CREATE_FAILED", "ACTIVE", "DELETING", "DELETE_FAILED", "PENDING_CERTIFICATE_DNS_VALIDATION", "BINDING_CERTIFICATE"
    #   resp.vpc_dns_targets #=> Array
    #   resp.vpc_dns_targets[0].vpc_ingress_connection_arn #=> String
    #   resp.vpc_dns_targets[0].vpc_id #=> String
    #   resp.vpc_dns_targets[0].domain_name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/DescribeCustomDomains AWS API Documentation
    #
    # @overload describe_custom_domains(params = {})
    # @param [Hash] params ({})
    def describe_custom_domains(params = {}, options = {})
      req = build_request(:describe_custom_domains, params)
      req.send_request(options)
    end

    # Return a full description of an App Runner observability configuration
    # resource.
    #
    # @option params [required, String] :observability_configuration_arn
    #   The Amazon Resource Name (ARN) of the App Runner observability
    #   configuration that you want a description for.
    #
    #   The ARN can be a full observability configuration ARN, or a partial
    #   ARN ending with either `.../name ` or `.../name/revision `. If a
    #   revision isn't specified, the latest active revision is described.
    #
    # @return [Types::DescribeObservabilityConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeObservabilityConfigurationResponse#observability_configuration #observability_configuration} => Types::ObservabilityConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_observability_configuration({
    #     observability_configuration_arn: "AppRunnerResourceArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.observability_configuration.observability_configuration_arn #=> String
    #   resp.observability_configuration.observability_configuration_name #=> String
    #   resp.observability_configuration.trace_configuration.vendor #=> String, one of "AWSXRAY"
    #   resp.observability_configuration.observability_configuration_revision #=> Integer
    #   resp.observability_configuration.latest #=> Boolean
    #   resp.observability_configuration.status #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.observability_configuration.created_at #=> Time
    #   resp.observability_configuration.deleted_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/DescribeObservabilityConfiguration AWS API Documentation
    #
    # @overload describe_observability_configuration(params = {})
    # @param [Hash] params ({})
    def describe_observability_configuration(params = {}, options = {})
      req = build_request(:describe_observability_configuration, params)
      req.send_request(options)
    end

    # Return a full description of an App Runner service.
    #
    # @option params [required, String] :service_arn
    #   The Amazon Resource Name (ARN) of the App Runner service that you want
    #   a description for.
    #
    # @return [Types::DescribeServiceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeServiceResponse#service #service} => Types::Service
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_service({
    #     service_arn: "AppRunnerResourceArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.service.service_name #=> String
    #   resp.service.service_id #=> String
    #   resp.service.service_arn #=> String
    #   resp.service.service_url #=> String
    #   resp.service.created_at #=> Time
    #   resp.service.updated_at #=> Time
    #   resp.service.deleted_at #=> Time
    #   resp.service.status #=> String, one of "CREATE_FAILED", "RUNNING", "DELETED", "DELETE_FAILED", "PAUSED", "OPERATION_IN_PROGRESS"
    #   resp.service.source_configuration.code_repository.repository_url #=> String
    #   resp.service.source_configuration.code_repository.source_code_version.type #=> String, one of "BRANCH"
    #   resp.service.source_configuration.code_repository.source_code_version.value #=> String
    #   resp.service.source_configuration.code_repository.code_configuration.configuration_source #=> String, one of "REPOSITORY", "API"
    #   resp.service.source_configuration.code_repository.code_configuration.code_configuration_values.runtime #=> String, one of "PYTHON_3", "NODEJS_12", "NODEJS_14", "CORRETTO_8", "CORRETTO_11", "NODEJS_16", "GO_1", "DOTNET_6", "PHP_81", "RUBY_31"
    #   resp.service.source_configuration.code_repository.code_configuration.code_configuration_values.build_command #=> String
    #   resp.service.source_configuration.code_repository.code_configuration.code_configuration_values.start_command #=> String
    #   resp.service.source_configuration.code_repository.code_configuration.code_configuration_values.port #=> String
    #   resp.service.source_configuration.code_repository.code_configuration.code_configuration_values.runtime_environment_variables #=> Hash
    #   resp.service.source_configuration.code_repository.code_configuration.code_configuration_values.runtime_environment_variables["RuntimeEnvironmentVariablesKey"] #=> String
    #   resp.service.source_configuration.code_repository.code_configuration.code_configuration_values.runtime_environment_secrets #=> Hash
    #   resp.service.source_configuration.code_repository.code_configuration.code_configuration_values.runtime_environment_secrets["RuntimeEnvironmentSecretsName"] #=> String
    #   resp.service.source_configuration.image_repository.image_identifier #=> String
    #   resp.service.source_configuration.image_repository.image_configuration.runtime_environment_variables #=> Hash
    #   resp.service.source_configuration.image_repository.image_configuration.runtime_environment_variables["RuntimeEnvironmentVariablesKey"] #=> String
    #   resp.service.source_configuration.image_repository.image_configuration.start_command #=> String
    #   resp.service.source_configuration.image_repository.image_configuration.port #=> String
    #   resp.service.source_configuration.image_repository.image_configuration.runtime_environment_secrets #=> Hash
    #   resp.service.source_configuration.image_repository.image_configuration.runtime_environment_secrets["RuntimeEnvironmentSecretsName"] #=> String
    #   resp.service.source_configuration.image_repository.image_repository_type #=> String, one of "ECR", "ECR_PUBLIC"
    #   resp.service.source_configuration.auto_deployments_enabled #=> Boolean
    #   resp.service.source_configuration.authentication_configuration.connection_arn #=> String
    #   resp.service.source_configuration.authentication_configuration.access_role_arn #=> String
    #   resp.service.instance_configuration.cpu #=> String
    #   resp.service.instance_configuration.memory #=> String
    #   resp.service.instance_configuration.instance_role_arn #=> String
    #   resp.service.encryption_configuration.kms_key #=> String
    #   resp.service.health_check_configuration.protocol #=> String, one of "TCP", "HTTP"
    #   resp.service.health_check_configuration.path #=> String
    #   resp.service.health_check_configuration.interval #=> Integer
    #   resp.service.health_check_configuration.timeout #=> Integer
    #   resp.service.health_check_configuration.healthy_threshold #=> Integer
    #   resp.service.health_check_configuration.unhealthy_threshold #=> Integer
    #   resp.service.auto_scaling_configuration_summary.auto_scaling_configuration_arn #=> String
    #   resp.service.auto_scaling_configuration_summary.auto_scaling_configuration_name #=> String
    #   resp.service.auto_scaling_configuration_summary.auto_scaling_configuration_revision #=> Integer
    #   resp.service.network_configuration.egress_configuration.egress_type #=> String, one of "DEFAULT", "VPC"
    #   resp.service.network_configuration.egress_configuration.vpc_connector_arn #=> String
    #   resp.service.network_configuration.ingress_configuration.is_publicly_accessible #=> Boolean
    #   resp.service.observability_configuration.observability_enabled #=> Boolean
    #   resp.service.observability_configuration.observability_configuration_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/DescribeService AWS API Documentation
    #
    # @overload describe_service(params = {})
    # @param [Hash] params ({})
    def describe_service(params = {}, options = {})
      req = build_request(:describe_service, params)
      req.send_request(options)
    end

    # Return a description of an App Runner VPC connector resource.
    #
    # @option params [required, String] :vpc_connector_arn
    #   The Amazon Resource Name (ARN) of the App Runner VPC connector that
    #   you want a description for.
    #
    #   The ARN must be a full VPC connector ARN.
    #
    # @return [Types::DescribeVpcConnectorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeVpcConnectorResponse#vpc_connector #vpc_connector} => Types::VpcConnector
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_vpc_connector({
    #     vpc_connector_arn: "AppRunnerResourceArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.vpc_connector.vpc_connector_name #=> String
    #   resp.vpc_connector.vpc_connector_arn #=> String
    #   resp.vpc_connector.vpc_connector_revision #=> Integer
    #   resp.vpc_connector.subnets #=> Array
    #   resp.vpc_connector.subnets[0] #=> String
    #   resp.vpc_connector.security_groups #=> Array
    #   resp.vpc_connector.security_groups[0] #=> String
    #   resp.vpc_connector.status #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.vpc_connector.created_at #=> Time
    #   resp.vpc_connector.deleted_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/DescribeVpcConnector AWS API Documentation
    #
    # @overload describe_vpc_connector(params = {})
    # @param [Hash] params ({})
    def describe_vpc_connector(params = {}, options = {})
      req = build_request(:describe_vpc_connector, params)
      req.send_request(options)
    end

    # Return a full description of an App Runner VPC Ingress Connection
    # resource.
    #
    # @option params [required, String] :vpc_ingress_connection_arn
    #   The Amazon Resource Name (ARN) of the App Runner VPC Ingress
    #   Connection that you want a description for.
    #
    # @return [Types::DescribeVpcIngressConnectionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeVpcIngressConnectionResponse#vpc_ingress_connection #vpc_ingress_connection} => Types::VpcIngressConnection
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_vpc_ingress_connection({
    #     vpc_ingress_connection_arn: "AppRunnerResourceArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.vpc_ingress_connection.vpc_ingress_connection_arn #=> String
    #   resp.vpc_ingress_connection.vpc_ingress_connection_name #=> String
    #   resp.vpc_ingress_connection.service_arn #=> String
    #   resp.vpc_ingress_connection.status #=> String, one of "AVAILABLE", "PENDING_CREATION", "PENDING_UPDATE", "PENDING_DELETION", "FAILED_CREATION", "FAILED_UPDATE", "FAILED_DELETION", "DELETED"
    #   resp.vpc_ingress_connection.account_id #=> String
    #   resp.vpc_ingress_connection.domain_name #=> String
    #   resp.vpc_ingress_connection.ingress_vpc_configuration.vpc_id #=> String
    #   resp.vpc_ingress_connection.ingress_vpc_configuration.vpc_endpoint_id #=> String
    #   resp.vpc_ingress_connection.created_at #=> Time
    #   resp.vpc_ingress_connection.deleted_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/DescribeVpcIngressConnection AWS API Documentation
    #
    # @overload describe_vpc_ingress_connection(params = {})
    # @param [Hash] params ({})
    def describe_vpc_ingress_connection(params = {}, options = {})
      req = build_request(:describe_vpc_ingress_connection, params)
      req.send_request(options)
    end

    # Disassociate a custom domain name from an App Runner service.
    #
    # Certificates tracking domain validity are associated with a custom
    # domain and are stored in [AWS Certificate Manager (ACM)][1]. These
    # certificates aren't deleted as part of this action. App Runner delays
    # certificate deletion for 30 days after a domain is disassociated from
    # your service.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/acm/latest/userguide
    #
    # @option params [required, String] :service_arn
    #   The Amazon Resource Name (ARN) of the App Runner service that you want
    #   to disassociate a custom domain name from.
    #
    # @option params [required, String] :domain_name
    #   The domain name that you want to disassociate from the App Runner
    #   service.
    #
    # @return [Types::DisassociateCustomDomainResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DisassociateCustomDomainResponse#dns_target #dns_target} => String
    #   * {Types::DisassociateCustomDomainResponse#service_arn #service_arn} => String
    #   * {Types::DisassociateCustomDomainResponse#custom_domain #custom_domain} => Types::CustomDomain
    #   * {Types::DisassociateCustomDomainResponse#vpc_dns_targets #vpc_dns_targets} => Array&lt;Types::VpcDNSTarget&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_custom_domain({
    #     service_arn: "AppRunnerResourceArn", # required
    #     domain_name: "DomainName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.dns_target #=> String
    #   resp.service_arn #=> String
    #   resp.custom_domain.domain_name #=> String
    #   resp.custom_domain.enable_www_subdomain #=> Boolean
    #   resp.custom_domain.certificate_validation_records #=> Array
    #   resp.custom_domain.certificate_validation_records[0].name #=> String
    #   resp.custom_domain.certificate_validation_records[0].type #=> String
    #   resp.custom_domain.certificate_validation_records[0].value #=> String
    #   resp.custom_domain.certificate_validation_records[0].status #=> String, one of "PENDING_VALIDATION", "SUCCESS", "FAILED"
    #   resp.custom_domain.status #=> String, one of "CREATING", "CREATE_FAILED", "ACTIVE", "DELETING", "DELETE_FAILED", "PENDING_CERTIFICATE_DNS_VALIDATION", "BINDING_CERTIFICATE"
    #   resp.vpc_dns_targets #=> Array
    #   resp.vpc_dns_targets[0].vpc_ingress_connection_arn #=> String
    #   resp.vpc_dns_targets[0].vpc_id #=> String
    #   resp.vpc_dns_targets[0].domain_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/DisassociateCustomDomain AWS API Documentation
    #
    # @overload disassociate_custom_domain(params = {})
    # @param [Hash] params ({})
    def disassociate_custom_domain(params = {}, options = {})
      req = build_request(:disassociate_custom_domain, params)
      req.send_request(options)
    end

    # Returns a list of active App Runner automatic scaling configurations
    # in your Amazon Web Services account. You can query the revisions for a
    # specific configuration name or the revisions for all active
    # configurations in your account. You can optionally query only the
    # latest revision of each requested name.
    #
    # To retrieve a full description of a particular configuration revision,
    # call and provide one of the ARNs returned by
    # `ListAutoScalingConfigurations`.
    #
    # @option params [String] :auto_scaling_configuration_name
    #   The name of the App Runner auto scaling configuration that you want to
    #   list. If specified, App Runner lists revisions that share this name.
    #   If not specified, App Runner returns revisions of all active
    #   configurations.
    #
    # @option params [Boolean] :latest_only
    #   Set to `true` to list only the latest revision for each requested
    #   configuration name.
    #
    #   Set to `false` to list all revisions for each requested configuration
    #   name.
    #
    #   Default: `true`
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to include in each response (result
    #   page). It's used for a paginated request.
    #
    #   If you don't specify `MaxResults`, the request retrieves all
    #   available results in a single response.
    #
    # @option params [String] :next_token
    #   A token from a previous result page. It's used for a paginated
    #   request. The request retrieves the next result page. All other
    #   parameter values must be identical to the ones that are specified in
    #   the initial request.
    #
    #   If you don't specify `NextToken`, the request retrieves the first
    #   result page.
    #
    # @return [Types::ListAutoScalingConfigurationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAutoScalingConfigurationsResponse#auto_scaling_configuration_summary_list #auto_scaling_configuration_summary_list} => Array&lt;Types::AutoScalingConfigurationSummary&gt;
    #   * {Types::ListAutoScalingConfigurationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_auto_scaling_configurations({
    #     auto_scaling_configuration_name: "AutoScalingConfigurationName",
    #     latest_only: false,
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.auto_scaling_configuration_summary_list #=> Array
    #   resp.auto_scaling_configuration_summary_list[0].auto_scaling_configuration_arn #=> String
    #   resp.auto_scaling_configuration_summary_list[0].auto_scaling_configuration_name #=> String
    #   resp.auto_scaling_configuration_summary_list[0].auto_scaling_configuration_revision #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/ListAutoScalingConfigurations AWS API Documentation
    #
    # @overload list_auto_scaling_configurations(params = {})
    # @param [Hash] params ({})
    def list_auto_scaling_configurations(params = {}, options = {})
      req = build_request(:list_auto_scaling_configurations, params)
      req.send_request(options)
    end

    # Returns a list of App Runner connections that are associated with your
    # Amazon Web Services account.
    #
    # @option params [String] :connection_name
    #   If specified, only this connection is returned. If not specified, the
    #   result isn't filtered by name.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to include in each response (result
    #   page). Used for a paginated request.
    #
    #   If you don't specify `MaxResults`, the request retrieves all
    #   available results in a single response.
    #
    # @option params [String] :next_token
    #   A token from a previous result page. Used for a paginated request. The
    #   request retrieves the next result page. All other parameter values
    #   must be identical to the ones specified in the initial request.
    #
    #   If you don't specify `NextToken`, the request retrieves the first
    #   result page.
    #
    # @return [Types::ListConnectionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListConnectionsResponse#connection_summary_list #connection_summary_list} => Array&lt;Types::ConnectionSummary&gt;
    #   * {Types::ListConnectionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_connections({
    #     connection_name: "ConnectionName",
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.connection_summary_list #=> Array
    #   resp.connection_summary_list[0].connection_name #=> String
    #   resp.connection_summary_list[0].connection_arn #=> String
    #   resp.connection_summary_list[0].provider_type #=> String, one of "GITHUB"
    #   resp.connection_summary_list[0].status #=> String, one of "PENDING_HANDSHAKE", "AVAILABLE", "ERROR", "DELETED"
    #   resp.connection_summary_list[0].created_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/ListConnections AWS API Documentation
    #
    # @overload list_connections(params = {})
    # @param [Hash] params ({})
    def list_connections(params = {}, options = {})
      req = build_request(:list_connections, params)
      req.send_request(options)
    end

    # Returns a list of active App Runner observability configurations in
    # your Amazon Web Services account. You can query the revisions for a
    # specific configuration name or the revisions for all active
    # configurations in your account. You can optionally query only the
    # latest revision of each requested name.
    #
    # To retrieve a full description of a particular configuration revision,
    # call and provide one of the ARNs returned by
    # `ListObservabilityConfigurations`.
    #
    # @option params [String] :observability_configuration_name
    #   The name of the App Runner observability configuration that you want
    #   to list. If specified, App Runner lists revisions that share this
    #   name. If not specified, App Runner returns revisions of all active
    #   configurations.
    #
    # @option params [Boolean] :latest_only
    #   Set to `true` to list only the latest revision for each requested
    #   configuration name.
    #
    #   Set to `false` to list all revisions for each requested configuration
    #   name.
    #
    #   Default: `true`
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to include in each response (result
    #   page). It's used for a paginated request.
    #
    #   If you don't specify `MaxResults`, the request retrieves all
    #   available results in a single response.
    #
    # @option params [String] :next_token
    #   A token from a previous result page. It's used for a paginated
    #   request. The request retrieves the next result page. All other
    #   parameter values must be identical to the ones that are specified in
    #   the initial request.
    #
    #   If you don't specify `NextToken`, the request retrieves the first
    #   result page.
    #
    # @return [Types::ListObservabilityConfigurationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListObservabilityConfigurationsResponse#observability_configuration_summary_list #observability_configuration_summary_list} => Array&lt;Types::ObservabilityConfigurationSummary&gt;
    #   * {Types::ListObservabilityConfigurationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_observability_configurations({
    #     observability_configuration_name: "ObservabilityConfigurationName",
    #     latest_only: false,
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.observability_configuration_summary_list #=> Array
    #   resp.observability_configuration_summary_list[0].observability_configuration_arn #=> String
    #   resp.observability_configuration_summary_list[0].observability_configuration_name #=> String
    #   resp.observability_configuration_summary_list[0].observability_configuration_revision #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/ListObservabilityConfigurations AWS API Documentation
    #
    # @overload list_observability_configurations(params = {})
    # @param [Hash] params ({})
    def list_observability_configurations(params = {}, options = {})
      req = build_request(:list_observability_configurations, params)
      req.send_request(options)
    end

    # Return a list of operations that occurred on an App Runner service.
    #
    # The resulting list of OperationSummary objects is sorted in reverse
    # chronological order. The first object on the list represents the last
    # started operation.
    #
    # @option params [required, String] :service_arn
    #   The Amazon Resource Name (ARN) of the App Runner service that you want
    #   a list of operations for.
    #
    # @option params [String] :next_token
    #   A token from a previous result page. It's used for a paginated
    #   request. The request retrieves the next result page. All other
    #   parameter values must be identical to the ones specified in the
    #   initial request.
    #
    #   If you don't specify `NextToken`, the request retrieves the first
    #   result page.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to include in each response (result
    #   page). It's used for a paginated request.
    #
    #   If you don't specify `MaxResults`, the request retrieves all
    #   available results in a single response.
    #
    # @return [Types::ListOperationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListOperationsResponse#operation_summary_list #operation_summary_list} => Array&lt;Types::OperationSummary&gt;
    #   * {Types::ListOperationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_operations({
    #     service_arn: "AppRunnerResourceArn", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.operation_summary_list #=> Array
    #   resp.operation_summary_list[0].id #=> String
    #   resp.operation_summary_list[0].type #=> String, one of "START_DEPLOYMENT", "CREATE_SERVICE", "PAUSE_SERVICE", "RESUME_SERVICE", "DELETE_SERVICE", "UPDATE_SERVICE"
    #   resp.operation_summary_list[0].status #=> String, one of "PENDING", "IN_PROGRESS", "FAILED", "SUCCEEDED", "ROLLBACK_IN_PROGRESS", "ROLLBACK_FAILED", "ROLLBACK_SUCCEEDED"
    #   resp.operation_summary_list[0].target_arn #=> String
    #   resp.operation_summary_list[0].started_at #=> Time
    #   resp.operation_summary_list[0].ended_at #=> Time
    #   resp.operation_summary_list[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/ListOperations AWS API Documentation
    #
    # @overload list_operations(params = {})
    # @param [Hash] params ({})
    def list_operations(params = {}, options = {})
      req = build_request(:list_operations, params)
      req.send_request(options)
    end

    # Returns a list of running App Runner services in your Amazon Web
    # Services account.
    #
    # @option params [String] :next_token
    #   A token from a previous result page. Used for a paginated request. The
    #   request retrieves the next result page. All other parameter values
    #   must be identical to the ones specified in the initial request.
    #
    #   If you don't specify `NextToken`, the request retrieves the first
    #   result page.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to include in each response (result
    #   page). It's used for a paginated request.
    #
    #   If you don't specify `MaxResults`, the request retrieves all
    #   available results in a single response.
    #
    # @return [Types::ListServicesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListServicesResponse#service_summary_list #service_summary_list} => Array&lt;Types::ServiceSummary&gt;
    #   * {Types::ListServicesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_services({
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.service_summary_list #=> Array
    #   resp.service_summary_list[0].service_name #=> String
    #   resp.service_summary_list[0].service_id #=> String
    #   resp.service_summary_list[0].service_arn #=> String
    #   resp.service_summary_list[0].service_url #=> String
    #   resp.service_summary_list[0].created_at #=> Time
    #   resp.service_summary_list[0].updated_at #=> Time
    #   resp.service_summary_list[0].status #=> String, one of "CREATE_FAILED", "RUNNING", "DELETED", "DELETE_FAILED", "PAUSED", "OPERATION_IN_PROGRESS"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/ListServices AWS API Documentation
    #
    # @overload list_services(params = {})
    # @param [Hash] params ({})
    def list_services(params = {}, options = {})
      req = build_request(:list_services, params)
      req.send_request(options)
    end

    # List tags that are associated with for an App Runner resource. The
    # response contains a list of tag key-value pairs.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource that a tag list is
    #   requested for.
    #
    #   It must be the ARN of an App Runner resource.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "AppRunnerResourceArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Returns a list of App Runner VPC connectors in your Amazon Web
    # Services account.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to include in each response (result
    #   page). It's used for a paginated request.
    #
    #   If you don't specify `MaxResults`, the request retrieves all
    #   available results in a single response.
    #
    # @option params [String] :next_token
    #   A token from a previous result page. It's used for a paginated
    #   request. The request retrieves the next result page. All other
    #   parameter values must be identical to the ones that are specified in
    #   the initial request.
    #
    #   If you don't specify `NextToken`, the request retrieves the first
    #   result page.
    #
    # @return [Types::ListVpcConnectorsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListVpcConnectorsResponse#vpc_connectors #vpc_connectors} => Array&lt;Types::VpcConnector&gt;
    #   * {Types::ListVpcConnectorsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_vpc_connectors({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.vpc_connectors #=> Array
    #   resp.vpc_connectors[0].vpc_connector_name #=> String
    #   resp.vpc_connectors[0].vpc_connector_arn #=> String
    #   resp.vpc_connectors[0].vpc_connector_revision #=> Integer
    #   resp.vpc_connectors[0].subnets #=> Array
    #   resp.vpc_connectors[0].subnets[0] #=> String
    #   resp.vpc_connectors[0].security_groups #=> Array
    #   resp.vpc_connectors[0].security_groups[0] #=> String
    #   resp.vpc_connectors[0].status #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.vpc_connectors[0].created_at #=> Time
    #   resp.vpc_connectors[0].deleted_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/ListVpcConnectors AWS API Documentation
    #
    # @overload list_vpc_connectors(params = {})
    # @param [Hash] params ({})
    def list_vpc_connectors(params = {}, options = {})
      req = build_request(:list_vpc_connectors, params)
      req.send_request(options)
    end

    # Return a list of App Runner VPC Ingress Connections in your Amazon Web
    # Services account.
    #
    # @option params [Types::ListVpcIngressConnectionsFilter] :filter
    #   The VPC Ingress Connections to be listed based on either the Service
    #   Arn or Vpc Endpoint Id, or both.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to include in each response (result
    #   page). It's used for a paginated request.
    #
    #   If you don't specify `MaxResults`, the request retrieves all
    #   available results in a single response.
    #
    # @option params [String] :next_token
    #   A token from a previous result page. It's used for a paginated
    #   request. The request retrieves the next result page. All other
    #   parameter values must be identical to the ones that are specified in
    #   the initial request.
    #
    #   If you don't specify `NextToken`, the request retrieves the first
    #   result page.
    #
    # @return [Types::ListVpcIngressConnectionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListVpcIngressConnectionsResponse#vpc_ingress_connection_summary_list #vpc_ingress_connection_summary_list} => Array&lt;Types::VpcIngressConnectionSummary&gt;
    #   * {Types::ListVpcIngressConnectionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_vpc_ingress_connections({
    #     filter: {
    #       service_arn: "AppRunnerResourceArn",
    #       vpc_endpoint_id: "String",
    #     },
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.vpc_ingress_connection_summary_list #=> Array
    #   resp.vpc_ingress_connection_summary_list[0].vpc_ingress_connection_arn #=> String
    #   resp.vpc_ingress_connection_summary_list[0].service_arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/ListVpcIngressConnections AWS API Documentation
    #
    # @overload list_vpc_ingress_connections(params = {})
    # @param [Hash] params ({})
    def list_vpc_ingress_connections(params = {}, options = {})
      req = build_request(:list_vpc_ingress_connections, params)
      req.send_request(options)
    end

    # Pause an active App Runner service. App Runner reduces compute
    # capacity for the service to zero and loses state (for example,
    # ephemeral storage is removed).
    #
    # This is an asynchronous operation. On a successful call, you can use
    # the returned `OperationId` and the ListOperations call to track the
    # operation's progress.
    #
    # @option params [required, String] :service_arn
    #   The Amazon Resource Name (ARN) of the App Runner service that you want
    #   to pause.
    #
    # @return [Types::PauseServiceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PauseServiceResponse#service #service} => Types::Service
    #   * {Types::PauseServiceResponse#operation_id #operation_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.pause_service({
    #     service_arn: "AppRunnerResourceArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.service.service_name #=> String
    #   resp.service.service_id #=> String
    #   resp.service.service_arn #=> String
    #   resp.service.service_url #=> String
    #   resp.service.created_at #=> Time
    #   resp.service.updated_at #=> Time
    #   resp.service.deleted_at #=> Time
    #   resp.service.status #=> String, one of "CREATE_FAILED", "RUNNING", "DELETED", "DELETE_FAILED", "PAUSED", "OPERATION_IN_PROGRESS"
    #   resp.service.source_configuration.code_repository.repository_url #=> String
    #   resp.service.source_configuration.code_repository.source_code_version.type #=> String, one of "BRANCH"
    #   resp.service.source_configuration.code_repository.source_code_version.value #=> String
    #   resp.service.source_configuration.code_repository.code_configuration.configuration_source #=> String, one of "REPOSITORY", "API"
    #   resp.service.source_configuration.code_repository.code_configuration.code_configuration_values.runtime #=> String, one of "PYTHON_3", "NODEJS_12", "NODEJS_14", "CORRETTO_8", "CORRETTO_11", "NODEJS_16", "GO_1", "DOTNET_6", "PHP_81", "RUBY_31"
    #   resp.service.source_configuration.code_repository.code_configuration.code_configuration_values.build_command #=> String
    #   resp.service.source_configuration.code_repository.code_configuration.code_configuration_values.start_command #=> String
    #   resp.service.source_configuration.code_repository.code_configuration.code_configuration_values.port #=> String
    #   resp.service.source_configuration.code_repository.code_configuration.code_configuration_values.runtime_environment_variables #=> Hash
    #   resp.service.source_configuration.code_repository.code_configuration.code_configuration_values.runtime_environment_variables["RuntimeEnvironmentVariablesKey"] #=> String
    #   resp.service.source_configuration.code_repository.code_configuration.code_configuration_values.runtime_environment_secrets #=> Hash
    #   resp.service.source_configuration.code_repository.code_configuration.code_configuration_values.runtime_environment_secrets["RuntimeEnvironmentSecretsName"] #=> String
    #   resp.service.source_configuration.image_repository.image_identifier #=> String
    #   resp.service.source_configuration.image_repository.image_configuration.runtime_environment_variables #=> Hash
    #   resp.service.source_configuration.image_repository.image_configuration.runtime_environment_variables["RuntimeEnvironmentVariablesKey"] #=> String
    #   resp.service.source_configuration.image_repository.image_configuration.start_command #=> String
    #   resp.service.source_configuration.image_repository.image_configuration.port #=> String
    #   resp.service.source_configuration.image_repository.image_configuration.runtime_environment_secrets #=> Hash
    #   resp.service.source_configuration.image_repository.image_configuration.runtime_environment_secrets["RuntimeEnvironmentSecretsName"] #=> String
    #   resp.service.source_configuration.image_repository.image_repository_type #=> String, one of "ECR", "ECR_PUBLIC"
    #   resp.service.source_configuration.auto_deployments_enabled #=> Boolean
    #   resp.service.source_configuration.authentication_configuration.connection_arn #=> String
    #   resp.service.source_configuration.authentication_configuration.access_role_arn #=> String
    #   resp.service.instance_configuration.cpu #=> String
    #   resp.service.instance_configuration.memory #=> String
    #   resp.service.instance_configuration.instance_role_arn #=> String
    #   resp.service.encryption_configuration.kms_key #=> String
    #   resp.service.health_check_configuration.protocol #=> String, one of "TCP", "HTTP"
    #   resp.service.health_check_configuration.path #=> String
    #   resp.service.health_check_configuration.interval #=> Integer
    #   resp.service.health_check_configuration.timeout #=> Integer
    #   resp.service.health_check_configuration.healthy_threshold #=> Integer
    #   resp.service.health_check_configuration.unhealthy_threshold #=> Integer
    #   resp.service.auto_scaling_configuration_summary.auto_scaling_configuration_arn #=> String
    #   resp.service.auto_scaling_configuration_summary.auto_scaling_configuration_name #=> String
    #   resp.service.auto_scaling_configuration_summary.auto_scaling_configuration_revision #=> Integer
    #   resp.service.network_configuration.egress_configuration.egress_type #=> String, one of "DEFAULT", "VPC"
    #   resp.service.network_configuration.egress_configuration.vpc_connector_arn #=> String
    #   resp.service.network_configuration.ingress_configuration.is_publicly_accessible #=> Boolean
    #   resp.service.observability_configuration.observability_enabled #=> Boolean
    #   resp.service.observability_configuration.observability_configuration_arn #=> String
    #   resp.operation_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/PauseService AWS API Documentation
    #
    # @overload pause_service(params = {})
    # @param [Hash] params ({})
    def pause_service(params = {}, options = {})
      req = build_request(:pause_service, params)
      req.send_request(options)
    end

    # Resume an active App Runner service. App Runner provisions compute
    # capacity for the service.
    #
    # This is an asynchronous operation. On a successful call, you can use
    # the returned `OperationId` and the ListOperations call to track the
    # operation's progress.
    #
    # @option params [required, String] :service_arn
    #   The Amazon Resource Name (ARN) of the App Runner service that you want
    #   to resume.
    #
    # @return [Types::ResumeServiceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ResumeServiceResponse#service #service} => Types::Service
    #   * {Types::ResumeServiceResponse#operation_id #operation_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.resume_service({
    #     service_arn: "AppRunnerResourceArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.service.service_name #=> String
    #   resp.service.service_id #=> String
    #   resp.service.service_arn #=> String
    #   resp.service.service_url #=> String
    #   resp.service.created_at #=> Time
    #   resp.service.updated_at #=> Time
    #   resp.service.deleted_at #=> Time
    #   resp.service.status #=> String, one of "CREATE_FAILED", "RUNNING", "DELETED", "DELETE_FAILED", "PAUSED", "OPERATION_IN_PROGRESS"
    #   resp.service.source_configuration.code_repository.repository_url #=> String
    #   resp.service.source_configuration.code_repository.source_code_version.type #=> String, one of "BRANCH"
    #   resp.service.source_configuration.code_repository.source_code_version.value #=> String
    #   resp.service.source_configuration.code_repository.code_configuration.configuration_source #=> String, one of "REPOSITORY", "API"
    #   resp.service.source_configuration.code_repository.code_configuration.code_configuration_values.runtime #=> String, one of "PYTHON_3", "NODEJS_12", "NODEJS_14", "CORRETTO_8", "CORRETTO_11", "NODEJS_16", "GO_1", "DOTNET_6", "PHP_81", "RUBY_31"
    #   resp.service.source_configuration.code_repository.code_configuration.code_configuration_values.build_command #=> String
    #   resp.service.source_configuration.code_repository.code_configuration.code_configuration_values.start_command #=> String
    #   resp.service.source_configuration.code_repository.code_configuration.code_configuration_values.port #=> String
    #   resp.service.source_configuration.code_repository.code_configuration.code_configuration_values.runtime_environment_variables #=> Hash
    #   resp.service.source_configuration.code_repository.code_configuration.code_configuration_values.runtime_environment_variables["RuntimeEnvironmentVariablesKey"] #=> String
    #   resp.service.source_configuration.code_repository.code_configuration.code_configuration_values.runtime_environment_secrets #=> Hash
    #   resp.service.source_configuration.code_repository.code_configuration.code_configuration_values.runtime_environment_secrets["RuntimeEnvironmentSecretsName"] #=> String
    #   resp.service.source_configuration.image_repository.image_identifier #=> String
    #   resp.service.source_configuration.image_repository.image_configuration.runtime_environment_variables #=> Hash
    #   resp.service.source_configuration.image_repository.image_configuration.runtime_environment_variables["RuntimeEnvironmentVariablesKey"] #=> String
    #   resp.service.source_configuration.image_repository.image_configuration.start_command #=> String
    #   resp.service.source_configuration.image_repository.image_configuration.port #=> String
    #   resp.service.source_configuration.image_repository.image_configuration.runtime_environment_secrets #=> Hash
    #   resp.service.source_configuration.image_repository.image_configuration.runtime_environment_secrets["RuntimeEnvironmentSecretsName"] #=> String
    #   resp.service.source_configuration.image_repository.image_repository_type #=> String, one of "ECR", "ECR_PUBLIC"
    #   resp.service.source_configuration.auto_deployments_enabled #=> Boolean
    #   resp.service.source_configuration.authentication_configuration.connection_arn #=> String
    #   resp.service.source_configuration.authentication_configuration.access_role_arn #=> String
    #   resp.service.instance_configuration.cpu #=> String
    #   resp.service.instance_configuration.memory #=> String
    #   resp.service.instance_configuration.instance_role_arn #=> String
    #   resp.service.encryption_configuration.kms_key #=> String
    #   resp.service.health_check_configuration.protocol #=> String, one of "TCP", "HTTP"
    #   resp.service.health_check_configuration.path #=> String
    #   resp.service.health_check_configuration.interval #=> Integer
    #   resp.service.health_check_configuration.timeout #=> Integer
    #   resp.service.health_check_configuration.healthy_threshold #=> Integer
    #   resp.service.health_check_configuration.unhealthy_threshold #=> Integer
    #   resp.service.auto_scaling_configuration_summary.auto_scaling_configuration_arn #=> String
    #   resp.service.auto_scaling_configuration_summary.auto_scaling_configuration_name #=> String
    #   resp.service.auto_scaling_configuration_summary.auto_scaling_configuration_revision #=> Integer
    #   resp.service.network_configuration.egress_configuration.egress_type #=> String, one of "DEFAULT", "VPC"
    #   resp.service.network_configuration.egress_configuration.vpc_connector_arn #=> String
    #   resp.service.network_configuration.ingress_configuration.is_publicly_accessible #=> Boolean
    #   resp.service.observability_configuration.observability_enabled #=> Boolean
    #   resp.service.observability_configuration.observability_configuration_arn #=> String
    #   resp.operation_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/ResumeService AWS API Documentation
    #
    # @overload resume_service(params = {})
    # @param [Hash] params ({})
    def resume_service(params = {}, options = {})
      req = build_request(:resume_service, params)
      req.send_request(options)
    end

    # Initiate a manual deployment of the latest commit in a source code
    # repository or the latest image in a source image repository to an App
    # Runner service.
    #
    # For a source code repository, App Runner retrieves the commit and
    # builds a Docker image. For a source image repository, App Runner
    # retrieves the latest Docker image. In both cases, App Runner then
    # deploys the new image to your service and starts a new container
    # instance.
    #
    # This is an asynchronous operation. On a successful call, you can use
    # the returned `OperationId` and the ListOperations call to track the
    # operation's progress.
    #
    # @option params [required, String] :service_arn
    #   The Amazon Resource Name (ARN) of the App Runner service that you want
    #   to manually deploy to.
    #
    # @return [Types::StartDeploymentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartDeploymentResponse#operation_id #operation_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_deployment({
    #     service_arn: "AppRunnerResourceArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.operation_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/StartDeployment AWS API Documentation
    #
    # @overload start_deployment(params = {})
    # @param [Hash] params ({})
    def start_deployment(params = {}, options = {})
      req = build_request(:start_deployment, params)
      req.send_request(options)
    end

    # Add tags to, or update the tag values of, an App Runner resource. A
    # tag is a key-value pair.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want to update
    #   tags for.
    #
    #   It must be the ARN of an App Runner resource.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   A list of tag key-value pairs to add or update. If a key is new to the
    #   resource, the tag is added with the provided value. If a key is
    #   already associated with the resource, the value of the tag is updated.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "AppRunnerResourceArn", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Remove tags from an App Runner resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want to remove
    #   tags from.
    #
    #   It must be the ARN of an App Runner resource.
    #
    # @option params [required, Array<String>] :tag_keys
    #   A list of tag keys that you want to remove.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "AppRunnerResourceArn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Update an App Runner service. You can update the source configuration
    # and instance configuration of the service. You can also update the ARN
    # of the auto scaling configuration resource that's associated with the
    # service. However, you can't change the name or the encryption
    # configuration of the service. These can be set only when you create
    # the service.
    #
    # To update the tags applied to your service, use the separate actions
    # TagResource and UntagResource.
    #
    # This is an asynchronous operation. On a successful call, you can use
    # the returned `OperationId` and the ListOperations call to track the
    # operation's progress.
    #
    # @option params [required, String] :service_arn
    #   The Amazon Resource Name (ARN) of the App Runner service that you want
    #   to update.
    #
    # @option params [Types::SourceConfiguration] :source_configuration
    #   The source configuration to apply to the App Runner service.
    #
    #   You can change the configuration of the code or image repository that
    #   the service uses. However, you can't switch from code to image or the
    #   other way around. This means that you must provide the same structure
    #   member of `SourceConfiguration` that you originally included when you
    #   created the service. Specifically, you can include either
    #   `CodeRepository` or `ImageRepository`. To update the source
    #   configuration, set the values to members of the structure that you
    #   include.
    #
    # @option params [Types::InstanceConfiguration] :instance_configuration
    #   The runtime configuration to apply to instances (scaling units) of
    #   your service.
    #
    # @option params [String] :auto_scaling_configuration_arn
    #   The Amazon Resource Name (ARN) of an App Runner automatic scaling
    #   configuration resource that you want to associate with the App Runner
    #   service.
    #
    # @option params [Types::HealthCheckConfiguration] :health_check_configuration
    #   The settings for the health check that App Runner performs to monitor
    #   the health of the App Runner service.
    #
    # @option params [Types::NetworkConfiguration] :network_configuration
    #   Configuration settings related to network traffic of the web
    #   application that the App Runner service runs.
    #
    # @option params [Types::ServiceObservabilityConfiguration] :observability_configuration
    #   The observability configuration of your service.
    #
    # @return [Types::UpdateServiceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateServiceResponse#service #service} => Types::Service
    #   * {Types::UpdateServiceResponse#operation_id #operation_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_service({
    #     service_arn: "AppRunnerResourceArn", # required
    #     source_configuration: {
    #       code_repository: {
    #         repository_url: "String", # required
    #         source_code_version: { # required
    #           type: "BRANCH", # required, accepts BRANCH
    #           value: "String", # required
    #         },
    #         code_configuration: {
    #           configuration_source: "REPOSITORY", # required, accepts REPOSITORY, API
    #           code_configuration_values: {
    #             runtime: "PYTHON_3", # required, accepts PYTHON_3, NODEJS_12, NODEJS_14, CORRETTO_8, CORRETTO_11, NODEJS_16, GO_1, DOTNET_6, PHP_81, RUBY_31
    #             build_command: "BuildCommand",
    #             start_command: "StartCommand",
    #             port: "String",
    #             runtime_environment_variables: {
    #               "RuntimeEnvironmentVariablesKey" => "RuntimeEnvironmentVariablesValue",
    #             },
    #             runtime_environment_secrets: {
    #               "RuntimeEnvironmentSecretsName" => "RuntimeEnvironmentSecretsValue",
    #             },
    #           },
    #         },
    #       },
    #       image_repository: {
    #         image_identifier: "ImageIdentifier", # required
    #         image_configuration: {
    #           runtime_environment_variables: {
    #             "RuntimeEnvironmentVariablesKey" => "RuntimeEnvironmentVariablesValue",
    #           },
    #           start_command: "StartCommand",
    #           port: "String",
    #           runtime_environment_secrets: {
    #             "RuntimeEnvironmentSecretsName" => "RuntimeEnvironmentSecretsValue",
    #           },
    #         },
    #         image_repository_type: "ECR", # required, accepts ECR, ECR_PUBLIC
    #       },
    #       auto_deployments_enabled: false,
    #       authentication_configuration: {
    #         connection_arn: "AppRunnerResourceArn",
    #         access_role_arn: "RoleArn",
    #       },
    #     },
    #     instance_configuration: {
    #       cpu: "Cpu",
    #       memory: "Memory",
    #       instance_role_arn: "RoleArn",
    #     },
    #     auto_scaling_configuration_arn: "AppRunnerResourceArn",
    #     health_check_configuration: {
    #       protocol: "TCP", # accepts TCP, HTTP
    #       path: "HealthCheckPath",
    #       interval: 1,
    #       timeout: 1,
    #       healthy_threshold: 1,
    #       unhealthy_threshold: 1,
    #     },
    #     network_configuration: {
    #       egress_configuration: {
    #         egress_type: "DEFAULT", # accepts DEFAULT, VPC
    #         vpc_connector_arn: "AppRunnerResourceArn",
    #       },
    #       ingress_configuration: {
    #         is_publicly_accessible: false,
    #       },
    #     },
    #     observability_configuration: {
    #       observability_enabled: false, # required
    #       observability_configuration_arn: "AppRunnerResourceArn",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.service.service_name #=> String
    #   resp.service.service_id #=> String
    #   resp.service.service_arn #=> String
    #   resp.service.service_url #=> String
    #   resp.service.created_at #=> Time
    #   resp.service.updated_at #=> Time
    #   resp.service.deleted_at #=> Time
    #   resp.service.status #=> String, one of "CREATE_FAILED", "RUNNING", "DELETED", "DELETE_FAILED", "PAUSED", "OPERATION_IN_PROGRESS"
    #   resp.service.source_configuration.code_repository.repository_url #=> String
    #   resp.service.source_configuration.code_repository.source_code_version.type #=> String, one of "BRANCH"
    #   resp.service.source_configuration.code_repository.source_code_version.value #=> String
    #   resp.service.source_configuration.code_repository.code_configuration.configuration_source #=> String, one of "REPOSITORY", "API"
    #   resp.service.source_configuration.code_repository.code_configuration.code_configuration_values.runtime #=> String, one of "PYTHON_3", "NODEJS_12", "NODEJS_14", "CORRETTO_8", "CORRETTO_11", "NODEJS_16", "GO_1", "DOTNET_6", "PHP_81", "RUBY_31"
    #   resp.service.source_configuration.code_repository.code_configuration.code_configuration_values.build_command #=> String
    #   resp.service.source_configuration.code_repository.code_configuration.code_configuration_values.start_command #=> String
    #   resp.service.source_configuration.code_repository.code_configuration.code_configuration_values.port #=> String
    #   resp.service.source_configuration.code_repository.code_configuration.code_configuration_values.runtime_environment_variables #=> Hash
    #   resp.service.source_configuration.code_repository.code_configuration.code_configuration_values.runtime_environment_variables["RuntimeEnvironmentVariablesKey"] #=> String
    #   resp.service.source_configuration.code_repository.code_configuration.code_configuration_values.runtime_environment_secrets #=> Hash
    #   resp.service.source_configuration.code_repository.code_configuration.code_configuration_values.runtime_environment_secrets["RuntimeEnvironmentSecretsName"] #=> String
    #   resp.service.source_configuration.image_repository.image_identifier #=> String
    #   resp.service.source_configuration.image_repository.image_configuration.runtime_environment_variables #=> Hash
    #   resp.service.source_configuration.image_repository.image_configuration.runtime_environment_variables["RuntimeEnvironmentVariablesKey"] #=> String
    #   resp.service.source_configuration.image_repository.image_configuration.start_command #=> String
    #   resp.service.source_configuration.image_repository.image_configuration.port #=> String
    #   resp.service.source_configuration.image_repository.image_configuration.runtime_environment_secrets #=> Hash
    #   resp.service.source_configuration.image_repository.image_configuration.runtime_environment_secrets["RuntimeEnvironmentSecretsName"] #=> String
    #   resp.service.source_configuration.image_repository.image_repository_type #=> String, one of "ECR", "ECR_PUBLIC"
    #   resp.service.source_configuration.auto_deployments_enabled #=> Boolean
    #   resp.service.source_configuration.authentication_configuration.connection_arn #=> String
    #   resp.service.source_configuration.authentication_configuration.access_role_arn #=> String
    #   resp.service.instance_configuration.cpu #=> String
    #   resp.service.instance_configuration.memory #=> String
    #   resp.service.instance_configuration.instance_role_arn #=> String
    #   resp.service.encryption_configuration.kms_key #=> String
    #   resp.service.health_check_configuration.protocol #=> String, one of "TCP", "HTTP"
    #   resp.service.health_check_configuration.path #=> String
    #   resp.service.health_check_configuration.interval #=> Integer
    #   resp.service.health_check_configuration.timeout #=> Integer
    #   resp.service.health_check_configuration.healthy_threshold #=> Integer
    #   resp.service.health_check_configuration.unhealthy_threshold #=> Integer
    #   resp.service.auto_scaling_configuration_summary.auto_scaling_configuration_arn #=> String
    #   resp.service.auto_scaling_configuration_summary.auto_scaling_configuration_name #=> String
    #   resp.service.auto_scaling_configuration_summary.auto_scaling_configuration_revision #=> Integer
    #   resp.service.network_configuration.egress_configuration.egress_type #=> String, one of "DEFAULT", "VPC"
    #   resp.service.network_configuration.egress_configuration.vpc_connector_arn #=> String
    #   resp.service.network_configuration.ingress_configuration.is_publicly_accessible #=> Boolean
    #   resp.service.observability_configuration.observability_enabled #=> Boolean
    #   resp.service.observability_configuration.observability_configuration_arn #=> String
    #   resp.operation_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/UpdateService AWS API Documentation
    #
    # @overload update_service(params = {})
    # @param [Hash] params ({})
    def update_service(params = {}, options = {})
      req = build_request(:update_service, params)
      req.send_request(options)
    end

    # Update an existing App Runner VPC Ingress Connection resource. The VPC
    # Ingress Connection must be in one of the following states to be
    # updated:
    #
    # * AVAILABLE
    #
    # * FAILED\_CREATION
    #
    # * FAILED\_UPDATE
    #
    # @option params [required, String] :vpc_ingress_connection_arn
    #   The Amazon Resource Name (Arn) for the App Runner VPC Ingress
    #   Connection resource that you want to update.
    #
    # @option params [required, Types::IngressVpcConfiguration] :ingress_vpc_configuration
    #   Specifications for the customer’s Amazon VPC and the related Amazon
    #   Web Services PrivateLink VPC endpoint that are used to update the VPC
    #   Ingress Connection resource.
    #
    # @return [Types::UpdateVpcIngressConnectionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateVpcIngressConnectionResponse#vpc_ingress_connection #vpc_ingress_connection} => Types::VpcIngressConnection
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_vpc_ingress_connection({
    #     vpc_ingress_connection_arn: "AppRunnerResourceArn", # required
    #     ingress_vpc_configuration: { # required
    #       vpc_id: "String",
    #       vpc_endpoint_id: "String",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.vpc_ingress_connection.vpc_ingress_connection_arn #=> String
    #   resp.vpc_ingress_connection.vpc_ingress_connection_name #=> String
    #   resp.vpc_ingress_connection.service_arn #=> String
    #   resp.vpc_ingress_connection.status #=> String, one of "AVAILABLE", "PENDING_CREATION", "PENDING_UPDATE", "PENDING_DELETION", "FAILED_CREATION", "FAILED_UPDATE", "FAILED_DELETION", "DELETED"
    #   resp.vpc_ingress_connection.account_id #=> String
    #   resp.vpc_ingress_connection.domain_name #=> String
    #   resp.vpc_ingress_connection.ingress_vpc_configuration.vpc_id #=> String
    #   resp.vpc_ingress_connection.ingress_vpc_configuration.vpc_endpoint_id #=> String
    #   resp.vpc_ingress_connection.created_at #=> Time
    #   resp.vpc_ingress_connection.deleted_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/UpdateVpcIngressConnection AWS API Documentation
    #
    # @overload update_vpc_ingress_connection(params = {})
    # @param [Hash] params ({})
    def update_vpc_ingress_connection(params = {}, options = {})
      req = build_request(:update_vpc_ingress_connection, params)
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
      context[:gem_name] = 'aws-sdk-apprunner'
      context[:gem_version] = '1.27.0'
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
