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

Aws::Plugins::GlobalConfiguration.add_identifier(:migrationhuborchestrator)

module Aws::MigrationHubOrchestrator
  # An API client for MigrationHubOrchestrator.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::MigrationHubOrchestrator::Client.new(
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

    @identifier = :migrationhuborchestrator

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
    add_plugin(Aws::MigrationHubOrchestrator::Plugins::Endpoints)

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
    #   @option options [Aws::MigrationHubOrchestrator::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::MigrationHubOrchestrator::EndpointParameters`
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

    # Create a workflow to orchestrate your migrations.
    #
    # @option params [required, String] :name
    #   The name of the migration workflow.
    #
    # @option params [String] :description
    #   The description of the migration workflow.
    #
    # @option params [required, String] :template_id
    #   The ID of the template.
    #
    # @option params [required, String] :application_configuration_id
    #   The configuration ID of the application configured in Application
    #   Discovery Service.
    #
    # @option params [required, Hash<String,Types::StepInput>] :input_parameters
    #   The input parameters required to create a migration workflow.
    #
    # @option params [Array<String>] :step_targets
    #   The servers on which a step will be run.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to add on a migration workflow.
    #
    # @return [Types::CreateMigrationWorkflowResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateMigrationWorkflowResponse#id #id} => String
    #   * {Types::CreateMigrationWorkflowResponse#arn #arn} => String
    #   * {Types::CreateMigrationWorkflowResponse#name #name} => String
    #   * {Types::CreateMigrationWorkflowResponse#description #description} => String
    #   * {Types::CreateMigrationWorkflowResponse#template_id #template_id} => String
    #   * {Types::CreateMigrationWorkflowResponse#ads_application_configuration_id #ads_application_configuration_id} => String
    #   * {Types::CreateMigrationWorkflowResponse#workflow_inputs #workflow_inputs} => Hash&lt;String,Types::StepInput&gt;
    #   * {Types::CreateMigrationWorkflowResponse#step_targets #step_targets} => Array&lt;String&gt;
    #   * {Types::CreateMigrationWorkflowResponse#status #status} => String
    #   * {Types::CreateMigrationWorkflowResponse#creation_time #creation_time} => Time
    #   * {Types::CreateMigrationWorkflowResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_workflow({
    #     name: "CreateMigrationWorkflowRequestNameString", # required
    #     description: "CreateMigrationWorkflowRequestDescriptionString",
    #     template_id: "CreateMigrationWorkflowRequestTemplateIdString", # required
    #     application_configuration_id: "CreateMigrationWorkflowRequestApplicationConfigurationIdString", # required
    #     input_parameters: { # required
    #       "StepInputParametersKey" => {
    #         integer_value: 1,
    #         string_value: "StringValue",
    #         list_of_strings_value: ["StringListMember"],
    #         map_of_string_value: {
    #           "StringMapKey" => "StringMapValue",
    #         },
    #       },
    #     },
    #     step_targets: ["StringListMember"],
    #     tags: {
    #       "StringMapKey" => "StringMapValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.arn #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.template_id #=> String
    #   resp.ads_application_configuration_id #=> String
    #   resp.workflow_inputs #=> Hash
    #   resp.workflow_inputs["StepInputParametersKey"].integer_value #=> Integer
    #   resp.workflow_inputs["StepInputParametersKey"].string_value #=> String
    #   resp.workflow_inputs["StepInputParametersKey"].list_of_strings_value #=> Array
    #   resp.workflow_inputs["StepInputParametersKey"].list_of_strings_value[0] #=> String
    #   resp.workflow_inputs["StepInputParametersKey"].map_of_string_value #=> Hash
    #   resp.workflow_inputs["StepInputParametersKey"].map_of_string_value["StringMapKey"] #=> String
    #   resp.step_targets #=> Array
    #   resp.step_targets[0] #=> String
    #   resp.status #=> String, one of "CREATING", "NOT_STARTED", "CREATION_FAILED", "STARTING", "IN_PROGRESS", "WORKFLOW_FAILED", "PAUSED", "PAUSING", "PAUSING_FAILED", "USER_ATTENTION_REQUIRED", "DELETING", "DELETION_FAILED", "DELETED", "COMPLETED"
    #   resp.creation_time #=> Time
    #   resp.tags #=> Hash
    #   resp.tags["StringMapKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/CreateWorkflow AWS API Documentation
    #
    # @overload create_workflow(params = {})
    # @param [Hash] params ({})
    def create_workflow(params = {}, options = {})
      req = build_request(:create_workflow, params)
      req.send_request(options)
    end

    # Create a step in the migration workflow.
    #
    # @option params [required, String] :name
    #   The name of the step.
    #
    # @option params [required, String] :step_group_id
    #   The ID of the step group.
    #
    # @option params [required, String] :workflow_id
    #   The ID of the migration workflow.
    #
    # @option params [required, String] :step_action_type
    #   The action type of the step. You must run and update the status of a
    #   manual step for the workflow to continue after the completion of the
    #   step.
    #
    # @option params [String] :description
    #   The description of the step.
    #
    # @option params [Types::WorkflowStepAutomationConfiguration] :workflow_step_automation_configuration
    #   The custom script to run tests on source or target environments.
    #
    # @option params [Array<String>] :step_target
    #   The servers on which a step will be run.
    #
    # @option params [Array<Types::WorkflowStepOutput>] :outputs
    #   The key value pairs added for the expected output.
    #
    # @option params [Array<String>] :previous
    #   The previous step.
    #
    # @option params [Array<String>] :next
    #   The next step.
    #
    # @return [Types::CreateWorkflowStepResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateWorkflowStepResponse#id #id} => String
    #   * {Types::CreateWorkflowStepResponse#step_group_id #step_group_id} => String
    #   * {Types::CreateWorkflowStepResponse#workflow_id #workflow_id} => String
    #   * {Types::CreateWorkflowStepResponse#name #name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_workflow_step({
    #     name: "MigrationWorkflowName", # required
    #     step_group_id: "StepGroupId", # required
    #     workflow_id: "MigrationWorkflowId", # required
    #     step_action_type: "MANUAL", # required, accepts MANUAL, AUTOMATED
    #     description: "MigrationWorkflowDescription",
    #     workflow_step_automation_configuration: {
    #       script_location_s3_bucket: "S3Bucket",
    #       script_location_s3_key: {
    #         linux: "S3Key",
    #         windows: "S3Key",
    #       },
    #       command: {
    #         linux: "String",
    #         windows: "String",
    #       },
    #       run_environment: "AWS", # accepts AWS, ONPREMISE
    #       target_type: "SINGLE", # accepts SINGLE, ALL, NONE
    #     },
    #     step_target: ["StringListMember"],
    #     outputs: [
    #       {
    #         name: "WorkflowStepOutputName",
    #         data_type: "STRING", # accepts STRING, INTEGER, STRINGLIST, STRINGMAP
    #         required: false,
    #         value: {
    #           integer_value: 1,
    #           string_value: "StringValue",
    #           list_of_string_value: ["StringListMember"],
    #         },
    #       },
    #     ],
    #     previous: ["StringListMember"],
    #     next: ["StringListMember"],
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.step_group_id #=> String
    #   resp.workflow_id #=> String
    #   resp.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/CreateWorkflowStep AWS API Documentation
    #
    # @overload create_workflow_step(params = {})
    # @param [Hash] params ({})
    def create_workflow_step(params = {}, options = {})
      req = build_request(:create_workflow_step, params)
      req.send_request(options)
    end

    # Create a step group in a migration workflow.
    #
    # @option params [required, String] :workflow_id
    #   The ID of the migration workflow that will contain the step group.
    #
    # @option params [required, String] :name
    #   The name of the step group.
    #
    # @option params [String] :description
    #   The description of the step group.
    #
    # @option params [Array<String>] :next
    #   The next step group.
    #
    # @option params [Array<String>] :previous
    #   The previous step group.
    #
    # @return [Types::CreateWorkflowStepGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateWorkflowStepGroupResponse#workflow_id #workflow_id} => String
    #   * {Types::CreateWorkflowStepGroupResponse#name #name} => String
    #   * {Types::CreateWorkflowStepGroupResponse#id #id} => String
    #   * {Types::CreateWorkflowStepGroupResponse#description #description} => String
    #   * {Types::CreateWorkflowStepGroupResponse#tools #tools} => Array&lt;Types::Tool&gt;
    #   * {Types::CreateWorkflowStepGroupResponse#next #next} => Array&lt;String&gt;
    #   * {Types::CreateWorkflowStepGroupResponse#previous #previous} => Array&lt;String&gt;
    #   * {Types::CreateWorkflowStepGroupResponse#creation_time #creation_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_workflow_step_group({
    #     workflow_id: "MigrationWorkflowId", # required
    #     name: "StepGroupName", # required
    #     description: "StepGroupDescription",
    #     next: ["StringListMember"],
    #     previous: ["StringListMember"],
    #   })
    #
    # @example Response structure
    #
    #   resp.workflow_id #=> String
    #   resp.name #=> String
    #   resp.id #=> String
    #   resp.description #=> String
    #   resp.tools #=> Array
    #   resp.tools[0].name #=> String
    #   resp.tools[0].url #=> String
    #   resp.next #=> Array
    #   resp.next[0] #=> String
    #   resp.previous #=> Array
    #   resp.previous[0] #=> String
    #   resp.creation_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/CreateWorkflowStepGroup AWS API Documentation
    #
    # @overload create_workflow_step_group(params = {})
    # @param [Hash] params ({})
    def create_workflow_step_group(params = {}, options = {})
      req = build_request(:create_workflow_step_group, params)
      req.send_request(options)
    end

    # Delete a migration workflow. You must pause a running workflow in
    # Migration Hub Orchestrator console to delete it.
    #
    # @option params [required, String] :id
    #   The ID of the migration workflow you want to delete.
    #
    # @return [Types::DeleteMigrationWorkflowResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteMigrationWorkflowResponse#id #id} => String
    #   * {Types::DeleteMigrationWorkflowResponse#arn #arn} => String
    #   * {Types::DeleteMigrationWorkflowResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_workflow({
    #     id: "MigrationWorkflowId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.arn #=> String
    #   resp.status #=> String, one of "CREATING", "NOT_STARTED", "CREATION_FAILED", "STARTING", "IN_PROGRESS", "WORKFLOW_FAILED", "PAUSED", "PAUSING", "PAUSING_FAILED", "USER_ATTENTION_REQUIRED", "DELETING", "DELETION_FAILED", "DELETED", "COMPLETED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/DeleteWorkflow AWS API Documentation
    #
    # @overload delete_workflow(params = {})
    # @param [Hash] params ({})
    def delete_workflow(params = {}, options = {})
      req = build_request(:delete_workflow, params)
      req.send_request(options)
    end

    # Delete a step in a migration workflow. Pause the workflow to delete a
    # running step.
    #
    # @option params [required, String] :id
    #   The ID of the step you want to delete.
    #
    # @option params [required, String] :step_group_id
    #   The ID of the step group that contains the step you want to delete.
    #
    # @option params [required, String] :workflow_id
    #   The ID of the migration workflow.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_workflow_step({
    #     id: "StepId", # required
    #     step_group_id: "StepGroupId", # required
    #     workflow_id: "MigrationWorkflowId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/DeleteWorkflowStep AWS API Documentation
    #
    # @overload delete_workflow_step(params = {})
    # @param [Hash] params ({})
    def delete_workflow_step(params = {}, options = {})
      req = build_request(:delete_workflow_step, params)
      req.send_request(options)
    end

    # Delete a step group in a migration workflow.
    #
    # @option params [required, String] :workflow_id
    #   The ID of the migration workflow.
    #
    # @option params [required, String] :id
    #   The ID of the step group you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_workflow_step_group({
    #     workflow_id: "MigrationWorkflowId", # required
    #     id: "StepGroupId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/DeleteWorkflowStepGroup AWS API Documentation
    #
    # @overload delete_workflow_step_group(params = {})
    # @param [Hash] params ({})
    def delete_workflow_step_group(params = {}, options = {})
      req = build_request(:delete_workflow_step_group, params)
      req.send_request(options)
    end

    # Get the template you want to use for creating a migration workflow.
    #
    # @option params [required, String] :id
    #   The ID of the template.
    #
    # @return [Types::GetMigrationWorkflowTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMigrationWorkflowTemplateResponse#id #id} => String
    #   * {Types::GetMigrationWorkflowTemplateResponse#name #name} => String
    #   * {Types::GetMigrationWorkflowTemplateResponse#description #description} => String
    #   * {Types::GetMigrationWorkflowTemplateResponse#inputs #inputs} => Array&lt;Types::TemplateInput&gt;
    #   * {Types::GetMigrationWorkflowTemplateResponse#tools #tools} => Array&lt;Types::Tool&gt;
    #   * {Types::GetMigrationWorkflowTemplateResponse#status #status} => String
    #   * {Types::GetMigrationWorkflowTemplateResponse#creation_time #creation_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_template({
    #     id: "TemplateId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.inputs #=> Array
    #   resp.inputs[0].input_name #=> String
    #   resp.inputs[0].data_type #=> String, one of "STRING", "INTEGER", "STRINGLIST", "STRINGMAP"
    #   resp.inputs[0].required #=> Boolean
    #   resp.tools #=> Array
    #   resp.tools[0].name #=> String
    #   resp.tools[0].url #=> String
    #   resp.status #=> String, one of "CREATED"
    #   resp.creation_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/GetTemplate AWS API Documentation
    #
    # @overload get_template(params = {})
    # @param [Hash] params ({})
    def get_template(params = {}, options = {})
      req = build_request(:get_template, params)
      req.send_request(options)
    end

    # Get a specific step in a template.
    #
    # @option params [required, String] :id
    #   The ID of the step.
    #
    # @option params [required, String] :template_id
    #   The ID of the template.
    #
    # @option params [required, String] :step_group_id
    #   The ID of the step group.
    #
    # @return [Types::GetTemplateStepResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTemplateStepResponse#id #id} => String
    #   * {Types::GetTemplateStepResponse#step_group_id #step_group_id} => String
    #   * {Types::GetTemplateStepResponse#template_id #template_id} => String
    #   * {Types::GetTemplateStepResponse#name #name} => String
    #   * {Types::GetTemplateStepResponse#description #description} => String
    #   * {Types::GetTemplateStepResponse#step_action_type #step_action_type} => String
    #   * {Types::GetTemplateStepResponse#creation_time #creation_time} => String
    #   * {Types::GetTemplateStepResponse#previous #previous} => Array&lt;String&gt;
    #   * {Types::GetTemplateStepResponse#next #next} => Array&lt;String&gt;
    #   * {Types::GetTemplateStepResponse#outputs #outputs} => Array&lt;Types::StepOutput&gt;
    #   * {Types::GetTemplateStepResponse#step_automation_configuration #step_automation_configuration} => Types::StepAutomationConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_template_step({
    #     id: "StepId", # required
    #     template_id: "TemplateId", # required
    #     step_group_id: "StepGroupId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.step_group_id #=> String
    #   resp.template_id #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.step_action_type #=> String, one of "MANUAL", "AUTOMATED"
    #   resp.creation_time #=> String
    #   resp.previous #=> Array
    #   resp.previous[0] #=> String
    #   resp.next #=> Array
    #   resp.next[0] #=> String
    #   resp.outputs #=> Array
    #   resp.outputs[0].name #=> String
    #   resp.outputs[0].data_type #=> String, one of "STRING", "INTEGER", "STRINGLIST", "STRINGMAP"
    #   resp.outputs[0].required #=> Boolean
    #   resp.step_automation_configuration.script_location_s3_bucket #=> String
    #   resp.step_automation_configuration.script_location_s3_key.linux #=> String
    #   resp.step_automation_configuration.script_location_s3_key.windows #=> String
    #   resp.step_automation_configuration.command.linux #=> String
    #   resp.step_automation_configuration.command.windows #=> String
    #   resp.step_automation_configuration.run_environment #=> String, one of "AWS", "ONPREMISE"
    #   resp.step_automation_configuration.target_type #=> String, one of "SINGLE", "ALL", "NONE"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/GetTemplateStep AWS API Documentation
    #
    # @overload get_template_step(params = {})
    # @param [Hash] params ({})
    def get_template_step(params = {}, options = {})
      req = build_request(:get_template_step, params)
      req.send_request(options)
    end

    # Get a step group in a template.
    #
    # @option params [required, String] :template_id
    #   The ID of the template.
    #
    # @option params [required, String] :id
    #   The ID of the step group.
    #
    # @return [Types::GetTemplateStepGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTemplateStepGroupResponse#template_id #template_id} => String
    #   * {Types::GetTemplateStepGroupResponse#id #id} => String
    #   * {Types::GetTemplateStepGroupResponse#name #name} => String
    #   * {Types::GetTemplateStepGroupResponse#description #description} => String
    #   * {Types::GetTemplateStepGroupResponse#status #status} => String
    #   * {Types::GetTemplateStepGroupResponse#creation_time #creation_time} => Time
    #   * {Types::GetTemplateStepGroupResponse#last_modified_time #last_modified_time} => Time
    #   * {Types::GetTemplateStepGroupResponse#tools #tools} => Array&lt;Types::Tool&gt;
    #   * {Types::GetTemplateStepGroupResponse#previous #previous} => Array&lt;String&gt;
    #   * {Types::GetTemplateStepGroupResponse#next #next} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_template_step_group({
    #     template_id: "TemplateId", # required
    #     id: "StepGroupId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.template_id #=> String
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.status #=> String, one of "AWAITING_DEPENDENCIES", "READY", "IN_PROGRESS", "COMPLETED", "FAILED", "PAUSED", "PAUSING", "USER_ATTENTION_REQUIRED"
    #   resp.creation_time #=> Time
    #   resp.last_modified_time #=> Time
    #   resp.tools #=> Array
    #   resp.tools[0].name #=> String
    #   resp.tools[0].url #=> String
    #   resp.previous #=> Array
    #   resp.previous[0] #=> String
    #   resp.next #=> Array
    #   resp.next[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/GetTemplateStepGroup AWS API Documentation
    #
    # @overload get_template_step_group(params = {})
    # @param [Hash] params ({})
    def get_template_step_group(params = {}, options = {})
      req = build_request(:get_template_step_group, params)
      req.send_request(options)
    end

    # Get migration workflow.
    #
    # @option params [required, String] :id
    #   The ID of the migration workflow.
    #
    # @return [Types::GetMigrationWorkflowResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMigrationWorkflowResponse#id #id} => String
    #   * {Types::GetMigrationWorkflowResponse#arn #arn} => String
    #   * {Types::GetMigrationWorkflowResponse#name #name} => String
    #   * {Types::GetMigrationWorkflowResponse#description #description} => String
    #   * {Types::GetMigrationWorkflowResponse#template_id #template_id} => String
    #   * {Types::GetMigrationWorkflowResponse#ads_application_configuration_id #ads_application_configuration_id} => String
    #   * {Types::GetMigrationWorkflowResponse#ads_application_name #ads_application_name} => String
    #   * {Types::GetMigrationWorkflowResponse#status #status} => String
    #   * {Types::GetMigrationWorkflowResponse#status_message #status_message} => String
    #   * {Types::GetMigrationWorkflowResponse#creation_time #creation_time} => Time
    #   * {Types::GetMigrationWorkflowResponse#last_start_time #last_start_time} => Time
    #   * {Types::GetMigrationWorkflowResponse#last_stop_time #last_stop_time} => Time
    #   * {Types::GetMigrationWorkflowResponse#last_modified_time #last_modified_time} => Time
    #   * {Types::GetMigrationWorkflowResponse#end_time #end_time} => Time
    #   * {Types::GetMigrationWorkflowResponse#tools #tools} => Array&lt;Types::Tool&gt;
    #   * {Types::GetMigrationWorkflowResponse#total_steps #total_steps} => Integer
    #   * {Types::GetMigrationWorkflowResponse#completed_steps #completed_steps} => Integer
    #   * {Types::GetMigrationWorkflowResponse#workflow_inputs #workflow_inputs} => Hash&lt;String,Types::StepInput&gt;
    #   * {Types::GetMigrationWorkflowResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::GetMigrationWorkflowResponse#workflow_bucket #workflow_bucket} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_workflow({
    #     id: "MigrationWorkflowId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.arn #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.template_id #=> String
    #   resp.ads_application_configuration_id #=> String
    #   resp.ads_application_name #=> String
    #   resp.status #=> String, one of "CREATING", "NOT_STARTED", "CREATION_FAILED", "STARTING", "IN_PROGRESS", "WORKFLOW_FAILED", "PAUSED", "PAUSING", "PAUSING_FAILED", "USER_ATTENTION_REQUIRED", "DELETING", "DELETION_FAILED", "DELETED", "COMPLETED"
    #   resp.status_message #=> String
    #   resp.creation_time #=> Time
    #   resp.last_start_time #=> Time
    #   resp.last_stop_time #=> Time
    #   resp.last_modified_time #=> Time
    #   resp.end_time #=> Time
    #   resp.tools #=> Array
    #   resp.tools[0].name #=> String
    #   resp.tools[0].url #=> String
    #   resp.total_steps #=> Integer
    #   resp.completed_steps #=> Integer
    #   resp.workflow_inputs #=> Hash
    #   resp.workflow_inputs["StepInputParametersKey"].integer_value #=> Integer
    #   resp.workflow_inputs["StepInputParametersKey"].string_value #=> String
    #   resp.workflow_inputs["StepInputParametersKey"].list_of_strings_value #=> Array
    #   resp.workflow_inputs["StepInputParametersKey"].list_of_strings_value[0] #=> String
    #   resp.workflow_inputs["StepInputParametersKey"].map_of_string_value #=> Hash
    #   resp.workflow_inputs["StepInputParametersKey"].map_of_string_value["StringMapKey"] #=> String
    #   resp.tags #=> Hash
    #   resp.tags["StringMapKey"] #=> String
    #   resp.workflow_bucket #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/GetWorkflow AWS API Documentation
    #
    # @overload get_workflow(params = {})
    # @param [Hash] params ({})
    def get_workflow(params = {}, options = {})
      req = build_request(:get_workflow, params)
      req.send_request(options)
    end

    # Get a step in the migration workflow.
    #
    # @option params [required, String] :workflow_id
    #   The ID of the migration workflow.
    #
    # @option params [required, String] :step_group_id
    #   desThe ID of the step group.
    #
    # @option params [required, String] :id
    #   The ID of the step.
    #
    # @return [Types::GetWorkflowStepResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetWorkflowStepResponse#name #name} => String
    #   * {Types::GetWorkflowStepResponse#step_group_id #step_group_id} => String
    #   * {Types::GetWorkflowStepResponse#workflow_id #workflow_id} => String
    #   * {Types::GetWorkflowStepResponse#step_id #step_id} => String
    #   * {Types::GetWorkflowStepResponse#description #description} => String
    #   * {Types::GetWorkflowStepResponse#step_action_type #step_action_type} => String
    #   * {Types::GetWorkflowStepResponse#owner #owner} => String
    #   * {Types::GetWorkflowStepResponse#workflow_step_automation_configuration #workflow_step_automation_configuration} => Types::WorkflowStepAutomationConfiguration
    #   * {Types::GetWorkflowStepResponse#step_target #step_target} => Array&lt;String&gt;
    #   * {Types::GetWorkflowStepResponse#outputs #outputs} => Array&lt;Types::WorkflowStepOutput&gt;
    #   * {Types::GetWorkflowStepResponse#previous #previous} => Array&lt;String&gt;
    #   * {Types::GetWorkflowStepResponse#next #next} => Array&lt;String&gt;
    #   * {Types::GetWorkflowStepResponse#status #status} => String
    #   * {Types::GetWorkflowStepResponse#status_message #status_message} => String
    #   * {Types::GetWorkflowStepResponse#script_output_location #script_output_location} => String
    #   * {Types::GetWorkflowStepResponse#creation_time #creation_time} => Time
    #   * {Types::GetWorkflowStepResponse#last_start_time #last_start_time} => Time
    #   * {Types::GetWorkflowStepResponse#end_time #end_time} => Time
    #   * {Types::GetWorkflowStepResponse#no_of_srv_completed #no_of_srv_completed} => Integer
    #   * {Types::GetWorkflowStepResponse#no_of_srv_failed #no_of_srv_failed} => Integer
    #   * {Types::GetWorkflowStepResponse#total_no_of_srv #total_no_of_srv} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_workflow_step({
    #     workflow_id: "MigrationWorkflowId", # required
    #     step_group_id: "StepGroupId", # required
    #     id: "StepId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.step_group_id #=> String
    #   resp.workflow_id #=> String
    #   resp.step_id #=> String
    #   resp.description #=> String
    #   resp.step_action_type #=> String, one of "MANUAL", "AUTOMATED"
    #   resp.owner #=> String, one of "AWS_MANAGED", "CUSTOM"
    #   resp.workflow_step_automation_configuration.script_location_s3_bucket #=> String
    #   resp.workflow_step_automation_configuration.script_location_s3_key.linux #=> String
    #   resp.workflow_step_automation_configuration.script_location_s3_key.windows #=> String
    #   resp.workflow_step_automation_configuration.command.linux #=> String
    #   resp.workflow_step_automation_configuration.command.windows #=> String
    #   resp.workflow_step_automation_configuration.run_environment #=> String, one of "AWS", "ONPREMISE"
    #   resp.workflow_step_automation_configuration.target_type #=> String, one of "SINGLE", "ALL", "NONE"
    #   resp.step_target #=> Array
    #   resp.step_target[0] #=> String
    #   resp.outputs #=> Array
    #   resp.outputs[0].name #=> String
    #   resp.outputs[0].data_type #=> String, one of "STRING", "INTEGER", "STRINGLIST", "STRINGMAP"
    #   resp.outputs[0].required #=> Boolean
    #   resp.outputs[0].value.integer_value #=> Integer
    #   resp.outputs[0].value.string_value #=> String
    #   resp.outputs[0].value.list_of_string_value #=> Array
    #   resp.outputs[0].value.list_of_string_value[0] #=> String
    #   resp.previous #=> Array
    #   resp.previous[0] #=> String
    #   resp.next #=> Array
    #   resp.next[0] #=> String
    #   resp.status #=> String, one of "AWAITING_DEPENDENCIES", "READY", "IN_PROGRESS", "COMPLETED", "FAILED", "PAUSED", "USER_ATTENTION_REQUIRED"
    #   resp.status_message #=> String
    #   resp.script_output_location #=> String
    #   resp.creation_time #=> Time
    #   resp.last_start_time #=> Time
    #   resp.end_time #=> Time
    #   resp.no_of_srv_completed #=> Integer
    #   resp.no_of_srv_failed #=> Integer
    #   resp.total_no_of_srv #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/GetWorkflowStep AWS API Documentation
    #
    # @overload get_workflow_step(params = {})
    # @param [Hash] params ({})
    def get_workflow_step(params = {}, options = {})
      req = build_request(:get_workflow_step, params)
      req.send_request(options)
    end

    # Get the step group of a migration workflow.
    #
    # @option params [required, String] :id
    #   The ID of the step group.
    #
    # @option params [required, String] :workflow_id
    #   The ID of the migration workflow.
    #
    # @return [Types::GetWorkflowStepGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetWorkflowStepGroupResponse#id #id} => String
    #   * {Types::GetWorkflowStepGroupResponse#workflow_id #workflow_id} => String
    #   * {Types::GetWorkflowStepGroupResponse#name #name} => String
    #   * {Types::GetWorkflowStepGroupResponse#description #description} => String
    #   * {Types::GetWorkflowStepGroupResponse#status #status} => String
    #   * {Types::GetWorkflowStepGroupResponse#owner #owner} => String
    #   * {Types::GetWorkflowStepGroupResponse#creation_time #creation_time} => Time
    #   * {Types::GetWorkflowStepGroupResponse#last_modified_time #last_modified_time} => Time
    #   * {Types::GetWorkflowStepGroupResponse#end_time #end_time} => Time
    #   * {Types::GetWorkflowStepGroupResponse#tools #tools} => Array&lt;Types::Tool&gt;
    #   * {Types::GetWorkflowStepGroupResponse#previous #previous} => Array&lt;String&gt;
    #   * {Types::GetWorkflowStepGroupResponse#next #next} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_workflow_step_group({
    #     id: "StepGroupId", # required
    #     workflow_id: "MigrationWorkflowId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.workflow_id #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.status #=> String, one of "AWAITING_DEPENDENCIES", "READY", "IN_PROGRESS", "COMPLETED", "FAILED", "PAUSED", "PAUSING", "USER_ATTENTION_REQUIRED"
    #   resp.owner #=> String, one of "AWS_MANAGED", "CUSTOM"
    #   resp.creation_time #=> Time
    #   resp.last_modified_time #=> Time
    #   resp.end_time #=> Time
    #   resp.tools #=> Array
    #   resp.tools[0].name #=> String
    #   resp.tools[0].url #=> String
    #   resp.previous #=> Array
    #   resp.previous[0] #=> String
    #   resp.next #=> Array
    #   resp.next[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/GetWorkflowStepGroup AWS API Documentation
    #
    # @overload get_workflow_step_group(params = {})
    # @param [Hash] params ({})
    def get_workflow_step_group(params = {}, options = {})
      req = build_request(:get_workflow_step_group, params)
      req.send_request(options)
    end

    # List AWS Migration Hub Orchestrator plugins.
    #
    # @option params [Integer] :max_results
    #   The maximum number of plugins that can be returned.
    #
    # @option params [String] :next_token
    #   The pagination token.
    #
    # @return [Types::ListPluginsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPluginsResponse#next_token #next_token} => String
    #   * {Types::ListPluginsResponse#plugins #plugins} => Array&lt;Types::PluginSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_plugins({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.plugins #=> Array
    #   resp.plugins[0].plugin_id #=> String
    #   resp.plugins[0].hostname #=> String
    #   resp.plugins[0].status #=> String, one of "HEALTHY", "UNHEALTHY"
    #   resp.plugins[0].ip_address #=> String
    #   resp.plugins[0].version #=> String
    #   resp.plugins[0].registered_time #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/ListPlugins AWS API Documentation
    #
    # @overload list_plugins(params = {})
    # @param [Hash] params ({})
    def list_plugins(params = {}, options = {})
      req = build_request(:list_plugins, params)
      req.send_request(options)
    end

    # List the tags added to a resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "ResourceArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # List the step groups in a template.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results that can be returned.
    #
    # @option params [String] :next_token
    #   The pagination token.
    #
    # @option params [required, String] :template_id
    #   The ID of the template.
    #
    # @return [Types::ListTemplateStepGroupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTemplateStepGroupsResponse#next_token #next_token} => String
    #   * {Types::ListTemplateStepGroupsResponse#template_step_group_summary #template_step_group_summary} => Array&lt;Types::TemplateStepGroupSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_template_step_groups({
    #     max_results: 1,
    #     next_token: "NextToken",
    #     template_id: "TemplateId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.template_step_group_summary #=> Array
    #   resp.template_step_group_summary[0].id #=> String
    #   resp.template_step_group_summary[0].name #=> String
    #   resp.template_step_group_summary[0].previous #=> Array
    #   resp.template_step_group_summary[0].previous[0] #=> String
    #   resp.template_step_group_summary[0].next #=> Array
    #   resp.template_step_group_summary[0].next[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/ListTemplateStepGroups AWS API Documentation
    #
    # @overload list_template_step_groups(params = {})
    # @param [Hash] params ({})
    def list_template_step_groups(params = {}, options = {})
      req = build_request(:list_template_step_groups, params)
      req.send_request(options)
    end

    # List the steps in a template.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results that can be returned.
    #
    # @option params [String] :next_token
    #   The pagination token.
    #
    # @option params [required, String] :template_id
    #   The ID of the template.
    #
    # @option params [required, String] :step_group_id
    #   The ID of the step group.
    #
    # @return [Types::ListTemplateStepsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTemplateStepsResponse#next_token #next_token} => String
    #   * {Types::ListTemplateStepsResponse#template_step_summary_list #template_step_summary_list} => Array&lt;Types::TemplateStepSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_template_steps({
    #     max_results: 1,
    #     next_token: "NextToken",
    #     template_id: "TemplateId", # required
    #     step_group_id: "StepGroupId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.template_step_summary_list #=> Array
    #   resp.template_step_summary_list[0].id #=> String
    #   resp.template_step_summary_list[0].step_group_id #=> String
    #   resp.template_step_summary_list[0].template_id #=> String
    #   resp.template_step_summary_list[0].name #=> String
    #   resp.template_step_summary_list[0].step_action_type #=> String, one of "MANUAL", "AUTOMATED"
    #   resp.template_step_summary_list[0].target_type #=> String, one of "SINGLE", "ALL", "NONE"
    #   resp.template_step_summary_list[0].owner #=> String, one of "AWS_MANAGED", "CUSTOM"
    #   resp.template_step_summary_list[0].previous #=> Array
    #   resp.template_step_summary_list[0].previous[0] #=> String
    #   resp.template_step_summary_list[0].next #=> Array
    #   resp.template_step_summary_list[0].next[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/ListTemplateSteps AWS API Documentation
    #
    # @overload list_template_steps(params = {})
    # @param [Hash] params ({})
    def list_template_steps(params = {}, options = {})
      req = build_request(:list_template_steps, params)
      req.send_request(options)
    end

    # List the templates available in Migration Hub Orchestrator to create a
    # migration workflow.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results that can be returned.
    #
    # @option params [String] :next_token
    #   The pagination token.
    #
    # @option params [String] :name
    #   The name of the template.
    #
    # @return [Types::ListMigrationWorkflowTemplatesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListMigrationWorkflowTemplatesResponse#next_token #next_token} => String
    #   * {Types::ListMigrationWorkflowTemplatesResponse#template_summary #template_summary} => Array&lt;Types::TemplateSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_templates({
    #     max_results: 1,
    #     next_token: "NextToken",
    #     name: "TemplateName",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.template_summary #=> Array
    #   resp.template_summary[0].id #=> String
    #   resp.template_summary[0].name #=> String
    #   resp.template_summary[0].arn #=> String
    #   resp.template_summary[0].description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/ListTemplates AWS API Documentation
    #
    # @overload list_templates(params = {})
    # @param [Hash] params ({})
    def list_templates(params = {}, options = {})
      req = build_request(:list_templates, params)
      req.send_request(options)
    end

    # List the step groups in a migration workflow.
    #
    # @option params [String] :next_token
    #   The pagination token.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results that can be returned.
    #
    # @option params [required, String] :workflow_id
    #   The ID of the migration workflow.
    #
    # @return [Types::ListWorkflowStepGroupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListWorkflowStepGroupsResponse#next_token #next_token} => String
    #   * {Types::ListWorkflowStepGroupsResponse#workflow_step_groups_summary #workflow_step_groups_summary} => Array&lt;Types::WorkflowStepGroupSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_workflow_step_groups({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     workflow_id: "MigrationWorkflowId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.workflow_step_groups_summary #=> Array
    #   resp.workflow_step_groups_summary[0].id #=> String
    #   resp.workflow_step_groups_summary[0].name #=> String
    #   resp.workflow_step_groups_summary[0].owner #=> String, one of "AWS_MANAGED", "CUSTOM"
    #   resp.workflow_step_groups_summary[0].status #=> String, one of "AWAITING_DEPENDENCIES", "READY", "IN_PROGRESS", "COMPLETED", "FAILED", "PAUSED", "PAUSING", "USER_ATTENTION_REQUIRED"
    #   resp.workflow_step_groups_summary[0].previous #=> Array
    #   resp.workflow_step_groups_summary[0].previous[0] #=> String
    #   resp.workflow_step_groups_summary[0].next #=> Array
    #   resp.workflow_step_groups_summary[0].next[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/ListWorkflowStepGroups AWS API Documentation
    #
    # @overload list_workflow_step_groups(params = {})
    # @param [Hash] params ({})
    def list_workflow_step_groups(params = {}, options = {})
      req = build_request(:list_workflow_step_groups, params)
      req.send_request(options)
    end

    # List the steps in a workflow.
    #
    # @option params [String] :next_token
    #   The pagination token.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results that can be returned.
    #
    # @option params [required, String] :workflow_id
    #   The ID of the migration workflow.
    #
    # @option params [required, String] :step_group_id
    #   The ID of the step group.
    #
    # @return [Types::ListWorkflowStepsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListWorkflowStepsResponse#next_token #next_token} => String
    #   * {Types::ListWorkflowStepsResponse#workflow_steps_summary #workflow_steps_summary} => Array&lt;Types::WorkflowStepSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_workflow_steps({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     workflow_id: "MigrationWorkflowId", # required
    #     step_group_id: "StepGroupId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.workflow_steps_summary #=> Array
    #   resp.workflow_steps_summary[0].step_id #=> String
    #   resp.workflow_steps_summary[0].name #=> String
    #   resp.workflow_steps_summary[0].step_action_type #=> String, one of "MANUAL", "AUTOMATED"
    #   resp.workflow_steps_summary[0].owner #=> String, one of "AWS_MANAGED", "CUSTOM"
    #   resp.workflow_steps_summary[0].previous #=> Array
    #   resp.workflow_steps_summary[0].previous[0] #=> String
    #   resp.workflow_steps_summary[0].next #=> Array
    #   resp.workflow_steps_summary[0].next[0] #=> String
    #   resp.workflow_steps_summary[0].status #=> String, one of "AWAITING_DEPENDENCIES", "READY", "IN_PROGRESS", "COMPLETED", "FAILED", "PAUSED", "USER_ATTENTION_REQUIRED"
    #   resp.workflow_steps_summary[0].status_message #=> String
    #   resp.workflow_steps_summary[0].no_of_srv_completed #=> Integer
    #   resp.workflow_steps_summary[0].no_of_srv_failed #=> Integer
    #   resp.workflow_steps_summary[0].total_no_of_srv #=> Integer
    #   resp.workflow_steps_summary[0].description #=> String
    #   resp.workflow_steps_summary[0].script_location #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/ListWorkflowSteps AWS API Documentation
    #
    # @overload list_workflow_steps(params = {})
    # @param [Hash] params ({})
    def list_workflow_steps(params = {}, options = {})
      req = build_request(:list_workflow_steps, params)
      req.send_request(options)
    end

    # List the migration workflows.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results that can be returned.
    #
    # @option params [String] :next_token
    #   The pagination token.
    #
    # @option params [String] :template_id
    #   The ID of the template.
    #
    # @option params [String] :ads_application_configuration_name
    #   The name of the application configured in Application Discovery
    #   Service.
    #
    # @option params [String] :status
    #   The status of the migration workflow.
    #
    # @option params [String] :name
    #   The name of the migration workflow.
    #
    # @return [Types::ListMigrationWorkflowsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListMigrationWorkflowsResponse#next_token #next_token} => String
    #   * {Types::ListMigrationWorkflowsResponse#migration_workflow_summary #migration_workflow_summary} => Array&lt;Types::MigrationWorkflowSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_workflows({
    #     max_results: 1,
    #     next_token: "NextToken",
    #     template_id: "TemplateId",
    #     ads_application_configuration_name: "ApplicationConfigurationName",
    #     status: "CREATING", # accepts CREATING, NOT_STARTED, CREATION_FAILED, STARTING, IN_PROGRESS, WORKFLOW_FAILED, PAUSED, PAUSING, PAUSING_FAILED, USER_ATTENTION_REQUIRED, DELETING, DELETION_FAILED, DELETED, COMPLETED
    #     name: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.migration_workflow_summary #=> Array
    #   resp.migration_workflow_summary[0].id #=> String
    #   resp.migration_workflow_summary[0].name #=> String
    #   resp.migration_workflow_summary[0].template_id #=> String
    #   resp.migration_workflow_summary[0].ads_application_configuration_name #=> String
    #   resp.migration_workflow_summary[0].status #=> String, one of "CREATING", "NOT_STARTED", "CREATION_FAILED", "STARTING", "IN_PROGRESS", "WORKFLOW_FAILED", "PAUSED", "PAUSING", "PAUSING_FAILED", "USER_ATTENTION_REQUIRED", "DELETING", "DELETION_FAILED", "DELETED", "COMPLETED"
    #   resp.migration_workflow_summary[0].creation_time #=> Time
    #   resp.migration_workflow_summary[0].end_time #=> Time
    #   resp.migration_workflow_summary[0].status_message #=> String
    #   resp.migration_workflow_summary[0].completed_steps #=> Integer
    #   resp.migration_workflow_summary[0].total_steps #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/ListWorkflows AWS API Documentation
    #
    # @overload list_workflows(params = {})
    # @param [Hash] params ({})
    def list_workflows(params = {}, options = {})
      req = build_request(:list_workflows, params)
      req.send_request(options)
    end

    # Retry a failed step in a migration workflow.
    #
    # @option params [required, String] :workflow_id
    #   The ID of the migration workflow.
    #
    # @option params [required, String] :step_group_id
    #   The ID of the step group.
    #
    # @option params [required, String] :id
    #   The ID of the step.
    #
    # @return [Types::RetryWorkflowStepResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RetryWorkflowStepResponse#step_group_id #step_group_id} => String
    #   * {Types::RetryWorkflowStepResponse#workflow_id #workflow_id} => String
    #   * {Types::RetryWorkflowStepResponse#id #id} => String
    #   * {Types::RetryWorkflowStepResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.retry_workflow_step({
    #     workflow_id: "MigrationWorkflowId", # required
    #     step_group_id: "StepGroupId", # required
    #     id: "StepId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.step_group_id #=> String
    #   resp.workflow_id #=> String
    #   resp.id #=> String
    #   resp.status #=> String, one of "AWAITING_DEPENDENCIES", "READY", "IN_PROGRESS", "COMPLETED", "FAILED", "PAUSED", "USER_ATTENTION_REQUIRED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/RetryWorkflowStep AWS API Documentation
    #
    # @overload retry_workflow_step(params = {})
    # @param [Hash] params ({})
    def retry_workflow_step(params = {}, options = {})
      req = build_request(:retry_workflow_step, params)
      req.send_request(options)
    end

    # Start a migration workflow.
    #
    # @option params [required, String] :id
    #   The ID of the migration workflow.
    #
    # @return [Types::StartMigrationWorkflowResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartMigrationWorkflowResponse#id #id} => String
    #   * {Types::StartMigrationWorkflowResponse#arn #arn} => String
    #   * {Types::StartMigrationWorkflowResponse#status #status} => String
    #   * {Types::StartMigrationWorkflowResponse#status_message #status_message} => String
    #   * {Types::StartMigrationWorkflowResponse#last_start_time #last_start_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_workflow({
    #     id: "MigrationWorkflowId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.arn #=> String
    #   resp.status #=> String, one of "CREATING", "NOT_STARTED", "CREATION_FAILED", "STARTING", "IN_PROGRESS", "WORKFLOW_FAILED", "PAUSED", "PAUSING", "PAUSING_FAILED", "USER_ATTENTION_REQUIRED", "DELETING", "DELETION_FAILED", "DELETED", "COMPLETED"
    #   resp.status_message #=> String
    #   resp.last_start_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/StartWorkflow AWS API Documentation
    #
    # @overload start_workflow(params = {})
    # @param [Hash] params ({})
    def start_workflow(params = {}, options = {})
      req = build_request(:start_workflow, params)
      req.send_request(options)
    end

    # Stop an ongoing migration workflow.
    #
    # @option params [required, String] :id
    #   The ID of the migration workflow.
    #
    # @return [Types::StopMigrationWorkflowResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopMigrationWorkflowResponse#id #id} => String
    #   * {Types::StopMigrationWorkflowResponse#arn #arn} => String
    #   * {Types::StopMigrationWorkflowResponse#status #status} => String
    #   * {Types::StopMigrationWorkflowResponse#status_message #status_message} => String
    #   * {Types::StopMigrationWorkflowResponse#last_stop_time #last_stop_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_workflow({
    #     id: "MigrationWorkflowId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.arn #=> String
    #   resp.status #=> String, one of "CREATING", "NOT_STARTED", "CREATION_FAILED", "STARTING", "IN_PROGRESS", "WORKFLOW_FAILED", "PAUSED", "PAUSING", "PAUSING_FAILED", "USER_ATTENTION_REQUIRED", "DELETING", "DELETION_FAILED", "DELETED", "COMPLETED"
    #   resp.status_message #=> String
    #   resp.last_stop_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/StopWorkflow AWS API Documentation
    #
    # @overload stop_workflow(params = {})
    # @param [Hash] params ({})
    def stop_workflow(params = {}, options = {})
      req = build_request(:stop_workflow, params)
      req.send_request(options)
    end

    # Tag a resource by specifying its Amazon Resource Name (ARN).
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource to which you want to
    #   add tags.
    #
    # @option params [required, Hash<String,String>] :tags
    #   A collection of labels, in the form of key:value pairs, that apply to
    #   this resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "ResourceArn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Deletes the tags for a resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource from which you want to
    #   remove tags.
    #
    # @option params [required, Array<String>] :tag_keys
    #   One or more tag keys. Specify only the tag keys, not the tag values.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "ResourceArn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Update a migration workflow.
    #
    # @option params [required, String] :id
    #   The ID of the migration workflow.
    #
    # @option params [String] :name
    #   The name of the migration workflow.
    #
    # @option params [String] :description
    #   The description of the migration workflow.
    #
    # @option params [Hash<String,Types::StepInput>] :input_parameters
    #   The input parameters required to update a migration workflow.
    #
    # @option params [Array<String>] :step_targets
    #   The servers on which a step will be run.
    #
    # @return [Types::UpdateMigrationWorkflowResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateMigrationWorkflowResponse#id #id} => String
    #   * {Types::UpdateMigrationWorkflowResponse#arn #arn} => String
    #   * {Types::UpdateMigrationWorkflowResponse#name #name} => String
    #   * {Types::UpdateMigrationWorkflowResponse#description #description} => String
    #   * {Types::UpdateMigrationWorkflowResponse#template_id #template_id} => String
    #   * {Types::UpdateMigrationWorkflowResponse#ads_application_configuration_id #ads_application_configuration_id} => String
    #   * {Types::UpdateMigrationWorkflowResponse#workflow_inputs #workflow_inputs} => Hash&lt;String,Types::StepInput&gt;
    #   * {Types::UpdateMigrationWorkflowResponse#step_targets #step_targets} => Array&lt;String&gt;
    #   * {Types::UpdateMigrationWorkflowResponse#status #status} => String
    #   * {Types::UpdateMigrationWorkflowResponse#creation_time #creation_time} => Time
    #   * {Types::UpdateMigrationWorkflowResponse#last_modified_time #last_modified_time} => Time
    #   * {Types::UpdateMigrationWorkflowResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_workflow({
    #     id: "MigrationWorkflowId", # required
    #     name: "UpdateMigrationWorkflowRequestNameString",
    #     description: "UpdateMigrationWorkflowRequestDescriptionString",
    #     input_parameters: {
    #       "StepInputParametersKey" => {
    #         integer_value: 1,
    #         string_value: "StringValue",
    #         list_of_strings_value: ["StringListMember"],
    #         map_of_string_value: {
    #           "StringMapKey" => "StringMapValue",
    #         },
    #       },
    #     },
    #     step_targets: ["StringListMember"],
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.arn #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.template_id #=> String
    #   resp.ads_application_configuration_id #=> String
    #   resp.workflow_inputs #=> Hash
    #   resp.workflow_inputs["StepInputParametersKey"].integer_value #=> Integer
    #   resp.workflow_inputs["StepInputParametersKey"].string_value #=> String
    #   resp.workflow_inputs["StepInputParametersKey"].list_of_strings_value #=> Array
    #   resp.workflow_inputs["StepInputParametersKey"].list_of_strings_value[0] #=> String
    #   resp.workflow_inputs["StepInputParametersKey"].map_of_string_value #=> Hash
    #   resp.workflow_inputs["StepInputParametersKey"].map_of_string_value["StringMapKey"] #=> String
    #   resp.step_targets #=> Array
    #   resp.step_targets[0] #=> String
    #   resp.status #=> String, one of "CREATING", "NOT_STARTED", "CREATION_FAILED", "STARTING", "IN_PROGRESS", "WORKFLOW_FAILED", "PAUSED", "PAUSING", "PAUSING_FAILED", "USER_ATTENTION_REQUIRED", "DELETING", "DELETION_FAILED", "DELETED", "COMPLETED"
    #   resp.creation_time #=> Time
    #   resp.last_modified_time #=> Time
    #   resp.tags #=> Hash
    #   resp.tags["StringMapKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/UpdateWorkflow AWS API Documentation
    #
    # @overload update_workflow(params = {})
    # @param [Hash] params ({})
    def update_workflow(params = {}, options = {})
      req = build_request(:update_workflow, params)
      req.send_request(options)
    end

    # Update a step in a migration workflow.
    #
    # @option params [required, String] :id
    #   The ID of the step.
    #
    # @option params [required, String] :step_group_id
    #   The ID of the step group.
    #
    # @option params [required, String] :workflow_id
    #   The ID of the migration workflow.
    #
    # @option params [String] :name
    #   The name of the step.
    #
    # @option params [String] :description
    #   The description of the step.
    #
    # @option params [String] :step_action_type
    #   The action type of the step. You must run and update the status of a
    #   manual step for the workflow to continue after the completion of the
    #   step.
    #
    # @option params [Types::WorkflowStepAutomationConfiguration] :workflow_step_automation_configuration
    #   The custom script to run tests on the source and target environments.
    #
    # @option params [Array<String>] :step_target
    #   The servers on which a step will be run.
    #
    # @option params [Array<Types::WorkflowStepOutput>] :outputs
    #   The outputs of a step.
    #
    # @option params [Array<String>] :previous
    #   The previous step.
    #
    # @option params [Array<String>] :next
    #   The next step.
    #
    # @option params [String] :status
    #   The status of the step.
    #
    # @return [Types::UpdateWorkflowStepResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateWorkflowStepResponse#id #id} => String
    #   * {Types::UpdateWorkflowStepResponse#step_group_id #step_group_id} => String
    #   * {Types::UpdateWorkflowStepResponse#workflow_id #workflow_id} => String
    #   * {Types::UpdateWorkflowStepResponse#name #name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_workflow_step({
    #     id: "StepId", # required
    #     step_group_id: "StepGroupId", # required
    #     workflow_id: "MigrationWorkflowId", # required
    #     name: "StepName",
    #     description: "StepDescription",
    #     step_action_type: "MANUAL", # accepts MANUAL, AUTOMATED
    #     workflow_step_automation_configuration: {
    #       script_location_s3_bucket: "S3Bucket",
    #       script_location_s3_key: {
    #         linux: "S3Key",
    #         windows: "S3Key",
    #       },
    #       command: {
    #         linux: "String",
    #         windows: "String",
    #       },
    #       run_environment: "AWS", # accepts AWS, ONPREMISE
    #       target_type: "SINGLE", # accepts SINGLE, ALL, NONE
    #     },
    #     step_target: ["StringListMember"],
    #     outputs: [
    #       {
    #         name: "WorkflowStepOutputName",
    #         data_type: "STRING", # accepts STRING, INTEGER, STRINGLIST, STRINGMAP
    #         required: false,
    #         value: {
    #           integer_value: 1,
    #           string_value: "StringValue",
    #           list_of_string_value: ["StringListMember"],
    #         },
    #       },
    #     ],
    #     previous: ["StringListMember"],
    #     next: ["StringListMember"],
    #     status: "AWAITING_DEPENDENCIES", # accepts AWAITING_DEPENDENCIES, READY, IN_PROGRESS, COMPLETED, FAILED, PAUSED, USER_ATTENTION_REQUIRED
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.step_group_id #=> String
    #   resp.workflow_id #=> String
    #   resp.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/UpdateWorkflowStep AWS API Documentation
    #
    # @overload update_workflow_step(params = {})
    # @param [Hash] params ({})
    def update_workflow_step(params = {}, options = {})
      req = build_request(:update_workflow_step, params)
      req.send_request(options)
    end

    # Update the step group in a migration workflow.
    #
    # @option params [required, String] :workflow_id
    #   The ID of the migration workflow.
    #
    # @option params [required, String] :id
    #   The ID of the step group.
    #
    # @option params [String] :name
    #   The name of the step group.
    #
    # @option params [String] :description
    #   The description of the step group.
    #
    # @option params [Array<String>] :next
    #   The next step group.
    #
    # @option params [Array<String>] :previous
    #   The previous step group.
    #
    # @return [Types::UpdateWorkflowStepGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateWorkflowStepGroupResponse#workflow_id #workflow_id} => String
    #   * {Types::UpdateWorkflowStepGroupResponse#name #name} => String
    #   * {Types::UpdateWorkflowStepGroupResponse#id #id} => String
    #   * {Types::UpdateWorkflowStepGroupResponse#description #description} => String
    #   * {Types::UpdateWorkflowStepGroupResponse#tools #tools} => Array&lt;Types::Tool&gt;
    #   * {Types::UpdateWorkflowStepGroupResponse#next #next} => Array&lt;String&gt;
    #   * {Types::UpdateWorkflowStepGroupResponse#previous #previous} => Array&lt;String&gt;
    #   * {Types::UpdateWorkflowStepGroupResponse#last_modified_time #last_modified_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_workflow_step_group({
    #     workflow_id: "MigrationWorkflowId", # required
    #     id: "StepGroupId", # required
    #     name: "StepGroupName",
    #     description: "StepGroupDescription",
    #     next: ["StringListMember"],
    #     previous: ["StringListMember"],
    #   })
    #
    # @example Response structure
    #
    #   resp.workflow_id #=> String
    #   resp.name #=> String
    #   resp.id #=> String
    #   resp.description #=> String
    #   resp.tools #=> Array
    #   resp.tools[0].name #=> String
    #   resp.tools[0].url #=> String
    #   resp.next #=> Array
    #   resp.next[0] #=> String
    #   resp.previous #=> Array
    #   resp.previous[0] #=> String
    #   resp.last_modified_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhuborchestrator-2021-08-28/UpdateWorkflowStepGroup AWS API Documentation
    #
    # @overload update_workflow_step_group(params = {})
    # @param [Hash] params ({})
    def update_workflow_step_group(params = {}, options = {})
      req = build_request(:update_workflow_step_group, params)
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
      context[:gem_name] = 'aws-sdk-migrationhuborchestrator'
      context[:gem_version] = '1.7.0'
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
