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

Aws::Plugins::GlobalConfiguration.add_identifier(:schemas)

module Aws::Schemas
  # An API client for Schemas.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::Schemas::Client.new(
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

    @identifier = :schemas

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

    # Creates a discoverer.
    #
    # @option params [String] :description
    #
    # @option params [required, String] :source_arn
    #
    # @option params [Hash<String,String>] :tags
    #   Key-value pairs associated with a resource.
    #
    # @return [Types::CreateDiscovererResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDiscovererResponse#description #description} => String
    #   * {Types::CreateDiscovererResponse#discoverer_arn #discoverer_arn} => String
    #   * {Types::CreateDiscovererResponse#discoverer_id #discoverer_id} => String
    #   * {Types::CreateDiscovererResponse#source_arn #source_arn} => String
    #   * {Types::CreateDiscovererResponse#state #state} => String
    #   * {Types::CreateDiscovererResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_discoverer({
    #     description: "__stringMin0Max256",
    #     source_arn: "__stringMin20Max1600", # required
    #     tags: {
    #       "__string" => "__string",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.description #=> String
    #   resp.discoverer_arn #=> String
    #   resp.discoverer_id #=> String
    #   resp.source_arn #=> String
    #   resp.state #=> String, one of "STARTED", "STOPPED"
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/CreateDiscoverer AWS API Documentation
    #
    # @overload create_discoverer(params = {})
    # @param [Hash] params ({})
    def create_discoverer(params = {}, options = {})
      req = build_request(:create_discoverer, params)
      req.send_request(options)
    end

    # Creates a registry.
    #
    # @option params [String] :description
    #
    # @option params [required, String] :registry_name
    #
    # @option params [Hash<String,String>] :tags
    #   Key-value pairs associated with a resource.
    #
    # @return [Types::CreateRegistryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateRegistryResponse#description #description} => String
    #   * {Types::CreateRegistryResponse#registry_arn #registry_arn} => String
    #   * {Types::CreateRegistryResponse#registry_name #registry_name} => String
    #   * {Types::CreateRegistryResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_registry({
    #     description: "__stringMin0Max256",
    #     registry_name: "__string", # required
    #     tags: {
    #       "__string" => "__string",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.description #=> String
    #   resp.registry_arn #=> String
    #   resp.registry_name #=> String
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/CreateRegistry AWS API Documentation
    #
    # @overload create_registry(params = {})
    # @param [Hash] params ({})
    def create_registry(params = {}, options = {})
      req = build_request(:create_registry, params)
      req.send_request(options)
    end

    # Creates a schema definition.
    #
    # <note markdown="1">Inactive schemas will be deleted after two years.
    #
    # </note>
    #
    # @option params [required, String] :content
    #
    # @option params [String] :description
    #
    # @option params [required, String] :registry_name
    #
    # @option params [required, String] :schema_name
    #
    # @option params [Hash<String,String>] :tags
    #   Key-value pairs associated with a resource.
    #
    # @option params [required, String] :type
    #
    # @return [Types::CreateSchemaResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSchemaResponse#description #description} => String
    #   * {Types::CreateSchemaResponse#last_modified #last_modified} => Time
    #   * {Types::CreateSchemaResponse#schema_arn #schema_arn} => String
    #   * {Types::CreateSchemaResponse#schema_name #schema_name} => String
    #   * {Types::CreateSchemaResponse#schema_version #schema_version} => String
    #   * {Types::CreateSchemaResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::CreateSchemaResponse#type #type} => String
    #   * {Types::CreateSchemaResponse#version_created_date #version_created_date} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_schema({
    #     content: "__stringMin1Max100000", # required
    #     description: "__stringMin0Max256",
    #     registry_name: "__string", # required
    #     schema_name: "__string", # required
    #     tags: {
    #       "__string" => "__string",
    #     },
    #     type: "OpenApi3", # required, accepts OpenApi3
    #   })
    #
    # @example Response structure
    #
    #   resp.description #=> String
    #   resp.last_modified #=> Time
    #   resp.schema_arn #=> String
    #   resp.schema_name #=> String
    #   resp.schema_version #=> String
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #   resp.type #=> String
    #   resp.version_created_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/CreateSchema AWS API Documentation
    #
    # @overload create_schema(params = {})
    # @param [Hash] params ({})
    def create_schema(params = {}, options = {})
      req = build_request(:create_schema, params)
      req.send_request(options)
    end

    # Deletes a discoverer.
    #
    # @option params [required, String] :discoverer_id
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_discoverer({
    #     discoverer_id: "__string", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/DeleteDiscoverer AWS API Documentation
    #
    # @overload delete_discoverer(params = {})
    # @param [Hash] params ({})
    def delete_discoverer(params = {}, options = {})
      req = build_request(:delete_discoverer, params)
      req.send_request(options)
    end

    # Deletes a Registry.
    #
    # @option params [required, String] :registry_name
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_registry({
    #     registry_name: "__string", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/DeleteRegistry AWS API Documentation
    #
    # @overload delete_registry(params = {})
    # @param [Hash] params ({})
    def delete_registry(params = {}, options = {})
      req = build_request(:delete_registry, params)
      req.send_request(options)
    end

    # Delete the resource-based policy attached to the specified registry.
    #
    # @option params [String] :registry_name
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_resource_policy({
    #     registry_name: "__string",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/DeleteResourcePolicy AWS API Documentation
    #
    # @overload delete_resource_policy(params = {})
    # @param [Hash] params ({})
    def delete_resource_policy(params = {}, options = {})
      req = build_request(:delete_resource_policy, params)
      req.send_request(options)
    end

    # Delete a schema definition.
    #
    # @option params [required, String] :registry_name
    #
    # @option params [required, String] :schema_name
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_schema({
    #     registry_name: "__string", # required
    #     schema_name: "__string", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/DeleteSchema AWS API Documentation
    #
    # @overload delete_schema(params = {})
    # @param [Hash] params ({})
    def delete_schema(params = {}, options = {})
      req = build_request(:delete_schema, params)
      req.send_request(options)
    end

    # Delete the schema version definition
    #
    # @option params [required, String] :registry_name
    #
    # @option params [required, String] :schema_name
    #
    # @option params [required, String] :schema_version
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_schema_version({
    #     registry_name: "__string", # required
    #     schema_name: "__string", # required
    #     schema_version: "__string", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/DeleteSchemaVersion AWS API Documentation
    #
    # @overload delete_schema_version(params = {})
    # @param [Hash] params ({})
    def delete_schema_version(params = {}, options = {})
      req = build_request(:delete_schema_version, params)
      req.send_request(options)
    end

    # Describe the code binding URI.
    #
    # @option params [required, String] :language
    #
    # @option params [required, String] :registry_name
    #
    # @option params [required, String] :schema_name
    #
    # @option params [String] :schema_version
    #
    # @return [Types::DescribeCodeBindingResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeCodeBindingResponse#creation_date #creation_date} => Time
    #   * {Types::DescribeCodeBindingResponse#last_modified #last_modified} => Time
    #   * {Types::DescribeCodeBindingResponse#schema_version #schema_version} => String
    #   * {Types::DescribeCodeBindingResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_code_binding({
    #     language: "__string", # required
    #     registry_name: "__string", # required
    #     schema_name: "__string", # required
    #     schema_version: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.creation_date #=> Time
    #   resp.last_modified #=> Time
    #   resp.schema_version #=> String
    #   resp.status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_COMPLETE", "CREATE_FAILED"
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * code_binding_exists
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/DescribeCodeBinding AWS API Documentation
    #
    # @overload describe_code_binding(params = {})
    # @param [Hash] params ({})
    def describe_code_binding(params = {}, options = {})
      req = build_request(:describe_code_binding, params)
      req.send_request(options)
    end

    # Describes the discoverer.
    #
    # @option params [required, String] :discoverer_id
    #
    # @return [Types::DescribeDiscovererResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDiscovererResponse#description #description} => String
    #   * {Types::DescribeDiscovererResponse#discoverer_arn #discoverer_arn} => String
    #   * {Types::DescribeDiscovererResponse#discoverer_id #discoverer_id} => String
    #   * {Types::DescribeDiscovererResponse#source_arn #source_arn} => String
    #   * {Types::DescribeDiscovererResponse#state #state} => String
    #   * {Types::DescribeDiscovererResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_discoverer({
    #     discoverer_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.description #=> String
    #   resp.discoverer_arn #=> String
    #   resp.discoverer_id #=> String
    #   resp.source_arn #=> String
    #   resp.state #=> String, one of "STARTED", "STOPPED"
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/DescribeDiscoverer AWS API Documentation
    #
    # @overload describe_discoverer(params = {})
    # @param [Hash] params ({})
    def describe_discoverer(params = {}, options = {})
      req = build_request(:describe_discoverer, params)
      req.send_request(options)
    end

    # Describes the registry.
    #
    # @option params [required, String] :registry_name
    #
    # @return [Types::DescribeRegistryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeRegistryResponse#description #description} => String
    #   * {Types::DescribeRegistryResponse#registry_arn #registry_arn} => String
    #   * {Types::DescribeRegistryResponse#registry_name #registry_name} => String
    #   * {Types::DescribeRegistryResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_registry({
    #     registry_name: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.description #=> String
    #   resp.registry_arn #=> String
    #   resp.registry_name #=> String
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/DescribeRegistry AWS API Documentation
    #
    # @overload describe_registry(params = {})
    # @param [Hash] params ({})
    def describe_registry(params = {}, options = {})
      req = build_request(:describe_registry, params)
      req.send_request(options)
    end

    # Retrieve the schema definition.
    #
    # @option params [required, String] :registry_name
    #
    # @option params [required, String] :schema_name
    #
    # @option params [String] :schema_version
    #
    # @return [Types::DescribeSchemaResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeSchemaResponse#content #content} => String
    #   * {Types::DescribeSchemaResponse#description #description} => String
    #   * {Types::DescribeSchemaResponse#last_modified #last_modified} => Time
    #   * {Types::DescribeSchemaResponse#schema_arn #schema_arn} => String
    #   * {Types::DescribeSchemaResponse#schema_name #schema_name} => String
    #   * {Types::DescribeSchemaResponse#schema_version #schema_version} => String
    #   * {Types::DescribeSchemaResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::DescribeSchemaResponse#type #type} => String
    #   * {Types::DescribeSchemaResponse#version_created_date #version_created_date} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_schema({
    #     registry_name: "__string", # required
    #     schema_name: "__string", # required
    #     schema_version: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.content #=> String
    #   resp.description #=> String
    #   resp.last_modified #=> Time
    #   resp.schema_arn #=> String
    #   resp.schema_name #=> String
    #   resp.schema_version #=> String
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #   resp.type #=> String
    #   resp.version_created_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/DescribeSchema AWS API Documentation
    #
    # @overload describe_schema(params = {})
    # @param [Hash] params ({})
    def describe_schema(params = {}, options = {})
      req = build_request(:describe_schema, params)
      req.send_request(options)
    end

    # Get the code binding source URI.
    #
    # @option params [required, String] :language
    #
    # @option params [required, String] :registry_name
    #
    # @option params [required, String] :schema_name
    #
    # @option params [String] :schema_version
    #
    # @return [Types::GetCodeBindingSourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCodeBindingSourceResponse#body #body} => IO
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_code_binding_source({
    #     language: "__string", # required
    #     registry_name: "__string", # required
    #     schema_name: "__string", # required
    #     schema_version: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.body #=> IO
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/GetCodeBindingSource AWS API Documentation
    #
    # @overload get_code_binding_source(params = {})
    # @param [Hash] params ({})
    def get_code_binding_source(params = {}, options = {}, &block)
      req = build_request(:get_code_binding_source, params)
      req.send_request(options, &block)
    end

    # Get the discovered schema that was generated based on sampled events.
    #
    # @option params [required, Array<String>] :events
    #
    # @option params [required, String] :type
    #
    # @return [Types::GetDiscoveredSchemaResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDiscoveredSchemaResponse#content #content} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_discovered_schema({
    #     events: ["GetDiscoveredSchemaVersionItemInput"], # required
    #     type: "OpenApi3", # required, accepts OpenApi3
    #   })
    #
    # @example Response structure
    #
    #   resp.content #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/GetDiscoveredSchema AWS API Documentation
    #
    # @overload get_discovered_schema(params = {})
    # @param [Hash] params ({})
    def get_discovered_schema(params = {}, options = {})
      req = build_request(:get_discovered_schema, params)
      req.send_request(options)
    end

    # Retrieves the resource-based policy attached to a given registry.
    #
    # @option params [String] :registry_name
    #
    # @return [Types::GetResourcePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetResourcePolicyResponse#policy #policy} => String
    #   * {Types::GetResourcePolicyResponse#revision_id #revision_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resource_policy({
    #     registry_name: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.policy #=> String
    #   resp.revision_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/GetResourcePolicy AWS API Documentation
    #
    # @overload get_resource_policy(params = {})
    # @param [Hash] params ({})
    def get_resource_policy(params = {}, options = {})
      req = build_request(:get_resource_policy, params)
      req.send_request(options)
    end

    # List the discoverers.
    #
    # @option params [String] :discoverer_id_prefix
    #
    # @option params [Integer] :limit
    #
    # @option params [String] :next_token
    #
    # @option params [String] :source_arn_prefix
    #
    # @return [Types::ListDiscoverersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDiscoverersResponse#discoverers #discoverers} => Array&lt;Types::DiscovererSummary&gt;
    #   * {Types::ListDiscoverersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_discoverers({
    #     discoverer_id_prefix: "__string",
    #     limit: 1,
    #     next_token: "__string",
    #     source_arn_prefix: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.discoverers #=> Array
    #   resp.discoverers[0].discoverer_arn #=> String
    #   resp.discoverers[0].discoverer_id #=> String
    #   resp.discoverers[0].source_arn #=> String
    #   resp.discoverers[0].state #=> String, one of "STARTED", "STOPPED"
    #   resp.discoverers[0].tags #=> Hash
    #   resp.discoverers[0].tags["__string"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/ListDiscoverers AWS API Documentation
    #
    # @overload list_discoverers(params = {})
    # @param [Hash] params ({})
    def list_discoverers(params = {}, options = {})
      req = build_request(:list_discoverers, params)
      req.send_request(options)
    end

    # List the registries.
    #
    # @option params [Integer] :limit
    #
    # @option params [String] :next_token
    #
    # @option params [String] :registry_name_prefix
    #
    # @option params [String] :scope
    #
    # @return [Types::ListRegistriesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRegistriesResponse#next_token #next_token} => String
    #   * {Types::ListRegistriesResponse#registries #registries} => Array&lt;Types::RegistrySummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_registries({
    #     limit: 1,
    #     next_token: "__string",
    #     registry_name_prefix: "__string",
    #     scope: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.registries #=> Array
    #   resp.registries[0].registry_arn #=> String
    #   resp.registries[0].registry_name #=> String
    #   resp.registries[0].tags #=> Hash
    #   resp.registries[0].tags["__string"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/ListRegistries AWS API Documentation
    #
    # @overload list_registries(params = {})
    # @param [Hash] params ({})
    def list_registries(params = {}, options = {})
      req = build_request(:list_registries, params)
      req.send_request(options)
    end

    # Provides a list of the schema versions and related information.
    #
    # @option params [Integer] :limit
    #
    # @option params [String] :next_token
    #
    # @option params [required, String] :registry_name
    #
    # @option params [required, String] :schema_name
    #
    # @return [Types::ListSchemaVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSchemaVersionsResponse#next_token #next_token} => String
    #   * {Types::ListSchemaVersionsResponse#schema_versions #schema_versions} => Array&lt;Types::SchemaVersionSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_schema_versions({
    #     limit: 1,
    #     next_token: "__string",
    #     registry_name: "__string", # required
    #     schema_name: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.schema_versions #=> Array
    #   resp.schema_versions[0].schema_arn #=> String
    #   resp.schema_versions[0].schema_name #=> String
    #   resp.schema_versions[0].schema_version #=> String
    #   resp.schema_versions[0].type #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/ListSchemaVersions AWS API Documentation
    #
    # @overload list_schema_versions(params = {})
    # @param [Hash] params ({})
    def list_schema_versions(params = {}, options = {})
      req = build_request(:list_schema_versions, params)
      req.send_request(options)
    end

    # List the schemas.
    #
    # @option params [Integer] :limit
    #
    # @option params [String] :next_token
    #
    # @option params [required, String] :registry_name
    #
    # @option params [String] :schema_name_prefix
    #
    # @return [Types::ListSchemasResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSchemasResponse#next_token #next_token} => String
    #   * {Types::ListSchemasResponse#schemas #schemas} => Array&lt;Types::SchemaSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_schemas({
    #     limit: 1,
    #     next_token: "__string",
    #     registry_name: "__string", # required
    #     schema_name_prefix: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.schemas #=> Array
    #   resp.schemas[0].last_modified #=> Time
    #   resp.schemas[0].schema_arn #=> String
    #   resp.schemas[0].schema_name #=> String
    #   resp.schemas[0].tags #=> Hash
    #   resp.schemas[0].tags["__string"] #=> String
    #   resp.schemas[0].version_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/ListSchemas AWS API Documentation
    #
    # @overload list_schemas(params = {})
    # @param [Hash] params ({})
    def list_schemas(params = {}, options = {})
      req = build_request(:list_schemas, params)
      req.send_request(options)
    end

    # Get tags for resource.
    #
    # @option params [required, String] :resource_arn
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Put code binding URI
    #
    # @option params [required, String] :language
    #
    # @option params [required, String] :registry_name
    #
    # @option params [required, String] :schema_name
    #
    # @option params [String] :schema_version
    #
    # @return [Types::PutCodeBindingResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutCodeBindingResponse#creation_date #creation_date} => Time
    #   * {Types::PutCodeBindingResponse#last_modified #last_modified} => Time
    #   * {Types::PutCodeBindingResponse#schema_version #schema_version} => String
    #   * {Types::PutCodeBindingResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_code_binding({
    #     language: "__string", # required
    #     registry_name: "__string", # required
    #     schema_name: "__string", # required
    #     schema_version: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.creation_date #=> Time
    #   resp.last_modified #=> Time
    #   resp.schema_version #=> String
    #   resp.status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_COMPLETE", "CREATE_FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/PutCodeBinding AWS API Documentation
    #
    # @overload put_code_binding(params = {})
    # @param [Hash] params ({})
    def put_code_binding(params = {}, options = {})
      req = build_request(:put_code_binding, params)
      req.send_request(options)
    end

    # The name of the policy.
    #
    # @option params [required, String] :policy
    #   **SDK automatically handles json encoding and base64 encoding for you
    #   when the required value (Hash, Array, etc.) is provided according to
    #   the description.**
    #
    # @option params [String] :registry_name
    #
    # @option params [String] :revision_id
    #
    # @return [Types::PutResourcePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutResourcePolicyResponse#policy #policy} => String
    #   * {Types::PutResourcePolicyResponse#revision_id #revision_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_resource_policy({
    #     policy: "__string", # required
    #     registry_name: "__string",
    #     revision_id: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.policy #=> String
    #   resp.revision_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/PutResourcePolicy AWS API Documentation
    #
    # @overload put_resource_policy(params = {})
    # @param [Hash] params ({})
    def put_resource_policy(params = {}, options = {})
      req = build_request(:put_resource_policy, params)
      req.send_request(options)
    end

    # Search the schemas
    #
    # @option params [required, String] :keywords
    #
    # @option params [Integer] :limit
    #
    # @option params [String] :next_token
    #
    # @option params [required, String] :registry_name
    #
    # @return [Types::SearchSchemasResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchSchemasResponse#next_token #next_token} => String
    #   * {Types::SearchSchemasResponse#schemas #schemas} => Array&lt;Types::SearchSchemaSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_schemas({
    #     keywords: "__string", # required
    #     limit: 1,
    #     next_token: "__string",
    #     registry_name: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.schemas #=> Array
    #   resp.schemas[0].registry_name #=> String
    #   resp.schemas[0].schema_arn #=> String
    #   resp.schemas[0].schema_name #=> String
    #   resp.schemas[0].schema_versions #=> Array
    #   resp.schemas[0].schema_versions[0].created_date #=> Time
    #   resp.schemas[0].schema_versions[0].schema_version #=> String
    #   resp.schemas[0].schema_versions[0].type #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/SearchSchemas AWS API Documentation
    #
    # @overload search_schemas(params = {})
    # @param [Hash] params ({})
    def search_schemas(params = {}, options = {})
      req = build_request(:search_schemas, params)
      req.send_request(options)
    end

    # Starts the discoverer
    #
    # @option params [required, String] :discoverer_id
    #
    # @return [Types::StartDiscovererResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartDiscovererResponse#discoverer_id #discoverer_id} => String
    #   * {Types::StartDiscovererResponse#state #state} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_discoverer({
    #     discoverer_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.discoverer_id #=> String
    #   resp.state #=> String, one of "STARTED", "STOPPED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/StartDiscoverer AWS API Documentation
    #
    # @overload start_discoverer(params = {})
    # @param [Hash] params ({})
    def start_discoverer(params = {}, options = {})
      req = build_request(:start_discoverer, params)
      req.send_request(options)
    end

    # Stops the discoverer
    #
    # @option params [required, String] :discoverer_id
    #
    # @return [Types::StopDiscovererResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopDiscovererResponse#discoverer_id #discoverer_id} => String
    #   * {Types::StopDiscovererResponse#state #state} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_discoverer({
    #     discoverer_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.discoverer_id #=> String
    #   resp.state #=> String, one of "STARTED", "STOPPED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/StopDiscoverer AWS API Documentation
    #
    # @overload stop_discoverer(params = {})
    # @param [Hash] params ({})
    def stop_discoverer(params = {}, options = {})
      req = build_request(:stop_discoverer, params)
      req.send_request(options)
    end

    # Add tags to a resource.
    #
    # @option params [required, String] :resource_arn
    #
    # @option params [required, Hash<String,String>] :tags
    #   Key-value pairs associated with a resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "__string", # required
    #     tags: { # required
    #       "__string" => "__string",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes tags from a resource.
    #
    # @option params [required, String] :resource_arn
    #
    # @option params [required, Array<String>] :tag_keys
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "__string", # required
    #     tag_keys: ["__string"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates the discoverer
    #
    # @option params [String] :description
    #
    # @option params [required, String] :discoverer_id
    #
    # @return [Types::UpdateDiscovererResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDiscovererResponse#description #description} => String
    #   * {Types::UpdateDiscovererResponse#discoverer_arn #discoverer_arn} => String
    #   * {Types::UpdateDiscovererResponse#discoverer_id #discoverer_id} => String
    #   * {Types::UpdateDiscovererResponse#source_arn #source_arn} => String
    #   * {Types::UpdateDiscovererResponse#state #state} => String
    #   * {Types::UpdateDiscovererResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_discoverer({
    #     description: "__stringMin0Max256",
    #     discoverer_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.description #=> String
    #   resp.discoverer_arn #=> String
    #   resp.discoverer_id #=> String
    #   resp.source_arn #=> String
    #   resp.state #=> String, one of "STARTED", "STOPPED"
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/UpdateDiscoverer AWS API Documentation
    #
    # @overload update_discoverer(params = {})
    # @param [Hash] params ({})
    def update_discoverer(params = {}, options = {})
      req = build_request(:update_discoverer, params)
      req.send_request(options)
    end

    # Updates a registry.
    #
    # @option params [String] :description
    #
    # @option params [required, String] :registry_name
    #
    # @return [Types::UpdateRegistryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateRegistryResponse#description #description} => String
    #   * {Types::UpdateRegistryResponse#registry_arn #registry_arn} => String
    #   * {Types::UpdateRegistryResponse#registry_name #registry_name} => String
    #   * {Types::UpdateRegistryResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_registry({
    #     description: "__stringMin0Max256",
    #     registry_name: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.description #=> String
    #   resp.registry_arn #=> String
    #   resp.registry_name #=> String
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/UpdateRegistry AWS API Documentation
    #
    # @overload update_registry(params = {})
    # @param [Hash] params ({})
    def update_registry(params = {}, options = {})
      req = build_request(:update_registry, params)
      req.send_request(options)
    end

    # Updates the schema definition
    #
    # <note markdown="1">Inactive schemas will be deleted after two years.
    #
    # </note>
    #
    # @option params [String] :client_token_id
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :content
    #
    # @option params [String] :description
    #
    # @option params [required, String] :registry_name
    #
    # @option params [required, String] :schema_name
    #
    # @option params [String] :type
    #
    # @return [Types::UpdateSchemaResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateSchemaResponse#description #description} => String
    #   * {Types::UpdateSchemaResponse#last_modified #last_modified} => Time
    #   * {Types::UpdateSchemaResponse#schema_arn #schema_arn} => String
    #   * {Types::UpdateSchemaResponse#schema_name #schema_name} => String
    #   * {Types::UpdateSchemaResponse#schema_version #schema_version} => String
    #   * {Types::UpdateSchemaResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::UpdateSchemaResponse#type #type} => String
    #   * {Types::UpdateSchemaResponse#version_created_date #version_created_date} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_schema({
    #     client_token_id: "__stringMin0Max36",
    #     content: "__stringMin1Max100000",
    #     description: "__stringMin0Max256",
    #     registry_name: "__string", # required
    #     schema_name: "__string", # required
    #     type: "OpenApi3", # accepts OpenApi3
    #   })
    #
    # @example Response structure
    #
    #   resp.description #=> String
    #   resp.last_modified #=> Time
    #   resp.schema_arn #=> String
    #   resp.schema_name #=> String
    #   resp.schema_version #=> String
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #   resp.type #=> String
    #   resp.version_created_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/UpdateSchema AWS API Documentation
    #
    # @overload update_schema(params = {})
    # @param [Hash] params ({})
    def update_schema(params = {}, options = {})
      req = build_request(:update_schema, params)
      req.send_request(options)
    end

    # Exports a schema to a different specification.
    #
    # @option params [required, String] :registry_name
    #
    # @option params [required, String] :schema_name
    #
    # @option params [String] :schema_version
    #
    # @option params [required, String] :type
    #
    # @return [Types::ExportSchemaResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ExportSchemaResponse#content #content} => String
    #   * {Types::ExportSchemaResponse#schema_arn #schema_arn} => String
    #   * {Types::ExportSchemaResponse#schema_name #schema_name} => String
    #   * {Types::ExportSchemaResponse#schema_version #schema_version} => String
    #   * {Types::ExportSchemaResponse#type #type} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.export_schema({
    #     registry_name: "__string", # required
    #     schema_name: "__string", # required
    #     schema_version: "__string",
    #     type: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.content #=> String
    #   resp.schema_arn #=> String
    #   resp.schema_name #=> String
    #   resp.schema_version #=> String
    #   resp.type #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/schemas-2019-12-02/ExportSchema AWS API Documentation
    #
    # @overload export_schema(params = {})
    # @param [Hash] params ({})
    def export_schema(params = {}, options = {})
      req = build_request(:export_schema, params)
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
      context[:gem_name] = 'aws-sdk-schemas'
      context[:gem_version] = '1.10.0'
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
    # | waiter_name         | params                         | :delay   | :max_attempts |
    # | ------------------- | ------------------------------ | -------- | ------------- |
    # | code_binding_exists | {Client#describe_code_binding} | 2        | 30            |
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
        code_binding_exists: Waiters::CodeBindingExists
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
