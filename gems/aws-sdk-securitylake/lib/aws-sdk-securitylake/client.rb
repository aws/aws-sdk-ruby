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

Aws::Plugins::GlobalConfiguration.add_identifier(:securitylake)

module Aws::SecurityLake
  # An API client for SecurityLake.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::SecurityLake::Client.new(
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

    @identifier = :securitylake

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
    add_plugin(Aws::SecurityLake::Plugins::Endpoints)

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
    #   @option options [Aws::SecurityLake::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::SecurityLake::EndpointParameters`
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

    # Adds a natively supported Amazon Web Service as an Amazon Security
    # Lake source. Enables source types for member accounts in required
    # Amazon Web Services Regions, based on the parameters you specify. You
    # can choose any source type in any Region for either accounts that are
    # part of a trusted organization or standalone accounts. Once you add an
    # Amazon Web Service as a source, Security Lake starts collecting logs
    # and events from it,
    #
    # You can use this API only to enable natively supported Amazon Web
    # Services as a source. Use `CreateCustomLogSource` to enable data
    # collection from a custom source.
    #
    # @option params [required, Array<Types::AwsLogSourceConfiguration>] :sources
    #   Specify the natively-supported Amazon Web Services service to add as a
    #   source in Security Lake.
    #
    # @return [Types::CreateAwsLogSourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAwsLogSourceResponse#failed #failed} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_aws_log_source({
    #     sources: [ # required
    #       {
    #         accounts: ["AwsAccountId"],
    #         regions: ["Region"], # required
    #         source_name: "ROUTE53", # required, accepts ROUTE53, VPC_FLOW, SH_FINDINGS, CLOUD_TRAIL_MGMT, LAMBDA_EXECUTION, S3_DATA
    #         source_version: "AwsLogSourceVersion",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.failed #=> Array
    #   resp.failed[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/CreateAwsLogSource AWS API Documentation
    #
    # @overload create_aws_log_source(params = {})
    # @param [Hash] params ({})
    def create_aws_log_source(params = {}, options = {})
      req = build_request(:create_aws_log_source, params)
      req.send_request(options)
    end

    # Adds a third-party custom source in Amazon Security Lake, from the
    # Amazon Web Services Region where you want to create a custom source.
    # Security Lake can collect logs and events from third-party custom
    # sources. After creating the appropriate IAM role to invoke Glue
    # crawler, use this API to add a custom source name in Security Lake.
    # This operation creates a partition in the Amazon S3 bucket for
    # Security Lake as the target location for log files from the custom
    # source. In addition, this operation also creates an associated Glue
    # table and an Glue crawler.
    #
    # @option params [Types::CustomLogSourceConfiguration] :configuration
    #   The configuration for the third-party custom source.
    #
    # @option params [Array<String>] :event_classes
    #   The Open Cybersecurity Schema Framework (OCSF) event classes which
    #   describes the type of data that the custom source will send to
    #   Security Lake. The supported event classes are:
    #
    #   * `ACCESS_ACTIVITY`
    #
    #   * `FILE_ACTIVITY`
    #
    #   * `KERNEL_ACTIVITY`
    #
    #   * `KERNEL_EXTENSION`
    #
    #   * `MEMORY_ACTIVITY`
    #
    #   * `MODULE_ACTIVITY`
    #
    #   * `PROCESS_ACTIVITY`
    #
    #   * `REGISTRY_KEY_ACTIVITY`
    #
    #   * `REGISTRY_VALUE_ACTIVITY`
    #
    #   * `RESOURCE_ACTIVITY`
    #
    #   * `SCHEDULED_JOB_ACTIVITY`
    #
    #   * `SECURITY_FINDING`
    #
    #   * `ACCOUNT_CHANGE`
    #
    #   * `AUTHENTICATION`
    #
    #   * `AUTHORIZATION`
    #
    #   * `ENTITY_MANAGEMENT_AUDIT`
    #
    #   * `DHCP_ACTIVITY`
    #
    #   * `NETWORK_ACTIVITY`
    #
    #   * `DNS_ACTIVITY`
    #
    #   * `FTP_ACTIVITY`
    #
    #   * `HTTP_ACTIVITY`
    #
    #   * `RDP_ACTIVITY`
    #
    #   * `SMB_ACTIVITY`
    #
    #   * `SSH_ACTIVITY`
    #
    #   * `CONFIG_STATE`
    #
    #   * `INVENTORY_INFO`
    #
    #   * `EMAIL_ACTIVITY`
    #
    #   * `API_ACTIVITY`
    #
    #   * `CLOUD_API`
    #
    # @option params [required, String] :source_name
    #   Specify the name for a third-party custom source. This must be a
    #   Regionally unique value.
    #
    # @option params [String] :source_version
    #   Specify the source version for the third-party custom source, to limit
    #   log collection to a specific version of custom data source.
    #
    # @return [Types::CreateCustomLogSourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateCustomLogSourceResponse#source #source} => Types::CustomLogSourceResource
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_custom_log_source({
    #     configuration: {
    #       crawler_configuration: { # required
    #         role_arn: "RoleArn", # required
    #       },
    #       provider_identity: { # required
    #         external_id: "ExternalId", # required
    #         principal: "AwsPrincipal", # required
    #       },
    #     },
    #     event_classes: ["OcsfEventClass"],
    #     source_name: "CustomLogSourceName", # required
    #     source_version: "CustomLogSourceVersion",
    #   })
    #
    # @example Response structure
    #
    #   resp.source.attributes.crawler_arn #=> String
    #   resp.source.attributes.database_arn #=> String
    #   resp.source.attributes.table_arn #=> String
    #   resp.source.provider.location #=> String
    #   resp.source.provider.role_arn #=> String
    #   resp.source.source_name #=> String
    #   resp.source.source_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/CreateCustomLogSource AWS API Documentation
    #
    # @overload create_custom_log_source(params = {})
    # @param [Hash] params ({})
    def create_custom_log_source(params = {}, options = {})
      req = build_request(:create_custom_log_source, params)
      req.send_request(options)
    end

    # Initializes an Amazon Security Lake instance with the provided (or
    # default) configuration. You can enable Security Lake in Amazon Web
    # Services Regions with customized settings before enabling log
    # collection in Regions. By default, the `CreateDataLake` Security Lake
    # in all Regions. To specify particular Regions, configure these Regions
    # using the `configurations` parameter. If you have already enabled
    # Security Lake in a Region when you call this command, the command will
    # update the Region if you provide new configuration parameters. If you
    # have not already enabled Security Lake in the Region when you call
    # this API, it will set up the data lake in the Region with the
    # specified configurations.
    #
    # When you enable Security Lake, it starts ingesting security data after
    # the `CreateAwsLogSource` call. This includes ingesting security data
    # from sources, storing data, and making data accessible to subscribers.
    # Security Lake also enables all the existing settings and resources
    # that it stores or maintains for your Amazon Web Services account in
    # the current Region, including security log and event data. For more
    # information, see the [Amazon Security Lake User Guide][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/security-lake/latest/userguide/what-is-security-lake.html
    #
    # @option params [required, Array<Types::DataLakeConfiguration>] :configurations
    #   Specify the Region or Regions that will contribute data to the rollup
    #   region.
    #
    # @option params [required, String] :meta_store_manager_role_arn
    #   The Amazon Resource Name (ARN) used to create and update the Glue
    #   table. This table contains partitions generated by the ingestion and
    #   normalization of Amazon Web Services log sources and custom sources.
    #
    # @return [Types::CreateDataLakeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDataLakeResponse#data_lakes #data_lakes} => Array&lt;Types::DataLakeResource&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_data_lake({
    #     configurations: [ # required
    #       {
    #         encryption_configuration: {
    #           kms_key_id: "String",
    #         },
    #         lifecycle_configuration: {
    #           expiration: {
    #             days: 1,
    #           },
    #           transitions: [
    #             {
    #               days: 1,
    #               storage_class: "DataLakeStorageClass",
    #             },
    #           ],
    #         },
    #         region: "Region", # required
    #         replication_configuration: {
    #           regions: ["Region"],
    #           role_arn: "RoleArn",
    #         },
    #       },
    #     ],
    #     meta_store_manager_role_arn: "RoleArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.data_lakes #=> Array
    #   resp.data_lakes[0].create_status #=> String, one of "INITIALIZED", "PENDING", "COMPLETED", "FAILED"
    #   resp.data_lakes[0].data_lake_arn #=> String
    #   resp.data_lakes[0].encryption_configuration.kms_key_id #=> String
    #   resp.data_lakes[0].lifecycle_configuration.expiration.days #=> Integer
    #   resp.data_lakes[0].lifecycle_configuration.transitions #=> Array
    #   resp.data_lakes[0].lifecycle_configuration.transitions[0].days #=> Integer
    #   resp.data_lakes[0].lifecycle_configuration.transitions[0].storage_class #=> String
    #   resp.data_lakes[0].region #=> String
    #   resp.data_lakes[0].replication_configuration.regions #=> Array
    #   resp.data_lakes[0].replication_configuration.regions[0] #=> String
    #   resp.data_lakes[0].replication_configuration.role_arn #=> String
    #   resp.data_lakes[0].s3_bucket_arn #=> String
    #   resp.data_lakes[0].update_status.exception.code #=> String
    #   resp.data_lakes[0].update_status.exception.reason #=> String
    #   resp.data_lakes[0].update_status.request_id #=> String
    #   resp.data_lakes[0].update_status.status #=> String, one of "INITIALIZED", "PENDING", "COMPLETED", "FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/CreateDataLake AWS API Documentation
    #
    # @overload create_data_lake(params = {})
    # @param [Hash] params ({})
    def create_data_lake(params = {}, options = {})
      req = build_request(:create_data_lake, params)
      req.send_request(options)
    end

    # Creates the specified notification subscription in Amazon Security
    # Lake for the organization you specify.
    #
    # @option params [Integer] :exception_time_to_live
    #   The expiration period and time-to-live (TTL).
    #
    # @option params [required, String] :notification_endpoint
    #   The Amazon Web Services account where you want to receive exception
    #   notifications.
    #
    # @option params [required, String] :subscription_protocol
    #   The subscription protocol to which exception notifications are posted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_data_lake_exception_subscription({
    #     exception_time_to_live: 1,
    #     notification_endpoint: "SafeString", # required
    #     subscription_protocol: "SubscriptionProtocol", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/CreateDataLakeExceptionSubscription AWS API Documentation
    #
    # @overload create_data_lake_exception_subscription(params = {})
    # @param [Hash] params ({})
    def create_data_lake_exception_subscription(params = {}, options = {})
      req = build_request(:create_data_lake_exception_subscription, params)
      req.send_request(options)
    end

    # Automatically enables Amazon Security Lake for new member accounts in
    # your organization. Security Lake is not automatically enabled for any
    # existing member accounts in your organization.
    #
    # @option params [required, Array<Types::DataLakeAutoEnableNewAccountConfiguration>] :auto_enable_new_account
    #   Enable Security Lake with the specified configuration settings, to
    #   begin collecting security data for new accounts in your organization.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_data_lake_organization_configuration({
    #     auto_enable_new_account: [ # required
    #       {
    #         region: "Region", # required
    #         sources: [ # required
    #           {
    #             source_name: "ROUTE53", # accepts ROUTE53, VPC_FLOW, SH_FINDINGS, CLOUD_TRAIL_MGMT, LAMBDA_EXECUTION, S3_DATA
    #             source_version: "AwsLogSourceVersion",
    #           },
    #         ],
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/CreateDataLakeOrganizationConfiguration AWS API Documentation
    #
    # @overload create_data_lake_organization_configuration(params = {})
    # @param [Hash] params ({})
    def create_data_lake_organization_configuration(params = {}, options = {})
      req = build_request(:create_data_lake_organization_configuration, params)
      req.send_request(options)
    end

    # Creates a subscription permission for accounts that are already
    # enabled in Amazon Security Lake. You can create a subscriber with
    # access to data in the current Amazon Web Services Region.
    #
    # @option params [Array<String>] :access_types
    #   The Amazon S3 or Lake Formation access type.
    #
    # @option params [required, Array<Types::LogSourceResource>] :sources
    #   The supported Amazon Web Services from which logs and events are
    #   collected. Security Lake supports log and event collection for
    #   natively supported Amazon Web Services.
    #
    # @option params [String] :subscriber_description
    #   The description for your subscriber account in Security Lake.
    #
    # @option params [required, Types::AwsIdentity] :subscriber_identity
    #   The AWS identity used to access your data.
    #
    # @option params [required, String] :subscriber_name
    #   The name of your Security Lake subscriber account.
    #
    # @return [Types::CreateSubscriberResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSubscriberResponse#subscriber #subscriber} => Types::SubscriberResource
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_subscriber({
    #     access_types: ["LAKEFORMATION"], # accepts LAKEFORMATION, S3
    #     sources: [ # required
    #       {
    #         aws_log_source: {
    #           source_name: "ROUTE53", # accepts ROUTE53, VPC_FLOW, SH_FINDINGS, CLOUD_TRAIL_MGMT, LAMBDA_EXECUTION, S3_DATA
    #           source_version: "AwsLogSourceVersion",
    #         },
    #         custom_log_source: {
    #           attributes: {
    #             crawler_arn: "AmazonResourceName",
    #             database_arn: "AmazonResourceName",
    #             table_arn: "AmazonResourceName",
    #           },
    #           provider: {
    #             location: "S3URI",
    #             role_arn: "RoleArn",
    #           },
    #           source_name: "CustomLogSourceName",
    #           source_version: "CustomLogSourceVersion",
    #         },
    #       },
    #     ],
    #     subscriber_description: "DescriptionString",
    #     subscriber_identity: { # required
    #       external_id: "ExternalId", # required
    #       principal: "AwsPrincipal", # required
    #     },
    #     subscriber_name: "CreateSubscriberRequestSubscriberNameString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.subscriber.access_types #=> Array
    #   resp.subscriber.access_types[0] #=> String, one of "LAKEFORMATION", "S3"
    #   resp.subscriber.created_at #=> Time
    #   resp.subscriber.resource_share_arn #=> String
    #   resp.subscriber.resource_share_name #=> String
    #   resp.subscriber.role_arn #=> String
    #   resp.subscriber.s3_bucket_arn #=> String
    #   resp.subscriber.sources #=> Array
    #   resp.subscriber.sources[0].aws_log_source.source_name #=> String, one of "ROUTE53", "VPC_FLOW", "SH_FINDINGS", "CLOUD_TRAIL_MGMT", "LAMBDA_EXECUTION", "S3_DATA"
    #   resp.subscriber.sources[0].aws_log_source.source_version #=> String
    #   resp.subscriber.sources[0].custom_log_source.attributes.crawler_arn #=> String
    #   resp.subscriber.sources[0].custom_log_source.attributes.database_arn #=> String
    #   resp.subscriber.sources[0].custom_log_source.attributes.table_arn #=> String
    #   resp.subscriber.sources[0].custom_log_source.provider.location #=> String
    #   resp.subscriber.sources[0].custom_log_source.provider.role_arn #=> String
    #   resp.subscriber.sources[0].custom_log_source.source_name #=> String
    #   resp.subscriber.sources[0].custom_log_source.source_version #=> String
    #   resp.subscriber.subscriber_arn #=> String
    #   resp.subscriber.subscriber_description #=> String
    #   resp.subscriber.subscriber_endpoint #=> String
    #   resp.subscriber.subscriber_id #=> String
    #   resp.subscriber.subscriber_identity.external_id #=> String
    #   resp.subscriber.subscriber_identity.principal #=> String
    #   resp.subscriber.subscriber_name #=> String
    #   resp.subscriber.subscriber_status #=> String, one of "ACTIVE", "DEACTIVATED", "PENDING", "READY"
    #   resp.subscriber.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/CreateSubscriber AWS API Documentation
    #
    # @overload create_subscriber(params = {})
    # @param [Hash] params ({})
    def create_subscriber(params = {}, options = {})
      req = build_request(:create_subscriber, params)
      req.send_request(options)
    end

    # Notifies the subscriber when new data is written to the data lake for
    # the sources that the subscriber consumes in Security Lake. You can
    # create only one subscriber notification per subscriber.
    #
    # @option params [required, Types::NotificationConfiguration] :configuration
    #   Specify the configuration using which you want to create the
    #   subscriber notification.
    #
    # @option params [required, String] :subscriber_id
    #   The subscriber ID for the notification subscription.
    #
    # @return [Types::CreateSubscriberNotificationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSubscriberNotificationResponse#subscriber_endpoint #subscriber_endpoint} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_subscriber_notification({
    #     configuration: { # required
    #       https_notification_configuration: {
    #         authorization_api_key_name: "String",
    #         authorization_api_key_value: "String",
    #         endpoint: "HttpsNotificationConfigurationEndpointString", # required
    #         http_method: "POST", # accepts POST, PUT
    #         target_role_arn: "RoleArn", # required
    #       },
    #       sqs_notification_configuration: {
    #       },
    #     },
    #     subscriber_id: "UUID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.subscriber_endpoint #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/CreateSubscriberNotification AWS API Documentation
    #
    # @overload create_subscriber_notification(params = {})
    # @param [Hash] params ({})
    def create_subscriber_notification(params = {}, options = {})
      req = build_request(:create_subscriber_notification, params)
      req.send_request(options)
    end

    # Removes a natively supported Amazon Web Service as an Amazon Security
    # Lake source. You can remove a source for one or more Regions. When you
    # remove the source, Security Lake stops collecting data from that
    # source in the specified Regions and accounts, and subscribers can no
    # longer consume new data from the source. However, subscribers can
    # still consume data that Security Lake collected from the source before
    # removal.
    #
    # You can choose any source type in any Amazon Web Services Region for
    # either accounts that are part of a trusted organization or standalone
    # accounts.
    #
    # @option params [required, Array<Types::AwsLogSourceConfiguration>] :sources
    #   Specify the natively-supported Amazon Web Services service to remove
    #   as a source in Security Lake.
    #
    # @return [Types::DeleteAwsLogSourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteAwsLogSourceResponse#failed #failed} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_aws_log_source({
    #     sources: [ # required
    #       {
    #         accounts: ["AwsAccountId"],
    #         regions: ["Region"], # required
    #         source_name: "ROUTE53", # required, accepts ROUTE53, VPC_FLOW, SH_FINDINGS, CLOUD_TRAIL_MGMT, LAMBDA_EXECUTION, S3_DATA
    #         source_version: "AwsLogSourceVersion",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.failed #=> Array
    #   resp.failed[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/DeleteAwsLogSource AWS API Documentation
    #
    # @overload delete_aws_log_source(params = {})
    # @param [Hash] params ({})
    def delete_aws_log_source(params = {}, options = {})
      req = build_request(:delete_aws_log_source, params)
      req.send_request(options)
    end

    # Removes a custom log source from Amazon Security Lake, to stop sending
    # data from the custom source to Security Lake.
    #
    # @option params [required, String] :source_name
    #   The source name of custom log source that you want to delete.
    #
    # @option params [String] :source_version
    #   The source version for the third-party custom source. You can limit
    #   the custom source removal to the specified source version.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_custom_log_source({
    #     source_name: "CustomLogSourceName", # required
    #     source_version: "CustomLogSourceVersion",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/DeleteCustomLogSource AWS API Documentation
    #
    # @overload delete_custom_log_source(params = {})
    # @param [Hash] params ({})
    def delete_custom_log_source(params = {}, options = {})
      req = build_request(:delete_custom_log_source, params)
      req.send_request(options)
    end

    # When you disable Amazon Security Lake from your account, Security Lake
    # is disabled in all Amazon Web Services Regions and it stops collecting
    # data from your sources. Also, this API automatically takes steps to
    # remove the account from Security Lake. However, Security Lake retains
    # all of your existing settings and the resources that it created in
    # your Amazon Web Services account in the current Amazon Web Services
    # Region.
    #
    # The `DeleteDataLake` operation does not delete the data that is stored
    # in your Amazon S3 bucket, which is owned by your Amazon Web Services
    # account. For more information, see the [Amazon Security Lake User
    # Guide][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/security-lake/latest/userguide/disable-security-lake.html
    #
    # @option params [required, Array<String>] :regions
    #   The list of Regions where Security Lake is enabled.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_data_lake({
    #     regions: ["Region"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/DeleteDataLake AWS API Documentation
    #
    # @overload delete_data_lake(params = {})
    # @param [Hash] params ({})
    def delete_data_lake(params = {}, options = {})
      req = build_request(:delete_data_lake, params)
      req.send_request(options)
    end

    # Deletes the specified notification subscription in Amazon Security
    # Lake for the organization you specify.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/DeleteDataLakeExceptionSubscription AWS API Documentation
    #
    # @overload delete_data_lake_exception_subscription(params = {})
    # @param [Hash] params ({})
    def delete_data_lake_exception_subscription(params = {}, options = {})
      req = build_request(:delete_data_lake_exception_subscription, params)
      req.send_request(options)
    end

    # Removes automatic the enablement of configuration settings for new
    # member accounts (but retains the settings for the delegated
    # administrator) from Amazon Security Lake. You must run this API using
    # the credentials of the delegated administrator. When you run this API,
    # new member accounts that are added after the organization enables
    # Security Lake won't contribute to the data lake.
    #
    # @option params [required, Array<Types::DataLakeAutoEnableNewAccountConfiguration>] :auto_enable_new_account
    #   Removes the automatic enablement of configuration settings for new
    #   member accounts in Security Lake.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_data_lake_organization_configuration({
    #     auto_enable_new_account: [ # required
    #       {
    #         region: "Region", # required
    #         sources: [ # required
    #           {
    #             source_name: "ROUTE53", # accepts ROUTE53, VPC_FLOW, SH_FINDINGS, CLOUD_TRAIL_MGMT, LAMBDA_EXECUTION, S3_DATA
    #             source_version: "AwsLogSourceVersion",
    #           },
    #         ],
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/DeleteDataLakeOrganizationConfiguration AWS API Documentation
    #
    # @overload delete_data_lake_organization_configuration(params = {})
    # @param [Hash] params ({})
    def delete_data_lake_organization_configuration(params = {}, options = {})
      req = build_request(:delete_data_lake_organization_configuration, params)
      req.send_request(options)
    end

    # Deletes the subscription permission and all notification settings for
    # accounts that are already enabled in Amazon Security Lake. When you
    # run `DeleteSubscriber`, the subscriber will no longer consume data
    # from Security Lake and the subscriber is removed. This operation
    # deletes the subscriber and removes access to data in the current
    # Amazon Web Services Region.
    #
    # @option params [required, String] :subscriber_id
    #   A value created by Security Lake that uniquely identifies your
    #   `DeleteSubscriber` API request.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_subscriber({
    #     subscriber_id: "UUID", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/DeleteSubscriber AWS API Documentation
    #
    # @overload delete_subscriber(params = {})
    # @param [Hash] params ({})
    def delete_subscriber(params = {}, options = {})
      req = build_request(:delete_subscriber, params)
      req.send_request(options)
    end

    # Deletes the specified notification subscription in Amazon Security
    # Lake for the organization you specify.
    #
    # @option params [required, String] :subscriber_id
    #   The ID of the Security Lake subscriber account.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_subscriber_notification({
    #     subscriber_id: "UUID", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/DeleteSubscriberNotification AWS API Documentation
    #
    # @overload delete_subscriber_notification(params = {})
    # @param [Hash] params ({})
    def delete_subscriber_notification(params = {}, options = {})
      req = build_request(:delete_subscriber_notification, params)
      req.send_request(options)
    end

    # Deletes the Amazon Security Lake delegated administrator account for
    # the organization. This API can only be called by the organization
    # management account. The organization management account cannot be the
    # delegated administrator account.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/DeregisterDataLakeDelegatedAdministrator AWS API Documentation
    #
    # @overload deregister_data_lake_delegated_administrator(params = {})
    # @param [Hash] params ({})
    def deregister_data_lake_delegated_administrator(params = {}, options = {})
      req = build_request(:deregister_data_lake_delegated_administrator, params)
      req.send_request(options)
    end

    # Retrieves the details of exception notifications for the account in
    # Amazon Security Lake.
    #
    # @return [Types::GetDataLakeExceptionSubscriptionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDataLakeExceptionSubscriptionResponse#exception_time_to_live #exception_time_to_live} => Integer
    #   * {Types::GetDataLakeExceptionSubscriptionResponse#notification_endpoint #notification_endpoint} => String
    #   * {Types::GetDataLakeExceptionSubscriptionResponse#subscription_protocol #subscription_protocol} => String
    #
    # @example Response structure
    #
    #   resp.exception_time_to_live #=> Integer
    #   resp.notification_endpoint #=> String
    #   resp.subscription_protocol #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/GetDataLakeExceptionSubscription AWS API Documentation
    #
    # @overload get_data_lake_exception_subscription(params = {})
    # @param [Hash] params ({})
    def get_data_lake_exception_subscription(params = {}, options = {})
      req = build_request(:get_data_lake_exception_subscription, params)
      req.send_request(options)
    end

    # Retrieves the configuration that will be automatically set up for
    # accounts added to the organization after the organization has
    # onboarded to Amazon Security Lake. This API does not take input
    # parameters.
    #
    # @return [Types::GetDataLakeOrganizationConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDataLakeOrganizationConfigurationResponse#auto_enable_new_account #auto_enable_new_account} => Array&lt;Types::DataLakeAutoEnableNewAccountConfiguration&gt;
    #
    # @example Response structure
    #
    #   resp.auto_enable_new_account #=> Array
    #   resp.auto_enable_new_account[0].region #=> String
    #   resp.auto_enable_new_account[0].sources #=> Array
    #   resp.auto_enable_new_account[0].sources[0].source_name #=> String, one of "ROUTE53", "VPC_FLOW", "SH_FINDINGS", "CLOUD_TRAIL_MGMT", "LAMBDA_EXECUTION", "S3_DATA"
    #   resp.auto_enable_new_account[0].sources[0].source_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/GetDataLakeOrganizationConfiguration AWS API Documentation
    #
    # @overload get_data_lake_organization_configuration(params = {})
    # @param [Hash] params ({})
    def get_data_lake_organization_configuration(params = {}, options = {})
      req = build_request(:get_data_lake_organization_configuration, params)
      req.send_request(options)
    end

    # Retrieves a snapshot of the current Region, including whether Amazon
    # Security Lake is enabled for those accounts and which sources Security
    # Lake is collecting data from.
    #
    # @option params [Array<String>] :accounts
    #   The Amazon Web Services account ID for which a static snapshot of the
    #   current Amazon Web Services Region, including enabled accounts and log
    #   sources, is retrieved.
    #
    # @option params [Integer] :max_results
    #   The maximum limit of accounts for which the static snapshot of the
    #   current Region, including enabled accounts and log sources, is
    #   retrieved.
    #
    # @option params [String] :next_token
    #   Lists if there are more results available. The value of nextToken is a
    #   unique pagination token for each page. Repeat the call using the
    #   returned token to retrieve the next page. Keep all other arguments
    #   unchanged.
    #
    #   Each pagination token expires after 24 hours. Using an expired
    #   pagination token will return an HTTP 400 InvalidToken error.
    #
    # @return [Types::GetDataLakeSourcesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDataLakeSourcesResponse#data_lake_arn #data_lake_arn} => String
    #   * {Types::GetDataLakeSourcesResponse#data_lake_sources #data_lake_sources} => Array&lt;Types::DataLakeSource&gt;
    #   * {Types::GetDataLakeSourcesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_data_lake_sources({
    #     accounts: ["AwsAccountId"],
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.data_lake_arn #=> String
    #   resp.data_lake_sources #=> Array
    #   resp.data_lake_sources[0].account #=> String
    #   resp.data_lake_sources[0].event_classes #=> Array
    #   resp.data_lake_sources[0].event_classes[0] #=> String
    #   resp.data_lake_sources[0].source_name #=> String
    #   resp.data_lake_sources[0].source_statuses #=> Array
    #   resp.data_lake_sources[0].source_statuses[0].resource #=> String
    #   resp.data_lake_sources[0].source_statuses[0].status #=> String, one of "COLLECTING", "MISCONFIGURED", "NOT_COLLECTING"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/GetDataLakeSources AWS API Documentation
    #
    # @overload get_data_lake_sources(params = {})
    # @param [Hash] params ({})
    def get_data_lake_sources(params = {}, options = {})
      req = build_request(:get_data_lake_sources, params)
      req.send_request(options)
    end

    # Retrieves the subscription information for the specified subscription
    # ID. You can get information about a specific subscriber.
    #
    # @option params [required, String] :subscriber_id
    #   A value created by Amazon Security Lake that uniquely identifies your
    #   `GetSubscriber` API request.
    #
    # @return [Types::GetSubscriberResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSubscriberResponse#subscriber #subscriber} => Types::SubscriberResource
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_subscriber({
    #     subscriber_id: "UUID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.subscriber.access_types #=> Array
    #   resp.subscriber.access_types[0] #=> String, one of "LAKEFORMATION", "S3"
    #   resp.subscriber.created_at #=> Time
    #   resp.subscriber.resource_share_arn #=> String
    #   resp.subscriber.resource_share_name #=> String
    #   resp.subscriber.role_arn #=> String
    #   resp.subscriber.s3_bucket_arn #=> String
    #   resp.subscriber.sources #=> Array
    #   resp.subscriber.sources[0].aws_log_source.source_name #=> String, one of "ROUTE53", "VPC_FLOW", "SH_FINDINGS", "CLOUD_TRAIL_MGMT", "LAMBDA_EXECUTION", "S3_DATA"
    #   resp.subscriber.sources[0].aws_log_source.source_version #=> String
    #   resp.subscriber.sources[0].custom_log_source.attributes.crawler_arn #=> String
    #   resp.subscriber.sources[0].custom_log_source.attributes.database_arn #=> String
    #   resp.subscriber.sources[0].custom_log_source.attributes.table_arn #=> String
    #   resp.subscriber.sources[0].custom_log_source.provider.location #=> String
    #   resp.subscriber.sources[0].custom_log_source.provider.role_arn #=> String
    #   resp.subscriber.sources[0].custom_log_source.source_name #=> String
    #   resp.subscriber.sources[0].custom_log_source.source_version #=> String
    #   resp.subscriber.subscriber_arn #=> String
    #   resp.subscriber.subscriber_description #=> String
    #   resp.subscriber.subscriber_endpoint #=> String
    #   resp.subscriber.subscriber_id #=> String
    #   resp.subscriber.subscriber_identity.external_id #=> String
    #   resp.subscriber.subscriber_identity.principal #=> String
    #   resp.subscriber.subscriber_name #=> String
    #   resp.subscriber.subscriber_status #=> String, one of "ACTIVE", "DEACTIVATED", "PENDING", "READY"
    #   resp.subscriber.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/GetSubscriber AWS API Documentation
    #
    # @overload get_subscriber(params = {})
    # @param [Hash] params ({})
    def get_subscriber(params = {}, options = {})
      req = build_request(:get_subscriber, params)
      req.send_request(options)
    end

    # Lists the Amazon Security Lake exceptions that you can use to find the
    # source of problems and fix them.
    #
    # @option params [Integer] :max_results
    #   List the maximum number of failures in Security Lake.
    #
    # @option params [String] :next_token
    #   List if there are more results available. The value of nextToken is a
    #   unique pagination token for each page. Repeat the call using the
    #   returned token to retrieve the next page. Keep all other arguments
    #   unchanged.
    #
    #   Each pagination token expires after 24 hours. Using an expired
    #   pagination token will return an HTTP 400 InvalidToken error.
    #
    # @option params [Array<String>] :regions
    #   List the Amazon Web Services Regions from which exceptions are
    #   retrieved.
    #
    # @return [Types::ListDataLakeExceptionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDataLakeExceptionsResponse#exceptions #exceptions} => Array&lt;Types::DataLakeException&gt;
    #   * {Types::ListDataLakeExceptionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_data_lake_exceptions({
    #     max_results: 1,
    #     next_token: "NextToken",
    #     regions: ["Region"],
    #   })
    #
    # @example Response structure
    #
    #   resp.exceptions #=> Array
    #   resp.exceptions[0].exception #=> String
    #   resp.exceptions[0].region #=> String
    #   resp.exceptions[0].remediation #=> String
    #   resp.exceptions[0].timestamp #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/ListDataLakeExceptions AWS API Documentation
    #
    # @overload list_data_lake_exceptions(params = {})
    # @param [Hash] params ({})
    def list_data_lake_exceptions(params = {}, options = {})
      req = build_request(:list_data_lake_exceptions, params)
      req.send_request(options)
    end

    # Retrieves the Amazon Security Lake configuration object for the
    # specified Amazon Web Services account ID. You can use the
    # `ListDataLakes` API to know whether Security Lake is enabled for any
    # region.
    #
    # @option params [Array<String>] :regions
    #   The list of regions where Security Lake is enabled.
    #
    # @return [Types::ListDataLakesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDataLakesResponse#data_lakes #data_lakes} => Array&lt;Types::DataLakeResource&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_data_lakes({
    #     regions: ["Region"],
    #   })
    #
    # @example Response structure
    #
    #   resp.data_lakes #=> Array
    #   resp.data_lakes[0].create_status #=> String, one of "INITIALIZED", "PENDING", "COMPLETED", "FAILED"
    #   resp.data_lakes[0].data_lake_arn #=> String
    #   resp.data_lakes[0].encryption_configuration.kms_key_id #=> String
    #   resp.data_lakes[0].lifecycle_configuration.expiration.days #=> Integer
    #   resp.data_lakes[0].lifecycle_configuration.transitions #=> Array
    #   resp.data_lakes[0].lifecycle_configuration.transitions[0].days #=> Integer
    #   resp.data_lakes[0].lifecycle_configuration.transitions[0].storage_class #=> String
    #   resp.data_lakes[0].region #=> String
    #   resp.data_lakes[0].replication_configuration.regions #=> Array
    #   resp.data_lakes[0].replication_configuration.regions[0] #=> String
    #   resp.data_lakes[0].replication_configuration.role_arn #=> String
    #   resp.data_lakes[0].s3_bucket_arn #=> String
    #   resp.data_lakes[0].update_status.exception.code #=> String
    #   resp.data_lakes[0].update_status.exception.reason #=> String
    #   resp.data_lakes[0].update_status.request_id #=> String
    #   resp.data_lakes[0].update_status.status #=> String, one of "INITIALIZED", "PENDING", "COMPLETED", "FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/ListDataLakes AWS API Documentation
    #
    # @overload list_data_lakes(params = {})
    # @param [Hash] params ({})
    def list_data_lakes(params = {}, options = {})
      req = build_request(:list_data_lakes, params)
      req.send_request(options)
    end

    # Retrieves the log sources in the current Amazon Web Services Region.
    #
    # @option params [Array<String>] :accounts
    #   The list of Amazon Web Services accounts for which log sources are
    #   displayed.
    #
    # @option params [Integer] :max_results
    #   The maximum number of accounts for which the log sources are
    #   displayed.
    #
    # @option params [String] :next_token
    #   If nextToken is returned, there are more results available. You can
    #   repeat the call using the returned token to retrieve the next page.
    #
    # @option params [Array<String>] :regions
    #   The list of regions for which log sources are displayed.
    #
    # @option params [Array<Types::LogSourceResource>] :sources
    #   The list of sources for which log sources are displayed.
    #
    # @return [Types::ListLogSourcesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListLogSourcesResponse#next_token #next_token} => String
    #   * {Types::ListLogSourcesResponse#sources #sources} => Array&lt;Types::LogSource&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_log_sources({
    #     accounts: ["AwsAccountId"],
    #     max_results: 1,
    #     next_token: "NextToken",
    #     regions: ["Region"],
    #     sources: [
    #       {
    #         aws_log_source: {
    #           source_name: "ROUTE53", # accepts ROUTE53, VPC_FLOW, SH_FINDINGS, CLOUD_TRAIL_MGMT, LAMBDA_EXECUTION, S3_DATA
    #           source_version: "AwsLogSourceVersion",
    #         },
    #         custom_log_source: {
    #           attributes: {
    #             crawler_arn: "AmazonResourceName",
    #             database_arn: "AmazonResourceName",
    #             table_arn: "AmazonResourceName",
    #           },
    #           provider: {
    #             location: "S3URI",
    #             role_arn: "RoleArn",
    #           },
    #           source_name: "CustomLogSourceName",
    #           source_version: "CustomLogSourceVersion",
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.sources #=> Array
    #   resp.sources[0].account #=> String
    #   resp.sources[0].region #=> String
    #   resp.sources[0].sources #=> Array
    #   resp.sources[0].sources[0].aws_log_source.source_name #=> String, one of "ROUTE53", "VPC_FLOW", "SH_FINDINGS", "CLOUD_TRAIL_MGMT", "LAMBDA_EXECUTION", "S3_DATA"
    #   resp.sources[0].sources[0].aws_log_source.source_version #=> String
    #   resp.sources[0].sources[0].custom_log_source.attributes.crawler_arn #=> String
    #   resp.sources[0].sources[0].custom_log_source.attributes.database_arn #=> String
    #   resp.sources[0].sources[0].custom_log_source.attributes.table_arn #=> String
    #   resp.sources[0].sources[0].custom_log_source.provider.location #=> String
    #   resp.sources[0].sources[0].custom_log_source.provider.role_arn #=> String
    #   resp.sources[0].sources[0].custom_log_source.source_name #=> String
    #   resp.sources[0].sources[0].custom_log_source.source_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/ListLogSources AWS API Documentation
    #
    # @overload list_log_sources(params = {})
    # @param [Hash] params ({})
    def list_log_sources(params = {}, options = {})
      req = build_request(:list_log_sources, params)
      req.send_request(options)
    end

    # List all subscribers for the specific Amazon Security Lake account ID.
    # You can retrieve a list of subscriptions associated with a specific
    # organization or Amazon Web Services account.
    #
    # @option params [Integer] :max_results
    #   The maximum number of accounts for which the configuration is
    #   displayed.
    #
    # @option params [String] :next_token
    #   If nextToken is returned, there are more results available. You can
    #   repeat the call using the returned token to retrieve the next page.
    #
    # @return [Types::ListSubscribersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSubscribersResponse#next_token #next_token} => String
    #   * {Types::ListSubscribersResponse#subscribers #subscribers} => Array&lt;Types::SubscriberResource&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_subscribers({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.subscribers #=> Array
    #   resp.subscribers[0].access_types #=> Array
    #   resp.subscribers[0].access_types[0] #=> String, one of "LAKEFORMATION", "S3"
    #   resp.subscribers[0].created_at #=> Time
    #   resp.subscribers[0].resource_share_arn #=> String
    #   resp.subscribers[0].resource_share_name #=> String
    #   resp.subscribers[0].role_arn #=> String
    #   resp.subscribers[0].s3_bucket_arn #=> String
    #   resp.subscribers[0].sources #=> Array
    #   resp.subscribers[0].sources[0].aws_log_source.source_name #=> String, one of "ROUTE53", "VPC_FLOW", "SH_FINDINGS", "CLOUD_TRAIL_MGMT", "LAMBDA_EXECUTION", "S3_DATA"
    #   resp.subscribers[0].sources[0].aws_log_source.source_version #=> String
    #   resp.subscribers[0].sources[0].custom_log_source.attributes.crawler_arn #=> String
    #   resp.subscribers[0].sources[0].custom_log_source.attributes.database_arn #=> String
    #   resp.subscribers[0].sources[0].custom_log_source.attributes.table_arn #=> String
    #   resp.subscribers[0].sources[0].custom_log_source.provider.location #=> String
    #   resp.subscribers[0].sources[0].custom_log_source.provider.role_arn #=> String
    #   resp.subscribers[0].sources[0].custom_log_source.source_name #=> String
    #   resp.subscribers[0].sources[0].custom_log_source.source_version #=> String
    #   resp.subscribers[0].subscriber_arn #=> String
    #   resp.subscribers[0].subscriber_description #=> String
    #   resp.subscribers[0].subscriber_endpoint #=> String
    #   resp.subscribers[0].subscriber_id #=> String
    #   resp.subscribers[0].subscriber_identity.external_id #=> String
    #   resp.subscribers[0].subscriber_identity.principal #=> String
    #   resp.subscribers[0].subscriber_name #=> String
    #   resp.subscribers[0].subscriber_status #=> String, one of "ACTIVE", "DEACTIVATED", "PENDING", "READY"
    #   resp.subscribers[0].updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/ListSubscribers AWS API Documentation
    #
    # @overload list_subscribers(params = {})
    # @param [Hash] params ({})
    def list_subscribers(params = {}, options = {})
      req = build_request(:list_subscribers, params)
      req.send_request(options)
    end

    # Designates the Amazon Security Lake delegated administrator account
    # for the organization. This API can only be called by the organization
    # management account. The organization management account cannot be the
    # delegated administrator account.
    #
    # @option params [required, String] :account_id
    #   The Amazon Web Services account ID of the Security Lake delegated
    #   administrator.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_data_lake_delegated_administrator({
    #     account_id: "SafeString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/RegisterDataLakeDelegatedAdministrator AWS API Documentation
    #
    # @overload register_data_lake_delegated_administrator(params = {})
    # @param [Hash] params ({})
    def register_data_lake_delegated_administrator(params = {}, options = {})
      req = build_request(:register_data_lake_delegated_administrator, params)
      req.send_request(options)
    end

    # Specifies where to store your security data and for how long. You can
    # add a rollup Region to consolidate data from multiple Amazon Web
    # Services Regions.
    #
    # @option params [required, Array<Types::DataLakeConfiguration>] :configurations
    #   Specify the Region or Regions that will contribute data to the rollup
    #   region.
    #
    # @return [Types::UpdateDataLakeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDataLakeResponse#data_lakes #data_lakes} => Array&lt;Types::DataLakeResource&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_data_lake({
    #     configurations: [ # required
    #       {
    #         encryption_configuration: {
    #           kms_key_id: "String",
    #         },
    #         lifecycle_configuration: {
    #           expiration: {
    #             days: 1,
    #           },
    #           transitions: [
    #             {
    #               days: 1,
    #               storage_class: "DataLakeStorageClass",
    #             },
    #           ],
    #         },
    #         region: "Region", # required
    #         replication_configuration: {
    #           regions: ["Region"],
    #           role_arn: "RoleArn",
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.data_lakes #=> Array
    #   resp.data_lakes[0].create_status #=> String, one of "INITIALIZED", "PENDING", "COMPLETED", "FAILED"
    #   resp.data_lakes[0].data_lake_arn #=> String
    #   resp.data_lakes[0].encryption_configuration.kms_key_id #=> String
    #   resp.data_lakes[0].lifecycle_configuration.expiration.days #=> Integer
    #   resp.data_lakes[0].lifecycle_configuration.transitions #=> Array
    #   resp.data_lakes[0].lifecycle_configuration.transitions[0].days #=> Integer
    #   resp.data_lakes[0].lifecycle_configuration.transitions[0].storage_class #=> String
    #   resp.data_lakes[0].region #=> String
    #   resp.data_lakes[0].replication_configuration.regions #=> Array
    #   resp.data_lakes[0].replication_configuration.regions[0] #=> String
    #   resp.data_lakes[0].replication_configuration.role_arn #=> String
    #   resp.data_lakes[0].s3_bucket_arn #=> String
    #   resp.data_lakes[0].update_status.exception.code #=> String
    #   resp.data_lakes[0].update_status.exception.reason #=> String
    #   resp.data_lakes[0].update_status.request_id #=> String
    #   resp.data_lakes[0].update_status.status #=> String, one of "INITIALIZED", "PENDING", "COMPLETED", "FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/UpdateDataLake AWS API Documentation
    #
    # @overload update_data_lake(params = {})
    # @param [Hash] params ({})
    def update_data_lake(params = {}, options = {})
      req = build_request(:update_data_lake, params)
      req.send_request(options)
    end

    # Updates the specified notification subscription in Amazon Security
    # Lake for the organization you specify.
    #
    # @option params [Integer] :exception_time_to_live
    #   The time-to-live (TTL) for the exception message to remain.
    #
    # @option params [required, String] :notification_endpoint
    #   The account that is subscribed to receive exception notifications.
    #
    # @option params [required, String] :subscription_protocol
    #   The subscription protocol to which exception messages are posted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_data_lake_exception_subscription({
    #     exception_time_to_live: 1,
    #     notification_endpoint: "SafeString", # required
    #     subscription_protocol: "SubscriptionProtocol", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/UpdateDataLakeExceptionSubscription AWS API Documentation
    #
    # @overload update_data_lake_exception_subscription(params = {})
    # @param [Hash] params ({})
    def update_data_lake_exception_subscription(params = {}, options = {})
      req = build_request(:update_data_lake_exception_subscription, params)
      req.send_request(options)
    end

    # Updates an existing subscription for the given Amazon Security Lake
    # account ID. You can update a subscriber by changing the sources that
    # the subscriber consumes data from.
    #
    # @option params [Array<Types::LogSourceResource>] :sources
    #   The supported Amazon Web Services from which logs and events are
    #   collected. For the list of supported Amazon Web Services, see the
    #   [Amazon Security Lake User Guide][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/security-lake/latest/userguide/internal-sources.html
    #
    # @option params [String] :subscriber_description
    #   The description of the Security Lake account subscriber.
    #
    # @option params [required, String] :subscriber_id
    #   A value created by Security Lake that uniquely identifies your
    #   subscription.
    #
    # @option params [Types::AwsIdentity] :subscriber_identity
    #   The AWS identity used to access your data.
    #
    # @option params [String] :subscriber_name
    #   The name of the Security Lake account subscriber.
    #
    # @return [Types::UpdateSubscriberResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateSubscriberResponse#subscriber #subscriber} => Types::SubscriberResource
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_subscriber({
    #     sources: [
    #       {
    #         aws_log_source: {
    #           source_name: "ROUTE53", # accepts ROUTE53, VPC_FLOW, SH_FINDINGS, CLOUD_TRAIL_MGMT, LAMBDA_EXECUTION, S3_DATA
    #           source_version: "AwsLogSourceVersion",
    #         },
    #         custom_log_source: {
    #           attributes: {
    #             crawler_arn: "AmazonResourceName",
    #             database_arn: "AmazonResourceName",
    #             table_arn: "AmazonResourceName",
    #           },
    #           provider: {
    #             location: "S3URI",
    #             role_arn: "RoleArn",
    #           },
    #           source_name: "CustomLogSourceName",
    #           source_version: "CustomLogSourceVersion",
    #         },
    #       },
    #     ],
    #     subscriber_description: "DescriptionString",
    #     subscriber_id: "UUID", # required
    #     subscriber_identity: {
    #       external_id: "ExternalId", # required
    #       principal: "AwsPrincipal", # required
    #     },
    #     subscriber_name: "UpdateSubscriberRequestSubscriberNameString",
    #   })
    #
    # @example Response structure
    #
    #   resp.subscriber.access_types #=> Array
    #   resp.subscriber.access_types[0] #=> String, one of "LAKEFORMATION", "S3"
    #   resp.subscriber.created_at #=> Time
    #   resp.subscriber.resource_share_arn #=> String
    #   resp.subscriber.resource_share_name #=> String
    #   resp.subscriber.role_arn #=> String
    #   resp.subscriber.s3_bucket_arn #=> String
    #   resp.subscriber.sources #=> Array
    #   resp.subscriber.sources[0].aws_log_source.source_name #=> String, one of "ROUTE53", "VPC_FLOW", "SH_FINDINGS", "CLOUD_TRAIL_MGMT", "LAMBDA_EXECUTION", "S3_DATA"
    #   resp.subscriber.sources[0].aws_log_source.source_version #=> String
    #   resp.subscriber.sources[0].custom_log_source.attributes.crawler_arn #=> String
    #   resp.subscriber.sources[0].custom_log_source.attributes.database_arn #=> String
    #   resp.subscriber.sources[0].custom_log_source.attributes.table_arn #=> String
    #   resp.subscriber.sources[0].custom_log_source.provider.location #=> String
    #   resp.subscriber.sources[0].custom_log_source.provider.role_arn #=> String
    #   resp.subscriber.sources[0].custom_log_source.source_name #=> String
    #   resp.subscriber.sources[0].custom_log_source.source_version #=> String
    #   resp.subscriber.subscriber_arn #=> String
    #   resp.subscriber.subscriber_description #=> String
    #   resp.subscriber.subscriber_endpoint #=> String
    #   resp.subscriber.subscriber_id #=> String
    #   resp.subscriber.subscriber_identity.external_id #=> String
    #   resp.subscriber.subscriber_identity.principal #=> String
    #   resp.subscriber.subscriber_name #=> String
    #   resp.subscriber.subscriber_status #=> String, one of "ACTIVE", "DEACTIVATED", "PENDING", "READY"
    #   resp.subscriber.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/UpdateSubscriber AWS API Documentation
    #
    # @overload update_subscriber(params = {})
    # @param [Hash] params ({})
    def update_subscriber(params = {}, options = {})
      req = build_request(:update_subscriber, params)
      req.send_request(options)
    end

    # Updates an existing notification method for the subscription (SQS or
    # HTTPs endpoint) or switches the notification subscription endpoint for
    # a subscriber.
    #
    # @option params [required, Types::NotificationConfiguration] :configuration
    #   The configuration for subscriber notification.
    #
    # @option params [required, String] :subscriber_id
    #   The subscription ID for which the subscription notification is
    #   specified.
    #
    # @return [Types::UpdateSubscriberNotificationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateSubscriberNotificationResponse#subscriber_endpoint #subscriber_endpoint} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_subscriber_notification({
    #     configuration: { # required
    #       https_notification_configuration: {
    #         authorization_api_key_name: "String",
    #         authorization_api_key_value: "String",
    #         endpoint: "HttpsNotificationConfigurationEndpointString", # required
    #         http_method: "POST", # accepts POST, PUT
    #         target_role_arn: "RoleArn", # required
    #       },
    #       sqs_notification_configuration: {
    #       },
    #     },
    #     subscriber_id: "UUID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.subscriber_endpoint #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/UpdateSubscriberNotification AWS API Documentation
    #
    # @overload update_subscriber_notification(params = {})
    # @param [Hash] params ({})
    def update_subscriber_notification(params = {}, options = {})
      req = build_request(:update_subscriber_notification, params)
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
      context[:gem_name] = 'aws-sdk-securitylake'
      context[:gem_version] = '1.9.0'
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
