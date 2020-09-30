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

Aws::Plugins::GlobalConfiguration.add_identifier(:mediaconnect)

module Aws::MediaConnect
  # An API client for MediaConnect.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::MediaConnect::Client.new(
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

    @identifier = :mediaconnect

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

    # Adds outputs to an existing flow. You can create up to 50 outputs per
    # flow.
    #
    # @option params [required, String] :flow_arn
    #
    # @option params [required, Array<Types::AddOutputRequest>] :outputs
    #   A list of outputs that you want to add.
    #
    # @return [Types::AddFlowOutputsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AddFlowOutputsResponse#flow_arn #flow_arn} => String
    #   * {Types::AddFlowOutputsResponse#outputs #outputs} => Array&lt;Types::Output&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_flow_outputs({
    #     flow_arn: "__string", # required
    #     outputs: [ # required
    #       {
    #         cidr_allow_list: ["__string"],
    #         description: "__string",
    #         destination: "__string",
    #         encryption: {
    #           algorithm: "aes128", # required, accepts aes128, aes192, aes256
    #           constant_initialization_vector: "__string",
    #           device_id: "__string",
    #           key_type: "speke", # accepts speke, static-key
    #           region: "__string",
    #           resource_id: "__string",
    #           role_arn: "__string", # required
    #           secret_arn: "__string",
    #           url: "__string",
    #         },
    #         max_latency: 1,
    #         name: "__string",
    #         port: 1,
    #         protocol: "zixi-push", # required, accepts zixi-push, rtp-fec, rtp, zixi-pull, rist
    #         remote_id: "__string",
    #         smoothing_latency: 1,
    #         stream_id: "__string",
    #         vpc_interface_attachment: {
    #           vpc_interface_name: "__string",
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.flow_arn #=> String
    #   resp.outputs #=> Array
    #   resp.outputs[0].data_transfer_subscriber_fee_percent #=> Integer
    #   resp.outputs[0].description #=> String
    #   resp.outputs[0].destination #=> String
    #   resp.outputs[0].encryption.algorithm #=> String, one of "aes128", "aes192", "aes256"
    #   resp.outputs[0].encryption.constant_initialization_vector #=> String
    #   resp.outputs[0].encryption.device_id #=> String
    #   resp.outputs[0].encryption.key_type #=> String, one of "speke", "static-key"
    #   resp.outputs[0].encryption.region #=> String
    #   resp.outputs[0].encryption.resource_id #=> String
    #   resp.outputs[0].encryption.role_arn #=> String
    #   resp.outputs[0].encryption.secret_arn #=> String
    #   resp.outputs[0].encryption.url #=> String
    #   resp.outputs[0].entitlement_arn #=> String
    #   resp.outputs[0].media_live_input_arn #=> String
    #   resp.outputs[0].name #=> String
    #   resp.outputs[0].output_arn #=> String
    #   resp.outputs[0].port #=> Integer
    #   resp.outputs[0].transport.cidr_allow_list #=> Array
    #   resp.outputs[0].transport.cidr_allow_list[0] #=> String
    #   resp.outputs[0].transport.max_bitrate #=> Integer
    #   resp.outputs[0].transport.max_latency #=> Integer
    #   resp.outputs[0].transport.protocol #=> String, one of "zixi-push", "rtp-fec", "rtp", "zixi-pull", "rist"
    #   resp.outputs[0].transport.remote_id #=> String
    #   resp.outputs[0].transport.smoothing_latency #=> Integer
    #   resp.outputs[0].transport.stream_id #=> String
    #   resp.outputs[0].vpc_interface_attachment.vpc_interface_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/AddFlowOutputs AWS API Documentation
    #
    # @overload add_flow_outputs(params = {})
    # @param [Hash] params ({})
    def add_flow_outputs(params = {}, options = {})
      req = build_request(:add_flow_outputs, params)
      req.send_request(options)
    end

    # Adds Sources to flow
    #
    # @option params [required, String] :flow_arn
    #
    # @option params [required, Array<Types::SetSourceRequest>] :sources
    #   A list of sources that you want to add.
    #
    # @return [Types::AddFlowSourcesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AddFlowSourcesResponse#flow_arn #flow_arn} => String
    #   * {Types::AddFlowSourcesResponse#sources #sources} => Array&lt;Types::Source&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_flow_sources({
    #     flow_arn: "__string", # required
    #     sources: [ # required
    #       {
    #         decryption: {
    #           algorithm: "aes128", # required, accepts aes128, aes192, aes256
    #           constant_initialization_vector: "__string",
    #           device_id: "__string",
    #           key_type: "speke", # accepts speke, static-key
    #           region: "__string",
    #           resource_id: "__string",
    #           role_arn: "__string", # required
    #           secret_arn: "__string",
    #           url: "__string",
    #         },
    #         description: "__string",
    #         entitlement_arn: "__string",
    #         ingest_port: 1,
    #         max_bitrate: 1,
    #         max_latency: 1,
    #         name: "__string",
    #         protocol: "zixi-push", # accepts zixi-push, rtp-fec, rtp, zixi-pull, rist
    #         stream_id: "__string",
    #         vpc_interface_name: "__string",
    #         whitelist_cidr: "__string",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.flow_arn #=> String
    #   resp.sources #=> Array
    #   resp.sources[0].data_transfer_subscriber_fee_percent #=> Integer
    #   resp.sources[0].decryption.algorithm #=> String, one of "aes128", "aes192", "aes256"
    #   resp.sources[0].decryption.constant_initialization_vector #=> String
    #   resp.sources[0].decryption.device_id #=> String
    #   resp.sources[0].decryption.key_type #=> String, one of "speke", "static-key"
    #   resp.sources[0].decryption.region #=> String
    #   resp.sources[0].decryption.resource_id #=> String
    #   resp.sources[0].decryption.role_arn #=> String
    #   resp.sources[0].decryption.secret_arn #=> String
    #   resp.sources[0].decryption.url #=> String
    #   resp.sources[0].description #=> String
    #   resp.sources[0].entitlement_arn #=> String
    #   resp.sources[0].ingest_ip #=> String
    #   resp.sources[0].ingest_port #=> Integer
    #   resp.sources[0].name #=> String
    #   resp.sources[0].source_arn #=> String
    #   resp.sources[0].transport.cidr_allow_list #=> Array
    #   resp.sources[0].transport.cidr_allow_list[0] #=> String
    #   resp.sources[0].transport.max_bitrate #=> Integer
    #   resp.sources[0].transport.max_latency #=> Integer
    #   resp.sources[0].transport.protocol #=> String, one of "zixi-push", "rtp-fec", "rtp", "zixi-pull", "rist"
    #   resp.sources[0].transport.remote_id #=> String
    #   resp.sources[0].transport.smoothing_latency #=> Integer
    #   resp.sources[0].transport.stream_id #=> String
    #   resp.sources[0].vpc_interface_name #=> String
    #   resp.sources[0].whitelist_cidr #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/AddFlowSources AWS API Documentation
    #
    # @overload add_flow_sources(params = {})
    # @param [Hash] params ({})
    def add_flow_sources(params = {}, options = {})
      req = build_request(:add_flow_sources, params)
      req.send_request(options)
    end

    # Adds VPC interfaces to flow
    #
    # @option params [required, String] :flow_arn
    #
    # @option params [required, Array<Types::VpcInterfaceRequest>] :vpc_interfaces
    #   A list of VPC interfaces that you want to add.
    #
    # @return [Types::AddFlowVpcInterfacesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AddFlowVpcInterfacesResponse#flow_arn #flow_arn} => String
    #   * {Types::AddFlowVpcInterfacesResponse#vpc_interfaces #vpc_interfaces} => Array&lt;Types::VpcInterface&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_flow_vpc_interfaces({
    #     flow_arn: "__string", # required
    #     vpc_interfaces: [ # required
    #       {
    #         name: "__string", # required
    #         role_arn: "__string", # required
    #         security_group_ids: ["__string"], # required
    #         subnet_id: "__string", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.flow_arn #=> String
    #   resp.vpc_interfaces #=> Array
    #   resp.vpc_interfaces[0].name #=> String
    #   resp.vpc_interfaces[0].network_interface_ids #=> Array
    #   resp.vpc_interfaces[0].network_interface_ids[0] #=> String
    #   resp.vpc_interfaces[0].role_arn #=> String
    #   resp.vpc_interfaces[0].security_group_ids #=> Array
    #   resp.vpc_interfaces[0].security_group_ids[0] #=> String
    #   resp.vpc_interfaces[0].subnet_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/AddFlowVpcInterfaces AWS API Documentation
    #
    # @overload add_flow_vpc_interfaces(params = {})
    # @param [Hash] params ({})
    def add_flow_vpc_interfaces(params = {}, options = {})
      req = build_request(:add_flow_vpc_interfaces, params)
      req.send_request(options)
    end

    # Creates a new flow. The request must include one source. The request
    # optionally can include outputs (up to 50) and entitlements (up to 50).
    #
    # @option params [String] :availability_zone
    #   The Availability Zone that you want to create the flow in. These
    #   options are limited to the Availability Zones within the current AWS
    #   Region.
    #
    # @option params [Array<Types::GrantEntitlementRequest>] :entitlements
    #   The entitlements that you want to grant on a flow.
    #
    # @option params [required, String] :name
    #   The name of the flow.
    #
    # @option params [Array<Types::AddOutputRequest>] :outputs
    #   The outputs that you want to add to this flow.
    #
    # @option params [Types::SetSourceRequest] :source
    #   The settings for the source of the flow.
    #
    # @option params [Types::FailoverConfig] :source_failover_config
    #   The settings for source failover
    #
    # @option params [Array<Types::SetSourceRequest>] :sources
    #
    # @option params [Array<Types::VpcInterfaceRequest>] :vpc_interfaces
    #   The VPC interfaces you want on the flow.
    #
    # @return [Types::CreateFlowResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateFlowResponse#flow #flow} => Types::Flow
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_flow({
    #     availability_zone: "__string",
    #     entitlements: [
    #       {
    #         data_transfer_subscriber_fee_percent: 1,
    #         description: "__string",
    #         encryption: {
    #           algorithm: "aes128", # required, accepts aes128, aes192, aes256
    #           constant_initialization_vector: "__string",
    #           device_id: "__string",
    #           key_type: "speke", # accepts speke, static-key
    #           region: "__string",
    #           resource_id: "__string",
    #           role_arn: "__string", # required
    #           secret_arn: "__string",
    #           url: "__string",
    #         },
    #         entitlement_status: "ENABLED", # accepts ENABLED, DISABLED
    #         name: "__string",
    #         subscribers: ["__string"], # required
    #       },
    #     ],
    #     name: "__string", # required
    #     outputs: [
    #       {
    #         cidr_allow_list: ["__string"],
    #         description: "__string",
    #         destination: "__string",
    #         encryption: {
    #           algorithm: "aes128", # required, accepts aes128, aes192, aes256
    #           constant_initialization_vector: "__string",
    #           device_id: "__string",
    #           key_type: "speke", # accepts speke, static-key
    #           region: "__string",
    #           resource_id: "__string",
    #           role_arn: "__string", # required
    #           secret_arn: "__string",
    #           url: "__string",
    #         },
    #         max_latency: 1,
    #         name: "__string",
    #         port: 1,
    #         protocol: "zixi-push", # required, accepts zixi-push, rtp-fec, rtp, zixi-pull, rist
    #         remote_id: "__string",
    #         smoothing_latency: 1,
    #         stream_id: "__string",
    #         vpc_interface_attachment: {
    #           vpc_interface_name: "__string",
    #         },
    #       },
    #     ],
    #     source: {
    #       decryption: {
    #         algorithm: "aes128", # required, accepts aes128, aes192, aes256
    #         constant_initialization_vector: "__string",
    #         device_id: "__string",
    #         key_type: "speke", # accepts speke, static-key
    #         region: "__string",
    #         resource_id: "__string",
    #         role_arn: "__string", # required
    #         secret_arn: "__string",
    #         url: "__string",
    #       },
    #       description: "__string",
    #       entitlement_arn: "__string",
    #       ingest_port: 1,
    #       max_bitrate: 1,
    #       max_latency: 1,
    #       name: "__string",
    #       protocol: "zixi-push", # accepts zixi-push, rtp-fec, rtp, zixi-pull, rist
    #       stream_id: "__string",
    #       vpc_interface_name: "__string",
    #       whitelist_cidr: "__string",
    #     },
    #     source_failover_config: {
    #       recovery_window: 1,
    #       state: "ENABLED", # accepts ENABLED, DISABLED
    #     },
    #     sources: [
    #       {
    #         decryption: {
    #           algorithm: "aes128", # required, accepts aes128, aes192, aes256
    #           constant_initialization_vector: "__string",
    #           device_id: "__string",
    #           key_type: "speke", # accepts speke, static-key
    #           region: "__string",
    #           resource_id: "__string",
    #           role_arn: "__string", # required
    #           secret_arn: "__string",
    #           url: "__string",
    #         },
    #         description: "__string",
    #         entitlement_arn: "__string",
    #         ingest_port: 1,
    #         max_bitrate: 1,
    #         max_latency: 1,
    #         name: "__string",
    #         protocol: "zixi-push", # accepts zixi-push, rtp-fec, rtp, zixi-pull, rist
    #         stream_id: "__string",
    #         vpc_interface_name: "__string",
    #         whitelist_cidr: "__string",
    #       },
    #     ],
    #     vpc_interfaces: [
    #       {
    #         name: "__string", # required
    #         role_arn: "__string", # required
    #         security_group_ids: ["__string"], # required
    #         subnet_id: "__string", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.flow.availability_zone #=> String
    #   resp.flow.description #=> String
    #   resp.flow.egress_ip #=> String
    #   resp.flow.entitlements #=> Array
    #   resp.flow.entitlements[0].data_transfer_subscriber_fee_percent #=> Integer
    #   resp.flow.entitlements[0].description #=> String
    #   resp.flow.entitlements[0].encryption.algorithm #=> String, one of "aes128", "aes192", "aes256"
    #   resp.flow.entitlements[0].encryption.constant_initialization_vector #=> String
    #   resp.flow.entitlements[0].encryption.device_id #=> String
    #   resp.flow.entitlements[0].encryption.key_type #=> String, one of "speke", "static-key"
    #   resp.flow.entitlements[0].encryption.region #=> String
    #   resp.flow.entitlements[0].encryption.resource_id #=> String
    #   resp.flow.entitlements[0].encryption.role_arn #=> String
    #   resp.flow.entitlements[0].encryption.secret_arn #=> String
    #   resp.flow.entitlements[0].encryption.url #=> String
    #   resp.flow.entitlements[0].entitlement_arn #=> String
    #   resp.flow.entitlements[0].entitlement_status #=> String, one of "ENABLED", "DISABLED"
    #   resp.flow.entitlements[0].name #=> String
    #   resp.flow.entitlements[0].subscribers #=> Array
    #   resp.flow.entitlements[0].subscribers[0] #=> String
    #   resp.flow.flow_arn #=> String
    #   resp.flow.name #=> String
    #   resp.flow.outputs #=> Array
    #   resp.flow.outputs[0].data_transfer_subscriber_fee_percent #=> Integer
    #   resp.flow.outputs[0].description #=> String
    #   resp.flow.outputs[0].destination #=> String
    #   resp.flow.outputs[0].encryption.algorithm #=> String, one of "aes128", "aes192", "aes256"
    #   resp.flow.outputs[0].encryption.constant_initialization_vector #=> String
    #   resp.flow.outputs[0].encryption.device_id #=> String
    #   resp.flow.outputs[0].encryption.key_type #=> String, one of "speke", "static-key"
    #   resp.flow.outputs[0].encryption.region #=> String
    #   resp.flow.outputs[0].encryption.resource_id #=> String
    #   resp.flow.outputs[0].encryption.role_arn #=> String
    #   resp.flow.outputs[0].encryption.secret_arn #=> String
    #   resp.flow.outputs[0].encryption.url #=> String
    #   resp.flow.outputs[0].entitlement_arn #=> String
    #   resp.flow.outputs[0].media_live_input_arn #=> String
    #   resp.flow.outputs[0].name #=> String
    #   resp.flow.outputs[0].output_arn #=> String
    #   resp.flow.outputs[0].port #=> Integer
    #   resp.flow.outputs[0].transport.cidr_allow_list #=> Array
    #   resp.flow.outputs[0].transport.cidr_allow_list[0] #=> String
    #   resp.flow.outputs[0].transport.max_bitrate #=> Integer
    #   resp.flow.outputs[0].transport.max_latency #=> Integer
    #   resp.flow.outputs[0].transport.protocol #=> String, one of "zixi-push", "rtp-fec", "rtp", "zixi-pull", "rist"
    #   resp.flow.outputs[0].transport.remote_id #=> String
    #   resp.flow.outputs[0].transport.smoothing_latency #=> Integer
    #   resp.flow.outputs[0].transport.stream_id #=> String
    #   resp.flow.outputs[0].vpc_interface_attachment.vpc_interface_name #=> String
    #   resp.flow.source.data_transfer_subscriber_fee_percent #=> Integer
    #   resp.flow.source.decryption.algorithm #=> String, one of "aes128", "aes192", "aes256"
    #   resp.flow.source.decryption.constant_initialization_vector #=> String
    #   resp.flow.source.decryption.device_id #=> String
    #   resp.flow.source.decryption.key_type #=> String, one of "speke", "static-key"
    #   resp.flow.source.decryption.region #=> String
    #   resp.flow.source.decryption.resource_id #=> String
    #   resp.flow.source.decryption.role_arn #=> String
    #   resp.flow.source.decryption.secret_arn #=> String
    #   resp.flow.source.decryption.url #=> String
    #   resp.flow.source.description #=> String
    #   resp.flow.source.entitlement_arn #=> String
    #   resp.flow.source.ingest_ip #=> String
    #   resp.flow.source.ingest_port #=> Integer
    #   resp.flow.source.name #=> String
    #   resp.flow.source.source_arn #=> String
    #   resp.flow.source.transport.cidr_allow_list #=> Array
    #   resp.flow.source.transport.cidr_allow_list[0] #=> String
    #   resp.flow.source.transport.max_bitrate #=> Integer
    #   resp.flow.source.transport.max_latency #=> Integer
    #   resp.flow.source.transport.protocol #=> String, one of "zixi-push", "rtp-fec", "rtp", "zixi-pull", "rist"
    #   resp.flow.source.transport.remote_id #=> String
    #   resp.flow.source.transport.smoothing_latency #=> Integer
    #   resp.flow.source.transport.stream_id #=> String
    #   resp.flow.source.vpc_interface_name #=> String
    #   resp.flow.source.whitelist_cidr #=> String
    #   resp.flow.source_failover_config.recovery_window #=> Integer
    #   resp.flow.source_failover_config.state #=> String, one of "ENABLED", "DISABLED"
    #   resp.flow.sources #=> Array
    #   resp.flow.sources[0].data_transfer_subscriber_fee_percent #=> Integer
    #   resp.flow.sources[0].decryption.algorithm #=> String, one of "aes128", "aes192", "aes256"
    #   resp.flow.sources[0].decryption.constant_initialization_vector #=> String
    #   resp.flow.sources[0].decryption.device_id #=> String
    #   resp.flow.sources[0].decryption.key_type #=> String, one of "speke", "static-key"
    #   resp.flow.sources[0].decryption.region #=> String
    #   resp.flow.sources[0].decryption.resource_id #=> String
    #   resp.flow.sources[0].decryption.role_arn #=> String
    #   resp.flow.sources[0].decryption.secret_arn #=> String
    #   resp.flow.sources[0].decryption.url #=> String
    #   resp.flow.sources[0].description #=> String
    #   resp.flow.sources[0].entitlement_arn #=> String
    #   resp.flow.sources[0].ingest_ip #=> String
    #   resp.flow.sources[0].ingest_port #=> Integer
    #   resp.flow.sources[0].name #=> String
    #   resp.flow.sources[0].source_arn #=> String
    #   resp.flow.sources[0].transport.cidr_allow_list #=> Array
    #   resp.flow.sources[0].transport.cidr_allow_list[0] #=> String
    #   resp.flow.sources[0].transport.max_bitrate #=> Integer
    #   resp.flow.sources[0].transport.max_latency #=> Integer
    #   resp.flow.sources[0].transport.protocol #=> String, one of "zixi-push", "rtp-fec", "rtp", "zixi-pull", "rist"
    #   resp.flow.sources[0].transport.remote_id #=> String
    #   resp.flow.sources[0].transport.smoothing_latency #=> Integer
    #   resp.flow.sources[0].transport.stream_id #=> String
    #   resp.flow.sources[0].vpc_interface_name #=> String
    #   resp.flow.sources[0].whitelist_cidr #=> String
    #   resp.flow.status #=> String, one of "STANDBY", "ACTIVE", "UPDATING", "DELETING", "STARTING", "STOPPING", "ERROR"
    #   resp.flow.vpc_interfaces #=> Array
    #   resp.flow.vpc_interfaces[0].name #=> String
    #   resp.flow.vpc_interfaces[0].network_interface_ids #=> Array
    #   resp.flow.vpc_interfaces[0].network_interface_ids[0] #=> String
    #   resp.flow.vpc_interfaces[0].role_arn #=> String
    #   resp.flow.vpc_interfaces[0].security_group_ids #=> Array
    #   resp.flow.vpc_interfaces[0].security_group_ids[0] #=> String
    #   resp.flow.vpc_interfaces[0].subnet_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/CreateFlow AWS API Documentation
    #
    # @overload create_flow(params = {})
    # @param [Hash] params ({})
    def create_flow(params = {}, options = {})
      req = build_request(:create_flow, params)
      req.send_request(options)
    end

    # Deletes a flow. Before you can delete a flow, you must stop the flow.
    #
    # @option params [required, String] :flow_arn
    #
    # @return [Types::DeleteFlowResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteFlowResponse#flow_arn #flow_arn} => String
    #   * {Types::DeleteFlowResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_flow({
    #     flow_arn: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.flow_arn #=> String
    #   resp.status #=> String, one of "STANDBY", "ACTIVE", "UPDATING", "DELETING", "STARTING", "STOPPING", "ERROR"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/DeleteFlow AWS API Documentation
    #
    # @overload delete_flow(params = {})
    # @param [Hash] params ({})
    def delete_flow(params = {}, options = {})
      req = build_request(:delete_flow, params)
      req.send_request(options)
    end

    # Displays the details of a flow. The response includes the flow ARN,
    # name, and Availability Zone, as well as details about the source,
    # outputs, and entitlements.
    #
    # @option params [required, String] :flow_arn
    #
    # @return [Types::DescribeFlowResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeFlowResponse#flow #flow} => Types::Flow
    #   * {Types::DescribeFlowResponse#messages #messages} => Types::Messages
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_flow({
    #     flow_arn: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.flow.availability_zone #=> String
    #   resp.flow.description #=> String
    #   resp.flow.egress_ip #=> String
    #   resp.flow.entitlements #=> Array
    #   resp.flow.entitlements[0].data_transfer_subscriber_fee_percent #=> Integer
    #   resp.flow.entitlements[0].description #=> String
    #   resp.flow.entitlements[0].encryption.algorithm #=> String, one of "aes128", "aes192", "aes256"
    #   resp.flow.entitlements[0].encryption.constant_initialization_vector #=> String
    #   resp.flow.entitlements[0].encryption.device_id #=> String
    #   resp.flow.entitlements[0].encryption.key_type #=> String, one of "speke", "static-key"
    #   resp.flow.entitlements[0].encryption.region #=> String
    #   resp.flow.entitlements[0].encryption.resource_id #=> String
    #   resp.flow.entitlements[0].encryption.role_arn #=> String
    #   resp.flow.entitlements[0].encryption.secret_arn #=> String
    #   resp.flow.entitlements[0].encryption.url #=> String
    #   resp.flow.entitlements[0].entitlement_arn #=> String
    #   resp.flow.entitlements[0].entitlement_status #=> String, one of "ENABLED", "DISABLED"
    #   resp.flow.entitlements[0].name #=> String
    #   resp.flow.entitlements[0].subscribers #=> Array
    #   resp.flow.entitlements[0].subscribers[0] #=> String
    #   resp.flow.flow_arn #=> String
    #   resp.flow.name #=> String
    #   resp.flow.outputs #=> Array
    #   resp.flow.outputs[0].data_transfer_subscriber_fee_percent #=> Integer
    #   resp.flow.outputs[0].description #=> String
    #   resp.flow.outputs[0].destination #=> String
    #   resp.flow.outputs[0].encryption.algorithm #=> String, one of "aes128", "aes192", "aes256"
    #   resp.flow.outputs[0].encryption.constant_initialization_vector #=> String
    #   resp.flow.outputs[0].encryption.device_id #=> String
    #   resp.flow.outputs[0].encryption.key_type #=> String, one of "speke", "static-key"
    #   resp.flow.outputs[0].encryption.region #=> String
    #   resp.flow.outputs[0].encryption.resource_id #=> String
    #   resp.flow.outputs[0].encryption.role_arn #=> String
    #   resp.flow.outputs[0].encryption.secret_arn #=> String
    #   resp.flow.outputs[0].encryption.url #=> String
    #   resp.flow.outputs[0].entitlement_arn #=> String
    #   resp.flow.outputs[0].media_live_input_arn #=> String
    #   resp.flow.outputs[0].name #=> String
    #   resp.flow.outputs[0].output_arn #=> String
    #   resp.flow.outputs[0].port #=> Integer
    #   resp.flow.outputs[0].transport.cidr_allow_list #=> Array
    #   resp.flow.outputs[0].transport.cidr_allow_list[0] #=> String
    #   resp.flow.outputs[0].transport.max_bitrate #=> Integer
    #   resp.flow.outputs[0].transport.max_latency #=> Integer
    #   resp.flow.outputs[0].transport.protocol #=> String, one of "zixi-push", "rtp-fec", "rtp", "zixi-pull", "rist"
    #   resp.flow.outputs[0].transport.remote_id #=> String
    #   resp.flow.outputs[0].transport.smoothing_latency #=> Integer
    #   resp.flow.outputs[0].transport.stream_id #=> String
    #   resp.flow.outputs[0].vpc_interface_attachment.vpc_interface_name #=> String
    #   resp.flow.source.data_transfer_subscriber_fee_percent #=> Integer
    #   resp.flow.source.decryption.algorithm #=> String, one of "aes128", "aes192", "aes256"
    #   resp.flow.source.decryption.constant_initialization_vector #=> String
    #   resp.flow.source.decryption.device_id #=> String
    #   resp.flow.source.decryption.key_type #=> String, one of "speke", "static-key"
    #   resp.flow.source.decryption.region #=> String
    #   resp.flow.source.decryption.resource_id #=> String
    #   resp.flow.source.decryption.role_arn #=> String
    #   resp.flow.source.decryption.secret_arn #=> String
    #   resp.flow.source.decryption.url #=> String
    #   resp.flow.source.description #=> String
    #   resp.flow.source.entitlement_arn #=> String
    #   resp.flow.source.ingest_ip #=> String
    #   resp.flow.source.ingest_port #=> Integer
    #   resp.flow.source.name #=> String
    #   resp.flow.source.source_arn #=> String
    #   resp.flow.source.transport.cidr_allow_list #=> Array
    #   resp.flow.source.transport.cidr_allow_list[0] #=> String
    #   resp.flow.source.transport.max_bitrate #=> Integer
    #   resp.flow.source.transport.max_latency #=> Integer
    #   resp.flow.source.transport.protocol #=> String, one of "zixi-push", "rtp-fec", "rtp", "zixi-pull", "rist"
    #   resp.flow.source.transport.remote_id #=> String
    #   resp.flow.source.transport.smoothing_latency #=> Integer
    #   resp.flow.source.transport.stream_id #=> String
    #   resp.flow.source.vpc_interface_name #=> String
    #   resp.flow.source.whitelist_cidr #=> String
    #   resp.flow.source_failover_config.recovery_window #=> Integer
    #   resp.flow.source_failover_config.state #=> String, one of "ENABLED", "DISABLED"
    #   resp.flow.sources #=> Array
    #   resp.flow.sources[0].data_transfer_subscriber_fee_percent #=> Integer
    #   resp.flow.sources[0].decryption.algorithm #=> String, one of "aes128", "aes192", "aes256"
    #   resp.flow.sources[0].decryption.constant_initialization_vector #=> String
    #   resp.flow.sources[0].decryption.device_id #=> String
    #   resp.flow.sources[0].decryption.key_type #=> String, one of "speke", "static-key"
    #   resp.flow.sources[0].decryption.region #=> String
    #   resp.flow.sources[0].decryption.resource_id #=> String
    #   resp.flow.sources[0].decryption.role_arn #=> String
    #   resp.flow.sources[0].decryption.secret_arn #=> String
    #   resp.flow.sources[0].decryption.url #=> String
    #   resp.flow.sources[0].description #=> String
    #   resp.flow.sources[0].entitlement_arn #=> String
    #   resp.flow.sources[0].ingest_ip #=> String
    #   resp.flow.sources[0].ingest_port #=> Integer
    #   resp.flow.sources[0].name #=> String
    #   resp.flow.sources[0].source_arn #=> String
    #   resp.flow.sources[0].transport.cidr_allow_list #=> Array
    #   resp.flow.sources[0].transport.cidr_allow_list[0] #=> String
    #   resp.flow.sources[0].transport.max_bitrate #=> Integer
    #   resp.flow.sources[0].transport.max_latency #=> Integer
    #   resp.flow.sources[0].transport.protocol #=> String, one of "zixi-push", "rtp-fec", "rtp", "zixi-pull", "rist"
    #   resp.flow.sources[0].transport.remote_id #=> String
    #   resp.flow.sources[0].transport.smoothing_latency #=> Integer
    #   resp.flow.sources[0].transport.stream_id #=> String
    #   resp.flow.sources[0].vpc_interface_name #=> String
    #   resp.flow.sources[0].whitelist_cidr #=> String
    #   resp.flow.status #=> String, one of "STANDBY", "ACTIVE", "UPDATING", "DELETING", "STARTING", "STOPPING", "ERROR"
    #   resp.flow.vpc_interfaces #=> Array
    #   resp.flow.vpc_interfaces[0].name #=> String
    #   resp.flow.vpc_interfaces[0].network_interface_ids #=> Array
    #   resp.flow.vpc_interfaces[0].network_interface_ids[0] #=> String
    #   resp.flow.vpc_interfaces[0].role_arn #=> String
    #   resp.flow.vpc_interfaces[0].security_group_ids #=> Array
    #   resp.flow.vpc_interfaces[0].security_group_ids[0] #=> String
    #   resp.flow.vpc_interfaces[0].subnet_id #=> String
    #   resp.messages.errors #=> Array
    #   resp.messages.errors[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/DescribeFlow AWS API Documentation
    #
    # @overload describe_flow(params = {})
    # @param [Hash] params ({})
    def describe_flow(params = {}, options = {})
      req = build_request(:describe_flow, params)
      req.send_request(options)
    end

    # Displays the details of an offering. The response includes the
    # offering description, duration, outbound bandwidth, price, and Amazon
    # Resource Name (ARN).
    #
    # @option params [required, String] :offering_arn
    #
    # @return [Types::DescribeOfferingResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeOfferingResponse#offering #offering} => Types::Offering
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_offering({
    #     offering_arn: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.offering.currency_code #=> String
    #   resp.offering.duration #=> Integer
    #   resp.offering.duration_units #=> String, one of "MONTHS"
    #   resp.offering.offering_arn #=> String
    #   resp.offering.offering_description #=> String
    #   resp.offering.price_per_unit #=> String
    #   resp.offering.price_units #=> String, one of "HOURLY"
    #   resp.offering.resource_specification.reserved_bitrate #=> Integer
    #   resp.offering.resource_specification.resource_type #=> String, one of "Mbps_Outbound_Bandwidth"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/DescribeOffering AWS API Documentation
    #
    # @overload describe_offering(params = {})
    # @param [Hash] params ({})
    def describe_offering(params = {}, options = {})
      req = build_request(:describe_offering, params)
      req.send_request(options)
    end

    # Displays the details of a reservation. The response includes the
    # reservation name, state, start date and time, and the details of the
    # offering that make up the rest of the reservation (such as price,
    # duration, and outbound bandwidth).
    #
    # @option params [required, String] :reservation_arn
    #
    # @return [Types::DescribeReservationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeReservationResponse#reservation #reservation} => Types::Reservation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_reservation({
    #     reservation_arn: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.reservation.currency_code #=> String
    #   resp.reservation.duration #=> Integer
    #   resp.reservation.duration_units #=> String, one of "MONTHS"
    #   resp.reservation.end #=> String
    #   resp.reservation.offering_arn #=> String
    #   resp.reservation.offering_description #=> String
    #   resp.reservation.price_per_unit #=> String
    #   resp.reservation.price_units #=> String, one of "HOURLY"
    #   resp.reservation.reservation_arn #=> String
    #   resp.reservation.reservation_name #=> String
    #   resp.reservation.reservation_state #=> String, one of "ACTIVE", "EXPIRED", "PROCESSING", "CANCELED"
    #   resp.reservation.resource_specification.reserved_bitrate #=> Integer
    #   resp.reservation.resource_specification.resource_type #=> String, one of "Mbps_Outbound_Bandwidth"
    #   resp.reservation.start #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/DescribeReservation AWS API Documentation
    #
    # @overload describe_reservation(params = {})
    # @param [Hash] params ({})
    def describe_reservation(params = {}, options = {})
      req = build_request(:describe_reservation, params)
      req.send_request(options)
    end

    # Grants entitlements to an existing flow.
    #
    # @option params [required, Array<Types::GrantEntitlementRequest>] :entitlements
    #   The list of entitlements that you want to grant.
    #
    # @option params [required, String] :flow_arn
    #
    # @return [Types::GrantFlowEntitlementsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GrantFlowEntitlementsResponse#entitlements #entitlements} => Array&lt;Types::Entitlement&gt;
    #   * {Types::GrantFlowEntitlementsResponse#flow_arn #flow_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.grant_flow_entitlements({
    #     entitlements: [ # required
    #       {
    #         data_transfer_subscriber_fee_percent: 1,
    #         description: "__string",
    #         encryption: {
    #           algorithm: "aes128", # required, accepts aes128, aes192, aes256
    #           constant_initialization_vector: "__string",
    #           device_id: "__string",
    #           key_type: "speke", # accepts speke, static-key
    #           region: "__string",
    #           resource_id: "__string",
    #           role_arn: "__string", # required
    #           secret_arn: "__string",
    #           url: "__string",
    #         },
    #         entitlement_status: "ENABLED", # accepts ENABLED, DISABLED
    #         name: "__string",
    #         subscribers: ["__string"], # required
    #       },
    #     ],
    #     flow_arn: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.entitlements #=> Array
    #   resp.entitlements[0].data_transfer_subscriber_fee_percent #=> Integer
    #   resp.entitlements[0].description #=> String
    #   resp.entitlements[0].encryption.algorithm #=> String, one of "aes128", "aes192", "aes256"
    #   resp.entitlements[0].encryption.constant_initialization_vector #=> String
    #   resp.entitlements[0].encryption.device_id #=> String
    #   resp.entitlements[0].encryption.key_type #=> String, one of "speke", "static-key"
    #   resp.entitlements[0].encryption.region #=> String
    #   resp.entitlements[0].encryption.resource_id #=> String
    #   resp.entitlements[0].encryption.role_arn #=> String
    #   resp.entitlements[0].encryption.secret_arn #=> String
    #   resp.entitlements[0].encryption.url #=> String
    #   resp.entitlements[0].entitlement_arn #=> String
    #   resp.entitlements[0].entitlement_status #=> String, one of "ENABLED", "DISABLED"
    #   resp.entitlements[0].name #=> String
    #   resp.entitlements[0].subscribers #=> Array
    #   resp.entitlements[0].subscribers[0] #=> String
    #   resp.flow_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/GrantFlowEntitlements AWS API Documentation
    #
    # @overload grant_flow_entitlements(params = {})
    # @param [Hash] params ({})
    def grant_flow_entitlements(params = {}, options = {})
      req = build_request(:grant_flow_entitlements, params)
      req.send_request(options)
    end

    # Displays a list of all entitlements that have been granted to this
    # account. This request returns 20 results per page.
    #
    # @option params [Integer] :max_results
    #
    # @option params [String] :next_token
    #
    # @return [Types::ListEntitlementsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEntitlementsResponse#entitlements #entitlements} => Array&lt;Types::ListedEntitlement&gt;
    #   * {Types::ListEntitlementsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_entitlements({
    #     max_results: 1,
    #     next_token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.entitlements #=> Array
    #   resp.entitlements[0].data_transfer_subscriber_fee_percent #=> Integer
    #   resp.entitlements[0].entitlement_arn #=> String
    #   resp.entitlements[0].entitlement_name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/ListEntitlements AWS API Documentation
    #
    # @overload list_entitlements(params = {})
    # @param [Hash] params ({})
    def list_entitlements(params = {}, options = {})
      req = build_request(:list_entitlements, params)
      req.send_request(options)
    end

    # Displays a list of flows that are associated with this account. This
    # request returns a paginated result.
    #
    # @option params [Integer] :max_results
    #
    # @option params [String] :next_token
    #
    # @return [Types::ListFlowsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFlowsResponse#flows #flows} => Array&lt;Types::ListedFlow&gt;
    #   * {Types::ListFlowsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_flows({
    #     max_results: 1,
    #     next_token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.flows #=> Array
    #   resp.flows[0].availability_zone #=> String
    #   resp.flows[0].description #=> String
    #   resp.flows[0].flow_arn #=> String
    #   resp.flows[0].name #=> String
    #   resp.flows[0].source_type #=> String, one of "OWNED", "ENTITLED"
    #   resp.flows[0].status #=> String, one of "STANDBY", "ACTIVE", "UPDATING", "DELETING", "STARTING", "STOPPING", "ERROR"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/ListFlows AWS API Documentation
    #
    # @overload list_flows(params = {})
    # @param [Hash] params ({})
    def list_flows(params = {}, options = {})
      req = build_request(:list_flows, params)
      req.send_request(options)
    end

    # Displays a list of all offerings that are available to this account in
    # the current AWS Region. If you have an active reservation (which means
    # you've purchased an offering that has already started and hasn't
    # expired yet), your account isn't eligible for other offerings.
    #
    # @option params [Integer] :max_results
    #
    # @option params [String] :next_token
    #
    # @return [Types::ListOfferingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListOfferingsResponse#next_token #next_token} => String
    #   * {Types::ListOfferingsResponse#offerings #offerings} => Array&lt;Types::Offering&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_offerings({
    #     max_results: 1,
    #     next_token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.offerings #=> Array
    #   resp.offerings[0].currency_code #=> String
    #   resp.offerings[0].duration #=> Integer
    #   resp.offerings[0].duration_units #=> String, one of "MONTHS"
    #   resp.offerings[0].offering_arn #=> String
    #   resp.offerings[0].offering_description #=> String
    #   resp.offerings[0].price_per_unit #=> String
    #   resp.offerings[0].price_units #=> String, one of "HOURLY"
    #   resp.offerings[0].resource_specification.reserved_bitrate #=> Integer
    #   resp.offerings[0].resource_specification.resource_type #=> String, one of "Mbps_Outbound_Bandwidth"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/ListOfferings AWS API Documentation
    #
    # @overload list_offerings(params = {})
    # @param [Hash] params ({})
    def list_offerings(params = {}, options = {})
      req = build_request(:list_offerings, params)
      req.send_request(options)
    end

    # Displays a list of all reservations that have been purchased by this
    # account in the current AWS Region. This list includes all reservations
    # in all states (such as active and expired).
    #
    # @option params [Integer] :max_results
    #
    # @option params [String] :next_token
    #
    # @return [Types::ListReservationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListReservationsResponse#next_token #next_token} => String
    #   * {Types::ListReservationsResponse#reservations #reservations} => Array&lt;Types::Reservation&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_reservations({
    #     max_results: 1,
    #     next_token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.reservations #=> Array
    #   resp.reservations[0].currency_code #=> String
    #   resp.reservations[0].duration #=> Integer
    #   resp.reservations[0].duration_units #=> String, one of "MONTHS"
    #   resp.reservations[0].end #=> String
    #   resp.reservations[0].offering_arn #=> String
    #   resp.reservations[0].offering_description #=> String
    #   resp.reservations[0].price_per_unit #=> String
    #   resp.reservations[0].price_units #=> String, one of "HOURLY"
    #   resp.reservations[0].reservation_arn #=> String
    #   resp.reservations[0].reservation_name #=> String
    #   resp.reservations[0].reservation_state #=> String, one of "ACTIVE", "EXPIRED", "PROCESSING", "CANCELED"
    #   resp.reservations[0].resource_specification.reserved_bitrate #=> Integer
    #   resp.reservations[0].resource_specification.resource_type #=> String, one of "Mbps_Outbound_Bandwidth"
    #   resp.reservations[0].start #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/ListReservations AWS API Documentation
    #
    # @overload list_reservations(params = {})
    # @param [Hash] params ({})
    def list_reservations(params = {}, options = {})
      req = build_request(:list_reservations, params)
      req.send_request(options)
    end

    # List all tags on an AWS Elemental MediaConnect resource
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Submits a request to purchase an offering. If you already have an
    # active reservation, you can't purchase another offering.
    #
    # @option params [required, String] :offering_arn
    #
    # @option params [required, String] :reservation_name
    #   The name that you want to use for the reservation.
    #
    # @option params [required, String] :start
    #   The date and time that you want the reservation to begin, in
    #   Coordinated Universal Time (UTC). You can specify any date and time
    #   between 12:00am on the first day of the current month to the current
    #   time on today's date, inclusive. Specify the start in a 24-hour
    #   notation. Use the following format: YYYY-MM-DDTHH:mm:SSZ, where T and
    #   Z are literal characters. For example, to specify 11:30pm on March 5,
    #   2020, enter 2020-03-05T23:30:00Z.
    #
    # @return [Types::PurchaseOfferingResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PurchaseOfferingResponse#reservation #reservation} => Types::Reservation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.purchase_offering({
    #     offering_arn: "__string", # required
    #     reservation_name: "__string", # required
    #     start: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.reservation.currency_code #=> String
    #   resp.reservation.duration #=> Integer
    #   resp.reservation.duration_units #=> String, one of "MONTHS"
    #   resp.reservation.end #=> String
    #   resp.reservation.offering_arn #=> String
    #   resp.reservation.offering_description #=> String
    #   resp.reservation.price_per_unit #=> String
    #   resp.reservation.price_units #=> String, one of "HOURLY"
    #   resp.reservation.reservation_arn #=> String
    #   resp.reservation.reservation_name #=> String
    #   resp.reservation.reservation_state #=> String, one of "ACTIVE", "EXPIRED", "PROCESSING", "CANCELED"
    #   resp.reservation.resource_specification.reserved_bitrate #=> Integer
    #   resp.reservation.resource_specification.resource_type #=> String, one of "Mbps_Outbound_Bandwidth"
    #   resp.reservation.start #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/PurchaseOffering AWS API Documentation
    #
    # @overload purchase_offering(params = {})
    # @param [Hash] params ({})
    def purchase_offering(params = {}, options = {})
      req = build_request(:purchase_offering, params)
      req.send_request(options)
    end

    # Removes an output from an existing flow. This request can be made only
    # on an output that does not have an entitlement associated with it. If
    # the output has an entitlement, you must revoke the entitlement
    # instead. When an entitlement is revoked from a flow, the service
    # automatically removes the associated output.
    #
    # @option params [required, String] :flow_arn
    #
    # @option params [required, String] :output_arn
    #
    # @return [Types::RemoveFlowOutputResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RemoveFlowOutputResponse#flow_arn #flow_arn} => String
    #   * {Types::RemoveFlowOutputResponse#output_arn #output_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_flow_output({
    #     flow_arn: "__string", # required
    #     output_arn: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.flow_arn #=> String
    #   resp.output_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/RemoveFlowOutput AWS API Documentation
    #
    # @overload remove_flow_output(params = {})
    # @param [Hash] params ({})
    def remove_flow_output(params = {}, options = {})
      req = build_request(:remove_flow_output, params)
      req.send_request(options)
    end

    # Removes a source from an existing flow. This request can be made only
    # if there is more than one source on the flow.
    #
    # @option params [required, String] :flow_arn
    #
    # @option params [required, String] :source_arn
    #
    # @return [Types::RemoveFlowSourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RemoveFlowSourceResponse#flow_arn #flow_arn} => String
    #   * {Types::RemoveFlowSourceResponse#source_arn #source_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_flow_source({
    #     flow_arn: "__string", # required
    #     source_arn: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.flow_arn #=> String
    #   resp.source_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/RemoveFlowSource AWS API Documentation
    #
    # @overload remove_flow_source(params = {})
    # @param [Hash] params ({})
    def remove_flow_source(params = {}, options = {})
      req = build_request(:remove_flow_source, params)
      req.send_request(options)
    end

    # Removes a VPC Interface from an existing flow. This request can be
    # made only on a VPC interface that does not have a Source or Output
    # associated with it. If the VPC interface is referenced by a Source or
    # Output, you must first delete or update the Source or Output to no
    # longer reference the VPC interface.
    #
    # @option params [required, String] :flow_arn
    #
    # @option params [required, String] :vpc_interface_name
    #
    # @return [Types::RemoveFlowVpcInterfaceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RemoveFlowVpcInterfaceResponse#flow_arn #flow_arn} => String
    #   * {Types::RemoveFlowVpcInterfaceResponse#non_deleted_network_interface_ids #non_deleted_network_interface_ids} => Array&lt;String&gt;
    #   * {Types::RemoveFlowVpcInterfaceResponse#vpc_interface_name #vpc_interface_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_flow_vpc_interface({
    #     flow_arn: "__string", # required
    #     vpc_interface_name: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.flow_arn #=> String
    #   resp.non_deleted_network_interface_ids #=> Array
    #   resp.non_deleted_network_interface_ids[0] #=> String
    #   resp.vpc_interface_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/RemoveFlowVpcInterface AWS API Documentation
    #
    # @overload remove_flow_vpc_interface(params = {})
    # @param [Hash] params ({})
    def remove_flow_vpc_interface(params = {}, options = {})
      req = build_request(:remove_flow_vpc_interface, params)
      req.send_request(options)
    end

    # Revokes an entitlement from a flow. Once an entitlement is revoked,
    # the content becomes unavailable to the subscriber and the associated
    # output is removed.
    #
    # @option params [required, String] :entitlement_arn
    #
    # @option params [required, String] :flow_arn
    #
    # @return [Types::RevokeFlowEntitlementResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RevokeFlowEntitlementResponse#entitlement_arn #entitlement_arn} => String
    #   * {Types::RevokeFlowEntitlementResponse#flow_arn #flow_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.revoke_flow_entitlement({
    #     entitlement_arn: "__string", # required
    #     flow_arn: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.entitlement_arn #=> String
    #   resp.flow_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/RevokeFlowEntitlement AWS API Documentation
    #
    # @overload revoke_flow_entitlement(params = {})
    # @param [Hash] params ({})
    def revoke_flow_entitlement(params = {}, options = {})
      req = build_request(:revoke_flow_entitlement, params)
      req.send_request(options)
    end

    # Starts a flow.
    #
    # @option params [required, String] :flow_arn
    #
    # @return [Types::StartFlowResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartFlowResponse#flow_arn #flow_arn} => String
    #   * {Types::StartFlowResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_flow({
    #     flow_arn: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.flow_arn #=> String
    #   resp.status #=> String, one of "STANDBY", "ACTIVE", "UPDATING", "DELETING", "STARTING", "STOPPING", "ERROR"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/StartFlow AWS API Documentation
    #
    # @overload start_flow(params = {})
    # @param [Hash] params ({})
    def start_flow(params = {}, options = {})
      req = build_request(:start_flow, params)
      req.send_request(options)
    end

    # Stops a flow.
    #
    # @option params [required, String] :flow_arn
    #
    # @return [Types::StopFlowResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopFlowResponse#flow_arn #flow_arn} => String
    #   * {Types::StopFlowResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_flow({
    #     flow_arn: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.flow_arn #=> String
    #   resp.status #=> String, one of "STANDBY", "ACTIVE", "UPDATING", "DELETING", "STARTING", "STOPPING", "ERROR"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/StopFlow AWS API Documentation
    #
    # @overload stop_flow(params = {})
    # @param [Hash] params ({})
    def stop_flow(params = {}, options = {})
      req = build_request(:stop_flow, params)
      req.send_request(options)
    end

    # Associates the specified tags to a resource with the specified
    # resourceArn. If existing tags on a resource are not specified in the
    # request parameters, they are not changed. When a resource is deleted,
    # the tags associated with that resource are deleted as well.
    #
    # @option params [required, String] :resource_arn
    #
    # @option params [required, Hash<String,String>] :tags
    #   A map from tag keys to values. Tag keys can have a maximum character
    #   length of 128 characters, and tag values can have a maximum length of
    #   256 characters.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Deletes specified tags from a resource.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates flow
    #
    # @option params [required, String] :flow_arn
    #
    # @option params [Types::UpdateFailoverConfig] :source_failover_config
    #   The settings for source failover
    #
    # @return [Types::UpdateFlowResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateFlowResponse#flow #flow} => Types::Flow
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_flow({
    #     flow_arn: "__string", # required
    #     source_failover_config: {
    #       recovery_window: 1,
    #       state: "ENABLED", # accepts ENABLED, DISABLED
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.flow.availability_zone #=> String
    #   resp.flow.description #=> String
    #   resp.flow.egress_ip #=> String
    #   resp.flow.entitlements #=> Array
    #   resp.flow.entitlements[0].data_transfer_subscriber_fee_percent #=> Integer
    #   resp.flow.entitlements[0].description #=> String
    #   resp.flow.entitlements[0].encryption.algorithm #=> String, one of "aes128", "aes192", "aes256"
    #   resp.flow.entitlements[0].encryption.constant_initialization_vector #=> String
    #   resp.flow.entitlements[0].encryption.device_id #=> String
    #   resp.flow.entitlements[0].encryption.key_type #=> String, one of "speke", "static-key"
    #   resp.flow.entitlements[0].encryption.region #=> String
    #   resp.flow.entitlements[0].encryption.resource_id #=> String
    #   resp.flow.entitlements[0].encryption.role_arn #=> String
    #   resp.flow.entitlements[0].encryption.secret_arn #=> String
    #   resp.flow.entitlements[0].encryption.url #=> String
    #   resp.flow.entitlements[0].entitlement_arn #=> String
    #   resp.flow.entitlements[0].entitlement_status #=> String, one of "ENABLED", "DISABLED"
    #   resp.flow.entitlements[0].name #=> String
    #   resp.flow.entitlements[0].subscribers #=> Array
    #   resp.flow.entitlements[0].subscribers[0] #=> String
    #   resp.flow.flow_arn #=> String
    #   resp.flow.name #=> String
    #   resp.flow.outputs #=> Array
    #   resp.flow.outputs[0].data_transfer_subscriber_fee_percent #=> Integer
    #   resp.flow.outputs[0].description #=> String
    #   resp.flow.outputs[0].destination #=> String
    #   resp.flow.outputs[0].encryption.algorithm #=> String, one of "aes128", "aes192", "aes256"
    #   resp.flow.outputs[0].encryption.constant_initialization_vector #=> String
    #   resp.flow.outputs[0].encryption.device_id #=> String
    #   resp.flow.outputs[0].encryption.key_type #=> String, one of "speke", "static-key"
    #   resp.flow.outputs[0].encryption.region #=> String
    #   resp.flow.outputs[0].encryption.resource_id #=> String
    #   resp.flow.outputs[0].encryption.role_arn #=> String
    #   resp.flow.outputs[0].encryption.secret_arn #=> String
    #   resp.flow.outputs[0].encryption.url #=> String
    #   resp.flow.outputs[0].entitlement_arn #=> String
    #   resp.flow.outputs[0].media_live_input_arn #=> String
    #   resp.flow.outputs[0].name #=> String
    #   resp.flow.outputs[0].output_arn #=> String
    #   resp.flow.outputs[0].port #=> Integer
    #   resp.flow.outputs[0].transport.cidr_allow_list #=> Array
    #   resp.flow.outputs[0].transport.cidr_allow_list[0] #=> String
    #   resp.flow.outputs[0].transport.max_bitrate #=> Integer
    #   resp.flow.outputs[0].transport.max_latency #=> Integer
    #   resp.flow.outputs[0].transport.protocol #=> String, one of "zixi-push", "rtp-fec", "rtp", "zixi-pull", "rist"
    #   resp.flow.outputs[0].transport.remote_id #=> String
    #   resp.flow.outputs[0].transport.smoothing_latency #=> Integer
    #   resp.flow.outputs[0].transport.stream_id #=> String
    #   resp.flow.outputs[0].vpc_interface_attachment.vpc_interface_name #=> String
    #   resp.flow.source.data_transfer_subscriber_fee_percent #=> Integer
    #   resp.flow.source.decryption.algorithm #=> String, one of "aes128", "aes192", "aes256"
    #   resp.flow.source.decryption.constant_initialization_vector #=> String
    #   resp.flow.source.decryption.device_id #=> String
    #   resp.flow.source.decryption.key_type #=> String, one of "speke", "static-key"
    #   resp.flow.source.decryption.region #=> String
    #   resp.flow.source.decryption.resource_id #=> String
    #   resp.flow.source.decryption.role_arn #=> String
    #   resp.flow.source.decryption.secret_arn #=> String
    #   resp.flow.source.decryption.url #=> String
    #   resp.flow.source.description #=> String
    #   resp.flow.source.entitlement_arn #=> String
    #   resp.flow.source.ingest_ip #=> String
    #   resp.flow.source.ingest_port #=> Integer
    #   resp.flow.source.name #=> String
    #   resp.flow.source.source_arn #=> String
    #   resp.flow.source.transport.cidr_allow_list #=> Array
    #   resp.flow.source.transport.cidr_allow_list[0] #=> String
    #   resp.flow.source.transport.max_bitrate #=> Integer
    #   resp.flow.source.transport.max_latency #=> Integer
    #   resp.flow.source.transport.protocol #=> String, one of "zixi-push", "rtp-fec", "rtp", "zixi-pull", "rist"
    #   resp.flow.source.transport.remote_id #=> String
    #   resp.flow.source.transport.smoothing_latency #=> Integer
    #   resp.flow.source.transport.stream_id #=> String
    #   resp.flow.source.vpc_interface_name #=> String
    #   resp.flow.source.whitelist_cidr #=> String
    #   resp.flow.source_failover_config.recovery_window #=> Integer
    #   resp.flow.source_failover_config.state #=> String, one of "ENABLED", "DISABLED"
    #   resp.flow.sources #=> Array
    #   resp.flow.sources[0].data_transfer_subscriber_fee_percent #=> Integer
    #   resp.flow.sources[0].decryption.algorithm #=> String, one of "aes128", "aes192", "aes256"
    #   resp.flow.sources[0].decryption.constant_initialization_vector #=> String
    #   resp.flow.sources[0].decryption.device_id #=> String
    #   resp.flow.sources[0].decryption.key_type #=> String, one of "speke", "static-key"
    #   resp.flow.sources[0].decryption.region #=> String
    #   resp.flow.sources[0].decryption.resource_id #=> String
    #   resp.flow.sources[0].decryption.role_arn #=> String
    #   resp.flow.sources[0].decryption.secret_arn #=> String
    #   resp.flow.sources[0].decryption.url #=> String
    #   resp.flow.sources[0].description #=> String
    #   resp.flow.sources[0].entitlement_arn #=> String
    #   resp.flow.sources[0].ingest_ip #=> String
    #   resp.flow.sources[0].ingest_port #=> Integer
    #   resp.flow.sources[0].name #=> String
    #   resp.flow.sources[0].source_arn #=> String
    #   resp.flow.sources[0].transport.cidr_allow_list #=> Array
    #   resp.flow.sources[0].transport.cidr_allow_list[0] #=> String
    #   resp.flow.sources[0].transport.max_bitrate #=> Integer
    #   resp.flow.sources[0].transport.max_latency #=> Integer
    #   resp.flow.sources[0].transport.protocol #=> String, one of "zixi-push", "rtp-fec", "rtp", "zixi-pull", "rist"
    #   resp.flow.sources[0].transport.remote_id #=> String
    #   resp.flow.sources[0].transport.smoothing_latency #=> Integer
    #   resp.flow.sources[0].transport.stream_id #=> String
    #   resp.flow.sources[0].vpc_interface_name #=> String
    #   resp.flow.sources[0].whitelist_cidr #=> String
    #   resp.flow.status #=> String, one of "STANDBY", "ACTIVE", "UPDATING", "DELETING", "STARTING", "STOPPING", "ERROR"
    #   resp.flow.vpc_interfaces #=> Array
    #   resp.flow.vpc_interfaces[0].name #=> String
    #   resp.flow.vpc_interfaces[0].network_interface_ids #=> Array
    #   resp.flow.vpc_interfaces[0].network_interface_ids[0] #=> String
    #   resp.flow.vpc_interfaces[0].role_arn #=> String
    #   resp.flow.vpc_interfaces[0].security_group_ids #=> Array
    #   resp.flow.vpc_interfaces[0].security_group_ids[0] #=> String
    #   resp.flow.vpc_interfaces[0].subnet_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/UpdateFlow AWS API Documentation
    #
    # @overload update_flow(params = {})
    # @param [Hash] params ({})
    def update_flow(params = {}, options = {})
      req = build_request(:update_flow, params)
      req.send_request(options)
    end

    # You can change an entitlement's description, subscribers, and
    # encryption. If you change the subscribers, the service will remove the
    # outputs that are are used by the subscribers that are removed.
    #
    # @option params [String] :description
    #   A description of the entitlement. This description appears only on the
    #   AWS Elemental MediaConnect console and will not be seen by the
    #   subscriber or end user.
    #
    # @option params [Types::UpdateEncryption] :encryption
    #   The type of encryption that will be used on the output associated with
    #   this entitlement.
    #
    # @option params [required, String] :entitlement_arn
    #
    # @option params [String] :entitlement_status
    #   An indication of whether you want to enable the entitlement to allow
    #   access, or disable it to stop streaming content to the subscriber’s
    #   flow temporarily. If you don’t specify the entitlementStatus field in
    #   your request, MediaConnect leaves the value unchanged.
    #
    # @option params [required, String] :flow_arn
    #
    # @option params [Array<String>] :subscribers
    #   The AWS account IDs that you want to share your content with. The
    #   receiving accounts (subscribers) will be allowed to create their own
    #   flow using your content as the source.
    #
    # @return [Types::UpdateFlowEntitlementResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateFlowEntitlementResponse#entitlement #entitlement} => Types::Entitlement
    #   * {Types::UpdateFlowEntitlementResponse#flow_arn #flow_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_flow_entitlement({
    #     description: "__string",
    #     encryption: {
    #       algorithm: "aes128", # accepts aes128, aes192, aes256
    #       constant_initialization_vector: "__string",
    #       device_id: "__string",
    #       key_type: "speke", # accepts speke, static-key
    #       region: "__string",
    #       resource_id: "__string",
    #       role_arn: "__string",
    #       secret_arn: "__string",
    #       url: "__string",
    #     },
    #     entitlement_arn: "__string", # required
    #     entitlement_status: "ENABLED", # accepts ENABLED, DISABLED
    #     flow_arn: "__string", # required
    #     subscribers: ["__string"],
    #   })
    #
    # @example Response structure
    #
    #   resp.entitlement.data_transfer_subscriber_fee_percent #=> Integer
    #   resp.entitlement.description #=> String
    #   resp.entitlement.encryption.algorithm #=> String, one of "aes128", "aes192", "aes256"
    #   resp.entitlement.encryption.constant_initialization_vector #=> String
    #   resp.entitlement.encryption.device_id #=> String
    #   resp.entitlement.encryption.key_type #=> String, one of "speke", "static-key"
    #   resp.entitlement.encryption.region #=> String
    #   resp.entitlement.encryption.resource_id #=> String
    #   resp.entitlement.encryption.role_arn #=> String
    #   resp.entitlement.encryption.secret_arn #=> String
    #   resp.entitlement.encryption.url #=> String
    #   resp.entitlement.entitlement_arn #=> String
    #   resp.entitlement.entitlement_status #=> String, one of "ENABLED", "DISABLED"
    #   resp.entitlement.name #=> String
    #   resp.entitlement.subscribers #=> Array
    #   resp.entitlement.subscribers[0] #=> String
    #   resp.flow_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/UpdateFlowEntitlement AWS API Documentation
    #
    # @overload update_flow_entitlement(params = {})
    # @param [Hash] params ({})
    def update_flow_entitlement(params = {}, options = {})
      req = build_request(:update_flow_entitlement, params)
      req.send_request(options)
    end

    # Updates an existing flow output.
    #
    # @option params [Array<String>] :cidr_allow_list
    #   The range of IP addresses that should be allowed to initiate output
    #   requests to this flow. These IP addresses should be in the form of a
    #   Classless Inter-Domain Routing (CIDR) block; for example, 10.0.0.0/16.
    #
    # @option params [String] :description
    #   A description of the output. This description appears only on the AWS
    #   Elemental MediaConnect console and will not be seen by the end user.
    #
    # @option params [String] :destination
    #   The IP address where you want to send the output.
    #
    # @option params [Types::UpdateEncryption] :encryption
    #   The type of key used for the encryption. If no keyType is provided,
    #   the service will use the default setting (static-key).
    #
    # @option params [required, String] :flow_arn
    #
    # @option params [Integer] :max_latency
    #   The maximum latency in milliseconds for Zixi-based streams.
    #
    # @option params [required, String] :output_arn
    #
    # @option params [Integer] :port
    #   The port to use when content is distributed to this output.
    #
    # @option params [String] :protocol
    #   The protocol to use for the output.
    #
    # @option params [String] :remote_id
    #   The remote ID for the Zixi-pull stream.
    #
    # @option params [Integer] :smoothing_latency
    #   The smoothing latency in milliseconds for RIST, RTP, and RTP-FEC
    #   streams.
    #
    # @option params [String] :stream_id
    #   The stream ID that you want to use for this transport. This parameter
    #   applies only to Zixi-based streams.
    #
    # @option params [Types::VpcInterfaceAttachment] :vpc_interface_attachment
    #   The name of the VPC interface attachment to use for this output.
    #
    # @return [Types::UpdateFlowOutputResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateFlowOutputResponse#flow_arn #flow_arn} => String
    #   * {Types::UpdateFlowOutputResponse#output #output} => Types::Output
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_flow_output({
    #     cidr_allow_list: ["__string"],
    #     description: "__string",
    #     destination: "__string",
    #     encryption: {
    #       algorithm: "aes128", # accepts aes128, aes192, aes256
    #       constant_initialization_vector: "__string",
    #       device_id: "__string",
    #       key_type: "speke", # accepts speke, static-key
    #       region: "__string",
    #       resource_id: "__string",
    #       role_arn: "__string",
    #       secret_arn: "__string",
    #       url: "__string",
    #     },
    #     flow_arn: "__string", # required
    #     max_latency: 1,
    #     output_arn: "__string", # required
    #     port: 1,
    #     protocol: "zixi-push", # accepts zixi-push, rtp-fec, rtp, zixi-pull, rist
    #     remote_id: "__string",
    #     smoothing_latency: 1,
    #     stream_id: "__string",
    #     vpc_interface_attachment: {
    #       vpc_interface_name: "__string",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.flow_arn #=> String
    #   resp.output.data_transfer_subscriber_fee_percent #=> Integer
    #   resp.output.description #=> String
    #   resp.output.destination #=> String
    #   resp.output.encryption.algorithm #=> String, one of "aes128", "aes192", "aes256"
    #   resp.output.encryption.constant_initialization_vector #=> String
    #   resp.output.encryption.device_id #=> String
    #   resp.output.encryption.key_type #=> String, one of "speke", "static-key"
    #   resp.output.encryption.region #=> String
    #   resp.output.encryption.resource_id #=> String
    #   resp.output.encryption.role_arn #=> String
    #   resp.output.encryption.secret_arn #=> String
    #   resp.output.encryption.url #=> String
    #   resp.output.entitlement_arn #=> String
    #   resp.output.media_live_input_arn #=> String
    #   resp.output.name #=> String
    #   resp.output.output_arn #=> String
    #   resp.output.port #=> Integer
    #   resp.output.transport.cidr_allow_list #=> Array
    #   resp.output.transport.cidr_allow_list[0] #=> String
    #   resp.output.transport.max_bitrate #=> Integer
    #   resp.output.transport.max_latency #=> Integer
    #   resp.output.transport.protocol #=> String, one of "zixi-push", "rtp-fec", "rtp", "zixi-pull", "rist"
    #   resp.output.transport.remote_id #=> String
    #   resp.output.transport.smoothing_latency #=> Integer
    #   resp.output.transport.stream_id #=> String
    #   resp.output.vpc_interface_attachment.vpc_interface_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/UpdateFlowOutput AWS API Documentation
    #
    # @overload update_flow_output(params = {})
    # @param [Hash] params ({})
    def update_flow_output(params = {}, options = {})
      req = build_request(:update_flow_output, params)
      req.send_request(options)
    end

    # Updates the source of a flow.
    #
    # @option params [Types::UpdateEncryption] :decryption
    #   The type of encryption used on the content ingested from this source.
    #
    # @option params [String] :description
    #   A description for the source. This value is not used or seen outside
    #   of the current AWS Elemental MediaConnect account.
    #
    # @option params [String] :entitlement_arn
    #   The ARN of the entitlement that allows you to subscribe to this flow.
    #   The entitlement is set by the flow originator, and the ARN is
    #   generated as part of the originator's flow.
    #
    # @option params [required, String] :flow_arn
    #
    # @option params [Integer] :ingest_port
    #   The port that the flow will be listening on for incoming content.
    #
    # @option params [Integer] :max_bitrate
    #   The smoothing max bitrate for RIST, RTP, and RTP-FEC streams.
    #
    # @option params [Integer] :max_latency
    #   The maximum latency in milliseconds. This parameter applies only to
    #   RIST-based and Zixi-based streams.
    #
    # @option params [String] :protocol
    #   The protocol that is used by the source.
    #
    # @option params [required, String] :source_arn
    #
    # @option params [String] :stream_id
    #   The stream ID that you want to use for this transport. This parameter
    #   applies only to Zixi-based streams.
    #
    # @option params [String] :vpc_interface_name
    #   The name of the VPC Interface to configure this Source with.
    #
    # @option params [String] :whitelist_cidr
    #   The range of IP addresses that should be allowed to contribute content
    #   to your source. These IP addresses should be in the form of a
    #   Classless Inter-Domain Routing (CIDR) block; for example, 10.0.0.0/16.
    #
    # @return [Types::UpdateFlowSourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateFlowSourceResponse#flow_arn #flow_arn} => String
    #   * {Types::UpdateFlowSourceResponse#source #source} => Types::Source
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_flow_source({
    #     decryption: {
    #       algorithm: "aes128", # accepts aes128, aes192, aes256
    #       constant_initialization_vector: "__string",
    #       device_id: "__string",
    #       key_type: "speke", # accepts speke, static-key
    #       region: "__string",
    #       resource_id: "__string",
    #       role_arn: "__string",
    #       secret_arn: "__string",
    #       url: "__string",
    #     },
    #     description: "__string",
    #     entitlement_arn: "__string",
    #     flow_arn: "__string", # required
    #     ingest_port: 1,
    #     max_bitrate: 1,
    #     max_latency: 1,
    #     protocol: "zixi-push", # accepts zixi-push, rtp-fec, rtp, zixi-pull, rist
    #     source_arn: "__string", # required
    #     stream_id: "__string",
    #     vpc_interface_name: "__string",
    #     whitelist_cidr: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.flow_arn #=> String
    #   resp.source.data_transfer_subscriber_fee_percent #=> Integer
    #   resp.source.decryption.algorithm #=> String, one of "aes128", "aes192", "aes256"
    #   resp.source.decryption.constant_initialization_vector #=> String
    #   resp.source.decryption.device_id #=> String
    #   resp.source.decryption.key_type #=> String, one of "speke", "static-key"
    #   resp.source.decryption.region #=> String
    #   resp.source.decryption.resource_id #=> String
    #   resp.source.decryption.role_arn #=> String
    #   resp.source.decryption.secret_arn #=> String
    #   resp.source.decryption.url #=> String
    #   resp.source.description #=> String
    #   resp.source.entitlement_arn #=> String
    #   resp.source.ingest_ip #=> String
    #   resp.source.ingest_port #=> Integer
    #   resp.source.name #=> String
    #   resp.source.source_arn #=> String
    #   resp.source.transport.cidr_allow_list #=> Array
    #   resp.source.transport.cidr_allow_list[0] #=> String
    #   resp.source.transport.max_bitrate #=> Integer
    #   resp.source.transport.max_latency #=> Integer
    #   resp.source.transport.protocol #=> String, one of "zixi-push", "rtp-fec", "rtp", "zixi-pull", "rist"
    #   resp.source.transport.remote_id #=> String
    #   resp.source.transport.smoothing_latency #=> Integer
    #   resp.source.transport.stream_id #=> String
    #   resp.source.vpc_interface_name #=> String
    #   resp.source.whitelist_cidr #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/UpdateFlowSource AWS API Documentation
    #
    # @overload update_flow_source(params = {})
    # @param [Hash] params ({})
    def update_flow_source(params = {}, options = {})
      req = build_request(:update_flow_source, params)
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
      context[:gem_name] = 'aws-sdk-mediaconnect'
      context[:gem_version] = '1.28.0'
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
