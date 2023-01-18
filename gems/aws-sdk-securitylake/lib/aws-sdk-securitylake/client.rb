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
    # part of a trusted organization or standalone accounts. At least one of
    # the three dimensions is a mandatory input to this API. However, you
    # can supply any combination of the three dimensions to this API.
    #
    # By default, a dimension refers to the entire set. When you don't
    # provide a dimension, Security Lake assumes that the missing dimension
    # refers to the entire set. This is overridden when you supply any one
    # of the inputs. For instance, when you do not specify members, the API
    # enables all Security Lake member accounts for all sources. Similarly,
    # when you do not specify Regions, Security Lake is enabled for all the
    # Regions where Security Lake is available as a service.
    #
    # You can use this API only to enable natively supported Amazon Web
    # Services as a source. Use `CreateCustomLogSource` to enable data
    # collection from a custom source.
    #
    # @option params [Hash<String,Hash>] :enable_all_dimensions
    #   Enables data collection from specific Amazon Web Services sources in
    #   all specific accounts and specific Regions.
    #
    # @option params [Array<String>] :enable_single_dimension
    #   Enables data collection from all Amazon Web Services sources in
    #   specific accounts or Regions.
    #
    # @option params [Hash<String,Array>] :enable_two_dimensions
    #   Enables data collection from specific Amazon Web Services sources in
    #   specific accounts or Regions.
    #
    # @option params [required, Array<String>] :input_order
    #   Specifies the input order to enable dimensions in Security Lake,
    #   namely Region, source type, and member account.
    #
    # @return [Types::CreateAwsLogSourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAwsLogSourceResponse#failed #failed} => Array&lt;String&gt;
    #   * {Types::CreateAwsLogSourceResponse#processing #processing} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_aws_log_source({
    #     enable_all_dimensions: {
    #       "String" => {
    #         "String" => ["String"],
    #       },
    #     },
    #     enable_single_dimension: ["SafeString"],
    #     enable_two_dimensions: {
    #       "String" => ["String"],
    #     },
    #     input_order: ["REGION"], # required, accepts REGION, SOURCE_TYPE, MEMBER
    #   })
    #
    # @example Response structure
    #
    #   resp.failed #=> Array
    #   resp.failed[0] #=> String
    #   resp.processing #=> Array
    #   resp.processing[0] #=> String
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
    # source in addition to an associated Glue table and an Glue crawler.
    #
    # @option params [required, String] :custom_source_name
    #   The name for a third-party custom source. This must be a Regionally
    #   unique value.
    #
    # @option params [required, String] :event_class
    #   The Open Cybersecurity Schema Framework (OCSF) event class which
    #   describes the type of data that the custom source will send to
    #   Security Lake.
    #
    # @option params [required, String] :glue_invocation_role_arn
    #   The Amazon Resource Name (ARN) of the Identity and Access Management
    #   (IAM) role to be used by the Glue crawler. The recommended IAM
    #   policies are:
    #
    #   * The managed policy `AWSGlueServiceRole`
    #
    #   * A custom policy granting access to your Amazon S3 Data Lake
    #
    # @option params [required, String] :log_provider_account_id
    #   The Amazon Web Services account ID of the custom source that will
    #   write logs and events into the Amazon S3 Data Lake.
    #
    # @return [Types::CreateCustomLogSourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateCustomLogSourceResponse#custom_data_location #custom_data_location} => String
    #   * {Types::CreateCustomLogSourceResponse#glue_crawler_name #glue_crawler_name} => String
    #   * {Types::CreateCustomLogSourceResponse#glue_database_name #glue_database_name} => String
    #   * {Types::CreateCustomLogSourceResponse#glue_table_name #glue_table_name} => String
    #   * {Types::CreateCustomLogSourceResponse#log_provider_access_role_arn #log_provider_access_role_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_custom_log_source({
    #     custom_source_name: "CustomSourceType", # required
    #     event_class: "ACCESS_ACTIVITY", # required, accepts ACCESS_ACTIVITY, FILE_ACTIVITY, KERNEL_ACTIVITY, KERNEL_EXTENSION, MEMORY_ACTIVITY, MODULE_ACTIVITY, PROCESS_ACTIVITY, REGISTRY_KEY_ACTIVITY, REGISTRY_VALUE_ACTIVITY, RESOURCE_ACTIVITY, SCHEDULED_JOB_ACTIVITY, SECURITY_FINDING, ACCOUNT_CHANGE, AUTHENTICATION, AUTHORIZATION, ENTITY_MANAGEMENT_AUDIT, DHCP_ACTIVITY, NETWORK_ACTIVITY, DNS_ACTIVITY, FTP_ACTIVITY, HTTP_ACTIVITY, RDP_ACTIVITY, SMB_ACTIVITY, SSH_ACTIVITY, CLOUD_API, CONTAINER_LIFECYCLE, DATABASE_LIFECYCLE, CONFIG_STATE, CLOUD_STORAGE, INVENTORY_INFO, RFB_ACTIVITY, SMTP_ACTIVITY, VIRTUAL_MACHINE_ACTIVITY
    #     glue_invocation_role_arn: "RoleArn", # required
    #     log_provider_account_id: "AwsAccountId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.custom_data_location #=> String
    #   resp.glue_crawler_name #=> String
    #   resp.glue_database_name #=> String
    #   resp.glue_table_name #=> String
    #   resp.log_provider_access_role_arn #=> String
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
    # collection in Regions. You can either use the `enableAll` parameter to
    # specify all Regions or specify the Regions where you want to enable
    # Security Lake. To specify particular Regions, use the `Regions`
    # parameter and then configure these Regions using the `configurations`
    # parameter. If you have already enabled Security Lake in a Region when
    # you call this command, the command will update the Region if you
    # provide new configuration parameters. If you have not already enabled
    # Security Lake in the Region when you call this API, it will set up the
    # data lake in the Region with the specified configurations.
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
    # @option params [Hash<String,Types::LakeConfigurationRequest>] :configurations
    #   Specify the Region or Regions that will contribute data to the rollup
    #   region.
    #
    # @option params [Boolean] :enable_all
    #   Enable Security Lake in all Regions.
    #
    # @option params [String] :meta_store_manager_role_arn
    #   The Amazon Resource Name (ARN) used to create and update the Glue
    #   table. This table contains partitions generated by the ingestion and
    #   normalization of Amazon Web Services log sources and custom sources.
    #
    # @option params [Array<String>] :regions
    #   Enable Security Lake in the specified Regions. To enable Security Lake
    #   in specific Amazon Web Services Regions, such as us-east-1 or
    #   ap-northeast-3, provide the Region codes. For a list of Region codes,
    #   see [Amazon Security Lake endpoints][1] in the Amazon Web Services
    #   General Reference.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/securitylake.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_datalake({
    #     configurations: {
    #       "us-east-1" => {
    #         encryption_key: "String",
    #         replication_destination_regions: ["us-east-1"], # accepts us-east-1, us-west-2, eu-central-1, us-east-2, eu-west-1, ap-northeast-1, ap-southeast-2
    #         replication_role_arn: "RoleArn",
    #         retention_settings: [
    #           {
    #             retention_period: 1,
    #             storage_class: "STANDARD_IA", # accepts STANDARD_IA, ONEZONE_IA, INTELLIGENT_TIERING, GLACIER_IR, GLACIER, DEEP_ARCHIVE, EXPIRE
    #           },
    #         ],
    #         tags_map: {
    #           "String" => "String",
    #         },
    #       },
    #     },
    #     enable_all: false,
    #     meta_store_manager_role_arn: "RoleArn",
    #     regions: ["us-east-1"], # accepts us-east-1, us-west-2, eu-central-1, us-east-2, eu-west-1, ap-northeast-1, ap-southeast-2
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/CreateDatalake AWS API Documentation
    #
    # @overload create_datalake(params = {})
    # @param [Hash] params ({})
    def create_datalake(params = {}, options = {})
      req = build_request(:create_datalake, params)
      req.send_request(options)
    end

    # Automatically enables Amazon Security Lake for new member accounts in
    # your organization. Security Lake is not automatically enabled for any
    # existing member accounts in your organization.
    #
    # @option params [required, Array<Types::AutoEnableNewRegionConfiguration>] :configuration_for_new_accounts
    #   Enable Security Lake with the specified configuration settings to
    #   begin collecting security data for new accounts in your organization.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_datalake_auto_enable({
    #     configuration_for_new_accounts: [ # required
    #       {
    #         region: "us-east-1", # required, accepts us-east-1, us-west-2, eu-central-1, us-east-2, eu-west-1, ap-northeast-1, ap-southeast-2
    #         sources: ["ROUTE53"], # required, accepts ROUTE53, VPC_FLOW, CLOUD_TRAIL, SH_FINDINGS
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/CreateDatalakeAutoEnable AWS API Documentation
    #
    # @overload create_datalake_auto_enable(params = {})
    # @param [Hash] params ({})
    def create_datalake_auto_enable(params = {}, options = {})
      req = build_request(:create_datalake_auto_enable, params)
      req.send_request(options)
    end

    # Designates the Amazon Security Lake delegated administrator account
    # for the organization. This API can only be called by the organization
    # management account. The organization management account cannot be the
    # delegated administrator account.
    #
    # @option params [required, String] :account
    #   The Amazon Web Services account ID of the Security Lake delegated
    #   administrator.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_datalake_delegated_admin({
    #     account: "SafeString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/CreateDatalakeDelegatedAdmin AWS API Documentation
    #
    # @overload create_datalake_delegated_admin(params = {})
    # @param [Hash] params ({})
    def create_datalake_delegated_admin(params = {}, options = {})
      req = build_request(:create_datalake_delegated_admin, params)
      req.send_request(options)
    end

    # Creates the specified notification subscription in Amazon Security
    # Lake for the organization you specify.
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
    #   resp = client.create_datalake_exceptions_subscription({
    #     notification_endpoint: "SafeString", # required
    #     subscription_protocol: "HTTP", # required, accepts HTTP, HTTPS, EMAIL, EMAIL_JSON, SMS, SQS, LAMBDA, APP, FIREHOSE
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/CreateDatalakeExceptionsSubscription AWS API Documentation
    #
    # @overload create_datalake_exceptions_subscription(params = {})
    # @param [Hash] params ({})
    def create_datalake_exceptions_subscription(params = {}, options = {})
      req = build_request(:create_datalake_exceptions_subscription, params)
      req.send_request(options)
    end

    # Creates a subscription permission for accounts that are already
    # enabled in Amazon Security Lake. You can create a subscriber with
    # access to data in the current Amazon Web Services Region.
    #
    # @option params [Array<String>] :access_types
    #   The Amazon S3 or Lake Formation access type.
    #
    # @option params [required, String] :account_id
    #   The Amazon Web Services account ID used to access your data.
    #
    # @option params [required, String] :external_id
    #   The external ID of the subscriber. This lets the user that is assuming
    #   the role assert the circumstances in which they are operating. It also
    #   provides a way for the account owner to permit the role to be assumed
    #   only under specific circumstances.
    #
    # @option params [required, Array<Types::SourceType>] :source_types
    #   The supported Amazon Web Services from which logs and events are
    #   collected. Security Lake supports log and event collection for
    #   natively supported Amazon Web Services.
    #
    # @option params [String] :subscriber_description
    #   The description for your subscriber account in Security Lake.
    #
    # @option params [required, String] :subscriber_name
    #   The name of your Security Lake subscriber account.
    #
    # @return [Types::CreateSubscriberResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSubscriberResponse#role_arn #role_arn} => String
    #   * {Types::CreateSubscriberResponse#s3_bucket_arn #s3_bucket_arn} => String
    #   * {Types::CreateSubscriberResponse#sns_arn #sns_arn} => String
    #   * {Types::CreateSubscriberResponse#subscription_id #subscription_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_subscriber({
    #     access_types: ["LAKEFORMATION"], # accepts LAKEFORMATION, S3
    #     account_id: "AwsAccountId", # required
    #     external_id: "SafeString", # required
    #     source_types: [ # required
    #       {
    #         aws_source_type: "ROUTE53", # accepts ROUTE53, VPC_FLOW, CLOUD_TRAIL, SH_FINDINGS
    #         custom_source_type: "CustomSourceType",
    #       },
    #     ],
    #     subscriber_description: "DescriptionString",
    #     subscriber_name: "CreateSubscriberRequestSubscriberNameString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.role_arn #=> String
    #   resp.s3_bucket_arn #=> String
    #   resp.sns_arn #=> String
    #   resp.subscription_id #=> String
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
    # the sources that the subscriber consumes in Security Lake.
    #
    # @option params [Boolean] :create_sqs
    #   Create an Amazon Simple Queue Service queue.
    #
    # @option params [String] :https_api_key_name
    #   The key name for the notification subscription.
    #
    # @option params [String] :https_api_key_value
    #   The key value for the notification subscription.
    #
    # @option params [String] :https_method
    #   The HTTPS method used for the notification subscription.
    #
    # @option params [String] :role_arn
    #   The Amazon Resource Name (ARN) of the EventBridge API destinations IAM
    #   role that you created.
    #
    # @option params [String] :subscription_endpoint
    #   The subscription endpoint in Security Lake. If you prefer notification
    #   with an HTTPs endpoint, populate this field.
    #
    # @option params [required, String] :subscription_id
    #   The subscription ID for the notification subscription/
    #
    # @return [Types::CreateSubscriptionNotificationConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSubscriptionNotificationConfigurationResponse#queue_arn #queue_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_subscription_notification_configuration({
    #     create_sqs: false,
    #     https_api_key_name: "String",
    #     https_api_key_value: "String",
    #     https_method: "POST", # accepts POST, PUT
    #     role_arn: "RoleArn",
    #     subscription_endpoint: "CreateSubscriptionNotificationConfigurationRequestSubscriptionEndpointString",
    #     subscription_id: "UUID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.queue_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/CreateSubscriptionNotificationConfiguration AWS API Documentation
    #
    # @overload create_subscription_notification_configuration(params = {})
    # @param [Hash] params ({})
    def create_subscription_notification_configuration(params = {}, options = {})
      req = build_request(:create_subscription_notification_configuration, params)
      req.send_request(options)
    end

    # Removes a natively supported Amazon Web Service as an Amazon Security
    # Lake source. When you remove the source, Security Lake stops
    # collecting data from that source, and subscribers can no longer
    # consume new data from the source. Subscribers can still consume data
    # that Security Lake collected from the source before disablement.
    #
    # You can choose any source type in any Amazon Web Services Region for
    # either accounts that are part of a trusted organization or standalone
    # accounts. At least one of the three dimensions is a mandatory input to
    # this API. However, you can supply any combination of the three
    # dimensions to this API.
    #
    # By default, a dimension refers to the entire set. This is overridden
    # when you supply any one of the inputs. For instance, when you do not
    # specify members, the API disables all Security Lake member accounts
    # for sources. Similarly, when you do not specify Regions, Security Lake
    # is disabled for all the Regions where Security Lake is available as a
    # service.
    #
    # When you don't provide a dimension, Security Lake assumes that the
    # missing dimension refers to the entire set. For example, if you don't
    # provide specific accounts, the API applies to the entire set of
    # accounts in your organization.
    #
    # @option params [Hash<String,Hash>] :disable_all_dimensions
    #   Removes the specific Amazon Web Services sources from specific
    #   accounts and specific Regions.
    #
    # @option params [Array<String>] :disable_single_dimension
    #   Removes all Amazon Web Services sources from specific accounts or
    #   Regions.
    #
    # @option params [Hash<String,Array>] :disable_two_dimensions
    #   Remove a specific Amazon Web Services source from specific accounts or
    #   Regions.
    #
    # @option params [required, Array<String>] :input_order
    #   This is a mandatory input. Specify the input order to disable
    #   dimensions in Security Lake, namely Region (Amazon Web Services Region
    #   code, source type, and member (account ID of a specific Amazon Web
    #   Services account).
    #
    # @return [Types::DeleteAwsLogSourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteAwsLogSourceResponse#failed #failed} => Array&lt;String&gt;
    #   * {Types::DeleteAwsLogSourceResponse#processing #processing} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_aws_log_source({
    #     disable_all_dimensions: {
    #       "String" => {
    #         "String" => ["String"],
    #       },
    #     },
    #     disable_single_dimension: ["SafeString"],
    #     disable_two_dimensions: {
    #       "String" => ["String"],
    #     },
    #     input_order: ["REGION"], # required, accepts REGION, SOURCE_TYPE, MEMBER
    #   })
    #
    # @example Response structure
    #
    #   resp.failed #=> Array
    #   resp.failed[0] #=> String
    #   resp.processing #=> Array
    #   resp.processing[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/DeleteAwsLogSource AWS API Documentation
    #
    # @overload delete_aws_log_source(params = {})
    # @param [Hash] params ({})
    def delete_aws_log_source(params = {}, options = {})
      req = build_request(:delete_aws_log_source, params)
      req.send_request(options)
    end

    # Removes a custom log source from Amazon Security Lake.
    #
    # @option params [required, String] :custom_source_name
    #   The custom source name for the custom log source.
    #
    # @return [Types::DeleteCustomLogSourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteCustomLogSourceResponse#custom_data_location #custom_data_location} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_custom_log_source({
    #     custom_source_name: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.custom_data_location #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/DeleteCustomLogSource AWS API Documentation
    #
    # @overload delete_custom_log_source(params = {})
    # @param [Hash] params ({})
    def delete_custom_log_source(params = {}, options = {})
      req = build_request(:delete_custom_log_source, params)
      req.send_request(options)
    end

    # When you delete Amazon Security Lake from your account, Security Lake
    # is disabled in all Amazon Web Services Regions. Also, this API
    # automatically takes steps to remove the account from Security Lake .
    #
    # This operation disables security data collection from sources, deletes
    # data stored, and stops making data accessible to subscribers. Security
    # Lake also deletes all the existing settings and resources that it
    # stores or maintains for your Amazon Web Services account in the
    # current Region, including security log and event data. The
    # `DeleteDatalake` operation does not delete the Amazon S3 bucket, which
    # is owned by your Amazon Web Services account. For more information,
    # see the [Amazon Security Lake User Guide][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/security-lake/latest/userguide/disable-security-lake.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/DeleteDatalake AWS API Documentation
    #
    # @overload delete_datalake(params = {})
    # @param [Hash] params ({})
    def delete_datalake(params = {}, options = {})
      req = build_request(:delete_datalake, params)
      req.send_request(options)
    end

    # Automatically deletes Amazon Security Lake to stop collecting security
    # data. When you delete Amazon Security Lake from your account, Security
    # Lake is disabled in all Regions. Also, this API automatically takes
    # steps to remove the account from Security Lake .
    #
    # This operation disables security data collection from sources, deletes
    # data stored, and stops making data accessible to subscribers. Security
    # Lake also deletes all the existing settings and resources that it
    # stores or maintains for your Amazon Web Services account in the
    # current Region, including security log and event data. The
    # `DeleteDatalake` operation does not delete the Amazon S3 bucket, which
    # is owned by your Amazon Web Services account. For more information,
    # see the [Amazon Security Lake User Guide][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/security-lake/latest/userguide/disable-security-lake.html
    #
    # @option params [required, Array<Types::AutoEnableNewRegionConfiguration>] :remove_from_configuration_for_new_accounts
    #   Delete Amazon Security Lake with the specified configuration settings
    #   to stop ingesting security data for new accounts in Security Lake.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_datalake_auto_enable({
    #     remove_from_configuration_for_new_accounts: [ # required
    #       {
    #         region: "us-east-1", # required, accepts us-east-1, us-west-2, eu-central-1, us-east-2, eu-west-1, ap-northeast-1, ap-southeast-2
    #         sources: ["ROUTE53"], # required, accepts ROUTE53, VPC_FLOW, CLOUD_TRAIL, SH_FINDINGS
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/DeleteDatalakeAutoEnable AWS API Documentation
    #
    # @overload delete_datalake_auto_enable(params = {})
    # @param [Hash] params ({})
    def delete_datalake_auto_enable(params = {}, options = {})
      req = build_request(:delete_datalake_auto_enable, params)
      req.send_request(options)
    end

    # Deletes the Amazon Security Lake delegated administrator account for
    # the organization. This API can only be called by the organization
    # management account. The organization management account cannot be the
    # delegated administrator account.
    #
    # @option params [required, String] :account
    #   The account ID the Security Lake delegated administrator.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_datalake_delegated_admin({
    #     account: "SafeString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/DeleteDatalakeDelegatedAdmin AWS API Documentation
    #
    # @overload delete_datalake_delegated_admin(params = {})
    # @param [Hash] params ({})
    def delete_datalake_delegated_admin(params = {}, options = {})
      req = build_request(:delete_datalake_delegated_admin, params)
      req.send_request(options)
    end

    # Deletes the specified notification subscription in Amazon Security
    # Lake for the organization you specify.
    #
    # @return [Types::DeleteDatalakeExceptionsSubscriptionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteDatalakeExceptionsSubscriptionResponse#status #status} => String
    #
    # @example Response structure
    #
    #   resp.status #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/DeleteDatalakeExceptionsSubscription AWS API Documentation
    #
    # @overload delete_datalake_exceptions_subscription(params = {})
    # @param [Hash] params ({})
    def delete_datalake_exceptions_subscription(params = {}, options = {})
      req = build_request(:delete_datalake_exceptions_subscription, params)
      req.send_request(options)
    end

    # Deletes the subscription permission for accounts that are already
    # enabled in Amazon Security Lake. You can delete a subscriber and
    # remove access to data in the current Amazon Web Services Region.
    #
    # @option params [required, String] :id
    #   A value created by Security Lake that uniquely identifies your
    #   `DeleteSubscriber` API request.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_subscriber({
    #     id: "String", # required
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
    # @option params [required, String] :subscription_id
    #   The ID of the Security Lake subscriber account.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_subscription_notification_configuration({
    #     subscription_id: "UUID", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/DeleteSubscriptionNotificationConfiguration AWS API Documentation
    #
    # @overload delete_subscription_notification_configuration(params = {})
    # @param [Hash] params ({})
    def delete_subscription_notification_configuration(params = {}, options = {})
      req = build_request(:delete_subscription_notification_configuration, params)
      req.send_request(options)
    end

    # Retrieves the Amazon Security Lake configuration object for the
    # specified Amazon Web Services account ID. You can use the
    # `GetDatalake` API to know whether Security Lake is enabled for the
    # current Region. This API does not take input parameters.
    #
    # @return [Types::GetDatalakeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDatalakeResponse#configurations #configurations} => Hash&lt;String,Types::LakeConfigurationResponse&gt;
    #
    # @example Response structure
    #
    #   resp.configurations #=> Hash
    #   resp.configurations["Region"].encryption_key #=> String
    #   resp.configurations["Region"].replication_destination_regions #=> Array
    #   resp.configurations["Region"].replication_destination_regions[0] #=> String, one of "us-east-1", "us-west-2", "eu-central-1", "us-east-2", "eu-west-1", "ap-northeast-1", "ap-southeast-2"
    #   resp.configurations["Region"].replication_role_arn #=> String
    #   resp.configurations["Region"].retention_settings #=> Array
    #   resp.configurations["Region"].retention_settings[0].retention_period #=> Integer
    #   resp.configurations["Region"].retention_settings[0].storage_class #=> String, one of "STANDARD_IA", "ONEZONE_IA", "INTELLIGENT_TIERING", "GLACIER_IR", "GLACIER", "DEEP_ARCHIVE", "EXPIRE"
    #   resp.configurations["Region"].s3_bucket_arn #=> String
    #   resp.configurations["Region"].status #=> String, one of "INITIALIZED", "PENDING", "COMPLETED", "FAILED"
    #   resp.configurations["Region"].tags_map #=> Hash
    #   resp.configurations["Region"].tags_map["String"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/GetDatalake AWS API Documentation
    #
    # @overload get_datalake(params = {})
    # @param [Hash] params ({})
    def get_datalake(params = {}, options = {})
      req = build_request(:get_datalake, params)
      req.send_request(options)
    end

    # Retrieves the configuration that will be automatically set up for
    # accounts added to the organization after the organization has
    # onboarded to Amazon Security Lake. This API does not take input
    # parameters.
    #
    # @return [Types::GetDatalakeAutoEnableResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDatalakeAutoEnableResponse#auto_enable_new_accounts #auto_enable_new_accounts} => Array&lt;Types::AutoEnableNewRegionConfiguration&gt;
    #
    # @example Response structure
    #
    #   resp.auto_enable_new_accounts #=> Array
    #   resp.auto_enable_new_accounts[0].region #=> String, one of "us-east-1", "us-west-2", "eu-central-1", "us-east-2", "eu-west-1", "ap-northeast-1", "ap-southeast-2"
    #   resp.auto_enable_new_accounts[0].sources #=> Array
    #   resp.auto_enable_new_accounts[0].sources[0] #=> String, one of "ROUTE53", "VPC_FLOW", "CLOUD_TRAIL", "SH_FINDINGS"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/GetDatalakeAutoEnable AWS API Documentation
    #
    # @overload get_datalake_auto_enable(params = {})
    # @param [Hash] params ({})
    def get_datalake_auto_enable(params = {}, options = {})
      req = build_request(:get_datalake_auto_enable, params)
      req.send_request(options)
    end

    # Retrieves the expiration period and time-to-live (TTL) for which the
    # exception message will remain. Exceptions are stored by default, for 2
    # weeks from when a record was created in Amazon Security Lake. This API
    # does not take input parameters.
    #
    # @return [Types::GetDatalakeExceptionsExpiryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDatalakeExceptionsExpiryResponse#exception_message_expiry #exception_message_expiry} => Integer
    #
    # @example Response structure
    #
    #   resp.exception_message_expiry #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/GetDatalakeExceptionsExpiry AWS API Documentation
    #
    # @overload get_datalake_exceptions_expiry(params = {})
    # @param [Hash] params ({})
    def get_datalake_exceptions_expiry(params = {}, options = {})
      req = build_request(:get_datalake_exceptions_expiry, params)
      req.send_request(options)
    end

    # Retrieves the details of exception notifications for the account in
    # Amazon Security Lake.
    #
    # @return [Types::GetDatalakeExceptionsSubscriptionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDatalakeExceptionsSubscriptionResponse#protocol_and_notification_endpoint #protocol_and_notification_endpoint} => Types::ProtocolAndNotificationEndpoint
    #
    # @example Response structure
    #
    #   resp.protocol_and_notification_endpoint.endpoint #=> String
    #   resp.protocol_and_notification_endpoint.protocol #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/GetDatalakeExceptionsSubscription AWS API Documentation
    #
    # @overload get_datalake_exceptions_subscription(params = {})
    # @param [Hash] params ({})
    def get_datalake_exceptions_subscription(params = {}, options = {})
      req = build_request(:get_datalake_exceptions_subscription, params)
      req.send_request(options)
    end

    # Retrieves a snapshot of the current Region, including whether Amazon
    # Security Lake is enabled for those accounts and which sources Security
    # Lake is collecting data from.
    #
    # @option params [Array<String>] :account_set
    #   The Amazon Web Services account ID for which a static snapshot of the
    #   current Amazon Web Services Region, including enabled accounts and log
    #   sources, is retrieved.
    #
    # @option params [Integer] :max_account_results
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
    # @return [Types::GetDatalakeStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDatalakeStatusResponse#account_sources_list #account_sources_list} => Array&lt;Types::AccountSources&gt;
    #   * {Types::GetDatalakeStatusResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_datalake_status({
    #     account_set: ["SafeString"],
    #     max_account_results: 1,
    #     next_token: "SafeString",
    #   })
    #
    # @example Response structure
    #
    #   resp.account_sources_list #=> Array
    #   resp.account_sources_list[0].account #=> String
    #   resp.account_sources_list[0].event_class #=> String, one of "ACCESS_ACTIVITY", "FILE_ACTIVITY", "KERNEL_ACTIVITY", "KERNEL_EXTENSION", "MEMORY_ACTIVITY", "MODULE_ACTIVITY", "PROCESS_ACTIVITY", "REGISTRY_KEY_ACTIVITY", "REGISTRY_VALUE_ACTIVITY", "RESOURCE_ACTIVITY", "SCHEDULED_JOB_ACTIVITY", "SECURITY_FINDING", "ACCOUNT_CHANGE", "AUTHENTICATION", "AUTHORIZATION", "ENTITY_MANAGEMENT_AUDIT", "DHCP_ACTIVITY", "NETWORK_ACTIVITY", "DNS_ACTIVITY", "FTP_ACTIVITY", "HTTP_ACTIVITY", "RDP_ACTIVITY", "SMB_ACTIVITY", "SSH_ACTIVITY", "CLOUD_API", "CONTAINER_LIFECYCLE", "DATABASE_LIFECYCLE", "CONFIG_STATE", "CLOUD_STORAGE", "INVENTORY_INFO", "RFB_ACTIVITY", "SMTP_ACTIVITY", "VIRTUAL_MACHINE_ACTIVITY"
    #   resp.account_sources_list[0].logs_status #=> Array
    #   resp.account_sources_list[0].logs_status[0].health_status #=> String, one of "ACTIVE", "DEACTIVATED", "PENDING"
    #   resp.account_sources_list[0].logs_status[0].path_to_logs #=> String
    #   resp.account_sources_list[0].source_type #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/GetDatalakeStatus AWS API Documentation
    #
    # @overload get_datalake_status(params = {})
    # @param [Hash] params ({})
    def get_datalake_status(params = {}, options = {})
      req = build_request(:get_datalake_status, params)
      req.send_request(options)
    end

    # Retrieves the subscription information for the specified subscription
    # ID. You can get information about a specific subscriber.
    #
    # @option params [required, String] :id
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
    #     id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.subscriber.access_types #=> Array
    #   resp.subscriber.access_types[0] #=> String, one of "LAKEFORMATION", "S3"
    #   resp.subscriber.account_id #=> String
    #   resp.subscriber.created_at #=> Time
    #   resp.subscriber.external_id #=> String
    #   resp.subscriber.role_arn #=> String
    #   resp.subscriber.s3_bucket_arn #=> String
    #   resp.subscriber.sns_arn #=> String
    #   resp.subscriber.source_types #=> Array
    #   resp.subscriber.source_types[0].aws_source_type #=> String, one of "ROUTE53", "VPC_FLOW", "CLOUD_TRAIL", "SH_FINDINGS"
    #   resp.subscriber.source_types[0].custom_source_type #=> String
    #   resp.subscriber.subscriber_description #=> String
    #   resp.subscriber.subscriber_name #=> String
    #   resp.subscriber.subscription_endpoint #=> String
    #   resp.subscriber.subscription_id #=> String
    #   resp.subscriber.subscription_protocol #=> String, one of "HTTPS", "SQS"
    #   resp.subscriber.subscription_status #=> String, one of "ACTIVE", "DEACTIVATED", "PENDING", "READY"
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
    # @option params [Integer] :max_failures
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
    # @option params [Array<String>] :region_set
    #   List the Amazon Web Services Regions from which exceptions are
    #   retrieved.
    #
    # @return [Types::ListDatalakeExceptionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDatalakeExceptionsResponse#next_token #next_token} => String
    #   * {Types::ListDatalakeExceptionsResponse#non_retryable_failures #non_retryable_failures} => Array&lt;Types::FailuresResponse&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_datalake_exceptions({
    #     max_failures: 1,
    #     next_token: "SafeString",
    #     region_set: ["us-east-1"], # accepts us-east-1, us-west-2, eu-central-1, us-east-2, eu-west-1, ap-northeast-1, ap-southeast-2
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.non_retryable_failures #=> Array
    #   resp.non_retryable_failures[0].failures #=> Array
    #   resp.non_retryable_failures[0].failures[0].exception_message #=> String
    #   resp.non_retryable_failures[0].failures[0].remediation #=> String
    #   resp.non_retryable_failures[0].failures[0].timestamp #=> Time
    #   resp.non_retryable_failures[0].region #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/ListDatalakeExceptions AWS API Documentation
    #
    # @overload list_datalake_exceptions(params = {})
    # @param [Hash] params ({})
    def list_datalake_exceptions(params = {}, options = {})
      req = build_request(:list_datalake_exceptions, params)
      req.send_request(options)
    end

    # Retrieves the log sources in the current Amazon Web Services Region.
    #
    # @option params [Array<String>] :input_order
    #   Lists the log sources in input order, namely Region, source type, and
    #   member account.
    #
    # @option params [Hash<String,Hash>] :list_all_dimensions
    #   List the view of log sources for enabled Amazon Security Lake accounts
    #   for specific Amazon Web Services sources from specific accounts and
    #   specific Regions.
    #
    # @option params [Array<String>] :list_single_dimension
    #   List the view of log sources for enabled Security Lake accounts for
    #   all Amazon Web Services sources from specific accounts or specific
    #   Regions.
    #
    # @option params [Hash<String,Array>] :list_two_dimensions
    #   Lists the view of log sources for enabled Security Lake accounts for
    #   specific Amazon Web Services sources from specific accounts or
    #   specific Regions.
    #
    # @option params [Integer] :max_results
    #   The maximum number of accounts for which the log sources are
    #   displayed.
    #
    # @option params [String] :next_token
    #   If nextToken is returned, there are more results available. You can
    #   repeat the call using the returned token to retrieve the next page.
    #
    # @return [Types::ListLogSourcesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListLogSourcesResponse#next_token #next_token} => String
    #   * {Types::ListLogSourcesResponse#region_source_types_accounts_list #region_source_types_accounts_list} => Array&lt;Hash&lt;String,Hash&lt;String,Array&lt;String&gt;&gt;&gt;&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_log_sources({
    #     input_order: ["REGION"], # accepts REGION, SOURCE_TYPE, MEMBER
    #     list_all_dimensions: {
    #       "String" => {
    #         "String" => ["String"],
    #       },
    #     },
    #     list_single_dimension: ["SafeString"],
    #     list_two_dimensions: {
    #       "String" => ["String"],
    #     },
    #     max_results: 1,
    #     next_token: "SafeString",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.region_source_types_accounts_list #=> Array
    #   resp.region_source_types_accounts_list[0] #=> Hash
    #   resp.region_source_types_accounts_list[0]["String"] #=> Hash
    #   resp.region_source_types_accounts_list[0]["String"]["String"] #=> Array
    #   resp.region_source_types_accounts_list[0]["String"]["String"][0] #=> String
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
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.subscribers #=> Array
    #   resp.subscribers[0].access_types #=> Array
    #   resp.subscribers[0].access_types[0] #=> String, one of "LAKEFORMATION", "S3"
    #   resp.subscribers[0].account_id #=> String
    #   resp.subscribers[0].created_at #=> Time
    #   resp.subscribers[0].external_id #=> String
    #   resp.subscribers[0].role_arn #=> String
    #   resp.subscribers[0].s3_bucket_arn #=> String
    #   resp.subscribers[0].sns_arn #=> String
    #   resp.subscribers[0].source_types #=> Array
    #   resp.subscribers[0].source_types[0].aws_source_type #=> String, one of "ROUTE53", "VPC_FLOW", "CLOUD_TRAIL", "SH_FINDINGS"
    #   resp.subscribers[0].source_types[0].custom_source_type #=> String
    #   resp.subscribers[0].subscriber_description #=> String
    #   resp.subscribers[0].subscriber_name #=> String
    #   resp.subscribers[0].subscription_endpoint #=> String
    #   resp.subscribers[0].subscription_id #=> String
    #   resp.subscribers[0].subscription_protocol #=> String, one of "HTTPS", "SQS"
    #   resp.subscribers[0].subscription_status #=> String, one of "ACTIVE", "DEACTIVATED", "PENDING", "READY"
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

    # Specifies where to store your security data and for how long. You can
    # add a rollup Region to consolidate data from multiple Amazon Web
    # Services Regions.
    #
    # @option params [required, Hash<String,Types::LakeConfigurationRequest>] :configurations
    #   Specify the Region or Regions that will contribute data to the rollup
    #   region.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_datalake({
    #     configurations: { # required
    #       "us-east-1" => {
    #         encryption_key: "String",
    #         replication_destination_regions: ["us-east-1"], # accepts us-east-1, us-west-2, eu-central-1, us-east-2, eu-west-1, ap-northeast-1, ap-southeast-2
    #         replication_role_arn: "RoleArn",
    #         retention_settings: [
    #           {
    #             retention_period: 1,
    #             storage_class: "STANDARD_IA", # accepts STANDARD_IA, ONEZONE_IA, INTELLIGENT_TIERING, GLACIER_IR, GLACIER, DEEP_ARCHIVE, EXPIRE
    #           },
    #         ],
    #         tags_map: {
    #           "String" => "String",
    #         },
    #       },
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/UpdateDatalake AWS API Documentation
    #
    # @overload update_datalake(params = {})
    # @param [Hash] params ({})
    def update_datalake(params = {}, options = {})
      req = build_request(:update_datalake, params)
      req.send_request(options)
    end

    # Update the expiration period for the exception message to your
    # preferred time, and control the time-to-live (TTL) for the exception
    # message to remain. Exceptions are stored by default for 2 weeks from
    # when a record was created in Amazon Security Lake.
    #
    # @option params [required, Integer] :exception_message_expiry
    #   The time-to-live (TTL) for the exception message to remain.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_datalake_exceptions_expiry({
    #     exception_message_expiry: 1, # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/UpdateDatalakeExceptionsExpiry AWS API Documentation
    #
    # @overload update_datalake_exceptions_expiry(params = {})
    # @param [Hash] params ({})
    def update_datalake_exceptions_expiry(params = {}, options = {})
      req = build_request(:update_datalake_exceptions_expiry, params)
      req.send_request(options)
    end

    # Updates the specified notification subscription in Amazon Security
    # Lake for the organization you specify.
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
    #   resp = client.update_datalake_exceptions_subscription({
    #     notification_endpoint: "SafeString", # required
    #     subscription_protocol: "HTTP", # required, accepts HTTP, HTTPS, EMAIL, EMAIL_JSON, SMS, SQS, LAMBDA, APP, FIREHOSE
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/UpdateDatalakeExceptionsSubscription AWS API Documentation
    #
    # @overload update_datalake_exceptions_subscription(params = {})
    # @param [Hash] params ({})
    def update_datalake_exceptions_subscription(params = {}, options = {})
      req = build_request(:update_datalake_exceptions_subscription, params)
      req.send_request(options)
    end

    # Updates an existing subscription for the given Amazon Security Lake
    # account ID. You can update a subscriber by changing the sources that
    # the subscriber consumes data from.
    #
    # @option params [String] :external_id
    #   The external ID of the Security Lake account.
    #
    # @option params [required, String] :id
    #   A value created by Security Lake that uniquely identifies your
    #   subscription.
    #
    # @option params [required, Array<Types::SourceType>] :source_types
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
    #     external_id: "SafeString",
    #     id: "String", # required
    #     source_types: [ # required
    #       {
    #         aws_source_type: "ROUTE53", # accepts ROUTE53, VPC_FLOW, CLOUD_TRAIL, SH_FINDINGS
    #         custom_source_type: "CustomSourceType",
    #       },
    #     ],
    #     subscriber_description: "DescriptionString",
    #     subscriber_name: "UpdateSubscriberRequestSubscriberNameString",
    #   })
    #
    # @example Response structure
    #
    #   resp.subscriber.access_types #=> Array
    #   resp.subscriber.access_types[0] #=> String, one of "LAKEFORMATION", "S3"
    #   resp.subscriber.account_id #=> String
    #   resp.subscriber.created_at #=> Time
    #   resp.subscriber.external_id #=> String
    #   resp.subscriber.role_arn #=> String
    #   resp.subscriber.s3_bucket_arn #=> String
    #   resp.subscriber.sns_arn #=> String
    #   resp.subscriber.source_types #=> Array
    #   resp.subscriber.source_types[0].aws_source_type #=> String, one of "ROUTE53", "VPC_FLOW", "CLOUD_TRAIL", "SH_FINDINGS"
    #   resp.subscriber.source_types[0].custom_source_type #=> String
    #   resp.subscriber.subscriber_description #=> String
    #   resp.subscriber.subscriber_name #=> String
    #   resp.subscriber.subscription_endpoint #=> String
    #   resp.subscriber.subscription_id #=> String
    #   resp.subscriber.subscription_protocol #=> String, one of "HTTPS", "SQS"
    #   resp.subscriber.subscription_status #=> String, one of "ACTIVE", "DEACTIVATED", "PENDING", "READY"
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

    # Creates a new subscription notification or adds the existing
    # subscription notification setting for the specified subscription ID.
    #
    # @option params [Boolean] :create_sqs
    #   Create a new subscription notification for the specified subscription
    #   ID in Amazon Security Lake.
    #
    # @option params [String] :https_api_key_name
    #   The key name for the subscription notification.
    #
    # @option params [String] :https_api_key_value
    #   The key value for the subscription notification.
    #
    # @option params [String] :https_method
    #   The HTTPS method used for the subscription notification.
    #
    # @option params [String] :role_arn
    #   The Amazon Resource Name (ARN) specifying the role of the subscriber.
    #
    # @option params [String] :subscription_endpoint
    #   The subscription endpoint in Security Lake.
    #
    # @option params [required, String] :subscription_id
    #   The subscription ID for which the subscription notification is
    #   specified.
    #
    # @return [Types::UpdateSubscriptionNotificationConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateSubscriptionNotificationConfigurationResponse#queue_arn #queue_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_subscription_notification_configuration({
    #     create_sqs: false,
    #     https_api_key_name: "String",
    #     https_api_key_value: "String",
    #     https_method: "POST", # accepts POST, PUT
    #     role_arn: "RoleArn",
    #     subscription_endpoint: "UpdateSubscriptionNotificationConfigurationRequestSubscriptionEndpointString",
    #     subscription_id: "UUID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.queue_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/UpdateSubscriptionNotificationConfiguration AWS API Documentation
    #
    # @overload update_subscription_notification_configuration(params = {})
    # @param [Hash] params ({})
    def update_subscription_notification_configuration(params = {}, options = {})
      req = build_request(:update_subscription_notification_configuration, params)
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
