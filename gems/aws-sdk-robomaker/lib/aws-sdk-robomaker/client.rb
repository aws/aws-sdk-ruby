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

Aws::Plugins::GlobalConfiguration.add_identifier(:robomaker)

module Aws::RoboMaker
  # An API client for RoboMaker.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::RoboMaker::Client.new(
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

    @identifier = :robomaker

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

    # Deletes one or more worlds in a batch operation.
    #
    # @option params [required, Array<String>] :worlds
    #   A list of Amazon Resource Names (arns) that correspond to worlds to
    #   delete.
    #
    # @return [Types::BatchDeleteWorldsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchDeleteWorldsResponse#unprocessed_worlds #unprocessed_worlds} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_delete_worlds({
    #     worlds: ["Arn"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.unprocessed_worlds #=> Array
    #   resp.unprocessed_worlds[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/BatchDeleteWorlds AWS API Documentation
    #
    # @overload batch_delete_worlds(params = {})
    # @param [Hash] params ({})
    def batch_delete_worlds(params = {}, options = {})
      req = build_request(:batch_delete_worlds, params)
      req.send_request(options)
    end

    # Describes one or more simulation jobs.
    #
    # @option params [required, Array<String>] :jobs
    #   A list of Amazon Resource Names (ARNs) of simulation jobs to describe.
    #
    # @return [Types::BatchDescribeSimulationJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchDescribeSimulationJobResponse#jobs #jobs} => Array&lt;Types::SimulationJob&gt;
    #   * {Types::BatchDescribeSimulationJobResponse#unprocessed_jobs #unprocessed_jobs} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_describe_simulation_job({
    #     jobs: ["Arn"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.jobs #=> Array
    #   resp.jobs[0].arn #=> String
    #   resp.jobs[0].name #=> String
    #   resp.jobs[0].status #=> String, one of "Pending", "Preparing", "Running", "Restarting", "Completed", "Failed", "RunningFailed", "Terminating", "Terminated", "Canceled"
    #   resp.jobs[0].last_started_at #=> Time
    #   resp.jobs[0].last_updated_at #=> Time
    #   resp.jobs[0].failure_behavior #=> String, one of "Fail", "Continue"
    #   resp.jobs[0].failure_code #=> String, one of "InternalServiceError", "RobotApplicationCrash", "SimulationApplicationCrash", "BadPermissionsRobotApplication", "BadPermissionsSimulationApplication", "BadPermissionsS3Object", "BadPermissionsS3Output", "BadPermissionsCloudwatchLogs", "SubnetIpLimitExceeded", "ENILimitExceeded", "BadPermissionsUserCredentials", "InvalidBundleRobotApplication", "InvalidBundleSimulationApplication", "InvalidS3Resource", "LimitExceeded", "MismatchedEtag", "RobotApplicationVersionMismatchedEtag", "SimulationApplicationVersionMismatchedEtag", "ResourceNotFound", "RequestThrottled", "BatchTimedOut", "BatchCanceled", "InvalidInput", "WrongRegionS3Bucket", "WrongRegionS3Output", "WrongRegionRobotApplication", "WrongRegionSimulationApplication"
    #   resp.jobs[0].failure_reason #=> String
    #   resp.jobs[0].client_request_token #=> String
    #   resp.jobs[0].output_location.s3_bucket #=> String
    #   resp.jobs[0].output_location.s3_prefix #=> String
    #   resp.jobs[0].logging_config.record_all_ros_topics #=> Boolean
    #   resp.jobs[0].max_job_duration_in_seconds #=> Integer
    #   resp.jobs[0].simulation_time_millis #=> Integer
    #   resp.jobs[0].iam_role #=> String
    #   resp.jobs[0].robot_applications #=> Array
    #   resp.jobs[0].robot_applications[0].application #=> String
    #   resp.jobs[0].robot_applications[0].application_version #=> String
    #   resp.jobs[0].robot_applications[0].launch_config.package_name #=> String
    #   resp.jobs[0].robot_applications[0].launch_config.launch_file #=> String
    #   resp.jobs[0].robot_applications[0].launch_config.environment_variables #=> Hash
    #   resp.jobs[0].robot_applications[0].launch_config.environment_variables["EnvironmentVariableKey"] #=> String
    #   resp.jobs[0].robot_applications[0].launch_config.port_forwarding_config.port_mappings #=> Array
    #   resp.jobs[0].robot_applications[0].launch_config.port_forwarding_config.port_mappings[0].job_port #=> Integer
    #   resp.jobs[0].robot_applications[0].launch_config.port_forwarding_config.port_mappings[0].application_port #=> Integer
    #   resp.jobs[0].robot_applications[0].launch_config.port_forwarding_config.port_mappings[0].enable_on_public_ip #=> Boolean
    #   resp.jobs[0].robot_applications[0].launch_config.stream_ui #=> Boolean
    #   resp.jobs[0].simulation_applications #=> Array
    #   resp.jobs[0].simulation_applications[0].application #=> String
    #   resp.jobs[0].simulation_applications[0].application_version #=> String
    #   resp.jobs[0].simulation_applications[0].launch_config.package_name #=> String
    #   resp.jobs[0].simulation_applications[0].launch_config.launch_file #=> String
    #   resp.jobs[0].simulation_applications[0].launch_config.environment_variables #=> Hash
    #   resp.jobs[0].simulation_applications[0].launch_config.environment_variables["EnvironmentVariableKey"] #=> String
    #   resp.jobs[0].simulation_applications[0].launch_config.port_forwarding_config.port_mappings #=> Array
    #   resp.jobs[0].simulation_applications[0].launch_config.port_forwarding_config.port_mappings[0].job_port #=> Integer
    #   resp.jobs[0].simulation_applications[0].launch_config.port_forwarding_config.port_mappings[0].application_port #=> Integer
    #   resp.jobs[0].simulation_applications[0].launch_config.port_forwarding_config.port_mappings[0].enable_on_public_ip #=> Boolean
    #   resp.jobs[0].simulation_applications[0].launch_config.stream_ui #=> Boolean
    #   resp.jobs[0].simulation_applications[0].world_configs #=> Array
    #   resp.jobs[0].simulation_applications[0].world_configs[0].world #=> String
    #   resp.jobs[0].data_sources #=> Array
    #   resp.jobs[0].data_sources[0].name #=> String
    #   resp.jobs[0].data_sources[0].s3_bucket #=> String
    #   resp.jobs[0].data_sources[0].s3_keys #=> Array
    #   resp.jobs[0].data_sources[0].s3_keys[0].s3_key #=> String
    #   resp.jobs[0].data_sources[0].s3_keys[0].etag #=> String
    #   resp.jobs[0].tags #=> Hash
    #   resp.jobs[0].tags["TagKey"] #=> String
    #   resp.jobs[0].vpc_config.subnets #=> Array
    #   resp.jobs[0].vpc_config.subnets[0] #=> String
    #   resp.jobs[0].vpc_config.security_groups #=> Array
    #   resp.jobs[0].vpc_config.security_groups[0] #=> String
    #   resp.jobs[0].vpc_config.vpc_id #=> String
    #   resp.jobs[0].vpc_config.assign_public_ip #=> Boolean
    #   resp.jobs[0].network_interface.network_interface_id #=> String
    #   resp.jobs[0].network_interface.private_ip_address #=> String
    #   resp.jobs[0].network_interface.public_ip_address #=> String
    #   resp.jobs[0].compute.simulation_unit_limit #=> Integer
    #   resp.unprocessed_jobs #=> Array
    #   resp.unprocessed_jobs[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/BatchDescribeSimulationJob AWS API Documentation
    #
    # @overload batch_describe_simulation_job(params = {})
    # @param [Hash] params ({})
    def batch_describe_simulation_job(params = {}, options = {})
      req = build_request(:batch_describe_simulation_job, params)
      req.send_request(options)
    end

    # Cancels the specified deployment job.
    #
    # @option params [required, String] :job
    #   The deployment job ARN to cancel.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_deployment_job({
    #     job: "Arn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/CancelDeploymentJob AWS API Documentation
    #
    # @overload cancel_deployment_job(params = {})
    # @param [Hash] params ({})
    def cancel_deployment_job(params = {}, options = {})
      req = build_request(:cancel_deployment_job, params)
      req.send_request(options)
    end

    # Cancels the specified simulation job.
    #
    # @option params [required, String] :job
    #   The simulation job ARN to cancel.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_simulation_job({
    #     job: "Arn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/CancelSimulationJob AWS API Documentation
    #
    # @overload cancel_simulation_job(params = {})
    # @param [Hash] params ({})
    def cancel_simulation_job(params = {}, options = {})
      req = build_request(:cancel_simulation_job, params)
      req.send_request(options)
    end

    # Cancels a simulation job batch. When you cancel a simulation job
    # batch, you are also cancelling all of the active simulation jobs
    # created as part of the batch.
    #
    # @option params [required, String] :batch
    #   The id of the batch to cancel.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_simulation_job_batch({
    #     batch: "Arn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/CancelSimulationJobBatch AWS API Documentation
    #
    # @overload cancel_simulation_job_batch(params = {})
    # @param [Hash] params ({})
    def cancel_simulation_job_batch(params = {}, options = {})
      req = build_request(:cancel_simulation_job_batch, params)
      req.send_request(options)
    end

    # Cancels the specified export job.
    #
    # @option params [required, String] :job
    #   The Amazon Resource Name (arn) of the world export job to cancel.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_world_export_job({
    #     job: "Arn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/CancelWorldExportJob AWS API Documentation
    #
    # @overload cancel_world_export_job(params = {})
    # @param [Hash] params ({})
    def cancel_world_export_job(params = {}, options = {})
      req = build_request(:cancel_world_export_job, params)
      req.send_request(options)
    end

    # Cancels the specified world generator job.
    #
    # @option params [required, String] :job
    #   The Amazon Resource Name (arn) of the world generator job to cancel.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_world_generation_job({
    #     job: "Arn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/CancelWorldGenerationJob AWS API Documentation
    #
    # @overload cancel_world_generation_job(params = {})
    # @param [Hash] params ({})
    def cancel_world_generation_job(params = {}, options = {})
      req = build_request(:cancel_world_generation_job, params)
      req.send_request(options)
    end

    # Deploys a specific version of a robot application to robots in a
    # fleet.
    #
    # The robot application must have a numbered `applicationVersion` for
    # consistency reasons. To create a new version, use
    # `CreateRobotApplicationVersion` or see [Creating a Robot Application
    # Version][1].
    #
    # <note markdown="1"> After 90 days, deployment jobs expire and will be deleted. They will
    # no longer be accessible.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/robomaker/latest/dg/create-robot-application-version.html
    #
    # @option params [Types::DeploymentConfig] :deployment_config
    #   The requested deployment configuration.
    #
    # @option params [required, String] :client_request_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :fleet
    #   The Amazon Resource Name (ARN) of the fleet to deploy.
    #
    # @option params [required, Array<Types::DeploymentApplicationConfig>] :deployment_application_configs
    #   The deployment application configuration.
    #
    # @option params [Hash<String,String>] :tags
    #   A map that contains tag keys and tag values that are attached to the
    #   deployment job.
    #
    # @return [Types::CreateDeploymentJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDeploymentJobResponse#arn #arn} => String
    #   * {Types::CreateDeploymentJobResponse#fleet #fleet} => String
    #   * {Types::CreateDeploymentJobResponse#status #status} => String
    #   * {Types::CreateDeploymentJobResponse#deployment_application_configs #deployment_application_configs} => Array&lt;Types::DeploymentApplicationConfig&gt;
    #   * {Types::CreateDeploymentJobResponse#failure_reason #failure_reason} => String
    #   * {Types::CreateDeploymentJobResponse#failure_code #failure_code} => String
    #   * {Types::CreateDeploymentJobResponse#created_at #created_at} => Time
    #   * {Types::CreateDeploymentJobResponse#deployment_config #deployment_config} => Types::DeploymentConfig
    #   * {Types::CreateDeploymentJobResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_deployment_job({
    #     deployment_config: {
    #       concurrent_deployment_percentage: 1,
    #       failure_threshold_percentage: 1,
    #       robot_deployment_timeout_in_seconds: 1,
    #       download_condition_file: {
    #         bucket: "S3Bucket", # required
    #         key: "S3Key", # required
    #         etag: "S3Etag",
    #       },
    #     },
    #     client_request_token: "ClientRequestToken", # required
    #     fleet: "Arn", # required
    #     deployment_application_configs: [ # required
    #       {
    #         application: "Arn", # required
    #         application_version: "DeploymentVersion", # required
    #         launch_config: { # required
    #           package_name: "Command", # required
    #           pre_launch_file: "Path",
    #           launch_file: "Command", # required
    #           post_launch_file: "Path",
    #           environment_variables: {
    #             "EnvironmentVariableKey" => "EnvironmentVariableValue",
    #           },
    #         },
    #       },
    #     ],
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.fleet #=> String
    #   resp.status #=> String, one of "Pending", "Preparing", "InProgress", "Failed", "Succeeded", "Canceled"
    #   resp.deployment_application_configs #=> Array
    #   resp.deployment_application_configs[0].application #=> String
    #   resp.deployment_application_configs[0].application_version #=> String
    #   resp.deployment_application_configs[0].launch_config.package_name #=> String
    #   resp.deployment_application_configs[0].launch_config.pre_launch_file #=> String
    #   resp.deployment_application_configs[0].launch_config.launch_file #=> String
    #   resp.deployment_application_configs[0].launch_config.post_launch_file #=> String
    #   resp.deployment_application_configs[0].launch_config.environment_variables #=> Hash
    #   resp.deployment_application_configs[0].launch_config.environment_variables["EnvironmentVariableKey"] #=> String
    #   resp.failure_reason #=> String
    #   resp.failure_code #=> String, one of "ResourceNotFound", "EnvironmentSetupError", "EtagMismatch", "FailureThresholdBreached", "RobotDeploymentAborted", "RobotDeploymentNoResponse", "RobotAgentConnectionTimeout", "GreengrassDeploymentFailed", "InvalidGreengrassGroup", "MissingRobotArchitecture", "MissingRobotApplicationArchitecture", "MissingRobotDeploymentResource", "GreengrassGroupVersionDoesNotExist", "LambdaDeleted", "ExtractingBundleFailure", "PreLaunchFileFailure", "PostLaunchFileFailure", "BadPermissionError", "DownloadConditionFailed", "InternalServerError"
    #   resp.created_at #=> Time
    #   resp.deployment_config.concurrent_deployment_percentage #=> Integer
    #   resp.deployment_config.failure_threshold_percentage #=> Integer
    #   resp.deployment_config.robot_deployment_timeout_in_seconds #=> Integer
    #   resp.deployment_config.download_condition_file.bucket #=> String
    #   resp.deployment_config.download_condition_file.key #=> String
    #   resp.deployment_config.download_condition_file.etag #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/CreateDeploymentJob AWS API Documentation
    #
    # @overload create_deployment_job(params = {})
    # @param [Hash] params ({})
    def create_deployment_job(params = {}, options = {})
      req = build_request(:create_deployment_job, params)
      req.send_request(options)
    end

    # Creates a fleet, a logical group of robots running the same robot
    # application.
    #
    # @option params [required, String] :name
    #   The name of the fleet.
    #
    # @option params [Hash<String,String>] :tags
    #   A map that contains tag keys and tag values that are attached to the
    #   fleet.
    #
    # @return [Types::CreateFleetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateFleetResponse#arn #arn} => String
    #   * {Types::CreateFleetResponse#name #name} => String
    #   * {Types::CreateFleetResponse#created_at #created_at} => Time
    #   * {Types::CreateFleetResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_fleet({
    #     name: "Name", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.name #=> String
    #   resp.created_at #=> Time
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/CreateFleet AWS API Documentation
    #
    # @overload create_fleet(params = {})
    # @param [Hash] params ({})
    def create_fleet(params = {}, options = {})
      req = build_request(:create_fleet, params)
      req.send_request(options)
    end

    # Creates a robot.
    #
    # @option params [required, String] :name
    #   The name for the robot.
    #
    # @option params [required, String] :architecture
    #   The target architecture of the robot.
    #
    # @option params [required, String] :greengrass_group_id
    #   The Greengrass group id.
    #
    # @option params [Hash<String,String>] :tags
    #   A map that contains tag keys and tag values that are attached to the
    #   robot.
    #
    # @return [Types::CreateRobotResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateRobotResponse#arn #arn} => String
    #   * {Types::CreateRobotResponse#name #name} => String
    #   * {Types::CreateRobotResponse#created_at #created_at} => Time
    #   * {Types::CreateRobotResponse#greengrass_group_id #greengrass_group_id} => String
    #   * {Types::CreateRobotResponse#architecture #architecture} => String
    #   * {Types::CreateRobotResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_robot({
    #     name: "Name", # required
    #     architecture: "X86_64", # required, accepts X86_64, ARM64, ARMHF
    #     greengrass_group_id: "Id", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.name #=> String
    #   resp.created_at #=> Time
    #   resp.greengrass_group_id #=> String
    #   resp.architecture #=> String, one of "X86_64", "ARM64", "ARMHF"
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/CreateRobot AWS API Documentation
    #
    # @overload create_robot(params = {})
    # @param [Hash] params ({})
    def create_robot(params = {}, options = {})
      req = build_request(:create_robot, params)
      req.send_request(options)
    end

    # Creates a robot application.
    #
    # @option params [required, String] :name
    #   The name of the robot application.
    #
    # @option params [required, Array<Types::SourceConfig>] :sources
    #   The sources of the robot application.
    #
    # @option params [required, Types::RobotSoftwareSuite] :robot_software_suite
    #   The robot software suite (ROS distribuition) used by the robot
    #   application.
    #
    # @option params [Hash<String,String>] :tags
    #   A map that contains tag keys and tag values that are attached to the
    #   robot application.
    #
    # @return [Types::CreateRobotApplicationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateRobotApplicationResponse#arn #arn} => String
    #   * {Types::CreateRobotApplicationResponse#name #name} => String
    #   * {Types::CreateRobotApplicationResponse#version #version} => String
    #   * {Types::CreateRobotApplicationResponse#sources #sources} => Array&lt;Types::Source&gt;
    #   * {Types::CreateRobotApplicationResponse#robot_software_suite #robot_software_suite} => Types::RobotSoftwareSuite
    #   * {Types::CreateRobotApplicationResponse#last_updated_at #last_updated_at} => Time
    #   * {Types::CreateRobotApplicationResponse#revision_id #revision_id} => String
    #   * {Types::CreateRobotApplicationResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_robot_application({
    #     name: "Name", # required
    #     sources: [ # required
    #       {
    #         s3_bucket: "S3Bucket",
    #         s3_key: "S3Key",
    #         architecture: "X86_64", # accepts X86_64, ARM64, ARMHF
    #       },
    #     ],
    #     robot_software_suite: { # required
    #       name: "ROS", # accepts ROS, ROS2
    #       version: "Kinetic", # accepts Kinetic, Melodic, Dashing
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.name #=> String
    #   resp.version #=> String
    #   resp.sources #=> Array
    #   resp.sources[0].s3_bucket #=> String
    #   resp.sources[0].s3_key #=> String
    #   resp.sources[0].etag #=> String
    #   resp.sources[0].architecture #=> String, one of "X86_64", "ARM64", "ARMHF"
    #   resp.robot_software_suite.name #=> String, one of "ROS", "ROS2"
    #   resp.robot_software_suite.version #=> String, one of "Kinetic", "Melodic", "Dashing"
    #   resp.last_updated_at #=> Time
    #   resp.revision_id #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/CreateRobotApplication AWS API Documentation
    #
    # @overload create_robot_application(params = {})
    # @param [Hash] params ({})
    def create_robot_application(params = {}, options = {})
      req = build_request(:create_robot_application, params)
      req.send_request(options)
    end

    # Creates a version of a robot application.
    #
    # @option params [required, String] :application
    #   The application information for the robot application.
    #
    # @option params [String] :current_revision_id
    #   The current revision id for the robot application. If you provide a
    #   value and it matches the latest revision ID, a new version will be
    #   created.
    #
    # @return [Types::CreateRobotApplicationVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateRobotApplicationVersionResponse#arn #arn} => String
    #   * {Types::CreateRobotApplicationVersionResponse#name #name} => String
    #   * {Types::CreateRobotApplicationVersionResponse#version #version} => String
    #   * {Types::CreateRobotApplicationVersionResponse#sources #sources} => Array&lt;Types::Source&gt;
    #   * {Types::CreateRobotApplicationVersionResponse#robot_software_suite #robot_software_suite} => Types::RobotSoftwareSuite
    #   * {Types::CreateRobotApplicationVersionResponse#last_updated_at #last_updated_at} => Time
    #   * {Types::CreateRobotApplicationVersionResponse#revision_id #revision_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_robot_application_version({
    #     application: "Arn", # required
    #     current_revision_id: "RevisionId",
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.name #=> String
    #   resp.version #=> String
    #   resp.sources #=> Array
    #   resp.sources[0].s3_bucket #=> String
    #   resp.sources[0].s3_key #=> String
    #   resp.sources[0].etag #=> String
    #   resp.sources[0].architecture #=> String, one of "X86_64", "ARM64", "ARMHF"
    #   resp.robot_software_suite.name #=> String, one of "ROS", "ROS2"
    #   resp.robot_software_suite.version #=> String, one of "Kinetic", "Melodic", "Dashing"
    #   resp.last_updated_at #=> Time
    #   resp.revision_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/CreateRobotApplicationVersion AWS API Documentation
    #
    # @overload create_robot_application_version(params = {})
    # @param [Hash] params ({})
    def create_robot_application_version(params = {}, options = {})
      req = build_request(:create_robot_application_version, params)
      req.send_request(options)
    end

    # Creates a simulation application.
    #
    # @option params [required, String] :name
    #   The name of the simulation application.
    #
    # @option params [required, Array<Types::SourceConfig>] :sources
    #   The sources of the simulation application.
    #
    # @option params [required, Types::SimulationSoftwareSuite] :simulation_software_suite
    #   The simulation software suite used by the simulation application.
    #
    # @option params [required, Types::RobotSoftwareSuite] :robot_software_suite
    #   The robot software suite (ROS distribution) used by the simulation
    #   application.
    #
    # @option params [Types::RenderingEngine] :rendering_engine
    #   The rendering engine for the simulation application.
    #
    # @option params [Hash<String,String>] :tags
    #   A map that contains tag keys and tag values that are attached to the
    #   simulation application.
    #
    # @return [Types::CreateSimulationApplicationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSimulationApplicationResponse#arn #arn} => String
    #   * {Types::CreateSimulationApplicationResponse#name #name} => String
    #   * {Types::CreateSimulationApplicationResponse#version #version} => String
    #   * {Types::CreateSimulationApplicationResponse#sources #sources} => Array&lt;Types::Source&gt;
    #   * {Types::CreateSimulationApplicationResponse#simulation_software_suite #simulation_software_suite} => Types::SimulationSoftwareSuite
    #   * {Types::CreateSimulationApplicationResponse#robot_software_suite #robot_software_suite} => Types::RobotSoftwareSuite
    #   * {Types::CreateSimulationApplicationResponse#rendering_engine #rendering_engine} => Types::RenderingEngine
    #   * {Types::CreateSimulationApplicationResponse#last_updated_at #last_updated_at} => Time
    #   * {Types::CreateSimulationApplicationResponse#revision_id #revision_id} => String
    #   * {Types::CreateSimulationApplicationResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_simulation_application({
    #     name: "Name", # required
    #     sources: [ # required
    #       {
    #         s3_bucket: "S3Bucket",
    #         s3_key: "S3Key",
    #         architecture: "X86_64", # accepts X86_64, ARM64, ARMHF
    #       },
    #     ],
    #     simulation_software_suite: { # required
    #       name: "Gazebo", # accepts Gazebo, RosbagPlay
    #       version: "SimulationSoftwareSuiteVersionType",
    #     },
    #     robot_software_suite: { # required
    #       name: "ROS", # accepts ROS, ROS2
    #       version: "Kinetic", # accepts Kinetic, Melodic, Dashing
    #     },
    #     rendering_engine: {
    #       name: "OGRE", # accepts OGRE
    #       version: "RenderingEngineVersionType",
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.name #=> String
    #   resp.version #=> String
    #   resp.sources #=> Array
    #   resp.sources[0].s3_bucket #=> String
    #   resp.sources[0].s3_key #=> String
    #   resp.sources[0].etag #=> String
    #   resp.sources[0].architecture #=> String, one of "X86_64", "ARM64", "ARMHF"
    #   resp.simulation_software_suite.name #=> String, one of "Gazebo", "RosbagPlay"
    #   resp.simulation_software_suite.version #=> String
    #   resp.robot_software_suite.name #=> String, one of "ROS", "ROS2"
    #   resp.robot_software_suite.version #=> String, one of "Kinetic", "Melodic", "Dashing"
    #   resp.rendering_engine.name #=> String, one of "OGRE"
    #   resp.rendering_engine.version #=> String
    #   resp.last_updated_at #=> Time
    #   resp.revision_id #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/CreateSimulationApplication AWS API Documentation
    #
    # @overload create_simulation_application(params = {})
    # @param [Hash] params ({})
    def create_simulation_application(params = {}, options = {})
      req = build_request(:create_simulation_application, params)
      req.send_request(options)
    end

    # Creates a simulation application with a specific revision id.
    #
    # @option params [required, String] :application
    #   The application information for the simulation application.
    #
    # @option params [String] :current_revision_id
    #   The current revision id for the simulation application. If you provide
    #   a value and it matches the latest revision ID, a new version will be
    #   created.
    #
    # @return [Types::CreateSimulationApplicationVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSimulationApplicationVersionResponse#arn #arn} => String
    #   * {Types::CreateSimulationApplicationVersionResponse#name #name} => String
    #   * {Types::CreateSimulationApplicationVersionResponse#version #version} => String
    #   * {Types::CreateSimulationApplicationVersionResponse#sources #sources} => Array&lt;Types::Source&gt;
    #   * {Types::CreateSimulationApplicationVersionResponse#simulation_software_suite #simulation_software_suite} => Types::SimulationSoftwareSuite
    #   * {Types::CreateSimulationApplicationVersionResponse#robot_software_suite #robot_software_suite} => Types::RobotSoftwareSuite
    #   * {Types::CreateSimulationApplicationVersionResponse#rendering_engine #rendering_engine} => Types::RenderingEngine
    #   * {Types::CreateSimulationApplicationVersionResponse#last_updated_at #last_updated_at} => Time
    #   * {Types::CreateSimulationApplicationVersionResponse#revision_id #revision_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_simulation_application_version({
    #     application: "Arn", # required
    #     current_revision_id: "RevisionId",
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.name #=> String
    #   resp.version #=> String
    #   resp.sources #=> Array
    #   resp.sources[0].s3_bucket #=> String
    #   resp.sources[0].s3_key #=> String
    #   resp.sources[0].etag #=> String
    #   resp.sources[0].architecture #=> String, one of "X86_64", "ARM64", "ARMHF"
    #   resp.simulation_software_suite.name #=> String, one of "Gazebo", "RosbagPlay"
    #   resp.simulation_software_suite.version #=> String
    #   resp.robot_software_suite.name #=> String, one of "ROS", "ROS2"
    #   resp.robot_software_suite.version #=> String, one of "Kinetic", "Melodic", "Dashing"
    #   resp.rendering_engine.name #=> String, one of "OGRE"
    #   resp.rendering_engine.version #=> String
    #   resp.last_updated_at #=> Time
    #   resp.revision_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/CreateSimulationApplicationVersion AWS API Documentation
    #
    # @overload create_simulation_application_version(params = {})
    # @param [Hash] params ({})
    def create_simulation_application_version(params = {}, options = {})
      req = build_request(:create_simulation_application_version, params)
      req.send_request(options)
    end

    # Creates a simulation job.
    #
    # <note markdown="1"> After 90 days, simulation jobs expire and will be deleted. They will
    # no longer be accessible.
    #
    #  </note>
    #
    # @option params [String] :client_request_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Types::OutputLocation] :output_location
    #   Location for output files generated by the simulation job.
    #
    # @option params [Types::LoggingConfig] :logging_config
    #   The logging configuration.
    #
    # @option params [required, Integer] :max_job_duration_in_seconds
    #   The maximum simulation job duration in seconds (up to 14 days or
    #   1,209,600 seconds. When `maxJobDurationInSeconds` is reached, the
    #   simulation job will status will transition to `Completed`.
    #
    # @option params [required, String] :iam_role
    #   The IAM role name that allows the simulation instance to call the AWS
    #   APIs that are specified in its associated policies on your behalf.
    #   This is how credentials are passed in to your simulation job.
    #
    # @option params [String] :failure_behavior
    #   The failure behavior the simulation job.
    #
    #   Continue
    #
    #   : Restart the simulation job in the same host instance.
    #
    #   Fail
    #
    #   : Stop the simulation job and terminate the instance.
    #
    # @option params [Array<Types::RobotApplicationConfig>] :robot_applications
    #   The robot application to use in the simulation job.
    #
    # @option params [Array<Types::SimulationApplicationConfig>] :simulation_applications
    #   The simulation application to use in the simulation job.
    #
    # @option params [Array<Types::DataSourceConfig>] :data_sources
    #   Specify data sources to mount read-only files from S3 into your
    #   simulation. These files are available under
    #   `/opt/robomaker/datasources/data_source_name`.
    #
    #   <note markdown="1"> There is a limit of 100 files and a combined size of 25GB for all
    #   `DataSourceConfig` objects.
    #
    #    </note>
    #
    # @option params [Hash<String,String>] :tags
    #   A map that contains tag keys and tag values that are attached to the
    #   simulation job.
    #
    # @option params [Types::VPCConfig] :vpc_config
    #   If your simulation job accesses resources in a VPC, you provide this
    #   parameter identifying the list of security group IDs and subnet IDs.
    #   These must belong to the same VPC. You must provide at least one
    #   security group and one subnet ID.
    #
    # @option params [Types::Compute] :compute
    #   Compute information for the simulation job.
    #
    # @return [Types::CreateSimulationJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSimulationJobResponse#arn #arn} => String
    #   * {Types::CreateSimulationJobResponse#status #status} => String
    #   * {Types::CreateSimulationJobResponse#last_started_at #last_started_at} => Time
    #   * {Types::CreateSimulationJobResponse#last_updated_at #last_updated_at} => Time
    #   * {Types::CreateSimulationJobResponse#failure_behavior #failure_behavior} => String
    #   * {Types::CreateSimulationJobResponse#failure_code #failure_code} => String
    #   * {Types::CreateSimulationJobResponse#client_request_token #client_request_token} => String
    #   * {Types::CreateSimulationJobResponse#output_location #output_location} => Types::OutputLocation
    #   * {Types::CreateSimulationJobResponse#logging_config #logging_config} => Types::LoggingConfig
    #   * {Types::CreateSimulationJobResponse#max_job_duration_in_seconds #max_job_duration_in_seconds} => Integer
    #   * {Types::CreateSimulationJobResponse#simulation_time_millis #simulation_time_millis} => Integer
    #   * {Types::CreateSimulationJobResponse#iam_role #iam_role} => String
    #   * {Types::CreateSimulationJobResponse#robot_applications #robot_applications} => Array&lt;Types::RobotApplicationConfig&gt;
    #   * {Types::CreateSimulationJobResponse#simulation_applications #simulation_applications} => Array&lt;Types::SimulationApplicationConfig&gt;
    #   * {Types::CreateSimulationJobResponse#data_sources #data_sources} => Array&lt;Types::DataSource&gt;
    #   * {Types::CreateSimulationJobResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::CreateSimulationJobResponse#vpc_config #vpc_config} => Types::VPCConfigResponse
    #   * {Types::CreateSimulationJobResponse#compute #compute} => Types::ComputeResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_simulation_job({
    #     client_request_token: "ClientRequestToken",
    #     output_location: {
    #       s3_bucket: "S3Bucket",
    #       s3_prefix: "S3Key",
    #     },
    #     logging_config: {
    #       record_all_ros_topics: false, # required
    #     },
    #     max_job_duration_in_seconds: 1, # required
    #     iam_role: "IamRole", # required
    #     failure_behavior: "Fail", # accepts Fail, Continue
    #     robot_applications: [
    #       {
    #         application: "Arn", # required
    #         application_version: "Version",
    #         launch_config: { # required
    #           package_name: "Command", # required
    #           launch_file: "Command", # required
    #           environment_variables: {
    #             "EnvironmentVariableKey" => "EnvironmentVariableValue",
    #           },
    #           port_forwarding_config: {
    #             port_mappings: [
    #               {
    #                 job_port: 1, # required
    #                 application_port: 1, # required
    #                 enable_on_public_ip: false,
    #               },
    #             ],
    #           },
    #           stream_ui: false,
    #         },
    #       },
    #     ],
    #     simulation_applications: [
    #       {
    #         application: "Arn", # required
    #         application_version: "Version",
    #         launch_config: { # required
    #           package_name: "Command", # required
    #           launch_file: "Command", # required
    #           environment_variables: {
    #             "EnvironmentVariableKey" => "EnvironmentVariableValue",
    #           },
    #           port_forwarding_config: {
    #             port_mappings: [
    #               {
    #                 job_port: 1, # required
    #                 application_port: 1, # required
    #                 enable_on_public_ip: false,
    #               },
    #             ],
    #           },
    #           stream_ui: false,
    #         },
    #         world_configs: [
    #           {
    #             world: "Arn",
    #           },
    #         ],
    #       },
    #     ],
    #     data_sources: [
    #       {
    #         name: "Name", # required
    #         s3_bucket: "S3Bucket", # required
    #         s3_keys: ["S3Key"], # required
    #       },
    #     ],
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     vpc_config: {
    #       subnets: ["NonEmptyString"], # required
    #       security_groups: ["NonEmptyString"],
    #       assign_public_ip: false,
    #     },
    #     compute: {
    #       simulation_unit_limit: 1,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.status #=> String, one of "Pending", "Preparing", "Running", "Restarting", "Completed", "Failed", "RunningFailed", "Terminating", "Terminated", "Canceled"
    #   resp.last_started_at #=> Time
    #   resp.last_updated_at #=> Time
    #   resp.failure_behavior #=> String, one of "Fail", "Continue"
    #   resp.failure_code #=> String, one of "InternalServiceError", "RobotApplicationCrash", "SimulationApplicationCrash", "BadPermissionsRobotApplication", "BadPermissionsSimulationApplication", "BadPermissionsS3Object", "BadPermissionsS3Output", "BadPermissionsCloudwatchLogs", "SubnetIpLimitExceeded", "ENILimitExceeded", "BadPermissionsUserCredentials", "InvalidBundleRobotApplication", "InvalidBundleSimulationApplication", "InvalidS3Resource", "LimitExceeded", "MismatchedEtag", "RobotApplicationVersionMismatchedEtag", "SimulationApplicationVersionMismatchedEtag", "ResourceNotFound", "RequestThrottled", "BatchTimedOut", "BatchCanceled", "InvalidInput", "WrongRegionS3Bucket", "WrongRegionS3Output", "WrongRegionRobotApplication", "WrongRegionSimulationApplication"
    #   resp.client_request_token #=> String
    #   resp.output_location.s3_bucket #=> String
    #   resp.output_location.s3_prefix #=> String
    #   resp.logging_config.record_all_ros_topics #=> Boolean
    #   resp.max_job_duration_in_seconds #=> Integer
    #   resp.simulation_time_millis #=> Integer
    #   resp.iam_role #=> String
    #   resp.robot_applications #=> Array
    #   resp.robot_applications[0].application #=> String
    #   resp.robot_applications[0].application_version #=> String
    #   resp.robot_applications[0].launch_config.package_name #=> String
    #   resp.robot_applications[0].launch_config.launch_file #=> String
    #   resp.robot_applications[0].launch_config.environment_variables #=> Hash
    #   resp.robot_applications[0].launch_config.environment_variables["EnvironmentVariableKey"] #=> String
    #   resp.robot_applications[0].launch_config.port_forwarding_config.port_mappings #=> Array
    #   resp.robot_applications[0].launch_config.port_forwarding_config.port_mappings[0].job_port #=> Integer
    #   resp.robot_applications[0].launch_config.port_forwarding_config.port_mappings[0].application_port #=> Integer
    #   resp.robot_applications[0].launch_config.port_forwarding_config.port_mappings[0].enable_on_public_ip #=> Boolean
    #   resp.robot_applications[0].launch_config.stream_ui #=> Boolean
    #   resp.simulation_applications #=> Array
    #   resp.simulation_applications[0].application #=> String
    #   resp.simulation_applications[0].application_version #=> String
    #   resp.simulation_applications[0].launch_config.package_name #=> String
    #   resp.simulation_applications[0].launch_config.launch_file #=> String
    #   resp.simulation_applications[0].launch_config.environment_variables #=> Hash
    #   resp.simulation_applications[0].launch_config.environment_variables["EnvironmentVariableKey"] #=> String
    #   resp.simulation_applications[0].launch_config.port_forwarding_config.port_mappings #=> Array
    #   resp.simulation_applications[0].launch_config.port_forwarding_config.port_mappings[0].job_port #=> Integer
    #   resp.simulation_applications[0].launch_config.port_forwarding_config.port_mappings[0].application_port #=> Integer
    #   resp.simulation_applications[0].launch_config.port_forwarding_config.port_mappings[0].enable_on_public_ip #=> Boolean
    #   resp.simulation_applications[0].launch_config.stream_ui #=> Boolean
    #   resp.simulation_applications[0].world_configs #=> Array
    #   resp.simulation_applications[0].world_configs[0].world #=> String
    #   resp.data_sources #=> Array
    #   resp.data_sources[0].name #=> String
    #   resp.data_sources[0].s3_bucket #=> String
    #   resp.data_sources[0].s3_keys #=> Array
    #   resp.data_sources[0].s3_keys[0].s3_key #=> String
    #   resp.data_sources[0].s3_keys[0].etag #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.vpc_config.subnets #=> Array
    #   resp.vpc_config.subnets[0] #=> String
    #   resp.vpc_config.security_groups #=> Array
    #   resp.vpc_config.security_groups[0] #=> String
    #   resp.vpc_config.vpc_id #=> String
    #   resp.vpc_config.assign_public_ip #=> Boolean
    #   resp.compute.simulation_unit_limit #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/CreateSimulationJob AWS API Documentation
    #
    # @overload create_simulation_job(params = {})
    # @param [Hash] params ({})
    def create_simulation_job(params = {}, options = {})
      req = build_request(:create_simulation_job, params)
      req.send_request(options)
    end

    # Creates a world export job.
    #
    # @option params [String] :client_request_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, Array<String>] :worlds
    #   A list of Amazon Resource Names (arns) that correspond to worlds to
    #   export.
    #
    # @option params [required, Types::OutputLocation] :output_location
    #   The output location.
    #
    # @option params [required, String] :iam_role
    #   The IAM role that the world export process uses to access the Amazon
    #   S3 bucket and put the export.
    #
    # @option params [Hash<String,String>] :tags
    #   A map that contains tag keys and tag values that are attached to the
    #   world export job.
    #
    # @return [Types::CreateWorldExportJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateWorldExportJobResponse#arn #arn} => String
    #   * {Types::CreateWorldExportJobResponse#status #status} => String
    #   * {Types::CreateWorldExportJobResponse#created_at #created_at} => Time
    #   * {Types::CreateWorldExportJobResponse#failure_code #failure_code} => String
    #   * {Types::CreateWorldExportJobResponse#client_request_token #client_request_token} => String
    #   * {Types::CreateWorldExportJobResponse#output_location #output_location} => Types::OutputLocation
    #   * {Types::CreateWorldExportJobResponse#iam_role #iam_role} => String
    #   * {Types::CreateWorldExportJobResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_world_export_job({
    #     client_request_token: "ClientRequestToken",
    #     worlds: ["Arn"], # required
    #     output_location: { # required
    #       s3_bucket: "S3Bucket",
    #       s3_prefix: "S3Key",
    #     },
    #     iam_role: "IamRole", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.status #=> String, one of "Pending", "Running", "Completed", "Failed", "Canceling", "Canceled"
    #   resp.created_at #=> Time
    #   resp.failure_code #=> String, one of "InternalServiceError", "LimitExceeded", "ResourceNotFound", "RequestThrottled", "InvalidInput", "AccessDenied"
    #   resp.client_request_token #=> String
    #   resp.output_location.s3_bucket #=> String
    #   resp.output_location.s3_prefix #=> String
    #   resp.iam_role #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/CreateWorldExportJob AWS API Documentation
    #
    # @overload create_world_export_job(params = {})
    # @param [Hash] params ({})
    def create_world_export_job(params = {}, options = {})
      req = build_request(:create_world_export_job, params)
      req.send_request(options)
    end

    # Creates worlds using the specified template.
    #
    # @option params [String] :client_request_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :template
    #   The Amazon Resource Name (arn) of the world template describing the
    #   worlds you want to create.
    #
    # @option params [required, Types::WorldCount] :world_count
    #   Information about the world count.
    #
    # @option params [Hash<String,String>] :tags
    #   A map that contains tag keys and tag values that are attached to the
    #   world generator job.
    #
    # @return [Types::CreateWorldGenerationJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateWorldGenerationJobResponse#arn #arn} => String
    #   * {Types::CreateWorldGenerationJobResponse#status #status} => String
    #   * {Types::CreateWorldGenerationJobResponse#created_at #created_at} => Time
    #   * {Types::CreateWorldGenerationJobResponse#failure_code #failure_code} => String
    #   * {Types::CreateWorldGenerationJobResponse#client_request_token #client_request_token} => String
    #   * {Types::CreateWorldGenerationJobResponse#template #template} => String
    #   * {Types::CreateWorldGenerationJobResponse#world_count #world_count} => Types::WorldCount
    #   * {Types::CreateWorldGenerationJobResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_world_generation_job({
    #     client_request_token: "ClientRequestToken",
    #     template: "Arn", # required
    #     world_count: { # required
    #       floorplan_count: 1,
    #       interior_count_per_floorplan: 1,
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.status #=> String, one of "Pending", "Running", "Completed", "Failed", "PartialFailed", "Canceling", "Canceled"
    #   resp.created_at #=> Time
    #   resp.failure_code #=> String, one of "InternalServiceError", "LimitExceeded", "ResourceNotFound", "RequestThrottled", "InvalidInput", "AllWorldGenerationFailed"
    #   resp.client_request_token #=> String
    #   resp.template #=> String
    #   resp.world_count.floorplan_count #=> Integer
    #   resp.world_count.interior_count_per_floorplan #=> Integer
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/CreateWorldGenerationJob AWS API Documentation
    #
    # @overload create_world_generation_job(params = {})
    # @param [Hash] params ({})
    def create_world_generation_job(params = {}, options = {})
      req = build_request(:create_world_generation_job, params)
      req.send_request(options)
    end

    # Creates a world template.
    #
    # @option params [String] :client_request_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    # @option params [String] :name
    #   The name of the world template.
    #
    # @option params [String] :template_body
    #   The world template body.
    #
    # @option params [Types::TemplateLocation] :template_location
    #   The location of the world template.
    #
    # @option params [Hash<String,String>] :tags
    #   A map that contains tag keys and tag values that are attached to the
    #   world template.
    #
    # @return [Types::CreateWorldTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateWorldTemplateResponse#arn #arn} => String
    #   * {Types::CreateWorldTemplateResponse#client_request_token #client_request_token} => String
    #   * {Types::CreateWorldTemplateResponse#created_at #created_at} => Time
    #   * {Types::CreateWorldTemplateResponse#name #name} => String
    #   * {Types::CreateWorldTemplateResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_world_template({
    #     client_request_token: "ClientRequestToken",
    #     name: "TemplateName",
    #     template_body: "Json",
    #     template_location: {
    #       s3_bucket: "S3Bucket", # required
    #       s3_key: "S3Key", # required
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.client_request_token #=> String
    #   resp.created_at #=> Time
    #   resp.name #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/CreateWorldTemplate AWS API Documentation
    #
    # @overload create_world_template(params = {})
    # @param [Hash] params ({})
    def create_world_template(params = {}, options = {})
      req = build_request(:create_world_template, params)
      req.send_request(options)
    end

    # Deletes a fleet.
    #
    # @option params [required, String] :fleet
    #   The Amazon Resource Name (ARN) of the fleet.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_fleet({
    #     fleet: "Arn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/DeleteFleet AWS API Documentation
    #
    # @overload delete_fleet(params = {})
    # @param [Hash] params ({})
    def delete_fleet(params = {}, options = {})
      req = build_request(:delete_fleet, params)
      req.send_request(options)
    end

    # Deletes a robot.
    #
    # @option params [required, String] :robot
    #   The Amazon Resource Name (ARN) of the robot.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_robot({
    #     robot: "Arn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/DeleteRobot AWS API Documentation
    #
    # @overload delete_robot(params = {})
    # @param [Hash] params ({})
    def delete_robot(params = {}, options = {})
      req = build_request(:delete_robot, params)
      req.send_request(options)
    end

    # Deletes a robot application.
    #
    # @option params [required, String] :application
    #   The Amazon Resource Name (ARN) of the the robot application.
    #
    # @option params [String] :application_version
    #   The version of the robot application to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_robot_application({
    #     application: "Arn", # required
    #     application_version: "Version",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/DeleteRobotApplication AWS API Documentation
    #
    # @overload delete_robot_application(params = {})
    # @param [Hash] params ({})
    def delete_robot_application(params = {}, options = {})
      req = build_request(:delete_robot_application, params)
      req.send_request(options)
    end

    # Deletes a simulation application.
    #
    # @option params [required, String] :application
    #   The application information for the simulation application to delete.
    #
    # @option params [String] :application_version
    #   The version of the simulation application to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_simulation_application({
    #     application: "Arn", # required
    #     application_version: "Version",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/DeleteSimulationApplication AWS API Documentation
    #
    # @overload delete_simulation_application(params = {})
    # @param [Hash] params ({})
    def delete_simulation_application(params = {}, options = {})
      req = build_request(:delete_simulation_application, params)
      req.send_request(options)
    end

    # Deletes a world template.
    #
    # @option params [required, String] :template
    #   The Amazon Resource Name (arn) of the world template you want to
    #   delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_world_template({
    #     template: "Arn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/DeleteWorldTemplate AWS API Documentation
    #
    # @overload delete_world_template(params = {})
    # @param [Hash] params ({})
    def delete_world_template(params = {}, options = {})
      req = build_request(:delete_world_template, params)
      req.send_request(options)
    end

    # Deregisters a robot.
    #
    # @option params [required, String] :fleet
    #   The Amazon Resource Name (ARN) of the fleet.
    #
    # @option params [required, String] :robot
    #   The Amazon Resource Name (ARN) of the robot.
    #
    # @return [Types::DeregisterRobotResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeregisterRobotResponse#fleet #fleet} => String
    #   * {Types::DeregisterRobotResponse#robot #robot} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deregister_robot({
    #     fleet: "Arn", # required
    #     robot: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.fleet #=> String
    #   resp.robot #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/DeregisterRobot AWS API Documentation
    #
    # @overload deregister_robot(params = {})
    # @param [Hash] params ({})
    def deregister_robot(params = {}, options = {})
      req = build_request(:deregister_robot, params)
      req.send_request(options)
    end

    # Describes a deployment job.
    #
    # @option params [required, String] :job
    #   The Amazon Resource Name (ARN) of the deployment job.
    #
    # @return [Types::DescribeDeploymentJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDeploymentJobResponse#arn #arn} => String
    #   * {Types::DescribeDeploymentJobResponse#fleet #fleet} => String
    #   * {Types::DescribeDeploymentJobResponse#status #status} => String
    #   * {Types::DescribeDeploymentJobResponse#deployment_config #deployment_config} => Types::DeploymentConfig
    #   * {Types::DescribeDeploymentJobResponse#deployment_application_configs #deployment_application_configs} => Array&lt;Types::DeploymentApplicationConfig&gt;
    #   * {Types::DescribeDeploymentJobResponse#failure_reason #failure_reason} => String
    #   * {Types::DescribeDeploymentJobResponse#failure_code #failure_code} => String
    #   * {Types::DescribeDeploymentJobResponse#created_at #created_at} => Time
    #   * {Types::DescribeDeploymentJobResponse#robot_deployment_summary #robot_deployment_summary} => Array&lt;Types::RobotDeployment&gt;
    #   * {Types::DescribeDeploymentJobResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_deployment_job({
    #     job: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.fleet #=> String
    #   resp.status #=> String, one of "Pending", "Preparing", "InProgress", "Failed", "Succeeded", "Canceled"
    #   resp.deployment_config.concurrent_deployment_percentage #=> Integer
    #   resp.deployment_config.failure_threshold_percentage #=> Integer
    #   resp.deployment_config.robot_deployment_timeout_in_seconds #=> Integer
    #   resp.deployment_config.download_condition_file.bucket #=> String
    #   resp.deployment_config.download_condition_file.key #=> String
    #   resp.deployment_config.download_condition_file.etag #=> String
    #   resp.deployment_application_configs #=> Array
    #   resp.deployment_application_configs[0].application #=> String
    #   resp.deployment_application_configs[0].application_version #=> String
    #   resp.deployment_application_configs[0].launch_config.package_name #=> String
    #   resp.deployment_application_configs[0].launch_config.pre_launch_file #=> String
    #   resp.deployment_application_configs[0].launch_config.launch_file #=> String
    #   resp.deployment_application_configs[0].launch_config.post_launch_file #=> String
    #   resp.deployment_application_configs[0].launch_config.environment_variables #=> Hash
    #   resp.deployment_application_configs[0].launch_config.environment_variables["EnvironmentVariableKey"] #=> String
    #   resp.failure_reason #=> String
    #   resp.failure_code #=> String, one of "ResourceNotFound", "EnvironmentSetupError", "EtagMismatch", "FailureThresholdBreached", "RobotDeploymentAborted", "RobotDeploymentNoResponse", "RobotAgentConnectionTimeout", "GreengrassDeploymentFailed", "InvalidGreengrassGroup", "MissingRobotArchitecture", "MissingRobotApplicationArchitecture", "MissingRobotDeploymentResource", "GreengrassGroupVersionDoesNotExist", "LambdaDeleted", "ExtractingBundleFailure", "PreLaunchFileFailure", "PostLaunchFileFailure", "BadPermissionError", "DownloadConditionFailed", "InternalServerError"
    #   resp.created_at #=> Time
    #   resp.robot_deployment_summary #=> Array
    #   resp.robot_deployment_summary[0].arn #=> String
    #   resp.robot_deployment_summary[0].deployment_start_time #=> Time
    #   resp.robot_deployment_summary[0].deployment_finish_time #=> Time
    #   resp.robot_deployment_summary[0].status #=> String, one of "Available", "Registered", "PendingNewDeployment", "Deploying", "Failed", "InSync", "NoResponse"
    #   resp.robot_deployment_summary[0].progress_detail.current_progress #=> String, one of "Validating", "DownloadingExtracting", "ExecutingDownloadCondition", "ExecutingPreLaunch", "Launching", "ExecutingPostLaunch", "Finished"
    #   resp.robot_deployment_summary[0].progress_detail.percent_done #=> Float
    #   resp.robot_deployment_summary[0].progress_detail.estimated_time_remaining_seconds #=> Integer
    #   resp.robot_deployment_summary[0].progress_detail.target_resource #=> String
    #   resp.robot_deployment_summary[0].failure_reason #=> String
    #   resp.robot_deployment_summary[0].failure_code #=> String, one of "ResourceNotFound", "EnvironmentSetupError", "EtagMismatch", "FailureThresholdBreached", "RobotDeploymentAborted", "RobotDeploymentNoResponse", "RobotAgentConnectionTimeout", "GreengrassDeploymentFailed", "InvalidGreengrassGroup", "MissingRobotArchitecture", "MissingRobotApplicationArchitecture", "MissingRobotDeploymentResource", "GreengrassGroupVersionDoesNotExist", "LambdaDeleted", "ExtractingBundleFailure", "PreLaunchFileFailure", "PostLaunchFileFailure", "BadPermissionError", "DownloadConditionFailed", "InternalServerError"
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/DescribeDeploymentJob AWS API Documentation
    #
    # @overload describe_deployment_job(params = {})
    # @param [Hash] params ({})
    def describe_deployment_job(params = {}, options = {})
      req = build_request(:describe_deployment_job, params)
      req.send_request(options)
    end

    # Describes a fleet.
    #
    # @option params [required, String] :fleet
    #   The Amazon Resource Name (ARN) of the fleet.
    #
    # @return [Types::DescribeFleetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeFleetResponse#name #name} => String
    #   * {Types::DescribeFleetResponse#arn #arn} => String
    #   * {Types::DescribeFleetResponse#robots #robots} => Array&lt;Types::Robot&gt;
    #   * {Types::DescribeFleetResponse#created_at #created_at} => Time
    #   * {Types::DescribeFleetResponse#last_deployment_status #last_deployment_status} => String
    #   * {Types::DescribeFleetResponse#last_deployment_job #last_deployment_job} => String
    #   * {Types::DescribeFleetResponse#last_deployment_time #last_deployment_time} => Time
    #   * {Types::DescribeFleetResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_fleet({
    #     fleet: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.arn #=> String
    #   resp.robots #=> Array
    #   resp.robots[0].arn #=> String
    #   resp.robots[0].name #=> String
    #   resp.robots[0].fleet_arn #=> String
    #   resp.robots[0].status #=> String, one of "Available", "Registered", "PendingNewDeployment", "Deploying", "Failed", "InSync", "NoResponse"
    #   resp.robots[0].green_grass_group_id #=> String
    #   resp.robots[0].created_at #=> Time
    #   resp.robots[0].architecture #=> String, one of "X86_64", "ARM64", "ARMHF"
    #   resp.robots[0].last_deployment_job #=> String
    #   resp.robots[0].last_deployment_time #=> Time
    #   resp.created_at #=> Time
    #   resp.last_deployment_status #=> String, one of "Pending", "Preparing", "InProgress", "Failed", "Succeeded", "Canceled"
    #   resp.last_deployment_job #=> String
    #   resp.last_deployment_time #=> Time
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/DescribeFleet AWS API Documentation
    #
    # @overload describe_fleet(params = {})
    # @param [Hash] params ({})
    def describe_fleet(params = {}, options = {})
      req = build_request(:describe_fleet, params)
      req.send_request(options)
    end

    # Describes a robot.
    #
    # @option params [required, String] :robot
    #   The Amazon Resource Name (ARN) of the robot to be described.
    #
    # @return [Types::DescribeRobotResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeRobotResponse#arn #arn} => String
    #   * {Types::DescribeRobotResponse#name #name} => String
    #   * {Types::DescribeRobotResponse#fleet_arn #fleet_arn} => String
    #   * {Types::DescribeRobotResponse#status #status} => String
    #   * {Types::DescribeRobotResponse#greengrass_group_id #greengrass_group_id} => String
    #   * {Types::DescribeRobotResponse#created_at #created_at} => Time
    #   * {Types::DescribeRobotResponse#architecture #architecture} => String
    #   * {Types::DescribeRobotResponse#last_deployment_job #last_deployment_job} => String
    #   * {Types::DescribeRobotResponse#last_deployment_time #last_deployment_time} => Time
    #   * {Types::DescribeRobotResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_robot({
    #     robot: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.name #=> String
    #   resp.fleet_arn #=> String
    #   resp.status #=> String, one of "Available", "Registered", "PendingNewDeployment", "Deploying", "Failed", "InSync", "NoResponse"
    #   resp.greengrass_group_id #=> String
    #   resp.created_at #=> Time
    #   resp.architecture #=> String, one of "X86_64", "ARM64", "ARMHF"
    #   resp.last_deployment_job #=> String
    #   resp.last_deployment_time #=> Time
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/DescribeRobot AWS API Documentation
    #
    # @overload describe_robot(params = {})
    # @param [Hash] params ({})
    def describe_robot(params = {}, options = {})
      req = build_request(:describe_robot, params)
      req.send_request(options)
    end

    # Describes a robot application.
    #
    # @option params [required, String] :application
    #   The Amazon Resource Name (ARN) of the robot application.
    #
    # @option params [String] :application_version
    #   The version of the robot application to describe.
    #
    # @return [Types::DescribeRobotApplicationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeRobotApplicationResponse#arn #arn} => String
    #   * {Types::DescribeRobotApplicationResponse#name #name} => String
    #   * {Types::DescribeRobotApplicationResponse#version #version} => String
    #   * {Types::DescribeRobotApplicationResponse#sources #sources} => Array&lt;Types::Source&gt;
    #   * {Types::DescribeRobotApplicationResponse#robot_software_suite #robot_software_suite} => Types::RobotSoftwareSuite
    #   * {Types::DescribeRobotApplicationResponse#revision_id #revision_id} => String
    #   * {Types::DescribeRobotApplicationResponse#last_updated_at #last_updated_at} => Time
    #   * {Types::DescribeRobotApplicationResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_robot_application({
    #     application: "Arn", # required
    #     application_version: "Version",
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.name #=> String
    #   resp.version #=> String
    #   resp.sources #=> Array
    #   resp.sources[0].s3_bucket #=> String
    #   resp.sources[0].s3_key #=> String
    #   resp.sources[0].etag #=> String
    #   resp.sources[0].architecture #=> String, one of "X86_64", "ARM64", "ARMHF"
    #   resp.robot_software_suite.name #=> String, one of "ROS", "ROS2"
    #   resp.robot_software_suite.version #=> String, one of "Kinetic", "Melodic", "Dashing"
    #   resp.revision_id #=> String
    #   resp.last_updated_at #=> Time
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/DescribeRobotApplication AWS API Documentation
    #
    # @overload describe_robot_application(params = {})
    # @param [Hash] params ({})
    def describe_robot_application(params = {}, options = {})
      req = build_request(:describe_robot_application, params)
      req.send_request(options)
    end

    # Describes a simulation application.
    #
    # @option params [required, String] :application
    #   The application information for the simulation application.
    #
    # @option params [String] :application_version
    #   The version of the simulation application to describe.
    #
    # @return [Types::DescribeSimulationApplicationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeSimulationApplicationResponse#arn #arn} => String
    #   * {Types::DescribeSimulationApplicationResponse#name #name} => String
    #   * {Types::DescribeSimulationApplicationResponse#version #version} => String
    #   * {Types::DescribeSimulationApplicationResponse#sources #sources} => Array&lt;Types::Source&gt;
    #   * {Types::DescribeSimulationApplicationResponse#simulation_software_suite #simulation_software_suite} => Types::SimulationSoftwareSuite
    #   * {Types::DescribeSimulationApplicationResponse#robot_software_suite #robot_software_suite} => Types::RobotSoftwareSuite
    #   * {Types::DescribeSimulationApplicationResponse#rendering_engine #rendering_engine} => Types::RenderingEngine
    #   * {Types::DescribeSimulationApplicationResponse#revision_id #revision_id} => String
    #   * {Types::DescribeSimulationApplicationResponse#last_updated_at #last_updated_at} => Time
    #   * {Types::DescribeSimulationApplicationResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_simulation_application({
    #     application: "Arn", # required
    #     application_version: "Version",
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.name #=> String
    #   resp.version #=> String
    #   resp.sources #=> Array
    #   resp.sources[0].s3_bucket #=> String
    #   resp.sources[0].s3_key #=> String
    #   resp.sources[0].etag #=> String
    #   resp.sources[0].architecture #=> String, one of "X86_64", "ARM64", "ARMHF"
    #   resp.simulation_software_suite.name #=> String, one of "Gazebo", "RosbagPlay"
    #   resp.simulation_software_suite.version #=> String
    #   resp.robot_software_suite.name #=> String, one of "ROS", "ROS2"
    #   resp.robot_software_suite.version #=> String, one of "Kinetic", "Melodic", "Dashing"
    #   resp.rendering_engine.name #=> String, one of "OGRE"
    #   resp.rendering_engine.version #=> String
    #   resp.revision_id #=> String
    #   resp.last_updated_at #=> Time
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/DescribeSimulationApplication AWS API Documentation
    #
    # @overload describe_simulation_application(params = {})
    # @param [Hash] params ({})
    def describe_simulation_application(params = {}, options = {})
      req = build_request(:describe_simulation_application, params)
      req.send_request(options)
    end

    # Describes a simulation job.
    #
    # @option params [required, String] :job
    #   The Amazon Resource Name (ARN) of the simulation job to be described.
    #
    # @return [Types::DescribeSimulationJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeSimulationJobResponse#arn #arn} => String
    #   * {Types::DescribeSimulationJobResponse#name #name} => String
    #   * {Types::DescribeSimulationJobResponse#status #status} => String
    #   * {Types::DescribeSimulationJobResponse#last_started_at #last_started_at} => Time
    #   * {Types::DescribeSimulationJobResponse#last_updated_at #last_updated_at} => Time
    #   * {Types::DescribeSimulationJobResponse#failure_behavior #failure_behavior} => String
    #   * {Types::DescribeSimulationJobResponse#failure_code #failure_code} => String
    #   * {Types::DescribeSimulationJobResponse#failure_reason #failure_reason} => String
    #   * {Types::DescribeSimulationJobResponse#client_request_token #client_request_token} => String
    #   * {Types::DescribeSimulationJobResponse#output_location #output_location} => Types::OutputLocation
    #   * {Types::DescribeSimulationJobResponse#logging_config #logging_config} => Types::LoggingConfig
    #   * {Types::DescribeSimulationJobResponse#max_job_duration_in_seconds #max_job_duration_in_seconds} => Integer
    #   * {Types::DescribeSimulationJobResponse#simulation_time_millis #simulation_time_millis} => Integer
    #   * {Types::DescribeSimulationJobResponse#iam_role #iam_role} => String
    #   * {Types::DescribeSimulationJobResponse#robot_applications #robot_applications} => Array&lt;Types::RobotApplicationConfig&gt;
    #   * {Types::DescribeSimulationJobResponse#simulation_applications #simulation_applications} => Array&lt;Types::SimulationApplicationConfig&gt;
    #   * {Types::DescribeSimulationJobResponse#data_sources #data_sources} => Array&lt;Types::DataSource&gt;
    #   * {Types::DescribeSimulationJobResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::DescribeSimulationJobResponse#vpc_config #vpc_config} => Types::VPCConfigResponse
    #   * {Types::DescribeSimulationJobResponse#network_interface #network_interface} => Types::NetworkInterface
    #   * {Types::DescribeSimulationJobResponse#compute #compute} => Types::ComputeResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_simulation_job({
    #     job: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.name #=> String
    #   resp.status #=> String, one of "Pending", "Preparing", "Running", "Restarting", "Completed", "Failed", "RunningFailed", "Terminating", "Terminated", "Canceled"
    #   resp.last_started_at #=> Time
    #   resp.last_updated_at #=> Time
    #   resp.failure_behavior #=> String, one of "Fail", "Continue"
    #   resp.failure_code #=> String, one of "InternalServiceError", "RobotApplicationCrash", "SimulationApplicationCrash", "BadPermissionsRobotApplication", "BadPermissionsSimulationApplication", "BadPermissionsS3Object", "BadPermissionsS3Output", "BadPermissionsCloudwatchLogs", "SubnetIpLimitExceeded", "ENILimitExceeded", "BadPermissionsUserCredentials", "InvalidBundleRobotApplication", "InvalidBundleSimulationApplication", "InvalidS3Resource", "LimitExceeded", "MismatchedEtag", "RobotApplicationVersionMismatchedEtag", "SimulationApplicationVersionMismatchedEtag", "ResourceNotFound", "RequestThrottled", "BatchTimedOut", "BatchCanceled", "InvalidInput", "WrongRegionS3Bucket", "WrongRegionS3Output", "WrongRegionRobotApplication", "WrongRegionSimulationApplication"
    #   resp.failure_reason #=> String
    #   resp.client_request_token #=> String
    #   resp.output_location.s3_bucket #=> String
    #   resp.output_location.s3_prefix #=> String
    #   resp.logging_config.record_all_ros_topics #=> Boolean
    #   resp.max_job_duration_in_seconds #=> Integer
    #   resp.simulation_time_millis #=> Integer
    #   resp.iam_role #=> String
    #   resp.robot_applications #=> Array
    #   resp.robot_applications[0].application #=> String
    #   resp.robot_applications[0].application_version #=> String
    #   resp.robot_applications[0].launch_config.package_name #=> String
    #   resp.robot_applications[0].launch_config.launch_file #=> String
    #   resp.robot_applications[0].launch_config.environment_variables #=> Hash
    #   resp.robot_applications[0].launch_config.environment_variables["EnvironmentVariableKey"] #=> String
    #   resp.robot_applications[0].launch_config.port_forwarding_config.port_mappings #=> Array
    #   resp.robot_applications[0].launch_config.port_forwarding_config.port_mappings[0].job_port #=> Integer
    #   resp.robot_applications[0].launch_config.port_forwarding_config.port_mappings[0].application_port #=> Integer
    #   resp.robot_applications[0].launch_config.port_forwarding_config.port_mappings[0].enable_on_public_ip #=> Boolean
    #   resp.robot_applications[0].launch_config.stream_ui #=> Boolean
    #   resp.simulation_applications #=> Array
    #   resp.simulation_applications[0].application #=> String
    #   resp.simulation_applications[0].application_version #=> String
    #   resp.simulation_applications[0].launch_config.package_name #=> String
    #   resp.simulation_applications[0].launch_config.launch_file #=> String
    #   resp.simulation_applications[0].launch_config.environment_variables #=> Hash
    #   resp.simulation_applications[0].launch_config.environment_variables["EnvironmentVariableKey"] #=> String
    #   resp.simulation_applications[0].launch_config.port_forwarding_config.port_mappings #=> Array
    #   resp.simulation_applications[0].launch_config.port_forwarding_config.port_mappings[0].job_port #=> Integer
    #   resp.simulation_applications[0].launch_config.port_forwarding_config.port_mappings[0].application_port #=> Integer
    #   resp.simulation_applications[0].launch_config.port_forwarding_config.port_mappings[0].enable_on_public_ip #=> Boolean
    #   resp.simulation_applications[0].launch_config.stream_ui #=> Boolean
    #   resp.simulation_applications[0].world_configs #=> Array
    #   resp.simulation_applications[0].world_configs[0].world #=> String
    #   resp.data_sources #=> Array
    #   resp.data_sources[0].name #=> String
    #   resp.data_sources[0].s3_bucket #=> String
    #   resp.data_sources[0].s3_keys #=> Array
    #   resp.data_sources[0].s3_keys[0].s3_key #=> String
    #   resp.data_sources[0].s3_keys[0].etag #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.vpc_config.subnets #=> Array
    #   resp.vpc_config.subnets[0] #=> String
    #   resp.vpc_config.security_groups #=> Array
    #   resp.vpc_config.security_groups[0] #=> String
    #   resp.vpc_config.vpc_id #=> String
    #   resp.vpc_config.assign_public_ip #=> Boolean
    #   resp.network_interface.network_interface_id #=> String
    #   resp.network_interface.private_ip_address #=> String
    #   resp.network_interface.public_ip_address #=> String
    #   resp.compute.simulation_unit_limit #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/DescribeSimulationJob AWS API Documentation
    #
    # @overload describe_simulation_job(params = {})
    # @param [Hash] params ({})
    def describe_simulation_job(params = {}, options = {})
      req = build_request(:describe_simulation_job, params)
      req.send_request(options)
    end

    # Describes a simulation job batch.
    #
    # @option params [required, String] :batch
    #   The id of the batch to describe.
    #
    # @return [Types::DescribeSimulationJobBatchResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeSimulationJobBatchResponse#arn #arn} => String
    #   * {Types::DescribeSimulationJobBatchResponse#status #status} => String
    #   * {Types::DescribeSimulationJobBatchResponse#last_updated_at #last_updated_at} => Time
    #   * {Types::DescribeSimulationJobBatchResponse#created_at #created_at} => Time
    #   * {Types::DescribeSimulationJobBatchResponse#client_request_token #client_request_token} => String
    #   * {Types::DescribeSimulationJobBatchResponse#batch_policy #batch_policy} => Types::BatchPolicy
    #   * {Types::DescribeSimulationJobBatchResponse#failure_code #failure_code} => String
    #   * {Types::DescribeSimulationJobBatchResponse#failure_reason #failure_reason} => String
    #   * {Types::DescribeSimulationJobBatchResponse#failed_requests #failed_requests} => Array&lt;Types::FailedCreateSimulationJobRequest&gt;
    #   * {Types::DescribeSimulationJobBatchResponse#pending_requests #pending_requests} => Array&lt;Types::SimulationJobRequest&gt;
    #   * {Types::DescribeSimulationJobBatchResponse#created_requests #created_requests} => Array&lt;Types::SimulationJobSummary&gt;
    #   * {Types::DescribeSimulationJobBatchResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_simulation_job_batch({
    #     batch: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.status #=> String, one of "Pending", "InProgress", "Failed", "Completed", "Canceled", "Canceling", "Completing", "TimingOut", "TimedOut"
    #   resp.last_updated_at #=> Time
    #   resp.created_at #=> Time
    #   resp.client_request_token #=> String
    #   resp.batch_policy.timeout_in_seconds #=> Integer
    #   resp.batch_policy.max_concurrency #=> Integer
    #   resp.failure_code #=> String, one of "InternalServiceError"
    #   resp.failure_reason #=> String
    #   resp.failed_requests #=> Array
    #   resp.failed_requests[0].request.output_location.s3_bucket #=> String
    #   resp.failed_requests[0].request.output_location.s3_prefix #=> String
    #   resp.failed_requests[0].request.logging_config.record_all_ros_topics #=> Boolean
    #   resp.failed_requests[0].request.max_job_duration_in_seconds #=> Integer
    #   resp.failed_requests[0].request.iam_role #=> String
    #   resp.failed_requests[0].request.failure_behavior #=> String, one of "Fail", "Continue"
    #   resp.failed_requests[0].request.use_default_applications #=> Boolean
    #   resp.failed_requests[0].request.robot_applications #=> Array
    #   resp.failed_requests[0].request.robot_applications[0].application #=> String
    #   resp.failed_requests[0].request.robot_applications[0].application_version #=> String
    #   resp.failed_requests[0].request.robot_applications[0].launch_config.package_name #=> String
    #   resp.failed_requests[0].request.robot_applications[0].launch_config.launch_file #=> String
    #   resp.failed_requests[0].request.robot_applications[0].launch_config.environment_variables #=> Hash
    #   resp.failed_requests[0].request.robot_applications[0].launch_config.environment_variables["EnvironmentVariableKey"] #=> String
    #   resp.failed_requests[0].request.robot_applications[0].launch_config.port_forwarding_config.port_mappings #=> Array
    #   resp.failed_requests[0].request.robot_applications[0].launch_config.port_forwarding_config.port_mappings[0].job_port #=> Integer
    #   resp.failed_requests[0].request.robot_applications[0].launch_config.port_forwarding_config.port_mappings[0].application_port #=> Integer
    #   resp.failed_requests[0].request.robot_applications[0].launch_config.port_forwarding_config.port_mappings[0].enable_on_public_ip #=> Boolean
    #   resp.failed_requests[0].request.robot_applications[0].launch_config.stream_ui #=> Boolean
    #   resp.failed_requests[0].request.simulation_applications #=> Array
    #   resp.failed_requests[0].request.simulation_applications[0].application #=> String
    #   resp.failed_requests[0].request.simulation_applications[0].application_version #=> String
    #   resp.failed_requests[0].request.simulation_applications[0].launch_config.package_name #=> String
    #   resp.failed_requests[0].request.simulation_applications[0].launch_config.launch_file #=> String
    #   resp.failed_requests[0].request.simulation_applications[0].launch_config.environment_variables #=> Hash
    #   resp.failed_requests[0].request.simulation_applications[0].launch_config.environment_variables["EnvironmentVariableKey"] #=> String
    #   resp.failed_requests[0].request.simulation_applications[0].launch_config.port_forwarding_config.port_mappings #=> Array
    #   resp.failed_requests[0].request.simulation_applications[0].launch_config.port_forwarding_config.port_mappings[0].job_port #=> Integer
    #   resp.failed_requests[0].request.simulation_applications[0].launch_config.port_forwarding_config.port_mappings[0].application_port #=> Integer
    #   resp.failed_requests[0].request.simulation_applications[0].launch_config.port_forwarding_config.port_mappings[0].enable_on_public_ip #=> Boolean
    #   resp.failed_requests[0].request.simulation_applications[0].launch_config.stream_ui #=> Boolean
    #   resp.failed_requests[0].request.simulation_applications[0].world_configs #=> Array
    #   resp.failed_requests[0].request.simulation_applications[0].world_configs[0].world #=> String
    #   resp.failed_requests[0].request.data_sources #=> Array
    #   resp.failed_requests[0].request.data_sources[0].name #=> String
    #   resp.failed_requests[0].request.data_sources[0].s3_bucket #=> String
    #   resp.failed_requests[0].request.data_sources[0].s3_keys #=> Array
    #   resp.failed_requests[0].request.data_sources[0].s3_keys[0] #=> String
    #   resp.failed_requests[0].request.vpc_config.subnets #=> Array
    #   resp.failed_requests[0].request.vpc_config.subnets[0] #=> String
    #   resp.failed_requests[0].request.vpc_config.security_groups #=> Array
    #   resp.failed_requests[0].request.vpc_config.security_groups[0] #=> String
    #   resp.failed_requests[0].request.vpc_config.assign_public_ip #=> Boolean
    #   resp.failed_requests[0].request.compute.simulation_unit_limit #=> Integer
    #   resp.failed_requests[0].request.tags #=> Hash
    #   resp.failed_requests[0].request.tags["TagKey"] #=> String
    #   resp.failed_requests[0].failure_reason #=> String
    #   resp.failed_requests[0].failure_code #=> String, one of "InternalServiceError", "RobotApplicationCrash", "SimulationApplicationCrash", "BadPermissionsRobotApplication", "BadPermissionsSimulationApplication", "BadPermissionsS3Object", "BadPermissionsS3Output", "BadPermissionsCloudwatchLogs", "SubnetIpLimitExceeded", "ENILimitExceeded", "BadPermissionsUserCredentials", "InvalidBundleRobotApplication", "InvalidBundleSimulationApplication", "InvalidS3Resource", "LimitExceeded", "MismatchedEtag", "RobotApplicationVersionMismatchedEtag", "SimulationApplicationVersionMismatchedEtag", "ResourceNotFound", "RequestThrottled", "BatchTimedOut", "BatchCanceled", "InvalidInput", "WrongRegionS3Bucket", "WrongRegionS3Output", "WrongRegionRobotApplication", "WrongRegionSimulationApplication"
    #   resp.failed_requests[0].failed_at #=> Time
    #   resp.pending_requests #=> Array
    #   resp.pending_requests[0].output_location.s3_bucket #=> String
    #   resp.pending_requests[0].output_location.s3_prefix #=> String
    #   resp.pending_requests[0].logging_config.record_all_ros_topics #=> Boolean
    #   resp.pending_requests[0].max_job_duration_in_seconds #=> Integer
    #   resp.pending_requests[0].iam_role #=> String
    #   resp.pending_requests[0].failure_behavior #=> String, one of "Fail", "Continue"
    #   resp.pending_requests[0].use_default_applications #=> Boolean
    #   resp.pending_requests[0].robot_applications #=> Array
    #   resp.pending_requests[0].robot_applications[0].application #=> String
    #   resp.pending_requests[0].robot_applications[0].application_version #=> String
    #   resp.pending_requests[0].robot_applications[0].launch_config.package_name #=> String
    #   resp.pending_requests[0].robot_applications[0].launch_config.launch_file #=> String
    #   resp.pending_requests[0].robot_applications[0].launch_config.environment_variables #=> Hash
    #   resp.pending_requests[0].robot_applications[0].launch_config.environment_variables["EnvironmentVariableKey"] #=> String
    #   resp.pending_requests[0].robot_applications[0].launch_config.port_forwarding_config.port_mappings #=> Array
    #   resp.pending_requests[0].robot_applications[0].launch_config.port_forwarding_config.port_mappings[0].job_port #=> Integer
    #   resp.pending_requests[0].robot_applications[0].launch_config.port_forwarding_config.port_mappings[0].application_port #=> Integer
    #   resp.pending_requests[0].robot_applications[0].launch_config.port_forwarding_config.port_mappings[0].enable_on_public_ip #=> Boolean
    #   resp.pending_requests[0].robot_applications[0].launch_config.stream_ui #=> Boolean
    #   resp.pending_requests[0].simulation_applications #=> Array
    #   resp.pending_requests[0].simulation_applications[0].application #=> String
    #   resp.pending_requests[0].simulation_applications[0].application_version #=> String
    #   resp.pending_requests[0].simulation_applications[0].launch_config.package_name #=> String
    #   resp.pending_requests[0].simulation_applications[0].launch_config.launch_file #=> String
    #   resp.pending_requests[0].simulation_applications[0].launch_config.environment_variables #=> Hash
    #   resp.pending_requests[0].simulation_applications[0].launch_config.environment_variables["EnvironmentVariableKey"] #=> String
    #   resp.pending_requests[0].simulation_applications[0].launch_config.port_forwarding_config.port_mappings #=> Array
    #   resp.pending_requests[0].simulation_applications[0].launch_config.port_forwarding_config.port_mappings[0].job_port #=> Integer
    #   resp.pending_requests[0].simulation_applications[0].launch_config.port_forwarding_config.port_mappings[0].application_port #=> Integer
    #   resp.pending_requests[0].simulation_applications[0].launch_config.port_forwarding_config.port_mappings[0].enable_on_public_ip #=> Boolean
    #   resp.pending_requests[0].simulation_applications[0].launch_config.stream_ui #=> Boolean
    #   resp.pending_requests[0].simulation_applications[0].world_configs #=> Array
    #   resp.pending_requests[0].simulation_applications[0].world_configs[0].world #=> String
    #   resp.pending_requests[0].data_sources #=> Array
    #   resp.pending_requests[0].data_sources[0].name #=> String
    #   resp.pending_requests[0].data_sources[0].s3_bucket #=> String
    #   resp.pending_requests[0].data_sources[0].s3_keys #=> Array
    #   resp.pending_requests[0].data_sources[0].s3_keys[0] #=> String
    #   resp.pending_requests[0].vpc_config.subnets #=> Array
    #   resp.pending_requests[0].vpc_config.subnets[0] #=> String
    #   resp.pending_requests[0].vpc_config.security_groups #=> Array
    #   resp.pending_requests[0].vpc_config.security_groups[0] #=> String
    #   resp.pending_requests[0].vpc_config.assign_public_ip #=> Boolean
    #   resp.pending_requests[0].compute.simulation_unit_limit #=> Integer
    #   resp.pending_requests[0].tags #=> Hash
    #   resp.pending_requests[0].tags["TagKey"] #=> String
    #   resp.created_requests #=> Array
    #   resp.created_requests[0].arn #=> String
    #   resp.created_requests[0].last_updated_at #=> Time
    #   resp.created_requests[0].name #=> String
    #   resp.created_requests[0].status #=> String, one of "Pending", "Preparing", "Running", "Restarting", "Completed", "Failed", "RunningFailed", "Terminating", "Terminated", "Canceled"
    #   resp.created_requests[0].simulation_application_names #=> Array
    #   resp.created_requests[0].simulation_application_names[0] #=> String
    #   resp.created_requests[0].robot_application_names #=> Array
    #   resp.created_requests[0].robot_application_names[0] #=> String
    #   resp.created_requests[0].data_source_names #=> Array
    #   resp.created_requests[0].data_source_names[0] #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/DescribeSimulationJobBatch AWS API Documentation
    #
    # @overload describe_simulation_job_batch(params = {})
    # @param [Hash] params ({})
    def describe_simulation_job_batch(params = {}, options = {})
      req = build_request(:describe_simulation_job_batch, params)
      req.send_request(options)
    end

    # Describes a world.
    #
    # @option params [required, String] :world
    #   The Amazon Resource Name (arn) of the world you want to describe.
    #
    # @return [Types::DescribeWorldResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeWorldResponse#arn #arn} => String
    #   * {Types::DescribeWorldResponse#generation_job #generation_job} => String
    #   * {Types::DescribeWorldResponse#template #template} => String
    #   * {Types::DescribeWorldResponse#created_at #created_at} => Time
    #   * {Types::DescribeWorldResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_world({
    #     world: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.generation_job #=> String
    #   resp.template #=> String
    #   resp.created_at #=> Time
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/DescribeWorld AWS API Documentation
    #
    # @overload describe_world(params = {})
    # @param [Hash] params ({})
    def describe_world(params = {}, options = {})
      req = build_request(:describe_world, params)
      req.send_request(options)
    end

    # Describes a world export job.
    #
    # @option params [required, String] :job
    #   The Amazon Resource Name (arn) of the world export job to describe.
    #
    # @return [Types::DescribeWorldExportJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeWorldExportJobResponse#arn #arn} => String
    #   * {Types::DescribeWorldExportJobResponse#status #status} => String
    #   * {Types::DescribeWorldExportJobResponse#created_at #created_at} => Time
    #   * {Types::DescribeWorldExportJobResponse#failure_code #failure_code} => String
    #   * {Types::DescribeWorldExportJobResponse#failure_reason #failure_reason} => String
    #   * {Types::DescribeWorldExportJobResponse#client_request_token #client_request_token} => String
    #   * {Types::DescribeWorldExportJobResponse#worlds #worlds} => Array&lt;String&gt;
    #   * {Types::DescribeWorldExportJobResponse#output_location #output_location} => Types::OutputLocation
    #   * {Types::DescribeWorldExportJobResponse#iam_role #iam_role} => String
    #   * {Types::DescribeWorldExportJobResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_world_export_job({
    #     job: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.status #=> String, one of "Pending", "Running", "Completed", "Failed", "Canceling", "Canceled"
    #   resp.created_at #=> Time
    #   resp.failure_code #=> String, one of "InternalServiceError", "LimitExceeded", "ResourceNotFound", "RequestThrottled", "InvalidInput", "AccessDenied"
    #   resp.failure_reason #=> String
    #   resp.client_request_token #=> String
    #   resp.worlds #=> Array
    #   resp.worlds[0] #=> String
    #   resp.output_location.s3_bucket #=> String
    #   resp.output_location.s3_prefix #=> String
    #   resp.iam_role #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/DescribeWorldExportJob AWS API Documentation
    #
    # @overload describe_world_export_job(params = {})
    # @param [Hash] params ({})
    def describe_world_export_job(params = {}, options = {})
      req = build_request(:describe_world_export_job, params)
      req.send_request(options)
    end

    # Describes a world generation job.
    #
    # @option params [required, String] :job
    #   The Amazon Resource Name (arn) of the world generation job to
    #   describe.
    #
    # @return [Types::DescribeWorldGenerationJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeWorldGenerationJobResponse#arn #arn} => String
    #   * {Types::DescribeWorldGenerationJobResponse#status #status} => String
    #   * {Types::DescribeWorldGenerationJobResponse#created_at #created_at} => Time
    #   * {Types::DescribeWorldGenerationJobResponse#failure_code #failure_code} => String
    #   * {Types::DescribeWorldGenerationJobResponse#failure_reason #failure_reason} => String
    #   * {Types::DescribeWorldGenerationJobResponse#client_request_token #client_request_token} => String
    #   * {Types::DescribeWorldGenerationJobResponse#template #template} => String
    #   * {Types::DescribeWorldGenerationJobResponse#world_count #world_count} => Types::WorldCount
    #   * {Types::DescribeWorldGenerationJobResponse#finished_worlds_summary #finished_worlds_summary} => Types::FinishedWorldsSummary
    #   * {Types::DescribeWorldGenerationJobResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_world_generation_job({
    #     job: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.status #=> String, one of "Pending", "Running", "Completed", "Failed", "PartialFailed", "Canceling", "Canceled"
    #   resp.created_at #=> Time
    #   resp.failure_code #=> String, one of "InternalServiceError", "LimitExceeded", "ResourceNotFound", "RequestThrottled", "InvalidInput", "AllWorldGenerationFailed"
    #   resp.failure_reason #=> String
    #   resp.client_request_token #=> String
    #   resp.template #=> String
    #   resp.world_count.floorplan_count #=> Integer
    #   resp.world_count.interior_count_per_floorplan #=> Integer
    #   resp.finished_worlds_summary.finished_count #=> Integer
    #   resp.finished_worlds_summary.succeeded_worlds #=> Array
    #   resp.finished_worlds_summary.succeeded_worlds[0] #=> String
    #   resp.finished_worlds_summary.failure_summary.total_failure_count #=> Integer
    #   resp.finished_worlds_summary.failure_summary.failures #=> Array
    #   resp.finished_worlds_summary.failure_summary.failures[0].failure_code #=> String, one of "InternalServiceError", "LimitExceeded", "ResourceNotFound", "RequestThrottled", "InvalidInput", "AllWorldGenerationFailed"
    #   resp.finished_worlds_summary.failure_summary.failures[0].sample_failure_reason #=> String
    #   resp.finished_worlds_summary.failure_summary.failures[0].failure_count #=> Integer
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/DescribeWorldGenerationJob AWS API Documentation
    #
    # @overload describe_world_generation_job(params = {})
    # @param [Hash] params ({})
    def describe_world_generation_job(params = {}, options = {})
      req = build_request(:describe_world_generation_job, params)
      req.send_request(options)
    end

    # Describes a world template.
    #
    # @option params [required, String] :template
    #   The Amazon Resource Name (arn) of the world template you want to
    #   describe.
    #
    # @return [Types::DescribeWorldTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeWorldTemplateResponse#arn #arn} => String
    #   * {Types::DescribeWorldTemplateResponse#client_request_token #client_request_token} => String
    #   * {Types::DescribeWorldTemplateResponse#name #name} => String
    #   * {Types::DescribeWorldTemplateResponse#created_at #created_at} => Time
    #   * {Types::DescribeWorldTemplateResponse#last_updated_at #last_updated_at} => Time
    #   * {Types::DescribeWorldTemplateResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_world_template({
    #     template: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.client_request_token #=> String
    #   resp.name #=> String
    #   resp.created_at #=> Time
    #   resp.last_updated_at #=> Time
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/DescribeWorldTemplate AWS API Documentation
    #
    # @overload describe_world_template(params = {})
    # @param [Hash] params ({})
    def describe_world_template(params = {}, options = {})
      req = build_request(:describe_world_template, params)
      req.send_request(options)
    end

    # Gets the world template body.
    #
    # @option params [String] :template
    #   The Amazon Resource Name (arn) of the world template.
    #
    # @option params [String] :generation_job
    #   The Amazon Resource Name (arn) of the world generator job.
    #
    # @return [Types::GetWorldTemplateBodyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetWorldTemplateBodyResponse#template_body #template_body} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_world_template_body({
    #     template: "Arn",
    #     generation_job: "Arn",
    #   })
    #
    # @example Response structure
    #
    #   resp.template_body #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/GetWorldTemplateBody AWS API Documentation
    #
    # @overload get_world_template_body(params = {})
    # @param [Hash] params ({})
    def get_world_template_body(params = {}, options = {})
      req = build_request(:get_world_template_body, params)
      req.send_request(options)
    end

    # Returns a list of deployment jobs for a fleet. You can optionally
    # provide filters to retrieve specific deployment jobs.
    #
    # @option params [Array<Types::Filter>] :filters
    #   Optional filters to limit results.
    #
    #   The filter names `status` and `fleetName` are supported. When
    #   filtering, you must use the complete value of the filtered item. You
    #   can use up to three filters, but they must be for the same named item.
    #   For example, if you are looking for items with the status `InProgress`
    #   or the status `Pending`.
    #
    # @option params [String] :next_token
    #   If the previous paginated request did not return all of the remaining
    #   results, the response object's `nextToken` parameter value is set to
    #   a token. To retrieve the next set of results, call
    #   `ListDeploymentJobs` again and assign that token to the request
    #   object's `nextToken` parameter. If there are no remaining results,
    #   the previous response object's NextToken parameter is set to null.
    #
    # @option params [Integer] :max_results
    #   When this parameter is used, `ListDeploymentJobs` only returns
    #   `maxResults` results in a single page along with a `nextToken`
    #   response element. The remaining results of the initial request can be
    #   seen by sending another `ListDeploymentJobs` request with the returned
    #   `nextToken` value. This value can be between 1 and 200. If this
    #   parameter is not used, then `ListDeploymentJobs` returns up to 200
    #   results and a `nextToken` value if applicable.
    #
    # @return [Types::ListDeploymentJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDeploymentJobsResponse#deployment_jobs #deployment_jobs} => Array&lt;Types::DeploymentJob&gt;
    #   * {Types::ListDeploymentJobsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_deployment_jobs({
    #     filters: [
    #       {
    #         name: "Name",
    #         values: ["Name"],
    #       },
    #     ],
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.deployment_jobs #=> Array
    #   resp.deployment_jobs[0].arn #=> String
    #   resp.deployment_jobs[0].fleet #=> String
    #   resp.deployment_jobs[0].status #=> String, one of "Pending", "Preparing", "InProgress", "Failed", "Succeeded", "Canceled"
    #   resp.deployment_jobs[0].deployment_application_configs #=> Array
    #   resp.deployment_jobs[0].deployment_application_configs[0].application #=> String
    #   resp.deployment_jobs[0].deployment_application_configs[0].application_version #=> String
    #   resp.deployment_jobs[0].deployment_application_configs[0].launch_config.package_name #=> String
    #   resp.deployment_jobs[0].deployment_application_configs[0].launch_config.pre_launch_file #=> String
    #   resp.deployment_jobs[0].deployment_application_configs[0].launch_config.launch_file #=> String
    #   resp.deployment_jobs[0].deployment_application_configs[0].launch_config.post_launch_file #=> String
    #   resp.deployment_jobs[0].deployment_application_configs[0].launch_config.environment_variables #=> Hash
    #   resp.deployment_jobs[0].deployment_application_configs[0].launch_config.environment_variables["EnvironmentVariableKey"] #=> String
    #   resp.deployment_jobs[0].deployment_config.concurrent_deployment_percentage #=> Integer
    #   resp.deployment_jobs[0].deployment_config.failure_threshold_percentage #=> Integer
    #   resp.deployment_jobs[0].deployment_config.robot_deployment_timeout_in_seconds #=> Integer
    #   resp.deployment_jobs[0].deployment_config.download_condition_file.bucket #=> String
    #   resp.deployment_jobs[0].deployment_config.download_condition_file.key #=> String
    #   resp.deployment_jobs[0].deployment_config.download_condition_file.etag #=> String
    #   resp.deployment_jobs[0].failure_reason #=> String
    #   resp.deployment_jobs[0].failure_code #=> String, one of "ResourceNotFound", "EnvironmentSetupError", "EtagMismatch", "FailureThresholdBreached", "RobotDeploymentAborted", "RobotDeploymentNoResponse", "RobotAgentConnectionTimeout", "GreengrassDeploymentFailed", "InvalidGreengrassGroup", "MissingRobotArchitecture", "MissingRobotApplicationArchitecture", "MissingRobotDeploymentResource", "GreengrassGroupVersionDoesNotExist", "LambdaDeleted", "ExtractingBundleFailure", "PreLaunchFileFailure", "PostLaunchFileFailure", "BadPermissionError", "DownloadConditionFailed", "InternalServerError"
    #   resp.deployment_jobs[0].created_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/ListDeploymentJobs AWS API Documentation
    #
    # @overload list_deployment_jobs(params = {})
    # @param [Hash] params ({})
    def list_deployment_jobs(params = {}, options = {})
      req = build_request(:list_deployment_jobs, params)
      req.send_request(options)
    end

    # Returns a list of fleets. You can optionally provide filters to
    # retrieve specific fleets.
    #
    # @option params [String] :next_token
    #   If the previous paginated request did not return all of the remaining
    #   results, the response object's `nextToken` parameter value is set to
    #   a token. To retrieve the next set of results, call `ListFleets` again
    #   and assign that token to the request object's `nextToken` parameter.
    #   If there are no remaining results, the previous response object's
    #   NextToken parameter is set to null.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is only used
    #   to retrieve the next items in a list and not for other programmatic
    #   purposes.
    #
    #    </note>
    #
    # @option params [Integer] :max_results
    #   When this parameter is used, `ListFleets` only returns `maxResults`
    #   results in a single page along with a `nextToken` response element.
    #   The remaining results of the initial request can be seen by sending
    #   another `ListFleets` request with the returned `nextToken` value. This
    #   value can be between 1 and 200. If this parameter is not used, then
    #   `ListFleets` returns up to 200 results and a `nextToken` value if
    #   applicable.
    #
    # @option params [Array<Types::Filter>] :filters
    #   Optional filters to limit results.
    #
    #   The filter name `name` is supported. When filtering, you must use the
    #   complete value of the filtered item. You can use up to three filters.
    #
    # @return [Types::ListFleetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFleetsResponse#fleet_details #fleet_details} => Array&lt;Types::Fleet&gt;
    #   * {Types::ListFleetsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_fleets({
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #     filters: [
    #       {
    #         name: "Name",
    #         values: ["Name"],
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.fleet_details #=> Array
    #   resp.fleet_details[0].name #=> String
    #   resp.fleet_details[0].arn #=> String
    #   resp.fleet_details[0].created_at #=> Time
    #   resp.fleet_details[0].last_deployment_status #=> String, one of "Pending", "Preparing", "InProgress", "Failed", "Succeeded", "Canceled"
    #   resp.fleet_details[0].last_deployment_job #=> String
    #   resp.fleet_details[0].last_deployment_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/ListFleets AWS API Documentation
    #
    # @overload list_fleets(params = {})
    # @param [Hash] params ({})
    def list_fleets(params = {}, options = {})
      req = build_request(:list_fleets, params)
      req.send_request(options)
    end

    # Returns a list of robot application. You can optionally provide
    # filters to retrieve specific robot applications.
    #
    # @option params [String] :version_qualifier
    #   The version qualifier of the robot application.
    #
    # @option params [String] :next_token
    #   If the previous paginated request did not return all of the remaining
    #   results, the response object's `nextToken` parameter value is set to
    #   a token. To retrieve the next set of results, call
    #   `ListRobotApplications` again and assign that token to the request
    #   object's `nextToken` parameter. If there are no remaining results,
    #   the previous response object's NextToken parameter is set to null.
    #
    # @option params [Integer] :max_results
    #   When this parameter is used, `ListRobotApplications` only returns
    #   `maxResults` results in a single page along with a `nextToken`
    #   response element. The remaining results of the initial request can be
    #   seen by sending another `ListRobotApplications` request with the
    #   returned `nextToken` value. This value can be between 1 and 100. If
    #   this parameter is not used, then `ListRobotApplications` returns up to
    #   100 results and a `nextToken` value if applicable.
    #
    # @option params [Array<Types::Filter>] :filters
    #   Optional filters to limit results.
    #
    #   The filter name `name` is supported. When filtering, you must use the
    #   complete value of the filtered item. You can use up to three filters.
    #
    # @return [Types::ListRobotApplicationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRobotApplicationsResponse#robot_application_summaries #robot_application_summaries} => Array&lt;Types::RobotApplicationSummary&gt;
    #   * {Types::ListRobotApplicationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_robot_applications({
    #     version_qualifier: "VersionQualifier",
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #     filters: [
    #       {
    #         name: "Name",
    #         values: ["Name"],
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.robot_application_summaries #=> Array
    #   resp.robot_application_summaries[0].name #=> String
    #   resp.robot_application_summaries[0].arn #=> String
    #   resp.robot_application_summaries[0].version #=> String
    #   resp.robot_application_summaries[0].last_updated_at #=> Time
    #   resp.robot_application_summaries[0].robot_software_suite.name #=> String, one of "ROS", "ROS2"
    #   resp.robot_application_summaries[0].robot_software_suite.version #=> String, one of "Kinetic", "Melodic", "Dashing"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/ListRobotApplications AWS API Documentation
    #
    # @overload list_robot_applications(params = {})
    # @param [Hash] params ({})
    def list_robot_applications(params = {}, options = {})
      req = build_request(:list_robot_applications, params)
      req.send_request(options)
    end

    # Returns a list of robots. You can optionally provide filters to
    # retrieve specific robots.
    #
    # @option params [String] :next_token
    #   If the previous paginated request did not return all of the remaining
    #   results, the response object's `nextToken` parameter value is set to
    #   a token. To retrieve the next set of results, call `ListRobots` again
    #   and assign that token to the request object's `nextToken` parameter.
    #   If there are no remaining results, the previous response object's
    #   NextToken parameter is set to null.
    #
    # @option params [Integer] :max_results
    #   When this parameter is used, `ListRobots` only returns `maxResults`
    #   results in a single page along with a `nextToken` response element.
    #   The remaining results of the initial request can be seen by sending
    #   another `ListRobots` request with the returned `nextToken` value. This
    #   value can be between 1 and 200. If this parameter is not used, then
    #   `ListRobots` returns up to 200 results and a `nextToken` value if
    #   applicable.
    #
    # @option params [Array<Types::Filter>] :filters
    #   Optional filters to limit results.
    #
    #   The filter names `status` and `fleetName` are supported. When
    #   filtering, you must use the complete value of the filtered item. You
    #   can use up to three filters, but they must be for the same named item.
    #   For example, if you are looking for items with the status `Registered`
    #   or the status `Available`.
    #
    # @return [Types::ListRobotsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRobotsResponse#robots #robots} => Array&lt;Types::Robot&gt;
    #   * {Types::ListRobotsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_robots({
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #     filters: [
    #       {
    #         name: "Name",
    #         values: ["Name"],
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.robots #=> Array
    #   resp.robots[0].arn #=> String
    #   resp.robots[0].name #=> String
    #   resp.robots[0].fleet_arn #=> String
    #   resp.robots[0].status #=> String, one of "Available", "Registered", "PendingNewDeployment", "Deploying", "Failed", "InSync", "NoResponse"
    #   resp.robots[0].green_grass_group_id #=> String
    #   resp.robots[0].created_at #=> Time
    #   resp.robots[0].architecture #=> String, one of "X86_64", "ARM64", "ARMHF"
    #   resp.robots[0].last_deployment_job #=> String
    #   resp.robots[0].last_deployment_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/ListRobots AWS API Documentation
    #
    # @overload list_robots(params = {})
    # @param [Hash] params ({})
    def list_robots(params = {}, options = {})
      req = build_request(:list_robots, params)
      req.send_request(options)
    end

    # Returns a list of simulation applications. You can optionally provide
    # filters to retrieve specific simulation applications.
    #
    # @option params [String] :version_qualifier
    #   The version qualifier of the simulation application.
    #
    # @option params [String] :next_token
    #   If the previous paginated request did not return all of the remaining
    #   results, the response object's `nextToken` parameter value is set to
    #   a token. To retrieve the next set of results, call
    #   `ListSimulationApplications` again and assign that token to the
    #   request object's `nextToken` parameter. If there are no remaining
    #   results, the previous response object's NextToken parameter is set to
    #   null.
    #
    # @option params [Integer] :max_results
    #   When this parameter is used, `ListSimulationApplications` only returns
    #   `maxResults` results in a single page along with a `nextToken`
    #   response element. The remaining results of the initial request can be
    #   seen by sending another `ListSimulationApplications` request with the
    #   returned `nextToken` value. This value can be between 1 and 100. If
    #   this parameter is not used, then `ListSimulationApplications` returns
    #   up to 100 results and a `nextToken` value if applicable.
    #
    # @option params [Array<Types::Filter>] :filters
    #   Optional list of filters to limit results.
    #
    #   The filter name `name` is supported. When filtering, you must use the
    #   complete value of the filtered item. You can use up to three filters.
    #
    # @return [Types::ListSimulationApplicationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSimulationApplicationsResponse#simulation_application_summaries #simulation_application_summaries} => Array&lt;Types::SimulationApplicationSummary&gt;
    #   * {Types::ListSimulationApplicationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_simulation_applications({
    #     version_qualifier: "VersionQualifier",
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #     filters: [
    #       {
    #         name: "Name",
    #         values: ["Name"],
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.simulation_application_summaries #=> Array
    #   resp.simulation_application_summaries[0].name #=> String
    #   resp.simulation_application_summaries[0].arn #=> String
    #   resp.simulation_application_summaries[0].version #=> String
    #   resp.simulation_application_summaries[0].last_updated_at #=> Time
    #   resp.simulation_application_summaries[0].robot_software_suite.name #=> String, one of "ROS", "ROS2"
    #   resp.simulation_application_summaries[0].robot_software_suite.version #=> String, one of "Kinetic", "Melodic", "Dashing"
    #   resp.simulation_application_summaries[0].simulation_software_suite.name #=> String, one of "Gazebo", "RosbagPlay"
    #   resp.simulation_application_summaries[0].simulation_software_suite.version #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/ListSimulationApplications AWS API Documentation
    #
    # @overload list_simulation_applications(params = {})
    # @param [Hash] params ({})
    def list_simulation_applications(params = {}, options = {})
      req = build_request(:list_simulation_applications, params)
      req.send_request(options)
    end

    # Returns a list simulation job batches. You can optionally provide
    # filters to retrieve specific simulation batch jobs.
    #
    # @option params [String] :next_token
    #   If the previous paginated request did not return all of the remaining
    #   results, the response object's `nextToken` parameter value is set to
    #   a token. To retrieve the next set of results, call
    #   `ListSimulationJobBatches` again and assign that token to the request
    #   object's `nextToken` parameter. If there are no remaining results,
    #   the previous response object's NextToken parameter is set to null.
    #
    # @option params [Integer] :max_results
    #   When this parameter is used, `ListSimulationJobBatches` only returns
    #   `maxResults` results in a single page along with a `nextToken`
    #   response element. The remaining results of the initial request can be
    #   seen by sending another `ListSimulationJobBatches` request with the
    #   returned `nextToken` value.
    #
    # @option params [Array<Types::Filter>] :filters
    #   Optional filters to limit results.
    #
    # @return [Types::ListSimulationJobBatchesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSimulationJobBatchesResponse#simulation_job_batch_summaries #simulation_job_batch_summaries} => Array&lt;Types::SimulationJobBatchSummary&gt;
    #   * {Types::ListSimulationJobBatchesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_simulation_job_batches({
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #     filters: [
    #       {
    #         name: "Name",
    #         values: ["Name"],
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.simulation_job_batch_summaries #=> Array
    #   resp.simulation_job_batch_summaries[0].arn #=> String
    #   resp.simulation_job_batch_summaries[0].last_updated_at #=> Time
    #   resp.simulation_job_batch_summaries[0].created_at #=> Time
    #   resp.simulation_job_batch_summaries[0].status #=> String, one of "Pending", "InProgress", "Failed", "Completed", "Canceled", "Canceling", "Completing", "TimingOut", "TimedOut"
    #   resp.simulation_job_batch_summaries[0].failed_request_count #=> Integer
    #   resp.simulation_job_batch_summaries[0].pending_request_count #=> Integer
    #   resp.simulation_job_batch_summaries[0].created_request_count #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/ListSimulationJobBatches AWS API Documentation
    #
    # @overload list_simulation_job_batches(params = {})
    # @param [Hash] params ({})
    def list_simulation_job_batches(params = {}, options = {})
      req = build_request(:list_simulation_job_batches, params)
      req.send_request(options)
    end

    # Returns a list of simulation jobs. You can optionally provide filters
    # to retrieve specific simulation jobs.
    #
    # @option params [String] :next_token
    #   If the previous paginated request did not return all of the remaining
    #   results, the response object's `nextToken` parameter value is set to
    #   a token. To retrieve the next set of results, call
    #   `ListSimulationJobs` again and assign that token to the request
    #   object's `nextToken` parameter. If there are no remaining results,
    #   the previous response object's NextToken parameter is set to null.
    #
    # @option params [Integer] :max_results
    #   When this parameter is used, `ListSimulationJobs` only returns
    #   `maxResults` results in a single page along with a `nextToken`
    #   response element. The remaining results of the initial request can be
    #   seen by sending another `ListSimulationJobs` request with the returned
    #   `nextToken` value. This value can be between 1 and 1000. If this
    #   parameter is not used, then `ListSimulationJobs` returns up to 1000
    #   results and a `nextToken` value if applicable.
    #
    # @option params [Array<Types::Filter>] :filters
    #   Optional filters to limit results.
    #
    #   The filter names `status` and `simulationApplicationName` and
    #   `robotApplicationName` are supported. When filtering, you must use the
    #   complete value of the filtered item. You can use up to three filters,
    #   but they must be for the same named item. For example, if you are
    #   looking for items with the status `Preparing` or the status `Running`.
    #
    # @return [Types::ListSimulationJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSimulationJobsResponse#simulation_job_summaries #simulation_job_summaries} => Array&lt;Types::SimulationJobSummary&gt;
    #   * {Types::ListSimulationJobsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_simulation_jobs({
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #     filters: [
    #       {
    #         name: "Name",
    #         values: ["Name"],
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.simulation_job_summaries #=> Array
    #   resp.simulation_job_summaries[0].arn #=> String
    #   resp.simulation_job_summaries[0].last_updated_at #=> Time
    #   resp.simulation_job_summaries[0].name #=> String
    #   resp.simulation_job_summaries[0].status #=> String, one of "Pending", "Preparing", "Running", "Restarting", "Completed", "Failed", "RunningFailed", "Terminating", "Terminated", "Canceled"
    #   resp.simulation_job_summaries[0].simulation_application_names #=> Array
    #   resp.simulation_job_summaries[0].simulation_application_names[0] #=> String
    #   resp.simulation_job_summaries[0].robot_application_names #=> Array
    #   resp.simulation_job_summaries[0].robot_application_names[0] #=> String
    #   resp.simulation_job_summaries[0].data_source_names #=> Array
    #   resp.simulation_job_summaries[0].data_source_names[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/ListSimulationJobs AWS API Documentation
    #
    # @overload list_simulation_jobs(params = {})
    # @param [Hash] params ({})
    def list_simulation_jobs(params = {}, options = {})
      req = build_request(:list_simulation_jobs, params)
      req.send_request(options)
    end

    # Lists all tags on a AWS RoboMaker resource.
    #
    # @option params [required, String] :resource_arn
    #   The AWS RoboMaker Amazon Resource Name (ARN) with tags to be listed.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Lists world export jobs.
    #
    # @option params [String] :next_token
    #   If the previous paginated request did not return all of the remaining
    #   results, the response object's `nextToken` parameter value is set to
    #   a token. To retrieve the next set of results, call
    #   `ListWorldExportJobs` again and assign that token to the request
    #   object's `nextToken` parameter. If there are no remaining results,
    #   the previous response object's NextToken parameter is set to null.
    #
    # @option params [Integer] :max_results
    #   When this parameter is used, `ListWorldExportJobs` only returns
    #   `maxResults` results in a single page along with a `nextToken`
    #   response element. The remaining results of the initial request can be
    #   seen by sending another `ListWorldExportJobs` request with the
    #   returned `nextToken` value. This value can be between 1 and 100. If
    #   this parameter is not used, then `ListWorldExportJobs` returns up to
    #   100 results and a `nextToken` value if applicable.
    #
    # @option params [Array<Types::Filter>] :filters
    #   Optional filters to limit results. You can use `generationJobId` and
    #   `templateId`.
    #
    # @return [Types::ListWorldExportJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListWorldExportJobsResponse#world_export_job_summaries #world_export_job_summaries} => Array&lt;Types::WorldExportJobSummary&gt;
    #   * {Types::ListWorldExportJobsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_world_export_jobs({
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #     filters: [
    #       {
    #         name: "Name",
    #         values: ["Name"],
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.world_export_job_summaries #=> Array
    #   resp.world_export_job_summaries[0].arn #=> String
    #   resp.world_export_job_summaries[0].status #=> String, one of "Pending", "Running", "Completed", "Failed", "Canceling", "Canceled"
    #   resp.world_export_job_summaries[0].created_at #=> Time
    #   resp.world_export_job_summaries[0].worlds #=> Array
    #   resp.world_export_job_summaries[0].worlds[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/ListWorldExportJobs AWS API Documentation
    #
    # @overload list_world_export_jobs(params = {})
    # @param [Hash] params ({})
    def list_world_export_jobs(params = {}, options = {})
      req = build_request(:list_world_export_jobs, params)
      req.send_request(options)
    end

    # Lists world generator jobs.
    #
    # @option params [String] :next_token
    #   If the previous paginated request did not return all of the remaining
    #   results, the response object's `nextToken` parameter value is set to
    #   a token. To retrieve the next set of results, call
    #   `ListWorldGenerationJobsRequest` again and assign that token to the
    #   request object's `nextToken` parameter. If there are no remaining
    #   results, the previous response object's NextToken parameter is set to
    #   null.
    #
    # @option params [Integer] :max_results
    #   When this parameter is used, `ListWorldGeneratorJobs` only returns
    #   `maxResults` results in a single page along with a `nextToken`
    #   response element. The remaining results of the initial request can be
    #   seen by sending another `ListWorldGeneratorJobs` request with the
    #   returned `nextToken` value. This value can be between 1 and 100. If
    #   this parameter is not used, then `ListWorldGeneratorJobs` returns up
    #   to 100 results and a `nextToken` value if applicable.
    #
    # @option params [Array<Types::Filter>] :filters
    #   Optional filters to limit results. You can use `status` and
    #   `templateId`.
    #
    # @return [Types::ListWorldGenerationJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListWorldGenerationJobsResponse#world_generation_job_summaries #world_generation_job_summaries} => Array&lt;Types::WorldGenerationJobSummary&gt;
    #   * {Types::ListWorldGenerationJobsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_world_generation_jobs({
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #     filters: [
    #       {
    #         name: "Name",
    #         values: ["Name"],
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.world_generation_job_summaries #=> Array
    #   resp.world_generation_job_summaries[0].arn #=> String
    #   resp.world_generation_job_summaries[0].template #=> String
    #   resp.world_generation_job_summaries[0].created_at #=> Time
    #   resp.world_generation_job_summaries[0].status #=> String, one of "Pending", "Running", "Completed", "Failed", "PartialFailed", "Canceling", "Canceled"
    #   resp.world_generation_job_summaries[0].world_count.floorplan_count #=> Integer
    #   resp.world_generation_job_summaries[0].world_count.interior_count_per_floorplan #=> Integer
    #   resp.world_generation_job_summaries[0].succeeded_world_count #=> Integer
    #   resp.world_generation_job_summaries[0].failed_world_count #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/ListWorldGenerationJobs AWS API Documentation
    #
    # @overload list_world_generation_jobs(params = {})
    # @param [Hash] params ({})
    def list_world_generation_jobs(params = {}, options = {})
      req = build_request(:list_world_generation_jobs, params)
      req.send_request(options)
    end

    # Lists world templates.
    #
    # @option params [String] :next_token
    #   If the previous paginated request did not return all of the remaining
    #   results, the response object's `nextToken` parameter value is set to
    #   a token. To retrieve the next set of results, call
    #   `ListWorldTemplates` again and assign that token to the request
    #   object's `nextToken` parameter. If there are no remaining results,
    #   the previous response object's NextToken parameter is set to null.
    #
    # @option params [Integer] :max_results
    #   When this parameter is used, `ListWorldTemplates` only returns
    #   `maxResults` results in a single page along with a `nextToken`
    #   response element. The remaining results of the initial request can be
    #   seen by sending another `ListWorldTemplates` request with the returned
    #   `nextToken` value. This value can be between 1 and 100. If this
    #   parameter is not used, then `ListWorldTemplates` returns up to 100
    #   results and a `nextToken` value if applicable.
    #
    # @return [Types::ListWorldTemplatesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListWorldTemplatesResponse#template_summaries #template_summaries} => Array&lt;Types::TemplateSummary&gt;
    #   * {Types::ListWorldTemplatesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_world_templates({
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.template_summaries #=> Array
    #   resp.template_summaries[0].arn #=> String
    #   resp.template_summaries[0].created_at #=> Time
    #   resp.template_summaries[0].last_updated_at #=> Time
    #   resp.template_summaries[0].name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/ListWorldTemplates AWS API Documentation
    #
    # @overload list_world_templates(params = {})
    # @param [Hash] params ({})
    def list_world_templates(params = {}, options = {})
      req = build_request(:list_world_templates, params)
      req.send_request(options)
    end

    # Lists worlds.
    #
    # @option params [String] :next_token
    #   If the previous paginated request did not return all of the remaining
    #   results, the response object's `nextToken` parameter value is set to
    #   a token. To retrieve the next set of results, call `ListWorlds` again
    #   and assign that token to the request object's `nextToken` parameter.
    #   If there are no remaining results, the previous response object's
    #   NextToken parameter is set to null.
    #
    # @option params [Integer] :max_results
    #   When this parameter is used, `ListWorlds` only returns `maxResults`
    #   results in a single page along with a `nextToken` response element.
    #   The remaining results of the initial request can be seen by sending
    #   another `ListWorlds` request with the returned `nextToken` value. This
    #   value can be between 1 and 100. If this parameter is not used, then
    #   `ListWorlds` returns up to 100 results and a `nextToken` value if
    #   applicable.
    #
    # @option params [Array<Types::Filter>] :filters
    #   Optional filters to limit results. You can use `status`.
    #
    # @return [Types::ListWorldsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListWorldsResponse#world_summaries #world_summaries} => Array&lt;Types::WorldSummary&gt;
    #   * {Types::ListWorldsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_worlds({
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #     filters: [
    #       {
    #         name: "Name",
    #         values: ["Name"],
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.world_summaries #=> Array
    #   resp.world_summaries[0].arn #=> String
    #   resp.world_summaries[0].created_at #=> Time
    #   resp.world_summaries[0].generation_job #=> String
    #   resp.world_summaries[0].template #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/ListWorlds AWS API Documentation
    #
    # @overload list_worlds(params = {})
    # @param [Hash] params ({})
    def list_worlds(params = {}, options = {})
      req = build_request(:list_worlds, params)
      req.send_request(options)
    end

    # Registers a robot with a fleet.
    #
    # @option params [required, String] :fleet
    #   The Amazon Resource Name (ARN) of the fleet.
    #
    # @option params [required, String] :robot
    #   The Amazon Resource Name (ARN) of the robot.
    #
    # @return [Types::RegisterRobotResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RegisterRobotResponse#fleet #fleet} => String
    #   * {Types::RegisterRobotResponse#robot #robot} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_robot({
    #     fleet: "Arn", # required
    #     robot: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.fleet #=> String
    #   resp.robot #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/RegisterRobot AWS API Documentation
    #
    # @overload register_robot(params = {})
    # @param [Hash] params ({})
    def register_robot(params = {}, options = {})
      req = build_request(:register_robot, params)
      req.send_request(options)
    end

    # Restarts a running simulation job.
    #
    # @option params [required, String] :job
    #   The Amazon Resource Name (ARN) of the simulation job.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.restart_simulation_job({
    #     job: "Arn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/RestartSimulationJob AWS API Documentation
    #
    # @overload restart_simulation_job(params = {})
    # @param [Hash] params ({})
    def restart_simulation_job(params = {}, options = {})
      req = build_request(:restart_simulation_job, params)
      req.send_request(options)
    end

    # Starts a new simulation job batch. The batch is defined using one or
    # more `SimulationJobRequest` objects.
    #
    # @option params [String] :client_request_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Types::BatchPolicy] :batch_policy
    #   The batch policy.
    #
    # @option params [required, Array<Types::SimulationJobRequest>] :create_simulation_job_requests
    #   A list of simulation job requests to create in the batch.
    #
    # @option params [Hash<String,String>] :tags
    #   A map that contains tag keys and tag values that are attached to the
    #   deployment job batch.
    #
    # @return [Types::StartSimulationJobBatchResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartSimulationJobBatchResponse#arn #arn} => String
    #   * {Types::StartSimulationJobBatchResponse#status #status} => String
    #   * {Types::StartSimulationJobBatchResponse#created_at #created_at} => Time
    #   * {Types::StartSimulationJobBatchResponse#client_request_token #client_request_token} => String
    #   * {Types::StartSimulationJobBatchResponse#batch_policy #batch_policy} => Types::BatchPolicy
    #   * {Types::StartSimulationJobBatchResponse#failure_code #failure_code} => String
    #   * {Types::StartSimulationJobBatchResponse#failure_reason #failure_reason} => String
    #   * {Types::StartSimulationJobBatchResponse#failed_requests #failed_requests} => Array&lt;Types::FailedCreateSimulationJobRequest&gt;
    #   * {Types::StartSimulationJobBatchResponse#pending_requests #pending_requests} => Array&lt;Types::SimulationJobRequest&gt;
    #   * {Types::StartSimulationJobBatchResponse#created_requests #created_requests} => Array&lt;Types::SimulationJobSummary&gt;
    #   * {Types::StartSimulationJobBatchResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_simulation_job_batch({
    #     client_request_token: "ClientRequestToken",
    #     batch_policy: {
    #       timeout_in_seconds: 1,
    #       max_concurrency: 1,
    #     },
    #     create_simulation_job_requests: [ # required
    #       {
    #         output_location: {
    #           s3_bucket: "S3Bucket",
    #           s3_prefix: "S3Key",
    #         },
    #         logging_config: {
    #           record_all_ros_topics: false, # required
    #         },
    #         max_job_duration_in_seconds: 1, # required
    #         iam_role: "IamRole",
    #         failure_behavior: "Fail", # accepts Fail, Continue
    #         use_default_applications: false,
    #         robot_applications: [
    #           {
    #             application: "Arn", # required
    #             application_version: "Version",
    #             launch_config: { # required
    #               package_name: "Command", # required
    #               launch_file: "Command", # required
    #               environment_variables: {
    #                 "EnvironmentVariableKey" => "EnvironmentVariableValue",
    #               },
    #               port_forwarding_config: {
    #                 port_mappings: [
    #                   {
    #                     job_port: 1, # required
    #                     application_port: 1, # required
    #                     enable_on_public_ip: false,
    #                   },
    #                 ],
    #               },
    #               stream_ui: false,
    #             },
    #           },
    #         ],
    #         simulation_applications: [
    #           {
    #             application: "Arn", # required
    #             application_version: "Version",
    #             launch_config: { # required
    #               package_name: "Command", # required
    #               launch_file: "Command", # required
    #               environment_variables: {
    #                 "EnvironmentVariableKey" => "EnvironmentVariableValue",
    #               },
    #               port_forwarding_config: {
    #                 port_mappings: [
    #                   {
    #                     job_port: 1, # required
    #                     application_port: 1, # required
    #                     enable_on_public_ip: false,
    #                   },
    #                 ],
    #               },
    #               stream_ui: false,
    #             },
    #             world_configs: [
    #               {
    #                 world: "Arn",
    #               },
    #             ],
    #           },
    #         ],
    #         data_sources: [
    #           {
    #             name: "Name", # required
    #             s3_bucket: "S3Bucket", # required
    #             s3_keys: ["S3Key"], # required
    #           },
    #         ],
    #         vpc_config: {
    #           subnets: ["NonEmptyString"], # required
    #           security_groups: ["NonEmptyString"],
    #           assign_public_ip: false,
    #         },
    #         compute: {
    #           simulation_unit_limit: 1,
    #         },
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       },
    #     ],
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.status #=> String, one of "Pending", "InProgress", "Failed", "Completed", "Canceled", "Canceling", "Completing", "TimingOut", "TimedOut"
    #   resp.created_at #=> Time
    #   resp.client_request_token #=> String
    #   resp.batch_policy.timeout_in_seconds #=> Integer
    #   resp.batch_policy.max_concurrency #=> Integer
    #   resp.failure_code #=> String, one of "InternalServiceError"
    #   resp.failure_reason #=> String
    #   resp.failed_requests #=> Array
    #   resp.failed_requests[0].request.output_location.s3_bucket #=> String
    #   resp.failed_requests[0].request.output_location.s3_prefix #=> String
    #   resp.failed_requests[0].request.logging_config.record_all_ros_topics #=> Boolean
    #   resp.failed_requests[0].request.max_job_duration_in_seconds #=> Integer
    #   resp.failed_requests[0].request.iam_role #=> String
    #   resp.failed_requests[0].request.failure_behavior #=> String, one of "Fail", "Continue"
    #   resp.failed_requests[0].request.use_default_applications #=> Boolean
    #   resp.failed_requests[0].request.robot_applications #=> Array
    #   resp.failed_requests[0].request.robot_applications[0].application #=> String
    #   resp.failed_requests[0].request.robot_applications[0].application_version #=> String
    #   resp.failed_requests[0].request.robot_applications[0].launch_config.package_name #=> String
    #   resp.failed_requests[0].request.robot_applications[0].launch_config.launch_file #=> String
    #   resp.failed_requests[0].request.robot_applications[0].launch_config.environment_variables #=> Hash
    #   resp.failed_requests[0].request.robot_applications[0].launch_config.environment_variables["EnvironmentVariableKey"] #=> String
    #   resp.failed_requests[0].request.robot_applications[0].launch_config.port_forwarding_config.port_mappings #=> Array
    #   resp.failed_requests[0].request.robot_applications[0].launch_config.port_forwarding_config.port_mappings[0].job_port #=> Integer
    #   resp.failed_requests[0].request.robot_applications[0].launch_config.port_forwarding_config.port_mappings[0].application_port #=> Integer
    #   resp.failed_requests[0].request.robot_applications[0].launch_config.port_forwarding_config.port_mappings[0].enable_on_public_ip #=> Boolean
    #   resp.failed_requests[0].request.robot_applications[0].launch_config.stream_ui #=> Boolean
    #   resp.failed_requests[0].request.simulation_applications #=> Array
    #   resp.failed_requests[0].request.simulation_applications[0].application #=> String
    #   resp.failed_requests[0].request.simulation_applications[0].application_version #=> String
    #   resp.failed_requests[0].request.simulation_applications[0].launch_config.package_name #=> String
    #   resp.failed_requests[0].request.simulation_applications[0].launch_config.launch_file #=> String
    #   resp.failed_requests[0].request.simulation_applications[0].launch_config.environment_variables #=> Hash
    #   resp.failed_requests[0].request.simulation_applications[0].launch_config.environment_variables["EnvironmentVariableKey"] #=> String
    #   resp.failed_requests[0].request.simulation_applications[0].launch_config.port_forwarding_config.port_mappings #=> Array
    #   resp.failed_requests[0].request.simulation_applications[0].launch_config.port_forwarding_config.port_mappings[0].job_port #=> Integer
    #   resp.failed_requests[0].request.simulation_applications[0].launch_config.port_forwarding_config.port_mappings[0].application_port #=> Integer
    #   resp.failed_requests[0].request.simulation_applications[0].launch_config.port_forwarding_config.port_mappings[0].enable_on_public_ip #=> Boolean
    #   resp.failed_requests[0].request.simulation_applications[0].launch_config.stream_ui #=> Boolean
    #   resp.failed_requests[0].request.simulation_applications[0].world_configs #=> Array
    #   resp.failed_requests[0].request.simulation_applications[0].world_configs[0].world #=> String
    #   resp.failed_requests[0].request.data_sources #=> Array
    #   resp.failed_requests[0].request.data_sources[0].name #=> String
    #   resp.failed_requests[0].request.data_sources[0].s3_bucket #=> String
    #   resp.failed_requests[0].request.data_sources[0].s3_keys #=> Array
    #   resp.failed_requests[0].request.data_sources[0].s3_keys[0] #=> String
    #   resp.failed_requests[0].request.vpc_config.subnets #=> Array
    #   resp.failed_requests[0].request.vpc_config.subnets[0] #=> String
    #   resp.failed_requests[0].request.vpc_config.security_groups #=> Array
    #   resp.failed_requests[0].request.vpc_config.security_groups[0] #=> String
    #   resp.failed_requests[0].request.vpc_config.assign_public_ip #=> Boolean
    #   resp.failed_requests[0].request.compute.simulation_unit_limit #=> Integer
    #   resp.failed_requests[0].request.tags #=> Hash
    #   resp.failed_requests[0].request.tags["TagKey"] #=> String
    #   resp.failed_requests[0].failure_reason #=> String
    #   resp.failed_requests[0].failure_code #=> String, one of "InternalServiceError", "RobotApplicationCrash", "SimulationApplicationCrash", "BadPermissionsRobotApplication", "BadPermissionsSimulationApplication", "BadPermissionsS3Object", "BadPermissionsS3Output", "BadPermissionsCloudwatchLogs", "SubnetIpLimitExceeded", "ENILimitExceeded", "BadPermissionsUserCredentials", "InvalidBundleRobotApplication", "InvalidBundleSimulationApplication", "InvalidS3Resource", "LimitExceeded", "MismatchedEtag", "RobotApplicationVersionMismatchedEtag", "SimulationApplicationVersionMismatchedEtag", "ResourceNotFound", "RequestThrottled", "BatchTimedOut", "BatchCanceled", "InvalidInput", "WrongRegionS3Bucket", "WrongRegionS3Output", "WrongRegionRobotApplication", "WrongRegionSimulationApplication"
    #   resp.failed_requests[0].failed_at #=> Time
    #   resp.pending_requests #=> Array
    #   resp.pending_requests[0].output_location.s3_bucket #=> String
    #   resp.pending_requests[0].output_location.s3_prefix #=> String
    #   resp.pending_requests[0].logging_config.record_all_ros_topics #=> Boolean
    #   resp.pending_requests[0].max_job_duration_in_seconds #=> Integer
    #   resp.pending_requests[0].iam_role #=> String
    #   resp.pending_requests[0].failure_behavior #=> String, one of "Fail", "Continue"
    #   resp.pending_requests[0].use_default_applications #=> Boolean
    #   resp.pending_requests[0].robot_applications #=> Array
    #   resp.pending_requests[0].robot_applications[0].application #=> String
    #   resp.pending_requests[0].robot_applications[0].application_version #=> String
    #   resp.pending_requests[0].robot_applications[0].launch_config.package_name #=> String
    #   resp.pending_requests[0].robot_applications[0].launch_config.launch_file #=> String
    #   resp.pending_requests[0].robot_applications[0].launch_config.environment_variables #=> Hash
    #   resp.pending_requests[0].robot_applications[0].launch_config.environment_variables["EnvironmentVariableKey"] #=> String
    #   resp.pending_requests[0].robot_applications[0].launch_config.port_forwarding_config.port_mappings #=> Array
    #   resp.pending_requests[0].robot_applications[0].launch_config.port_forwarding_config.port_mappings[0].job_port #=> Integer
    #   resp.pending_requests[0].robot_applications[0].launch_config.port_forwarding_config.port_mappings[0].application_port #=> Integer
    #   resp.pending_requests[0].robot_applications[0].launch_config.port_forwarding_config.port_mappings[0].enable_on_public_ip #=> Boolean
    #   resp.pending_requests[0].robot_applications[0].launch_config.stream_ui #=> Boolean
    #   resp.pending_requests[0].simulation_applications #=> Array
    #   resp.pending_requests[0].simulation_applications[0].application #=> String
    #   resp.pending_requests[0].simulation_applications[0].application_version #=> String
    #   resp.pending_requests[0].simulation_applications[0].launch_config.package_name #=> String
    #   resp.pending_requests[0].simulation_applications[0].launch_config.launch_file #=> String
    #   resp.pending_requests[0].simulation_applications[0].launch_config.environment_variables #=> Hash
    #   resp.pending_requests[0].simulation_applications[0].launch_config.environment_variables["EnvironmentVariableKey"] #=> String
    #   resp.pending_requests[0].simulation_applications[0].launch_config.port_forwarding_config.port_mappings #=> Array
    #   resp.pending_requests[0].simulation_applications[0].launch_config.port_forwarding_config.port_mappings[0].job_port #=> Integer
    #   resp.pending_requests[0].simulation_applications[0].launch_config.port_forwarding_config.port_mappings[0].application_port #=> Integer
    #   resp.pending_requests[0].simulation_applications[0].launch_config.port_forwarding_config.port_mappings[0].enable_on_public_ip #=> Boolean
    #   resp.pending_requests[0].simulation_applications[0].launch_config.stream_ui #=> Boolean
    #   resp.pending_requests[0].simulation_applications[0].world_configs #=> Array
    #   resp.pending_requests[0].simulation_applications[0].world_configs[0].world #=> String
    #   resp.pending_requests[0].data_sources #=> Array
    #   resp.pending_requests[0].data_sources[0].name #=> String
    #   resp.pending_requests[0].data_sources[0].s3_bucket #=> String
    #   resp.pending_requests[0].data_sources[0].s3_keys #=> Array
    #   resp.pending_requests[0].data_sources[0].s3_keys[0] #=> String
    #   resp.pending_requests[0].vpc_config.subnets #=> Array
    #   resp.pending_requests[0].vpc_config.subnets[0] #=> String
    #   resp.pending_requests[0].vpc_config.security_groups #=> Array
    #   resp.pending_requests[0].vpc_config.security_groups[0] #=> String
    #   resp.pending_requests[0].vpc_config.assign_public_ip #=> Boolean
    #   resp.pending_requests[0].compute.simulation_unit_limit #=> Integer
    #   resp.pending_requests[0].tags #=> Hash
    #   resp.pending_requests[0].tags["TagKey"] #=> String
    #   resp.created_requests #=> Array
    #   resp.created_requests[0].arn #=> String
    #   resp.created_requests[0].last_updated_at #=> Time
    #   resp.created_requests[0].name #=> String
    #   resp.created_requests[0].status #=> String, one of "Pending", "Preparing", "Running", "Restarting", "Completed", "Failed", "RunningFailed", "Terminating", "Terminated", "Canceled"
    #   resp.created_requests[0].simulation_application_names #=> Array
    #   resp.created_requests[0].simulation_application_names[0] #=> String
    #   resp.created_requests[0].robot_application_names #=> Array
    #   resp.created_requests[0].robot_application_names[0] #=> String
    #   resp.created_requests[0].data_source_names #=> Array
    #   resp.created_requests[0].data_source_names[0] #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/StartSimulationJobBatch AWS API Documentation
    #
    # @overload start_simulation_job_batch(params = {})
    # @param [Hash] params ({})
    def start_simulation_job_batch(params = {}, options = {})
      req = build_request(:start_simulation_job_batch, params)
      req.send_request(options)
    end

    # Syncrhonizes robots in a fleet to the latest deployment. This is
    # helpful if robots were added after a deployment.
    #
    # @option params [required, String] :client_request_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :fleet
    #   The target fleet for the synchronization.
    #
    # @return [Types::SyncDeploymentJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SyncDeploymentJobResponse#arn #arn} => String
    #   * {Types::SyncDeploymentJobResponse#fleet #fleet} => String
    #   * {Types::SyncDeploymentJobResponse#status #status} => String
    #   * {Types::SyncDeploymentJobResponse#deployment_config #deployment_config} => Types::DeploymentConfig
    #   * {Types::SyncDeploymentJobResponse#deployment_application_configs #deployment_application_configs} => Array&lt;Types::DeploymentApplicationConfig&gt;
    #   * {Types::SyncDeploymentJobResponse#failure_reason #failure_reason} => String
    #   * {Types::SyncDeploymentJobResponse#failure_code #failure_code} => String
    #   * {Types::SyncDeploymentJobResponse#created_at #created_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.sync_deployment_job({
    #     client_request_token: "ClientRequestToken", # required
    #     fleet: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.fleet #=> String
    #   resp.status #=> String, one of "Pending", "Preparing", "InProgress", "Failed", "Succeeded", "Canceled"
    #   resp.deployment_config.concurrent_deployment_percentage #=> Integer
    #   resp.deployment_config.failure_threshold_percentage #=> Integer
    #   resp.deployment_config.robot_deployment_timeout_in_seconds #=> Integer
    #   resp.deployment_config.download_condition_file.bucket #=> String
    #   resp.deployment_config.download_condition_file.key #=> String
    #   resp.deployment_config.download_condition_file.etag #=> String
    #   resp.deployment_application_configs #=> Array
    #   resp.deployment_application_configs[0].application #=> String
    #   resp.deployment_application_configs[0].application_version #=> String
    #   resp.deployment_application_configs[0].launch_config.package_name #=> String
    #   resp.deployment_application_configs[0].launch_config.pre_launch_file #=> String
    #   resp.deployment_application_configs[0].launch_config.launch_file #=> String
    #   resp.deployment_application_configs[0].launch_config.post_launch_file #=> String
    #   resp.deployment_application_configs[0].launch_config.environment_variables #=> Hash
    #   resp.deployment_application_configs[0].launch_config.environment_variables["EnvironmentVariableKey"] #=> String
    #   resp.failure_reason #=> String
    #   resp.failure_code #=> String, one of "ResourceNotFound", "EnvironmentSetupError", "EtagMismatch", "FailureThresholdBreached", "RobotDeploymentAborted", "RobotDeploymentNoResponse", "RobotAgentConnectionTimeout", "GreengrassDeploymentFailed", "InvalidGreengrassGroup", "MissingRobotArchitecture", "MissingRobotApplicationArchitecture", "MissingRobotDeploymentResource", "GreengrassGroupVersionDoesNotExist", "LambdaDeleted", "ExtractingBundleFailure", "PreLaunchFileFailure", "PostLaunchFileFailure", "BadPermissionError", "DownloadConditionFailed", "InternalServerError"
    #   resp.created_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/SyncDeploymentJob AWS API Documentation
    #
    # @overload sync_deployment_job(params = {})
    # @param [Hash] params ({})
    def sync_deployment_job(params = {}, options = {})
      req = build_request(:sync_deployment_job, params)
      req.send_request(options)
    end

    # Adds or edits tags for a AWS RoboMaker resource.
    #
    # Each tag consists of a tag key and a tag value. Tag keys and tag
    # values are both required, but tag values can be empty strings.
    #
    # For information about the rules that apply to tag keys and tag values,
    # see [User-Defined Tag Restrictions][1] in the *AWS Billing and Cost
    # Management User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/allocation-tag-restrictions.html
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the AWS RoboMaker resource you are
    #   tagging.
    #
    # @option params [required, Hash<String,String>] :tags
    #   A map that contains tag keys and tag values that are attached to the
    #   resource.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes the specified tags from the specified AWS RoboMaker resource.
    #
    # To remove a tag, specify the tag key. To change the tag value of an
    # existing tag key, use [ `TagResource` ][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/robomaker/latest/dg/API_TagResource.html
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the AWS RoboMaker resource you are
    #   removing tags.
    #
    # @option params [required, Array<String>] :tag_keys
    #   A map that contains tag keys and tag values that will be unattached
    #   from the resource.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates a robot application.
    #
    # @option params [required, String] :application
    #   The application information for the robot application.
    #
    # @option params [required, Array<Types::SourceConfig>] :sources
    #   The sources of the robot application.
    #
    # @option params [required, Types::RobotSoftwareSuite] :robot_software_suite
    #   The robot software suite (ROS distribution) used by the robot
    #   application.
    #
    # @option params [String] :current_revision_id
    #   The revision id for the robot application.
    #
    # @return [Types::UpdateRobotApplicationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateRobotApplicationResponse#arn #arn} => String
    #   * {Types::UpdateRobotApplicationResponse#name #name} => String
    #   * {Types::UpdateRobotApplicationResponse#version #version} => String
    #   * {Types::UpdateRobotApplicationResponse#sources #sources} => Array&lt;Types::Source&gt;
    #   * {Types::UpdateRobotApplicationResponse#robot_software_suite #robot_software_suite} => Types::RobotSoftwareSuite
    #   * {Types::UpdateRobotApplicationResponse#last_updated_at #last_updated_at} => Time
    #   * {Types::UpdateRobotApplicationResponse#revision_id #revision_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_robot_application({
    #     application: "Arn", # required
    #     sources: [ # required
    #       {
    #         s3_bucket: "S3Bucket",
    #         s3_key: "S3Key",
    #         architecture: "X86_64", # accepts X86_64, ARM64, ARMHF
    #       },
    #     ],
    #     robot_software_suite: { # required
    #       name: "ROS", # accepts ROS, ROS2
    #       version: "Kinetic", # accepts Kinetic, Melodic, Dashing
    #     },
    #     current_revision_id: "RevisionId",
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.name #=> String
    #   resp.version #=> String
    #   resp.sources #=> Array
    #   resp.sources[0].s3_bucket #=> String
    #   resp.sources[0].s3_key #=> String
    #   resp.sources[0].etag #=> String
    #   resp.sources[0].architecture #=> String, one of "X86_64", "ARM64", "ARMHF"
    #   resp.robot_software_suite.name #=> String, one of "ROS", "ROS2"
    #   resp.robot_software_suite.version #=> String, one of "Kinetic", "Melodic", "Dashing"
    #   resp.last_updated_at #=> Time
    #   resp.revision_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/UpdateRobotApplication AWS API Documentation
    #
    # @overload update_robot_application(params = {})
    # @param [Hash] params ({})
    def update_robot_application(params = {}, options = {})
      req = build_request(:update_robot_application, params)
      req.send_request(options)
    end

    # Updates a simulation application.
    #
    # @option params [required, String] :application
    #   The application information for the simulation application.
    #
    # @option params [required, Array<Types::SourceConfig>] :sources
    #   The sources of the simulation application.
    #
    # @option params [required, Types::SimulationSoftwareSuite] :simulation_software_suite
    #   The simulation software suite used by the simulation application.
    #
    # @option params [required, Types::RobotSoftwareSuite] :robot_software_suite
    #   Information about the robot software suite (ROS distribution).
    #
    # @option params [Types::RenderingEngine] :rendering_engine
    #   The rendering engine for the simulation application.
    #
    # @option params [String] :current_revision_id
    #   The revision id for the robot application.
    #
    # @return [Types::UpdateSimulationApplicationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateSimulationApplicationResponse#arn #arn} => String
    #   * {Types::UpdateSimulationApplicationResponse#name #name} => String
    #   * {Types::UpdateSimulationApplicationResponse#version #version} => String
    #   * {Types::UpdateSimulationApplicationResponse#sources #sources} => Array&lt;Types::Source&gt;
    #   * {Types::UpdateSimulationApplicationResponse#simulation_software_suite #simulation_software_suite} => Types::SimulationSoftwareSuite
    #   * {Types::UpdateSimulationApplicationResponse#robot_software_suite #robot_software_suite} => Types::RobotSoftwareSuite
    #   * {Types::UpdateSimulationApplicationResponse#rendering_engine #rendering_engine} => Types::RenderingEngine
    #   * {Types::UpdateSimulationApplicationResponse#last_updated_at #last_updated_at} => Time
    #   * {Types::UpdateSimulationApplicationResponse#revision_id #revision_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_simulation_application({
    #     application: "Arn", # required
    #     sources: [ # required
    #       {
    #         s3_bucket: "S3Bucket",
    #         s3_key: "S3Key",
    #         architecture: "X86_64", # accepts X86_64, ARM64, ARMHF
    #       },
    #     ],
    #     simulation_software_suite: { # required
    #       name: "Gazebo", # accepts Gazebo, RosbagPlay
    #       version: "SimulationSoftwareSuiteVersionType",
    #     },
    #     robot_software_suite: { # required
    #       name: "ROS", # accepts ROS, ROS2
    #       version: "Kinetic", # accepts Kinetic, Melodic, Dashing
    #     },
    #     rendering_engine: {
    #       name: "OGRE", # accepts OGRE
    #       version: "RenderingEngineVersionType",
    #     },
    #     current_revision_id: "RevisionId",
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.name #=> String
    #   resp.version #=> String
    #   resp.sources #=> Array
    #   resp.sources[0].s3_bucket #=> String
    #   resp.sources[0].s3_key #=> String
    #   resp.sources[0].etag #=> String
    #   resp.sources[0].architecture #=> String, one of "X86_64", "ARM64", "ARMHF"
    #   resp.simulation_software_suite.name #=> String, one of "Gazebo", "RosbagPlay"
    #   resp.simulation_software_suite.version #=> String
    #   resp.robot_software_suite.name #=> String, one of "ROS", "ROS2"
    #   resp.robot_software_suite.version #=> String, one of "Kinetic", "Melodic", "Dashing"
    #   resp.rendering_engine.name #=> String, one of "OGRE"
    #   resp.rendering_engine.version #=> String
    #   resp.last_updated_at #=> Time
    #   resp.revision_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/UpdateSimulationApplication AWS API Documentation
    #
    # @overload update_simulation_application(params = {})
    # @param [Hash] params ({})
    def update_simulation_application(params = {}, options = {})
      req = build_request(:update_simulation_application, params)
      req.send_request(options)
    end

    # Updates a world template.
    #
    # @option params [required, String] :template
    #   The Amazon Resource Name (arn) of the world template to update.
    #
    # @option params [String] :name
    #   The name of the template.
    #
    # @option params [String] :template_body
    #   The world template body.
    #
    # @option params [Types::TemplateLocation] :template_location
    #   The location of the world template.
    #
    # @return [Types::UpdateWorldTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateWorldTemplateResponse#arn #arn} => String
    #   * {Types::UpdateWorldTemplateResponse#name #name} => String
    #   * {Types::UpdateWorldTemplateResponse#created_at #created_at} => Time
    #   * {Types::UpdateWorldTemplateResponse#last_updated_at #last_updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_world_template({
    #     template: "Arn", # required
    #     name: "TemplateName",
    #     template_body: "Json",
    #     template_location: {
    #       s3_bucket: "S3Bucket", # required
    #       s3_key: "S3Key", # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.name #=> String
    #   resp.created_at #=> Time
    #   resp.last_updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/UpdateWorldTemplate AWS API Documentation
    #
    # @overload update_world_template(params = {})
    # @param [Hash] params ({})
    def update_world_template(params = {}, options = {})
      req = build_request(:update_world_template, params)
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
      context[:gem_name] = 'aws-sdk-robomaker'
      context[:gem_version] = '1.30.0'
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
