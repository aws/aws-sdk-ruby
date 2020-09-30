# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
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
require 'aws-sdk-core/plugins/signature_v4.rb'
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
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::RestJson)

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
    #       enable retries and extended timeouts.
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
    #   @option options [Boolean] :validate_params (true)
    #     When `true`, request parameters are validated before
    #     sending the request.
    #
    #   @option options [URI::HTTP,String] :http_proxy A proxy to send
    #     requests through.  Formatted like 'http://proxy.com:123'.
    #
    #   @option options [Float] :http_open_timeout (15) The number of
    #     seconds to wait when opening a HTTP session before raising a
    #     `Timeout::Error`.
    #
    #   @option options [Integer] :http_read_timeout (60) The default
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

    # An application in AppConfig is a logical unit of code that provides
    # capabilities for your customers. For example, an application can be a
    # microservice that runs on Amazon EC2 instances, a mobile application
    # installed by your users, a serverless application using Amazon API
    # Gateway and AWS Lambda, or any system you run on behalf of others.
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

    # Information that enables AppConfig to access the configuration source.
    # Valid configuration sources include Systems Manager (SSM) documents,
    # SSM Parameter Store parameters, and Amazon S3 objects. A configuration
    # profile includes the following information.
    #
    # * The Uri location of the configuration data.
    #
    # * The AWS Identity and Access Management (IAM) role that provides
    #   access to the configuration data.
    #
    # * A validator for the configuration data. Available validators include
    #   either a JSON Schema or an AWS Lambda function.
    #
    # For more information, see [Create a Configuration and a Configuration
    # Profile][1] in the *AWS AppConfig User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/systems-manager/latest/userguide/appconfig-creating-configuration-and-profile.html
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
    #   A URI to locate the configuration. You can specify a Systems Manager
    #   (SSM) document, an SSM Parameter Store parameter, or an Amazon S3
    #   object. For an SSM document, specify either the document name in the
    #   format `ssm-document://<Document_name>` or the Amazon Resource Name
    #   (ARN). For a parameter, specify either the parameter name in the
    #   format `ssm-parameter://<Parameter_name>` or the ARN. For an Amazon S3
    #   object, specify the URI in the following format:
    #   `s3://<bucket>/<objectKey> `. Here is an example:
    #   s3://my-bucket/my-app/us-east-1/my-config.json
    #
    # @option params [String] :retrieval_role_arn
    #   The ARN of an IAM role with permission to access the configuration at
    #   the specified LocationUri.
    #
    # @option params [Array<Types::Validator>] :validators
    #   A list of methods for validating the configuration.
    #
    # @option params [Hash<String,String>] :tags
    #   Metadata to assign to the configuration profile. Tags help organize
    #   and categorize your AppConfig resources. Each tag consists of a key
    #   and an optional value, both of which you define.
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
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_configuration_profile({
    #     application_id: "Id", # required
    #     name: "Name", # required
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/CreateConfigurationProfile AWS API Documentation
    #
    # @overload create_configuration_profile(params = {})
    # @param [Hash] params ({})
    def create_configuration_profile(params = {}, options = {})
      req = build_request(:create_configuration_profile, params)
      req.send_request(options)
    end

    # A deployment strategy defines important criteria for rolling out your
    # configuration to the designated targets. A deployment strategy
    # includes: the overall duration required, a percentage of targets to
    # receive the deployment during each interval, an algorithm that defines
    # how percentage grows, and bake time.
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
    #   The amount of time AppConfig monitors for alarms before considering
    #   the deployment to be complete and no longer eligible for automatic
    #   roll back.
    #
    # @option params [required, Float] :growth_factor
    #   The percentage of targets to receive a deployed configuration during
    #   each interval.
    #
    # @option params [String] :growth_type
    #   The algorithm used to define how percentage grows over time. AWS
    #   AppConfig supports the following growth types:
    #
    #   **Linear**\: For this type, AppConfig processes the deployment by
    #   dividing the total number of targets by the value specified for `Step
    #   percentage`. For example, a linear deployment that uses a `Step
    #   percentage` of 10 deploys the configuration to 10 percent of the
    #   hosts. After those deployments are complete, the system deploys the
    #   configuration to the next 10 percent. This continues until 100% of the
    #   targets have successfully received the configuration.
    #
    #   **Exponential**\: For this type, AppConfig processes the deployment
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
    # @option params [required, String] :replicate_to
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
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_deployment_strategy({
    #     name: "Name", # required
    #     description: "Description",
    #     deployment_duration_in_minutes: 1, # required
    #     final_bake_time_in_minutes: 1,
    #     growth_factor: 1.0, # required
    #     growth_type: "LINEAR", # accepts LINEAR, EXPONENTIAL
    #     replicate_to: "NONE", # required, accepts NONE, SSM_DOCUMENT
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

    # For each application, you define one or more environments. An
    # environment is a logical deployment group of AppConfig targets, such
    # as applications in a `Beta` or `Production` environment. You can also
    # define environments for application subcomponents such as the `Web`,
    # `Mobile` and `Back-end` components for your application. You can
    # configure Amazon CloudWatch alarms for each environment. The system
    # monitors alarms during a configuration deployment. If an alarm is
    # triggered, the system rolls back the configuration.
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
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_environment({
    #     application_id: "Id", # required
    #     name: "Name", # required
    #     description: "Description",
    #     monitors: [
    #       {
    #         alarm_arn: "Arn",
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

    # Create a new configuration in the AppConfig configuration store.
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
    #   [1]: https://docs.aws.amazon.com/https:/www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.17
    #
    # @option params [Integer] :latest_version_number
    #   An optional locking token used to prevent race conditions from
    #   overwriting configuration updates when creating a new version. To
    #   ensure your data is not overwritten when creating multiple hosted
    #   configuration versions in rapid succession, specify the version of the
    #   latest hosted configuration version.
    #
    # @return [Types::HostedConfigurationVersion] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::HostedConfigurationVersion#application_id #application_id} => String
    #   * {Types::HostedConfigurationVersion#configuration_profile_id #configuration_profile_id} => String
    #   * {Types::HostedConfigurationVersion#version_number #version_number} => Integer
    #   * {Types::HostedConfigurationVersion#description #description} => String
    #   * {Types::HostedConfigurationVersion#content #content} => String
    #   * {Types::HostedConfigurationVersion#content_type #content_type} => String
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/CreateHostedConfigurationVersion AWS API Documentation
    #
    # @overload create_hosted_configuration_version(params = {})
    # @param [Hash] params ({})
    def create_hosted_configuration_version(params = {}, options = {})
      req = build_request(:create_hosted_configuration_version, params)
      req.send_request(options)
    end

    # Delete an application. Deleting an application does not delete a
    # configuration from a host.
    #
    # @option params [required, String] :application_id
    #   The ID of the application to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
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

    # Delete a configuration profile. Deleting a configuration profile does
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

    # Delete a deployment strategy. Deleting a deployment strategy does not
    # delete a configuration from a host.
    #
    # @option params [required, String] :deployment_strategy_id
    #   The ID of the deployment strategy you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
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

    # Delete an environment. Deleting an environment does not delete a
    # configuration from a host.
    #
    # @option params [required, String] :application_id
    #   The application ID that includes the environment you want to delete.
    #
    # @option params [required, String] :environment_id
    #   The ID of the environment you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
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

    # Delete a version of a configuration from the AppConfig configuration
    # store.
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

    # Retrieve information about an application.
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

    # Receive information about a configuration.
    #
    # AWS AppConfig uses the value of the `ClientConfigurationVersion`
    # parameter to identify the configuration version on your clients. If
    # you don’t send `ClientConfigurationVersion` with each call to
    # `GetConfiguration`, your clients receive the current configuration.
    # You are charged each time your clients receive a configuration.
    #
    #  To avoid excess charges, we recommend that you include the
    # `ClientConfigurationVersion` value with every call to
    # `GetConfiguration`. This value must be saved on your client.
    # Subsequent calls to `GetConfiguration` must pass this value by using
    # the `ClientConfigurationVersion` parameter.
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
    #   A unique ID to identify the client for the configuration. This ID
    #   enables AppConfig to deploy the configuration in intervals, as defined
    #   in the deployment strategy.
    #
    # @option params [String] :client_configuration_version
    #   The configuration version returned in the most recent
    #   `GetConfiguration` response.
    #
    #   AWS AppConfig uses the value of the `ClientConfigurationVersion`
    #   parameter to identify the configuration version on your clients. If
    #   you don’t send `ClientConfigurationVersion` with each call to
    #   `GetConfiguration`, your clients receive the current configuration.
    #   You are charged each time your clients receive a configuration.
    #
    #    To avoid excess charges, we recommend that you include the
    #   `ClientConfigurationVersion` value with every call to
    #   `GetConfiguration`. This value must be saved on your client.
    #   Subsequent calls to `GetConfiguration` must pass this value by using
    #   the `ClientConfigurationVersion` parameter.
    #
    #   For more information about working with configurations, see
    #   [Retrieving the Configuration][1] in the *AWS AppConfig User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/appconfig-retrieving-the-configuration.html
    #
    # @return [Types::Configuration] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Configuration#content #content} => String
    #   * {Types::Configuration#configuration_version #configuration_version} => String
    #   * {Types::Configuration#content_type #content_type} => String
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

    # Retrieve information about a configuration profile.
    #
    # @option params [required, String] :application_id
    #   The ID of the application that includes the configuration profile you
    #   want to get.
    #
    # @option params [required, String] :configuration_profile_id
    #   The ID of the configuration profile you want to get.
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/GetConfigurationProfile AWS API Documentation
    #
    # @overload get_configuration_profile(params = {})
    # @param [Hash] params ({})
    def get_configuration_profile(params = {}, options = {})
      req = build_request(:get_configuration_profile, params)
      req.send_request(options)
    end

    # Retrieve information about a configuration deployment.
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
    #   resp.event_log[0].occurred_at #=> Time
    #   resp.percentage_complete #=> Float
    #   resp.started_at #=> Time
    #   resp.completed_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/GetDeployment AWS API Documentation
    #
    # @overload get_deployment(params = {})
    # @param [Hash] params ({})
    def get_deployment(params = {}, options = {})
      req = build_request(:get_deployment, params)
      req.send_request(options)
    end

    # Retrieve information about a deployment strategy. A deployment
    # strategy defines important criteria for rolling out your configuration
    # to the designated targets. A deployment strategy includes: the overall
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

    # Retrieve information about an environment. An environment is a logical
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
    #   The ID of the environment you wnat to get.
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

    # Get information about a specific configuration version.
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/GetHostedConfigurationVersion AWS API Documentation
    #
    # @overload get_hosted_configuration_version(params = {})
    # @param [Hash] params ({})
    def get_hosted_configuration_version(params = {}, options = {})
      req = build_request(:get_hosted_configuration_version, params)
      req.send_request(options)
    end

    # List all applications in your AWS account.
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
    # @return [Types::Applications] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Applications#items #items} => Array&lt;Types::Application&gt;
    #   * {Types::Applications#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
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
    # @return [Types::ConfigurationProfiles] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ConfigurationProfiles#items #items} => Array&lt;Types::ConfigurationProfileSummary&gt;
    #   * {Types::ConfigurationProfiles#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_configuration_profiles({
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
    #   resp.items[0].location_uri #=> String
    #   resp.items[0].validator_types #=> Array
    #   resp.items[0].validator_types[0] #=> String, one of "JSON_SCHEMA", "LAMBDA"
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

    # List deployment strategies.
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

    # Lists the deployments for an environment.
    #
    # @option params [required, String] :application_id
    #   The application ID.
    #
    # @option params [required, String] :environment_id
    #   The environment ID.
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
    # @return [Types::Deployments] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Deployments#items #items} => Array&lt;Types::DeploymentSummary&gt;
    #   * {Types::Deployments#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
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

    # List the environments for an application.
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

    # View a list of configurations stored in the AppConfig configuration
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
    # @return [Types::HostedConfigurationVersions] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::HostedConfigurationVersions#items #items} => Array&lt;Types::HostedConfigurationVersionSummary&gt;
    #   * {Types::HostedConfigurationVersions#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_hosted_configuration_versions({
    #     application_id: "Id", # required
    #     configuration_profile_id: "Id", # required
    #     max_results: 1,
    #     next_token: "NextToken",
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
    #   The configuration version to deploy.
    #
    # @option params [String] :description
    #   A description of the deployment.
    #
    # @option params [Hash<String,String>] :tags
    #   Metadata to assign to the deployment. Tags help organize and
    #   categorize your AppConfig resources. Each tag consists of a key and an
    #   optional value, both of which you define.
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
    #   resp.event_log[0].occurred_at #=> Time
    #   resp.percentage_complete #=> Float
    #   resp.started_at #=> Time
    #   resp.completed_at #=> Time
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
    #   resp.event_log[0].occurred_at #=> Time
    #   resp.percentage_complete #=> Float
    #   resp.started_at #=> Time
    #   resp.completed_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09/StopDeployment AWS API Documentation
    #
    # @overload stop_deployment(params = {})
    # @param [Hash] params ({})
    def stop_deployment(params = {}, options = {})
      req = build_request(:stop_deployment, params)
      req.send_request(options)
    end

    # Metadata to assign to an AppConfig resource. Tags help organize and
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
    #   the specified LocationUri.
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
    #   The amount of time AppConfig monitors for alarms before considering
    #   the deployment to be complete and no longer eligible for automatic
    #   roll back.
    #
    # @option params [Float] :growth_factor
    #   The percentage of targets to receive a deployed configuration during
    #   each interval.
    #
    # @option params [String] :growth_type
    #   The algorithm used to define how percentage grows over time. AWS
    #   AppConfig supports the following growth types:
    #
    #   **Linear**\: For this type, AppConfig processes the deployment by
    #   increments of the growth factor evenly distributed over the deployment
    #   time. For example, a linear deployment that uses a growth factor of 20
    #   initially makes the configuration available to 20 percent of the
    #   targets. After 1/5th of the deployment time has passed, the system
    #   updates the percentage to 40 percent. This continues until 100% of the
    #   targets are set to receive the deployed configuration.
    #
    #   **Exponential**\: For this type, AppConfig processes the deployment
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
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_environment({
    #     application_id: "Id", # required
    #     environment_id: "Id", # required
    #     name: "Name",
    #     description: "Description",
    #     monitors: [
    #       {
    #         alarm_arn: "Arn",
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
      context[:gem_version] = '1.12.0'
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
