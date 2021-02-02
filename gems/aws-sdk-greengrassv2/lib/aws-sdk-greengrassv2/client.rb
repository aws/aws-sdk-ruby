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

Aws::Plugins::GlobalConfiguration.add_identifier(:greengrassv2)

module Aws::GreengrassV2
  # An API client for GreengrassV2.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::GreengrassV2::Client.new(
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

    @identifier = :greengrassv2

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

    # Cancels a deployment. This operation cancels the deployment for
    # devices that haven't yet received it. If a device already received
    # the deployment, this operation doesn't change anything for that
    # device.
    #
    # @option params [required, String] :deployment_id
    #   The ID of the deployment.
    #
    # @return [Types::CancelDeploymentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CancelDeploymentResponse#message #message} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_deployment({
    #     deployment_id: "NonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/CancelDeployment AWS API Documentation
    #
    # @overload cancel_deployment(params = {})
    # @param [Hash] params ({})
    def cancel_deployment(params = {}, options = {})
      req = build_request(:cancel_deployment, params)
      req.send_request(options)
    end

    # Creates a component. Components are software that run on AWS IoT
    # Greengrass core devices. After you develop and test a component on
    # your core device, you can use this operation to upload your component
    # to AWS IoT Greengrass. Then, you can deploy the component to other
    # core devices.
    #
    # You can use this operation to do the following:
    #
    # * **Create components from recipes**
    #
    #   Create a component from a recipe, which is a file that defines the
    #   component's metadata, parameters, dependencies, lifecycle,
    #   artifacts, and platform capability. For more information, see [AWS
    #   IoT Greengrass component recipe reference][1] in the *AWS IoT
    #   Greengrass V2 Developer Guide*.
    #
    #   To create a component from a recipe, specify `inlineRecipe` when you
    #   call this operation.
    #
    # * **Create components from Lambda functions**
    #
    #   Create a component from an AWS Lambda function that runs on AWS IoT
    #   Greengrass. This creates a recipe and artifacts from the Lambda
    #   function's deployment package. You can use this operation to
    #   migrate Lambda functions from AWS IoT Greengrass V1 to AWS IoT
    #   Greengrass V2.
    #
    #   This function only accepts Lambda functions that use the following
    #   runtimes:
    #
    #   * Python 2.7 – `python2.7`
    #
    #   * Python 3.7 – `python3.7`
    #
    #   * Python 3.8 – `python3.8`
    #
    #   * Java 8 – `java8`
    #
    #   * Node.js 10 – `nodejs10.x`
    #
    #   * Node.js 12 – `nodejs12.x`
    #
    #   To create a component from a Lambda function, specify
    #   `lambdaFunction` when you call this operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/greengrass/v2/developerguide/component-recipe-reference.html
    #
    # @option params [String, StringIO, File] :inline_recipe
    #   The recipe to use to create the component. The recipe defines the
    #   component's metadata, parameters, dependencies, lifecycle, artifacts,
    #   and platform compatibility.
    #
    #   You must specify either `inlineRecipe` or `lambdaFunction`.
    #
    # @option params [Types::LambdaFunctionRecipeSource] :lambda_function
    #   The parameters to create a component from a Lambda function.
    #
    #   You must specify either `inlineRecipe` or `lambdaFunction`.
    #
    # @option params [Hash<String,String>] :tags
    #   A list of key-value pairs that contain metadata for the resource. For
    #   more information, see [Tag your resources][1] in the *AWS IoT
    #   Greengrass V2 Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/greengrass/v2/developerguide/tag-resources.html
    #
    # @return [Types::CreateComponentVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateComponentVersionResponse#arn #arn} => String
    #   * {Types::CreateComponentVersionResponse#component_name #component_name} => String
    #   * {Types::CreateComponentVersionResponse#component_version #component_version} => String
    #   * {Types::CreateComponentVersionResponse#creation_timestamp #creation_timestamp} => Time
    #   * {Types::CreateComponentVersionResponse#status #status} => Types::CloudComponentStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_component_version({
    #     inline_recipe: "data",
    #     lambda_function: {
    #       lambda_arn: "LambdaFunctionARNWithVersionNumber", # required
    #       component_name: "ComponentNameString",
    #       component_version: "ComponentVersionString",
    #       component_platforms: [
    #         {
    #           name: "NonEmptyString",
    #           attributes: {
    #             "NonEmptyString" => "NonEmptyString",
    #           },
    #         },
    #       ],
    #       component_dependencies: {
    #         "NonEmptyString" => {
    #           version_requirement: "NonEmptyString",
    #           dependency_type: "HARD", # accepts HARD, SOFT
    #         },
    #       },
    #       component_lambda_parameters: {
    #         event_sources: [
    #           {
    #             topic: "TopicString", # required
    #             type: "PUB_SUB", # required, accepts PUB_SUB, IOT_CORE
    #           },
    #         ],
    #         max_queue_size: 1,
    #         max_instances_count: 1,
    #         max_idle_time_in_seconds: 1,
    #         timeout_in_seconds: 1,
    #         status_timeout_in_seconds: 1,
    #         pinned: false,
    #         input_payload_encoding_type: "json", # accepts json, binary
    #         exec_args: ["LambdaExecArg"],
    #         environment_variables: {
    #           "NonEmptyString" => "String",
    #         },
    #         linux_process_params: {
    #           isolation_mode: "GreengrassContainer", # accepts GreengrassContainer, NoContainer
    #           container_params: {
    #             memory_size_in_kb: 1,
    #             mount_ro_sysfs: false,
    #             volumes: [
    #               {
    #                 source_path: "FileSystemPath", # required
    #                 destination_path: "FileSystemPath", # required
    #                 permission: "ro", # accepts ro, rw
    #                 add_group_owner: false,
    #               },
    #             ],
    #             devices: [
    #               {
    #                 path: "FileSystemPath", # required
    #                 permission: "ro", # accepts ro, rw
    #                 add_group_owner: false,
    #               },
    #             ],
    #           },
    #         },
    #       },
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.component_name #=> String
    #   resp.component_version #=> String
    #   resp.creation_timestamp #=> Time
    #   resp.status.component_state #=> String, one of "REQUESTED", "INITIATED", "DEPLOYABLE", "FAILED", "DEPRECATED"
    #   resp.status.message #=> String
    #   resp.status.errors #=> Hash
    #   resp.status.errors["NonEmptyString"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/CreateComponentVersion AWS API Documentation
    #
    # @overload create_component_version(params = {})
    # @param [Hash] params ({})
    def create_component_version(params = {}, options = {})
      req = build_request(:create_component_version, params)
      req.send_request(options)
    end

    # Creates a continuous deployment for a target, which is a AWS IoT
    # Greengrass core device or group of core devices. When you add a new
    # core device to a group of core devices that has a deployment, AWS IoT
    # Greengrass deploys that group's deployment to the new device.
    #
    # You can define one deployment for each target. When you create a new
    # deployment for a target that has an existing deployment, you replace
    # the previous deployment. AWS IoT Greengrass applies the new deployment
    # to the target devices.
    #
    # Every deployment has a revision number that indicates how many
    # deployment revisions you define for a target. Use this operation to
    # create a new revision of an existing deployment. This operation
    # returns the revision number of the new deployment when you create it.
    #
    # For more information, see the [Create deployments][1] in the *AWS IoT
    # Greengrass V2 Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/greengrass/v2/developerguide/create-deployments.html
    #
    # @option params [required, String] :target_arn
    #   The [ARN][1] of the target AWS IoT thing or thing group.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [String] :deployment_name
    #   The name of the deployment.
    #
    #   You can create deployments without names. If you create a deployment
    #   without a name, the AWS IoT Greengrass V2 console shows the deployment
    #   name as `<targetType>:<targetName>`, where `targetType` and
    #   `targetName` are the type and name of the deployment target.
    #
    # @option params [Hash<String,Types::ComponentDeploymentSpecification>] :components
    #   The components to deploy. This is a dictionary, where each key is the
    #   name of a component, and each key's value is the version and
    #   configuration to deploy for that component.
    #
    # @option params [Types::DeploymentIoTJobConfiguration] :iot_job_configuration
    #   The job configuration for the deployment configuration. The job
    #   configuration specifies the rollout, timeout, and stop configurations
    #   for the deployment configuration.
    #
    # @option params [Types::DeploymentPolicies] :deployment_policies
    #   The deployment policies for the deployment. These policies define how
    #   the deployment updates components and handles failure.
    #
    # @option params [Hash<String,String>] :tags
    #   A list of key-value pairs that contain metadata for the resource. For
    #   more information, see [Tag your resources][1] in the *AWS IoT
    #   Greengrass V2 Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/greengrass/v2/developerguide/tag-resources.html
    #
    # @return [Types::CreateDeploymentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDeploymentResponse#deployment_id #deployment_id} => String
    #   * {Types::CreateDeploymentResponse#iot_job_id #iot_job_id} => String
    #   * {Types::CreateDeploymentResponse#iot_job_arn #iot_job_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_deployment({
    #     target_arn: "TargetARN", # required
    #     deployment_name: "NonEmptyString",
    #     components: {
    #       "NonEmptyString" => {
    #         component_version: "ComponentVersionString",
    #         configuration_update: {
    #           merge: "ComponentConfigurationString",
    #           reset: ["ComponentConfigurationPath"],
    #         },
    #         run_with: {
    #           posix_user: "NonEmptyString",
    #         },
    #       },
    #     },
    #     iot_job_configuration: {
    #       job_executions_rollout_config: {
    #         exponential_rate: {
    #           base_rate_per_minute: 1, # required
    #           increment_factor: 1.0, # required
    #           rate_increase_criteria: { # required
    #             number_of_notified_things: 1,
    #             number_of_succeeded_things: 1,
    #           },
    #         },
    #         maximum_per_minute: 1,
    #       },
    #       abort_config: {
    #         criteria_list: [ # required
    #           {
    #             failure_type: "FAILED", # required, accepts FAILED, REJECTED, TIMED_OUT, ALL
    #             action: "CANCEL", # required, accepts CANCEL
    #             threshold_percentage: 1.0, # required
    #             min_number_of_executed_things: 1, # required
    #           },
    #         ],
    #       },
    #       timeout_config: {
    #         in_progress_timeout_in_minutes: 1,
    #       },
    #     },
    #     deployment_policies: {
    #       failure_handling_policy: "ROLLBACK", # accepts ROLLBACK, DO_NOTHING
    #       component_update_policy: {
    #         timeout_in_seconds: 1,
    #         action: "NOTIFY_COMPONENTS", # accepts NOTIFY_COMPONENTS, SKIP_NOTIFY_COMPONENTS
    #       },
    #       configuration_validation_policy: {
    #         timeout_in_seconds: 1,
    #       },
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.deployment_id #=> String
    #   resp.iot_job_id #=> String
    #   resp.iot_job_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/CreateDeployment AWS API Documentation
    #
    # @overload create_deployment(params = {})
    # @param [Hash] params ({})
    def create_deployment(params = {}, options = {})
      req = build_request(:create_deployment, params)
      req.send_request(options)
    end

    # Deletes a version of a component from AWS IoT Greengrass.
    #
    # <note markdown="1"> This operation deletes the component's recipe and artifacts. As a
    # result, deployments that refer to this component version will fail. If
    # you have deployments that use this component version, you can remove
    # the component from the deployment or update the deployment to use a
    # valid version.
    #
    #  </note>
    #
    # @option params [required, String] :arn
    #   The [ARN][1] of the component version.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_component({
    #     arn: "ComponentVersionARN", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/DeleteComponent AWS API Documentation
    #
    # @overload delete_component(params = {})
    # @param [Hash] params ({})
    def delete_component(params = {}, options = {})
      req = build_request(:delete_component, params)
      req.send_request(options)
    end

    # Deletes a AWS IoT Greengrass core device, which is an AWS IoT thing.
    # This operation removes the core device from the list of core devices.
    # This operation doesn't delete the AWS IoT thing. For more information
    # about how to delete the AWS IoT thing, see [DeleteThing][1] in the
    # *AWS IoT API Reference*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot/latest/apireference/API_DeleteThing.html
    #
    # @option params [required, String] :core_device_thing_name
    #   The name of the core device. This is also the name of the AWS IoT
    #   thing.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_core_device({
    #     core_device_thing_name: "CoreDeviceThingName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/DeleteCoreDevice AWS API Documentation
    #
    # @overload delete_core_device(params = {})
    # @param [Hash] params ({})
    def delete_core_device(params = {}, options = {})
      req = build_request(:delete_core_device, params)
      req.send_request(options)
    end

    # Retrieves metadata for a version of a component.
    #
    # @option params [required, String] :arn
    #   The [ARN][1] of the component version.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @return [Types::DescribeComponentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeComponentResponse#arn #arn} => String
    #   * {Types::DescribeComponentResponse#component_name #component_name} => String
    #   * {Types::DescribeComponentResponse#component_version #component_version} => String
    #   * {Types::DescribeComponentResponse#creation_timestamp #creation_timestamp} => Time
    #   * {Types::DescribeComponentResponse#publisher #publisher} => String
    #   * {Types::DescribeComponentResponse#description #description} => String
    #   * {Types::DescribeComponentResponse#status #status} => Types::CloudComponentStatus
    #   * {Types::DescribeComponentResponse#platforms #platforms} => Array&lt;Types::ComponentPlatform&gt;
    #   * {Types::DescribeComponentResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_component({
    #     arn: "ComponentVersionARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.component_name #=> String
    #   resp.component_version #=> String
    #   resp.creation_timestamp #=> Time
    #   resp.publisher #=> String
    #   resp.description #=> String
    #   resp.status.component_state #=> String, one of "REQUESTED", "INITIATED", "DEPLOYABLE", "FAILED", "DEPRECATED"
    #   resp.status.message #=> String
    #   resp.status.errors #=> Hash
    #   resp.status.errors["NonEmptyString"] #=> String
    #   resp.platforms #=> Array
    #   resp.platforms[0].name #=> String
    #   resp.platforms[0].attributes #=> Hash
    #   resp.platforms[0].attributes["NonEmptyString"] #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/DescribeComponent AWS API Documentation
    #
    # @overload describe_component(params = {})
    # @param [Hash] params ({})
    def describe_component(params = {}, options = {})
      req = build_request(:describe_component, params)
      req.send_request(options)
    end

    # Gets the recipe for a version of a component. Core devices can call
    # this operation to identify the artifacts and requirements to install a
    # component.
    #
    # @option params [String] :recipe_output_format
    #   The format of the recipe.
    #
    # @option params [required, String] :arn
    #   The [ARN][1] of the component version.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @return [Types::GetComponentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetComponentResponse#recipe_output_format #recipe_output_format} => String
    #   * {Types::GetComponentResponse#recipe #recipe} => String
    #   * {Types::GetComponentResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_component({
    #     recipe_output_format: "JSON", # accepts JSON, YAML
    #     arn: "ComponentVersionARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.recipe_output_format #=> String, one of "JSON", "YAML"
    #   resp.recipe #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/GetComponent AWS API Documentation
    #
    # @overload get_component(params = {})
    # @param [Hash] params ({})
    def get_component(params = {}, options = {})
      req = build_request(:get_component, params)
      req.send_request(options)
    end

    # Gets the pre-signed URL to download a public component artifact. Core
    # devices call this operation to identify the URL that they can use to
    # download an artifact to install.
    #
    # @option params [required, String] :arn
    #   The [ARN][1] of the component version. Specify the ARN of a public
    #   component version.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [required, String] :artifact_name
    #   The name of the artifact.
    #
    #   You can use the [GetComponent][1] operation to download the component
    #   recipe, which includes the URI of the artifact. The artifact name is
    #   the section of the URI after the scheme. For example, in the artifact
    #   URI `greengrass:SomeArtifact.zip`, the artifact name is
    #   `SomeArtifact.zip`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/greengrass/v2/APIReference/API_GetComponent.html
    #
    # @return [Types::GetComponentVersionArtifactResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetComponentVersionArtifactResponse#pre_signed_url #pre_signed_url} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_component_version_artifact({
    #     arn: "ComponentVersionARN", # required
    #     artifact_name: "NonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.pre_signed_url #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/GetComponentVersionArtifact AWS API Documentation
    #
    # @overload get_component_version_artifact(params = {})
    # @param [Hash] params ({})
    def get_component_version_artifact(params = {}, options = {})
      req = build_request(:get_component_version_artifact, params)
      req.send_request(options)
    end

    # Retrieves metadata for a AWS IoT Greengrass core device.
    #
    # @option params [required, String] :core_device_thing_name
    #   The name of the core device. This is also the name of the AWS IoT
    #   thing.
    #
    # @return [Types::GetCoreDeviceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCoreDeviceResponse#core_device_thing_name #core_device_thing_name} => String
    #   * {Types::GetCoreDeviceResponse#core_version #core_version} => String
    #   * {Types::GetCoreDeviceResponse#platform #platform} => String
    #   * {Types::GetCoreDeviceResponse#architecture #architecture} => String
    #   * {Types::GetCoreDeviceResponse#status #status} => String
    #   * {Types::GetCoreDeviceResponse#last_status_update_timestamp #last_status_update_timestamp} => Time
    #   * {Types::GetCoreDeviceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_core_device({
    #     core_device_thing_name: "CoreDeviceThingName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.core_device_thing_name #=> String
    #   resp.core_version #=> String
    #   resp.platform #=> String
    #   resp.architecture #=> String
    #   resp.status #=> String, one of "HEALTHY", "UNHEALTHY"
    #   resp.last_status_update_timestamp #=> Time
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/GetCoreDevice AWS API Documentation
    #
    # @overload get_core_device(params = {})
    # @param [Hash] params ({})
    def get_core_device(params = {}, options = {})
      req = build_request(:get_core_device, params)
      req.send_request(options)
    end

    # Gets a deployment. Deployments define the components that run on AWS
    # IoT Greengrass core devices.
    #
    # @option params [required, String] :deployment_id
    #   The ID of the deployment.
    #
    # @return [Types::GetDeploymentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDeploymentResponse#target_arn #target_arn} => String
    #   * {Types::GetDeploymentResponse#revision_id #revision_id} => String
    #   * {Types::GetDeploymentResponse#deployment_id #deployment_id} => String
    #   * {Types::GetDeploymentResponse#deployment_name #deployment_name} => String
    #   * {Types::GetDeploymentResponse#deployment_status #deployment_status} => String
    #   * {Types::GetDeploymentResponse#iot_job_id #iot_job_id} => String
    #   * {Types::GetDeploymentResponse#iot_job_arn #iot_job_arn} => String
    #   * {Types::GetDeploymentResponse#components #components} => Hash&lt;String,Types::ComponentDeploymentSpecification&gt;
    #   * {Types::GetDeploymentResponse#deployment_policies #deployment_policies} => Types::DeploymentPolicies
    #   * {Types::GetDeploymentResponse#iot_job_configuration #iot_job_configuration} => Types::DeploymentIoTJobConfiguration
    #   * {Types::GetDeploymentResponse#creation_timestamp #creation_timestamp} => Time
    #   * {Types::GetDeploymentResponse#is_latest_for_target #is_latest_for_target} => Boolean
    #   * {Types::GetDeploymentResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_deployment({
    #     deployment_id: "NonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.target_arn #=> String
    #   resp.revision_id #=> String
    #   resp.deployment_id #=> String
    #   resp.deployment_name #=> String
    #   resp.deployment_status #=> String, one of "ACTIVE", "COMPLETED", "CANCELED", "FAILED", "INACTIVE"
    #   resp.iot_job_id #=> String
    #   resp.iot_job_arn #=> String
    #   resp.components #=> Hash
    #   resp.components["NonEmptyString"].component_version #=> String
    #   resp.components["NonEmptyString"].configuration_update.merge #=> String
    #   resp.components["NonEmptyString"].configuration_update.reset #=> Array
    #   resp.components["NonEmptyString"].configuration_update.reset[0] #=> String
    #   resp.components["NonEmptyString"].run_with.posix_user #=> String
    #   resp.deployment_policies.failure_handling_policy #=> String, one of "ROLLBACK", "DO_NOTHING"
    #   resp.deployment_policies.component_update_policy.timeout_in_seconds #=> Integer
    #   resp.deployment_policies.component_update_policy.action #=> String, one of "NOTIFY_COMPONENTS", "SKIP_NOTIFY_COMPONENTS"
    #   resp.deployment_policies.configuration_validation_policy.timeout_in_seconds #=> Integer
    #   resp.iot_job_configuration.job_executions_rollout_config.exponential_rate.base_rate_per_minute #=> Integer
    #   resp.iot_job_configuration.job_executions_rollout_config.exponential_rate.increment_factor #=> Float
    #   resp.iot_job_configuration.job_executions_rollout_config.exponential_rate.rate_increase_criteria.number_of_notified_things #=> Integer
    #   resp.iot_job_configuration.job_executions_rollout_config.exponential_rate.rate_increase_criteria.number_of_succeeded_things #=> Integer
    #   resp.iot_job_configuration.job_executions_rollout_config.maximum_per_minute #=> Integer
    #   resp.iot_job_configuration.abort_config.criteria_list #=> Array
    #   resp.iot_job_configuration.abort_config.criteria_list[0].failure_type #=> String, one of "FAILED", "REJECTED", "TIMED_OUT", "ALL"
    #   resp.iot_job_configuration.abort_config.criteria_list[0].action #=> String, one of "CANCEL"
    #   resp.iot_job_configuration.abort_config.criteria_list[0].threshold_percentage #=> Float
    #   resp.iot_job_configuration.abort_config.criteria_list[0].min_number_of_executed_things #=> Integer
    #   resp.iot_job_configuration.timeout_config.in_progress_timeout_in_minutes #=> Integer
    #   resp.creation_timestamp #=> Time
    #   resp.is_latest_for_target #=> Boolean
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/GetDeployment AWS API Documentation
    #
    # @overload get_deployment(params = {})
    # @param [Hash] params ({})
    def get_deployment(params = {}, options = {})
      req = build_request(:get_deployment, params)
      req.send_request(options)
    end

    # Retrieves a paginated list of all versions for a component.
    #
    # @option params [required, String] :arn
    #   The [ARN][1] of the component version.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned per paginated request.
    #
    # @option params [String] :next_token
    #   The token to be used for the next set of paginated results.
    #
    # @return [Types::ListComponentVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListComponentVersionsResponse#component_versions #component_versions} => Array&lt;Types::ComponentVersionListItem&gt;
    #   * {Types::ListComponentVersionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_component_versions({
    #     arn: "ComponentARN", # required
    #     max_results: 1,
    #     next_token: "NextTokenString",
    #   })
    #
    # @example Response structure
    #
    #   resp.component_versions #=> Array
    #   resp.component_versions[0].component_name #=> String
    #   resp.component_versions[0].component_version #=> String
    #   resp.component_versions[0].arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/ListComponentVersions AWS API Documentation
    #
    # @overload list_component_versions(params = {})
    # @param [Hash] params ({})
    def list_component_versions(params = {}, options = {})
      req = build_request(:list_component_versions, params)
      req.send_request(options)
    end

    # Retrieves a paginated list of component summaries. This list includes
    # components that you have permission to view.
    #
    # @option params [String] :scope
    #   The scope of the components to list.
    #
    #   Default: `PRIVATE`
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned per paginated request.
    #
    # @option params [String] :next_token
    #   The token to be used for the next set of paginated results.
    #
    # @return [Types::ListComponentsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListComponentsResponse#components #components} => Array&lt;Types::Component&gt;
    #   * {Types::ListComponentsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_components({
    #     scope: "PRIVATE", # accepts PRIVATE, PUBLIC
    #     max_results: 1,
    #     next_token: "NextTokenString",
    #   })
    #
    # @example Response structure
    #
    #   resp.components #=> Array
    #   resp.components[0].arn #=> String
    #   resp.components[0].component_name #=> String
    #   resp.components[0].latest_version.arn #=> String
    #   resp.components[0].latest_version.component_version #=> String
    #   resp.components[0].latest_version.creation_timestamp #=> Time
    #   resp.components[0].latest_version.description #=> String
    #   resp.components[0].latest_version.publisher #=> String
    #   resp.components[0].latest_version.platforms #=> Array
    #   resp.components[0].latest_version.platforms[0].name #=> String
    #   resp.components[0].latest_version.platforms[0].attributes #=> Hash
    #   resp.components[0].latest_version.platforms[0].attributes["NonEmptyString"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/ListComponents AWS API Documentation
    #
    # @overload list_components(params = {})
    # @param [Hash] params ({})
    def list_components(params = {}, options = {})
      req = build_request(:list_components, params)
      req.send_request(options)
    end

    # Retrieves a paginated list of AWS IoT Greengrass core devices.
    #
    # @option params [String] :thing_group_arn
    #   The [ARN][1] of the AWS IoT thing group by which to filter. If you
    #   specify this parameter, the list includes only core devices that are
    #   members of this thing group.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [String] :status
    #   The core device status by which to filter. If you specify this
    #   parameter, the list includes only core devices that have this status.
    #   Choose one of the following options:
    #
    #   * `HEALTHY` – The AWS IoT Greengrass Core software and all components
    #     run on the core device without issue.
    #
    #   * `UNHEALTHY` – The AWS IoT Greengrass Core software or a component is
    #     in a failed state on the core device.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned per paginated request.
    #
    # @option params [String] :next_token
    #   The token to be used for the next set of paginated results.
    #
    # @return [Types::ListCoreDevicesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCoreDevicesResponse#core_devices #core_devices} => Array&lt;Types::CoreDevice&gt;
    #   * {Types::ListCoreDevicesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_core_devices({
    #     thing_group_arn: "ThingGroupARN",
    #     status: "HEALTHY", # accepts HEALTHY, UNHEALTHY
    #     max_results: 1,
    #     next_token: "NextTokenString",
    #   })
    #
    # @example Response structure
    #
    #   resp.core_devices #=> Array
    #   resp.core_devices[0].core_device_thing_name #=> String
    #   resp.core_devices[0].status #=> String, one of "HEALTHY", "UNHEALTHY"
    #   resp.core_devices[0].last_status_update_timestamp #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/ListCoreDevices AWS API Documentation
    #
    # @overload list_core_devices(params = {})
    # @param [Hash] params ({})
    def list_core_devices(params = {}, options = {})
      req = build_request(:list_core_devices, params)
      req.send_request(options)
    end

    # Retrieves a paginated list of deployments.
    #
    # @option params [String] :target_arn
    #   The [ARN][1] of the target AWS IoT thing or thing group.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [String] :history_filter
    #   The filter for the list of deployments. Choose one of the following
    #   options:
    #
    #   * `ALL` – The list includes all deployments.
    #
    #   * `LATEST_ONLY` – The list includes only the latest revision of each
    #     deployment.
    #
    #   Default: `LATEST_ONLY`
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned per paginated request.
    #
    # @option params [String] :next_token
    #   The token to be used for the next set of paginated results.
    #
    # @return [Types::ListDeploymentsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDeploymentsResponse#deployments #deployments} => Array&lt;Types::Deployment&gt;
    #   * {Types::ListDeploymentsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_deployments({
    #     target_arn: "TargetARN",
    #     history_filter: "ALL", # accepts ALL, LATEST_ONLY
    #     max_results: 1,
    #     next_token: "NextTokenString",
    #   })
    #
    # @example Response structure
    #
    #   resp.deployments #=> Array
    #   resp.deployments[0].target_arn #=> String
    #   resp.deployments[0].revision_id #=> String
    #   resp.deployments[0].deployment_id #=> String
    #   resp.deployments[0].deployment_name #=> String
    #   resp.deployments[0].creation_timestamp #=> Time
    #   resp.deployments[0].deployment_status #=> String, one of "ACTIVE", "COMPLETED", "CANCELED", "FAILED", "INACTIVE"
    #   resp.deployments[0].is_latest_for_target #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/ListDeployments AWS API Documentation
    #
    # @overload list_deployments(params = {})
    # @param [Hash] params ({})
    def list_deployments(params = {}, options = {})
      req = build_request(:list_deployments, params)
      req.send_request(options)
    end

    # Retrieves a paginated list of deployment jobs that AWS IoT Greengrass
    # sends to AWS IoT Greengrass core devices.
    #
    # @option params [required, String] :core_device_thing_name
    #   The name of the core device. This is also the name of the AWS IoT
    #   thing.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned per paginated request.
    #
    # @option params [String] :next_token
    #   The token to be used for the next set of paginated results.
    #
    # @return [Types::ListEffectiveDeploymentsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEffectiveDeploymentsResponse#effective_deployments #effective_deployments} => Array&lt;Types::EffectiveDeployment&gt;
    #   * {Types::ListEffectiveDeploymentsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_effective_deployments({
    #     core_device_thing_name: "CoreDeviceThingName", # required
    #     max_results: 1,
    #     next_token: "NextTokenString",
    #   })
    #
    # @example Response structure
    #
    #   resp.effective_deployments #=> Array
    #   resp.effective_deployments[0].deployment_id #=> String
    #   resp.effective_deployments[0].deployment_name #=> String
    #   resp.effective_deployments[0].iot_job_id #=> String
    #   resp.effective_deployments[0].iot_job_arn #=> String
    #   resp.effective_deployments[0].description #=> String
    #   resp.effective_deployments[0].target_arn #=> String
    #   resp.effective_deployments[0].core_device_execution_status #=> String, one of "IN_PROGRESS", "QUEUED", "FAILED", "COMPLETED", "TIMED_OUT", "CANCELED", "REJECTED"
    #   resp.effective_deployments[0].reason #=> String
    #   resp.effective_deployments[0].creation_timestamp #=> Time
    #   resp.effective_deployments[0].modified_timestamp #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/ListEffectiveDeployments AWS API Documentation
    #
    # @overload list_effective_deployments(params = {})
    # @param [Hash] params ({})
    def list_effective_deployments(params = {}, options = {})
      req = build_request(:list_effective_deployments, params)
      req.send_request(options)
    end

    # Retrieves a paginated list of the components that a AWS IoT Greengrass
    # core device runs.
    #
    # @option params [required, String] :core_device_thing_name
    #   The name of the core device. This is also the name of the AWS IoT
    #   thing.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned per paginated request.
    #
    # @option params [String] :next_token
    #   The token to be used for the next set of paginated results.
    #
    # @return [Types::ListInstalledComponentsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListInstalledComponentsResponse#installed_components #installed_components} => Array&lt;Types::InstalledComponent&gt;
    #   * {Types::ListInstalledComponentsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_installed_components({
    #     core_device_thing_name: "CoreDeviceThingName", # required
    #     max_results: 1,
    #     next_token: "NextTokenString",
    #   })
    #
    # @example Response structure
    #
    #   resp.installed_components #=> Array
    #   resp.installed_components[0].component_name #=> String
    #   resp.installed_components[0].component_version #=> String
    #   resp.installed_components[0].lifecycle_state #=> String, one of "NEW", "INSTALLED", "STARTING", "RUNNING", "STOPPING", "ERRORED", "BROKEN", "FINISHED"
    #   resp.installed_components[0].lifecycle_state_details #=> String
    #   resp.installed_components[0].is_root #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/ListInstalledComponents AWS API Documentation
    #
    # @overload list_installed_components(params = {})
    # @param [Hash] params ({})
    def list_installed_components(params = {}, options = {})
      req = build_request(:list_installed_components, params)
      req.send_request(options)
    end

    # Retrieves the list of tags for an AWS IoT Greengrass resource.
    #
    # @option params [required, String] :resource_arn
    #   The [ARN][1] of the resource.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "GenericV2ARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Retrieves a list of components that meet the component, version, and
    # platform requirements of a deployment. AWS IoT Greengrass core devices
    # call this operation when they receive a deployment to identify the
    # components to install.
    #
    # This operation identifies components that meet all dependency
    # requirements for a deployment. If the requirements conflict, then this
    # operation returns an error and the deployment fails. For example, this
    # occurs if component `A` requires version `>2.0.0` and component `B`
    # requires version `<2.0.0` of a component dependency.
    #
    # When you specify the component candidates to resolve, AWS IoT
    # Greengrass compares each component's digest from the core device with
    # the component's digest in the AWS Cloud. If the digests don't match,
    # then AWS IoT Greengrass specifies to use the version from the AWS
    # Cloud.
    #
    # To use this operation, you must use the data plane API endpoint and
    # authenticate with an AWS IoT device certificate. For more information,
    # see [AWS IoT Greengrass endpoints and quotas][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/general/latest/gr/greengrass.html
    #
    # @option params [required, Types::ComponentPlatform] :platform
    #   The platform to use to resolve compatible components.
    #
    # @option params [required, Array<Types::ComponentCandidate>] :component_candidates
    #   The list of components to resolve.
    #
    # @return [Types::ResolveComponentCandidatesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ResolveComponentCandidatesResponse#resolved_component_versions #resolved_component_versions} => Array&lt;Types::ResolvedComponentVersion&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.resolve_component_candidates({
    #     platform: { # required
    #       name: "NonEmptyString",
    #       attributes: {
    #         "NonEmptyString" => "NonEmptyString",
    #       },
    #     },
    #     component_candidates: [ # required
    #       {
    #         component_name: "ComponentNameString",
    #         component_version: "ComponentVersionString",
    #         version_requirements: {
    #           "NonEmptyString" => "NonEmptyString",
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.resolved_component_versions #=> Array
    #   resp.resolved_component_versions[0].arn #=> String
    #   resp.resolved_component_versions[0].component_name #=> String
    #   resp.resolved_component_versions[0].component_version #=> String
    #   resp.resolved_component_versions[0].recipe #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/ResolveComponentCandidates AWS API Documentation
    #
    # @overload resolve_component_candidates(params = {})
    # @param [Hash] params ({})
    def resolve_component_candidates(params = {}, options = {})
      req = build_request(:resolve_component_candidates, params)
      req.send_request(options)
    end

    # Adds tags to an AWS IoT Greengrass resource. If a tag already exists
    # for the resource, this operation updates the tag's value.
    #
    # @option params [required, String] :resource_arn
    #   The [ARN][1] of the resource to tag.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [required, Hash<String,String>] :tags
    #   A list of key-value pairs that contain metadata for the resource. For
    #   more information, see [Tag your resources][1] in the *AWS IoT
    #   Greengrass V2 Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/greengrass/v2/developerguide/tag-resources.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "GenericV2ARN", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes a tag from an AWS IoT Greengrass resource.
    #
    # @option params [required, String] :resource_arn
    #   The [ARN][1] of the resource to untag.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [required, Array<String>] :tag_keys
    #   A list of keys for tags to remove from the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "GenericV2ARN", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/UntagResource AWS API Documentation
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
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config)
      context[:gem_name] = 'aws-sdk-greengrassv2'
      context[:gem_version] = '1.1.0'
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
