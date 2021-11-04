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
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:proton)

module Aws::Proton
  # An API client for Proton.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::Proton::Client.new(
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

    @identifier = :proton

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
    add_plugin(Aws::Plugins::Protocols::JsonRpc)

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

    # In a management account, an environment account connection request is
    # accepted. When the environment account connection request is accepted,
    # AWS Proton can use the associated IAM role to provision environment
    # infrastructure resources in the associated environment account.
    #
    # For more information, see [Environment account connections][1] in the
    # *AWS Proton Administrator guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/proton/latest/adminguide/ag-env-account-connections.html
    #
    # @option params [required, String] :id
    #   The ID of the environment account connection.
    #
    # @return [Types::AcceptEnvironmentAccountConnectionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AcceptEnvironmentAccountConnectionOutput#environment_account_connection #environment_account_connection} => Types::EnvironmentAccountConnection
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.accept_environment_account_connection({
    #     id: "EnvironmentAccountConnectionId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.environment_account_connection.arn #=> String
    #   resp.environment_account_connection.environment_account_id #=> String
    #   resp.environment_account_connection.environment_name #=> String
    #   resp.environment_account_connection.id #=> String
    #   resp.environment_account_connection.last_modified_at #=> Time
    #   resp.environment_account_connection.management_account_id #=> String
    #   resp.environment_account_connection.requested_at #=> Time
    #   resp.environment_account_connection.role_arn #=> String
    #   resp.environment_account_connection.status #=> String, one of "PENDING", "CONNECTED", "REJECTED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/AcceptEnvironmentAccountConnection AWS API Documentation
    #
    # @overload accept_environment_account_connection(params = {})
    # @param [Hash] params ({})
    def accept_environment_account_connection(params = {}, options = {})
      req = build_request(:accept_environment_account_connection, params)
      req.send_request(options)
    end

    # Attempts to cancel an environment deployment on an UpdateEnvironment
    # action, if the deployment is `IN_PROGRESS`. For more information, see
    # [Update an environment][1] in the *AWS Proton Administrator guide*.
    #
    # The following list includes potential cancellation scenarios.
    #
    # * If the cancellation attempt succeeds, the resulting deployment state
    #   is `CANCELLED`.
    #
    # * If the cancellation attempt fails, the resulting deployment state is
    #   `FAILED`.
    #
    # * If the current UpdateEnvironment action succeeds before the
    #   cancellation attempt starts, the resulting deployment state is
    #   `SUCCEEDED` and the cancellation attempt has no effect.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/proton/latest/adminguide/ag-env-update.html
    #
    # @option params [required, String] :environment_name
    #   The name of the environment with the deployment to cancel.
    #
    # @return [Types::CancelEnvironmentDeploymentOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CancelEnvironmentDeploymentOutput#environment #environment} => Types::Environment
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_environment_deployment({
    #     environment_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.environment.arn #=> String
    #   resp.environment.created_at #=> Time
    #   resp.environment.deployment_status #=> String, one of "IN_PROGRESS", "FAILED", "SUCCEEDED", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "CANCELLING", "CANCELLED"
    #   resp.environment.deployment_status_message #=> String
    #   resp.environment.description #=> String
    #   resp.environment.environment_account_connection_id #=> String
    #   resp.environment.environment_account_id #=> String
    #   resp.environment.last_deployment_attempted_at #=> Time
    #   resp.environment.last_deployment_succeeded_at #=> Time
    #   resp.environment.name #=> String
    #   resp.environment.proton_service_role_arn #=> String
    #   resp.environment.provisioning #=> String, one of "CUSTOMER_MANAGED"
    #   resp.environment.spec #=> String
    #   resp.environment.template_major_version #=> String
    #   resp.environment.template_minor_version #=> String
    #   resp.environment.template_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/CancelEnvironmentDeployment AWS API Documentation
    #
    # @overload cancel_environment_deployment(params = {})
    # @param [Hash] params ({})
    def cancel_environment_deployment(params = {}, options = {})
      req = build_request(:cancel_environment_deployment, params)
      req.send_request(options)
    end

    # Attempts to cancel a service instance deployment on an
    # UpdateServiceInstance action, if the deployment is `IN_PROGRESS`. For
    # more information, see *Update a service instance* in the [AWS Proton
    # Administrator guide][1] or the [AWS Proton User guide][2].
    #
    # The following list includes potential cancellation scenarios.
    #
    # * If the cancellation attempt succeeds, the resulting deployment state
    #   is `CANCELLED`.
    #
    # * If the cancellation attempt fails, the resulting deployment state is
    #   `FAILED`.
    #
    # * If the current UpdateServiceInstance action succeeds before the
    #   cancellation attempt starts, the resulting deployment state is
    #   `SUCCEEDED` and the cancellation attempt has no effect.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/proton/latest/adminguide/ag-svc-instance-update.html
    # [2]: https://docs.aws.amazon.com/proton/latest/userguide/ug-svc-instance-update.html
    #
    # @option params [required, String] :service_instance_name
    #   The name of the service instance with the deployment to cancel.
    #
    # @option params [required, String] :service_name
    #   The name of the service with the service instance deployment to
    #   cancel.
    #
    # @return [Types::CancelServiceInstanceDeploymentOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CancelServiceInstanceDeploymentOutput#service_instance #service_instance} => Types::ServiceInstance
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_service_instance_deployment({
    #     service_instance_name: "ResourceName", # required
    #     service_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.service_instance.arn #=> String
    #   resp.service_instance.created_at #=> Time
    #   resp.service_instance.deployment_status #=> String, one of "IN_PROGRESS", "FAILED", "SUCCEEDED", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "CANCELLING", "CANCELLED"
    #   resp.service_instance.deployment_status_message #=> String
    #   resp.service_instance.environment_name #=> String
    #   resp.service_instance.last_deployment_attempted_at #=> Time
    #   resp.service_instance.last_deployment_succeeded_at #=> Time
    #   resp.service_instance.name #=> String
    #   resp.service_instance.service_name #=> String
    #   resp.service_instance.spec #=> String
    #   resp.service_instance.template_major_version #=> String
    #   resp.service_instance.template_minor_version #=> String
    #   resp.service_instance.template_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/CancelServiceInstanceDeployment AWS API Documentation
    #
    # @overload cancel_service_instance_deployment(params = {})
    # @param [Hash] params ({})
    def cancel_service_instance_deployment(params = {}, options = {})
      req = build_request(:cancel_service_instance_deployment, params)
      req.send_request(options)
    end

    # Attempts to cancel a service pipeline deployment on an
    # UpdateServicePipeline action, if the deployment is `IN_PROGRESS`. For
    # more information, see *Update a service pipeline* in the [AWS Proton
    # Administrator guide][1] or the [AWS Proton User guide][2].
    #
    # The following list includes potential cancellation scenarios.
    #
    # * If the cancellation attempt succeeds, the resulting deployment state
    #   is `CANCELLED`.
    #
    # * If the cancellation attempt fails, the resulting deployment state is
    #   `FAILED`.
    #
    # * If the current UpdateServicePipeline action succeeds before the
    #   cancellation attempt starts, the resulting deployment state is
    #   `SUCCEEDED` and the cancellation attempt has no effect.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/proton/latest/adminguide/ag-svc-pipeline-update.html
    # [2]: https://docs.aws.amazon.com/proton/latest/userguide/ug-svc-pipeline-update.html
    #
    # @option params [required, String] :service_name
    #   The name of the service with the service pipeline deployment to
    #   cancel.
    #
    # @return [Types::CancelServicePipelineDeploymentOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CancelServicePipelineDeploymentOutput#pipeline #pipeline} => Types::ServicePipeline
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_service_pipeline_deployment({
    #     service_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.pipeline.arn #=> String
    #   resp.pipeline.created_at #=> Time
    #   resp.pipeline.deployment_status #=> String, one of "IN_PROGRESS", "FAILED", "SUCCEEDED", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "CANCELLING", "CANCELLED"
    #   resp.pipeline.deployment_status_message #=> String
    #   resp.pipeline.last_deployment_attempted_at #=> Time
    #   resp.pipeline.last_deployment_succeeded_at #=> Time
    #   resp.pipeline.spec #=> String
    #   resp.pipeline.template_major_version #=> String
    #   resp.pipeline.template_minor_version #=> String
    #   resp.pipeline.template_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/CancelServicePipelineDeployment AWS API Documentation
    #
    # @overload cancel_service_pipeline_deployment(params = {})
    # @param [Hash] params ({})
    def cancel_service_pipeline_deployment(params = {}, options = {})
      req = build_request(:cancel_service_pipeline_deployment, params)
      req.send_request(options)
    end

    # Deploy a new environment. An AWS Proton environment is created from an
    # environment template that defines infrastructure and resources that
    # can be shared across services. For more information, see the
    # [Environments][1] in the *AWS Proton Administrator Guide.*
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/proton/latest/adminguide/ag-environments.html
    #
    # @option params [String] :description
    #   A description of the environment that's being created and deployed.
    #
    # @option params [String] :environment_account_connection_id
    #   The ID of the environment account connection that you provide if
    #   you're provisioning your environment infrastructure resources to an
    #   environment account. You must include either the
    #   `environmentAccountConnectionId` or `protonServiceRoleArn` parameter
    #   and value. For more information, see [Environment account
    #   connections][1] in the *AWS Proton Administrator guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/proton/latest/adminguide/ag-env-account-connections.html
    #
    # @option params [required, String] :name
    #   The name of the environment.
    #
    # @option params [String] :proton_service_role_arn
    #   The Amazon Resource Name (ARN) of the AWS Proton service role that
    #   allows AWS Proton to make calls to other services on your behalf. You
    #   must include either the `environmentAccountConnectionId` or
    #   `protonServiceRoleArn` parameter and value.
    #
    # @option params [required, String] :spec
    #   A link to a YAML formatted spec file that provides inputs as defined
    #   in the environment template bundle schema file. For more information,
    #   see [Environments][1] in the *AWS Proton Administrator Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/proton/latest/adminguide/ag-environments.html
    #
    # @option params [Array<Types::Tag>] :tags
    #   Create tags for your environment. For more information, see *AWS
    #   Proton resources and tagging* in the [AWS Proton Administrator
    #   Guide][1] or [AWS Proton User Guide][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/proton/latest/adminguide/resources.html
    #   [2]: https://docs.aws.amazon.com/proton/latest/userguide/resources.html
    #
    # @option params [required, String] :template_major_version
    #   The ID of the major version of the environment template.
    #
    # @option params [String] :template_minor_version
    #   The ID of the minor version of the environment template.
    #
    # @option params [required, String] :template_name
    #   The name of the environment template. For more information, see
    #   [Environment Templates][1] in the *AWS Proton Administrator Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/proton/latest/adminguide/ag-templates.html
    #
    # @return [Types::CreateEnvironmentOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateEnvironmentOutput#environment #environment} => Types::Environment
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_environment({
    #     description: "Description",
    #     environment_account_connection_id: "EnvironmentAccountConnectionId",
    #     name: "ResourceName", # required
    #     proton_service_role_arn: "Arn",
    #     spec: "SpecContents", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     template_major_version: "TemplateVersionPart", # required
    #     template_minor_version: "TemplateVersionPart",
    #     template_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.environment.arn #=> String
    #   resp.environment.created_at #=> Time
    #   resp.environment.deployment_status #=> String, one of "IN_PROGRESS", "FAILED", "SUCCEEDED", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "CANCELLING", "CANCELLED"
    #   resp.environment.deployment_status_message #=> String
    #   resp.environment.description #=> String
    #   resp.environment.environment_account_connection_id #=> String
    #   resp.environment.environment_account_id #=> String
    #   resp.environment.last_deployment_attempted_at #=> Time
    #   resp.environment.last_deployment_succeeded_at #=> Time
    #   resp.environment.name #=> String
    #   resp.environment.proton_service_role_arn #=> String
    #   resp.environment.provisioning #=> String, one of "CUSTOMER_MANAGED"
    #   resp.environment.spec #=> String
    #   resp.environment.template_major_version #=> String
    #   resp.environment.template_minor_version #=> String
    #   resp.environment.template_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/CreateEnvironment AWS API Documentation
    #
    # @overload create_environment(params = {})
    # @param [Hash] params ({})
    def create_environment(params = {}, options = {})
      req = build_request(:create_environment, params)
      req.send_request(options)
    end

    # Create an environment account connection in an environment account so
    # that environment infrastructure resources can be provisioned in the
    # environment account from a management account.
    #
    # An environment account connection is a secure bi-directional
    # connection between a *management account* and an *environment account*
    # that maintains authorization and permissions. For more information,
    # see [Environment account connections][1] in the *AWS Proton
    # Administrator guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/proton/latest/adminguide/ag-env-account-connections.html
    #
    # @option params [String] :client_token
    #   When included, if two identicial requests are made with the same
    #   client token, AWS Proton returns the environment account connection
    #   that the first request created.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :environment_name
    #   The name of the AWS Proton environment that's created in the
    #   associated management account.
    #
    # @option params [required, String] :management_account_id
    #   The ID of the management account that accepts or rejects the
    #   environment account connection. You create an manage the AWS Proton
    #   environment in this account. If the management account accepts the
    #   environment account connection, AWS Proton can use the associated IAM
    #   role to provision environment infrastructure resources in the
    #   associated environment account.
    #
    # @option params [required, String] :role_arn
    #   The Amazon Resource Name (ARN) of the IAM service role that's created
    #   in the environment account. AWS Proton uses this role to provision
    #   infrastructure resources in the associated environment account.
    #
    # @return [Types::CreateEnvironmentAccountConnectionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateEnvironmentAccountConnectionOutput#environment_account_connection #environment_account_connection} => Types::EnvironmentAccountConnection
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_environment_account_connection({
    #     client_token: "ClientToken",
    #     environment_name: "ResourceName", # required
    #     management_account_id: "AwsAccountId", # required
    #     role_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.environment_account_connection.arn #=> String
    #   resp.environment_account_connection.environment_account_id #=> String
    #   resp.environment_account_connection.environment_name #=> String
    #   resp.environment_account_connection.id #=> String
    #   resp.environment_account_connection.last_modified_at #=> Time
    #   resp.environment_account_connection.management_account_id #=> String
    #   resp.environment_account_connection.requested_at #=> Time
    #   resp.environment_account_connection.role_arn #=> String
    #   resp.environment_account_connection.status #=> String, one of "PENDING", "CONNECTED", "REJECTED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/CreateEnvironmentAccountConnection AWS API Documentation
    #
    # @overload create_environment_account_connection(params = {})
    # @param [Hash] params ({})
    def create_environment_account_connection(params = {}, options = {})
      req = build_request(:create_environment_account_connection, params)
      req.send_request(options)
    end

    # Create an environment template for AWS Proton. For more information,
    # see [Environment Templates][1] in the *AWS Proton Administrator
    # Guide*.
    #
    # You can create an environment template in one of the two following
    # ways:
    #
    # * Register and publish a *standard* environment template that
    #   instructs AWS Proton to deploy and manage environment
    #   infrastructure.
    #
    # * Register and publish a *customer managed* environment template that
    #   connects AWS Proton to your existing provisioned infrastructure that
    #   you manage. AWS Proton *doesn't* manage your existing provisioned
    #   infrastructure. To create an environment template for customer
    #   provisioned and managed infrastructure, include the `provisioning`
    #   parameter and set the value to `CUSTOMER_MANAGED`. For more
    #   information, see [Register and publish an environment template][2]
    #   in the *AWS Proton Administrator Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/proton/latest/adminguide/ag-templates.html
    # [2]: https://docs.aws.amazon.com/proton/latest/adminguide/template-create.html
    #
    # @option params [String] :description
    #   A description of the environment template.
    #
    # @option params [String] :display_name
    #   The environment template name as displayed in the developer interface.
    #
    # @option params [String] :encryption_key
    #   A customer provided encryption key that AWS Proton uses to encrypt
    #   data.
    #
    # @option params [required, String] :name
    #   The name of the environment template.
    #
    # @option params [String] :provisioning
    #   When included, indicates that the environment template is for customer
    #   provisioned and managed infrastructure.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Create tags for your environment template. For more information, see
    #   *AWS Proton resources and tagging* in the [AWS Proton Administrator
    #   Guide][1] or [AWS Proton User Guide][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/proton/latest/adminguide/resources.html
    #   [2]: https://docs.aws.amazon.com/proton/latest/userguide/resources.html
    #
    # @return [Types::CreateEnvironmentTemplateOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateEnvironmentTemplateOutput#environment_template #environment_template} => Types::EnvironmentTemplate
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_environment_template({
    #     description: "Description",
    #     display_name: "DisplayName",
    #     encryption_key: "Arn",
    #     name: "ResourceName", # required
    #     provisioning: "CUSTOMER_MANAGED", # accepts CUSTOMER_MANAGED
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.environment_template.arn #=> String
    #   resp.environment_template.created_at #=> Time
    #   resp.environment_template.description #=> String
    #   resp.environment_template.display_name #=> String
    #   resp.environment_template.encryption_key #=> String
    #   resp.environment_template.last_modified_at #=> Time
    #   resp.environment_template.name #=> String
    #   resp.environment_template.provisioning #=> String, one of "CUSTOMER_MANAGED"
    #   resp.environment_template.recommended_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/CreateEnvironmentTemplate AWS API Documentation
    #
    # @overload create_environment_template(params = {})
    # @param [Hash] params ({})
    def create_environment_template(params = {}, options = {})
      req = build_request(:create_environment_template, params)
      req.send_request(options)
    end

    # Create a new major or minor version of an environment template. A
    # major version of an environment template is a version that *isn't*
    # backwards compatible. A minor version of an environment template is a
    # version that's backwards compatible within its major version.
    #
    # @option params [String] :client_token
    #   When included, if two identicial requests are made with the same
    #   client token, AWS Proton returns the environment template version that
    #   the first request created.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :description
    #   A description of the new version of an environment template.
    #
    # @option params [String] :major_version
    #   To create a new minor version of the environment template, include a
    #   `majorVersion`.
    #
    #   To create a new major and minor version of the environment template,
    #   *exclude* `majorVersion`.
    #
    # @option params [required, Types::TemplateVersionSourceInput] :source
    #   An object that includes the template bundle S3 bucket path and name
    #   for the new version of an template.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Create tags for a new version of an environment template.
    #
    # @option params [required, String] :template_name
    #   The name of the environment template.
    #
    # @return [Types::CreateEnvironmentTemplateVersionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateEnvironmentTemplateVersionOutput#environment_template_version #environment_template_version} => Types::EnvironmentTemplateVersion
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_environment_template_version({
    #     client_token: "ClientToken",
    #     description: "Description",
    #     major_version: "TemplateVersionPart",
    #     source: { # required
    #       s3: {
    #         bucket: "S3Bucket", # required
    #         key: "S3Key", # required
    #       },
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     template_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.environment_template_version.arn #=> String
    #   resp.environment_template_version.created_at #=> Time
    #   resp.environment_template_version.description #=> String
    #   resp.environment_template_version.last_modified_at #=> Time
    #   resp.environment_template_version.major_version #=> String
    #   resp.environment_template_version.minor_version #=> String
    #   resp.environment_template_version.recommended_minor_version #=> String
    #   resp.environment_template_version.schema #=> String
    #   resp.environment_template_version.status #=> String, one of "REGISTRATION_IN_PROGRESS", "REGISTRATION_FAILED", "DRAFT", "PUBLISHED"
    #   resp.environment_template_version.status_message #=> String
    #   resp.environment_template_version.template_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/CreateEnvironmentTemplateVersion AWS API Documentation
    #
    # @overload create_environment_template_version(params = {})
    # @param [Hash] params ({})
    def create_environment_template_version(params = {}, options = {})
      req = build_request(:create_environment_template_version, params)
      req.send_request(options)
    end

    # Create an AWS Proton service. An AWS Proton service is an
    # instantiation of a service template and often includes several service
    # instances and pipeline. For more information, see [Services][1] in the
    # *AWS Proton Administrator Guide* and [Services][2] in the *AWS Proton
    # User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/proton/latest/adminguide/ag-services.html
    # [2]: https://docs.aws.amazon.com/proton/latest/userguide/ug-service.html
    #
    # @option params [String] :branch_name
    #   The name of the code repository branch that holds the code that's
    #   deployed in AWS Proton. *Don't* include this parameter if your
    #   service template *doesn't* include a service pipeline.
    #
    # @option params [String] :description
    #   A description of the AWS Proton service.
    #
    # @option params [required, String] :name
    #   The service name.
    #
    # @option params [String] :repository_connection_arn
    #   The Amazon Resource Name (ARN) of the repository connection. For more
    #   information, see [Set up repository connection][1] in the *AWS Proton
    #   Administrator Guide* and [Setting up with AWS Proton][2] in the *AWS
    #   Proton User Guide*. *Don't* include this parameter if your service
    #   template *doesn't* include a service pipeline.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/proton/latest/adminguide/setting-up-for-service.html#setting-up-vcontrol
    #   [2]: https://docs.aws.amazon.com/proton/latest/userguide/proton-setup.html#setup-repo-connection
    #
    # @option params [String] :repository_id
    #   The ID of the code repository. *Don't* include this parameter if your
    #   service template *doesn't* include a service pipeline.
    #
    # @option params [required, String] :spec
    #   A link to a spec file that provides inputs as defined in the service
    #   template bundle schema file. The spec file is in YAML format. Don’t
    #   include pipeline inputs in the spec if your service template *doesn’t*
    #   include a service pipeline. For more information, see [Create a
    #   service][1] in the *AWS Proton Administrator Guide* and [Create a
    #   service][2] in the *AWS Proton User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/proton/latest/adminguide/ag-create-svc.html.html
    #   [2]: https://docs.aws.amazon.com/proton/latest/userguide/ug-svc-create.html
    #
    # @option params [Array<Types::Tag>] :tags
    #   Create tags for your service. For more information, see *AWS Proton
    #   resources and tagging* in the [AWS Proton Administrator Guide][1] or
    #   [AWS Proton User Guide][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/proton/latest/adminguide/resources.html
    #   [2]: https://docs.aws.amazon.com/proton/latest/userguide/resources.html
    #
    # @option params [required, String] :template_major_version
    #   The ID of the major version of the service template that was used to
    #   create the service.
    #
    # @option params [String] :template_minor_version
    #   The ID of the minor version of the service template that was used to
    #   create the service.
    #
    # @option params [required, String] :template_name
    #   The name of the service template that's used to create the service.
    #
    # @return [Types::CreateServiceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateServiceOutput#service #service} => Types::Service
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_service({
    #     branch_name: "GitBranchName",
    #     description: "Description",
    #     name: "ResourceName", # required
    #     repository_connection_arn: "Arn",
    #     repository_id: "RepositoryId",
    #     spec: "SpecContents", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     template_major_version: "TemplateVersionPart", # required
    #     template_minor_version: "TemplateVersionPart",
    #     template_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.service.arn #=> String
    #   resp.service.branch_name #=> String
    #   resp.service.created_at #=> Time
    #   resp.service.description #=> String
    #   resp.service.last_modified_at #=> Time
    #   resp.service.name #=> String
    #   resp.service.pipeline.arn #=> String
    #   resp.service.pipeline.created_at #=> Time
    #   resp.service.pipeline.deployment_status #=> String, one of "IN_PROGRESS", "FAILED", "SUCCEEDED", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "CANCELLING", "CANCELLED"
    #   resp.service.pipeline.deployment_status_message #=> String
    #   resp.service.pipeline.last_deployment_attempted_at #=> Time
    #   resp.service.pipeline.last_deployment_succeeded_at #=> Time
    #   resp.service.pipeline.spec #=> String
    #   resp.service.pipeline.template_major_version #=> String
    #   resp.service.pipeline.template_minor_version #=> String
    #   resp.service.pipeline.template_name #=> String
    #   resp.service.repository_connection_arn #=> String
    #   resp.service.repository_id #=> String
    #   resp.service.spec #=> String
    #   resp.service.status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_FAILED_CLEANUP_IN_PROGRESS", "CREATE_FAILED_CLEANUP_COMPLETE", "CREATE_FAILED_CLEANUP_FAILED", "CREATE_FAILED", "ACTIVE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_FAILED_CLEANUP_IN_PROGRESS", "UPDATE_FAILED_CLEANUP_COMPLETE", "UPDATE_FAILED_CLEANUP_FAILED", "UPDATE_FAILED", "UPDATE_COMPLETE_CLEANUP_FAILED"
    #   resp.service.status_message #=> String
    #   resp.service.template_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/CreateService AWS API Documentation
    #
    # @overload create_service(params = {})
    # @param [Hash] params ({})
    def create_service(params = {}, options = {})
      req = build_request(:create_service, params)
      req.send_request(options)
    end

    # Create a service template. The administrator creates a service
    # template to define standardized infrastructure and an optional CICD
    # service pipeline. Developers, in turn, select the service template
    # from AWS Proton. If the selected service template includes a service
    # pipeline definition, they provide a link to their source code
    # repository. AWS Proton then deploys and manages the infrastructure
    # defined by the selected service template. For more information, see
    # [Service Templates][1] in the *AWS Proton Administrator Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/proton/latest/adminguide/managing-svc-templates.html
    #
    # @option params [String] :description
    #   A description of the service template.
    #
    # @option params [String] :display_name
    #   The name of the service template as displayed in the developer
    #   interface.
    #
    # @option params [String] :encryption_key
    #   A customer provided encryption key that's used to encrypt data.
    #
    # @option params [required, String] :name
    #   The name of the service template.
    #
    # @option params [String] :pipeline_provisioning
    #   AWS Proton includes a service pipeline for your service by default.
    #   When included, this parameter indicates that an AWS Proton service
    #   pipeline *won't* be included for your service. Once specified, this
    #   parameter *can't* be changed. For more information, see [Service
    #   template bundles][1] in the *AWS Proton Administrator Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/proton/latest/adminguide/ag-template-bundles.html
    #
    # @option params [Array<Types::Tag>] :tags
    #   Create tags for your service template. For more information, see *AWS
    #   Proton resources and tagging* in the [AWS Proton Administrator
    #   Guide][1] or [AWS Proton User Guide][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/proton/latest/adminguide/resources.html
    #   [2]: https://docs.aws.amazon.com/proton/latest/userguide/resources.html
    #
    # @return [Types::CreateServiceTemplateOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateServiceTemplateOutput#service_template #service_template} => Types::ServiceTemplate
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_service_template({
    #     description: "Description",
    #     display_name: "DisplayName",
    #     encryption_key: "Arn",
    #     name: "ResourceName", # required
    #     pipeline_provisioning: "CUSTOMER_MANAGED", # accepts CUSTOMER_MANAGED
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.service_template.arn #=> String
    #   resp.service_template.created_at #=> Time
    #   resp.service_template.description #=> String
    #   resp.service_template.display_name #=> String
    #   resp.service_template.encryption_key #=> String
    #   resp.service_template.last_modified_at #=> Time
    #   resp.service_template.name #=> String
    #   resp.service_template.pipeline_provisioning #=> String, one of "CUSTOMER_MANAGED"
    #   resp.service_template.recommended_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/CreateServiceTemplate AWS API Documentation
    #
    # @overload create_service_template(params = {})
    # @param [Hash] params ({})
    def create_service_template(params = {}, options = {})
      req = build_request(:create_service_template, params)
      req.send_request(options)
    end

    # Create a new major or minor version of a service template. A major
    # version of a service template is a version that *isn't* backwards
    # compatible. A minor version of a service template is a version that's
    # backwards compatible within its major version.
    #
    # @option params [String] :client_token
    #   When included, if two identicial requests are made with the same
    #   client token, AWS Proton returns the service template version that the
    #   first request created.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, Array<Types::CompatibleEnvironmentTemplateInput>] :compatible_environment_templates
    #   An array of compatible environment template objects for the new
    #   version of a service template.
    #
    # @option params [String] :description
    #   A description of the new version of a service template.
    #
    # @option params [String] :major_version
    #   To create a new minor version of the service template, include a
    #   `majorVersion`.
    #
    #   To create a new major and minor version of the service template,
    #   *exclude* `majorVersion`.
    #
    # @option params [required, Types::TemplateVersionSourceInput] :source
    #   An object that includes the template bundle S3 bucket path and name
    #   for the new version of a service template.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Create tags for a new version of a service template.
    #
    # @option params [required, String] :template_name
    #   The name of the service template.
    #
    # @return [Types::CreateServiceTemplateVersionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateServiceTemplateVersionOutput#service_template_version #service_template_version} => Types::ServiceTemplateVersion
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_service_template_version({
    #     client_token: "ClientToken",
    #     compatible_environment_templates: [ # required
    #       {
    #         major_version: "TemplateVersionPart", # required
    #         template_name: "ResourceName", # required
    #       },
    #     ],
    #     description: "Description",
    #     major_version: "TemplateVersionPart",
    #     source: { # required
    #       s3: {
    #         bucket: "S3Bucket", # required
    #         key: "S3Key", # required
    #       },
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     template_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.service_template_version.arn #=> String
    #   resp.service_template_version.compatible_environment_templates #=> Array
    #   resp.service_template_version.compatible_environment_templates[0].major_version #=> String
    #   resp.service_template_version.compatible_environment_templates[0].template_name #=> String
    #   resp.service_template_version.created_at #=> Time
    #   resp.service_template_version.description #=> String
    #   resp.service_template_version.last_modified_at #=> Time
    #   resp.service_template_version.major_version #=> String
    #   resp.service_template_version.minor_version #=> String
    #   resp.service_template_version.recommended_minor_version #=> String
    #   resp.service_template_version.schema #=> String
    #   resp.service_template_version.status #=> String, one of "REGISTRATION_IN_PROGRESS", "REGISTRATION_FAILED", "DRAFT", "PUBLISHED"
    #   resp.service_template_version.status_message #=> String
    #   resp.service_template_version.template_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/CreateServiceTemplateVersion AWS API Documentation
    #
    # @overload create_service_template_version(params = {})
    # @param [Hash] params ({})
    def create_service_template_version(params = {}, options = {})
      req = build_request(:create_service_template_version, params)
      req.send_request(options)
    end

    # Delete an environment.
    #
    # @option params [required, String] :name
    #   The name of the environment to delete.
    #
    # @return [Types::DeleteEnvironmentOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteEnvironmentOutput#environment #environment} => Types::Environment
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_environment({
    #     name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.environment.arn #=> String
    #   resp.environment.created_at #=> Time
    #   resp.environment.deployment_status #=> String, one of "IN_PROGRESS", "FAILED", "SUCCEEDED", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "CANCELLING", "CANCELLED"
    #   resp.environment.deployment_status_message #=> String
    #   resp.environment.description #=> String
    #   resp.environment.environment_account_connection_id #=> String
    #   resp.environment.environment_account_id #=> String
    #   resp.environment.last_deployment_attempted_at #=> Time
    #   resp.environment.last_deployment_succeeded_at #=> Time
    #   resp.environment.name #=> String
    #   resp.environment.proton_service_role_arn #=> String
    #   resp.environment.provisioning #=> String, one of "CUSTOMER_MANAGED"
    #   resp.environment.spec #=> String
    #   resp.environment.template_major_version #=> String
    #   resp.environment.template_minor_version #=> String
    #   resp.environment.template_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/DeleteEnvironment AWS API Documentation
    #
    # @overload delete_environment(params = {})
    # @param [Hash] params ({})
    def delete_environment(params = {}, options = {})
      req = build_request(:delete_environment, params)
      req.send_request(options)
    end

    # In an environment account, delete an environment account connection.
    #
    # After you delete an environment account connection that’s in use by an
    # AWS Proton environment, AWS Proton *can’t* manage the environment
    # infrastructure resources until a new environment account connection is
    # accepted for the environment account and associated environment.
    # You're responsible for cleaning up provisioned resources that remain
    # without an environment connection.
    #
    # For more information, see [Environment account connections][1] in the
    # *AWS Proton Administrator guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/proton/latest/adminguide/ag-env-account-connections.html
    #
    # @option params [required, String] :id
    #   The ID of the environment account connection to delete.
    #
    # @return [Types::DeleteEnvironmentAccountConnectionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteEnvironmentAccountConnectionOutput#environment_account_connection #environment_account_connection} => Types::EnvironmentAccountConnection
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_environment_account_connection({
    #     id: "EnvironmentAccountConnectionId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.environment_account_connection.arn #=> String
    #   resp.environment_account_connection.environment_account_id #=> String
    #   resp.environment_account_connection.environment_name #=> String
    #   resp.environment_account_connection.id #=> String
    #   resp.environment_account_connection.last_modified_at #=> Time
    #   resp.environment_account_connection.management_account_id #=> String
    #   resp.environment_account_connection.requested_at #=> Time
    #   resp.environment_account_connection.role_arn #=> String
    #   resp.environment_account_connection.status #=> String, one of "PENDING", "CONNECTED", "REJECTED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/DeleteEnvironmentAccountConnection AWS API Documentation
    #
    # @overload delete_environment_account_connection(params = {})
    # @param [Hash] params ({})
    def delete_environment_account_connection(params = {}, options = {})
      req = build_request(:delete_environment_account_connection, params)
      req.send_request(options)
    end

    # If no other major or minor versions of an environment template exist,
    # delete the environment template.
    #
    # @option params [required, String] :name
    #   The name of the environment template to delete.
    #
    # @return [Types::DeleteEnvironmentTemplateOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteEnvironmentTemplateOutput#environment_template #environment_template} => Types::EnvironmentTemplate
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_environment_template({
    #     name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.environment_template.arn #=> String
    #   resp.environment_template.created_at #=> Time
    #   resp.environment_template.description #=> String
    #   resp.environment_template.display_name #=> String
    #   resp.environment_template.encryption_key #=> String
    #   resp.environment_template.last_modified_at #=> Time
    #   resp.environment_template.name #=> String
    #   resp.environment_template.provisioning #=> String, one of "CUSTOMER_MANAGED"
    #   resp.environment_template.recommended_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/DeleteEnvironmentTemplate AWS API Documentation
    #
    # @overload delete_environment_template(params = {})
    # @param [Hash] params ({})
    def delete_environment_template(params = {}, options = {})
      req = build_request(:delete_environment_template, params)
      req.send_request(options)
    end

    # If no other minor versions of an environment template exist, delete a
    # major version of the environment template if it's not the
    # `Recommended` version. Delete the `Recommended` version of the
    # environment template if no other major versions or minor versions of
    # the environment template exist. A major version of an environment
    # template is a version that's not backwards compatible.
    #
    # Delete a minor version of an environment template if it *isn't* the
    # `Recommended` version. Delete a `Recommended` minor version of the
    # environment template if no other minor versions of the environment
    # template exist. A minor version of an environment template is a
    # version that's backwards compatible.
    #
    # @option params [required, String] :major_version
    #   The environment template major version to delete.
    #
    # @option params [required, String] :minor_version
    #   The environment template minor version to delete.
    #
    # @option params [required, String] :template_name
    #   The name of the environment template.
    #
    # @return [Types::DeleteEnvironmentTemplateVersionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteEnvironmentTemplateVersionOutput#environment_template_version #environment_template_version} => Types::EnvironmentTemplateVersion
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_environment_template_version({
    #     major_version: "TemplateVersionPart", # required
    #     minor_version: "TemplateVersionPart", # required
    #     template_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.environment_template_version.arn #=> String
    #   resp.environment_template_version.created_at #=> Time
    #   resp.environment_template_version.description #=> String
    #   resp.environment_template_version.last_modified_at #=> Time
    #   resp.environment_template_version.major_version #=> String
    #   resp.environment_template_version.minor_version #=> String
    #   resp.environment_template_version.recommended_minor_version #=> String
    #   resp.environment_template_version.schema #=> String
    #   resp.environment_template_version.status #=> String, one of "REGISTRATION_IN_PROGRESS", "REGISTRATION_FAILED", "DRAFT", "PUBLISHED"
    #   resp.environment_template_version.status_message #=> String
    #   resp.environment_template_version.template_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/DeleteEnvironmentTemplateVersion AWS API Documentation
    #
    # @overload delete_environment_template_version(params = {})
    # @param [Hash] params ({})
    def delete_environment_template_version(params = {}, options = {})
      req = build_request(:delete_environment_template_version, params)
      req.send_request(options)
    end

    # Delete a service.
    #
    # @option params [required, String] :name
    #   The name of the service to delete.
    #
    # @return [Types::DeleteServiceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteServiceOutput#service #service} => Types::Service
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_service({
    #     name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.service.arn #=> String
    #   resp.service.branch_name #=> String
    #   resp.service.created_at #=> Time
    #   resp.service.description #=> String
    #   resp.service.last_modified_at #=> Time
    #   resp.service.name #=> String
    #   resp.service.pipeline.arn #=> String
    #   resp.service.pipeline.created_at #=> Time
    #   resp.service.pipeline.deployment_status #=> String, one of "IN_PROGRESS", "FAILED", "SUCCEEDED", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "CANCELLING", "CANCELLED"
    #   resp.service.pipeline.deployment_status_message #=> String
    #   resp.service.pipeline.last_deployment_attempted_at #=> Time
    #   resp.service.pipeline.last_deployment_succeeded_at #=> Time
    #   resp.service.pipeline.spec #=> String
    #   resp.service.pipeline.template_major_version #=> String
    #   resp.service.pipeline.template_minor_version #=> String
    #   resp.service.pipeline.template_name #=> String
    #   resp.service.repository_connection_arn #=> String
    #   resp.service.repository_id #=> String
    #   resp.service.spec #=> String
    #   resp.service.status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_FAILED_CLEANUP_IN_PROGRESS", "CREATE_FAILED_CLEANUP_COMPLETE", "CREATE_FAILED_CLEANUP_FAILED", "CREATE_FAILED", "ACTIVE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_FAILED_CLEANUP_IN_PROGRESS", "UPDATE_FAILED_CLEANUP_COMPLETE", "UPDATE_FAILED_CLEANUP_FAILED", "UPDATE_FAILED", "UPDATE_COMPLETE_CLEANUP_FAILED"
    #   resp.service.status_message #=> String
    #   resp.service.template_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/DeleteService AWS API Documentation
    #
    # @overload delete_service(params = {})
    # @param [Hash] params ({})
    def delete_service(params = {}, options = {})
      req = build_request(:delete_service, params)
      req.send_request(options)
    end

    # If no other major or minor versions of the service template exist,
    # delete the service template.
    #
    # @option params [required, String] :name
    #   The name of the service template to delete.
    #
    # @return [Types::DeleteServiceTemplateOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteServiceTemplateOutput#service_template #service_template} => Types::ServiceTemplate
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_service_template({
    #     name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.service_template.arn #=> String
    #   resp.service_template.created_at #=> Time
    #   resp.service_template.description #=> String
    #   resp.service_template.display_name #=> String
    #   resp.service_template.encryption_key #=> String
    #   resp.service_template.last_modified_at #=> Time
    #   resp.service_template.name #=> String
    #   resp.service_template.pipeline_provisioning #=> String, one of "CUSTOMER_MANAGED"
    #   resp.service_template.recommended_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/DeleteServiceTemplate AWS API Documentation
    #
    # @overload delete_service_template(params = {})
    # @param [Hash] params ({})
    def delete_service_template(params = {}, options = {})
      req = build_request(:delete_service_template, params)
      req.send_request(options)
    end

    # If no other minor versions of a service template exist, delete a major
    # version of the service template if it's not the `Recommended`
    # version. Delete the `Recommended` version of the service template if
    # no other major versions or minor versions of the service template
    # exist. A major version of a service template is a version that
    # *isn't* backwards compatible.
    #
    # Delete a minor version of a service template if it's not the
    # `Recommended` version. Delete a `Recommended` minor version of the
    # service template if no other minor versions of the service template
    # exist. A minor version of a service template is a version that's
    # backwards compatible.
    #
    # @option params [required, String] :major_version
    #   The service template major version to delete.
    #
    # @option params [required, String] :minor_version
    #   The service template minor version to delete.
    #
    # @option params [required, String] :template_name
    #   The name of the service template.
    #
    # @return [Types::DeleteServiceTemplateVersionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteServiceTemplateVersionOutput#service_template_version #service_template_version} => Types::ServiceTemplateVersion
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_service_template_version({
    #     major_version: "TemplateVersionPart", # required
    #     minor_version: "TemplateVersionPart", # required
    #     template_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.service_template_version.arn #=> String
    #   resp.service_template_version.compatible_environment_templates #=> Array
    #   resp.service_template_version.compatible_environment_templates[0].major_version #=> String
    #   resp.service_template_version.compatible_environment_templates[0].template_name #=> String
    #   resp.service_template_version.created_at #=> Time
    #   resp.service_template_version.description #=> String
    #   resp.service_template_version.last_modified_at #=> Time
    #   resp.service_template_version.major_version #=> String
    #   resp.service_template_version.minor_version #=> String
    #   resp.service_template_version.recommended_minor_version #=> String
    #   resp.service_template_version.schema #=> String
    #   resp.service_template_version.status #=> String, one of "REGISTRATION_IN_PROGRESS", "REGISTRATION_FAILED", "DRAFT", "PUBLISHED"
    #   resp.service_template_version.status_message #=> String
    #   resp.service_template_version.template_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/DeleteServiceTemplateVersion AWS API Documentation
    #
    # @overload delete_service_template_version(params = {})
    # @param [Hash] params ({})
    def delete_service_template_version(params = {}, options = {})
      req = build_request(:delete_service_template_version, params)
      req.send_request(options)
    end

    # Get detail data for the AWS Proton pipeline service role.
    #
    # @return [Types::GetAccountSettingsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAccountSettingsOutput#account_settings #account_settings} => Types::AccountSettings
    #
    # @example Response structure
    #
    #   resp.account_settings.pipeline_service_role_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/GetAccountSettings AWS API Documentation
    #
    # @overload get_account_settings(params = {})
    # @param [Hash] params ({})
    def get_account_settings(params = {}, options = {})
      req = build_request(:get_account_settings, params)
      req.send_request(options)
    end

    # Get detail data for an environment.
    #
    # @option params [required, String] :name
    #   The name of the environment that you want to get the detail data for.
    #
    # @return [Types::GetEnvironmentOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEnvironmentOutput#environment #environment} => Types::Environment
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_environment({
    #     name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.environment.arn #=> String
    #   resp.environment.created_at #=> Time
    #   resp.environment.deployment_status #=> String, one of "IN_PROGRESS", "FAILED", "SUCCEEDED", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "CANCELLING", "CANCELLED"
    #   resp.environment.deployment_status_message #=> String
    #   resp.environment.description #=> String
    #   resp.environment.environment_account_connection_id #=> String
    #   resp.environment.environment_account_id #=> String
    #   resp.environment.last_deployment_attempted_at #=> Time
    #   resp.environment.last_deployment_succeeded_at #=> Time
    #   resp.environment.name #=> String
    #   resp.environment.proton_service_role_arn #=> String
    #   resp.environment.provisioning #=> String, one of "CUSTOMER_MANAGED"
    #   resp.environment.spec #=> String
    #   resp.environment.template_major_version #=> String
    #   resp.environment.template_minor_version #=> String
    #   resp.environment.template_name #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * environment_deployed
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/GetEnvironment AWS API Documentation
    #
    # @overload get_environment(params = {})
    # @param [Hash] params ({})
    def get_environment(params = {}, options = {})
      req = build_request(:get_environment, params)
      req.send_request(options)
    end

    # In an environment account, view the detail data for an environment
    # account connection.
    #
    # For more information, see [Environment account connections][1] in the
    # *AWS Proton Administrator guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/proton/latest/adminguide/ag-env-account-connections.html
    #
    # @option params [required, String] :id
    #   The ID of the environment account connection.
    #
    # @return [Types::GetEnvironmentAccountConnectionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEnvironmentAccountConnectionOutput#environment_account_connection #environment_account_connection} => Types::EnvironmentAccountConnection
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_environment_account_connection({
    #     id: "EnvironmentAccountConnectionId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.environment_account_connection.arn #=> String
    #   resp.environment_account_connection.environment_account_id #=> String
    #   resp.environment_account_connection.environment_name #=> String
    #   resp.environment_account_connection.id #=> String
    #   resp.environment_account_connection.last_modified_at #=> Time
    #   resp.environment_account_connection.management_account_id #=> String
    #   resp.environment_account_connection.requested_at #=> Time
    #   resp.environment_account_connection.role_arn #=> String
    #   resp.environment_account_connection.status #=> String, one of "PENDING", "CONNECTED", "REJECTED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/GetEnvironmentAccountConnection AWS API Documentation
    #
    # @overload get_environment_account_connection(params = {})
    # @param [Hash] params ({})
    def get_environment_account_connection(params = {}, options = {})
      req = build_request(:get_environment_account_connection, params)
      req.send_request(options)
    end

    # Get detail data for an environment template.
    #
    # @option params [required, String] :name
    #   The name of the environment template that you want to get the detail
    #   data for.
    #
    # @return [Types::GetEnvironmentTemplateOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEnvironmentTemplateOutput#environment_template #environment_template} => Types::EnvironmentTemplate
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_environment_template({
    #     name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.environment_template.arn #=> String
    #   resp.environment_template.created_at #=> Time
    #   resp.environment_template.description #=> String
    #   resp.environment_template.display_name #=> String
    #   resp.environment_template.encryption_key #=> String
    #   resp.environment_template.last_modified_at #=> Time
    #   resp.environment_template.name #=> String
    #   resp.environment_template.provisioning #=> String, one of "CUSTOMER_MANAGED"
    #   resp.environment_template.recommended_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/GetEnvironmentTemplate AWS API Documentation
    #
    # @overload get_environment_template(params = {})
    # @param [Hash] params ({})
    def get_environment_template(params = {}, options = {})
      req = build_request(:get_environment_template, params)
      req.send_request(options)
    end

    # View detail data for a major or minor version of an environment
    # template.
    #
    # @option params [required, String] :major_version
    #   To view environment template major version detail data, include
    #   `majorVersion`.
    #
    # @option params [required, String] :minor_version
    #   To view environment template minor version detail data, include
    #   `minorVersion`.
    #
    # @option params [required, String] :template_name
    #   The name of the environment template.
    #
    # @return [Types::GetEnvironmentTemplateVersionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEnvironmentTemplateVersionOutput#environment_template_version #environment_template_version} => Types::EnvironmentTemplateVersion
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_environment_template_version({
    #     major_version: "TemplateVersionPart", # required
    #     minor_version: "TemplateVersionPart", # required
    #     template_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.environment_template_version.arn #=> String
    #   resp.environment_template_version.created_at #=> Time
    #   resp.environment_template_version.description #=> String
    #   resp.environment_template_version.last_modified_at #=> Time
    #   resp.environment_template_version.major_version #=> String
    #   resp.environment_template_version.minor_version #=> String
    #   resp.environment_template_version.recommended_minor_version #=> String
    #   resp.environment_template_version.schema #=> String
    #   resp.environment_template_version.status #=> String, one of "REGISTRATION_IN_PROGRESS", "REGISTRATION_FAILED", "DRAFT", "PUBLISHED"
    #   resp.environment_template_version.status_message #=> String
    #   resp.environment_template_version.template_name #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * environment_template_version_registered
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/GetEnvironmentTemplateVersion AWS API Documentation
    #
    # @overload get_environment_template_version(params = {})
    # @param [Hash] params ({})
    def get_environment_template_version(params = {}, options = {})
      req = build_request(:get_environment_template_version, params)
      req.send_request(options)
    end

    # Get detail data for a service.
    #
    # @option params [required, String] :name
    #   The name of the service that you want to get the detail data for.
    #
    # @return [Types::GetServiceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetServiceOutput#service #service} => Types::Service
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_service({
    #     name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.service.arn #=> String
    #   resp.service.branch_name #=> String
    #   resp.service.created_at #=> Time
    #   resp.service.description #=> String
    #   resp.service.last_modified_at #=> Time
    #   resp.service.name #=> String
    #   resp.service.pipeline.arn #=> String
    #   resp.service.pipeline.created_at #=> Time
    #   resp.service.pipeline.deployment_status #=> String, one of "IN_PROGRESS", "FAILED", "SUCCEEDED", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "CANCELLING", "CANCELLED"
    #   resp.service.pipeline.deployment_status_message #=> String
    #   resp.service.pipeline.last_deployment_attempted_at #=> Time
    #   resp.service.pipeline.last_deployment_succeeded_at #=> Time
    #   resp.service.pipeline.spec #=> String
    #   resp.service.pipeline.template_major_version #=> String
    #   resp.service.pipeline.template_minor_version #=> String
    #   resp.service.pipeline.template_name #=> String
    #   resp.service.repository_connection_arn #=> String
    #   resp.service.repository_id #=> String
    #   resp.service.spec #=> String
    #   resp.service.status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_FAILED_CLEANUP_IN_PROGRESS", "CREATE_FAILED_CLEANUP_COMPLETE", "CREATE_FAILED_CLEANUP_FAILED", "CREATE_FAILED", "ACTIVE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_FAILED_CLEANUP_IN_PROGRESS", "UPDATE_FAILED_CLEANUP_COMPLETE", "UPDATE_FAILED_CLEANUP_FAILED", "UPDATE_FAILED", "UPDATE_COMPLETE_CLEANUP_FAILED"
    #   resp.service.status_message #=> String
    #   resp.service.template_name #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * service_created
    #   * service_deleted
    #   * service_pipeline_deployed
    #   * service_updated
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/GetService AWS API Documentation
    #
    # @overload get_service(params = {})
    # @param [Hash] params ({})
    def get_service(params = {}, options = {})
      req = build_request(:get_service, params)
      req.send_request(options)
    end

    # Get detail data for a service instance. A service instance is an
    # instantiation of service template, which is running in a specific
    # environment.
    #
    # @option params [required, String] :name
    #   The name of a service instance that you want to get the detail data
    #   for.
    #
    # @option params [required, String] :service_name
    #   The name of the service that the service instance belongs to.
    #
    # @return [Types::GetServiceInstanceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetServiceInstanceOutput#service_instance #service_instance} => Types::ServiceInstance
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_service_instance({
    #     name: "ResourceName", # required
    #     service_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.service_instance.arn #=> String
    #   resp.service_instance.created_at #=> Time
    #   resp.service_instance.deployment_status #=> String, one of "IN_PROGRESS", "FAILED", "SUCCEEDED", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "CANCELLING", "CANCELLED"
    #   resp.service_instance.deployment_status_message #=> String
    #   resp.service_instance.environment_name #=> String
    #   resp.service_instance.last_deployment_attempted_at #=> Time
    #   resp.service_instance.last_deployment_succeeded_at #=> Time
    #   resp.service_instance.name #=> String
    #   resp.service_instance.service_name #=> String
    #   resp.service_instance.spec #=> String
    #   resp.service_instance.template_major_version #=> String
    #   resp.service_instance.template_minor_version #=> String
    #   resp.service_instance.template_name #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * service_instance_deployed
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/GetServiceInstance AWS API Documentation
    #
    # @overload get_service_instance(params = {})
    # @param [Hash] params ({})
    def get_service_instance(params = {}, options = {})
      req = build_request(:get_service_instance, params)
      req.send_request(options)
    end

    # Get detail data for a service template.
    #
    # @option params [required, String] :name
    #   The name of the service template that you want to get detail data for.
    #
    # @return [Types::GetServiceTemplateOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetServiceTemplateOutput#service_template #service_template} => Types::ServiceTemplate
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_service_template({
    #     name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.service_template.arn #=> String
    #   resp.service_template.created_at #=> Time
    #   resp.service_template.description #=> String
    #   resp.service_template.display_name #=> String
    #   resp.service_template.encryption_key #=> String
    #   resp.service_template.last_modified_at #=> Time
    #   resp.service_template.name #=> String
    #   resp.service_template.pipeline_provisioning #=> String, one of "CUSTOMER_MANAGED"
    #   resp.service_template.recommended_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/GetServiceTemplate AWS API Documentation
    #
    # @overload get_service_template(params = {})
    # @param [Hash] params ({})
    def get_service_template(params = {}, options = {})
      req = build_request(:get_service_template, params)
      req.send_request(options)
    end

    # View detail data for a major or minor version of a service template.
    #
    # @option params [required, String] :major_version
    #   To view service template major version detail data, include
    #   `majorVersion`.
    #
    # @option params [required, String] :minor_version
    #   To view service template minor version detail data, include
    #   `minorVersion`.
    #
    # @option params [required, String] :template_name
    #   The name of the service template.
    #
    # @return [Types::GetServiceTemplateVersionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetServiceTemplateVersionOutput#service_template_version #service_template_version} => Types::ServiceTemplateVersion
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_service_template_version({
    #     major_version: "TemplateVersionPart", # required
    #     minor_version: "TemplateVersionPart", # required
    #     template_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.service_template_version.arn #=> String
    #   resp.service_template_version.compatible_environment_templates #=> Array
    #   resp.service_template_version.compatible_environment_templates[0].major_version #=> String
    #   resp.service_template_version.compatible_environment_templates[0].template_name #=> String
    #   resp.service_template_version.created_at #=> Time
    #   resp.service_template_version.description #=> String
    #   resp.service_template_version.last_modified_at #=> Time
    #   resp.service_template_version.major_version #=> String
    #   resp.service_template_version.minor_version #=> String
    #   resp.service_template_version.recommended_minor_version #=> String
    #   resp.service_template_version.schema #=> String
    #   resp.service_template_version.status #=> String, one of "REGISTRATION_IN_PROGRESS", "REGISTRATION_FAILED", "DRAFT", "PUBLISHED"
    #   resp.service_template_version.status_message #=> String
    #   resp.service_template_version.template_name #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * service_template_version_registered
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/GetServiceTemplateVersion AWS API Documentation
    #
    # @overload get_service_template_version(params = {})
    # @param [Hash] params ({})
    def get_service_template_version(params = {}, options = {})
      req = build_request(:get_service_template_version, params)
      req.send_request(options)
    end

    # View a list of environment account connections.
    #
    # For more information, see [Environment account connections][1] in the
    # *AWS Proton Administrator guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/proton/latest/adminguide/ag-env-account-connections.html
    #
    # @option params [String] :environment_name
    #   The environment name that's associated with each listed environment
    #   account connection.
    #
    # @option params [Integer] :max_results
    #   The maximum number of environment account connections to list.
    #
    # @option params [String] :next_token
    #   A token to indicate the location of the next environment account
    #   connection in the array of environment account connections, after the
    #   list of environment account connections that was previously requested.
    #
    # @option params [required, String] :requested_by
    #   The type of account making the `ListEnvironmentAccountConnections`
    #   request.
    #
    # @option params [Array<String>] :statuses
    #   The status details for each listed environment account connection.
    #
    # @return [Types::ListEnvironmentAccountConnectionsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEnvironmentAccountConnectionsOutput#environment_account_connections #environment_account_connections} => Array&lt;Types::EnvironmentAccountConnectionSummary&gt;
    #   * {Types::ListEnvironmentAccountConnectionsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_environment_account_connections({
    #     environment_name: "ResourceName",
    #     max_results: 1,
    #     next_token: "NextToken",
    #     requested_by: "MANAGEMENT_ACCOUNT", # required, accepts MANAGEMENT_ACCOUNT, ENVIRONMENT_ACCOUNT
    #     statuses: ["PENDING"], # accepts PENDING, CONNECTED, REJECTED
    #   })
    #
    # @example Response structure
    #
    #   resp.environment_account_connections #=> Array
    #   resp.environment_account_connections[0].arn #=> String
    #   resp.environment_account_connections[0].environment_account_id #=> String
    #   resp.environment_account_connections[0].environment_name #=> String
    #   resp.environment_account_connections[0].id #=> String
    #   resp.environment_account_connections[0].last_modified_at #=> Time
    #   resp.environment_account_connections[0].management_account_id #=> String
    #   resp.environment_account_connections[0].requested_at #=> Time
    #   resp.environment_account_connections[0].role_arn #=> String
    #   resp.environment_account_connections[0].status #=> String, one of "PENDING", "CONNECTED", "REJECTED"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/ListEnvironmentAccountConnections AWS API Documentation
    #
    # @overload list_environment_account_connections(params = {})
    # @param [Hash] params ({})
    def list_environment_account_connections(params = {}, options = {})
      req = build_request(:list_environment_account_connections, params)
      req.send_request(options)
    end

    # List major or minor versions of an environment template with detail
    # data.
    #
    # @option params [String] :major_version
    #   To view a list of minor of versions under a major version of an
    #   environment template, include `majorVersion`.
    #
    #   To view a list of major versions of an environment template, *exclude*
    #   `majorVersion`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of major or minor versions of an environment
    #   template to list.
    #
    # @option params [String] :next_token
    #   A token to indicate the location of the next major or minor version in
    #   the array of major or minor versions of an environment template, after
    #   the list of major or minor versions that was previously requested.
    #
    # @option params [required, String] :template_name
    #   The name of the environment template.
    #
    # @return [Types::ListEnvironmentTemplateVersionsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEnvironmentTemplateVersionsOutput#next_token #next_token} => String
    #   * {Types::ListEnvironmentTemplateVersionsOutput#template_versions #template_versions} => Array&lt;Types::EnvironmentTemplateVersionSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_environment_template_versions({
    #     major_version: "TemplateVersionPart",
    #     max_results: 1,
    #     next_token: "NextToken",
    #     template_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.template_versions #=> Array
    #   resp.template_versions[0].arn #=> String
    #   resp.template_versions[0].created_at #=> Time
    #   resp.template_versions[0].description #=> String
    #   resp.template_versions[0].last_modified_at #=> Time
    #   resp.template_versions[0].major_version #=> String
    #   resp.template_versions[0].minor_version #=> String
    #   resp.template_versions[0].recommended_minor_version #=> String
    #   resp.template_versions[0].status #=> String, one of "REGISTRATION_IN_PROGRESS", "REGISTRATION_FAILED", "DRAFT", "PUBLISHED"
    #   resp.template_versions[0].status_message #=> String
    #   resp.template_versions[0].template_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/ListEnvironmentTemplateVersions AWS API Documentation
    #
    # @overload list_environment_template_versions(params = {})
    # @param [Hash] params ({})
    def list_environment_template_versions(params = {}, options = {})
      req = build_request(:list_environment_template_versions, params)
      req.send_request(options)
    end

    # List environment templates.
    #
    # @option params [Integer] :max_results
    #   The maximum number of environment templates to list.
    #
    # @option params [String] :next_token
    #   A token to indicate the location of the next environment template in
    #   the array of environment templates, after the list of environment
    #   templates that was previously requested.
    #
    # @return [Types::ListEnvironmentTemplatesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEnvironmentTemplatesOutput#next_token #next_token} => String
    #   * {Types::ListEnvironmentTemplatesOutput#templates #templates} => Array&lt;Types::EnvironmentTemplateSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_environment_templates({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.templates #=> Array
    #   resp.templates[0].arn #=> String
    #   resp.templates[0].created_at #=> Time
    #   resp.templates[0].description #=> String
    #   resp.templates[0].display_name #=> String
    #   resp.templates[0].last_modified_at #=> Time
    #   resp.templates[0].name #=> String
    #   resp.templates[0].provisioning #=> String, one of "CUSTOMER_MANAGED"
    #   resp.templates[0].recommended_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/ListEnvironmentTemplates AWS API Documentation
    #
    # @overload list_environment_templates(params = {})
    # @param [Hash] params ({})
    def list_environment_templates(params = {}, options = {})
      req = build_request(:list_environment_templates, params)
      req.send_request(options)
    end

    # List environments with detail data summaries.
    #
    # @option params [Array<Types::EnvironmentTemplateFilter>] :environment_templates
    #   An array of the versions of the environment template.
    #
    # @option params [Integer] :max_results
    #   The maximum number of environments to list.
    #
    # @option params [String] :next_token
    #   A token to indicate the location of the next environment in the array
    #   of environments, after the list of environments that was previously
    #   requested.
    #
    # @return [Types::ListEnvironmentsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEnvironmentsOutput#environments #environments} => Array&lt;Types::EnvironmentSummary&gt;
    #   * {Types::ListEnvironmentsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_environments({
    #     environment_templates: [
    #       {
    #         major_version: "TemplateVersionPart", # required
    #         template_name: "ResourceName", # required
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.environments #=> Array
    #   resp.environments[0].arn #=> String
    #   resp.environments[0].created_at #=> Time
    #   resp.environments[0].deployment_status #=> String, one of "IN_PROGRESS", "FAILED", "SUCCEEDED", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "CANCELLING", "CANCELLED"
    #   resp.environments[0].deployment_status_message #=> String
    #   resp.environments[0].description #=> String
    #   resp.environments[0].environment_account_connection_id #=> String
    #   resp.environments[0].environment_account_id #=> String
    #   resp.environments[0].last_deployment_attempted_at #=> Time
    #   resp.environments[0].last_deployment_succeeded_at #=> Time
    #   resp.environments[0].name #=> String
    #   resp.environments[0].proton_service_role_arn #=> String
    #   resp.environments[0].provisioning #=> String, one of "CUSTOMER_MANAGED"
    #   resp.environments[0].template_major_version #=> String
    #   resp.environments[0].template_minor_version #=> String
    #   resp.environments[0].template_name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/ListEnvironments AWS API Documentation
    #
    # @overload list_environments(params = {})
    # @param [Hash] params ({})
    def list_environments(params = {}, options = {})
      req = build_request(:list_environments, params)
      req.send_request(options)
    end

    # List service instances with summaries of detail data.
    #
    # @option params [Integer] :max_results
    #   The maximum number of service instances to list.
    #
    # @option params [String] :next_token
    #   A token to indicate the location of the next service in the array of
    #   service instances, after the list of service instances that was
    #   previously requested.
    #
    # @option params [String] :service_name
    #   The name of the service that the service instance belongs to.
    #
    # @return [Types::ListServiceInstancesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListServiceInstancesOutput#next_token #next_token} => String
    #   * {Types::ListServiceInstancesOutput#service_instances #service_instances} => Array&lt;Types::ServiceInstanceSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_service_instances({
    #     max_results: 1,
    #     next_token: "NextToken",
    #     service_name: "ResourceName",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.service_instances #=> Array
    #   resp.service_instances[0].arn #=> String
    #   resp.service_instances[0].created_at #=> Time
    #   resp.service_instances[0].deployment_status #=> String, one of "IN_PROGRESS", "FAILED", "SUCCEEDED", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "CANCELLING", "CANCELLED"
    #   resp.service_instances[0].deployment_status_message #=> String
    #   resp.service_instances[0].environment_name #=> String
    #   resp.service_instances[0].last_deployment_attempted_at #=> Time
    #   resp.service_instances[0].last_deployment_succeeded_at #=> Time
    #   resp.service_instances[0].name #=> String
    #   resp.service_instances[0].service_name #=> String
    #   resp.service_instances[0].template_major_version #=> String
    #   resp.service_instances[0].template_minor_version #=> String
    #   resp.service_instances[0].template_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/ListServiceInstances AWS API Documentation
    #
    # @overload list_service_instances(params = {})
    # @param [Hash] params ({})
    def list_service_instances(params = {}, options = {})
      req = build_request(:list_service_instances, params)
      req.send_request(options)
    end

    # List major or minor versions of a service template with detail data.
    #
    # @option params [String] :major_version
    #   To view a list of minor of versions under a major version of a service
    #   template, include `majorVersion`.
    #
    #   To view a list of major versions of a service template, *exclude*
    #   `majorVersion`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of major or minor versions of a service template to
    #   list.
    #
    # @option params [String] :next_token
    #   A token to indicate the location of the next major or minor version in
    #   the array of major or minor versions of a service template, after the
    #   list of major or minor versions that was previously requested.
    #
    # @option params [required, String] :template_name
    #   The name of the service template.
    #
    # @return [Types::ListServiceTemplateVersionsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListServiceTemplateVersionsOutput#next_token #next_token} => String
    #   * {Types::ListServiceTemplateVersionsOutput#template_versions #template_versions} => Array&lt;Types::ServiceTemplateVersionSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_service_template_versions({
    #     major_version: "TemplateVersionPart",
    #     max_results: 1,
    #     next_token: "NextToken",
    #     template_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.template_versions #=> Array
    #   resp.template_versions[0].arn #=> String
    #   resp.template_versions[0].created_at #=> Time
    #   resp.template_versions[0].description #=> String
    #   resp.template_versions[0].last_modified_at #=> Time
    #   resp.template_versions[0].major_version #=> String
    #   resp.template_versions[0].minor_version #=> String
    #   resp.template_versions[0].recommended_minor_version #=> String
    #   resp.template_versions[0].status #=> String, one of "REGISTRATION_IN_PROGRESS", "REGISTRATION_FAILED", "DRAFT", "PUBLISHED"
    #   resp.template_versions[0].status_message #=> String
    #   resp.template_versions[0].template_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/ListServiceTemplateVersions AWS API Documentation
    #
    # @overload list_service_template_versions(params = {})
    # @param [Hash] params ({})
    def list_service_template_versions(params = {}, options = {})
      req = build_request(:list_service_template_versions, params)
      req.send_request(options)
    end

    # List service templates with detail data.
    #
    # @option params [Integer] :max_results
    #   The maximum number of service templates to list.
    #
    # @option params [String] :next_token
    #   A token to indicate the location of the next service template in the
    #   array of service templates, after the list of service templates
    #   previously requested.
    #
    # @return [Types::ListServiceTemplatesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListServiceTemplatesOutput#next_token #next_token} => String
    #   * {Types::ListServiceTemplatesOutput#templates #templates} => Array&lt;Types::ServiceTemplateSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_service_templates({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.templates #=> Array
    #   resp.templates[0].arn #=> String
    #   resp.templates[0].created_at #=> Time
    #   resp.templates[0].description #=> String
    #   resp.templates[0].display_name #=> String
    #   resp.templates[0].last_modified_at #=> Time
    #   resp.templates[0].name #=> String
    #   resp.templates[0].pipeline_provisioning #=> String, one of "CUSTOMER_MANAGED"
    #   resp.templates[0].recommended_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/ListServiceTemplates AWS API Documentation
    #
    # @overload list_service_templates(params = {})
    # @param [Hash] params ({})
    def list_service_templates(params = {}, options = {})
      req = build_request(:list_service_templates, params)
      req.send_request(options)
    end

    # List services with summaries of detail data.
    #
    # @option params [Integer] :max_results
    #   The maximum number of services to list.
    #
    # @option params [String] :next_token
    #   A token to indicate the location of the next service in the array of
    #   services, after the list of services that was previously requested.
    #
    # @return [Types::ListServicesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListServicesOutput#next_token #next_token} => String
    #   * {Types::ListServicesOutput#services #services} => Array&lt;Types::ServiceSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_services({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.services #=> Array
    #   resp.services[0].arn #=> String
    #   resp.services[0].created_at #=> Time
    #   resp.services[0].description #=> String
    #   resp.services[0].last_modified_at #=> Time
    #   resp.services[0].name #=> String
    #   resp.services[0].status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_FAILED_CLEANUP_IN_PROGRESS", "CREATE_FAILED_CLEANUP_COMPLETE", "CREATE_FAILED_CLEANUP_FAILED", "CREATE_FAILED", "ACTIVE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_FAILED_CLEANUP_IN_PROGRESS", "UPDATE_FAILED_CLEANUP_COMPLETE", "UPDATE_FAILED_CLEANUP_FAILED", "UPDATE_FAILED", "UPDATE_COMPLETE_CLEANUP_FAILED"
    #   resp.services[0].status_message #=> String
    #   resp.services[0].template_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/ListServices AWS API Documentation
    #
    # @overload list_services(params = {})
    # @param [Hash] params ({})
    def list_services(params = {}, options = {})
      req = build_request(:list_services, params)
      req.send_request(options)
    end

    # List tags for a resource. For more information, see *AWS Proton
    # resources and tagging* in the [AWS Proton Administrator Guide][1] or
    # [AWS Proton User Guide][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/proton/latest/adminguide/resources.html
    # [2]: https://docs.aws.amazon.com/proton/latest/userguide/resources.html
    #
    # @option params [Integer] :max_results
    #   The maximum number of tags to list.
    #
    # @option params [String] :next_token
    #   A token to indicate the location of the next resource tag in the array
    #   of resource tags, after the list of resource tags that was previously
    #   requested.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource for the listed tags.
    #
    # @return [Types::ListTagsForResourceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceOutput#next_token #next_token} => String
    #   * {Types::ListTagsForResourceOutput#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     max_results: 1,
    #     next_token: "String",
    #     resource_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # In a management account, reject an environment account connection from
    # another environment account.
    #
    # After you reject an environment account connection request, you
    # *won’t* be able to accept or use the rejected environment account
    # connection.
    #
    # You *can’t* reject an environment account connection that is connected
    # to an environment.
    #
    # For more information, see [Environment account connections][1] in the
    # *AWS Proton Administrator guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/proton/latest/adminguide/ag-env-account-connections.html
    #
    # @option params [required, String] :id
    #   The ID of the environment account connection to reject.
    #
    # @return [Types::RejectEnvironmentAccountConnectionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RejectEnvironmentAccountConnectionOutput#environment_account_connection #environment_account_connection} => Types::EnvironmentAccountConnection
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reject_environment_account_connection({
    #     id: "EnvironmentAccountConnectionId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.environment_account_connection.arn #=> String
    #   resp.environment_account_connection.environment_account_id #=> String
    #   resp.environment_account_connection.environment_name #=> String
    #   resp.environment_account_connection.id #=> String
    #   resp.environment_account_connection.last_modified_at #=> Time
    #   resp.environment_account_connection.management_account_id #=> String
    #   resp.environment_account_connection.requested_at #=> Time
    #   resp.environment_account_connection.role_arn #=> String
    #   resp.environment_account_connection.status #=> String, one of "PENDING", "CONNECTED", "REJECTED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/RejectEnvironmentAccountConnection AWS API Documentation
    #
    # @overload reject_environment_account_connection(params = {})
    # @param [Hash] params ({})
    def reject_environment_account_connection(params = {}, options = {})
      req = build_request(:reject_environment_account_connection, params)
      req.send_request(options)
    end

    # Tag a resource. For more information, see *AWS Proton resources and
    # tagging* in the [AWS Proton Administrator Guide][1] or [AWS Proton
    # User Guide][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/proton/latest/adminguide/resources.html
    # [2]: https://docs.aws.amazon.com/proton/latest/userguide/resources.html
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource that the resource tag
    #   is applied to.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   An array of resource tags to apply to a resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "Arn", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Remove a tag from a resource. For more information, see *AWS Proton
    # resources and tagging* in the [AWS Proton Administrator Guide][1] or
    # [AWS Proton User Guide][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/proton/latest/adminguide/resources.html
    # [2]: https://docs.aws.amazon.com/proton/latest/userguide/resources.html
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource that the tag is to be
    #   removed from.
    #
    # @option params [required, Array<String>] :tag_keys
    #   An array of tag keys indicating the resource tags to be removed from
    #   the resource.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Update the AWS Proton pipeline service account settings.
    #
    # @option params [String] :pipeline_service_role_arn
    #   The Amazon Resource Name (ARN) of the AWS Proton pipeline service
    #   role.
    #
    # @return [Types::UpdateAccountSettingsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAccountSettingsOutput#account_settings #account_settings} => Types::AccountSettings
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_account_settings({
    #     pipeline_service_role_arn: "Arn",
    #   })
    #
    # @example Response structure
    #
    #   resp.account_settings.pipeline_service_role_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/UpdateAccountSettings AWS API Documentation
    #
    # @overload update_account_settings(params = {})
    # @param [Hash] params ({})
    def update_account_settings(params = {}, options = {})
      req = build_request(:update_account_settings, params)
      req.send_request(options)
    end

    # Update an environment.
    #
    # If the environment is associated with an environment account
    # connection, *don't* update or include the `protonServiceRoleArn`
    # parameter to update or connect to an environment account connection.
    #
    # You can only update to a new environment account connection if it was
    # created in the same environment account that the current environment
    # account connection was created in and is associated with the current
    # environment.
    #
    # If the environment *isn't* associated with an environment account
    # connection, *don't* update or include the
    # `environmentAccountConnectionId` parameter to update or connect to an
    # environment account connection.
    #
    # You can update either the `environmentAccountConnectionId` or
    # `protonServiceRoleArn` parameter and value. You can’t update both.
    #
    # There are four modes for updating an environment as described in the
    # following. The `deploymentType` field defines the mode.
    #
    #
    #
    # : `NONE`
    #
    #   In this mode, a deployment *doesn't* occur. Only the requested
    #   metadata parameters are updated.
    #
    #
    #
    # : `CURRENT_VERSION`
    #
    #   In this mode, the environment is deployed and updated with the new
    #   spec that you provide. Only requested parameters are updated.
    #   *Don’t* include minor or major version parameters when you use this
    #   `deployment-type`.
    #
    #
    #
    # : `MINOR_VERSION`
    #
    #   In this mode, the environment is deployed and updated with the
    #   published, recommended (latest) minor version of the current major
    #   version in use, by default. You can also specify a different minor
    #   version of the current major version in use.
    #
    #
    #
    # : `MAJOR_VERSION`
    #
    #   In this mode, the environment is deployed and updated with the
    #   published, recommended (latest) major and minor version of the
    #   current template, by default. You can also specify a different major
    #   version that's higher than the major version in use and a minor
    #   version (optional).
    #
    # @option params [required, String] :deployment_type
    #   There are four modes for updating an environment as described in the
    #   following. The `deploymentType` field defines the mode.
    #
    #
    #
    #   : `NONE`
    #
    #     In this mode, a deployment *doesn't* occur. Only the requested
    #     metadata parameters are updated.
    #
    #
    #
    #   : `CURRENT_VERSION`
    #
    #     In this mode, the environment is deployed and updated with the new
    #     spec that you provide. Only requested parameters are updated.
    #     *Don’t* include minor or major version parameters when you use this
    #     `deployment-type`.
    #
    #
    #
    #   : `MINOR_VERSION`
    #
    #     In this mode, the environment is deployed and updated with the
    #     published, recommended (latest) minor version of the current major
    #     version in use, by default. You can also specify a different minor
    #     version of the current major version in use.
    #
    #
    #
    #   : `MAJOR_VERSION`
    #
    #     In this mode, the environment is deployed and updated with the
    #     published, recommended (latest) major and minor version of the
    #     current template, by default. You can also specify a different major
    #     version that is higher than the major version in use and a minor
    #     version (optional).
    #
    # @option params [String] :description
    #   A description of the environment update.
    #
    # @option params [String] :environment_account_connection_id
    #   The ID of the environment account connection.
    #
    #   You can only update to a new environment account connection if it was
    #   created in the same environment account that the current environment
    #   account connection was created in and is associated with the current
    #   environment.
    #
    # @option params [required, String] :name
    #   The name of the environment to update.
    #
    # @option params [String] :proton_service_role_arn
    #   The Amazon Resource Name (ARN) of the AWS Proton service role that
    #   allows AWS Proton to make API calls to other services your behalf.
    #
    # @option params [String] :spec
    #   The formatted specification that defines the update.
    #
    # @option params [String] :template_major_version
    #   The ID of the major version of the environment to update.
    #
    # @option params [String] :template_minor_version
    #   The ID of the minor version of the environment to update.
    #
    # @return [Types::UpdateEnvironmentOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateEnvironmentOutput#environment #environment} => Types::Environment
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_environment({
    #     deployment_type: "NONE", # required, accepts NONE, CURRENT_VERSION, MINOR_VERSION, MAJOR_VERSION
    #     description: "Description",
    #     environment_account_connection_id: "EnvironmentAccountConnectionId",
    #     name: "ResourceName", # required
    #     proton_service_role_arn: "Arn",
    #     spec: "SpecContents",
    #     template_major_version: "TemplateVersionPart",
    #     template_minor_version: "TemplateVersionPart",
    #   })
    #
    # @example Response structure
    #
    #   resp.environment.arn #=> String
    #   resp.environment.created_at #=> Time
    #   resp.environment.deployment_status #=> String, one of "IN_PROGRESS", "FAILED", "SUCCEEDED", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "CANCELLING", "CANCELLED"
    #   resp.environment.deployment_status_message #=> String
    #   resp.environment.description #=> String
    #   resp.environment.environment_account_connection_id #=> String
    #   resp.environment.environment_account_id #=> String
    #   resp.environment.last_deployment_attempted_at #=> Time
    #   resp.environment.last_deployment_succeeded_at #=> Time
    #   resp.environment.name #=> String
    #   resp.environment.proton_service_role_arn #=> String
    #   resp.environment.provisioning #=> String, one of "CUSTOMER_MANAGED"
    #   resp.environment.spec #=> String
    #   resp.environment.template_major_version #=> String
    #   resp.environment.template_minor_version #=> String
    #   resp.environment.template_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/UpdateEnvironment AWS API Documentation
    #
    # @overload update_environment(params = {})
    # @param [Hash] params ({})
    def update_environment(params = {}, options = {})
      req = build_request(:update_environment, params)
      req.send_request(options)
    end

    # In an environment account, update an environment account connection to
    # use a new IAM role.
    #
    # For more information, see [Environment account connections][1] in the
    # *AWS Proton Administrator guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/proton/latest/adminguide/ag-env-account-connections.html
    #
    # @option params [required, String] :id
    #   The ID of the environment account connection to update.
    #
    # @option params [required, String] :role_arn
    #   The Amazon Resource Name (ARN) of the IAM service role that is
    #   associated with the environment account connection to update.
    #
    # @return [Types::UpdateEnvironmentAccountConnectionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateEnvironmentAccountConnectionOutput#environment_account_connection #environment_account_connection} => Types::EnvironmentAccountConnection
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_environment_account_connection({
    #     id: "EnvironmentAccountConnectionId", # required
    #     role_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.environment_account_connection.arn #=> String
    #   resp.environment_account_connection.environment_account_id #=> String
    #   resp.environment_account_connection.environment_name #=> String
    #   resp.environment_account_connection.id #=> String
    #   resp.environment_account_connection.last_modified_at #=> Time
    #   resp.environment_account_connection.management_account_id #=> String
    #   resp.environment_account_connection.requested_at #=> Time
    #   resp.environment_account_connection.role_arn #=> String
    #   resp.environment_account_connection.status #=> String, one of "PENDING", "CONNECTED", "REJECTED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/UpdateEnvironmentAccountConnection AWS API Documentation
    #
    # @overload update_environment_account_connection(params = {})
    # @param [Hash] params ({})
    def update_environment_account_connection(params = {}, options = {})
      req = build_request(:update_environment_account_connection, params)
      req.send_request(options)
    end

    # Update an environment template.
    #
    # @option params [String] :description
    #   A description of the environment template update.
    #
    # @option params [String] :display_name
    #   The name of the environment template to update as displayed in the
    #   developer interface.
    #
    # @option params [required, String] :name
    #   The name of the environment template to update.
    #
    # @return [Types::UpdateEnvironmentTemplateOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateEnvironmentTemplateOutput#environment_template #environment_template} => Types::EnvironmentTemplate
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_environment_template({
    #     description: "Description",
    #     display_name: "DisplayName",
    #     name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.environment_template.arn #=> String
    #   resp.environment_template.created_at #=> Time
    #   resp.environment_template.description #=> String
    #   resp.environment_template.display_name #=> String
    #   resp.environment_template.encryption_key #=> String
    #   resp.environment_template.last_modified_at #=> Time
    #   resp.environment_template.name #=> String
    #   resp.environment_template.provisioning #=> String, one of "CUSTOMER_MANAGED"
    #   resp.environment_template.recommended_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/UpdateEnvironmentTemplate AWS API Documentation
    #
    # @overload update_environment_template(params = {})
    # @param [Hash] params ({})
    def update_environment_template(params = {}, options = {})
      req = build_request(:update_environment_template, params)
      req.send_request(options)
    end

    # Update a major or minor version of an environment template.
    #
    # @option params [String] :description
    #   A description of environment template version to update.
    #
    # @option params [required, String] :major_version
    #   To update a major version of an environment template, include
    #   `majorVersion`.
    #
    # @option params [required, String] :minor_version
    #   To update a minor version of an environment template, include
    #   `minorVersion`.
    #
    # @option params [String] :status
    #   The status of the environment template minor version to update.
    #
    # @option params [required, String] :template_name
    #   The name of the environment template.
    #
    # @return [Types::UpdateEnvironmentTemplateVersionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateEnvironmentTemplateVersionOutput#environment_template_version #environment_template_version} => Types::EnvironmentTemplateVersion
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_environment_template_version({
    #     description: "Description",
    #     major_version: "TemplateVersionPart", # required
    #     minor_version: "TemplateVersionPart", # required
    #     status: "REGISTRATION_IN_PROGRESS", # accepts REGISTRATION_IN_PROGRESS, REGISTRATION_FAILED, DRAFT, PUBLISHED
    #     template_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.environment_template_version.arn #=> String
    #   resp.environment_template_version.created_at #=> Time
    #   resp.environment_template_version.description #=> String
    #   resp.environment_template_version.last_modified_at #=> Time
    #   resp.environment_template_version.major_version #=> String
    #   resp.environment_template_version.minor_version #=> String
    #   resp.environment_template_version.recommended_minor_version #=> String
    #   resp.environment_template_version.schema #=> String
    #   resp.environment_template_version.status #=> String, one of "REGISTRATION_IN_PROGRESS", "REGISTRATION_FAILED", "DRAFT", "PUBLISHED"
    #   resp.environment_template_version.status_message #=> String
    #   resp.environment_template_version.template_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/UpdateEnvironmentTemplateVersion AWS API Documentation
    #
    # @overload update_environment_template_version(params = {})
    # @param [Hash] params ({})
    def update_environment_template_version(params = {}, options = {})
      req = build_request(:update_environment_template_version, params)
      req.send_request(options)
    end

    # Edit a service description or use a spec to add and delete service
    # instances.
    #
    # <note markdown="1"> Existing service instances and the service pipeline *can't* be edited
    # using this API. They can only be deleted.
    #
    #  </note>
    #
    # Use the `description` parameter to modify the description.
    #
    # Edit the `spec` parameter to add or delete instances.
    #
    # @option params [String] :description
    #   The edited service description.
    #
    # @option params [required, String] :name
    #   The name of the service to edit.
    #
    # @option params [String] :spec
    #   Lists the service instances to add and the existing service instances
    #   to remain. Omit the existing service instances to delete from the
    #   list. *Don't* include edits to the existing service instances or
    #   pipeline. For more information, see *Edit a service* in the [AWS
    #   Proton Administrator Guide][1] or the [AWS Proton User Guide][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/proton/latest/adminguide/ag-svc-update.html
    #   [2]: https://docs.aws.amazon.com/proton/latest/userguide/ug-svc-update.html
    #
    # @return [Types::UpdateServiceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateServiceOutput#service #service} => Types::Service
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_service({
    #     description: "Description",
    #     name: "ResourceName", # required
    #     spec: "SpecContents",
    #   })
    #
    # @example Response structure
    #
    #   resp.service.arn #=> String
    #   resp.service.branch_name #=> String
    #   resp.service.created_at #=> Time
    #   resp.service.description #=> String
    #   resp.service.last_modified_at #=> Time
    #   resp.service.name #=> String
    #   resp.service.pipeline.arn #=> String
    #   resp.service.pipeline.created_at #=> Time
    #   resp.service.pipeline.deployment_status #=> String, one of "IN_PROGRESS", "FAILED", "SUCCEEDED", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "CANCELLING", "CANCELLED"
    #   resp.service.pipeline.deployment_status_message #=> String
    #   resp.service.pipeline.last_deployment_attempted_at #=> Time
    #   resp.service.pipeline.last_deployment_succeeded_at #=> Time
    #   resp.service.pipeline.spec #=> String
    #   resp.service.pipeline.template_major_version #=> String
    #   resp.service.pipeline.template_minor_version #=> String
    #   resp.service.pipeline.template_name #=> String
    #   resp.service.repository_connection_arn #=> String
    #   resp.service.repository_id #=> String
    #   resp.service.spec #=> String
    #   resp.service.status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_FAILED_CLEANUP_IN_PROGRESS", "CREATE_FAILED_CLEANUP_COMPLETE", "CREATE_FAILED_CLEANUP_FAILED", "CREATE_FAILED", "ACTIVE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_FAILED_CLEANUP_IN_PROGRESS", "UPDATE_FAILED_CLEANUP_COMPLETE", "UPDATE_FAILED_CLEANUP_FAILED", "UPDATE_FAILED", "UPDATE_COMPLETE_CLEANUP_FAILED"
    #   resp.service.status_message #=> String
    #   resp.service.template_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/UpdateService AWS API Documentation
    #
    # @overload update_service(params = {})
    # @param [Hash] params ({})
    def update_service(params = {}, options = {})
      req = build_request(:update_service, params)
      req.send_request(options)
    end

    # Update a service instance.
    #
    # There are four modes for updating a service instance as described in
    # the following. The `deploymentType` field defines the mode.
    #
    #
    #
    # : `NONE`
    #
    #   In this mode, a deployment *doesn't* occur. Only the requested
    #   metadata parameters are updated.
    #
    #
    #
    # : `CURRENT_VERSION`
    #
    #   In this mode, the service instance is deployed and updated with the
    #   new spec that you provide. Only requested parameters are updated.
    #   *Don’t* include minor or major version parameters when you use this
    #   `deployment-type`.
    #
    #
    #
    # : `MINOR_VERSION`
    #
    #   In this mode, the service instance is deployed and updated with the
    #   published, recommended (latest) minor version of the current major
    #   version in use, by default. You can also specify a different minor
    #   version of the current major version in use.
    #
    #
    #
    # : `MAJOR_VERSION`
    #
    #   In this mode, the service instance is deployed and updated with the
    #   published, recommended (latest) major and minor version of the
    #   current template, by default. You can also specify a different major
    #   version that is higher than the major version in use and a minor
    #   version (optional).
    #
    # @option params [required, String] :deployment_type
    #   The deployment type.
    #
    #   There are four modes for updating a service instance as described in
    #   the following. The `deploymentType` field defines the mode.
    #
    #
    #
    #   : `NONE`
    #
    #     In this mode, a deployment *doesn't* occur. Only the requested
    #     metadata parameters are updated.
    #
    #
    #
    #   : `CURRENT_VERSION`
    #
    #     In this mode, the service instance is deployed and updated with the
    #     new spec that you provide. Only requested parameters are updated.
    #     *Don’t* include minor or major version parameters when you use this
    #     `deployment-type`.
    #
    #
    #
    #   : `MINOR_VERSION`
    #
    #     In this mode, the service instance is deployed and updated with the
    #     published, recommended (latest) minor version of the current major
    #     version in use, by default. You can also specify a different minor
    #     version of the current major version in use.
    #
    #
    #
    #   : `MAJOR_VERSION`
    #
    #     In this mode, the service instance is deployed and updated with the
    #     published, recommended (latest) major and minor version of the
    #     current template, by default. You can also specify a different major
    #     version that is higher than the major version in use and a minor
    #     version (optional).
    #
    # @option params [required, String] :name
    #   The name of the service instance to update.
    #
    # @option params [required, String] :service_name
    #   The name of the service that the service instance belongs to.
    #
    # @option params [String] :spec
    #   The formatted specification that defines the service instance update.
    #
    # @option params [String] :template_major_version
    #   The major version of the service template to update.
    #
    # @option params [String] :template_minor_version
    #   The minor version of the service template to update.
    #
    # @return [Types::UpdateServiceInstanceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateServiceInstanceOutput#service_instance #service_instance} => Types::ServiceInstance
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_service_instance({
    #     deployment_type: "NONE", # required, accepts NONE, CURRENT_VERSION, MINOR_VERSION, MAJOR_VERSION
    #     name: "ResourceName", # required
    #     service_name: "ResourceName", # required
    #     spec: "SpecContents",
    #     template_major_version: "TemplateVersionPart",
    #     template_minor_version: "TemplateVersionPart",
    #   })
    #
    # @example Response structure
    #
    #   resp.service_instance.arn #=> String
    #   resp.service_instance.created_at #=> Time
    #   resp.service_instance.deployment_status #=> String, one of "IN_PROGRESS", "FAILED", "SUCCEEDED", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "CANCELLING", "CANCELLED"
    #   resp.service_instance.deployment_status_message #=> String
    #   resp.service_instance.environment_name #=> String
    #   resp.service_instance.last_deployment_attempted_at #=> Time
    #   resp.service_instance.last_deployment_succeeded_at #=> Time
    #   resp.service_instance.name #=> String
    #   resp.service_instance.service_name #=> String
    #   resp.service_instance.spec #=> String
    #   resp.service_instance.template_major_version #=> String
    #   resp.service_instance.template_minor_version #=> String
    #   resp.service_instance.template_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/UpdateServiceInstance AWS API Documentation
    #
    # @overload update_service_instance(params = {})
    # @param [Hash] params ({})
    def update_service_instance(params = {}, options = {})
      req = build_request(:update_service_instance, params)
      req.send_request(options)
    end

    # Update the service pipeline.
    #
    # There are four modes for updating a service pipeline as described in
    # the following. The `deploymentType` field defines the mode.
    #
    #
    #
    # : `NONE`
    #
    #   In this mode, a deployment *doesn't* occur. Only the requested
    #   metadata parameters are updated.
    #
    #
    #
    # : `CURRENT_VERSION`
    #
    #   In this mode, the service pipeline is deployed and updated with the
    #   new spec that you provide. Only requested parameters are updated.
    #   *Don’t* include minor or major version parameters when you use this
    #   `deployment-type`.
    #
    #
    #
    # : `MINOR_VERSION`
    #
    #   In this mode, the service pipeline is deployed and updated with the
    #   published, recommended (latest) minor version of the current major
    #   version in use, by default. You can also specify a different minor
    #   version of the current major version in use.
    #
    #
    #
    # : `MAJOR_VERSION`
    #
    #   In this mode, the service pipeline is deployed and updated with the
    #   published, recommended (latest) major and minor version of the
    #   current template by default. You can also specify a different major
    #   version that is higher than the major version in use and a minor
    #   version (optional).
    #
    # @option params [required, String] :deployment_type
    #   The deployment type.
    #
    #   There are four modes for updating a service pipeline as described in
    #   the following. The `deploymentType` field defines the mode.
    #
    #
    #
    #   : `NONE`
    #
    #     In this mode, a deployment *doesn't* occur. Only the requested
    #     metadata parameters are updated.
    #
    #
    #
    #   : `CURRENT_VERSION`
    #
    #     In this mode, the service pipeline is deployed and updated with the
    #     new spec that you provide. Only requested parameters are updated.
    #     *Don’t* include minor or major version parameters when you use this
    #     `deployment-type`.
    #
    #
    #
    #   : `MINOR_VERSION`
    #
    #     In this mode, the service pipeline is deployed and updated with the
    #     published, recommended (latest) minor version of the current major
    #     version in use, by default. You can also specify a different minor
    #     version of the current major version in use.
    #
    #
    #
    #   : `MAJOR_VERSION`
    #
    #     In this mode, the service pipeline is deployed and updated with the
    #     published, recommended (latest) major and minor version of the
    #     current template, by default. You can also specify a different major
    #     version that is higher than the major version in use and a minor
    #     version (optional).
    #
    # @option params [required, String] :service_name
    #   The name of the service to that the pipeline is associated with.
    #
    # @option params [required, String] :spec
    #   The spec for the service pipeline to update.
    #
    # @option params [String] :template_major_version
    #   The major version of the service template that was used to create the
    #   service that the pipeline is associated with.
    #
    # @option params [String] :template_minor_version
    #   The minor version of the service template that was used to create the
    #   service that the pipeline is associated with.
    #
    # @return [Types::UpdateServicePipelineOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateServicePipelineOutput#pipeline #pipeline} => Types::ServicePipeline
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_service_pipeline({
    #     deployment_type: "NONE", # required, accepts NONE, CURRENT_VERSION, MINOR_VERSION, MAJOR_VERSION
    #     service_name: "ResourceName", # required
    #     spec: "SpecContents", # required
    #     template_major_version: "TemplateVersionPart",
    #     template_minor_version: "TemplateVersionPart",
    #   })
    #
    # @example Response structure
    #
    #   resp.pipeline.arn #=> String
    #   resp.pipeline.created_at #=> Time
    #   resp.pipeline.deployment_status #=> String, one of "IN_PROGRESS", "FAILED", "SUCCEEDED", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "CANCELLING", "CANCELLED"
    #   resp.pipeline.deployment_status_message #=> String
    #   resp.pipeline.last_deployment_attempted_at #=> Time
    #   resp.pipeline.last_deployment_succeeded_at #=> Time
    #   resp.pipeline.spec #=> String
    #   resp.pipeline.template_major_version #=> String
    #   resp.pipeline.template_minor_version #=> String
    #   resp.pipeline.template_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/UpdateServicePipeline AWS API Documentation
    #
    # @overload update_service_pipeline(params = {})
    # @param [Hash] params ({})
    def update_service_pipeline(params = {}, options = {})
      req = build_request(:update_service_pipeline, params)
      req.send_request(options)
    end

    # Update a service template.
    #
    # @option params [String] :description
    #   A description of the service template update.
    #
    # @option params [String] :display_name
    #   The name of the service template to update as displayed in the
    #   developer interface.
    #
    # @option params [required, String] :name
    #   The name of the service template to update.
    #
    # @return [Types::UpdateServiceTemplateOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateServiceTemplateOutput#service_template #service_template} => Types::ServiceTemplate
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_service_template({
    #     description: "Description",
    #     display_name: "DisplayName",
    #     name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.service_template.arn #=> String
    #   resp.service_template.created_at #=> Time
    #   resp.service_template.description #=> String
    #   resp.service_template.display_name #=> String
    #   resp.service_template.encryption_key #=> String
    #   resp.service_template.last_modified_at #=> Time
    #   resp.service_template.name #=> String
    #   resp.service_template.pipeline_provisioning #=> String, one of "CUSTOMER_MANAGED"
    #   resp.service_template.recommended_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/UpdateServiceTemplate AWS API Documentation
    #
    # @overload update_service_template(params = {})
    # @param [Hash] params ({})
    def update_service_template(params = {}, options = {})
      req = build_request(:update_service_template, params)
      req.send_request(options)
    end

    # Update a major or minor version of a service template.
    #
    # @option params [Array<Types::CompatibleEnvironmentTemplateInput>] :compatible_environment_templates
    #   An array of compatible environment names for a service template major
    #   or minor version to update.
    #
    # @option params [String] :description
    #   A description of a service template version to update.
    #
    # @option params [required, String] :major_version
    #   To update a major version of a service template, include
    #   `majorVersion`.
    #
    # @option params [required, String] :minor_version
    #   To update a minor version of a service template, include
    #   `minorVersion`.
    #
    # @option params [String] :status
    #   The status of the service template minor version to update.
    #
    # @option params [required, String] :template_name
    #   The name of the service template.
    #
    # @return [Types::UpdateServiceTemplateVersionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateServiceTemplateVersionOutput#service_template_version #service_template_version} => Types::ServiceTemplateVersion
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_service_template_version({
    #     compatible_environment_templates: [
    #       {
    #         major_version: "TemplateVersionPart", # required
    #         template_name: "ResourceName", # required
    #       },
    #     ],
    #     description: "Description",
    #     major_version: "TemplateVersionPart", # required
    #     minor_version: "TemplateVersionPart", # required
    #     status: "REGISTRATION_IN_PROGRESS", # accepts REGISTRATION_IN_PROGRESS, REGISTRATION_FAILED, DRAFT, PUBLISHED
    #     template_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.service_template_version.arn #=> String
    #   resp.service_template_version.compatible_environment_templates #=> Array
    #   resp.service_template_version.compatible_environment_templates[0].major_version #=> String
    #   resp.service_template_version.compatible_environment_templates[0].template_name #=> String
    #   resp.service_template_version.created_at #=> Time
    #   resp.service_template_version.description #=> String
    #   resp.service_template_version.last_modified_at #=> Time
    #   resp.service_template_version.major_version #=> String
    #   resp.service_template_version.minor_version #=> String
    #   resp.service_template_version.recommended_minor_version #=> String
    #   resp.service_template_version.schema #=> String
    #   resp.service_template_version.status #=> String, one of "REGISTRATION_IN_PROGRESS", "REGISTRATION_FAILED", "DRAFT", "PUBLISHED"
    #   resp.service_template_version.status_message #=> String
    #   resp.service_template_version.template_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/UpdateServiceTemplateVersion AWS API Documentation
    #
    # @overload update_service_template_version(params = {})
    # @param [Hash] params ({})
    def update_service_template_version(params = {}, options = {})
      req = build_request(:update_service_template_version, params)
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
      context[:gem_name] = 'aws-sdk-proton'
      context[:gem_version] = '1.9.0'
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
    # | waiter_name                             | params                                    | :delay   | :max_attempts |
    # | --------------------------------------- | ----------------------------------------- | -------- | ------------- |
    # | environment_deployed                    | {Client#get_environment}                  | 5        | 999           |
    # | environment_template_version_registered | {Client#get_environment_template_version} | 2        | 150           |
    # | service_created                         | {Client#get_service}                      | 5        | 999           |
    # | service_deleted                         | {Client#get_service}                      | 5        | 999           |
    # | service_instance_deployed               | {Client#get_service_instance}             | 5        | 999           |
    # | service_pipeline_deployed               | {Client#get_service}                      | 10       | 360           |
    # | service_template_version_registered     | {Client#get_service_template_version}     | 2        | 150           |
    # | service_updated                         | {Client#get_service}                      | 5        | 999           |
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
        environment_deployed: Waiters::EnvironmentDeployed,
        environment_template_version_registered: Waiters::EnvironmentTemplateVersionRegistered,
        service_created: Waiters::ServiceCreated,
        service_deleted: Waiters::ServiceDeleted,
        service_instance_deployed: Waiters::ServiceInstanceDeployed,
        service_pipeline_deployed: Waiters::ServicePipelineDeployed,
        service_template_version_registered: Waiters::ServiceTemplateVersionRegistered,
        service_updated: Waiters::ServiceUpdated
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
