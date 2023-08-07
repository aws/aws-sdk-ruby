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
    add_plugin(Aws::Plugins::ChecksumAlgorithm)
    add_plugin(Aws::Plugins::RequestCompression)
    add_plugin(Aws::Plugins::DefaultsMode)
    add_plugin(Aws::Plugins::RecursionDetection)
    add_plugin(Aws::Plugins::Sign)
    add_plugin(Aws::Plugins::Protocols::JsonRpc)
    add_plugin(Aws::Proton::Plugins::Endpoints)

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
    #   @option options [Aws::Proton::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::Proton::EndpointParameters`
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

    # In a management account, an environment account connection request is
    # accepted. When the environment account connection request is accepted,
    # Proton can use the associated IAM role to provision environment
    # infrastructure resources in the associated environment account.
    #
    # For more information, see [Environment account connections][1] in the
    # *Proton User guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/proton/latest/userguide/ag-env-account-connections.html
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
    #   resp.environment_account_connection.codebuild_role_arn #=> String
    #   resp.environment_account_connection.component_role_arn #=> String
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

    # Attempts to cancel a component deployment (for a component that is in
    # the `IN_PROGRESS` deployment status).
    #
    # For more information about components, see [Proton components][1] in
    # the *Proton User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html
    #
    # @option params [required, String] :component_name
    #   The name of the component with the deployment to cancel.
    #
    # @return [Types::CancelComponentDeploymentOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CancelComponentDeploymentOutput#component #component} => Types::Component
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_component_deployment({
    #     component_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.component.arn #=> String
    #   resp.component.created_at #=> Time
    #   resp.component.deployment_status #=> String, one of "IN_PROGRESS", "FAILED", "SUCCEEDED", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "CANCELLING", "CANCELLED"
    #   resp.component.deployment_status_message #=> String
    #   resp.component.description #=> String
    #   resp.component.environment_name #=> String
    #   resp.component.last_attempted_deployment_id #=> String
    #   resp.component.last_client_request_token #=> String
    #   resp.component.last_deployment_attempted_at #=> Time
    #   resp.component.last_deployment_succeeded_at #=> Time
    #   resp.component.last_modified_at #=> Time
    #   resp.component.last_succeeded_deployment_id #=> String
    #   resp.component.name #=> String
    #   resp.component.service_instance_name #=> String
    #   resp.component.service_name #=> String
    #   resp.component.service_spec #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/CancelComponentDeployment AWS API Documentation
    #
    # @overload cancel_component_deployment(params = {})
    # @param [Hash] params ({})
    def cancel_component_deployment(params = {}, options = {})
      req = build_request(:cancel_component_deployment, params)
      req.send_request(options)
    end

    # Attempts to cancel an environment deployment on an UpdateEnvironment
    # action, if the deployment is `IN_PROGRESS`. For more information, see
    # [Update an environment][1] in the *Proton User guide*.
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
    # [1]: https://docs.aws.amazon.com/proton/latest/userguide/ag-env-update.html
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
    #   resp.environment.codebuild_role_arn #=> String
    #   resp.environment.component_role_arn #=> String
    #   resp.environment.created_at #=> Time
    #   resp.environment.deployment_status #=> String, one of "IN_PROGRESS", "FAILED", "SUCCEEDED", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "CANCELLING", "CANCELLED"
    #   resp.environment.deployment_status_message #=> String
    #   resp.environment.description #=> String
    #   resp.environment.environment_account_connection_id #=> String
    #   resp.environment.environment_account_id #=> String
    #   resp.environment.last_attempted_deployment_id #=> String
    #   resp.environment.last_deployment_attempted_at #=> Time
    #   resp.environment.last_deployment_succeeded_at #=> Time
    #   resp.environment.last_succeeded_deployment_id #=> String
    #   resp.environment.name #=> String
    #   resp.environment.proton_service_role_arn #=> String
    #   resp.environment.provisioning #=> String, one of "CUSTOMER_MANAGED"
    #   resp.environment.provisioning_repository.arn #=> String
    #   resp.environment.provisioning_repository.branch #=> String
    #   resp.environment.provisioning_repository.name #=> String
    #   resp.environment.provisioning_repository.provider #=> String, one of "GITHUB", "GITHUB_ENTERPRISE", "BITBUCKET"
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
    # more information, see [Update a service instance][1] in the *Proton
    # User guide*.
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
    # [1]: https://docs.aws.amazon.com/proton/latest/userguide/ag-svc-instance-update.html
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
    #   resp.service_instance.last_attempted_deployment_id #=> String
    #   resp.service_instance.last_client_request_token #=> String
    #   resp.service_instance.last_deployment_attempted_at #=> Time
    #   resp.service_instance.last_deployment_succeeded_at #=> Time
    #   resp.service_instance.last_succeeded_deployment_id #=> String
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
    # more information, see [Update a service pipeline][1] in the *Proton
    # User guide*.
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
    # [1]: https://docs.aws.amazon.com/proton/latest/userguide/ag-svc-pipeline-update.html
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
    #   resp.pipeline.last_attempted_deployment_id #=> String
    #   resp.pipeline.last_deployment_attempted_at #=> Time
    #   resp.pipeline.last_deployment_succeeded_at #=> Time
    #   resp.pipeline.last_succeeded_deployment_id #=> String
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

    # Create an Proton component. A component is an infrastructure extension
    # for a service instance.
    #
    # For more information about components, see [Proton components][1] in
    # the *Proton User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html
    #
    # @option params [String] :client_token
    #   The client token for the created component.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :description
    #   An optional customer-provided description of the component.
    #
    # @option params [String] :environment_name
    #   The name of the Proton environment that you want to associate this
    #   component with. You must specify this when you don't specify
    #   `serviceInstanceName` and `serviceName`.
    #
    # @option params [required, String] :manifest
    #   A path to a manifest file that lists the Infrastructure as Code (IaC)
    #   file, template language, and rendering engine for infrastructure that
    #   a custom component provisions.
    #
    # @option params [required, String] :name
    #   The customer-provided name of the component.
    #
    # @option params [String] :service_instance_name
    #   The name of the service instance that you want to attach this
    #   component to. If you don't specify this, the component isn't
    #   attached to any service instance. Specify both `serviceInstanceName`
    #   and `serviceName` or neither of them.
    #
    # @option params [String] :service_name
    #   The name of the service that `serviceInstanceName` is associated with.
    #   If you don't specify this, the component isn't attached to any
    #   service instance. Specify both `serviceInstanceName` and `serviceName`
    #   or neither of them.
    #
    # @option params [String] :service_spec
    #   The service spec that you want the component to use to access service
    #   inputs. Set this only when you attach the component to a service
    #   instance.
    #
    # @option params [Array<Types::Tag>] :tags
    #   An optional list of metadata items that you can associate with the
    #   Proton component. A tag is a key-value pair.
    #
    #   For more information, see [Proton resources and tagging][1] in the
    #   *Proton User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/proton/latest/userguide/resources.html
    #
    # @option params [required, String] :template_file
    #   A path to the Infrastructure as Code (IaC) file describing
    #   infrastructure that a custom component provisions.
    #
    #   <note markdown="1"> Components support a single IaC file, even if you use Terraform as
    #   your template language.
    #
    #    </note>
    #
    # @return [Types::CreateComponentOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateComponentOutput#component #component} => Types::Component
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_component({
    #     client_token: "ClientToken",
    #     description: "Description",
    #     environment_name: "ResourceName",
    #     manifest: "TemplateManifestContents", # required
    #     name: "ResourceName", # required
    #     service_instance_name: "ResourceName",
    #     service_name: "ResourceName",
    #     service_spec: "SpecContents",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     template_file: "TemplateFileContents", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.component.arn #=> String
    #   resp.component.created_at #=> Time
    #   resp.component.deployment_status #=> String, one of "IN_PROGRESS", "FAILED", "SUCCEEDED", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "CANCELLING", "CANCELLED"
    #   resp.component.deployment_status_message #=> String
    #   resp.component.description #=> String
    #   resp.component.environment_name #=> String
    #   resp.component.last_attempted_deployment_id #=> String
    #   resp.component.last_client_request_token #=> String
    #   resp.component.last_deployment_attempted_at #=> Time
    #   resp.component.last_deployment_succeeded_at #=> Time
    #   resp.component.last_modified_at #=> Time
    #   resp.component.last_succeeded_deployment_id #=> String
    #   resp.component.name #=> String
    #   resp.component.service_instance_name #=> String
    #   resp.component.service_name #=> String
    #   resp.component.service_spec #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/CreateComponent AWS API Documentation
    #
    # @overload create_component(params = {})
    # @param [Hash] params ({})
    def create_component(params = {}, options = {})
      req = build_request(:create_component, params)
      req.send_request(options)
    end

    # Deploy a new environment. An Proton environment is created from an
    # environment template that defines infrastructure and resources that
    # can be shared across services.
    #
    # **You can provision environments using the following methods:**
    #
    # * Amazon Web Services-managed provisioning: Proton makes direct calls
    #   to provision your resources.
    #
    # * Self-managed provisioning: Proton makes pull requests on your
    #   repository to provide compiled infrastructure as code (IaC) files
    #   that your IaC engine uses to provision resources.
    #
    # For more information, see [Environments][1] and [Provisioning
    # methods][2] in the *Proton User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/proton/latest/userguide/ag-environments.html
    # [2]: https://docs.aws.amazon.com/proton/latest/userguide/ag-works-prov-methods.html
    #
    # @option params [String] :codebuild_role_arn
    #   The Amazon Resource Name (ARN) of the IAM service role that allows
    #   Proton to provision infrastructure using CodeBuild-based provisioning
    #   on your behalf.
    #
    #   To use CodeBuild-based provisioning for the environment or for any
    #   service instance running in the environment, specify either the
    #   `environmentAccountConnectionId` or `codebuildRoleArn` parameter.
    #
    # @option params [String] :component_role_arn
    #   The Amazon Resource Name (ARN) of the IAM service role that Proton
    #   uses when provisioning directly defined components in this
    #   environment. It determines the scope of infrastructure that a
    #   component can provision.
    #
    #   You must specify `componentRoleArn` to allow directly defined
    #   components to be associated with this environment.
    #
    #   For more information about components, see [Proton components][1] in
    #   the *Proton User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html
    #
    # @option params [String] :description
    #   A description of the environment that's being created and deployed.
    #
    # @option params [String] :environment_account_connection_id
    #   The ID of the environment account connection that you provide if
    #   you're provisioning your environment infrastructure resources to an
    #   environment account. For more information, see [Environment account
    #   connections][1] in the *Proton User guide*.
    #
    #   To use Amazon Web Services-managed provisioning for the environment,
    #   specify either the `environmentAccountConnectionId` or
    #   `protonServiceRoleArn` parameter and omit the `provisioningRepository`
    #   parameter.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/proton/latest/userguide/ag-env-account-connections.html
    #
    # @option params [required, String] :name
    #   The name of the environment.
    #
    # @option params [String] :proton_service_role_arn
    #   The Amazon Resource Name (ARN) of the Proton service role that allows
    #   Proton to make calls to other services on your behalf.
    #
    #   To use Amazon Web Services-managed provisioning for the environment,
    #   specify either the `environmentAccountConnectionId` or
    #   `protonServiceRoleArn` parameter and omit the `provisioningRepository`
    #   parameter.
    #
    # @option params [Types::RepositoryBranchInput] :provisioning_repository
    #   The linked repository that you use to host your rendered
    #   infrastructure templates for self-managed provisioning. A linked
    #   repository is a repository that has been registered with Proton. For
    #   more information, see CreateRepository.
    #
    #   To use self-managed provisioning for the environment, specify this
    #   parameter and omit the `environmentAccountConnectionId` and
    #   `protonServiceRoleArn` parameters.
    #
    # @option params [required, String] :spec
    #   A YAML formatted string that provides inputs as defined in the
    #   environment template bundle schema file. For more information, see
    #   [Environments][1] in the *Proton User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/proton/latest/userguide/ag-environments.html
    #
    # @option params [Array<Types::Tag>] :tags
    #   An optional list of metadata items that you can associate with the
    #   Proton environment. A tag is a key-value pair.
    #
    #   For more information, see [Proton resources and tagging][1] in the
    #   *Proton User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/proton/latest/userguide/resources.html
    #
    # @option params [required, String] :template_major_version
    #   The major version of the environment template.
    #
    # @option params [String] :template_minor_version
    #   The minor version of the environment template.
    #
    # @option params [required, String] :template_name
    #   The name of the environment template. For more information, see
    #   [Environment Templates][1] in the *Proton User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/proton/latest/userguide/ag-templates.html
    #
    # @return [Types::CreateEnvironmentOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateEnvironmentOutput#environment #environment} => Types::Environment
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_environment({
    #     codebuild_role_arn: "RoleArn",
    #     component_role_arn: "RoleArn",
    #     description: "Description",
    #     environment_account_connection_id: "EnvironmentAccountConnectionId",
    #     name: "ResourceName", # required
    #     proton_service_role_arn: "Arn",
    #     provisioning_repository: {
    #       branch: "GitBranchName", # required
    #       name: "RepositoryName", # required
    #       provider: "GITHUB", # required, accepts GITHUB, GITHUB_ENTERPRISE, BITBUCKET
    #     },
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
    #   resp.environment.codebuild_role_arn #=> String
    #   resp.environment.component_role_arn #=> String
    #   resp.environment.created_at #=> Time
    #   resp.environment.deployment_status #=> String, one of "IN_PROGRESS", "FAILED", "SUCCEEDED", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "CANCELLING", "CANCELLED"
    #   resp.environment.deployment_status_message #=> String
    #   resp.environment.description #=> String
    #   resp.environment.environment_account_connection_id #=> String
    #   resp.environment.environment_account_id #=> String
    #   resp.environment.last_attempted_deployment_id #=> String
    #   resp.environment.last_deployment_attempted_at #=> Time
    #   resp.environment.last_deployment_succeeded_at #=> Time
    #   resp.environment.last_succeeded_deployment_id #=> String
    #   resp.environment.name #=> String
    #   resp.environment.proton_service_role_arn #=> String
    #   resp.environment.provisioning #=> String, one of "CUSTOMER_MANAGED"
    #   resp.environment.provisioning_repository.arn #=> String
    #   resp.environment.provisioning_repository.branch #=> String
    #   resp.environment.provisioning_repository.name #=> String
    #   resp.environment.provisioning_repository.provider #=> String, one of "GITHUB", "GITHUB_ENTERPRISE", "BITBUCKET"
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
    # see [Environment account connections][1] in the *Proton User guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/proton/latest/userguide/ag-env-account-connections.html
    #
    # @option params [String] :client_token
    #   When included, if two identical requests are made with the same client
    #   token, Proton returns the environment account connection that the
    #   first request created.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :codebuild_role_arn
    #   The Amazon Resource Name (ARN) of an IAM service role in the
    #   environment account. Proton uses this role to provision infrastructure
    #   resources using CodeBuild-based provisioning in the associated
    #   environment account.
    #
    # @option params [String] :component_role_arn
    #   The Amazon Resource Name (ARN) of the IAM service role that Proton
    #   uses when provisioning directly defined components in the associated
    #   environment account. It determines the scope of infrastructure that a
    #   component can provision in the account.
    #
    #   You must specify `componentRoleArn` to allow directly defined
    #   components to be associated with any environments running in this
    #   account.
    #
    #   For more information about components, see [Proton components][1] in
    #   the *Proton User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html
    #
    # @option params [required, String] :environment_name
    #   The name of the Proton environment that's created in the associated
    #   management account.
    #
    # @option params [required, String] :management_account_id
    #   The ID of the management account that accepts or rejects the
    #   environment account connection. You create and manage the Proton
    #   environment in this account. If the management account accepts the
    #   environment account connection, Proton can use the associated IAM role
    #   to provision environment infrastructure resources in the associated
    #   environment account.
    #
    # @option params [String] :role_arn
    #   The Amazon Resource Name (ARN) of the IAM service role that's created
    #   in the environment account. Proton uses this role to provision
    #   infrastructure resources in the associated environment account.
    #
    # @option params [Array<Types::Tag>] :tags
    #   An optional list of metadata items that you can associate with the
    #   Proton environment account connection. A tag is a key-value pair.
    #
    #   For more information, see [Proton resources and tagging][1] in the
    #   *Proton User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/proton/latest/userguide/resources.html
    #
    # @return [Types::CreateEnvironmentAccountConnectionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateEnvironmentAccountConnectionOutput#environment_account_connection #environment_account_connection} => Types::EnvironmentAccountConnection
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_environment_account_connection({
    #     client_token: "ClientToken",
    #     codebuild_role_arn: "RoleArn",
    #     component_role_arn: "RoleArn",
    #     environment_name: "ResourceName", # required
    #     management_account_id: "AwsAccountId", # required
    #     role_arn: "RoleArn",
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
    #   resp.environment_account_connection.arn #=> String
    #   resp.environment_account_connection.codebuild_role_arn #=> String
    #   resp.environment_account_connection.component_role_arn #=> String
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

    # Create an environment template for Proton. For more information, see
    # [Environment Templates][1] in the *Proton User Guide*.
    #
    # You can create an environment template in one of the two following
    # ways:
    #
    # * Register and publish a *standard* environment template that
    #   instructs Proton to deploy and manage environment infrastructure.
    #
    # * Register and publish a *customer managed* environment template that
    #   connects Proton to your existing provisioned infrastructure that you
    #   manage. Proton *doesn't* manage your existing provisioned
    #   infrastructure. To create an environment template for customer
    #   provisioned and managed infrastructure, include the `provisioning`
    #   parameter and set the value to `CUSTOMER_MANAGED`. For more
    #   information, see [Register and publish an environment template][2]
    #   in the *Proton User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/proton/latest/userguide/ag-templates.html
    # [2]: https://docs.aws.amazon.com/proton/latest/userguide/template-create.html
    #
    # @option params [String] :description
    #   A description of the environment template.
    #
    # @option params [String] :display_name
    #   The environment template name as displayed in the developer interface.
    #
    # @option params [String] :encryption_key
    #   A customer provided encryption key that Proton uses to encrypt data.
    #
    # @option params [required, String] :name
    #   The name of the environment template.
    #
    # @option params [String] :provisioning
    #   When included, indicates that the environment template is for customer
    #   provisioned and managed infrastructure.
    #
    # @option params [Array<Types::Tag>] :tags
    #   An optional list of metadata items that you can associate with the
    #   Proton environment template. A tag is a key-value pair.
    #
    #   For more information, see [Proton resources and tagging][1] in the
    #   *Proton User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/proton/latest/userguide/resources.html
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
    #   When included, if two identical requests are made with the same client
    #   token, Proton returns the environment template version that the first
    #   request created.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :description
    #   A description of the new version of an environment template.
    #
    # @option params [String] :major_version
    #   To create a new minor version of the environment template, include
    #   `major Version`.
    #
    #   To create a new major and minor version of the environment template,
    #   exclude `major Version`.
    #
    # @option params [required, Types::TemplateVersionSourceInput] :source
    #   An object that includes the template bundle S3 bucket path and name
    #   for the new version of an template.
    #
    # @option params [Array<Types::Tag>] :tags
    #   An optional list of metadata items that you can associate with the
    #   Proton environment template version. A tag is a key-value pair.
    #
    #   For more information, see [Proton resources and tagging][1] in the
    #   *Proton User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/proton/latest/userguide/resources.html
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

    # Create and register a link to a repository. Proton uses the link to
    # repeatedly access the repository, to either push to it (self-managed
    # provisioning) or pull from it (template sync). You can share a linked
    # repository across multiple resources (like environments using
    # self-managed provisioning, or synced templates). When you create a
    # repository link, Proton creates a [service-linked role][1] for you.
    #
    # For more information, see [Self-managed provisioning][2], [Template
    # bundles][3], and [Template sync configurations][4] in the *Proton User
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/proton/latest/userguide/using-service-linked-roles.html
    # [2]: https://docs.aws.amazon.com/proton/latest/userguide/ag-works-prov-methods.html#ag-works-prov-methods-self
    # [3]: https://docs.aws.amazon.com/proton/latest/userguide/ag-template-authoring.html#ag-template-bundles
    # [4]: https://docs.aws.amazon.com/proton/latest/userguide/ag-template-sync-configs.html
    #
    # @option params [required, String] :connection_arn
    #   The Amazon Resource Name (ARN) of your AWS CodeStar connection that
    #   connects Proton to your repository provider account. For more
    #   information, see [Setting up for Proton][1] in the *Proton User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/proton/latest/userguide/setting-up-for-service.html
    #
    # @option params [String] :encryption_key
    #   The ARN of your customer Amazon Web Services Key Management Service
    #   (Amazon Web Services KMS) key.
    #
    # @option params [required, String] :name
    #   The repository name (for example, `myrepos/myrepo`).
    #
    # @option params [required, String] :provider
    #   The repository provider.
    #
    # @option params [Array<Types::Tag>] :tags
    #   An optional list of metadata items that you can associate with the
    #   Proton repository. A tag is a key-value pair.
    #
    #   For more information, see [Proton resources and tagging][1] in the
    #   *Proton User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/proton/latest/userguide/resources.html
    #
    # @return [Types::CreateRepositoryOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateRepositoryOutput#repository #repository} => Types::Repository
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_repository({
    #     connection_arn: "Arn", # required
    #     encryption_key: "Arn",
    #     name: "RepositoryName", # required
    #     provider: "GITHUB", # required, accepts GITHUB, GITHUB_ENTERPRISE, BITBUCKET
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
    #   resp.repository.arn #=> String
    #   resp.repository.connection_arn #=> String
    #   resp.repository.encryption_key #=> String
    #   resp.repository.name #=> String
    #   resp.repository.provider #=> String, one of "GITHUB", "GITHUB_ENTERPRISE", "BITBUCKET"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/CreateRepository AWS API Documentation
    #
    # @overload create_repository(params = {})
    # @param [Hash] params ({})
    def create_repository(params = {}, options = {})
      req = build_request(:create_repository, params)
      req.send_request(options)
    end

    # Create an Proton service. An Proton service is an instantiation of a
    # service template and often includes several service instances and
    # pipeline. For more information, see [Services][1] in the *Proton User
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/proton/latest/userguide/ag-services.html
    #
    # @option params [String] :branch_name
    #   The name of the code repository branch that holds the code that's
    #   deployed in Proton. *Don't* include this parameter if your service
    #   template *doesn't* include a service pipeline.
    #
    # @option params [String] :description
    #   A description of the Proton service.
    #
    # @option params [required, String] :name
    #   The service name.
    #
    # @option params [String] :repository_connection_arn
    #   The Amazon Resource Name (ARN) of the repository connection. For more
    #   information, see [Setting up an AWS CodeStar connection][1] in the
    #   *Proton User Guide*. *Don't* include this parameter if your service
    #   template *doesn't* include a service pipeline.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/proton/latest/userguide/setting-up-for-service.html#setting-up-vcontrol
    #
    # @option params [String] :repository_id
    #   The ID of the code repository. *Don't* include this parameter if your
    #   service template *doesn't* include a service pipeline.
    #
    # @option params [required, String] :spec
    #   A link to a spec file that provides inputs as defined in the service
    #   template bundle schema file. The spec file is in YAML format. *Don’t*
    #   include pipeline inputs in the spec if your service template *doesn’t*
    #   include a service pipeline. For more information, see [Create a
    #   service][1] in the *Proton User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/proton/latest/userguide/ag-create-svc.html
    #
    # @option params [Array<Types::Tag>] :tags
    #   An optional list of metadata items that you can associate with the
    #   Proton service. A tag is a key-value pair.
    #
    #   For more information, see [Proton resources and tagging][1] in the
    #   *Proton User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/proton/latest/userguide/resources.html
    #
    # @option params [required, String] :template_major_version
    #   The major version of the service template that was used to create the
    #   service.
    #
    # @option params [String] :template_minor_version
    #   The minor version of the service template that was used to create the
    #   service.
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
    #   resp.service.pipeline.last_attempted_deployment_id #=> String
    #   resp.service.pipeline.last_deployment_attempted_at #=> Time
    #   resp.service.pipeline.last_deployment_succeeded_at #=> Time
    #   resp.service.pipeline.last_succeeded_deployment_id #=> String
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

    # Create a service instance.
    #
    # @option params [String] :client_token
    #   The client token of the service instance to create.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :name
    #   The name of the service instance to create.
    #
    # @option params [required, String] :service_name
    #   The name of the service the service instance is added to.
    #
    # @option params [required, String] :spec
    #   The spec for the service instance you want to create.
    #
    # @option params [Array<Types::Tag>] :tags
    #   An optional list of metadata items that you can associate with the
    #   Proton service instance. A tag is a key-value pair.
    #
    #   For more information, see [Proton resources and tagging][1] in the
    #   *Proton User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/proton/latest/userguide/resources.html
    #
    # @option params [String] :template_major_version
    #   To create a new major and minor version of the service template,
    #   *exclude* `major Version`.
    #
    # @option params [String] :template_minor_version
    #   To create a new minor version of the service template, include a
    #   `major Version`.
    #
    # @return [Types::CreateServiceInstanceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateServiceInstanceOutput#service_instance #service_instance} => Types::ServiceInstance
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_service_instance({
    #     client_token: "ClientToken",
    #     name: "ResourceName", # required
    #     service_name: "ResourceName", # required
    #     spec: "SpecContents", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
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
    #   resp.service_instance.last_attempted_deployment_id #=> String
    #   resp.service_instance.last_client_request_token #=> String
    #   resp.service_instance.last_deployment_attempted_at #=> Time
    #   resp.service_instance.last_deployment_succeeded_at #=> Time
    #   resp.service_instance.last_succeeded_deployment_id #=> String
    #   resp.service_instance.name #=> String
    #   resp.service_instance.service_name #=> String
    #   resp.service_instance.spec #=> String
    #   resp.service_instance.template_major_version #=> String
    #   resp.service_instance.template_minor_version #=> String
    #   resp.service_instance.template_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/CreateServiceInstance AWS API Documentation
    #
    # @overload create_service_instance(params = {})
    # @param [Hash] params ({})
    def create_service_instance(params = {}, options = {})
      req = build_request(:create_service_instance, params)
      req.send_request(options)
    end

    # Create the Proton Ops configuration file.
    #
    # @option params [required, String] :branch
    #   The repository branch for your Proton Ops file.
    #
    # @option params [required, String] :file_path
    #   The path to the Proton Ops file.
    #
    # @option params [required, String] :repository_name
    #   The repository name.
    #
    # @option params [required, String] :repository_provider
    #   The provider type for your repository.
    #
    # @option params [required, String] :service_name
    #   The name of the service the Proton Ops file is for.
    #
    # @return [Types::CreateServiceSyncConfigOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateServiceSyncConfigOutput#service_sync_config #service_sync_config} => Types::ServiceSyncConfig
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_service_sync_config({
    #     branch: "GitBranchName", # required
    #     file_path: "OpsFilePath", # required
    #     repository_name: "RepositoryName", # required
    #     repository_provider: "GITHUB", # required, accepts GITHUB, GITHUB_ENTERPRISE, BITBUCKET
    #     service_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.service_sync_config.branch #=> String
    #   resp.service_sync_config.file_path #=> String
    #   resp.service_sync_config.repository_name #=> String
    #   resp.service_sync_config.repository_provider #=> String, one of "GITHUB", "GITHUB_ENTERPRISE", "BITBUCKET"
    #   resp.service_sync_config.service_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/CreateServiceSyncConfig AWS API Documentation
    #
    # @overload create_service_sync_config(params = {})
    # @param [Hash] params ({})
    def create_service_sync_config(params = {}, options = {})
      req = build_request(:create_service_sync_config, params)
      req.send_request(options)
    end

    # Create a service template. The administrator creates a service
    # template to define standardized infrastructure and an optional CI/CD
    # service pipeline. Developers, in turn, select the service template
    # from Proton. If the selected service template includes a service
    # pipeline definition, they provide a link to their source code
    # repository. Proton then deploys and manages the infrastructure defined
    # by the selected service template. For more information, see [Proton
    # templates][1] in the *Proton User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/proton/latest/userguide/ag-templates.html
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
    #   By default, Proton provides a service pipeline for your service. When
    #   this parameter is included, it indicates that an Proton service
    #   pipeline *isn't* provided for your service. After it's included, it
    #   *can't* be changed. For more information, see [Template bundles][1]
    #   in the *Proton User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/proton/latest/userguide/ag-template-authoring.html#ag-template-bundles
    #
    # @option params [Array<Types::Tag>] :tags
    #   An optional list of metadata items that you can associate with the
    #   Proton service template. A tag is a key-value pair.
    #
    #   For more information, see [Proton resources and tagging][1] in the
    #   *Proton User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/proton/latest/userguide/resources.html
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
    # version of a service template is a version that *isn't* backward
    # compatible. A minor version of a service template is a version that's
    # backward compatible within its major version.
    #
    # @option params [String] :client_token
    #   When included, if two identical requests are made with the same client
    #   token, Proton returns the service template version that the first
    #   request created.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, Array<Types::CompatibleEnvironmentTemplateInput>] :compatible_environment_templates
    #   An array of environment template objects that are compatible with the
    #   new service template version. A service instance based on this service
    #   template version can run in environments based on compatible
    #   templates.
    #
    # @option params [String] :description
    #   A description of the new version of a service template.
    #
    # @option params [String] :major_version
    #   To create a new minor version of the service template, include a
    #   `major Version`.
    #
    #   To create a new major and minor version of the service template,
    #   *exclude* `major Version`.
    #
    # @option params [required, Types::TemplateVersionSourceInput] :source
    #   An object that includes the template bundle S3 bucket path and name
    #   for the new version of a service template.
    #
    # @option params [Array<String>] :supported_component_sources
    #   An array of supported component sources. Components with supported
    #   sources can be attached to service instances based on this service
    #   template version.
    #
    #   For more information about components, see [Proton components][1] in
    #   the *Proton User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html
    #
    # @option params [Array<Types::Tag>] :tags
    #   An optional list of metadata items that you can associate with the
    #   Proton service template version. A tag is a key-value pair.
    #
    #   For more information, see [Proton resources and tagging][1] in the
    #   *Proton User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/proton/latest/userguide/resources.html
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
    #     supported_component_sources: ["DIRECTLY_DEFINED"], # accepts DIRECTLY_DEFINED
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
    #   resp.service_template_version.supported_component_sources #=> Array
    #   resp.service_template_version.supported_component_sources[0] #=> String, one of "DIRECTLY_DEFINED"
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

    # Set up a template to create new template versions automatically by
    # tracking a linked repository. A linked repository is a repository that
    # has been registered with Proton. For more information, see
    # CreateRepository.
    #
    # When a commit is pushed to your linked repository, Proton checks for
    # changes to your repository template bundles. If it detects a template
    # bundle change, a new major or minor version of its template is
    # created, if the version doesn’t already exist. For more information,
    # see [Template sync configurations][1] in the *Proton User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/proton/latest/userguide/ag-template-sync-configs.html
    #
    # @option params [required, String] :branch
    #   The repository branch for your template.
    #
    # @option params [required, String] :repository_name
    #   The repository name (for example, `myrepos/myrepo`).
    #
    # @option params [required, String] :repository_provider
    #   The provider type for your repository.
    #
    # @option params [String] :subdirectory
    #   A repository subdirectory path to your template bundle directory. When
    #   included, Proton limits the template bundle search to this repository
    #   directory.
    #
    # @option params [required, String] :template_name
    #   The name of your registered template.
    #
    # @option params [required, String] :template_type
    #   The type of the registered template.
    #
    # @return [Types::CreateTemplateSyncConfigOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateTemplateSyncConfigOutput#template_sync_config #template_sync_config} => Types::TemplateSyncConfig
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_template_sync_config({
    #     branch: "GitBranchName", # required
    #     repository_name: "RepositoryName", # required
    #     repository_provider: "GITHUB", # required, accepts GITHUB, GITHUB_ENTERPRISE, BITBUCKET
    #     subdirectory: "Subdirectory",
    #     template_name: "ResourceName", # required
    #     template_type: "ENVIRONMENT", # required, accepts ENVIRONMENT, SERVICE
    #   })
    #
    # @example Response structure
    #
    #   resp.template_sync_config.branch #=> String
    #   resp.template_sync_config.repository_name #=> String
    #   resp.template_sync_config.repository_provider #=> String, one of "GITHUB", "GITHUB_ENTERPRISE", "BITBUCKET"
    #   resp.template_sync_config.subdirectory #=> String
    #   resp.template_sync_config.template_name #=> String
    #   resp.template_sync_config.template_type #=> String, one of "ENVIRONMENT", "SERVICE"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/CreateTemplateSyncConfig AWS API Documentation
    #
    # @overload create_template_sync_config(params = {})
    # @param [Hash] params ({})
    def create_template_sync_config(params = {}, options = {})
      req = build_request(:create_template_sync_config, params)
      req.send_request(options)
    end

    # Delete an Proton component resource.
    #
    # For more information about components, see [Proton components][1] in
    # the *Proton User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html
    #
    # @option params [required, String] :name
    #   The name of the component to delete.
    #
    # @return [Types::DeleteComponentOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteComponentOutput#component #component} => Types::Component
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_component({
    #     name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.component.arn #=> String
    #   resp.component.created_at #=> Time
    #   resp.component.deployment_status #=> String, one of "IN_PROGRESS", "FAILED", "SUCCEEDED", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "CANCELLING", "CANCELLED"
    #   resp.component.deployment_status_message #=> String
    #   resp.component.description #=> String
    #   resp.component.environment_name #=> String
    #   resp.component.last_attempted_deployment_id #=> String
    #   resp.component.last_client_request_token #=> String
    #   resp.component.last_deployment_attempted_at #=> Time
    #   resp.component.last_deployment_succeeded_at #=> Time
    #   resp.component.last_modified_at #=> Time
    #   resp.component.last_succeeded_deployment_id #=> String
    #   resp.component.name #=> String
    #   resp.component.service_instance_name #=> String
    #   resp.component.service_name #=> String
    #   resp.component.service_spec #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/DeleteComponent AWS API Documentation
    #
    # @overload delete_component(params = {})
    # @param [Hash] params ({})
    def delete_component(params = {}, options = {})
      req = build_request(:delete_component, params)
      req.send_request(options)
    end

    # Delete the deployment.
    #
    # @option params [required, String] :id
    #   The ID of the deployment to delete.
    #
    # @return [Types::DeleteDeploymentOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteDeploymentOutput#deployment #deployment} => Types::Deployment
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_deployment({
    #     id: "DeploymentId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.deployment.arn #=> String
    #   resp.deployment.completed_at #=> Time
    #   resp.deployment.component_name #=> String
    #   resp.deployment.created_at #=> Time
    #   resp.deployment.deployment_status #=> String, one of "IN_PROGRESS", "FAILED", "SUCCEEDED", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "CANCELLING", "CANCELLED"
    #   resp.deployment.deployment_status_message #=> String
    #   resp.deployment.environment_name #=> String
    #   resp.deployment.id #=> String
    #   resp.deployment.initial_state.component.service_instance_name #=> String
    #   resp.deployment.initial_state.component.service_name #=> String
    #   resp.deployment.initial_state.component.service_spec #=> String
    #   resp.deployment.initial_state.component.template_file #=> String
    #   resp.deployment.initial_state.environment.spec #=> String
    #   resp.deployment.initial_state.environment.template_major_version #=> String
    #   resp.deployment.initial_state.environment.template_minor_version #=> String
    #   resp.deployment.initial_state.environment.template_name #=> String
    #   resp.deployment.initial_state.service_instance.last_successful_component_deployment_ids #=> Array
    #   resp.deployment.initial_state.service_instance.last_successful_component_deployment_ids[0] #=> String
    #   resp.deployment.initial_state.service_instance.last_successful_environment_deployment_id #=> String
    #   resp.deployment.initial_state.service_instance.last_successful_service_pipeline_deployment_id #=> String
    #   resp.deployment.initial_state.service_instance.spec #=> String
    #   resp.deployment.initial_state.service_instance.template_major_version #=> String
    #   resp.deployment.initial_state.service_instance.template_minor_version #=> String
    #   resp.deployment.initial_state.service_instance.template_name #=> String
    #   resp.deployment.initial_state.service_pipeline.spec #=> String
    #   resp.deployment.initial_state.service_pipeline.template_major_version #=> String
    #   resp.deployment.initial_state.service_pipeline.template_minor_version #=> String
    #   resp.deployment.initial_state.service_pipeline.template_name #=> String
    #   resp.deployment.last_attempted_deployment_id #=> String
    #   resp.deployment.last_modified_at #=> Time
    #   resp.deployment.last_succeeded_deployment_id #=> String
    #   resp.deployment.service_instance_name #=> String
    #   resp.deployment.service_name #=> String
    #   resp.deployment.target_arn #=> String
    #   resp.deployment.target_resource_created_at #=> Time
    #   resp.deployment.target_resource_type #=> String, one of "ENVIRONMENT", "SERVICE_PIPELINE", "SERVICE_INSTANCE", "COMPONENT"
    #   resp.deployment.target_state.component.service_instance_name #=> String
    #   resp.deployment.target_state.component.service_name #=> String
    #   resp.deployment.target_state.component.service_spec #=> String
    #   resp.deployment.target_state.component.template_file #=> String
    #   resp.deployment.target_state.environment.spec #=> String
    #   resp.deployment.target_state.environment.template_major_version #=> String
    #   resp.deployment.target_state.environment.template_minor_version #=> String
    #   resp.deployment.target_state.environment.template_name #=> String
    #   resp.deployment.target_state.service_instance.last_successful_component_deployment_ids #=> Array
    #   resp.deployment.target_state.service_instance.last_successful_component_deployment_ids[0] #=> String
    #   resp.deployment.target_state.service_instance.last_successful_environment_deployment_id #=> String
    #   resp.deployment.target_state.service_instance.last_successful_service_pipeline_deployment_id #=> String
    #   resp.deployment.target_state.service_instance.spec #=> String
    #   resp.deployment.target_state.service_instance.template_major_version #=> String
    #   resp.deployment.target_state.service_instance.template_minor_version #=> String
    #   resp.deployment.target_state.service_instance.template_name #=> String
    #   resp.deployment.target_state.service_pipeline.spec #=> String
    #   resp.deployment.target_state.service_pipeline.template_major_version #=> String
    #   resp.deployment.target_state.service_pipeline.template_minor_version #=> String
    #   resp.deployment.target_state.service_pipeline.template_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/DeleteDeployment AWS API Documentation
    #
    # @overload delete_deployment(params = {})
    # @param [Hash] params ({})
    def delete_deployment(params = {}, options = {})
      req = build_request(:delete_deployment, params)
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
    #   resp.environment.codebuild_role_arn #=> String
    #   resp.environment.component_role_arn #=> String
    #   resp.environment.created_at #=> Time
    #   resp.environment.deployment_status #=> String, one of "IN_PROGRESS", "FAILED", "SUCCEEDED", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "CANCELLING", "CANCELLED"
    #   resp.environment.deployment_status_message #=> String
    #   resp.environment.description #=> String
    #   resp.environment.environment_account_connection_id #=> String
    #   resp.environment.environment_account_id #=> String
    #   resp.environment.last_attempted_deployment_id #=> String
    #   resp.environment.last_deployment_attempted_at #=> Time
    #   resp.environment.last_deployment_succeeded_at #=> Time
    #   resp.environment.last_succeeded_deployment_id #=> String
    #   resp.environment.name #=> String
    #   resp.environment.proton_service_role_arn #=> String
    #   resp.environment.provisioning #=> String, one of "CUSTOMER_MANAGED"
    #   resp.environment.provisioning_repository.arn #=> String
    #   resp.environment.provisioning_repository.branch #=> String
    #   resp.environment.provisioning_repository.name #=> String
    #   resp.environment.provisioning_repository.provider #=> String, one of "GITHUB", "GITHUB_ENTERPRISE", "BITBUCKET"
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
    # Proton environment, Proton *can’t* manage the environment
    # infrastructure resources until a new environment account connection is
    # accepted for the environment account and associated environment.
    # You're responsible for cleaning up provisioned resources that remain
    # without an environment connection.
    #
    # For more information, see [Environment account connections][1] in the
    # *Proton User guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/proton/latest/userguide/ag-env-account-connections.html
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
    #   resp.environment_account_connection.codebuild_role_arn #=> String
    #   resp.environment_account_connection.component_role_arn #=> String
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
    # template is a version that's not backward compatible.
    #
    # Delete a minor version of an environment template if it *isn't* the
    # `Recommended` version. Delete a `Recommended` minor version of the
    # environment template if no other minor versions of the environment
    # template exist. A minor version of an environment template is a
    # version that's backward compatible.
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

    # De-register and unlink your repository.
    #
    # @option params [required, String] :name
    #   The repository name.
    #
    # @option params [required, String] :provider
    #   The repository provider.
    #
    # @return [Types::DeleteRepositoryOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteRepositoryOutput#repository #repository} => Types::Repository
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_repository({
    #     name: "RepositoryName", # required
    #     provider: "GITHUB", # required, accepts GITHUB, GITHUB_ENTERPRISE, BITBUCKET
    #   })
    #
    # @example Response structure
    #
    #   resp.repository.arn #=> String
    #   resp.repository.connection_arn #=> String
    #   resp.repository.encryption_key #=> String
    #   resp.repository.name #=> String
    #   resp.repository.provider #=> String, one of "GITHUB", "GITHUB_ENTERPRISE", "BITBUCKET"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/DeleteRepository AWS API Documentation
    #
    # @overload delete_repository(params = {})
    # @param [Hash] params ({})
    def delete_repository(params = {}, options = {})
      req = build_request(:delete_repository, params)
      req.send_request(options)
    end

    # Delete a service, with its instances and pipeline.
    #
    # <note markdown="1"> You can't delete a service if it has any service instances that have
    # components attached to them.
    #
    #  For more information about components, see [Proton components][1] in
    # the *Proton User Guide*.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html
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
    #   resp.service.pipeline.last_attempted_deployment_id #=> String
    #   resp.service.pipeline.last_deployment_attempted_at #=> Time
    #   resp.service.pipeline.last_deployment_succeeded_at #=> Time
    #   resp.service.pipeline.last_succeeded_deployment_id #=> String
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

    # Delete the Proton Ops file.
    #
    # @option params [required, String] :service_name
    #   The name of the service that you want to delete the service sync
    #   configuration for.
    #
    # @return [Types::DeleteServiceSyncConfigOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteServiceSyncConfigOutput#service_sync_config #service_sync_config} => Types::ServiceSyncConfig
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_service_sync_config({
    #     service_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.service_sync_config.branch #=> String
    #   resp.service_sync_config.file_path #=> String
    #   resp.service_sync_config.repository_name #=> String
    #   resp.service_sync_config.repository_provider #=> String, one of "GITHUB", "GITHUB_ENTERPRISE", "BITBUCKET"
    #   resp.service_sync_config.service_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/DeleteServiceSyncConfig AWS API Documentation
    #
    # @overload delete_service_sync_config(params = {})
    # @param [Hash] params ({})
    def delete_service_sync_config(params = {}, options = {})
      req = build_request(:delete_service_sync_config, params)
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
    #   resp.service_template_version.supported_component_sources #=> Array
    #   resp.service_template_version.supported_component_sources[0] #=> String, one of "DIRECTLY_DEFINED"
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

    # Delete a template sync configuration.
    #
    # @option params [required, String] :template_name
    #   The template name.
    #
    # @option params [required, String] :template_type
    #   The template type.
    #
    # @return [Types::DeleteTemplateSyncConfigOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteTemplateSyncConfigOutput#template_sync_config #template_sync_config} => Types::TemplateSyncConfig
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_template_sync_config({
    #     template_name: "ResourceName", # required
    #     template_type: "ENVIRONMENT", # required, accepts ENVIRONMENT, SERVICE
    #   })
    #
    # @example Response structure
    #
    #   resp.template_sync_config.branch #=> String
    #   resp.template_sync_config.repository_name #=> String
    #   resp.template_sync_config.repository_provider #=> String, one of "GITHUB", "GITHUB_ENTERPRISE", "BITBUCKET"
    #   resp.template_sync_config.subdirectory #=> String
    #   resp.template_sync_config.template_name #=> String
    #   resp.template_sync_config.template_type #=> String, one of "ENVIRONMENT", "SERVICE"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/DeleteTemplateSyncConfig AWS API Documentation
    #
    # @overload delete_template_sync_config(params = {})
    # @param [Hash] params ({})
    def delete_template_sync_config(params = {}, options = {})
      req = build_request(:delete_template_sync_config, params)
      req.send_request(options)
    end

    # Get detail data for Proton account-wide settings.
    #
    # @return [Types::GetAccountSettingsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAccountSettingsOutput#account_settings #account_settings} => Types::AccountSettings
    #
    # @example Response structure
    #
    #   resp.account_settings.pipeline_codebuild_role_arn #=> String
    #   resp.account_settings.pipeline_provisioning_repository.arn #=> String
    #   resp.account_settings.pipeline_provisioning_repository.branch #=> String
    #   resp.account_settings.pipeline_provisioning_repository.name #=> String
    #   resp.account_settings.pipeline_provisioning_repository.provider #=> String, one of "GITHUB", "GITHUB_ENTERPRISE", "BITBUCKET"
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

    # Get detailed data for a component.
    #
    # For more information about components, see [Proton components][1] in
    # the *Proton User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html
    #
    # @option params [required, String] :name
    #   The name of the component that you want to get the detailed data for.
    #
    # @return [Types::GetComponentOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetComponentOutput#component #component} => Types::Component
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_component({
    #     name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.component.arn #=> String
    #   resp.component.created_at #=> Time
    #   resp.component.deployment_status #=> String, one of "IN_PROGRESS", "FAILED", "SUCCEEDED", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "CANCELLING", "CANCELLED"
    #   resp.component.deployment_status_message #=> String
    #   resp.component.description #=> String
    #   resp.component.environment_name #=> String
    #   resp.component.last_attempted_deployment_id #=> String
    #   resp.component.last_client_request_token #=> String
    #   resp.component.last_deployment_attempted_at #=> Time
    #   resp.component.last_deployment_succeeded_at #=> Time
    #   resp.component.last_modified_at #=> Time
    #   resp.component.last_succeeded_deployment_id #=> String
    #   resp.component.name #=> String
    #   resp.component.service_instance_name #=> String
    #   resp.component.service_name #=> String
    #   resp.component.service_spec #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * component_deleted
    #   * component_deployed
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/GetComponent AWS API Documentation
    #
    # @overload get_component(params = {})
    # @param [Hash] params ({})
    def get_component(params = {}, options = {})
      req = build_request(:get_component, params)
      req.send_request(options)
    end

    # Get detailed data for a deployment.
    #
    # @option params [String] :component_name
    #   The name of a component that you want to get the detailed data for.
    #
    # @option params [String] :environment_name
    #   The name of a environment that you want to get the detailed data for.
    #
    # @option params [required, String] :id
    #   The ID of the deployment that you want to get the detailed data for.
    #
    # @option params [String] :service_instance_name
    #   The name of the service instance associated with the given deployment
    #   ID. `serviceName` must be specified to identify the service instance.
    #
    # @option params [String] :service_name
    #   The name of the service associated with the given deployment ID.
    #
    # @return [Types::GetDeploymentOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDeploymentOutput#deployment #deployment} => Types::Deployment
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_deployment({
    #     component_name: "ResourceName",
    #     environment_name: "ResourceName",
    #     id: "DeploymentId", # required
    #     service_instance_name: "ResourceName",
    #     service_name: "ResourceName",
    #   })
    #
    # @example Response structure
    #
    #   resp.deployment.arn #=> String
    #   resp.deployment.completed_at #=> Time
    #   resp.deployment.component_name #=> String
    #   resp.deployment.created_at #=> Time
    #   resp.deployment.deployment_status #=> String, one of "IN_PROGRESS", "FAILED", "SUCCEEDED", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "CANCELLING", "CANCELLED"
    #   resp.deployment.deployment_status_message #=> String
    #   resp.deployment.environment_name #=> String
    #   resp.deployment.id #=> String
    #   resp.deployment.initial_state.component.service_instance_name #=> String
    #   resp.deployment.initial_state.component.service_name #=> String
    #   resp.deployment.initial_state.component.service_spec #=> String
    #   resp.deployment.initial_state.component.template_file #=> String
    #   resp.deployment.initial_state.environment.spec #=> String
    #   resp.deployment.initial_state.environment.template_major_version #=> String
    #   resp.deployment.initial_state.environment.template_minor_version #=> String
    #   resp.deployment.initial_state.environment.template_name #=> String
    #   resp.deployment.initial_state.service_instance.last_successful_component_deployment_ids #=> Array
    #   resp.deployment.initial_state.service_instance.last_successful_component_deployment_ids[0] #=> String
    #   resp.deployment.initial_state.service_instance.last_successful_environment_deployment_id #=> String
    #   resp.deployment.initial_state.service_instance.last_successful_service_pipeline_deployment_id #=> String
    #   resp.deployment.initial_state.service_instance.spec #=> String
    #   resp.deployment.initial_state.service_instance.template_major_version #=> String
    #   resp.deployment.initial_state.service_instance.template_minor_version #=> String
    #   resp.deployment.initial_state.service_instance.template_name #=> String
    #   resp.deployment.initial_state.service_pipeline.spec #=> String
    #   resp.deployment.initial_state.service_pipeline.template_major_version #=> String
    #   resp.deployment.initial_state.service_pipeline.template_minor_version #=> String
    #   resp.deployment.initial_state.service_pipeline.template_name #=> String
    #   resp.deployment.last_attempted_deployment_id #=> String
    #   resp.deployment.last_modified_at #=> Time
    #   resp.deployment.last_succeeded_deployment_id #=> String
    #   resp.deployment.service_instance_name #=> String
    #   resp.deployment.service_name #=> String
    #   resp.deployment.target_arn #=> String
    #   resp.deployment.target_resource_created_at #=> Time
    #   resp.deployment.target_resource_type #=> String, one of "ENVIRONMENT", "SERVICE_PIPELINE", "SERVICE_INSTANCE", "COMPONENT"
    #   resp.deployment.target_state.component.service_instance_name #=> String
    #   resp.deployment.target_state.component.service_name #=> String
    #   resp.deployment.target_state.component.service_spec #=> String
    #   resp.deployment.target_state.component.template_file #=> String
    #   resp.deployment.target_state.environment.spec #=> String
    #   resp.deployment.target_state.environment.template_major_version #=> String
    #   resp.deployment.target_state.environment.template_minor_version #=> String
    #   resp.deployment.target_state.environment.template_name #=> String
    #   resp.deployment.target_state.service_instance.last_successful_component_deployment_ids #=> Array
    #   resp.deployment.target_state.service_instance.last_successful_component_deployment_ids[0] #=> String
    #   resp.deployment.target_state.service_instance.last_successful_environment_deployment_id #=> String
    #   resp.deployment.target_state.service_instance.last_successful_service_pipeline_deployment_id #=> String
    #   resp.deployment.target_state.service_instance.spec #=> String
    #   resp.deployment.target_state.service_instance.template_major_version #=> String
    #   resp.deployment.target_state.service_instance.template_minor_version #=> String
    #   resp.deployment.target_state.service_instance.template_name #=> String
    #   resp.deployment.target_state.service_pipeline.spec #=> String
    #   resp.deployment.target_state.service_pipeline.template_major_version #=> String
    #   resp.deployment.target_state.service_pipeline.template_minor_version #=> String
    #   resp.deployment.target_state.service_pipeline.template_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/GetDeployment AWS API Documentation
    #
    # @overload get_deployment(params = {})
    # @param [Hash] params ({})
    def get_deployment(params = {}, options = {})
      req = build_request(:get_deployment, params)
      req.send_request(options)
    end

    # Get detailed data for an environment.
    #
    # @option params [required, String] :name
    #   The name of the environment that you want to get the detailed data
    #   for.
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
    #   resp.environment.codebuild_role_arn #=> String
    #   resp.environment.component_role_arn #=> String
    #   resp.environment.created_at #=> Time
    #   resp.environment.deployment_status #=> String, one of "IN_PROGRESS", "FAILED", "SUCCEEDED", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "CANCELLING", "CANCELLED"
    #   resp.environment.deployment_status_message #=> String
    #   resp.environment.description #=> String
    #   resp.environment.environment_account_connection_id #=> String
    #   resp.environment.environment_account_id #=> String
    #   resp.environment.last_attempted_deployment_id #=> String
    #   resp.environment.last_deployment_attempted_at #=> Time
    #   resp.environment.last_deployment_succeeded_at #=> Time
    #   resp.environment.last_succeeded_deployment_id #=> String
    #   resp.environment.name #=> String
    #   resp.environment.proton_service_role_arn #=> String
    #   resp.environment.provisioning #=> String, one of "CUSTOMER_MANAGED"
    #   resp.environment.provisioning_repository.arn #=> String
    #   resp.environment.provisioning_repository.branch #=> String
    #   resp.environment.provisioning_repository.name #=> String
    #   resp.environment.provisioning_repository.provider #=> String, one of "GITHUB", "GITHUB_ENTERPRISE", "BITBUCKET"
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

    # In an environment account, get the detailed data for an environment
    # account connection.
    #
    # For more information, see [Environment account connections][1] in the
    # *Proton User guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/proton/latest/userguide/ag-env-account-connections.html
    #
    # @option params [required, String] :id
    #   The ID of the environment account connection that you want to get the
    #   detailed data for.
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
    #   resp.environment_account_connection.codebuild_role_arn #=> String
    #   resp.environment_account_connection.component_role_arn #=> String
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

    # Get detailed data for an environment template.
    #
    # @option params [required, String] :name
    #   The name of the environment template that you want to get the detailed
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

    # Get detailed data for a major or minor version of an environment
    # template.
    #
    # @option params [required, String] :major_version
    #   To get environment template major version detail data, include `major
    #   Version`.
    #
    # @option params [required, String] :minor_version
    #   To get environment template minor version detail data, include
    #   `minorVersion`.
    #
    # @option params [required, String] :template_name
    #   The name of the environment template a version of which you want to
    #   get detailed data for.
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

    # Get detail data for a linked repository.
    #
    # @option params [required, String] :name
    #   The repository name, for example `myrepos/myrepo`.
    #
    # @option params [required, String] :provider
    #   The repository provider.
    #
    # @return [Types::GetRepositoryOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRepositoryOutput#repository #repository} => Types::Repository
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_repository({
    #     name: "RepositoryName", # required
    #     provider: "GITHUB", # required, accepts GITHUB, GITHUB_ENTERPRISE, BITBUCKET
    #   })
    #
    # @example Response structure
    #
    #   resp.repository.arn #=> String
    #   resp.repository.connection_arn #=> String
    #   resp.repository.encryption_key #=> String
    #   resp.repository.name #=> String
    #   resp.repository.provider #=> String, one of "GITHUB", "GITHUB_ENTERPRISE", "BITBUCKET"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/GetRepository AWS API Documentation
    #
    # @overload get_repository(params = {})
    # @param [Hash] params ({})
    def get_repository(params = {}, options = {})
      req = build_request(:get_repository, params)
      req.send_request(options)
    end

    # Get the sync status of a repository used for Proton template sync. For
    # more information about template sync, see .
    #
    # <note markdown="1"> A repository sync status isn't tied to the Proton Repository resource
    # (or any other Proton resource). Therefore, tags on an Proton
    # Repository resource have no effect on this action. Specifically, you
    # can't use these tags to control access to this action using
    # Attribute-based access control (ABAC).
    #
    #  For more information about ABAC, see [ABAC][1] in the *Proton User
    # Guide*.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/proton/latest/userguide/security_iam_service-with-iam.html#security_iam_service-with-iam-tags
    #
    # @option params [required, String] :branch
    #   The repository branch.
    #
    # @option params [required, String] :repository_name
    #   The repository name.
    #
    # @option params [required, String] :repository_provider
    #   The repository provider.
    #
    # @option params [required, String] :sync_type
    #   The repository sync type.
    #
    # @return [Types::GetRepositorySyncStatusOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRepositorySyncStatusOutput#latest_sync #latest_sync} => Types::RepositorySyncAttempt
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_repository_sync_status({
    #     branch: "GitBranchName", # required
    #     repository_name: "RepositoryName", # required
    #     repository_provider: "GITHUB", # required, accepts GITHUB, GITHUB_ENTERPRISE, BITBUCKET
    #     sync_type: "TEMPLATE_SYNC", # required, accepts TEMPLATE_SYNC, SERVICE_SYNC
    #   })
    #
    # @example Response structure
    #
    #   resp.latest_sync.events #=> Array
    #   resp.latest_sync.events[0].event #=> String
    #   resp.latest_sync.events[0].external_id #=> String
    #   resp.latest_sync.events[0].time #=> Time
    #   resp.latest_sync.events[0].type #=> String
    #   resp.latest_sync.started_at #=> Time
    #   resp.latest_sync.status #=> String, one of "INITIATED", "IN_PROGRESS", "SUCCEEDED", "FAILED", "QUEUED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/GetRepositorySyncStatus AWS API Documentation
    #
    # @overload get_repository_sync_status(params = {})
    # @param [Hash] params ({})
    def get_repository_sync_status(params = {}, options = {})
      req = build_request(:get_repository_sync_status, params)
      req.send_request(options)
    end

    # Get counts of Proton resources.
    #
    # For infrastructure-provisioning resources (environments, services,
    # service instances, pipelines), the action returns staleness counts. A
    # resource is stale when it's behind the recommended version of the
    # Proton template that it uses and it needs an update to become current.
    #
    # The action returns staleness counts (counts of resources that are
    # up-to-date, behind a template major version, or behind a template
    # minor version), the total number of resources, and the number of
    # resources that are in a failed state, grouped by resource type.
    # Components, environments, and service templates return less
    # information - see the `components`, `environments`, and
    # `serviceTemplates` field descriptions.
    #
    # For context, the action also returns the total number of each type of
    # Proton template in the Amazon Web Services account.
    #
    # For more information, see [Proton dashboard][1] in the *Proton User
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/proton/latest/userguide/monitoring-dashboard.html
    #
    # @return [Types::GetResourcesSummaryOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetResourcesSummaryOutput#counts #counts} => Types::CountsSummary
    #
    # @example Response structure
    #
    #   resp.counts.components.behind_major #=> Integer
    #   resp.counts.components.behind_minor #=> Integer
    #   resp.counts.components.failed #=> Integer
    #   resp.counts.components.total #=> Integer
    #   resp.counts.components.up_to_date #=> Integer
    #   resp.counts.environment_templates.behind_major #=> Integer
    #   resp.counts.environment_templates.behind_minor #=> Integer
    #   resp.counts.environment_templates.failed #=> Integer
    #   resp.counts.environment_templates.total #=> Integer
    #   resp.counts.environment_templates.up_to_date #=> Integer
    #   resp.counts.environments.behind_major #=> Integer
    #   resp.counts.environments.behind_minor #=> Integer
    #   resp.counts.environments.failed #=> Integer
    #   resp.counts.environments.total #=> Integer
    #   resp.counts.environments.up_to_date #=> Integer
    #   resp.counts.pipelines.behind_major #=> Integer
    #   resp.counts.pipelines.behind_minor #=> Integer
    #   resp.counts.pipelines.failed #=> Integer
    #   resp.counts.pipelines.total #=> Integer
    #   resp.counts.pipelines.up_to_date #=> Integer
    #   resp.counts.service_instances.behind_major #=> Integer
    #   resp.counts.service_instances.behind_minor #=> Integer
    #   resp.counts.service_instances.failed #=> Integer
    #   resp.counts.service_instances.total #=> Integer
    #   resp.counts.service_instances.up_to_date #=> Integer
    #   resp.counts.service_templates.behind_major #=> Integer
    #   resp.counts.service_templates.behind_minor #=> Integer
    #   resp.counts.service_templates.failed #=> Integer
    #   resp.counts.service_templates.total #=> Integer
    #   resp.counts.service_templates.up_to_date #=> Integer
    #   resp.counts.services.behind_major #=> Integer
    #   resp.counts.services.behind_minor #=> Integer
    #   resp.counts.services.failed #=> Integer
    #   resp.counts.services.total #=> Integer
    #   resp.counts.services.up_to_date #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/GetResourcesSummary AWS API Documentation
    #
    # @overload get_resources_summary(params = {})
    # @param [Hash] params ({})
    def get_resources_summary(params = {}, options = {})
      req = build_request(:get_resources_summary, params)
      req.send_request(options)
    end

    # Get detailed data for a service.
    #
    # @option params [required, String] :name
    #   The name of the service that you want to get the detailed data for.
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
    #   resp.service.pipeline.last_attempted_deployment_id #=> String
    #   resp.service.pipeline.last_deployment_attempted_at #=> Time
    #   resp.service.pipeline.last_deployment_succeeded_at #=> Time
    #   resp.service.pipeline.last_succeeded_deployment_id #=> String
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

    # Get detailed data for a service instance. A service instance is an
    # instantiation of service template and it runs in a specific
    # environment.
    #
    # @option params [required, String] :name
    #   The name of a service instance that you want to get the detailed data
    #   for.
    #
    # @option params [required, String] :service_name
    #   The name of the service that you want the service instance input for.
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
    #   resp.service_instance.last_attempted_deployment_id #=> String
    #   resp.service_instance.last_client_request_token #=> String
    #   resp.service_instance.last_deployment_attempted_at #=> Time
    #   resp.service_instance.last_deployment_succeeded_at #=> Time
    #   resp.service_instance.last_succeeded_deployment_id #=> String
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

    # Get the status of the synced service instance.
    #
    # @option params [required, String] :service_instance_name
    #   The name of the service instance that you want the sync status input
    #   for.
    #
    # @option params [required, String] :service_name
    #   The name of the service that the service instance belongs to.
    #
    # @return [Types::GetServiceInstanceSyncStatusOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetServiceInstanceSyncStatusOutput#desired_state #desired_state} => Types::Revision
    #   * {Types::GetServiceInstanceSyncStatusOutput#latest_successful_sync #latest_successful_sync} => Types::ResourceSyncAttempt
    #   * {Types::GetServiceInstanceSyncStatusOutput#latest_sync #latest_sync} => Types::ResourceSyncAttempt
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_service_instance_sync_status({
    #     service_instance_name: "ResourceName", # required
    #     service_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.desired_state.branch #=> String
    #   resp.desired_state.directory #=> String
    #   resp.desired_state.repository_name #=> String
    #   resp.desired_state.repository_provider #=> String, one of "GITHUB", "GITHUB_ENTERPRISE", "BITBUCKET"
    #   resp.desired_state.sha #=> String
    #   resp.latest_successful_sync.events #=> Array
    #   resp.latest_successful_sync.events[0].event #=> String
    #   resp.latest_successful_sync.events[0].external_id #=> String
    #   resp.latest_successful_sync.events[0].time #=> Time
    #   resp.latest_successful_sync.events[0].type #=> String
    #   resp.latest_successful_sync.initial_revision.branch #=> String
    #   resp.latest_successful_sync.initial_revision.directory #=> String
    #   resp.latest_successful_sync.initial_revision.repository_name #=> String
    #   resp.latest_successful_sync.initial_revision.repository_provider #=> String, one of "GITHUB", "GITHUB_ENTERPRISE", "BITBUCKET"
    #   resp.latest_successful_sync.initial_revision.sha #=> String
    #   resp.latest_successful_sync.started_at #=> Time
    #   resp.latest_successful_sync.status #=> String, one of "INITIATED", "IN_PROGRESS", "SUCCEEDED", "FAILED"
    #   resp.latest_successful_sync.target #=> String
    #   resp.latest_successful_sync.target_revision.branch #=> String
    #   resp.latest_successful_sync.target_revision.directory #=> String
    #   resp.latest_successful_sync.target_revision.repository_name #=> String
    #   resp.latest_successful_sync.target_revision.repository_provider #=> String, one of "GITHUB", "GITHUB_ENTERPRISE", "BITBUCKET"
    #   resp.latest_successful_sync.target_revision.sha #=> String
    #   resp.latest_sync.events #=> Array
    #   resp.latest_sync.events[0].event #=> String
    #   resp.latest_sync.events[0].external_id #=> String
    #   resp.latest_sync.events[0].time #=> Time
    #   resp.latest_sync.events[0].type #=> String
    #   resp.latest_sync.initial_revision.branch #=> String
    #   resp.latest_sync.initial_revision.directory #=> String
    #   resp.latest_sync.initial_revision.repository_name #=> String
    #   resp.latest_sync.initial_revision.repository_provider #=> String, one of "GITHUB", "GITHUB_ENTERPRISE", "BITBUCKET"
    #   resp.latest_sync.initial_revision.sha #=> String
    #   resp.latest_sync.started_at #=> Time
    #   resp.latest_sync.status #=> String, one of "INITIATED", "IN_PROGRESS", "SUCCEEDED", "FAILED"
    #   resp.latest_sync.target #=> String
    #   resp.latest_sync.target_revision.branch #=> String
    #   resp.latest_sync.target_revision.directory #=> String
    #   resp.latest_sync.target_revision.repository_name #=> String
    #   resp.latest_sync.target_revision.repository_provider #=> String, one of "GITHUB", "GITHUB_ENTERPRISE", "BITBUCKET"
    #   resp.latest_sync.target_revision.sha #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/GetServiceInstanceSyncStatus AWS API Documentation
    #
    # @overload get_service_instance_sync_status(params = {})
    # @param [Hash] params ({})
    def get_service_instance_sync_status(params = {}, options = {})
      req = build_request(:get_service_instance_sync_status, params)
      req.send_request(options)
    end

    # Get detailed data for the service sync blocker summary.
    #
    # @option params [String] :service_instance_name
    #   The name of the service instance that you want to get the service sync
    #   blocker summary for. If given bothe the instance name and the service
    #   name, only the instance is blocked.
    #
    # @option params [required, String] :service_name
    #   The name of the service that you want to get the service sync blocker
    #   summary for. If given only the service name, all instances are
    #   blocked.
    #
    # @return [Types::GetServiceSyncBlockerSummaryOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetServiceSyncBlockerSummaryOutput#service_sync_blocker_summary #service_sync_blocker_summary} => Types::ServiceSyncBlockerSummary
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_service_sync_blocker_summary({
    #     service_instance_name: "ResourceName",
    #     service_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.service_sync_blocker_summary.latest_blockers #=> Array
    #   resp.service_sync_blocker_summary.latest_blockers[0].contexts #=> Array
    #   resp.service_sync_blocker_summary.latest_blockers[0].contexts[0].key #=> String
    #   resp.service_sync_blocker_summary.latest_blockers[0].contexts[0].value #=> String
    #   resp.service_sync_blocker_summary.latest_blockers[0].created_at #=> Time
    #   resp.service_sync_blocker_summary.latest_blockers[0].created_reason #=> String
    #   resp.service_sync_blocker_summary.latest_blockers[0].id #=> String
    #   resp.service_sync_blocker_summary.latest_blockers[0].resolved_at #=> Time
    #   resp.service_sync_blocker_summary.latest_blockers[0].resolved_reason #=> String
    #   resp.service_sync_blocker_summary.latest_blockers[0].status #=> String, one of "ACTIVE", "RESOLVED"
    #   resp.service_sync_blocker_summary.latest_blockers[0].type #=> String, one of "AUTOMATED"
    #   resp.service_sync_blocker_summary.service_instance_name #=> String
    #   resp.service_sync_blocker_summary.service_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/GetServiceSyncBlockerSummary AWS API Documentation
    #
    # @overload get_service_sync_blocker_summary(params = {})
    # @param [Hash] params ({})
    def get_service_sync_blocker_summary(params = {}, options = {})
      req = build_request(:get_service_sync_blocker_summary, params)
      req.send_request(options)
    end

    # Get detailed information for the service sync configuration.
    #
    # @option params [required, String] :service_name
    #   The name of the service that you want to get the service sync
    #   configuration for.
    #
    # @return [Types::GetServiceSyncConfigOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetServiceSyncConfigOutput#service_sync_config #service_sync_config} => Types::ServiceSyncConfig
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_service_sync_config({
    #     service_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.service_sync_config.branch #=> String
    #   resp.service_sync_config.file_path #=> String
    #   resp.service_sync_config.repository_name #=> String
    #   resp.service_sync_config.repository_provider #=> String, one of "GITHUB", "GITHUB_ENTERPRISE", "BITBUCKET"
    #   resp.service_sync_config.service_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/GetServiceSyncConfig AWS API Documentation
    #
    # @overload get_service_sync_config(params = {})
    # @param [Hash] params ({})
    def get_service_sync_config(params = {}, options = {})
      req = build_request(:get_service_sync_config, params)
      req.send_request(options)
    end

    # Get detailed data for a service template.
    #
    # @option params [required, String] :name
    #   The name of the service template that you want to get detailed data
    #   for.
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

    # Get detailed data for a major or minor version of a service template.
    #
    # @option params [required, String] :major_version
    #   To get service template major version detail data, include `major
    #   Version`.
    #
    # @option params [required, String] :minor_version
    #   To get service template minor version detail data, include
    #   `minorVersion`.
    #
    # @option params [required, String] :template_name
    #   The name of the service template a version of which you want to get
    #   detailed data for.
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
    #   resp.service_template_version.supported_component_sources #=> Array
    #   resp.service_template_version.supported_component_sources[0] #=> String, one of "DIRECTLY_DEFINED"
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

    # Get detail data for a template sync configuration.
    #
    # @option params [required, String] :template_name
    #   The template name.
    #
    # @option params [required, String] :template_type
    #   The template type.
    #
    # @return [Types::GetTemplateSyncConfigOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTemplateSyncConfigOutput#template_sync_config #template_sync_config} => Types::TemplateSyncConfig
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_template_sync_config({
    #     template_name: "ResourceName", # required
    #     template_type: "ENVIRONMENT", # required, accepts ENVIRONMENT, SERVICE
    #   })
    #
    # @example Response structure
    #
    #   resp.template_sync_config.branch #=> String
    #   resp.template_sync_config.repository_name #=> String
    #   resp.template_sync_config.repository_provider #=> String, one of "GITHUB", "GITHUB_ENTERPRISE", "BITBUCKET"
    #   resp.template_sync_config.subdirectory #=> String
    #   resp.template_sync_config.template_name #=> String
    #   resp.template_sync_config.template_type #=> String, one of "ENVIRONMENT", "SERVICE"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/GetTemplateSyncConfig AWS API Documentation
    #
    # @overload get_template_sync_config(params = {})
    # @param [Hash] params ({})
    def get_template_sync_config(params = {}, options = {})
      req = build_request(:get_template_sync_config, params)
      req.send_request(options)
    end

    # Get the status of a template sync.
    #
    # @option params [required, String] :template_name
    #   The template name.
    #
    # @option params [required, String] :template_type
    #   The template type.
    #
    # @option params [required, String] :template_version
    #   The template major version.
    #
    # @return [Types::GetTemplateSyncStatusOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTemplateSyncStatusOutput#desired_state #desired_state} => Types::Revision
    #   * {Types::GetTemplateSyncStatusOutput#latest_successful_sync #latest_successful_sync} => Types::ResourceSyncAttempt
    #   * {Types::GetTemplateSyncStatusOutput#latest_sync #latest_sync} => Types::ResourceSyncAttempt
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_template_sync_status({
    #     template_name: "ResourceName", # required
    #     template_type: "ENVIRONMENT", # required, accepts ENVIRONMENT, SERVICE
    #     template_version: "TemplateVersionPart", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.desired_state.branch #=> String
    #   resp.desired_state.directory #=> String
    #   resp.desired_state.repository_name #=> String
    #   resp.desired_state.repository_provider #=> String, one of "GITHUB", "GITHUB_ENTERPRISE", "BITBUCKET"
    #   resp.desired_state.sha #=> String
    #   resp.latest_successful_sync.events #=> Array
    #   resp.latest_successful_sync.events[0].event #=> String
    #   resp.latest_successful_sync.events[0].external_id #=> String
    #   resp.latest_successful_sync.events[0].time #=> Time
    #   resp.latest_successful_sync.events[0].type #=> String
    #   resp.latest_successful_sync.initial_revision.branch #=> String
    #   resp.latest_successful_sync.initial_revision.directory #=> String
    #   resp.latest_successful_sync.initial_revision.repository_name #=> String
    #   resp.latest_successful_sync.initial_revision.repository_provider #=> String, one of "GITHUB", "GITHUB_ENTERPRISE", "BITBUCKET"
    #   resp.latest_successful_sync.initial_revision.sha #=> String
    #   resp.latest_successful_sync.started_at #=> Time
    #   resp.latest_successful_sync.status #=> String, one of "INITIATED", "IN_PROGRESS", "SUCCEEDED", "FAILED"
    #   resp.latest_successful_sync.target #=> String
    #   resp.latest_successful_sync.target_revision.branch #=> String
    #   resp.latest_successful_sync.target_revision.directory #=> String
    #   resp.latest_successful_sync.target_revision.repository_name #=> String
    #   resp.latest_successful_sync.target_revision.repository_provider #=> String, one of "GITHUB", "GITHUB_ENTERPRISE", "BITBUCKET"
    #   resp.latest_successful_sync.target_revision.sha #=> String
    #   resp.latest_sync.events #=> Array
    #   resp.latest_sync.events[0].event #=> String
    #   resp.latest_sync.events[0].external_id #=> String
    #   resp.latest_sync.events[0].time #=> Time
    #   resp.latest_sync.events[0].type #=> String
    #   resp.latest_sync.initial_revision.branch #=> String
    #   resp.latest_sync.initial_revision.directory #=> String
    #   resp.latest_sync.initial_revision.repository_name #=> String
    #   resp.latest_sync.initial_revision.repository_provider #=> String, one of "GITHUB", "GITHUB_ENTERPRISE", "BITBUCKET"
    #   resp.latest_sync.initial_revision.sha #=> String
    #   resp.latest_sync.started_at #=> Time
    #   resp.latest_sync.status #=> String, one of "INITIATED", "IN_PROGRESS", "SUCCEEDED", "FAILED"
    #   resp.latest_sync.target #=> String
    #   resp.latest_sync.target_revision.branch #=> String
    #   resp.latest_sync.target_revision.directory #=> String
    #   resp.latest_sync.target_revision.repository_name #=> String
    #   resp.latest_sync.target_revision.repository_provider #=> String, one of "GITHUB", "GITHUB_ENTERPRISE", "BITBUCKET"
    #   resp.latest_sync.target_revision.sha #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/GetTemplateSyncStatus AWS API Documentation
    #
    # @overload get_template_sync_status(params = {})
    # @param [Hash] params ({})
    def get_template_sync_status(params = {}, options = {})
      req = build_request(:get_template_sync_status, params)
      req.send_request(options)
    end

    # Get a list of component Infrastructure as Code (IaC) outputs.
    #
    # For more information about components, see [Proton components][1] in
    # the *Proton User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html
    #
    # @option params [required, String] :component_name
    #   The name of the component whose outputs you want.
    #
    # @option params [String] :deployment_id
    #   The ID of the deployment whose outputs you want.
    #
    # @option params [String] :next_token
    #   A token that indicates the location of the next output in the array of
    #   outputs, after the list of outputs that was previously requested.
    #
    # @return [Types::ListComponentOutputsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListComponentOutputsOutput#next_token #next_token} => String
    #   * {Types::ListComponentOutputsOutput#outputs #outputs} => Array&lt;Types::Output&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_component_outputs({
    #     component_name: "ResourceName", # required
    #     deployment_id: "DeploymentId",
    #     next_token: "EmptyNextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.outputs #=> Array
    #   resp.outputs[0].key #=> String
    #   resp.outputs[0].value_string #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/ListComponentOutputs AWS API Documentation
    #
    # @overload list_component_outputs(params = {})
    # @param [Hash] params ({})
    def list_component_outputs(params = {}, options = {})
      req = build_request(:list_component_outputs, params)
      req.send_request(options)
    end

    # List provisioned resources for a component with details.
    #
    # For more information about components, see [Proton components][1] in
    # the *Proton User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html
    #
    # @option params [required, String] :component_name
    #   The name of the component whose provisioned resources you want.
    #
    # @option params [String] :next_token
    #   A token that indicates the location of the next provisioned resource
    #   in the array of provisioned resources, after the list of provisioned
    #   resources that was previously requested.
    #
    # @return [Types::ListComponentProvisionedResourcesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListComponentProvisionedResourcesOutput#next_token #next_token} => String
    #   * {Types::ListComponentProvisionedResourcesOutput#provisioned_resources #provisioned_resources} => Array&lt;Types::ProvisionedResource&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_component_provisioned_resources({
    #     component_name: "ResourceName", # required
    #     next_token: "EmptyNextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.provisioned_resources #=> Array
    #   resp.provisioned_resources[0].identifier #=> String
    #   resp.provisioned_resources[0].name #=> String
    #   resp.provisioned_resources[0].provisioning_engine #=> String, one of "CLOUDFORMATION", "TERRAFORM"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/ListComponentProvisionedResources AWS API Documentation
    #
    # @overload list_component_provisioned_resources(params = {})
    # @param [Hash] params ({})
    def list_component_provisioned_resources(params = {}, options = {})
      req = build_request(:list_component_provisioned_resources, params)
      req.send_request(options)
    end

    # List components with summary data. You can filter the result list by
    # environment, service, or a single service instance.
    #
    # For more information about components, see [Proton components][1] in
    # the *Proton User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html
    #
    # @option params [String] :environment_name
    #   The name of an environment for result list filtering. Proton returns
    #   components associated with the environment or attached to service
    #   instances running in it.
    #
    # @option params [Integer] :max_results
    #   The maximum number of components to list.
    #
    # @option params [String] :next_token
    #   A token that indicates the location of the next component in the array
    #   of components, after the list of components that was previously
    #   requested.
    #
    # @option params [String] :service_instance_name
    #   The name of a service instance for result list filtering. Proton
    #   returns the component attached to the service instance, if any.
    #
    # @option params [String] :service_name
    #   The name of a service for result list filtering. Proton returns
    #   components attached to service instances of the service.
    #
    # @return [Types::ListComponentsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListComponentsOutput#components #components} => Array&lt;Types::ComponentSummary&gt;
    #   * {Types::ListComponentsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_components({
    #     environment_name: "ResourceName",
    #     max_results: 1,
    #     next_token: "NextToken",
    #     service_instance_name: "ResourceName",
    #     service_name: "ResourceName",
    #   })
    #
    # @example Response structure
    #
    #   resp.components #=> Array
    #   resp.components[0].arn #=> String
    #   resp.components[0].created_at #=> Time
    #   resp.components[0].deployment_status #=> String, one of "IN_PROGRESS", "FAILED", "SUCCEEDED", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "CANCELLING", "CANCELLED"
    #   resp.components[0].deployment_status_message #=> String
    #   resp.components[0].environment_name #=> String
    #   resp.components[0].last_attempted_deployment_id #=> String
    #   resp.components[0].last_deployment_attempted_at #=> Time
    #   resp.components[0].last_deployment_succeeded_at #=> Time
    #   resp.components[0].last_modified_at #=> Time
    #   resp.components[0].last_succeeded_deployment_id #=> String
    #   resp.components[0].name #=> String
    #   resp.components[0].service_instance_name #=> String
    #   resp.components[0].service_name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/ListComponents AWS API Documentation
    #
    # @overload list_components(params = {})
    # @param [Hash] params ({})
    def list_components(params = {}, options = {})
      req = build_request(:list_components, params)
      req.send_request(options)
    end

    # List deployments. You can filter the result list by environment,
    # service, or a single service instance.
    #
    # @option params [String] :component_name
    #   The name of a component for result list filtering. Proton returns
    #   deployments associated with that component.
    #
    # @option params [String] :environment_name
    #   The name of an environment for result list filtering. Proton returns
    #   deployments associated with the environment.
    #
    # @option params [Integer] :max_results
    #   The maximum number of deployments to list.
    #
    # @option params [String] :next_token
    #   A token that indicates the location of the next deployment in the
    #   array of deployment, after the list of deployment that was previously
    #   requested.
    #
    # @option params [String] :service_instance_name
    #   The name of a service instance for result list filtering. Proton
    #   returns the deployments associated with the service instance.
    #
    # @option params [String] :service_name
    #   The name of a service for result list filtering. Proton returns
    #   deployments associated with service instances of the service.
    #
    # @return [Types::ListDeploymentsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDeploymentsOutput#deployments #deployments} => Array&lt;Types::DeploymentSummary&gt;
    #   * {Types::ListDeploymentsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_deployments({
    #     component_name: "ResourceName",
    #     environment_name: "ResourceName",
    #     max_results: 1,
    #     next_token: "NextToken",
    #     service_instance_name: "ResourceName",
    #     service_name: "ResourceName",
    #   })
    #
    # @example Response structure
    #
    #   resp.deployments #=> Array
    #   resp.deployments[0].arn #=> String
    #   resp.deployments[0].completed_at #=> Time
    #   resp.deployments[0].component_name #=> String
    #   resp.deployments[0].created_at #=> Time
    #   resp.deployments[0].deployment_status #=> String, one of "IN_PROGRESS", "FAILED", "SUCCEEDED", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "CANCELLING", "CANCELLED"
    #   resp.deployments[0].environment_name #=> String
    #   resp.deployments[0].id #=> String
    #   resp.deployments[0].last_attempted_deployment_id #=> String
    #   resp.deployments[0].last_modified_at #=> Time
    #   resp.deployments[0].last_succeeded_deployment_id #=> String
    #   resp.deployments[0].service_instance_name #=> String
    #   resp.deployments[0].service_name #=> String
    #   resp.deployments[0].target_arn #=> String
    #   resp.deployments[0].target_resource_created_at #=> Time
    #   resp.deployments[0].target_resource_type #=> String, one of "ENVIRONMENT", "SERVICE_PIPELINE", "SERVICE_INSTANCE", "COMPONENT"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/ListDeployments AWS API Documentation
    #
    # @overload list_deployments(params = {})
    # @param [Hash] params ({})
    def list_deployments(params = {}, options = {})
      req = build_request(:list_deployments, params)
      req.send_request(options)
    end

    # View a list of environment account connections.
    #
    # For more information, see [Environment account connections][1] in the
    # *Proton User guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/proton/latest/userguide/ag-env-account-connections.html
    #
    # @option params [String] :environment_name
    #   The environment name that's associated with each listed environment
    #   account connection.
    #
    # @option params [Integer] :max_results
    #   The maximum number of environment account connections to list.
    #
    # @option params [String] :next_token
    #   A token that indicates the location of the next environment account
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
    #   resp.environment_account_connections[0].component_role_arn #=> String
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

    # List the infrastructure as code outputs for your environment.
    #
    # @option params [String] :deployment_id
    #   The ID of the deployment whose outputs you want.
    #
    # @option params [required, String] :environment_name
    #   The environment name.
    #
    # @option params [String] :next_token
    #   A token that indicates the location of the next environment output in
    #   the array of environment outputs, after the list of environment
    #   outputs that was previously requested.
    #
    # @return [Types::ListEnvironmentOutputsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEnvironmentOutputsOutput#next_token #next_token} => String
    #   * {Types::ListEnvironmentOutputsOutput#outputs #outputs} => Array&lt;Types::Output&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_environment_outputs({
    #     deployment_id: "DeploymentId",
    #     environment_name: "ResourceName", # required
    #     next_token: "EmptyNextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.outputs #=> Array
    #   resp.outputs[0].key #=> String
    #   resp.outputs[0].value_string #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/ListEnvironmentOutputs AWS API Documentation
    #
    # @overload list_environment_outputs(params = {})
    # @param [Hash] params ({})
    def list_environment_outputs(params = {}, options = {})
      req = build_request(:list_environment_outputs, params)
      req.send_request(options)
    end

    # List the provisioned resources for your environment.
    #
    # @option params [required, String] :environment_name
    #   The environment name.
    #
    # @option params [String] :next_token
    #   A token that indicates the location of the next environment
    #   provisioned resource in the array of environment provisioned
    #   resources, after the list of environment provisioned resources that
    #   was previously requested.
    #
    # @return [Types::ListEnvironmentProvisionedResourcesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEnvironmentProvisionedResourcesOutput#next_token #next_token} => String
    #   * {Types::ListEnvironmentProvisionedResourcesOutput#provisioned_resources #provisioned_resources} => Array&lt;Types::ProvisionedResource&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_environment_provisioned_resources({
    #     environment_name: "ResourceName", # required
    #     next_token: "EmptyNextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.provisioned_resources #=> Array
    #   resp.provisioned_resources[0].identifier #=> String
    #   resp.provisioned_resources[0].name #=> String
    #   resp.provisioned_resources[0].provisioning_engine #=> String, one of "CLOUDFORMATION", "TERRAFORM"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/ListEnvironmentProvisionedResources AWS API Documentation
    #
    # @overload list_environment_provisioned_resources(params = {})
    # @param [Hash] params ({})
    def list_environment_provisioned_resources(params = {}, options = {})
      req = build_request(:list_environment_provisioned_resources, params)
      req.send_request(options)
    end

    # List major or minor versions of an environment template with detail
    # data.
    #
    # @option params [String] :major_version
    #   To view a list of minor of versions under a major version of an
    #   environment template, include `major Version`.
    #
    #   To view a list of major versions of an environment template, *exclude*
    #   `major Version`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of major or minor versions of an environment
    #   template to list.
    #
    # @option params [String] :next_token
    #   A token that indicates the location of the next major or minor version
    #   in the array of major or minor versions of an environment template,
    #   after the list of major or minor versions that was previously
    #   requested.
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
    #   A token that indicates the location of the next environment template
    #   in the array of environment templates, after the list of environment
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
    #   A token that indicates the location of the next environment in the
    #   array of environments, after the list of environments that was
    #   previously requested.
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
    #   resp.environments[0].component_role_arn #=> String
    #   resp.environments[0].created_at #=> Time
    #   resp.environments[0].deployment_status #=> String, one of "IN_PROGRESS", "FAILED", "SUCCEEDED", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "CANCELLING", "CANCELLED"
    #   resp.environments[0].deployment_status_message #=> String
    #   resp.environments[0].description #=> String
    #   resp.environments[0].environment_account_connection_id #=> String
    #   resp.environments[0].environment_account_id #=> String
    #   resp.environments[0].last_attempted_deployment_id #=> String
    #   resp.environments[0].last_deployment_attempted_at #=> Time
    #   resp.environments[0].last_deployment_succeeded_at #=> Time
    #   resp.environments[0].last_succeeded_deployment_id #=> String
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

    # List linked repositories with detail data.
    #
    # @option params [Integer] :max_results
    #   The maximum number of repositories to list.
    #
    # @option params [String] :next_token
    #   A token that indicates the location of the next repository in the
    #   array of repositories, after the list of repositories previously
    #   requested.
    #
    # @return [Types::ListRepositoriesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRepositoriesOutput#next_token #next_token} => String
    #   * {Types::ListRepositoriesOutput#repositories #repositories} => Array&lt;Types::RepositorySummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_repositories({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.repositories #=> Array
    #   resp.repositories[0].arn #=> String
    #   resp.repositories[0].connection_arn #=> String
    #   resp.repositories[0].name #=> String
    #   resp.repositories[0].provider #=> String, one of "GITHUB", "GITHUB_ENTERPRISE", "BITBUCKET"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/ListRepositories AWS API Documentation
    #
    # @overload list_repositories(params = {})
    # @param [Hash] params ({})
    def list_repositories(params = {}, options = {})
      req = build_request(:list_repositories, params)
      req.send_request(options)
    end

    # List repository sync definitions with detail data.
    #
    # @option params [String] :next_token
    #   A token that indicates the location of the next repository sync
    #   definition in the array of repository sync definitions, after the list
    #   of repository sync definitions previously requested.
    #
    # @option params [required, String] :repository_name
    #   The repository name.
    #
    # @option params [required, String] :repository_provider
    #   The repository provider.
    #
    # @option params [required, String] :sync_type
    #   The sync type. The only supported value is `TEMPLATE_SYNC`.
    #
    # @return [Types::ListRepositorySyncDefinitionsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRepositorySyncDefinitionsOutput#next_token #next_token} => String
    #   * {Types::ListRepositorySyncDefinitionsOutput#sync_definitions #sync_definitions} => Array&lt;Types::RepositorySyncDefinition&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_repository_sync_definitions({
    #     next_token: "EmptyNextToken",
    #     repository_name: "RepositoryName", # required
    #     repository_provider: "GITHUB", # required, accepts GITHUB, GITHUB_ENTERPRISE, BITBUCKET
    #     sync_type: "TEMPLATE_SYNC", # required, accepts TEMPLATE_SYNC, SERVICE_SYNC
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.sync_definitions #=> Array
    #   resp.sync_definitions[0].branch #=> String
    #   resp.sync_definitions[0].directory #=> String
    #   resp.sync_definitions[0].parent #=> String
    #   resp.sync_definitions[0].target #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/ListRepositorySyncDefinitions AWS API Documentation
    #
    # @overload list_repository_sync_definitions(params = {})
    # @param [Hash] params ({})
    def list_repository_sync_definitions(params = {}, options = {})
      req = build_request(:list_repository_sync_definitions, params)
      req.send_request(options)
    end

    # Get a list service of instance Infrastructure as Code (IaC) outputs.
    #
    # @option params [String] :deployment_id
    #   The ID of the deployment whose outputs you want.
    #
    # @option params [String] :next_token
    #   A token that indicates the location of the next output in the array of
    #   outputs, after the list of outputs that was previously requested.
    #
    # @option params [required, String] :service_instance_name
    #   The name of the service instance whose outputs you want.
    #
    # @option params [required, String] :service_name
    #   The name of the service that `serviceInstanceName` is associated to.
    #
    # @return [Types::ListServiceInstanceOutputsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListServiceInstanceOutputsOutput#next_token #next_token} => String
    #   * {Types::ListServiceInstanceOutputsOutput#outputs #outputs} => Array&lt;Types::Output&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_service_instance_outputs({
    #     deployment_id: "DeploymentId",
    #     next_token: "EmptyNextToken",
    #     service_instance_name: "ResourceName", # required
    #     service_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.outputs #=> Array
    #   resp.outputs[0].key #=> String
    #   resp.outputs[0].value_string #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/ListServiceInstanceOutputs AWS API Documentation
    #
    # @overload list_service_instance_outputs(params = {})
    # @param [Hash] params ({})
    def list_service_instance_outputs(params = {}, options = {})
      req = build_request(:list_service_instance_outputs, params)
      req.send_request(options)
    end

    # List provisioned resources for a service instance with details.
    #
    # @option params [String] :next_token
    #   A token that indicates the location of the next provisioned resource
    #   in the array of provisioned resources, after the list of provisioned
    #   resources that was previously requested.
    #
    # @option params [required, String] :service_instance_name
    #   The name of the service instance whose provisioned resources you want.
    #
    # @option params [required, String] :service_name
    #   The name of the service that `serviceInstanceName` is associated to.
    #
    # @return [Types::ListServiceInstanceProvisionedResourcesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListServiceInstanceProvisionedResourcesOutput#next_token #next_token} => String
    #   * {Types::ListServiceInstanceProvisionedResourcesOutput#provisioned_resources #provisioned_resources} => Array&lt;Types::ProvisionedResource&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_service_instance_provisioned_resources({
    #     next_token: "EmptyNextToken",
    #     service_instance_name: "ResourceName", # required
    #     service_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.provisioned_resources #=> Array
    #   resp.provisioned_resources[0].identifier #=> String
    #   resp.provisioned_resources[0].name #=> String
    #   resp.provisioned_resources[0].provisioning_engine #=> String, one of "CLOUDFORMATION", "TERRAFORM"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/ListServiceInstanceProvisionedResources AWS API Documentation
    #
    # @overload list_service_instance_provisioned_resources(params = {})
    # @param [Hash] params ({})
    def list_service_instance_provisioned_resources(params = {}, options = {})
      req = build_request(:list_service_instance_provisioned_resources, params)
      req.send_request(options)
    end

    # List service instances with summary data. This action lists service
    # instances of all services in the Amazon Web Services account.
    #
    # @option params [Array<Types::ListServiceInstancesFilter>] :filters
    #   An array of filtering criteria that scope down the result list. By
    #   default, all service instances in the Amazon Web Services account are
    #   returned.
    #
    # @option params [Integer] :max_results
    #   The maximum number of service instances to list.
    #
    # @option params [String] :next_token
    #   A token that indicates the location of the next service in the array
    #   of service instances, after the list of service instances that was
    #   previously requested.
    #
    # @option params [String] :service_name
    #   The name of the service that the service instance belongs to.
    #
    # @option params [String] :sort_by
    #   The field that the result list is sorted by.
    #
    #   When you choose to sort by `serviceName`, service instances within
    #   each service are sorted by service instance name.
    #
    #   Default: `serviceName`
    #
    # @option params [String] :sort_order
    #   Result list sort order.
    #
    #   Default: `ASCENDING`
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
    #     filters: [
    #       {
    #         key: "name", # accepts name, deploymentStatus, templateName, serviceName, deployedTemplateVersionStatus, environmentName, lastDeploymentAttemptedAtBefore, lastDeploymentAttemptedAtAfter, createdAtBefore, createdAtAfter
    #         value: "ListServiceInstancesFilterValue",
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken",
    #     service_name: "ResourceName",
    #     sort_by: "name", # accepts name, deploymentStatus, templateName, serviceName, environmentName, lastDeploymentAttemptedAt, createdAt
    #     sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
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
    #   resp.service_instances[0].last_attempted_deployment_id #=> String
    #   resp.service_instances[0].last_deployment_attempted_at #=> Time
    #   resp.service_instances[0].last_deployment_succeeded_at #=> Time
    #   resp.service_instances[0].last_succeeded_deployment_id #=> String
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

    # Get a list of service pipeline Infrastructure as Code (IaC) outputs.
    #
    # @option params [String] :deployment_id
    #   The ID of the deployment you want the outputs for.
    #
    # @option params [String] :next_token
    #   A token that indicates the location of the next output in the array of
    #   outputs, after the list of outputs that was previously requested.
    #
    # @option params [required, String] :service_name
    #   The name of the service whose pipeline's outputs you want.
    #
    # @return [Types::ListServicePipelineOutputsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListServicePipelineOutputsOutput#next_token #next_token} => String
    #   * {Types::ListServicePipelineOutputsOutput#outputs #outputs} => Array&lt;Types::Output&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_service_pipeline_outputs({
    #     deployment_id: "DeploymentId",
    #     next_token: "EmptyNextToken",
    #     service_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.outputs #=> Array
    #   resp.outputs[0].key #=> String
    #   resp.outputs[0].value_string #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/ListServicePipelineOutputs AWS API Documentation
    #
    # @overload list_service_pipeline_outputs(params = {})
    # @param [Hash] params ({})
    def list_service_pipeline_outputs(params = {}, options = {})
      req = build_request(:list_service_pipeline_outputs, params)
      req.send_request(options)
    end

    # List provisioned resources for a service and pipeline with details.
    #
    # @option params [String] :next_token
    #   A token that indicates the location of the next provisioned resource
    #   in the array of provisioned resources, after the list of provisioned
    #   resources that was previously requested.
    #
    # @option params [required, String] :service_name
    #   The name of the service whose pipeline's provisioned resources you
    #   want.
    #
    # @return [Types::ListServicePipelineProvisionedResourcesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListServicePipelineProvisionedResourcesOutput#next_token #next_token} => String
    #   * {Types::ListServicePipelineProvisionedResourcesOutput#provisioned_resources #provisioned_resources} => Array&lt;Types::ProvisionedResource&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_service_pipeline_provisioned_resources({
    #     next_token: "EmptyNextToken",
    #     service_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.provisioned_resources #=> Array
    #   resp.provisioned_resources[0].identifier #=> String
    #   resp.provisioned_resources[0].name #=> String
    #   resp.provisioned_resources[0].provisioning_engine #=> String, one of "CLOUDFORMATION", "TERRAFORM"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/ListServicePipelineProvisionedResources AWS API Documentation
    #
    # @overload list_service_pipeline_provisioned_resources(params = {})
    # @param [Hash] params ({})
    def list_service_pipeline_provisioned_resources(params = {}, options = {})
      req = build_request(:list_service_pipeline_provisioned_resources, params)
      req.send_request(options)
    end

    # List major or minor versions of a service template with detail data.
    #
    # @option params [String] :major_version
    #   To view a list of minor of versions under a major version of a service
    #   template, include `major Version`.
    #
    #   To view a list of major versions of a service template, *exclude*
    #   `major Version`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of major or minor versions of a service template to
    #   list.
    #
    # @option params [String] :next_token
    #   A token that indicates the location of the next major or minor version
    #   in the array of major or minor versions of a service template, after
    #   the list of major or minor versions that was previously requested.
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
    #   A token that indicates the location of the next service template in
    #   the array of service templates, after the list of service templates
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
    #   A token that indicates the location of the next service in the array
    #   of services, after the list of services that was previously requested.
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

    # List tags for a resource. For more information, see [Proton resources
    # and tagging][1] in the *Proton User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/proton/latest/userguide/resources.html
    #
    # @option params [Integer] :max_results
    #   The maximum number of tags to list.
    #
    # @option params [String] :next_token
    #   A token that indicates the location of the next resource tag in the
    #   array of resource tags, after the list of resource tags that was
    #   previously requested.
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

    # Notify Proton of status changes to a provisioned resource when you use
    # self-managed provisioning.
    #
    # For more information, see [Self-managed provisioning][1] in the
    # *Proton User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/proton/latest/userguide/ag-works-prov-methods.html#ag-works-prov-methods-self
    #
    # @option params [String] :deployment_id
    #   The deployment ID for your provisioned resource.
    #
    # @option params [Array<Types::Output>] :outputs
    #   The provisioned resource state change detail data that's returned by
    #   Proton.
    #
    # @option params [required, String] :resource_arn
    #   The provisioned resource Amazon Resource Name (ARN).
    #
    # @option params [String] :status
    #   The status of your provisioned resource.
    #
    # @option params [String] :status_message
    #   The deployment status message for your provisioned resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.notify_resource_deployment_status_change({
    #     deployment_id: "DeploymentId",
    #     outputs: [
    #       {
    #         key: "OutputKey",
    #         value_string: "OutputValueString",
    #       },
    #     ],
    #     resource_arn: "Arn", # required
    #     status: "IN_PROGRESS", # accepts IN_PROGRESS, FAILED, SUCCEEDED
    #     status_message: "NotifyResourceDeploymentStatusChangeInputStatusMessageString",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/NotifyResourceDeploymentStatusChange AWS API Documentation
    #
    # @overload notify_resource_deployment_status_change(params = {})
    # @param [Hash] params ({})
    def notify_resource_deployment_status_change(params = {}, options = {})
      req = build_request(:notify_resource_deployment_status_change, params)
      req.send_request(options)
    end

    # In a management account, reject an environment account connection from
    # another environment account.
    #
    # After you reject an environment account connection request, you
    # *can't* accept or use the rejected environment account connection.
    #
    # You *can’t* reject an environment account connection that's connected
    # to an environment.
    #
    # For more information, see [Environment account connections][1] in the
    # *Proton User guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/proton/latest/userguide/ag-env-account-connections.html
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
    #   resp.environment_account_connection.codebuild_role_arn #=> String
    #   resp.environment_account_connection.component_role_arn #=> String
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

    # Tag a resource. A tag is a key-value pair of metadata that you
    # associate with an Proton resource.
    #
    # For more information, see [Proton resources and tagging][1] in the
    # *Proton User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/proton/latest/userguide/resources.html
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the Proton resource to apply
    #   customer tags to.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   A list of customer tags to apply to the Proton resource.
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

    # Remove a customer tag from a resource. A tag is a key-value pair of
    # metadata associated with an Proton resource.
    #
    # For more information, see [Proton resources and tagging][1] in the
    # *Proton User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/proton/latest/userguide/resources.html
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource to remove customer tags
    #   from.
    #
    # @option params [required, Array<String>] :tag_keys
    #   A list of customer tag keys that indicate the customer tags to be
    #   removed from the resource.
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

    # Update Proton settings that are used for multiple services in the
    # Amazon Web Services account.
    #
    # @option params [Boolean] :delete_pipeline_provisioning_repository
    #   Set to `true` to remove a configured pipeline repository from the
    #   account settings. Don't set this field if you are updating the
    #   configured pipeline repository.
    #
    # @option params [String] :pipeline_codebuild_role_arn
    #   The Amazon Resource Name (ARN) of the service role you want to use for
    #   provisioning pipelines. Proton assumes this role for CodeBuild-based
    #   provisioning.
    #
    # @option params [Types::RepositoryBranchInput] :pipeline_provisioning_repository
    #   A linked repository for pipeline provisioning. Specify it if you have
    #   environments configured for self-managed provisioning with services
    #   that include pipelines. A linked repository is a repository that has
    #   been registered with Proton. For more information, see
    #   CreateRepository.
    #
    #   To remove a previously configured repository, set
    #   `deletePipelineProvisioningRepository` to `true`, and don't set
    #   `pipelineProvisioningRepository`.
    #
    # @option params [String] :pipeline_service_role_arn
    #   The Amazon Resource Name (ARN) of the service role you want to use for
    #   provisioning pipelines. Assumed by Proton for Amazon Web
    #   Services-managed provisioning, and by customer-owned automation for
    #   self-managed provisioning.
    #
    #   To remove a previously configured ARN, specify an empty string.
    #
    # @return [Types::UpdateAccountSettingsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAccountSettingsOutput#account_settings #account_settings} => Types::AccountSettings
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_account_settings({
    #     delete_pipeline_provisioning_repository: false,
    #     pipeline_codebuild_role_arn: "RoleArnOrEmptyString",
    #     pipeline_provisioning_repository: {
    #       branch: "GitBranchName", # required
    #       name: "RepositoryName", # required
    #       provider: "GITHUB", # required, accepts GITHUB, GITHUB_ENTERPRISE, BITBUCKET
    #     },
    #     pipeline_service_role_arn: "RoleArnOrEmptyString",
    #   })
    #
    # @example Response structure
    #
    #   resp.account_settings.pipeline_codebuild_role_arn #=> String
    #   resp.account_settings.pipeline_provisioning_repository.arn #=> String
    #   resp.account_settings.pipeline_provisioning_repository.branch #=> String
    #   resp.account_settings.pipeline_provisioning_repository.name #=> String
    #   resp.account_settings.pipeline_provisioning_repository.provider #=> String, one of "GITHUB", "GITHUB_ENTERPRISE", "BITBUCKET"
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

    # Update a component.
    #
    # There are a few modes for updating a component. The `deploymentType`
    # field defines the mode.
    #
    # <note markdown="1"> You can't update a component while its deployment status, or the
    # deployment status of a service instance attached to it, is
    # `IN_PROGRESS`.
    #
    #  </note>
    #
    # For more information about components, see [Proton components][1] in
    # the *Proton User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html
    #
    # @option params [String] :client_token
    #   The client token for the updated component.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :deployment_type
    #   The deployment type. It defines the mode for updating a component, as
    #   follows:
    #
    #
    #
    #   : `NONE`
    #
    #     In this mode, a deployment *doesn't* occur. Only the requested
    #     metadata parameters are updated. You can only specify `description`
    #     in this mode.
    #
    #
    #
    #   : `CURRENT_VERSION`
    #
    #     In this mode, the component is deployed and updated with the new
    #     `serviceSpec`, `templateSource`, and/or `type` that you provide.
    #     Only requested parameters are updated.
    #
    # @option params [String] :description
    #   An optional customer-provided description of the component.
    #
    # @option params [required, String] :name
    #   The name of the component to update.
    #
    # @option params [String] :service_instance_name
    #   The name of the service instance that you want to attach this
    #   component to. Don't specify to keep the component's current service
    #   instance attachment. Specify an empty string to detach the component
    #   from the service instance it's attached to. Specify non-empty values
    #   for both `serviceInstanceName` and `serviceName` or for neither of
    #   them.
    #
    # @option params [String] :service_name
    #   The name of the service that `serviceInstanceName` is associated with.
    #   Don't specify to keep the component's current service instance
    #   attachment. Specify an empty string to detach the component from the
    #   service instance it's attached to. Specify non-empty values for both
    #   `serviceInstanceName` and `serviceName` or for neither of them.
    #
    # @option params [String] :service_spec
    #   The service spec that you want the component to use to access service
    #   inputs. Set this only when the component is attached to a service
    #   instance.
    #
    # @option params [String] :template_file
    #   A path to the Infrastructure as Code (IaC) file describing
    #   infrastructure that a custom component provisions.
    #
    #   <note markdown="1"> Components support a single IaC file, even if you use Terraform as
    #   your template language.
    #
    #    </note>
    #
    # @return [Types::UpdateComponentOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateComponentOutput#component #component} => Types::Component
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_component({
    #     client_token: "ClientToken",
    #     deployment_type: "NONE", # required, accepts NONE, CURRENT_VERSION
    #     description: "Description",
    #     name: "ResourceName", # required
    #     service_instance_name: "ResourceNameOrEmpty",
    #     service_name: "ResourceNameOrEmpty",
    #     service_spec: "SpecContents",
    #     template_file: "TemplateFileContents",
    #   })
    #
    # @example Response structure
    #
    #   resp.component.arn #=> String
    #   resp.component.created_at #=> Time
    #   resp.component.deployment_status #=> String, one of "IN_PROGRESS", "FAILED", "SUCCEEDED", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "CANCELLING", "CANCELLED"
    #   resp.component.deployment_status_message #=> String
    #   resp.component.description #=> String
    #   resp.component.environment_name #=> String
    #   resp.component.last_attempted_deployment_id #=> String
    #   resp.component.last_client_request_token #=> String
    #   resp.component.last_deployment_attempted_at #=> Time
    #   resp.component.last_deployment_succeeded_at #=> Time
    #   resp.component.last_modified_at #=> Time
    #   resp.component.last_succeeded_deployment_id #=> String
    #   resp.component.name #=> String
    #   resp.component.service_instance_name #=> String
    #   resp.component.service_name #=> String
    #   resp.component.service_spec #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/UpdateComponent AWS API Documentation
    #
    # @overload update_component(params = {})
    # @param [Hash] params ({})
    def update_component(params = {}, options = {})
      req = build_request(:update_component, params)
      req.send_request(options)
    end

    # Update an environment.
    #
    # If the environment is associated with an environment account
    # connection, *don't* update or include the `protonServiceRoleArn` and
    # `provisioningRepository` parameter to update or connect to an
    # environment account connection.
    #
    # You can only update to a new environment account connection if that
    # connection was created in the same environment account that the
    # current environment account connection was created in. The account
    # connection must also be associated with the current environment.
    #
    # If the environment *isn't* associated with an environment account
    # connection, *don't* update or include the
    # `environmentAccountConnectionId` parameter. You *can't* update or
    # connect the environment to an environment account connection if it
    # *isn't* already associated with an environment connection.
    #
    # You can update either the `environmentAccountConnectionId` or
    # `protonServiceRoleArn` parameter and value. You can’t update both.
    #
    # If the environment was configured for Amazon Web Services-managed
    # provisioning, omit the `provisioningRepository` parameter.
    #
    # If the environment was configured for self-managed provisioning,
    # specify the `provisioningRepository` parameter and omit the
    # `protonServiceRoleArn` and `environmentAccountConnectionId`
    # parameters.
    #
    # For more information, see [Environments][1] and [Provisioning
    # methods][2] in the *Proton User Guide*.
    #
    # There are four modes for updating an environment. The `deploymentType`
    # field defines the mode.
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
    #   version.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/proton/latest/userguide/ag-environments.html
    # [2]: https://docs.aws.amazon.com/proton/latest/userguide/ag-works-prov-methods.html
    #
    # @option params [String] :codebuild_role_arn
    #   The Amazon Resource Name (ARN) of the IAM service role that allows
    #   Proton to provision infrastructure using CodeBuild-based provisioning
    #   on your behalf.
    #
    # @option params [String] :component_role_arn
    #   The Amazon Resource Name (ARN) of the IAM service role that Proton
    #   uses when provisioning directly defined components in this
    #   environment. It determines the scope of infrastructure that a
    #   component can provision.
    #
    #   The environment must have a `componentRoleArn` to allow directly
    #   defined components to be associated with the environment.
    #
    #   For more information about components, see [Proton components][1] in
    #   the *Proton User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html
    #
    # @option params [required, String] :deployment_type
    #   There are four modes for updating an environment. The `deploymentType`
    #   field defines the mode.
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
    #     *Don’t* include major or minor version parameters when you use this
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
    #   The Amazon Resource Name (ARN) of the Proton service role that allows
    #   Proton to make API calls to other services your behalf.
    #
    # @option params [Types::RepositoryBranchInput] :provisioning_repository
    #   The linked repository that you use to host your rendered
    #   infrastructure templates for self-managed provisioning. A linked
    #   repository is a repository that has been registered with Proton. For
    #   more information, see CreateRepository.
    #
    # @option params [String] :spec
    #   The formatted specification that defines the update.
    #
    # @option params [String] :template_major_version
    #   The major version of the environment to update.
    #
    # @option params [String] :template_minor_version
    #   The minor version of the environment to update.
    #
    # @return [Types::UpdateEnvironmentOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateEnvironmentOutput#environment #environment} => Types::Environment
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_environment({
    #     codebuild_role_arn: "RoleArn",
    #     component_role_arn: "RoleArn",
    #     deployment_type: "NONE", # required, accepts NONE, CURRENT_VERSION, MINOR_VERSION, MAJOR_VERSION
    #     description: "Description",
    #     environment_account_connection_id: "EnvironmentAccountConnectionId",
    #     name: "ResourceName", # required
    #     proton_service_role_arn: "Arn",
    #     provisioning_repository: {
    #       branch: "GitBranchName", # required
    #       name: "RepositoryName", # required
    #       provider: "GITHUB", # required, accepts GITHUB, GITHUB_ENTERPRISE, BITBUCKET
    #     },
    #     spec: "SpecContents",
    #     template_major_version: "TemplateVersionPart",
    #     template_minor_version: "TemplateVersionPart",
    #   })
    #
    # @example Response structure
    #
    #   resp.environment.arn #=> String
    #   resp.environment.codebuild_role_arn #=> String
    #   resp.environment.component_role_arn #=> String
    #   resp.environment.created_at #=> Time
    #   resp.environment.deployment_status #=> String, one of "IN_PROGRESS", "FAILED", "SUCCEEDED", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "CANCELLING", "CANCELLED"
    #   resp.environment.deployment_status_message #=> String
    #   resp.environment.description #=> String
    #   resp.environment.environment_account_connection_id #=> String
    #   resp.environment.environment_account_id #=> String
    #   resp.environment.last_attempted_deployment_id #=> String
    #   resp.environment.last_deployment_attempted_at #=> Time
    #   resp.environment.last_deployment_succeeded_at #=> Time
    #   resp.environment.last_succeeded_deployment_id #=> String
    #   resp.environment.name #=> String
    #   resp.environment.proton_service_role_arn #=> String
    #   resp.environment.provisioning #=> String, one of "CUSTOMER_MANAGED"
    #   resp.environment.provisioning_repository.arn #=> String
    #   resp.environment.provisioning_repository.branch #=> String
    #   resp.environment.provisioning_repository.name #=> String
    #   resp.environment.provisioning_repository.provider #=> String, one of "GITHUB", "GITHUB_ENTERPRISE", "BITBUCKET"
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
    # *Proton User guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/proton/latest/userguide/ag-env-account-connections.html
    #
    # @option params [String] :codebuild_role_arn
    #   The Amazon Resource Name (ARN) of an IAM service role in the
    #   environment account. Proton uses this role to provision infrastructure
    #   resources using CodeBuild-based provisioning in the associated
    #   environment account.
    #
    # @option params [String] :component_role_arn
    #   The Amazon Resource Name (ARN) of the IAM service role that Proton
    #   uses when provisioning directly defined components in the associated
    #   environment account. It determines the scope of infrastructure that a
    #   component can provision in the account.
    #
    #   The environment account connection must have a `componentRoleArn` to
    #   allow directly defined components to be associated with any
    #   environments running in the account.
    #
    #   For more information about components, see [Proton components][1] in
    #   the *Proton User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html
    #
    # @option params [required, String] :id
    #   The ID of the environment account connection to update.
    #
    # @option params [String] :role_arn
    #   The Amazon Resource Name (ARN) of the IAM service role that's
    #   associated with the environment account connection to update.
    #
    # @return [Types::UpdateEnvironmentAccountConnectionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateEnvironmentAccountConnectionOutput#environment_account_connection #environment_account_connection} => Types::EnvironmentAccountConnection
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_environment_account_connection({
    #     codebuild_role_arn: "RoleArn",
    #     component_role_arn: "RoleArn",
    #     id: "EnvironmentAccountConnectionId", # required
    #     role_arn: "RoleArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.environment_account_connection.arn #=> String
    #   resp.environment_account_connection.codebuild_role_arn #=> String
    #   resp.environment_account_connection.component_role_arn #=> String
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
    #   To update a major version of an environment template, include `major
    #   Version`.
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
    # <note markdown="1"> You can't delete a service instance (remove it from the spec) if it
    # has an attached component.
    #
    #  For more information about components, see [Proton components][1] in
    # the *Proton User Guide*.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html
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
    #   pipeline. For more information, see [Edit a service][1] in the *Proton
    #   User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/proton/latest/userguide/ag-svc-update.html
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
    #   resp.service.pipeline.last_attempted_deployment_id #=> String
    #   resp.service.pipeline.last_deployment_attempted_at #=> Time
    #   resp.service.pipeline.last_deployment_succeeded_at #=> Time
    #   resp.service.pipeline.last_succeeded_deployment_id #=> String
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
    # There are a few modes for updating a service instance. The
    # `deploymentType` field defines the mode.
    #
    # <note markdown="1"> You can't update a service instance while its deployment status, or
    # the deployment status of a component attached to it, is `IN_PROGRESS`.
    #
    #  For more information about components, see [Proton components][1] in
    # the *Proton User Guide*.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html
    #
    # @option params [String] :client_token
    #   The client token of the service instance to update.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :deployment_type
    #   The deployment type. It defines the mode for updating a service
    #   instance, as follows:
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
    #     *Don’t* include major or minor version parameters when you use this
    #     deployment type.
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
    #     current template, by default. You can specify a different major
    #     version that's higher than the major version in use and a minor
    #     version.
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
    #     client_token: "ClientToken",
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
    #   resp.service_instance.last_attempted_deployment_id #=> String
    #   resp.service_instance.last_client_request_token #=> String
    #   resp.service_instance.last_deployment_attempted_at #=> Time
    #   resp.service_instance.last_deployment_succeeded_at #=> Time
    #   resp.service_instance.last_succeeded_deployment_id #=> String
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
    # There are four modes for updating a service pipeline. The
    # `deploymentType` field defines the mode.
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
    #   *Don’t* include major or minor version parameters when you use this
    #   `deployment-type`.
    #
    #
    #
    # : `MINOR_VERSION`
    #
    #   In this mode, the service pipeline is deployed and updated with the
    #   published, recommended (latest) minor version of the current major
    #   version in use, by default. You can specify a different minor
    #   version of the current major version in use.
    #
    #
    #
    # : `MAJOR_VERSION`
    #
    #   In this mode, the service pipeline is deployed and updated with the
    #   published, recommended (latest) major and minor version of the
    #   current template by default. You can specify a different major
    #   version that's higher than the major version in use and a minor
    #   version.
    #
    # @option params [required, String] :deployment_type
    #   The deployment type.
    #
    #   There are four modes for updating a service pipeline. The
    #   `deploymentType` field defines the mode.
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
    #     *Don’t* include major or minor version parameters when you use this
    #     `deployment-type`.
    #
    #
    #
    #   : `MINOR_VERSION`
    #
    #     In this mode, the service pipeline is deployed and updated with the
    #     published, recommended (latest) minor version of the current major
    #     version in use, by default. You can specify a different minor
    #     version of the current major version in use.
    #
    #
    #
    #   : `MAJOR_VERSION`
    #
    #     In this mode, the service pipeline is deployed and updated with the
    #     published, recommended (latest) major and minor version of the
    #     current template, by default. You can specify a different major
    #     version that's higher than the major version in use and a minor
    #     version.
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
    #   resp.pipeline.last_attempted_deployment_id #=> String
    #   resp.pipeline.last_deployment_attempted_at #=> Time
    #   resp.pipeline.last_deployment_succeeded_at #=> Time
    #   resp.pipeline.last_succeeded_deployment_id #=> String
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

    # Update the service sync blocker by resolving it.
    #
    # @option params [required, String] :id
    #   The ID of the service sync blocker.
    #
    # @option params [required, String] :resolved_reason
    #   The reason the service sync blocker was resolved.
    #
    # @return [Types::UpdateServiceSyncBlockerOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateServiceSyncBlockerOutput#service_instance_name #service_instance_name} => String
    #   * {Types::UpdateServiceSyncBlockerOutput#service_name #service_name} => String
    #   * {Types::UpdateServiceSyncBlockerOutput#service_sync_blocker #service_sync_blocker} => Types::SyncBlocker
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_service_sync_blocker({
    #     id: "String", # required
    #     resolved_reason: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.service_instance_name #=> String
    #   resp.service_name #=> String
    #   resp.service_sync_blocker.contexts #=> Array
    #   resp.service_sync_blocker.contexts[0].key #=> String
    #   resp.service_sync_blocker.contexts[0].value #=> String
    #   resp.service_sync_blocker.created_at #=> Time
    #   resp.service_sync_blocker.created_reason #=> String
    #   resp.service_sync_blocker.id #=> String
    #   resp.service_sync_blocker.resolved_at #=> Time
    #   resp.service_sync_blocker.resolved_reason #=> String
    #   resp.service_sync_blocker.status #=> String, one of "ACTIVE", "RESOLVED"
    #   resp.service_sync_blocker.type #=> String, one of "AUTOMATED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/UpdateServiceSyncBlocker AWS API Documentation
    #
    # @overload update_service_sync_blocker(params = {})
    # @param [Hash] params ({})
    def update_service_sync_blocker(params = {}, options = {})
      req = build_request(:update_service_sync_blocker, params)
      req.send_request(options)
    end

    # Update the Proton Ops config file.
    #
    # @option params [required, String] :branch
    #   The name of the code repository branch where the Proton Ops file is
    #   found.
    #
    # @option params [required, String] :file_path
    #   The path to the Proton Ops file.
    #
    # @option params [required, String] :repository_name
    #   The name of the repository where the Proton Ops file is found.
    #
    # @option params [required, String] :repository_provider
    #   The name of the repository provider where the Proton Ops file is
    #   found.
    #
    # @option params [required, String] :service_name
    #   The name of the service the Proton Ops file is for.
    #
    # @return [Types::UpdateServiceSyncConfigOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateServiceSyncConfigOutput#service_sync_config #service_sync_config} => Types::ServiceSyncConfig
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_service_sync_config({
    #     branch: "GitBranchName", # required
    #     file_path: "OpsFilePath", # required
    #     repository_name: "RepositoryName", # required
    #     repository_provider: "GITHUB", # required, accepts GITHUB, GITHUB_ENTERPRISE, BITBUCKET
    #     service_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.service_sync_config.branch #=> String
    #   resp.service_sync_config.file_path #=> String
    #   resp.service_sync_config.repository_name #=> String
    #   resp.service_sync_config.repository_provider #=> String, one of "GITHUB", "GITHUB_ENTERPRISE", "BITBUCKET"
    #   resp.service_sync_config.service_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/UpdateServiceSyncConfig AWS API Documentation
    #
    # @overload update_service_sync_config(params = {})
    # @param [Hash] params ({})
    def update_service_sync_config(params = {}, options = {})
      req = build_request(:update_service_sync_config, params)
      req.send_request(options)
    end

    # Update a service template.
    #
    # @option params [String] :description
    #   A description of the service template update.
    #
    # @option params [String] :display_name
    #   The name of the service template to update that's displayed in the
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
    #   An array of environment template objects that are compatible with this
    #   service template version. A service instance based on this service
    #   template version can run in environments based on compatible
    #   templates.
    #
    # @option params [String] :description
    #   A description of a service template version to update.
    #
    # @option params [required, String] :major_version
    #   To update a major version of a service template, include `major
    #   Version`.
    #
    # @option params [required, String] :minor_version
    #   To update a minor version of a service template, include
    #   `minorVersion`.
    #
    # @option params [String] :status
    #   The status of the service template minor version to update.
    #
    # @option params [Array<String>] :supported_component_sources
    #   An array of supported component sources. Components with supported
    #   sources can be attached to service instances based on this service
    #   template version.
    #
    #   <note markdown="1"> A change to `supportedComponentSources` doesn't impact existing
    #   component attachments to instances based on this template version. A
    #   change only affects later associations.
    #
    #    </note>
    #
    #   For more information about components, see [Proton components][1] in
    #   the *Proton User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html
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
    #     supported_component_sources: ["DIRECTLY_DEFINED"], # accepts DIRECTLY_DEFINED
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
    #   resp.service_template_version.supported_component_sources #=> Array
    #   resp.service_template_version.supported_component_sources[0] #=> String, one of "DIRECTLY_DEFINED"
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

    # Update template sync configuration parameters, except for the
    # `templateName` and `templateType`. Repository details (branch, name,
    # and provider) should be of a linked repository. A linked repository is
    # a repository that has been registered with Proton. For more
    # information, see CreateRepository.
    #
    # @option params [required, String] :branch
    #   The repository branch for your template.
    #
    # @option params [required, String] :repository_name
    #   The repository name (for example, `myrepos/myrepo`).
    #
    # @option params [required, String] :repository_provider
    #   The repository provider.
    #
    # @option params [String] :subdirectory
    #   A subdirectory path to your template bundle version. When included,
    #   limits the template bundle search to this repository directory.
    #
    # @option params [required, String] :template_name
    #   The synced template name.
    #
    # @option params [required, String] :template_type
    #   The synced template type.
    #
    # @return [Types::UpdateTemplateSyncConfigOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateTemplateSyncConfigOutput#template_sync_config #template_sync_config} => Types::TemplateSyncConfig
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_template_sync_config({
    #     branch: "GitBranchName", # required
    #     repository_name: "RepositoryName", # required
    #     repository_provider: "GITHUB", # required, accepts GITHUB, GITHUB_ENTERPRISE, BITBUCKET
    #     subdirectory: "Subdirectory",
    #     template_name: "ResourceName", # required
    #     template_type: "ENVIRONMENT", # required, accepts ENVIRONMENT, SERVICE
    #   })
    #
    # @example Response structure
    #
    #   resp.template_sync_config.branch #=> String
    #   resp.template_sync_config.repository_name #=> String
    #   resp.template_sync_config.repository_provider #=> String, one of "GITHUB", "GITHUB_ENTERPRISE", "BITBUCKET"
    #   resp.template_sync_config.subdirectory #=> String
    #   resp.template_sync_config.template_name #=> String
    #   resp.template_sync_config.template_type #=> String, one of "ENVIRONMENT", "SERVICE"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/UpdateTemplateSyncConfig AWS API Documentation
    #
    # @overload update_template_sync_config(params = {})
    # @param [Hash] params ({})
    def update_template_sync_config(params = {}, options = {})
      req = build_request(:update_template_sync_config, params)
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
      context[:gem_version] = '1.30.0'
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
    # | component_deleted                       | {Client#get_component}                    | 5        | 999           |
    # | component_deployed                      | {Client#get_component}                    | 5        | 999           |
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
        component_deleted: Waiters::ComponentDeleted,
        component_deployed: Waiters::ComponentDeployed,
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
