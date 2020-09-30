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
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:codestarconnections)

module Aws::CodeStarconnections
  # An API client for CodeStarconnections.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::CodeStarconnections::Client.new(
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

    @identifier = :codestarconnections

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

    # Creates a connection that can then be given to other AWS services like
    # CodePipeline so that it can access third-party code repositories. The
    # connection is in pending status until the third-party connection
    # handshake is completed from the console.
    #
    # @option params [String] :provider_type
    #   The name of the external provider where your third-party code
    #   repository is configured. The valid provider type is Bitbucket.
    #
    # @option params [required, String] :connection_name
    #   The name of the connection to be created. The name must be unique in
    #   the calling AWS account.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The key-value pair to use when tagging the resource.
    #
    # @option params [String] :host_arn
    #   The Amazon Resource Name (ARN) of the host associated with the
    #   connection to be created.
    #
    # @return [Types::CreateConnectionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateConnectionOutput#connection_arn #connection_arn} => String
    #   * {Types::CreateConnectionOutput#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_connection({
    #     provider_type: "Bitbucket", # accepts Bitbucket, GitHub, GitHubEnterpriseServer
    #     connection_name: "ConnectionName", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     host_arn: "HostArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.connection_arn #=> String
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-connections-2019-12-01/CreateConnection AWS API Documentation
    #
    # @overload create_connection(params = {})
    # @param [Hash] params ({})
    def create_connection(params = {}, options = {})
      req = build_request(:create_connection, params)
      req.send_request(options)
    end

    # Creates a resource that represents the infrastructure where a
    # third-party provider is installed. The host is used when you create
    # connections to an installed third-party provider type, such as GitHub
    # Enterprise Server. You create one host for all connections to that
    # provider.
    #
    # <note markdown="1"> A host created through the CLI or the SDK is in `PENDING` status by
    # default. You can make its status `AVAILABLE` by setting up the host
    # in the console.
    #
    #  </note>
    #
    # @option params [required, String] :name
    #   The name of the host to be created. The name must be unique in the
    #   calling AWS account.
    #
    # @option params [required, String] :provider_type
    #   The name of the installed provider to be associated with your
    #   connection. The host resource represents the infrastructure where your
    #   provider type is installed. The valid provider type is GitHub
    #   Enterprise Server.
    #
    # @option params [required, String] :provider_endpoint
    #   The endpoint of the infrastructure to be represented by the host after
    #   it is created.
    #
    # @option params [Types::VpcConfiguration] :vpc_configuration
    #   The VPC configuration to be provisioned for the host. A VPC must be
    #   configured and the infrastructure to be represented by the host must
    #   already be connected to the VPC.
    #
    # @return [Types::CreateHostOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateHostOutput#host_arn #host_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_host({
    #     name: "HostName", # required
    #     provider_type: "Bitbucket", # required, accepts Bitbucket, GitHub, GitHubEnterpriseServer
    #     provider_endpoint: "Url", # required
    #     vpc_configuration: {
    #       vpc_id: "VpcId", # required
    #       subnet_ids: ["SubnetId"], # required
    #       security_group_ids: ["SecurityGroupId"], # required
    #       tls_certificate: "TlsCertificate",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.host_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-connections-2019-12-01/CreateHost AWS API Documentation
    #
    # @overload create_host(params = {})
    # @param [Hash] params ({})
    def create_host(params = {}, options = {})
      req = build_request(:create_host, params)
      req.send_request(options)
    end

    # The connection to be deleted.
    #
    # @option params [required, String] :connection_arn
    #   The Amazon Resource Name (ARN) of the connection to be deleted.
    #
    #   <note markdown="1"> The ARN is never reused if the connection is deleted.
    #
    #    </note>
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_connection({
    #     connection_arn: "ConnectionArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-connections-2019-12-01/DeleteConnection AWS API Documentation
    #
    # @overload delete_connection(params = {})
    # @param [Hash] params ({})
    def delete_connection(params = {}, options = {})
      req = build_request(:delete_connection, params)
      req.send_request(options)
    end

    # The host to be deleted. Before you delete a host, all connections
    # associated to the host must be deleted.
    #
    # <note markdown="1"> A host cannot be deleted if it is in the VPC\_CONFIG\_INITIALIZING or
    # VPC\_CONFIG\_DELETING state.
    #
    #  </note>
    #
    # @option params [required, String] :host_arn
    #   The Amazon Resource Name (ARN) of the host to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_host({
    #     host_arn: "HostArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-connections-2019-12-01/DeleteHost AWS API Documentation
    #
    # @overload delete_host(params = {})
    # @param [Hash] params ({})
    def delete_host(params = {}, options = {})
      req = build_request(:delete_host, params)
      req.send_request(options)
    end

    # Returns the connection ARN and details such as status, owner, and
    # provider type.
    #
    # @option params [required, String] :connection_arn
    #   The Amazon Resource Name (ARN) of a connection.
    #
    # @return [Types::GetConnectionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetConnectionOutput#connection #connection} => Types::Connection
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_connection({
    #     connection_arn: "ConnectionArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.connection.connection_name #=> String
    #   resp.connection.connection_arn #=> String
    #   resp.connection.provider_type #=> String, one of "Bitbucket", "GitHub", "GitHubEnterpriseServer"
    #   resp.connection.owner_account_id #=> String
    #   resp.connection.connection_status #=> String, one of "PENDING", "AVAILABLE", "ERROR"
    #   resp.connection.host_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-connections-2019-12-01/GetConnection AWS API Documentation
    #
    # @overload get_connection(params = {})
    # @param [Hash] params ({})
    def get_connection(params = {}, options = {})
      req = build_request(:get_connection, params)
      req.send_request(options)
    end

    # Returns the host ARN and details such as status, provider type,
    # endpoint, and, if applicable, the VPC configuration.
    #
    # @option params [required, String] :host_arn
    #   The Amazon Resource Name (ARN) of the requested host.
    #
    # @return [Types::GetHostOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetHostOutput#name #name} => String
    #   * {Types::GetHostOutput#status #status} => String
    #   * {Types::GetHostOutput#provider_type #provider_type} => String
    #   * {Types::GetHostOutput#provider_endpoint #provider_endpoint} => String
    #   * {Types::GetHostOutput#vpc_configuration #vpc_configuration} => Types::VpcConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_host({
    #     host_arn: "HostArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.status #=> String
    #   resp.provider_type #=> String, one of "Bitbucket", "GitHub", "GitHubEnterpriseServer"
    #   resp.provider_endpoint #=> String
    #   resp.vpc_configuration.vpc_id #=> String
    #   resp.vpc_configuration.subnet_ids #=> Array
    #   resp.vpc_configuration.subnet_ids[0] #=> String
    #   resp.vpc_configuration.security_group_ids #=> Array
    #   resp.vpc_configuration.security_group_ids[0] #=> String
    #   resp.vpc_configuration.tls_certificate #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-connections-2019-12-01/GetHost AWS API Documentation
    #
    # @overload get_host(params = {})
    # @param [Hash] params ({})
    def get_host(params = {}, options = {})
      req = build_request(:get_host, params)
      req.send_request(options)
    end

    # Lists the connections associated with your account.
    #
    # @option params [String] :provider_type_filter
    #   Filters the list of connections to those associated with a specified
    #   provider, such as Bitbucket.
    #
    # @option params [String] :host_arn_filter
    #   Filters the list of connections to those associated with a specified
    #   host.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call. To retrieve
    #   the remaining results, make another call with the returned `nextToken`
    #   value.
    #
    # @option params [String] :next_token
    #   The token that was returned from the previous `ListConnections` call,
    #   which can be used to return the next set of connections in the list.
    #
    # @return [Types::ListConnectionsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListConnectionsOutput#connections #connections} => Array&lt;Types::Connection&gt;
    #   * {Types::ListConnectionsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_connections({
    #     provider_type_filter: "Bitbucket", # accepts Bitbucket, GitHub, GitHubEnterpriseServer
    #     host_arn_filter: "HostArn",
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.connections #=> Array
    #   resp.connections[0].connection_name #=> String
    #   resp.connections[0].connection_arn #=> String
    #   resp.connections[0].provider_type #=> String, one of "Bitbucket", "GitHub", "GitHubEnterpriseServer"
    #   resp.connections[0].owner_account_id #=> String
    #   resp.connections[0].connection_status #=> String, one of "PENDING", "AVAILABLE", "ERROR"
    #   resp.connections[0].host_arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-connections-2019-12-01/ListConnections AWS API Documentation
    #
    # @overload list_connections(params = {})
    # @param [Hash] params ({})
    def list_connections(params = {}, options = {})
      req = build_request(:list_connections, params)
      req.send_request(options)
    end

    # Lists the hosts associated with your account.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call. To retrieve
    #   the remaining results, make another call with the returned `nextToken`
    #   value.
    #
    # @option params [String] :next_token
    #   The token that was returned from the previous `ListHosts` call, which
    #   can be used to return the next set of hosts in the list.
    #
    # @return [Types::ListHostsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListHostsOutput#hosts #hosts} => Array&lt;Types::Host&gt;
    #   * {Types::ListHostsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_hosts({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.hosts #=> Array
    #   resp.hosts[0].name #=> String
    #   resp.hosts[0].host_arn #=> String
    #   resp.hosts[0].provider_type #=> String, one of "Bitbucket", "GitHub", "GitHubEnterpriseServer"
    #   resp.hosts[0].provider_endpoint #=> String
    #   resp.hosts[0].vpc_configuration.vpc_id #=> String
    #   resp.hosts[0].vpc_configuration.subnet_ids #=> Array
    #   resp.hosts[0].vpc_configuration.subnet_ids[0] #=> String
    #   resp.hosts[0].vpc_configuration.security_group_ids #=> Array
    #   resp.hosts[0].vpc_configuration.security_group_ids[0] #=> String
    #   resp.hosts[0].vpc_configuration.tls_certificate #=> String
    #   resp.hosts[0].status #=> String
    #   resp.hosts[0].status_message #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-connections-2019-12-01/ListHosts AWS API Documentation
    #
    # @overload list_hosts(params = {})
    # @param [Hash] params ({})
    def list_hosts(params = {}, options = {})
      req = build_request(:list_hosts, params)
      req.send_request(options)
    end

    # Gets the set of key-value pairs (metadata) that are used to manage the
    # resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource for which you want to
    #   get information about tags, if any.
    #
    # @return [Types::ListTagsForResourceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceOutput#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "AmazonResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-connections-2019-12-01/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Adds to or modifies the tags of the given resource. Tags are metadata
    # that can be used to manage a resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource to which you want to
    #   add or update tags.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   The tags you want to modify or add to the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "AmazonResourceName", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-connections-2019-12-01/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes tags from an AWS resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource to remove tags from.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The list of keys for the tags to be removed from the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "AmazonResourceName", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-connections-2019-12-01/UntagResource AWS API Documentation
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
      context[:gem_name] = 'aws-sdk-codestarconnections'
      context[:gem_version] = '1.11.0'
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
