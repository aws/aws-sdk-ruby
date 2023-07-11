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

Aws::Plugins::GlobalConfiguration.add_identifier(:ssmsap)

module Aws::SsmSap
  # An API client for SsmSap.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::SsmSap::Client.new(
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

    @identifier = :ssmsap

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
    add_plugin(Aws::SsmSap::Plugins::Endpoints)

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
    #   @option options [Aws::SsmSap::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::SsmSap::EndpointParameters`
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

    # Removes permissions associated with the target database.
    #
    # @option params [String] :action_type
    #   Delete or restore the permissions on the target database.
    #
    # @option params [String] :source_resource_arn
    #   The Amazon Resource Name (ARN) of the source resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #
    # @return [Types::DeleteResourcePermissionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteResourcePermissionOutput#policy #policy} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_resource_permission({
    #     action_type: "RESTORE", # accepts RESTORE
    #     source_resource_arn: "Arn",
    #     resource_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.policy #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/DeleteResourcePermission AWS API Documentation
    #
    # @overload delete_resource_permission(params = {})
    # @param [Hash] params ({})
    def delete_resource_permission(params = {}, options = {})
      req = build_request(:delete_resource_permission, params)
      req.send_request(options)
    end

    # Deregister an SAP application with AWS Systems Manager for SAP. This
    # action does not aﬀect the existing setup of your SAP workloads on
    # Amazon EC2.
    #
    # @option params [required, String] :application_id
    #   The ID of the application.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deregister_application({
    #     application_id: "ApplicationId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/DeregisterApplication AWS API Documentation
    #
    # @overload deregister_application(params = {})
    # @param [Hash] params ({})
    def deregister_application(params = {}, options = {})
      req = build_request(:deregister_application, params)
      req.send_request(options)
    end

    # Gets an application registered with AWS Systems Manager for SAP. It
    # also returns the components of the application.
    #
    # @option params [String] :application_id
    #   The ID of the application.
    #
    # @option params [String] :application_arn
    #   The Amazon Resource Name (ARN) of the application.
    #
    # @option params [String] :app_registry_arn
    #   The Amazon Resource Name (ARN) of the application registry.
    #
    # @return [Types::GetApplicationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetApplicationOutput#application #application} => Types::Application
    #   * {Types::GetApplicationOutput#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_application({
    #     application_id: "ApplicationId",
    #     application_arn: "SsmSapArn",
    #     app_registry_arn: "AppRegistryArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.application.id #=> String
    #   resp.application.type #=> String, one of "HANA"
    #   resp.application.arn #=> String
    #   resp.application.app_registry_arn #=> String
    #   resp.application.status #=> String, one of "ACTIVATED", "STARTING", "STOPPED", "STOPPING", "FAILED", "REGISTERING", "DELETING", "UNKNOWN"
    #   resp.application.components #=> Array
    #   resp.application.components[0] #=> String
    #   resp.application.last_updated #=> Time
    #   resp.application.status_message #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/GetApplication AWS API Documentation
    #
    # @overload get_application(params = {})
    # @param [Hash] params ({})
    def get_application(params = {}, options = {})
      req = build_request(:get_application, params)
      req.send_request(options)
    end

    # Gets the component of an application registered with AWS Systems
    # Manager for SAP.
    #
    # @option params [required, String] :application_id
    #   The ID of the application.
    #
    # @option params [required, String] :component_id
    #   The ID of the component.
    #
    # @return [Types::GetComponentOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetComponentOutput#component #component} => Types::Component
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_component({
    #     application_id: "ApplicationId", # required
    #     component_id: "ComponentId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.component.component_id #=> String
    #   resp.component.application_id #=> String
    #   resp.component.component_type #=> String, one of "HANA"
    #   resp.component.status #=> String, one of "ACTIVATED"
    #   resp.component.databases #=> Array
    #   resp.component.databases[0] #=> String
    #   resp.component.hosts #=> Array
    #   resp.component.hosts[0].host_name #=> String
    #   resp.component.hosts[0].host_role #=> String, one of "LEADER", "WORKER", "STANDBY", "UNKNOWN"
    #   resp.component.hosts[0].host_ip #=> String
    #   resp.component.hosts[0].instance_id #=> String
    #   resp.component.primary_host #=> String
    #   resp.component.last_updated #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/GetComponent AWS API Documentation
    #
    # @overload get_component(params = {})
    # @param [Hash] params ({})
    def get_component(params = {}, options = {})
      req = build_request(:get_component, params)
      req.send_request(options)
    end

    # Gets the SAP HANA database of an application registered with AWS
    # Systems Manager for SAP.
    #
    # @option params [String] :application_id
    #   The ID of the application.
    #
    # @option params [String] :component_id
    #   The ID of the component.
    #
    # @option params [String] :database_id
    #   The ID of the database.
    #
    # @option params [String] :database_arn
    #   The Amazon Resource Name (ARN) of the database.
    #
    # @return [Types::GetDatabaseOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDatabaseOutput#database #database} => Types::Database
    #   * {Types::GetDatabaseOutput#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_database({
    #     application_id: "ApplicationId",
    #     component_id: "ComponentId",
    #     database_id: "DatabaseId",
    #     database_arn: "SsmSapArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.database.application_id #=> String
    #   resp.database.component_id #=> String
    #   resp.database.credentials #=> Array
    #   resp.database.credentials[0].database_name #=> String
    #   resp.database.credentials[0].credential_type #=> String, one of "ADMIN"
    #   resp.database.credentials[0].secret_id #=> String
    #   resp.database.database_id #=> String
    #   resp.database.database_name #=> String
    #   resp.database.database_type #=> String, one of "SYSTEM", "TENANT"
    #   resp.database.arn #=> String
    #   resp.database.status #=> String, one of "RUNNING", "STARTING", "STOPPED", "WARNING", "UNKNOWN"
    #   resp.database.primary_host #=> String
    #   resp.database.sql_port #=> Integer
    #   resp.database.last_updated #=> Time
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/GetDatabase AWS API Documentation
    #
    # @overload get_database(params = {})
    # @param [Hash] params ({})
    def get_database(params = {}, options = {})
      req = build_request(:get_database, params)
      req.send_request(options)
    end

    # Gets the details of an operation by specifying the operation ID.
    #
    # @option params [required, String] :operation_id
    #   The ID of the operation.
    #
    # @return [Types::GetOperationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetOperationOutput#operation #operation} => Types::Operation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_operation({
    #     operation_id: "OperationId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.operation.id #=> String
    #   resp.operation.type #=> String
    #   resp.operation.status #=> String, one of "INPROGRESS", "SUCCESS", "ERROR"
    #   resp.operation.status_message #=> String
    #   resp.operation.properties #=> Hash
    #   resp.operation.properties["String"] #=> String
    #   resp.operation.resource_type #=> String
    #   resp.operation.resource_id #=> String
    #   resp.operation.resource_arn #=> String
    #   resp.operation.start_time #=> Time
    #   resp.operation.end_time #=> Time
    #   resp.operation.last_updated_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/GetOperation AWS API Documentation
    #
    # @overload get_operation(params = {})
    # @param [Hash] params ({})
    def get_operation(params = {}, options = {})
      req = build_request(:get_operation, params)
      req.send_request(options)
    end

    # Gets permissions associated with the target database.
    #
    # @option params [String] :action_type
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #
    # @return [Types::GetResourcePermissionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetResourcePermissionOutput#policy #policy} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resource_permission({
    #     action_type: "RESTORE", # accepts RESTORE
    #     resource_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.policy #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/GetResourcePermission AWS API Documentation
    #
    # @overload get_resource_permission(params = {})
    # @param [Hash] params ({})
    def get_resource_permission(params = {}, options = {})
      req = build_request(:get_resource_permission, params)
      req.send_request(options)
    end

    # Lists all the applications registered with AWS Systems Manager for
    # SAP.
    #
    # @option params [String] :next_token
    #   The token for the next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   nextToken value.
    #
    # @return [Types::ListApplicationsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListApplicationsOutput#applications #applications} => Array&lt;Types::ApplicationSummary&gt;
    #   * {Types::ListApplicationsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_applications({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.applications #=> Array
    #   resp.applications[0].id #=> String
    #   resp.applications[0].type #=> String, one of "HANA"
    #   resp.applications[0].arn #=> String
    #   resp.applications[0].tags #=> Hash
    #   resp.applications[0].tags["TagKey"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/ListApplications AWS API Documentation
    #
    # @overload list_applications(params = {})
    # @param [Hash] params ({})
    def list_applications(params = {}, options = {})
      req = build_request(:list_applications, params)
      req.send_request(options)
    end

    # Lists all the components registered with AWS Systems Manager for SAP.
    #
    # @option params [String] :application_id
    #   The ID of the application.
    #
    # @option params [String] :next_token
    #   The token for the next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   nextToken value.
    #
    #   If you do not specify a value for MaxResults, the request returns 50
    #   items per page by default.
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
    #     application_id: "ApplicationId",
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.components #=> Array
    #   resp.components[0].application_id #=> String
    #   resp.components[0].component_id #=> String
    #   resp.components[0].component_type #=> String, one of "HANA"
    #   resp.components[0].tags #=> Hash
    #   resp.components[0].tags["TagKey"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/ListComponents AWS API Documentation
    #
    # @overload list_components(params = {})
    # @param [Hash] params ({})
    def list_components(params = {}, options = {})
      req = build_request(:list_components, params)
      req.send_request(options)
    end

    # Lists the SAP HANA databases of an application registered with AWS
    # Systems Manager for SAP.
    #
    # @option params [String] :application_id
    #   The ID of the application.
    #
    # @option params [String] :component_id
    #   The ID of the component.
    #
    # @option params [String] :next_token
    #   The token for the next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   nextToken value. If you do not specify a value for MaxResults, the
    #   request returns 50 items per page by default.
    #
    # @return [Types::ListDatabasesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDatabasesOutput#databases #databases} => Array&lt;Types::DatabaseSummary&gt;
    #   * {Types::ListDatabasesOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_databases({
    #     application_id: "ApplicationId",
    #     component_id: "ComponentId",
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.databases #=> Array
    #   resp.databases[0].application_id #=> String
    #   resp.databases[0].component_id #=> String
    #   resp.databases[0].database_id #=> String
    #   resp.databases[0].database_type #=> String, one of "SYSTEM", "TENANT"
    #   resp.databases[0].arn #=> String
    #   resp.databases[0].tags #=> Hash
    #   resp.databases[0].tags["TagKey"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/ListDatabases AWS API Documentation
    #
    # @overload list_databases(params = {})
    # @param [Hash] params ({})
    def list_databases(params = {}, options = {})
      req = build_request(:list_databases, params)
      req.send_request(options)
    end

    # Lists the operations performed by AWS Systems Manager for SAP.
    #
    # @option params [required, String] :application_id
    #   The ID of the application.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   nextToken value. If you do not specify a value for MaxResults, the
    #   request returns 50 items per page by default.
    #
    # @option params [String] :next_token
    #   The token for the next page of results.
    #
    # @option params [Array<Types::Filter>] :filters
    #   The filters of an operation.
    #
    # @return [Types::ListOperationsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListOperationsOutput#operations #operations} => Array&lt;Types::Operation&gt;
    #   * {Types::ListOperationsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_operations({
    #     application_id: "ApplicationId", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #     filters: [
    #       {
    #         name: "FilterName", # required
    #         value: "FilterValue", # required
    #         operator: "Equals", # required, accepts Equals, GreaterThanOrEquals, LessThanOrEquals
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.operations #=> Array
    #   resp.operations[0].id #=> String
    #   resp.operations[0].type #=> String
    #   resp.operations[0].status #=> String, one of "INPROGRESS", "SUCCESS", "ERROR"
    #   resp.operations[0].status_message #=> String
    #   resp.operations[0].properties #=> Hash
    #   resp.operations[0].properties["String"] #=> String
    #   resp.operations[0].resource_type #=> String
    #   resp.operations[0].resource_id #=> String
    #   resp.operations[0].resource_arn #=> String
    #   resp.operations[0].start_time #=> Time
    #   resp.operations[0].end_time #=> Time
    #   resp.operations[0].last_updated_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/ListOperations AWS API Documentation
    #
    # @overload list_operations(params = {})
    # @param [Hash] params ({})
    def list_operations(params = {}, options = {})
      req = build_request(:list_operations, params)
      req.send_request(options)
    end

    # Lists all tags on an SAP HANA application and/or database registered
    # with AWS Systems Manager for SAP.
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
    #     resource_arn: "SsmSapArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Adds permissions to the target database.
    #
    # @option params [required, String] :action_type
    #
    # @option params [required, String] :source_resource_arn
    #
    # @option params [required, String] :resource_arn
    #
    # @return [Types::PutResourcePermissionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutResourcePermissionOutput#policy #policy} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_resource_permission({
    #     action_type: "RESTORE", # required, accepts RESTORE
    #     source_resource_arn: "Arn", # required
    #     resource_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.policy #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/PutResourcePermission AWS API Documentation
    #
    # @overload put_resource_permission(params = {})
    # @param [Hash] params ({})
    def put_resource_permission(params = {}, options = {})
      req = build_request(:put_resource_permission, params)
      req.send_request(options)
    end

    # Register an SAP application with AWS Systems Manager for SAP. You must
    # meet the following requirements before registering.
    #
    # The SAP application you want to register with AWS Systems Manager for
    # SAP is running on Amazon EC2.
    #
    # AWS Systems Manager Agent must be setup on an Amazon EC2 instance
    # along with the required IAM permissions.
    #
    # Amazon EC2 instance(s) must have access to the secrets created in AWS
    # Secrets Manager to manage SAP applications and components.
    #
    # @option params [required, String] :application_id
    #   The ID of the application.
    #
    # @option params [required, String] :application_type
    #   The type of the application.
    #
    # @option params [required, Array<String>] :instances
    #   The Amazon EC2 instances on which your SAP application is running.
    #
    # @option params [String] :sap_instance_number
    #   The SAP instance number of the application.
    #
    # @option params [String] :sid
    #   The System ID of the application.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to be attached to the SAP application.
    #
    # @option params [required, Array<Types::ApplicationCredential>] :credentials
    #   The credentials of the SAP application.
    #
    # @return [Types::RegisterApplicationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RegisterApplicationOutput#application #application} => Types::Application
    #   * {Types::RegisterApplicationOutput#operation_id #operation_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_application({
    #     application_id: "ApplicationId", # required
    #     application_type: "HANA", # required, accepts HANA
    #     instances: ["InstanceId"], # required
    #     sap_instance_number: "SAPInstanceNumber",
    #     sid: "SID",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     credentials: [ # required
    #       {
    #         database_name: "DatabaseName", # required
    #         credential_type: "ADMIN", # required, accepts ADMIN
    #         secret_id: "SecretId", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.application.id #=> String
    #   resp.application.type #=> String, one of "HANA"
    #   resp.application.arn #=> String
    #   resp.application.app_registry_arn #=> String
    #   resp.application.status #=> String, one of "ACTIVATED", "STARTING", "STOPPED", "STOPPING", "FAILED", "REGISTERING", "DELETING", "UNKNOWN"
    #   resp.application.components #=> Array
    #   resp.application.components[0] #=> String
    #   resp.application.last_updated #=> Time
    #   resp.application.status_message #=> String
    #   resp.operation_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/RegisterApplication AWS API Documentation
    #
    # @overload register_application(params = {})
    # @param [Hash] params ({})
    def register_application(params = {}, options = {})
      req = build_request(:register_application, params)
      req.send_request(options)
    end

    # Creates tag for a resource by specifying the ARN.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #
    # @option params [required, Hash<String,String>] :tags
    #   The tags on a resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "SsmSapArn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Delete the tags for a resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #
    # @option params [required, Array<String>] :tag_keys
    #   Adds/updates or removes credentials for applications registered with
    #   AWS Systems Manager for SAP.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "SsmSapArn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates the settings of an application registered with AWS Systems
    # Manager for SAP.
    #
    # @option params [required, String] :application_id
    #   The ID of the application.
    #
    # @option params [Array<Types::ApplicationCredential>] :credentials_to_add_or_update
    #   The credentials to be added or updated.
    #
    # @option params [Array<Types::ApplicationCredential>] :credentials_to_remove
    #   The credentials to be removed.
    #
    # @return [Types::UpdateApplicationSettingsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateApplicationSettingsOutput#message #message} => String
    #   * {Types::UpdateApplicationSettingsOutput#operation_ids #operation_ids} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_application_settings({
    #     application_id: "ApplicationId", # required
    #     credentials_to_add_or_update: [
    #       {
    #         database_name: "DatabaseName", # required
    #         credential_type: "ADMIN", # required, accepts ADMIN
    #         secret_id: "SecretId", # required
    #       },
    #     ],
    #     credentials_to_remove: [
    #       {
    #         database_name: "DatabaseName", # required
    #         credential_type: "ADMIN", # required, accepts ADMIN
    #         secret_id: "SecretId", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.message #=> String
    #   resp.operation_ids #=> Array
    #   resp.operation_ids[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-sap-2018-05-10/UpdateApplicationSettings AWS API Documentation
    #
    # @overload update_application_settings(params = {})
    # @param [Hash] params ({})
    def update_application_settings(params = {}, options = {})
      req = build_request(:update_application_settings, params)
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
      context[:gem_name] = 'aws-sdk-ssmsap'
      context[:gem_version] = '1.8.0'
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
