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

Aws::Plugins::GlobalConfiguration.add_identifier(:appconfig)

module Aws::AppConfig
  # An API client for AppConfig.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::AppConfig::Client.new(
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

    @identifier = :appconfig

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
    add_plugin(Aws::AppConfig::Plugins::Endpoints)

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
    #   @option options [Aws::AppConfig::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::AppConfig::EndpointParameters`
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

    # Creates an application. In AppConfig, an application is simply an
    # organizational construct like a folder. This organizational construct
    # has a relationship with some unit of executable code. For example, you
    # could create an application called MyMobileApp to organize and manage
    # configuration data for a mobile application installed by your users.
    #
    # @option params [required, String] :name
    #   A name for the application.
    #
    # @option params [String] :description
    #   A description of the application.
    #
    # @option params [Hash<String,String>] :tags
    #   Metadata to assign to the application. Tags help organize and
    #   categorize your AppConfig resources. Each tag consists of a key and an
    #   optional value, both of which you define.
    #
    # @return [Types::Application] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Application#id #id} => String
    #   * {Types::Application#name #name} => String
    #   * {Types::Application#description #description} => String
    #
    #
    # @example Example: To create an application
    #
    #   # The following create-application example creates an application in AWS AppConfig.
    #
    #   resp = client.create_application({
    #     description: "An application used for creating an example.", 
    #     name: "example-application", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     description: "An application used for creating an example.", 
    #     id: "339ohji", 
    #     name: "example-application", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_application({
    #     name: "Name", # required
    #     description: "Description",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/CreateApplication AWS API Documentation
    #
    # @overload create_application(params = {})
    # @param [Hash] params ({})
    def create_application(params = {}, options = {})
      req = build_request(:create_application, params)
      req.send_request(options)
    end

    # Creates a configuration profile, which is information that enables
    # AppConfig to access the configuration source. Valid configuration
    # sources include the following:
    #
    # * Configuration data in YAML, JSON, and other formats stored in the
    #   AppConfig hosted configuration store
    #
    # * Configuration data stored as objects in an Amazon Simple Storage
    #   Service (Amazon S3) bucket
    #
    # * Pipelines stored in CodePipeline
    #
    # * Secrets stored in Secrets Manager
    #
    # * Standard and secure string parameters stored in Amazon Web Services
    #   Systems Manager Parameter Store
    #
    # * Configuration data in SSM documents stored in the Systems Manager
    #   document store
    #
    # A configuration profile includes the following information:
    #
    # * The URI location of the configuration data.
    #
    # * The Identity and Access Management (IAM) role that provides access
    #   to the configuration data.
    #
    # * A validator for the configuration data. Available validators include
    #   either a JSON Schema or an Amazon Web Services Lambda function.
    #
    # For more information, see [Create a Configuration and a Configuration
    # Profile][1] in the *AppConfig User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/appconfig/latest/userguide/appconfig-creating-configuration-and-profile.html
    #
    # @option params [required, String] :application_id
    #   The application ID.
    #
    # @option params [required, String] :name
    #   A name for the configuration profile.
    #
    # @option params [String] :description
    #   A description of the configuration profile.
    #
    # @option params [required, String] :location_uri
    #   A URI to locate the configuration. You can specify the following:
    #
    #   * For the AppConfig hosted configuration store and for feature flags,
    #     specify `hosted`.
    #
    #   * For an Amazon Web Services Systems Manager Parameter Store
    #     parameter, specify either the parameter name in the format
    #     `ssm-parameter://<parameter name>` or the ARN.
    #
    #   * For an Secrets Manager secret, specify the URI in the following
    #     format: `secrets-manager`://&lt;secret name&gt;.
    #
    #   * For an Amazon S3 object, specify the URI in the following format:
    #     `s3://<bucket>/<objectKey> `. Here is an example:
    #     `s3://my-bucket/my-app/us-east-1/my-config.json`
    #
    #   * For an SSM document, specify either the document name in the format
    #     `ssm-document://<document name>` or the Amazon Resource Name (ARN).
    #
    # @option params [String] :retrieval_role_arn
    #   The ARN of an IAM role with permission to access the configuration at
    #   the specified `LocationUri`.
    #
    #   A retrieval role ARN is not required for configurations stored in the
    #   AppConfig hosted configuration store. It is required for all other
    #   sources that store your configuration.
    #
    # @option params [Array<Types::Validator>] :validators
    #   A list of methods for validating the configuration.
    #
    # @option params [Hash<String,String>] :tags
    #   Metadata to assign to the configuration profile. Tags help organize
    #   and categorize your AppConfig resources. Each tag consists of a key
    #   and an optional value, both of which you define.
    #
    # @option params [String] :type
    #   The type of configurations contained in the profile. AppConfig
    #   supports `feature flags` and `freeform` configurations. We recommend
    #   you create feature flag configurations to enable or disable new
    #   features and freeform configurations to distribute configurations to
    #   an application. When calling this API, enter one of the following
    #   values for `Type`:
    #
    #   `AWS.AppConfig.FeatureFlags`
    #
    #   `AWS.Freeform`
    #
    # @return [Types::ConfigurationProfile] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ConfigurationProfile#application_id #application_id} => String
    #   * {Types::ConfigurationProfile#id #id} => String
    #   * {Types::ConfigurationProfile#name #name} => String
    #   * {Types::ConfigurationProfile#description #description} => String
    #   * {Types::ConfigurationProfile#location_uri #location_uri} => String
    #   * {Types::ConfigurationProfile#retrieval_role_arn #retrieval_role_arn} => String
    #   * {Types::ConfigurationProfile#validators #validators} => Array&lt;Types::Validator&gt;
    #   * {Types::ConfigurationProfile#type #type} => String
    #
    #
    # @example Example: To create a configuration profile
    #
    #   # The following create-configuration-profile example creates a configuration profile using a configuration stored in
    #   # Parameter Store, a capability of Systems Manager.
    #
    #   resp = client.create_configuration_profile({
    #     application_id: "339ohji", 
    #     location_uri: "ssm-parameter://Example-Parameter", 
    #     name: "Example-Configuration-Profile", 
    #     retrieval_role_arn: "arn:aws:iam::111122223333:role/Example-App-Config-Role", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     application_id: "339ohji", 
    #     id: "ur8hx2f", 
    #     location_uri: "ssm-parameter://Example-Parameter", 
    #     name: "Example-Configuration-Profile", 
    #     retrieval_role_arn: "arn:aws:iam::111122223333:role/Example-App-Config-Role", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_configuration_profile({
    #     application_id: "Id", # required
    #     name: "LongName", # required
    #     description: "Description",
    #     location_uri: "Uri", # required
    #     retrieval_role_arn: "RoleArn",
    #     validators: [
    #       {
    #         type: "JSON_SCHEMA", # required, accepts JSON_SCHEMA, LAMBDA
    #         content: "StringWithLengthBetween0And32768", # required
    #       },
    #     ],
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     type: "ConfigurationProfileType",
    #   })
    #
    # @example Response structure
    #
    #   resp.application_id #=> String
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.location_uri #=> String
    #   resp.retrieval_role_arn #=> String
    #   resp.validators #=> Array
    #   resp.validators[0].type #=> String, one of "JSON_SCHEMA", "LAMBDA"
    #   resp.validators[0].content #=> String
    #   resp.type #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/CreateConfigurationProfile AWS API Documentation
    #
    # @overload create_configuration_profile(params = {})
    # @param [Hash] params ({})
    def create_configuration_profile(params = {}, options = {})
      req = build_request(:create_configuration_profile, params)
      req.send_request(options)
    end

    # Creates a deployment strategy that defines important criteria for
    # rolling out your configuration to the designated targets. A deployment
    # strategy includes the overall duration required, a percentage of
    # targets to receive the deployment during each interval, an algorithm
    # that defines how percentage grows, and bake time.
    #
    # @option params [required, String] :name
    #   A name for the deployment strategy.
    #
    # @option params [String] :description
    #   A description of the deployment strategy.
    #
    # @option params [required, Integer] :deployment_duration_in_minutes
    #   Total amount of time for a deployment to last.
    #
    # @option params [Integer] :final_bake_time_in_minutes
    #   Specifies the amount of time AppConfig monitors for Amazon CloudWatch
    #   alarms after the configuration has been deployed to 100% of its
    #   targets, before considering the deployment to be complete. If an alarm
    #   is triggered during this time, AppConfig rolls back the deployment.
    #   You must configure permissions for AppConfig to roll back based on
    #   CloudWatch alarms. For more information, see [Configuring permissions
    #   for rollback based on Amazon CloudWatch alarms][1] in the *AppConfig
    #   User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/appconfig/latest/userguide/getting-started-with-appconfig-cloudwatch-alarms-permissions.html
    #
    # @option params [required, Float] :growth_factor
    #   The percentage of targets to receive a deployed configuration during
    #   each interval.
    #
    # @option params [String] :growth_type
    #   The algorithm used to define how percentage grows over time. AppConfig
    #   supports the following growth types:
    #
    #   **Linear**: For this type, AppConfig processes the deployment by
    #   dividing the total number of targets by the value specified for `Step
    #   percentage`. For example, a linear deployment that uses a `Step
    #   percentage` of 10 deploys the configuration to 10 percent of the
    #   hosts. After those deployments are complete, the system deploys the
    #   configuration to the next 10 percent. This continues until 100% of the
    #   targets have successfully received the configuration.
    #
    #   **Exponential**: For this type, AppConfig processes the deployment
    #   exponentially using the following formula: `G*(2^N)`. In this formula,
    #   `G` is the growth factor specified by the user and `N` is the number
    #   of steps until the configuration is deployed to all targets. For
    #   example, if you specify a growth factor of 2, then the system rolls
    #   out the configuration as follows:
    #
    #   `2*(2^0)`
    #
    #   `2*(2^1)`
    #
    #   `2*(2^2)`
    #
    #   Expressed numerically, the deployment rolls out as follows: 2% of the
    #   targets, 4% of the targets, 8% of the targets, and continues until the
    #   configuration has been deployed to all targets.
    #
    # @option params [String] :replicate_to
    #   Save the deployment strategy to a Systems Manager (SSM) document.
    #
    # @option params [Hash<String,String>] :tags
    #   Metadata to assign to the deployment strategy. Tags help organize and
    #   categorize your AppConfig resources. Each tag consists of a key and an
    #   optional value, both of which you define.
    #
    # @return [Types::DeploymentStrategy] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeploymentStrategy#id #id} => String
    #   * {Types::DeploymentStrategy#name #name} => String
    #   * {Types::DeploymentStrategy#description #description} => String
    #   * {Types::DeploymentStrategy#deployment_duration_in_minutes #deployment_duration_in_minutes} => Integer
    #   * {Types::DeploymentStrategy#growth_type #growth_type} => String
    #   * {Types::DeploymentStrategy#growth_factor #growth_factor} => Float
    #   * {Types::DeploymentStrategy#final_bake_time_in_minutes #final_bake_time_in_minutes} => Integer
    #   * {Types::DeploymentStrategy#replicate_to #replicate_to} => String
    #
    #
    # @example Example: To create a deployment strategy
    #
    #   # The following create-deployment-strategy example creates a deployment strategy called Example-Deployment that takes 15
    #   # minutes and deploys the configuration to 25% of the application at a time. The strategy is also copied to an SSM
    #   # Document.
    #
    #   resp = client.create_deployment_strategy({
    #     deployment_duration_in_minutes: 15, 
    #     growth_factor: 25, 
    #     name: "Example-Deployment", 
    #     replicate_to: "SSM_DOCUMENT", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     deployment_duration_in_minutes: 15, 
    #     final_bake_time_in_minutes: 0, 
    #     growth_factor: 25, 
    #     growth_type: "LINEAR", 
    #     id: "1225qzk", 
    #     name: "Example-Deployment", 
    #     replicate_to: "SSM_DOCUMENT", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_deployment_strategy({
    #     name: "Name", # required
    #     description: "Description",
    #     deployment_duration_in_minutes: 1, # required
    #     final_bake_time_in_minutes: 1,
    #     growth_factor: 1.0, # required
    #     growth_type: "LINEAR", # accepts LINEAR, EXPONENTIAL
    #     replicate_to: "NONE", # accepts NONE, SSM_DOCUMENT
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.deployment_duration_in_minutes #=> Integer
    #   resp.growth_type #=> String, one of "LINEAR", "EXPONENTIAL"
    #   resp.growth_factor #=> Float
    #   resp.final_bake_time_in_minutes #=> Integer
    #   resp.replicate_to #=> String, one of "NONE", "SSM_DOCUMENT"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/CreateDeploymentStrategy AWS API Documentation
    #
    # @overload create_deployment_strategy(params = {})
    # @param [Hash] params ({})
    def create_deployment_strategy(params = {}, options = {})
      req = build_request(:create_deployment_strategy, params)
      req.send_request(options)
    end

    # Creates an environment. For each application, you define one or more
    # environments. An environment is a deployment group of AppConfig
    # targets, such as applications in a `Beta` or `Production` environment.
    # You can also define environments for application subcomponents such as
    # the `Web`, `Mobile` and `Back-end` components for your application.
    # You can configure Amazon CloudWatch alarms for each environment. The
    # system monitors alarms during a configuration deployment. If an alarm
    # is triggered, the system rolls back the configuration.
    #
    # @option params [required, String] :application_id
    #   The application ID.
    #
    # @option params [required, String] :name
    #   A name for the environment.
    #
    # @option params [String] :description
    #   A description of the environment.
    #
    # @option params [Array<Types::Monitor>] :monitors
    #   Amazon CloudWatch alarms to monitor during the deployment process.
    #
    # @option params [Hash<String,String>] :tags
    #   Metadata to assign to the environment. Tags help organize and
    #   categorize your AppConfig resources. Each tag consists of a key and an
    #   optional value, both of which you define.
    #
    # @return [Types::Environment] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Environment#application_id #application_id} => String
    #   * {Types::Environment#id #id} => String
    #   * {Types::Environment#name #name} => String
    #   * {Types::Environment#description #description} => String
    #   * {Types::Environment#state #state} => String
    #   * {Types::Environment#monitors #monitors} => Array&lt;Types::Monitor&gt;
    #
    #
    # @example Example: To create an environment
    #
    #   # The following create-environment example creates an AWS AppConfig environment named Example-Environment using the
    #   # application you created using create-application
    #
    #   resp = client.create_environment({
    #     application_id: "339ohji", 
    #     name: "Example-Environment", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     application_id: "339ohji", 
    #     id: "54j1r29", 
    #     name: "Example-Environment", 
    #     state: "READY_FOR_DEPLOYMENT", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_environment({
    #     application_id: "Id", # required
    #     name: "Name", # required
    #     description: "Description",
    #     monitors: [
    #       {
    #         alarm_arn: "StringWithLengthBetween1And2048", # required
    #         alarm_role_arn: "RoleArn",
    #       },
    #     ],
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.application_id #=> String
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.state #=> String, one of "READY_FOR_DEPLOYMENT", "DEPLOYING", "ROLLING_BACK", "ROLLED_BACK"
    #   resp.monitors #=> Array
    #   resp.monitors[0].alarm_arn #=> String
    #   resp.monitors[0].alarm_role_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/CreateEnvironment AWS API Documentation
    #
    # @overload create_environment(params = {})
    # @param [Hash] params ({})
    def create_environment(params = {}, options = {})
      req = build_request(:create_environment, params)
      req.send_request(options)
    end

    # Creates an AppConfig extension. An extension augments your ability to
    # inject logic or behavior at different points during the AppConfig
    # workflow of creating or deploying a configuration.
    #
    # You can create your own extensions or use the Amazon Web Services
    # authored extensions provided by AppConfig. For most use cases, to
    # create your own extension, you must create an Lambda function to
    # perform any computation and processing defined in the extension. For
    # more information about extensions, see [Working with AppConfig
    # extensions][1] in the *AppConfig User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/appconfig/latest/userguide/working-with-appconfig-extensions.html
    #
    # @option params [required, String] :name
    #   A name for the extension. Each extension name in your account must be
    #   unique. Extension versions use the same name.
    #
    # @option params [String] :description
    #   Information about the extension.
    #
    # @option params [required, Hash<String,Array>] :actions
    #   The actions defined in the extension.
    #
    # @option params [Hash<String,Types::Parameter>] :parameters
    #   The parameters accepted by the extension. You specify parameter values
    #   when you associate the extension to an AppConfig resource by using the
    #   `CreateExtensionAssociation` API action. For Lambda extension actions,
    #   these parameters are included in the Lambda request object.
    #
    # @option params [Hash<String,String>] :tags
    #   Adds one or more tags for the specified extension. Tags are metadata
    #   that help you categorize resources in different ways, for example, by
    #   purpose, owner, or environment. Each tag consists of a key and an
    #   optional value, both of which you define.
    #
    # @option params [Integer] :latest_version_number
    #   You can omit this field when you create an extension. When you create
    #   a new version, specify the most recent current version number. For
    #   example, you create version 3, enter 2 for this field.
    #
    # @return [Types::Extension] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Extension#id #id} => String
    #   * {Types::Extension#name #name} => String
    #   * {Types::Extension#version_number #version_number} => Integer
    #   * {Types::Extension#arn #arn} => String
    #   * {Types::Extension#description #description} => String
    #   * {Types::Extension#actions #actions} => Hash&lt;String,Array&lt;Types::Action&gt;&gt;
    #   * {Types::Extension#parameters #parameters} => Hash&lt;String,Types::Parameter&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_extension({
    #     name: "Name", # required
    #     description: "Description",
    #     actions: { # required
    #       "PRE_CREATE_HOSTED_CONFIGURATION_VERSION" => [
    #         {
    #           name: "Name",
    #           description: "Description",
    #           uri: "Uri",
    #           role_arn: "Arn",
    #         },
    #       ],
    #     },
    #     parameters: {
    #       "Name" => {
    #         description: "Description",
    #         required: false,
    #       },
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     latest_version_number: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.version_number #=> Integer
    #   resp.arn #=> String
    #   resp.description #=> String
    #   resp.actions #=> Hash
    #   resp.actions["ActionPoint"] #=> Array
    #   resp.actions["ActionPoint"][0].name #=> String
    #   resp.actions["ActionPoint"][0].description #=> String
    #   resp.actions["ActionPoint"][0].uri #=> String
    #   resp.actions["ActionPoint"][0].role_arn #=> String
    #   resp.parameters #=> Hash
    #   resp.parameters["Name"].description #=> String
    #   resp.parameters["Name"].required #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/CreateExtension AWS API Documentation
    #
    # @overload create_extension(params = {})
    # @param [Hash] params ({})
    def create_extension(params = {}, options = {})
      req = build_request(:create_extension, params)
      req.send_request(options)
    end

    # When you create an extension or configure an Amazon Web Services
    # authored extension, you associate the extension with an AppConfig
    # application, environment, or configuration profile. For example, you
    # can choose to run the `AppConfig deployment events to Amazon SNS`
    # Amazon Web Services authored extension and receive notifications on an
    # Amazon SNS topic anytime a configuration deployment is started for a
    # specific application. Defining which extension to associate with an
    # AppConfig resource is called an *extension association*. An extension
    # association is a specified relationship between an extension and an
    # AppConfig resource, such as an application or a configuration profile.
    # For more information about extensions and associations, see [Working
    # with AppConfig extensions][1] in the *AppConfig User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/appconfig/latest/userguide/working-with-appconfig-extensions.html
    #
    # @option params [required, String] :extension_identifier
    #   The name, the ID, or the Amazon Resource Name (ARN) of the extension.
    #
    # @option params [Integer] :extension_version_number
    #   The version number of the extension. If not specified, AppConfig uses
    #   the maximum version of the extension.
    #
    # @option params [required, String] :resource_identifier
    #   The ARN of an application, configuration profile, or environment.
    #
    # @option params [Hash<String,String>] :parameters
    #   The parameter names and values defined in the extensions. Extension
    #   parameters marked `Required` must be entered for this field.
    #
    # @option params [Hash<String,String>] :tags
    #   Adds one or more tags for the specified extension association. Tags
    #   are metadata that help you categorize resources in different ways, for
    #   example, by purpose, owner, or environment. Each tag consists of a key
    #   and an optional value, both of which you define.
    #
    # @return [Types::ExtensionAssociation] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ExtensionAssociation#id #id} => String
    #   * {Types::ExtensionAssociation#extension_arn #extension_arn} => String
    #   * {Types::ExtensionAssociation#resource_arn #resource_arn} => String
    #   * {Types::ExtensionAssociation#arn #arn} => String
    #   * {Types::ExtensionAssociation#parameters #parameters} => Hash&lt;String,String&gt;
    #   * {Types::ExtensionAssociation#extension_version_number #extension_version_number} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_extension_association({
    #     extension_identifier: "Identifier", # required
    #     extension_version_number: 1,
    #     resource_identifier: "Identifier", # required
    #     parameters: {
    #       "Name" => "StringWithLengthBetween1And2048",
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.extension_arn #=> String
    #   resp.resource_arn #=> String
    #   resp.arn #=> String
    #   resp.parameters #=> Hash
    #   resp.parameters["Name"] #=> String
    #   resp.extension_version_number #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/CreateExtensionAssociation AWS API Documentation
    #
    # @overload create_extension_association(params = {})
    # @param [Hash] params ({})
    def create_extension_association(params = {}, options = {})
      req = build_request(:create_extension_association, params)
      req.send_request(options)
    end

    # Creates a new configuration in the AppConfig hosted configuration
    # store.
    #
    # @option params [required, String] :application_id
    #   The application ID.
    #
    # @option params [required, String] :configuration_profile_id
    #   The configuration profile ID.
    #
    # @option params [String] :description
    #   A description of the configuration.
    #
    # @option params [required, String, StringIO, File] :content
    #   The content of the configuration or the configuration data.
    #
    # @option params [required, String] :content_type
    #   A standard MIME type describing the format of the configuration
    #   content. For more information, see [Content-Type][1].
    #
    #
    #
    #   [1]: https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.17
    #
    # @option params [Integer] :latest_version_number
    #   An optional locking token used to prevent race conditions from
    #   overwriting configuration updates when creating a new version. To
    #   ensure your data is not overwritten when creating multiple hosted
    #   configuration versions in rapid succession, specify the version number
    #   of the latest hosted configuration version.
    #
    # @option params [String] :version_label
    #   An optional, user-defined label for the AppConfig hosted configuration
    #   version. This value must contain at least one non-numeric character.
    #   For example, "v2.2.0".
    #
    # @return [Types::HostedConfigurationVersion] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::HostedConfigurationVersion#application_id #application_id} => String
    #   * {Types::HostedConfigurationVersion#configuration_profile_id #configuration_profile_id} => String
    #   * {Types::HostedConfigurationVersion#version_number #version_number} => Integer
    #   * {Types::HostedConfigurationVersion#description #description} => String
    #   * {Types::HostedConfigurationVersion#content #content} => String
    #   * {Types::HostedConfigurationVersion#content_type #content_type} => String
    #   * {Types::HostedConfigurationVersion#version_label #version_label} => String
    #
    #
    # @example Example: To create a hosted configuration version
    #
    #   # The following create-hosted-configuration-version example creates a new configuration in the AWS AppConfig configuration
    #   # store.
    #
    #   resp = client.create_hosted_configuration_version({
    #     application_id: "339ohji", 
    #     configuration_profile_id: "ur8hx2f", 
    #     content: "eyAiTmFtZSI6ICJFeGFtcGxlQXBwbGljYXRpb24iLCAiSWQiOiBFeGFtcGxlSUQsICJSYW5rIjogNyB9", 
    #     content_type: "text", 
    #     latest_version_number: 1, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     application_id: "339ohji", 
    #     configuration_profile_id: "ur8hx2f", 
    #     content_type: "text", 
    #     version_number: 1, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_hosted_configuration_version({
    #     application_id: "Id", # required
    #     configuration_profile_id: "Id", # required
    #     description: "Description",
    #     content: "data", # required
    #     content_type: "StringWithLengthBetween1And255", # required
    #     latest_version_number: 1,
    #     version_label: "VersionLabel",
    #   })
    #
    # @example Response structure
    #
    #   resp.application_id #=> String
    #   resp.configuration_profile_id #=> String
    #   resp.version_number #=> Integer
    #   resp.description #=> String
    #   resp.content #=> String
    #   resp.content_type #=> String
    #   resp.version_label #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/CreateHostedConfigurationVersion AWS API Documentation
    #
    # @overload create_hosted_configuration_version(params = {})
    # @param [Hash] params ({})
    def create_hosted_configuration_version(params = {}, options = {})
      req = build_request(:create_hosted_configuration_version, params)
      req.send_request(options)
    end

    # Deletes an application. Deleting an application does not delete a
    # configuration from a host.
    #
    # @option params [required, String] :application_id
    #   The ID of the application to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To delete an application
    #
    #   # The following delete-application example deletes the specified application. 
    #
    #   resp = client.delete_application({
    #     application_id: "339ohji", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_application({
    #     application_id: "Id", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/DeleteApplication AWS API Documentation
    #
    # @overload delete_application(params = {})
    # @param [Hash] params ({})
    def delete_application(params = {}, options = {})
      req = build_request(:delete_application, params)
      req.send_request(options)
    end

    # Deletes a configuration profile. Deleting a configuration profile does
    # not delete a configuration from a host.
    #
    # @option params [required, String] :application_id
    #   The application ID that includes the configuration profile you want to
    #   delete.
    #
    # @option params [required, String] :configuration_profile_id
    #   The ID of the configuration profile you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To delete a configuration profile
    #
    #   # The following delete-configuration-profile example deletes the specified configuration profile.
    #
    #   resp = client.delete_configuration_profile({
    #     application_id: "339ohji", 
    #     configuration_profile_id: "ur8hx2f", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_configuration_profile({
    #     application_id: "Id", # required
    #     configuration_profile_id: "Id", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/DeleteConfigurationProfile AWS API Documentation
    #
    # @overload delete_configuration_profile(params = {})
    # @param [Hash] params ({})
    def delete_configuration_profile(params = {}, options = {})
      req = build_request(:delete_configuration_profile, params)
      req.send_request(options)
    end

    # Deletes a deployment strategy. Deleting a deployment strategy does not
    # delete a configuration from a host.
    #
    # @option params [required, String] :deployment_strategy_id
    #   The ID of the deployment strategy you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To delete a deployment strategy
    #
    #   # The following delete-deployment-strategy example deletes the specified deployment strategy.
    #
    #   resp = client.delete_deployment_strategy({
    #     deployment_strategy_id: "1225qzk", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_deployment_strategy({
    #     deployment_strategy_id: "DeploymentStrategyId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/DeleteDeploymentStrategy AWS API Documentation
    #
    # @overload delete_deployment_strategy(params = {})
    # @param [Hash] params ({})
    def delete_deployment_strategy(params = {}, options = {})
      req = build_request(:delete_deployment_strategy, params)
      req.send_request(options)
    end

    # Deletes an environment. Deleting an environment does not delete a
    # configuration from a host.
    #
    # @option params [required, String] :application_id
    #   The application ID that includes the environment that you want to
    #   delete.
    #
    # @option params [required, String] :environment_id
    #   The ID of the environment that you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To delete an environment
    #
    #   # The following delete-environment example deletes the specified application environment.
    #
    #   resp = client.delete_environment({
    #     application_id: "339ohji", 
    #     environment_id: "54j1r29", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_environment({
    #     application_id: "Id", # required
    #     environment_id: "Id", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/DeleteEnvironment AWS API Documentation
    #
    # @overload delete_environment(params = {})
    # @param [Hash] params ({})
    def delete_environment(params = {}, options = {})
      req = build_request(:delete_environment, params)
      req.send_request(options)
    end

    # Deletes an AppConfig extension. You must delete all associations to an
    # extension before you delete the extension.
    #
    # @option params [required, String] :extension_identifier
    #   The name, ID, or Amazon Resource Name (ARN) of the extension you want
    #   to delete.
    #
    # @option params [Integer] :version_number
    #   A specific version of an extension to delete. If omitted, the highest
    #   version is deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_extension({
    #     extension_identifier: "Identifier", # required
    #     version_number: 1,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/DeleteExtension AWS API Documentation
    #
    # @overload delete_extension(params = {})
    # @param [Hash] params ({})
    def delete_extension(params = {}, options = {})
      req = build_request(:delete_extension, params)
      req.send_request(options)
    end

    # Deletes an extension association. This action doesn't delete
    # extensions defined in the association.
    #
    # @option params [required, String] :extension_association_id
    #   The ID of the extension association to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_extension_association({
    #     extension_association_id: "Id", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/DeleteExtensionAssociation AWS API Documentation
    #
    # @overload delete_extension_association(params = {})
    # @param [Hash] params ({})
    def delete_extension_association(params = {}, options = {})
      req = build_request(:delete_extension_association, params)
      req.send_request(options)
    end

    # Deletes a version of a configuration from the AppConfig hosted
    # configuration store.
    #
    # @option params [required, String] :application_id
    #   The application ID.
    #
    # @option params [required, String] :configuration_profile_id
    #   The configuration profile ID.
    #
    # @option params [required, Integer] :version_number
    #   The versions number to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To delete a hosted configuration version
    #
    #   # The following delete-hosted-configuration-version example deletes a configuration version hosted in the AWS AppConfig
    #   # configuration store.
    #
    #   resp = client.delete_hosted_configuration_version({
    #     application_id: "339ohji", 
    #     configuration_profile_id: "ur8hx2f", 
    #     version_number: 1, 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_hosted_configuration_version({
    #     application_id: "Id", # required
    #     configuration_profile_id: "Id", # required
    #     version_number: 1, # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/DeleteHostedConfigurationVersion AWS API Documentation
    #
    # @overload delete_hosted_configuration_version(params = {})
    # @param [Hash] params ({})
    def delete_hosted_configuration_version(params = {}, options = {})
      req = build_request(:delete_hosted_configuration_version, params)
      req.send_request(options)
    end

    # Retrieves information about an application.
    #
    # @option params [required, String] :application_id
    #   The ID of the application you want to get.
    #
    # @return [Types::Application] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Application#id #id} => String
    #   * {Types::Application#name #name} => String
    #   * {Types::Application#description #description} => String
    #
    #
    # @example Example: To list details of an application
    #
    #   # The following get-application example lists the details of the specified application.
    #
    #   resp = client.get_application({
    #     application_id: "339ohji", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     id: "339ohji", 
    #     name: "example-application", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_application({
    #     application_id: "Id", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/GetApplication AWS API Documentation
    #
    # @overload get_application(params = {})
    # @param [Hash] params ({})
    def get_application(params = {}, options = {})
      req = build_request(:get_application, params)
      req.send_request(options)
    end

    # (Deprecated) Retrieves the latest deployed configuration.
    #
    # Note the following important information.
    #
    #  * This API action is deprecated. Calls to receive configuration data
    #   should use the [StartConfigurationSession][1] and
    #   [GetLatestConfiguration][2] APIs instead.
    #
    # * `GetConfiguration` is a priced call. For more information, see
    #   [Pricing][3].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/appconfig/2019-10-09/APIReference/API_appconfigdata_StartConfigurationSession.html
    # [2]: https://docs.aws.amazon.com/appconfig/2019-10-09/APIReference/API_appconfigdata_GetLatestConfiguration.html
    # [3]: https://aws.amazon.com/systems-manager/pricing/
    #
    # @option params [required, String] :application
    #   The application to get. Specify either the application name or the
    #   application ID.
    #
    # @option params [required, String] :environment
    #   The environment to get. Specify either the environment name or the
    #   environment ID.
    #
    # @option params [required, String] :configuration
    #   The configuration to get. Specify either the configuration name or the
    #   configuration ID.
    #
    # @option params [required, String] :client_id
    #   The clientId parameter in the following command is a unique,
    #   user-specified ID to identify the client for the configuration. This
    #   ID enables AppConfig to deploy the configuration in intervals, as
    #   defined in the deployment strategy.
    #
    # @option params [String] :client_configuration_version
    #   The configuration version returned in the most recent
    #   `GetConfiguration` response.
    #
    #   AppConfig uses the value of the `ClientConfigurationVersion` parameter
    #   to identify the configuration version on your clients. If you don’t
    #   send `ClientConfigurationVersion` with each call to
    #   `GetConfiguration`, your clients receive the current configuration.
    #   You are charged each time your clients receive a configuration.
    #
    #    To avoid excess charges, we recommend you use the
    #   [StartConfigurationSession][1] and [GetLatestConfiguration][2] APIs,
    #   which track the client configuration version on your behalf. If you
    #   choose to continue using `GetConfiguration`, we recommend that you
    #   include the `ClientConfigurationVersion` value with every call to
    #   `GetConfiguration`. The value to use for `ClientConfigurationVersion`
    #   comes from the `ConfigurationVersion` attribute returned by
    #   `GetConfiguration` when there is new or updated data, and should be
    #   saved for subsequent calls to `GetConfiguration`.
    #
    #   For more information about working with configurations, see
    #   [Retrieving the Configuration][3] in the *AppConfig User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/appconfig/2019-10-09/APIReference/StartConfigurationSession.html
    #   [2]: https://docs.aws.amazon.com/appconfig/2019-10-09/APIReference/GetLatestConfiguration.html
    #   [3]: http://docs.aws.amazon.com/appconfig/latest/userguide/appconfig-retrieving-the-configuration.html
    #
    # @return [Types::Configuration] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Configuration#content #content} => String
    #   * {Types::Configuration#configuration_version #configuration_version} => String
    #   * {Types::Configuration#content_type #content_type} => String
    #
    #
    # @example Example: To retrieve configuration details
    #
    #   # The following get-configuration example returns the configuration details of the example application. On subsequent
    #   # calls to get-configuration, use the client-configuration-version parameter to only update the configuration of your
    #   # application if the version has changed. Only updating the configuration when the version has changed avoids excess
    #   # charges incurred by calling get-configuration.
    #
    #   resp = client.get_configuration({
    #     application: "example-application", 
    #     client_id: "example-id", 
    #     configuration: "Example-Configuration-Profile", 
    #     environment: "Example-Environment", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     configuration_version: "1", 
    #     content_type: "application/octet-stream", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_configuration({
    #     application: "StringWithLengthBetween1And64", # required
    #     environment: "StringWithLengthBetween1And64", # required
    #     configuration: "StringWithLengthBetween1And64", # required
    #     client_id: "StringWithLengthBetween1And64", # required
    #     client_configuration_version: "Version",
    #   })
    #
    # @example Response structure
    #
    #   resp.content #=> String
    #   resp.configuration_version #=> String
    #   resp.content_type #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/GetConfiguration AWS API Documentation
    #
    # @overload get_configuration(params = {})
    # @param [Hash] params ({})
    def get_configuration(params = {}, options = {})
      req = build_request(:get_configuration, params)
      req.send_request(options)
    end

    # Retrieves information about a configuration profile.
    #
    # @option params [required, String] :application_id
    #   The ID of the application that includes the configuration profile you
    #   want to get.
    #
    # @option params [required, String] :configuration_profile_id
    #   The ID of the configuration profile that you want to get.
    #
    # @return [Types::ConfigurationProfile] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ConfigurationProfile#application_id #application_id} => String
    #   * {Types::ConfigurationProfile#id #id} => String
    #   * {Types::ConfigurationProfile#name #name} => String
    #   * {Types::ConfigurationProfile#description #description} => String
    #   * {Types::ConfigurationProfile#location_uri #location_uri} => String
    #   * {Types::ConfigurationProfile#retrieval_role_arn #retrieval_role_arn} => String
    #   * {Types::ConfigurationProfile#validators #validators} => Array&lt;Types::Validator&gt;
    #   * {Types::ConfigurationProfile#type #type} => String
    #
    #
    # @example Example: To retrieve configuration profile details
    #
    #   # The following get-configuration-profile example returns the details of the specified configuration profile.
    #
    #   resp = client.get_configuration_profile({
    #     application_id: "339ohji", 
    #     configuration_profile_id: "ur8hx2f", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     application_id: "339ohji", 
    #     id: "ur8hx2f", 
    #     location_uri: "ssm-parameter://Example-Parameter", 
    #     name: "Example-Configuration-Profile", 
    #     retrieval_role_arn: "arn:aws:iam::111122223333:role/Example-App-Config-Role", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_configuration_profile({
    #     application_id: "Id", # required
    #     configuration_profile_id: "Id", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.application_id #=> String
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.location_uri #=> String
    #   resp.retrieval_role_arn #=> String
    #   resp.validators #=> Array
    #   resp.validators[0].type #=> String, one of "JSON_SCHEMA", "LAMBDA"
    #   resp.validators[0].content #=> String
    #   resp.type #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/GetConfigurationProfile AWS API Documentation
    #
    # @overload get_configuration_profile(params = {})
    # @param [Hash] params ({})
    def get_configuration_profile(params = {}, options = {})
      req = build_request(:get_configuration_profile, params)
      req.send_request(options)
    end

    # Retrieves information about a configuration deployment.
    #
    # @option params [required, String] :application_id
    #   The ID of the application that includes the deployment you want to
    #   get.
    #
    # @option params [required, String] :environment_id
    #   The ID of the environment that includes the deployment you want to
    #   get.
    #
    # @option params [required, Integer] :deployment_number
    #   The sequence number of the deployment.
    #
    # @return [Types::Deployment] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Deployment#application_id #application_id} => String
    #   * {Types::Deployment#environment_id #environment_id} => String
    #   * {Types::Deployment#deployment_strategy_id #deployment_strategy_id} => String
    #   * {Types::Deployment#configuration_profile_id #configuration_profile_id} => String
    #   * {Types::Deployment#deployment_number #deployment_number} => Integer
    #   * {Types::Deployment#configuration_name #configuration_name} => String
    #   * {Types::Deployment#configuration_location_uri #configuration_location_uri} => String
    #   * {Types::Deployment#configuration_version #configuration_version} => String
    #   * {Types::Deployment#description #description} => String
    #   * {Types::Deployment#deployment_duration_in_minutes #deployment_duration_in_minutes} => Integer
    #   * {Types::Deployment#growth_type #growth_type} => String
    #   * {Types::Deployment#growth_factor #growth_factor} => Float
    #   * {Types::Deployment#final_bake_time_in_minutes #final_bake_time_in_minutes} => Integer
    #   * {Types::Deployment#state #state} => String
    #   * {Types::Deployment#event_log #event_log} => Array&lt;Types::DeploymentEvent&gt;
    #   * {Types::Deployment#percentage_complete #percentage_complete} => Float
    #   * {Types::Deployment#started_at #started_at} => Time
    #   * {Types::Deployment#completed_at #completed_at} => Time
    #   * {Types::Deployment#applied_extensions #applied_extensions} => Array&lt;Types::AppliedExtension&gt;
    #   * {Types::Deployment#kms_key_arn #kms_key_arn} => String
    #   * {Types::Deployment#kms_key_identifier #kms_key_identifier} => String
    #
    #
    # @example Example: To retrieve deployment details
    #
    #   # The following get-deployment example lists details of the deployment to the application in the specified environment and
    #   # deployment.
    #
    #   resp = client.get_deployment({
    #     application_id: "339ohji", 
    #     deployment_number: 1, 
    #     environment_id: "54j1r29", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     application_id: "339ohji", 
    #     completed_at: Time.parse("2021-09-17T21:59:03.888000+00:00"), 
    #     configuration_location_uri: "ssm-parameter://Example-Parameter", 
    #     configuration_name: "Example-Configuration-Profile", 
    #     configuration_profile_id: "ur8hx2f", 
    #     configuration_version: "1", 
    #     deployment_duration_in_minutes: 15, 
    #     deployment_number: 1, 
    #     deployment_strategy_id: "1225qzk", 
    #     environment_id: "54j1r29", 
    #     event_log: [
    #       {
    #         description: "Deployment completed", 
    #         event_type: "DEPLOYMENT_COMPLETED", 
    #         occurred_at: Time.parse("2021-09-17T21:59:03.888000+00:00"), 
    #         triggered_by: "APPCONFIG", 
    #       }, 
    #       {
    #         description: "Deployment bake time started", 
    #         event_type: "BAKE_TIME_STARTED", 
    #         occurred_at: Time.parse("2021-09-17T21:58:57.722000+00:00"), 
    #         triggered_by: "APPCONFIG", 
    #       }, 
    #       {
    #         description: "Configuration available to 100.00% of clients", 
    #         event_type: "PERCENTAGE_UPDATED", 
    #         occurred_at: Time.parse("2021-09-17T21:55:56.816000+00:00"), 
    #         triggered_by: "APPCONFIG", 
    #       }, 
    #       {
    #         description: "Configuration available to 75.00% of clients", 
    #         event_type: "PERCENTAGE_UPDATED", 
    #         occurred_at: Time.parse("2021-09-17T21:52:56.567000+00:00"), 
    #         triggered_by: "APPCONFIG", 
    #       }, 
    #       {
    #         description: "Configuration available to 50.00% of clients", 
    #         event_type: "PERCENTAGE_UPDATED", 
    #         occurred_at: Time.parse("2021-09-17T21:49:55.737000+00:00"), 
    #         triggered_by: "APPCONFIG", 
    #       }, 
    #       {
    #         description: "Configuration available to 25.00% of clients", 
    #         event_type: "PERCENTAGE_UPDATED", 
    #         occurred_at: Time.parse("2021-09-17T21:46:55.187000+00:00"), 
    #         triggered_by: "APPCONFIG", 
    #       }, 
    #       {
    #         description: "Deployment started", 
    #         event_type: "DEPLOYMENT_STARTED", 
    #         occurred_at: Time.parse("2021-09-17T21:43:54.205000+00:00"), 
    #         triggered_by: "USER", 
    #       }, 
    #     ], 
    #     final_bake_time_in_minutes: 0, 
    #     growth_factor: 25, 
    #     growth_type: "LINEAR", 
    #     percentage_complete: 100, 
    #     started_at: Time.parse("2021-09-17T21:43:54.205000+00:00"), 
    #     state: "COMPLETE", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_deployment({
    #     application_id: "Id", # required
    #     environment_id: "Id", # required
    #     deployment_number: 1, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.application_id #=> String
    #   resp.environment_id #=> String
    #   resp.deployment_strategy_id #=> String
    #   resp.configuration_profile_id #=> String
    #   resp.deployment_number #=> Integer
    #   resp.configuration_name #=> String
    #   resp.configuration_location_uri #=> String
    #   resp.configuration_version #=> String
    #   resp.description #=> String
    #   resp.deployment_duration_in_minutes #=> Integer
    #   resp.growth_type #=> String, one of "LINEAR", "EXPONENTIAL"
    #   resp.growth_factor #=> Float
    #   resp.final_bake_time_in_minutes #=> Integer
    #   resp.state #=> String, one of "BAKING", "VALIDATING", "DEPLOYING", "COMPLETE", "ROLLING_BACK", "ROLLED_BACK"
    #   resp.event_log #=> Array
    #   resp.event_log[0].event_type #=> String, one of "PERCENTAGE_UPDATED", "ROLLBACK_STARTED", "ROLLBACK_COMPLETED", "BAKE_TIME_STARTED", "DEPLOYMENT_STARTED", "DEPLOYMENT_COMPLETED"
    #   resp.event_log[0].triggered_by #=> String, one of "USER", "APPCONFIG", "CLOUDWATCH_ALARM", "INTERNAL_ERROR"
    #   resp.event_log[0].description #=> String
    #   resp.event_log[0].action_invocations #=> Array
    #   resp.event_log[0].action_invocations[0].extension_identifier #=> String
    #   resp.event_log[0].action_invocations[0].action_name #=> String
    #   resp.event_log[0].action_invocations[0].uri #=> String
    #   resp.event_log[0].action_invocations[0].role_arn #=> String
    #   resp.event_log[0].action_invocations[0].error_message #=> String
    #   resp.event_log[0].action_invocations[0].error_code #=> String
    #   resp.event_log[0].action_invocations[0].invocation_id #=> String
    #   resp.event_log[0].occurred_at #=> Time
    #   resp.percentage_complete #=> Float
    #   resp.started_at #=> Time
    #   resp.completed_at #=> Time
    #   resp.applied_extensions #=> Array
    #   resp.applied_extensions[0].extension_id #=> String
    #   resp.applied_extensions[0].extension_association_id #=> String
    #   resp.applied_extensions[0].version_number #=> Integer
    #   resp.applied_extensions[0].parameters #=> Hash
    #   resp.applied_extensions[0].parameters["Name"] #=> String
    #   resp.kms_key_arn #=> String
    #   resp.kms_key_identifier #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/GetDeployment AWS API Documentation
    #
    # @overload get_deployment(params = {})
    # @param [Hash] params ({})
    def get_deployment(params = {}, options = {})
      req = build_request(:get_deployment, params)
      req.send_request(options)
    end

    # Retrieves information about a deployment strategy. A deployment
    # strategy defines important criteria for rolling out your configuration
    # to the designated targets. A deployment strategy includes the overall
    # duration required, a percentage of targets to receive the deployment
    # during each interval, an algorithm that defines how percentage grows,
    # and bake time.
    #
    # @option params [required, String] :deployment_strategy_id
    #   The ID of the deployment strategy to get.
    #
    # @return [Types::DeploymentStrategy] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeploymentStrategy#id #id} => String
    #   * {Types::DeploymentStrategy#name #name} => String
    #   * {Types::DeploymentStrategy#description #description} => String
    #   * {Types::DeploymentStrategy#deployment_duration_in_minutes #deployment_duration_in_minutes} => Integer
    #   * {Types::DeploymentStrategy#growth_type #growth_type} => String
    #   * {Types::DeploymentStrategy#growth_factor #growth_factor} => Float
    #   * {Types::DeploymentStrategy#final_bake_time_in_minutes #final_bake_time_in_minutes} => Integer
    #   * {Types::DeploymentStrategy#replicate_to #replicate_to} => String
    #
    #
    # @example Example: To retrieve details of a deployment strategy
    #
    #   # The following get-deployment-strategy example lists the details of the specified deployment strategy.
    #
    #   resp = client.get_deployment_strategy({
    #     deployment_strategy_id: "1225qzk", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     deployment_duration_in_minutes: 15, 
    #     final_bake_time_in_minutes: 0, 
    #     growth_factor: 25, 
    #     growth_type: "LINEAR", 
    #     id: "1225qzk", 
    #     name: "Example-Deployment", 
    #     replicate_to: "SSM_DOCUMENT", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_deployment_strategy({
    #     deployment_strategy_id: "DeploymentStrategyId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.deployment_duration_in_minutes #=> Integer
    #   resp.growth_type #=> String, one of "LINEAR", "EXPONENTIAL"
    #   resp.growth_factor #=> Float
    #   resp.final_bake_time_in_minutes #=> Integer
    #   resp.replicate_to #=> String, one of "NONE", "SSM_DOCUMENT"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/GetDeploymentStrategy AWS API Documentation
    #
    # @overload get_deployment_strategy(params = {})
    # @param [Hash] params ({})
    def get_deployment_strategy(params = {}, options = {})
      req = build_request(:get_deployment_strategy, params)
      req.send_request(options)
    end

    # Retrieves information about an environment. An environment is a
    # deployment group of AppConfig applications, such as applications in a
    # `Production` environment or in an `EU_Region` environment. Each
    # configuration deployment targets an environment. You can enable one or
    # more Amazon CloudWatch alarms for an environment. If an alarm is
    # triggered during a deployment, AppConfig roles back the configuration.
    #
    # @option params [required, String] :application_id
    #   The ID of the application that includes the environment you want to
    #   get.
    #
    # @option params [required, String] :environment_id
    #   The ID of the environment that you want to get.
    #
    # @return [Types::Environment] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Environment#application_id #application_id} => String
    #   * {Types::Environment#id #id} => String
    #   * {Types::Environment#name #name} => String
    #   * {Types::Environment#description #description} => String
    #   * {Types::Environment#state #state} => String
    #   * {Types::Environment#monitors #monitors} => Array&lt;Types::Monitor&gt;
    #
    #
    # @example Example: To retrieve environment details
    #
    #   # The following get-environment example returns the details and state of the specified environment.
    #
    #   resp = client.get_environment({
    #     application_id: "339ohji", 
    #     environment_id: "54j1r29", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     application_id: "339ohji", 
    #     id: "54j1r29", 
    #     name: "Example-Environment", 
    #     state: "READY_FOR_DEPLOYMENT", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_environment({
    #     application_id: "Id", # required
    #     environment_id: "Id", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.application_id #=> String
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.state #=> String, one of "READY_FOR_DEPLOYMENT", "DEPLOYING", "ROLLING_BACK", "ROLLED_BACK"
    #   resp.monitors #=> Array
    #   resp.monitors[0].alarm_arn #=> String
    #   resp.monitors[0].alarm_role_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/GetEnvironment AWS API Documentation
    #
    # @overload get_environment(params = {})
    # @param [Hash] params ({})
    def get_environment(params = {}, options = {})
      req = build_request(:get_environment, params)
      req.send_request(options)
    end

    # Returns information about an AppConfig extension.
    #
    # @option params [required, String] :extension_identifier
    #   The name, the ID, or the Amazon Resource Name (ARN) of the extension.
    #
    # @option params [Integer] :version_number
    #   The extension version number. If no version number was defined,
    #   AppConfig uses the highest version.
    #
    # @return [Types::Extension] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Extension#id #id} => String
    #   * {Types::Extension#name #name} => String
    #   * {Types::Extension#version_number #version_number} => Integer
    #   * {Types::Extension#arn #arn} => String
    #   * {Types::Extension#description #description} => String
    #   * {Types::Extension#actions #actions} => Hash&lt;String,Array&lt;Types::Action&gt;&gt;
    #   * {Types::Extension#parameters #parameters} => Hash&lt;String,Types::Parameter&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_extension({
    #     extension_identifier: "Identifier", # required
    #     version_number: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.version_number #=> Integer
    #   resp.arn #=> String
    #   resp.description #=> String
    #   resp.actions #=> Hash
    #   resp.actions["ActionPoint"] #=> Array
    #   resp.actions["ActionPoint"][0].name #=> String
    #   resp.actions["ActionPoint"][0].description #=> String
    #   resp.actions["ActionPoint"][0].uri #=> String
    #   resp.actions["ActionPoint"][0].role_arn #=> String
    #   resp.parameters #=> Hash
    #   resp.parameters["Name"].description #=> String
    #   resp.parameters["Name"].required #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/GetExtension AWS API Documentation
    #
    # @overload get_extension(params = {})
    # @param [Hash] params ({})
    def get_extension(params = {}, options = {})
      req = build_request(:get_extension, params)
      req.send_request(options)
    end

    # Returns information about an AppConfig extension association. For more
    # information about extensions and associations, see [Working with
    # AppConfig extensions][1] in the *AppConfig User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/appconfig/latest/userguide/working-with-appconfig-extensions.html
    #
    # @option params [required, String] :extension_association_id
    #   The extension association ID to get.
    #
    # @return [Types::ExtensionAssociation] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ExtensionAssociation#id #id} => String
    #   * {Types::ExtensionAssociation#extension_arn #extension_arn} => String
    #   * {Types::ExtensionAssociation#resource_arn #resource_arn} => String
    #   * {Types::ExtensionAssociation#arn #arn} => String
    #   * {Types::ExtensionAssociation#parameters #parameters} => Hash&lt;String,String&gt;
    #   * {Types::ExtensionAssociation#extension_version_number #extension_version_number} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_extension_association({
    #     extension_association_id: "Id", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.extension_arn #=> String
    #   resp.resource_arn #=> String
    #   resp.arn #=> String
    #   resp.parameters #=> Hash
    #   resp.parameters["Name"] #=> String
    #   resp.extension_version_number #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/GetExtensionAssociation AWS API Documentation
    #
    # @overload get_extension_association(params = {})
    # @param [Hash] params ({})
    def get_extension_association(params = {}, options = {})
      req = build_request(:get_extension_association, params)
      req.send_request(options)
    end

    # Retrieves information about a specific configuration version.
    #
    # @option params [required, String] :application_id
    #   The application ID.
    #
    # @option params [required, String] :configuration_profile_id
    #   The configuration profile ID.
    #
    # @option params [required, Integer] :version_number
    #   The version.
    #
    # @return [Types::HostedConfigurationVersion] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::HostedConfigurationVersion#application_id #application_id} => String
    #   * {Types::HostedConfigurationVersion#configuration_profile_id #configuration_profile_id} => String
    #   * {Types::HostedConfigurationVersion#version_number #version_number} => Integer
    #   * {Types::HostedConfigurationVersion#description #description} => String
    #   * {Types::HostedConfigurationVersion#content #content} => String
    #   * {Types::HostedConfigurationVersion#content_type #content_type} => String
    #   * {Types::HostedConfigurationVersion#version_label #version_label} => String
    #
    #
    # @example Example: To retrieve hosted configuration details
    #
    #   # The following get-hosted-configuration-version example retrieves the configuration details of the AWS AppConfig hosted
    #   # configuration.
    #
    #   resp = client.get_hosted_configuration_version({
    #     application_id: "339ohji", 
    #     configuration_profile_id: "ur8hx2f", 
    #     version_number: 1, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     application_id: "339ohji", 
    #     configuration_profile_id: "ur8hx2f", 
    #     content_type: "application/json", 
    #     version_number: 1, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_hosted_configuration_version({
    #     application_id: "Id", # required
    #     configuration_profile_id: "Id", # required
    #     version_number: 1, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.application_id #=> String
    #   resp.configuration_profile_id #=> String
    #   resp.version_number #=> Integer
    #   resp.description #=> String
    #   resp.content #=> String
    #   resp.content_type #=> String
    #   resp.version_label #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/GetHostedConfigurationVersion AWS API Documentation
    #
    # @overload get_hosted_configuration_version(params = {})
    # @param [Hash] params ({})
    def get_hosted_configuration_version(params = {}, options = {})
      req = build_request(:get_hosted_configuration_version, params)
      req.send_request(options)
    end

    # Lists all applications in your Amazon Web Services account.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #
    # @option params [String] :next_token
    #   A token to start the list. Next token is a pagination token generated
    #   by AppConfig to describe what page the previous List call ended on.
    #   For the first List request, the nextToken should not be set. On
    #   subsequent calls, the nextToken parameter should be set to the
    #   previous responses nextToken value. Use this token to get the next set
    #   of results.
    #
    # @return [Types::Applications] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Applications#items #items} => Array&lt;Types::Application&gt;
    #   * {Types::Applications#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To list the available applications
    #
    #   # The following list-applications example lists the available applications in your AWS account.
    #
    #   resp = client.list_applications({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     items: [
    #       {
    #         description: "An application used for creating an example.", 
    #         id: "339ohji", 
    #         name: "test-application", 
    #       }, 
    #       {
    #         id: "rwalwu7", 
    #         name: "Test-Application", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_applications({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].id #=> String
    #   resp.items[0].name #=> String
    #   resp.items[0].description #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/ListApplications AWS API Documentation
    #
    # @overload list_applications(params = {})
    # @param [Hash] params ({})
    def list_applications(params = {}, options = {})
      req = build_request(:list_applications, params)
      req.send_request(options)
    end

    # Lists the configuration profiles for an application.
    #
    # @option params [required, String] :application_id
    #   The application ID.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #
    # @option params [String] :next_token
    #   A token to start the list. Use this token to get the next set of
    #   results.
    #
    # @option params [String] :type
    #   A filter based on the type of configurations that the configuration
    #   profile contains. A configuration can be a feature flag or a freeform
    #   configuration.
    #
    # @return [Types::ConfigurationProfiles] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ConfigurationProfiles#items #items} => Array&lt;Types::ConfigurationProfileSummary&gt;
    #   * {Types::ConfigurationProfiles#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To list the available configuration profiles
    #
    #   # The following list-configuration-profiles example lists the available configuration profiles for the specified
    #   # application.
    #
    #   resp = client.list_configuration_profiles({
    #     application_id: "339ohji", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     items: [
    #       {
    #         application_id: "339ohji", 
    #         id: "ur8hx2f", 
    #         location_uri: "ssm-parameter://Example-Parameter", 
    #         name: "Example-Configuration-Profile", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_configuration_profiles({
    #     application_id: "Id", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #     type: "ConfigurationProfileType",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].application_id #=> String
    #   resp.items[0].id #=> String
    #   resp.items[0].name #=> String
    #   resp.items[0].location_uri #=> String
    #   resp.items[0].validator_types #=> Array
    #   resp.items[0].validator_types[0] #=> String, one of "JSON_SCHEMA", "LAMBDA"
    #   resp.items[0].type #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/ListConfigurationProfiles AWS API Documentation
    #
    # @overload list_configuration_profiles(params = {})
    # @param [Hash] params ({})
    def list_configuration_profiles(params = {}, options = {})
      req = build_request(:list_configuration_profiles, params)
      req.send_request(options)
    end

    # Lists deployment strategies.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #
    # @option params [String] :next_token
    #   A token to start the list. Use this token to get the next set of
    #   results.
    #
    # @return [Types::DeploymentStrategies] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeploymentStrategies#items #items} => Array&lt;Types::DeploymentStrategy&gt;
    #   * {Types::DeploymentStrategies#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To list the available deployment strategies
    #
    #   # The following list-deployment-strategies example lists the available deployment strategies in your AWS account.
    #
    #   resp = client.list_deployment_strategies({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     items: [
    #       {
    #         deployment_duration_in_minutes: 15, 
    #         final_bake_time_in_minutes: 0, 
    #         growth_factor: 25, 
    #         growth_type: "LINEAR", 
    #         id: "1225qzk", 
    #         name: "Example-Deployment", 
    #         replicate_to: "SSM_DOCUMENT", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_deployment_strategies({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].id #=> String
    #   resp.items[0].name #=> String
    #   resp.items[0].description #=> String
    #   resp.items[0].deployment_duration_in_minutes #=> Integer
    #   resp.items[0].growth_type #=> String, one of "LINEAR", "EXPONENTIAL"
    #   resp.items[0].growth_factor #=> Float
    #   resp.items[0].final_bake_time_in_minutes #=> Integer
    #   resp.items[0].replicate_to #=> String, one of "NONE", "SSM_DOCUMENT"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/ListDeploymentStrategies AWS API Documentation
    #
    # @overload list_deployment_strategies(params = {})
    # @param [Hash] params ({})
    def list_deployment_strategies(params = {}, options = {})
      req = build_request(:list_deployment_strategies, params)
      req.send_request(options)
    end

    # Lists the deployments for an environment in descending deployment
    # number order.
    #
    # @option params [required, String] :application_id
    #   The application ID.
    #
    # @option params [required, String] :environment_id
    #   The environment ID.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items that may be returned for this call. If
    #   there are items that have not yet been returned, the response will
    #   include a non-null `NextToken` that you can provide in a subsequent
    #   call to get the next set of results.
    #
    # @option params [String] :next_token
    #   The token returned by a prior call to this operation indicating the
    #   next set of results to be returned. If not specified, the operation
    #   will return the first set of results.
    #
    # @return [Types::Deployments] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Deployments#items #items} => Array&lt;Types::DeploymentSummary&gt;
    #   * {Types::Deployments#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To list the available deployments
    #
    #   # The following list-deployments example lists the available deployments in your AWS account for the specified application
    #   # and environment.
    #
    #   resp = client.list_deployments({
    #     application_id: "339ohji", 
    #     environment_id: "54j1r29", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     items: [
    #       {
    #         completed_at: Time.parse("2021-09-17T21:59:03.888000+00:00"), 
    #         configuration_name: "Example-Configuration-Profile", 
    #         configuration_version: "1", 
    #         deployment_duration_in_minutes: 15, 
    #         deployment_number: 1, 
    #         final_bake_time_in_minutes: 0, 
    #         growth_factor: 25, 
    #         growth_type: "LINEAR", 
    #         percentage_complete: 100, 
    #         started_at: Time.parse("2021-09-17T21:43:54.205000+00:00"), 
    #         state: "COMPLETE", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_deployments({
    #     application_id: "Id", # required
    #     environment_id: "Id", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].deployment_number #=> Integer
    #   resp.items[0].configuration_name #=> String
    #   resp.items[0].configuration_version #=> String
    #   resp.items[0].deployment_duration_in_minutes #=> Integer
    #   resp.items[0].growth_type #=> String, one of "LINEAR", "EXPONENTIAL"
    #   resp.items[0].growth_factor #=> Float
    #   resp.items[0].final_bake_time_in_minutes #=> Integer
    #   resp.items[0].state #=> String, one of "BAKING", "VALIDATING", "DEPLOYING", "COMPLETE", "ROLLING_BACK", "ROLLED_BACK"
    #   resp.items[0].percentage_complete #=> Float
    #   resp.items[0].started_at #=> Time
    #   resp.items[0].completed_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/ListDeployments AWS API Documentation
    #
    # @overload list_deployments(params = {})
    # @param [Hash] params ({})
    def list_deployments(params = {}, options = {})
      req = build_request(:list_deployments, params)
      req.send_request(options)
    end

    # Lists the environments for an application.
    #
    # @option params [required, String] :application_id
    #   The application ID.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #
    # @option params [String] :next_token
    #   A token to start the list. Use this token to get the next set of
    #   results.
    #
    # @return [Types::Environments] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Environments#items #items} => Array&lt;Types::Environment&gt;
    #   * {Types::Environments#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To list the available environments
    #
    #   # The following list-environments example lists the available environments in your AWS account for the specified
    #   # application.
    #
    #   resp = client.list_environments({
    #     application_id: "339ohji", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     items: [
    #       {
    #         application_id: "339ohji", 
    #         id: "54j1r29", 
    #         name: "Example-Environment", 
    #         state: "READY_FOR_DEPLOYMENT", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_environments({
    #     application_id: "Id", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].application_id #=> String
    #   resp.items[0].id #=> String
    #   resp.items[0].name #=> String
    #   resp.items[0].description #=> String
    #   resp.items[0].state #=> String, one of "READY_FOR_DEPLOYMENT", "DEPLOYING", "ROLLING_BACK", "ROLLED_BACK"
    #   resp.items[0].monitors #=> Array
    #   resp.items[0].monitors[0].alarm_arn #=> String
    #   resp.items[0].monitors[0].alarm_role_arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/ListEnvironments AWS API Documentation
    #
    # @overload list_environments(params = {})
    # @param [Hash] params ({})
    def list_environments(params = {}, options = {})
      req = build_request(:list_environments, params)
      req.send_request(options)
    end

    # Lists all AppConfig extension associations in the account. For more
    # information about extensions and associations, see [Working with
    # AppConfig extensions][1] in the *AppConfig User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/appconfig/latest/userguide/working-with-appconfig-extensions.html
    #
    # @option params [String] :resource_identifier
    #   The ARN of an application, configuration profile, or environment.
    #
    # @option params [String] :extension_identifier
    #   The name, the ID, or the Amazon Resource Name (ARN) of the extension.
    #
    # @option params [Integer] :extension_version_number
    #   The version number for the extension defined in the association.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #
    # @option params [String] :next_token
    #   A token to start the list. Use this token to get the next set of
    #   results or pass null to get the first set of results.
    #
    # @return [Types::ExtensionAssociations] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ExtensionAssociations#items #items} => Array&lt;Types::ExtensionAssociationSummary&gt;
    #   * {Types::ExtensionAssociations#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_extension_associations({
    #     resource_identifier: "Arn",
    #     extension_identifier: "Identifier",
    #     extension_version_number: 1,
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].id #=> String
    #   resp.items[0].extension_arn #=> String
    #   resp.items[0].resource_arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/ListExtensionAssociations AWS API Documentation
    #
    # @overload list_extension_associations(params = {})
    # @param [Hash] params ({})
    def list_extension_associations(params = {}, options = {})
      req = build_request(:list_extension_associations, params)
      req.send_request(options)
    end

    # Lists all custom and Amazon Web Services authored AppConfig extensions
    # in the account. For more information about extensions, see [Working
    # with AppConfig extensions][1] in the *AppConfig User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/appconfig/latest/userguide/working-with-appconfig-extensions.html
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #
    # @option params [String] :next_token
    #   A token to start the list. Use this token to get the next set of
    #   results.
    #
    # @option params [String] :name
    #   The extension name.
    #
    # @return [Types::Extensions] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Extensions#items #items} => Array&lt;Types::ExtensionSummary&gt;
    #   * {Types::Extensions#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_extensions({
    #     max_results: 1,
    #     next_token: "NextToken",
    #     name: "QueryName",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].id #=> String
    #   resp.items[0].name #=> String
    #   resp.items[0].version_number #=> Integer
    #   resp.items[0].arn #=> String
    #   resp.items[0].description #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/ListExtensions AWS API Documentation
    #
    # @overload list_extensions(params = {})
    # @param [Hash] params ({})
    def list_extensions(params = {}, options = {})
      req = build_request(:list_extensions, params)
      req.send_request(options)
    end

    # Lists configurations stored in the AppConfig hosted configuration
    # store by version.
    #
    # @option params [required, String] :application_id
    #   The application ID.
    #
    # @option params [required, String] :configuration_profile_id
    #   The configuration profile ID.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #
    # @option params [String] :next_token
    #   A token to start the list. Use this token to get the next set of
    #   results.
    #
    # @option params [String] :version_label
    #   An optional filter that can be used to specify the version label of an
    #   AppConfig hosted configuration version. This parameter supports
    #   filtering by prefix using a wildcard, for example "v2*". If you
    #   don't specify an asterisk at the end of the value, only an exact
    #   match is returned.
    #
    # @return [Types::HostedConfigurationVersions] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::HostedConfigurationVersions#items #items} => Array&lt;Types::HostedConfigurationVersionSummary&gt;
    #   * {Types::HostedConfigurationVersions#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To list the available hosted configuration versions
    #
    #   # The following list-hosted-configuration-versions example lists the configurations versions hosted in the AWS AppConfig
    #   # hosted configuration store for the specified application and configuration profile.
    #
    #   resp = client.list_hosted_configuration_versions({
    #     application_id: "339ohji", 
    #     configuration_profile_id: "ur8hx2f", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     items: [
    #       {
    #         application_id: "339ohji", 
    #         configuration_profile_id: "ur8hx2f", 
    #         content_type: "application/json", 
    #         version_number: 1, 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_hosted_configuration_versions({
    #     application_id: "Id", # required
    #     configuration_profile_id: "Id", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #     version_label: "QueryName",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].application_id #=> String
    #   resp.items[0].configuration_profile_id #=> String
    #   resp.items[0].version_number #=> Integer
    #   resp.items[0].description #=> String
    #   resp.items[0].content_type #=> String
    #   resp.items[0].version_label #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/ListHostedConfigurationVersions AWS API Documentation
    #
    # @overload list_hosted_configuration_versions(params = {})
    # @param [Hash] params ({})
    def list_hosted_configuration_versions(params = {}, options = {})
      req = build_request(:list_hosted_configuration_versions, params)
      req.send_request(options)
    end

    # Retrieves the list of key-value tags assigned to the resource.
    #
    # @option params [required, String] :resource_arn
    #   The resource ARN.
    #
    # @return [Types::ResourceTags] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ResourceTags#tags #tags} => Hash&lt;String,String&gt;
    #
    #
    # @example Example: To list the tags of an application
    #
    #   # The following list-tags-for-resource example lists the tags of a specified application.
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "arn:aws:appconfig:us-east-1:111122223333:application/339ohji", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     tags: {
    #       "group1" => "1", 
    #     }, 
    #   }
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Starts a deployment.
    #
    # @option params [required, String] :application_id
    #   The application ID.
    #
    # @option params [required, String] :environment_id
    #   The environment ID.
    #
    # @option params [required, String] :deployment_strategy_id
    #   The deployment strategy ID.
    #
    # @option params [required, String] :configuration_profile_id
    #   The configuration profile ID.
    #
    # @option params [required, String] :configuration_version
    #   The configuration version to deploy. If deploying an AppConfig hosted
    #   configuration version, you can specify either the version number or
    #   version label.
    #
    # @option params [String] :description
    #   A description of the deployment.
    #
    # @option params [Hash<String,String>] :tags
    #   Metadata to assign to the deployment. Tags help organize and
    #   categorize your AppConfig resources. Each tag consists of a key and an
    #   optional value, both of which you define.
    #
    # @option params [String] :kms_key_identifier
    #   The KMS key identifier (key ID, key alias, or key ARN). AppConfig uses
    #   this ID to encrypt the configuration data using a customer managed
    #   key.
    #
    # @return [Types::Deployment] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Deployment#application_id #application_id} => String
    #   * {Types::Deployment#environment_id #environment_id} => String
    #   * {Types::Deployment#deployment_strategy_id #deployment_strategy_id} => String
    #   * {Types::Deployment#configuration_profile_id #configuration_profile_id} => String
    #   * {Types::Deployment#deployment_number #deployment_number} => Integer
    #   * {Types::Deployment#configuration_name #configuration_name} => String
    #   * {Types::Deployment#configuration_location_uri #configuration_location_uri} => String
    #   * {Types::Deployment#configuration_version #configuration_version} => String
    #   * {Types::Deployment#description #description} => String
    #   * {Types::Deployment#deployment_duration_in_minutes #deployment_duration_in_minutes} => Integer
    #   * {Types::Deployment#growth_type #growth_type} => String
    #   * {Types::Deployment#growth_factor #growth_factor} => Float
    #   * {Types::Deployment#final_bake_time_in_minutes #final_bake_time_in_minutes} => Integer
    #   * {Types::Deployment#state #state} => String
    #   * {Types::Deployment#event_log #event_log} => Array&lt;Types::DeploymentEvent&gt;
    #   * {Types::Deployment#percentage_complete #percentage_complete} => Float
    #   * {Types::Deployment#started_at #started_at} => Time
    #   * {Types::Deployment#completed_at #completed_at} => Time
    #   * {Types::Deployment#applied_extensions #applied_extensions} => Array&lt;Types::AppliedExtension&gt;
    #   * {Types::Deployment#kms_key_arn #kms_key_arn} => String
    #   * {Types::Deployment#kms_key_identifier #kms_key_identifier} => String
    #
    #
    # @example Example: To start a configuration deployment
    #
    #   # The following start-deployment example starts a deployment to the application using the specified environment,
    #   # deployment strategy, and configuration profile.
    #
    #   resp = client.start_deployment({
    #     application_id: "339ohji", 
    #     configuration_profile_id: "ur8hx2f", 
    #     configuration_version: "1", 
    #     deployment_strategy_id: "1225qzk", 
    #     description: "", 
    #     environment_id: "54j1r29", 
    #     tags: {
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     application_id: "339ohji", 
    #     configuration_location_uri: "ssm-parameter://Example-Parameter", 
    #     configuration_name: "Example-Configuration-Profile", 
    #     configuration_profile_id: "ur8hx2f", 
    #     configuration_version: "1", 
    #     deployment_duration_in_minutes: 15, 
    #     deployment_number: 1, 
    #     deployment_strategy_id: "1225qzk", 
    #     environment_id: "54j1r29", 
    #     event_log: [
    #       {
    #         description: "Deployment started", 
    #         event_type: "DEPLOYMENT_STARTED", 
    #         occurred_at: Time.parse("2021-09-17T21:43:54.205000+00:00"), 
    #         triggered_by: "USER", 
    #       }, 
    #     ], 
    #     final_bake_time_in_minutes: 0, 
    #     growth_factor: 25, 
    #     growth_type: "LINEAR", 
    #     percentage_complete: 1.0, 
    #     started_at: Time.parse("2021-09-17T21:43:54.205000+00:00"), 
    #     state: "DEPLOYING", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_deployment({
    #     application_id: "Id", # required
    #     environment_id: "Id", # required
    #     deployment_strategy_id: "DeploymentStrategyId", # required
    #     configuration_profile_id: "Id", # required
    #     configuration_version: "Version", # required
    #     description: "Description",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     kms_key_identifier: "Identifier",
    #   })
    #
    # @example Response structure
    #
    #   resp.application_id #=> String
    #   resp.environment_id #=> String
    #   resp.deployment_strategy_id #=> String
    #   resp.configuration_profile_id #=> String
    #   resp.deployment_number #=> Integer
    #   resp.configuration_name #=> String
    #   resp.configuration_location_uri #=> String
    #   resp.configuration_version #=> String
    #   resp.description #=> String
    #   resp.deployment_duration_in_minutes #=> Integer
    #   resp.growth_type #=> String, one of "LINEAR", "EXPONENTIAL"
    #   resp.growth_factor #=> Float
    #   resp.final_bake_time_in_minutes #=> Integer
    #   resp.state #=> String, one of "BAKING", "VALIDATING", "DEPLOYING", "COMPLETE", "ROLLING_BACK", "ROLLED_BACK"
    #   resp.event_log #=> Array
    #   resp.event_log[0].event_type #=> String, one of "PERCENTAGE_UPDATED", "ROLLBACK_STARTED", "ROLLBACK_COMPLETED", "BAKE_TIME_STARTED", "DEPLOYMENT_STARTED", "DEPLOYMENT_COMPLETED"
    #   resp.event_log[0].triggered_by #=> String, one of "USER", "APPCONFIG", "CLOUDWATCH_ALARM", "INTERNAL_ERROR"
    #   resp.event_log[0].description #=> String
    #   resp.event_log[0].action_invocations #=> Array
    #   resp.event_log[0].action_invocations[0].extension_identifier #=> String
    #   resp.event_log[0].action_invocations[0].action_name #=> String
    #   resp.event_log[0].action_invocations[0].uri #=> String
    #   resp.event_log[0].action_invocations[0].role_arn #=> String
    #   resp.event_log[0].action_invocations[0].error_message #=> String
    #   resp.event_log[0].action_invocations[0].error_code #=> String
    #   resp.event_log[0].action_invocations[0].invocation_id #=> String
    #   resp.event_log[0].occurred_at #=> Time
    #   resp.percentage_complete #=> Float
    #   resp.started_at #=> Time
    #   resp.completed_at #=> Time
    #   resp.applied_extensions #=> Array
    #   resp.applied_extensions[0].extension_id #=> String
    #   resp.applied_extensions[0].extension_association_id #=> String
    #   resp.applied_extensions[0].version_number #=> Integer
    #   resp.applied_extensions[0].parameters #=> Hash
    #   resp.applied_extensions[0].parameters["Name"] #=> String
    #   resp.kms_key_arn #=> String
    #   resp.kms_key_identifier #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/StartDeployment AWS API Documentation
    #
    # @overload start_deployment(params = {})
    # @param [Hash] params ({})
    def start_deployment(params = {}, options = {})
      req = build_request(:start_deployment, params)
      req.send_request(options)
    end

    # Stops a deployment. This API action works only on deployments that
    # have a status of `DEPLOYING`. This action moves the deployment to a
    # status of `ROLLED_BACK`.
    #
    # @option params [required, String] :application_id
    #   The application ID.
    #
    # @option params [required, String] :environment_id
    #   The environment ID.
    #
    # @option params [required, Integer] :deployment_number
    #   The sequence number of the deployment.
    #
    # @return [Types::Deployment] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Deployment#application_id #application_id} => String
    #   * {Types::Deployment#environment_id #environment_id} => String
    #   * {Types::Deployment#deployment_strategy_id #deployment_strategy_id} => String
    #   * {Types::Deployment#configuration_profile_id #configuration_profile_id} => String
    #   * {Types::Deployment#deployment_number #deployment_number} => Integer
    #   * {Types::Deployment#configuration_name #configuration_name} => String
    #   * {Types::Deployment#configuration_location_uri #configuration_location_uri} => String
    #   * {Types::Deployment#configuration_version #configuration_version} => String
    #   * {Types::Deployment#description #description} => String
    #   * {Types::Deployment#deployment_duration_in_minutes #deployment_duration_in_minutes} => Integer
    #   * {Types::Deployment#growth_type #growth_type} => String
    #   * {Types::Deployment#growth_factor #growth_factor} => Float
    #   * {Types::Deployment#final_bake_time_in_minutes #final_bake_time_in_minutes} => Integer
    #   * {Types::Deployment#state #state} => String
    #   * {Types::Deployment#event_log #event_log} => Array&lt;Types::DeploymentEvent&gt;
    #   * {Types::Deployment#percentage_complete #percentage_complete} => Float
    #   * {Types::Deployment#started_at #started_at} => Time
    #   * {Types::Deployment#completed_at #completed_at} => Time
    #   * {Types::Deployment#applied_extensions #applied_extensions} => Array&lt;Types::AppliedExtension&gt;
    #   * {Types::Deployment#kms_key_arn #kms_key_arn} => String
    #   * {Types::Deployment#kms_key_identifier #kms_key_identifier} => String
    #
    #
    # @example Example: To stop configuration deployment
    #
    #   # The following stop-deployment example stops the deployment of an application configuration to the specified environment.
    #
    #   resp = client.stop_deployment({
    #     application_id: "339ohji", 
    #     deployment_number: 2, 
    #     environment_id: "54j1r29", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     deployment_duration_in_minutes: 15, 
    #     deployment_number: 2, 
    #     final_bake_time_in_minutes: 0, 
    #     growth_factor: 25.0, 
    #     percentage_complete: 1.0, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_deployment({
    #     application_id: "Id", # required
    #     environment_id: "Id", # required
    #     deployment_number: 1, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.application_id #=> String
    #   resp.environment_id #=> String
    #   resp.deployment_strategy_id #=> String
    #   resp.configuration_profile_id #=> String
    #   resp.deployment_number #=> Integer
    #   resp.configuration_name #=> String
    #   resp.configuration_location_uri #=> String
    #   resp.configuration_version #=> String
    #   resp.description #=> String
    #   resp.deployment_duration_in_minutes #=> Integer
    #   resp.growth_type #=> String, one of "LINEAR", "EXPONENTIAL"
    #   resp.growth_factor #=> Float
    #   resp.final_bake_time_in_minutes #=> Integer
    #   resp.state #=> String, one of "BAKING", "VALIDATING", "DEPLOYING", "COMPLETE", "ROLLING_BACK", "ROLLED_BACK"
    #   resp.event_log #=> Array
    #   resp.event_log[0].event_type #=> String, one of "PERCENTAGE_UPDATED", "ROLLBACK_STARTED", "ROLLBACK_COMPLETED", "BAKE_TIME_STARTED", "DEPLOYMENT_STARTED", "DEPLOYMENT_COMPLETED"
    #   resp.event_log[0].triggered_by #=> String, one of "USER", "APPCONFIG", "CLOUDWATCH_ALARM", "INTERNAL_ERROR"
    #   resp.event_log[0].description #=> String
    #   resp.event_log[0].action_invocations #=> Array
    #   resp.event_log[0].action_invocations[0].extension_identifier #=> String
    #   resp.event_log[0].action_invocations[0].action_name #=> String
    #   resp.event_log[0].action_invocations[0].uri #=> String
    #   resp.event_log[0].action_invocations[0].role_arn #=> String
    #   resp.event_log[0].action_invocations[0].error_message #=> String
    #   resp.event_log[0].action_invocations[0].error_code #=> String
    #   resp.event_log[0].action_invocations[0].invocation_id #=> String
    #   resp.event_log[0].occurred_at #=> Time
    #   resp.percentage_complete #=> Float
    #   resp.started_at #=> Time
    #   resp.completed_at #=> Time
    #   resp.applied_extensions #=> Array
    #   resp.applied_extensions[0].extension_id #=> String
    #   resp.applied_extensions[0].extension_association_id #=> String
    #   resp.applied_extensions[0].version_number #=> Integer
    #   resp.applied_extensions[0].parameters #=> Hash
    #   resp.applied_extensions[0].parameters["Name"] #=> String
    #   resp.kms_key_arn #=> String
    #   resp.kms_key_identifier #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/StopDeployment AWS API Documentation
    #
    # @overload stop_deployment(params = {})
    # @param [Hash] params ({})
    def stop_deployment(params = {}, options = {})
      req = build_request(:stop_deployment, params)
      req.send_request(options)
    end

    # Assigns metadata to an AppConfig resource. Tags help organize and
    # categorize your AppConfig resources. Each tag consists of a key and an
    # optional value, both of which you define. You can specify a maximum of
    # 50 tags for a resource.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource for which to retrieve tags.
    #
    # @option params [required, Hash<String,String>] :tags
    #   The key-value string map. The valid character set is
    #   \[a-zA-Z+-=.\_:/\]. The tag key can be up to 128 characters and must
    #   not start with `aws:`. The tag value can be up to 256 characters.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To tag an application
    #
    #   # The following tag-resource example tags an application resource.
    #
    #   resp = client.tag_resource({
    #     resource_arn: "arn:aws:appconfig:us-east-1:111122223333:application/339ohji", 
    #     tags: {
    #       "group1" => "1", 
    #     }, 
    #   })
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Deletes a tag key and value from an AppConfig resource.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource for which to remove tags.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The tag keys to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To remove a tag from an application
    #
    #   # The following untag-resource example removes the group1 tag from the specified application.
    #
    #   resp = client.untag_resource({
    #     resource_arn: "arn:aws:appconfig:us-east-1:111122223333:application/339ohji", 
    #     tag_keys: [
    #       "group1", 
    #     ], 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "Arn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates an application.
    #
    # @option params [required, String] :application_id
    #   The application ID.
    #
    # @option params [String] :name
    #   The name of the application.
    #
    # @option params [String] :description
    #   A description of the application.
    #
    # @return [Types::Application] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Application#id #id} => String
    #   * {Types::Application#name #name} => String
    #   * {Types::Application#description #description} => String
    #
    #
    # @example Example: To update an application
    #
    #   # The following update-application example updates the name of the specified application.
    #
    #   resp = client.update_application({
    #     application_id: "339ohji", 
    #     description: "", 
    #     name: "Example-Application", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     description: "An application used for creating an example.", 
    #     id: "339ohji", 
    #     name: "Example-Application", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_application({
    #     application_id: "Id", # required
    #     name: "Name",
    #     description: "Description",
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/UpdateApplication AWS API Documentation
    #
    # @overload update_application(params = {})
    # @param [Hash] params ({})
    def update_application(params = {}, options = {})
      req = build_request(:update_application, params)
      req.send_request(options)
    end

    # Updates a configuration profile.
    #
    # @option params [required, String] :application_id
    #   The application ID.
    #
    # @option params [required, String] :configuration_profile_id
    #   The ID of the configuration profile.
    #
    # @option params [String] :name
    #   The name of the configuration profile.
    #
    # @option params [String] :description
    #   A description of the configuration profile.
    #
    # @option params [String] :retrieval_role_arn
    #   The ARN of an IAM role with permission to access the configuration at
    #   the specified `LocationUri`.
    #
    # @option params [Array<Types::Validator>] :validators
    #   A list of methods for validating the configuration.
    #
    # @return [Types::ConfigurationProfile] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ConfigurationProfile#application_id #application_id} => String
    #   * {Types::ConfigurationProfile#id #id} => String
    #   * {Types::ConfigurationProfile#name #name} => String
    #   * {Types::ConfigurationProfile#description #description} => String
    #   * {Types::ConfigurationProfile#location_uri #location_uri} => String
    #   * {Types::ConfigurationProfile#retrieval_role_arn #retrieval_role_arn} => String
    #   * {Types::ConfigurationProfile#validators #validators} => Array&lt;Types::Validator&gt;
    #   * {Types::ConfigurationProfile#type #type} => String
    #
    #
    # @example Example: To update a configuration profile
    #
    #   # The following update-configuration-profile example updates the description of the specified configuration profile.
    #
    #   resp = client.update_configuration_profile({
    #     application_id: "339ohji", 
    #     configuration_profile_id: "ur8hx2f", 
    #     description: "Configuration profile used for examples.", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     application_id: "339ohji", 
    #     description: "Configuration profile used for examples.", 
    #     id: "ur8hx2f", 
    #     location_uri: "ssm-parameter://Example-Parameter", 
    #     name: "Example-Configuration-Profile", 
    #     retrieval_role_arn: "arn:aws:iam::111122223333:role/Example-App-Config-Role", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_configuration_profile({
    #     application_id: "Id", # required
    #     configuration_profile_id: "Id", # required
    #     name: "Name",
    #     description: "Description",
    #     retrieval_role_arn: "RoleArn",
    #     validators: [
    #       {
    #         type: "JSON_SCHEMA", # required, accepts JSON_SCHEMA, LAMBDA
    #         content: "StringWithLengthBetween0And32768", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.application_id #=> String
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.location_uri #=> String
    #   resp.retrieval_role_arn #=> String
    #   resp.validators #=> Array
    #   resp.validators[0].type #=> String, one of "JSON_SCHEMA", "LAMBDA"
    #   resp.validators[0].content #=> String
    #   resp.type #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/UpdateConfigurationProfile AWS API Documentation
    #
    # @overload update_configuration_profile(params = {})
    # @param [Hash] params ({})
    def update_configuration_profile(params = {}, options = {})
      req = build_request(:update_configuration_profile, params)
      req.send_request(options)
    end

    # Updates a deployment strategy.
    #
    # @option params [required, String] :deployment_strategy_id
    #   The deployment strategy ID.
    #
    # @option params [String] :description
    #   A description of the deployment strategy.
    #
    # @option params [Integer] :deployment_duration_in_minutes
    #   Total amount of time for a deployment to last.
    #
    # @option params [Integer] :final_bake_time_in_minutes
    #   The amount of time that AppConfig monitors for alarms before
    #   considering the deployment to be complete and no longer eligible for
    #   automatic rollback.
    #
    # @option params [Float] :growth_factor
    #   The percentage of targets to receive a deployed configuration during
    #   each interval.
    #
    # @option params [String] :growth_type
    #   The algorithm used to define how percentage grows over time. AppConfig
    #   supports the following growth types:
    #
    #   **Linear**: For this type, AppConfig processes the deployment by
    #   increments of the growth factor evenly distributed over the deployment
    #   time. For example, a linear deployment that uses a growth factor of 20
    #   initially makes the configuration available to 20 percent of the
    #   targets. After 1/5th of the deployment time has passed, the system
    #   updates the percentage to 40 percent. This continues until 100% of the
    #   targets are set to receive the deployed configuration.
    #
    #   **Exponential**: For this type, AppConfig processes the deployment
    #   exponentially using the following formula: `G*(2^N)`. In this formula,
    #   `G` is the growth factor specified by the user and `N` is the number
    #   of steps until the configuration is deployed to all targets. For
    #   example, if you specify a growth factor of 2, then the system rolls
    #   out the configuration as follows:
    #
    #   `2*(2^0)`
    #
    #   `2*(2^1)`
    #
    #   `2*(2^2)`
    #
    #   Expressed numerically, the deployment rolls out as follows: 2% of the
    #   targets, 4% of the targets, 8% of the targets, and continues until the
    #   configuration has been deployed to all targets.
    #
    # @return [Types::DeploymentStrategy] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeploymentStrategy#id #id} => String
    #   * {Types::DeploymentStrategy#name #name} => String
    #   * {Types::DeploymentStrategy#description #description} => String
    #   * {Types::DeploymentStrategy#deployment_duration_in_minutes #deployment_duration_in_minutes} => Integer
    #   * {Types::DeploymentStrategy#growth_type #growth_type} => String
    #   * {Types::DeploymentStrategy#growth_factor #growth_factor} => Float
    #   * {Types::DeploymentStrategy#final_bake_time_in_minutes #final_bake_time_in_minutes} => Integer
    #   * {Types::DeploymentStrategy#replicate_to #replicate_to} => String
    #
    #
    # @example Example: To update a deployment strategy
    #
    #   # The following update-deployment-strategy example updates final bake time to 20 minutes in the specified deployment
    #   # strategy. ::
    #
    #   resp = client.update_deployment_strategy({
    #     deployment_strategy_id: "1225qzk", 
    #     final_bake_time_in_minutes: 20, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     deployment_duration_in_minutes: 15, 
    #     final_bake_time_in_minutes: 20, 
    #     growth_factor: 25, 
    #     growth_type: "LINEAR", 
    #     id: "1225qzk", 
    #     name: "Example-Deployment", 
    #     replicate_to: "SSM_DOCUMENT", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_deployment_strategy({
    #     deployment_strategy_id: "DeploymentStrategyId", # required
    #     description: "Description",
    #     deployment_duration_in_minutes: 1,
    #     final_bake_time_in_minutes: 1,
    #     growth_factor: 1.0,
    #     growth_type: "LINEAR", # accepts LINEAR, EXPONENTIAL
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.deployment_duration_in_minutes #=> Integer
    #   resp.growth_type #=> String, one of "LINEAR", "EXPONENTIAL"
    #   resp.growth_factor #=> Float
    #   resp.final_bake_time_in_minutes #=> Integer
    #   resp.replicate_to #=> String, one of "NONE", "SSM_DOCUMENT"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/UpdateDeploymentStrategy AWS API Documentation
    #
    # @overload update_deployment_strategy(params = {})
    # @param [Hash] params ({})
    def update_deployment_strategy(params = {}, options = {})
      req = build_request(:update_deployment_strategy, params)
      req.send_request(options)
    end

    # Updates an environment.
    #
    # @option params [required, String] :application_id
    #   The application ID.
    #
    # @option params [required, String] :environment_id
    #   The environment ID.
    #
    # @option params [String] :name
    #   The name of the environment.
    #
    # @option params [String] :description
    #   A description of the environment.
    #
    # @option params [Array<Types::Monitor>] :monitors
    #   Amazon CloudWatch alarms to monitor during the deployment process.
    #
    # @return [Types::Environment] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Environment#application_id #application_id} => String
    #   * {Types::Environment#id #id} => String
    #   * {Types::Environment#name #name} => String
    #   * {Types::Environment#description #description} => String
    #   * {Types::Environment#state #state} => String
    #   * {Types::Environment#monitors #monitors} => Array&lt;Types::Monitor&gt;
    #
    #
    # @example Example: To update an environment
    #
    #   # The following update-environment example updates an environment's description.
    #
    #   resp = client.update_environment({
    #     application_id: "339ohji", 
    #     description: "An environment for examples.", 
    #     environment_id: "54j1r29", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     application_id: "339ohji", 
    #     description: "An environment for examples.", 
    #     id: "54j1r29", 
    #     name: "Example-Environment", 
    #     state: "ROLLED_BACK", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_environment({
    #     application_id: "Id", # required
    #     environment_id: "Id", # required
    #     name: "Name",
    #     description: "Description",
    #     monitors: [
    #       {
    #         alarm_arn: "StringWithLengthBetween1And2048", # required
    #         alarm_role_arn: "RoleArn",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.application_id #=> String
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.state #=> String, one of "READY_FOR_DEPLOYMENT", "DEPLOYING", "ROLLING_BACK", "ROLLED_BACK"
    #   resp.monitors #=> Array
    #   resp.monitors[0].alarm_arn #=> String
    #   resp.monitors[0].alarm_role_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/UpdateEnvironment AWS API Documentation
    #
    # @overload update_environment(params = {})
    # @param [Hash] params ({})
    def update_environment(params = {}, options = {})
      req = build_request(:update_environment, params)
      req.send_request(options)
    end

    # Updates an AppConfig extension. For more information about extensions,
    # see [Working with AppConfig extensions][1] in the *AppConfig User
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/appconfig/latest/userguide/working-with-appconfig-extensions.html
    #
    # @option params [required, String] :extension_identifier
    #   The name, the ID, or the Amazon Resource Name (ARN) of the extension.
    #
    # @option params [String] :description
    #   Information about the extension.
    #
    # @option params [Hash<String,Array>] :actions
    #   The actions defined in the extension.
    #
    # @option params [Hash<String,Types::Parameter>] :parameters
    #   One or more parameters for the actions called by the extension.
    #
    # @option params [Integer] :version_number
    #   The extension version number.
    #
    # @return [Types::Extension] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Extension#id #id} => String
    #   * {Types::Extension#name #name} => String
    #   * {Types::Extension#version_number #version_number} => Integer
    #   * {Types::Extension#arn #arn} => String
    #   * {Types::Extension#description #description} => String
    #   * {Types::Extension#actions #actions} => Hash&lt;String,Array&lt;Types::Action&gt;&gt;
    #   * {Types::Extension#parameters #parameters} => Hash&lt;String,Types::Parameter&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_extension({
    #     extension_identifier: "Identifier", # required
    #     description: "Description",
    #     actions: {
    #       "PRE_CREATE_HOSTED_CONFIGURATION_VERSION" => [
    #         {
    #           name: "Name",
    #           description: "Description",
    #           uri: "Uri",
    #           role_arn: "Arn",
    #         },
    #       ],
    #     },
    #     parameters: {
    #       "Name" => {
    #         description: "Description",
    #         required: false,
    #       },
    #     },
    #     version_number: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.version_number #=> Integer
    #   resp.arn #=> String
    #   resp.description #=> String
    #   resp.actions #=> Hash
    #   resp.actions["ActionPoint"] #=> Array
    #   resp.actions["ActionPoint"][0].name #=> String
    #   resp.actions["ActionPoint"][0].description #=> String
    #   resp.actions["ActionPoint"][0].uri #=> String
    #   resp.actions["ActionPoint"][0].role_arn #=> String
    #   resp.parameters #=> Hash
    #   resp.parameters["Name"].description #=> String
    #   resp.parameters["Name"].required #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/UpdateExtension AWS API Documentation
    #
    # @overload update_extension(params = {})
    # @param [Hash] params ({})
    def update_extension(params = {}, options = {})
      req = build_request(:update_extension, params)
      req.send_request(options)
    end

    # Updates an association. For more information about extensions and
    # associations, see [Working with AppConfig extensions][1] in the
    # *AppConfig User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/appconfig/latest/userguide/working-with-appconfig-extensions.html
    #
    # @option params [required, String] :extension_association_id
    #   The system-generated ID for the association.
    #
    # @option params [Hash<String,String>] :parameters
    #   The parameter names and values defined in the extension.
    #
    # @return [Types::ExtensionAssociation] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ExtensionAssociation#id #id} => String
    #   * {Types::ExtensionAssociation#extension_arn #extension_arn} => String
    #   * {Types::ExtensionAssociation#resource_arn #resource_arn} => String
    #   * {Types::ExtensionAssociation#arn #arn} => String
    #   * {Types::ExtensionAssociation#parameters #parameters} => Hash&lt;String,String&gt;
    #   * {Types::ExtensionAssociation#extension_version_number #extension_version_number} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_extension_association({
    #     extension_association_id: "Id", # required
    #     parameters: {
    #       "Name" => "StringWithLengthBetween1And2048",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.extension_arn #=> String
    #   resp.resource_arn #=> String
    #   resp.arn #=> String
    #   resp.parameters #=> Hash
    #   resp.parameters["Name"] #=> String
    #   resp.extension_version_number #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/UpdateExtensionAssociation AWS API Documentation
    #
    # @overload update_extension_association(params = {})
    # @param [Hash] params ({})
    def update_extension_association(params = {}, options = {})
      req = build_request(:update_extension_association, params)
      req.send_request(options)
    end

    # Uses the validators in a configuration profile to validate a
    # configuration.
    #
    # @option params [required, String] :application_id
    #   The application ID.
    #
    # @option params [required, String] :configuration_profile_id
    #   The configuration profile ID.
    #
    # @option params [required, String] :configuration_version
    #   The version of the configuration to validate.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To validate a configuration
    #
    #   # The following validate-configuration example uses the validators in a configuration profile to validate a configuration.
    #
    #   resp = client.validate_configuration({
    #     application_id: "abc1234", 
    #     configuration_profile_id: "ur8hx2f", 
    #     configuration_version: "1", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.validate_configuration({
    #     application_id: "Id", # required
    #     configuration_profile_id: "Id", # required
    #     configuration_version: "Version", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/ValidateConfiguration AWS API Documentation
    #
    # @overload validate_configuration(params = {})
    # @param [Hash] params ({})
    def validate_configuration(params = {}, options = {})
      req = build_request(:validate_configuration, params)
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
      context[:gem_name] = 'aws-sdk-appconfig'
      context[:gem_version] = '1.35.0'
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
