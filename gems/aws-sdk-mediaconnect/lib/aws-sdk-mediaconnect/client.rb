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
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/rest_json.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:mediaconnect)

module Aws::MediaConnect
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
    #     * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #       from an EC2 IMDS on an EC2 instance.
    #
    #     * `Aws::SharedCredentials` - Used for loading credentials from a
    #       shared file, such as `~/.aws/config`.
    #
    #     * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #     When `:credentials` are not configured directly, the following
    #     locations will be searched for credentials:
    #
    #     * `Aws.config[:credentials]`
    #     * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #     * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #     * EC2 IMDS instance profile - When used by default, the timeouts are
    #       very aggressive. Construct and pass an instance of
    #       `Aws::InstanceProfileCredentails` to enable retries and extended
    #       timeouts.
    #
    #   @option options [required, String] :region
    #     The AWS region to connect to.  The configured `:region` is
    #     used to determine the service `:endpoint`. When not passed,
    #     a default `:region` is search for in the following locations:
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
    #   @option options [Boolean] :client_side_monitoring (false)
    #     When `true`, client-side metrics will be collected for all API requests from
    #     this client.
    #
    #   @option options [String] :client_side_monitoring_client_id ("")
    #     Allows you to provide an identifier for this client which will be attached to
    #     all generated client side metrics. Defaults to an empty string.
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
    #   @option options [Boolean] :disable_host_prefix_injection (false)
    #     Set to true to disable SDK automatically adding host prefix
    #     to default service endpoint when available.
    #
    #   @option options [String] :endpoint
    #     The client endpoint is normally constructed from the `:region`
    #     option. You should only configure an `:endpoint` when connecting
    #     to test endpoints. This should be avalid HTTP(S) URI.
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
    #     When set to `true`, endpoint discovery will be enabled for operations when available. Defaults to `false`.
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
    #   @option options [String] :profile ("default")
    #     Used when loading credentials from the shared credentials file
    #     at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    #   @option options [Float] :retry_base_delay (0.3)
    #     The base delay in seconds used by the default backoff function.
    #
    #   @option options [Symbol] :retry_jitter (:none)
    #     A delay randomiser function used by the default backoff function. Some predefined functions can be referenced by name - :none, :equal, :full, otherwise a Proc that takes and returns a number.
    #
    #     @see https://www.awsarchitectureblog.com/2015/03/backoff.html
    #
    #   @option options [Integer] :retry_limit (3)
    #     The maximum number of times to retry failed requests.  Only
    #     ~ 500 level server errors and certain ~ 400 level client errors
    #     are retried.  Generally, these are throttling errors, data
    #     checksum errors, networking errors, timeout errors and auth
    #     errors from expired credentials.
    #
    #   @option options [Integer] :retry_max_delay (0)
    #     The maximum number of seconds to delay between retries (0 for no limit) used by the default backoff function.
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
    #     seconds to wait when opening a HTTP session before rasing a
    #     `Timeout::Error`.
    #
    #   @option options [Integer] :http_read_timeout (60) The default
    #     number of seconds to wait for response data.  This value can
    #     safely be set
    #     per-request on the session yeidled by {#session_for}.
    #
    #   @option options [Float] :http_idle_timeout (5) The number of
    #     seconds a connection is allowed to sit idble before it is
    #     considered stale.  Stale connections are closed and removed
    #     from the pool before making a request.
    #
    #   @option options [Float] :http_continue_timeout (1) The number of
    #     seconds to wait for a 100-continue response before sending the
    #     request body.  This option has no effect unless the request has
    #     "Expect" header set to "100-continue".  Defaults to `nil` which
    #     disables this behaviour.  This value can safely be set per
    #     request on the session yeidled by {#session_for}.
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

    # Adds outputs to an existing flow. You can create up to 20 outputs per
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
    #         description: "__string",
    #         destination: "__string", # required
    #         encryption: {
    #           algorithm: "aes128", # required, accepts aes128, aes192, aes256
    #           key_type: "static-key", # accepts static-key
    #           role_arn: "__string", # required
    #           secret_arn: "__string", # required
    #         },
    #         max_latency: 1,
    #         name: "__string",
    #         port: 1, # required
    #         protocol: "zixi-push", # required, accepts zixi-push, rtp-fec, rtp
    #         smoothing_latency: 1,
    #         stream_id: "__string",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.flow_arn #=> String
    #   resp.outputs #=> Array
    #   resp.outputs[0].description #=> String
    #   resp.outputs[0].destination #=> String
    #   resp.outputs[0].encryption.algorithm #=> String, one of "aes128", "aes192", "aes256"
    #   resp.outputs[0].encryption.key_type #=> String, one of "static-key"
    #   resp.outputs[0].encryption.role_arn #=> String
    #   resp.outputs[0].encryption.secret_arn #=> String
    #   resp.outputs[0].entitlement_arn #=> String
    #   resp.outputs[0].media_live_input_arn #=> String
    #   resp.outputs[0].name #=> String
    #   resp.outputs[0].output_arn #=> String
    #   resp.outputs[0].port #=> Integer
    #   resp.outputs[0].transport.max_bitrate #=> Integer
    #   resp.outputs[0].transport.max_latency #=> Integer
    #   resp.outputs[0].transport.protocol #=> String, one of "zixi-push", "rtp-fec", "rtp"
    #   resp.outputs[0].transport.smoothing_latency #=> Integer
    #   resp.outputs[0].transport.stream_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/AddFlowOutputs AWS API Documentation
    #
    # @overload add_flow_outputs(params = {})
    # @param [Hash] params ({})
    def add_flow_outputs(params = {}, options = {})
      req = build_request(:add_flow_outputs, params)
      req.send_request(options)
    end

    # Creates a new flow. The request must include one source. The request
    # optionally can include outputs (up to 20) and entitlements (up to 50).
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
    # @option params [required, Types::SetSourceRequest] :source
    #   The settings for the source of the flow.
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
    #         description: "__string",
    #         encryption: {
    #           algorithm: "aes128", # required, accepts aes128, aes192, aes256
    #           key_type: "static-key", # accepts static-key
    #           role_arn: "__string", # required
    #           secret_arn: "__string", # required
    #         },
    #         name: "__string",
    #         subscribers: ["__string"], # required
    #       },
    #     ],
    #     name: "__string", # required
    #     outputs: [
    #       {
    #         description: "__string",
    #         destination: "__string", # required
    #         encryption: {
    #           algorithm: "aes128", # required, accepts aes128, aes192, aes256
    #           key_type: "static-key", # accepts static-key
    #           role_arn: "__string", # required
    #           secret_arn: "__string", # required
    #         },
    #         max_latency: 1,
    #         name: "__string",
    #         port: 1, # required
    #         protocol: "zixi-push", # required, accepts zixi-push, rtp-fec, rtp
    #         smoothing_latency: 1,
    #         stream_id: "__string",
    #       },
    #     ],
    #     source: { # required
    #       decryption: {
    #         algorithm: "aes128", # required, accepts aes128, aes192, aes256
    #         key_type: "static-key", # accepts static-key
    #         role_arn: "__string", # required
    #         secret_arn: "__string", # required
    #       },
    #       description: "__string",
    #       entitlement_arn: "__string",
    #       ingest_port: 1,
    #       max_bitrate: 1,
    #       max_latency: 1,
    #       name: "__string",
    #       protocol: "zixi-push", # accepts zixi-push, rtp-fec, rtp
    #       stream_id: "__string",
    #       whitelist_cidr: "__string",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.flow.availability_zone #=> String
    #   resp.flow.description #=> String
    #   resp.flow.egress_ip #=> String
    #   resp.flow.entitlements #=> Array
    #   resp.flow.entitlements[0].description #=> String
    #   resp.flow.entitlements[0].encryption.algorithm #=> String, one of "aes128", "aes192", "aes256"
    #   resp.flow.entitlements[0].encryption.key_type #=> String, one of "static-key"
    #   resp.flow.entitlements[0].encryption.role_arn #=> String
    #   resp.flow.entitlements[0].encryption.secret_arn #=> String
    #   resp.flow.entitlements[0].entitlement_arn #=> String
    #   resp.flow.entitlements[0].name #=> String
    #   resp.flow.entitlements[0].subscribers #=> Array
    #   resp.flow.entitlements[0].subscribers[0] #=> String
    #   resp.flow.flow_arn #=> String
    #   resp.flow.name #=> String
    #   resp.flow.outputs #=> Array
    #   resp.flow.outputs[0].description #=> String
    #   resp.flow.outputs[0].destination #=> String
    #   resp.flow.outputs[0].encryption.algorithm #=> String, one of "aes128", "aes192", "aes256"
    #   resp.flow.outputs[0].encryption.key_type #=> String, one of "static-key"
    #   resp.flow.outputs[0].encryption.role_arn #=> String
    #   resp.flow.outputs[0].encryption.secret_arn #=> String
    #   resp.flow.outputs[0].entitlement_arn #=> String
    #   resp.flow.outputs[0].media_live_input_arn #=> String
    #   resp.flow.outputs[0].name #=> String
    #   resp.flow.outputs[0].output_arn #=> String
    #   resp.flow.outputs[0].port #=> Integer
    #   resp.flow.outputs[0].transport.max_bitrate #=> Integer
    #   resp.flow.outputs[0].transport.max_latency #=> Integer
    #   resp.flow.outputs[0].transport.protocol #=> String, one of "zixi-push", "rtp-fec", "rtp"
    #   resp.flow.outputs[0].transport.smoothing_latency #=> Integer
    #   resp.flow.outputs[0].transport.stream_id #=> String
    #   resp.flow.source.decryption.algorithm #=> String, one of "aes128", "aes192", "aes256"
    #   resp.flow.source.decryption.key_type #=> String, one of "static-key"
    #   resp.flow.source.decryption.role_arn #=> String
    #   resp.flow.source.decryption.secret_arn #=> String
    #   resp.flow.source.description #=> String
    #   resp.flow.source.entitlement_arn #=> String
    #   resp.flow.source.ingest_ip #=> String
    #   resp.flow.source.ingest_port #=> Integer
    #   resp.flow.source.name #=> String
    #   resp.flow.source.source_arn #=> String
    #   resp.flow.source.transport.max_bitrate #=> Integer
    #   resp.flow.source.transport.max_latency #=> Integer
    #   resp.flow.source.transport.protocol #=> String, one of "zixi-push", "rtp-fec", "rtp"
    #   resp.flow.source.transport.smoothing_latency #=> Integer
    #   resp.flow.source.transport.stream_id #=> String
    #   resp.flow.source.whitelist_cidr #=> String
    #   resp.flow.status #=> String, one of "STANDBY", "ACTIVE", "UPDATING", "DELETING", "STARTING", "STOPPING", "ERROR"
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
    #   resp.flow.entitlements[0].description #=> String
    #   resp.flow.entitlements[0].encryption.algorithm #=> String, one of "aes128", "aes192", "aes256"
    #   resp.flow.entitlements[0].encryption.key_type #=> String, one of "static-key"
    #   resp.flow.entitlements[0].encryption.role_arn #=> String
    #   resp.flow.entitlements[0].encryption.secret_arn #=> String
    #   resp.flow.entitlements[0].entitlement_arn #=> String
    #   resp.flow.entitlements[0].name #=> String
    #   resp.flow.entitlements[0].subscribers #=> Array
    #   resp.flow.entitlements[0].subscribers[0] #=> String
    #   resp.flow.flow_arn #=> String
    #   resp.flow.name #=> String
    #   resp.flow.outputs #=> Array
    #   resp.flow.outputs[0].description #=> String
    #   resp.flow.outputs[0].destination #=> String
    #   resp.flow.outputs[0].encryption.algorithm #=> String, one of "aes128", "aes192", "aes256"
    #   resp.flow.outputs[0].encryption.key_type #=> String, one of "static-key"
    #   resp.flow.outputs[0].encryption.role_arn #=> String
    #   resp.flow.outputs[0].encryption.secret_arn #=> String
    #   resp.flow.outputs[0].entitlement_arn #=> String
    #   resp.flow.outputs[0].media_live_input_arn #=> String
    #   resp.flow.outputs[0].name #=> String
    #   resp.flow.outputs[0].output_arn #=> String
    #   resp.flow.outputs[0].port #=> Integer
    #   resp.flow.outputs[0].transport.max_bitrate #=> Integer
    #   resp.flow.outputs[0].transport.max_latency #=> Integer
    #   resp.flow.outputs[0].transport.protocol #=> String, one of "zixi-push", "rtp-fec", "rtp"
    #   resp.flow.outputs[0].transport.smoothing_latency #=> Integer
    #   resp.flow.outputs[0].transport.stream_id #=> String
    #   resp.flow.source.decryption.algorithm #=> String, one of "aes128", "aes192", "aes256"
    #   resp.flow.source.decryption.key_type #=> String, one of "static-key"
    #   resp.flow.source.decryption.role_arn #=> String
    #   resp.flow.source.decryption.secret_arn #=> String
    #   resp.flow.source.description #=> String
    #   resp.flow.source.entitlement_arn #=> String
    #   resp.flow.source.ingest_ip #=> String
    #   resp.flow.source.ingest_port #=> Integer
    #   resp.flow.source.name #=> String
    #   resp.flow.source.source_arn #=> String
    #   resp.flow.source.transport.max_bitrate #=> Integer
    #   resp.flow.source.transport.max_latency #=> Integer
    #   resp.flow.source.transport.protocol #=> String, one of "zixi-push", "rtp-fec", "rtp"
    #   resp.flow.source.transport.smoothing_latency #=> Integer
    #   resp.flow.source.transport.stream_id #=> String
    #   resp.flow.source.whitelist_cidr #=> String
    #   resp.flow.status #=> String, one of "STANDBY", "ACTIVE", "UPDATING", "DELETING", "STARTING", "STOPPING", "ERROR"
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
    #         description: "__string",
    #         encryption: {
    #           algorithm: "aes128", # required, accepts aes128, aes192, aes256
    #           key_type: "static-key", # accepts static-key
    #           role_arn: "__string", # required
    #           secret_arn: "__string", # required
    #         },
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
    #   resp.entitlements[0].description #=> String
    #   resp.entitlements[0].encryption.algorithm #=> String, one of "aes128", "aes192", "aes256"
    #   resp.entitlements[0].encryption.key_type #=> String, one of "static-key"
    #   resp.entitlements[0].encryption.role_arn #=> String
    #   resp.entitlements[0].encryption.secret_arn #=> String
    #   resp.entitlements[0].entitlement_arn #=> String
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
    #       key_type: "static-key", # accepts static-key
    #       role_arn: "__string",
    #       secret_arn: "__string",
    #     },
    #     entitlement_arn: "__string", # required
    #     flow_arn: "__string", # required
    #     subscribers: ["__string"],
    #   })
    #
    # @example Response structure
    #
    #   resp.entitlement.description #=> String
    #   resp.entitlement.encryption.algorithm #=> String, one of "aes128", "aes192", "aes256"
    #   resp.entitlement.encryption.key_type #=> String, one of "static-key"
    #   resp.entitlement.encryption.role_arn #=> String
    #   resp.entitlement.encryption.secret_arn #=> String
    #   resp.entitlement.entitlement_arn #=> String
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
    # @option params [Integer] :smoothing_latency
    #   The smoothing latency in milliseconds for RTP and RTP-FEC streams.
    #
    # @option params [String] :stream_id
    #   The stream ID that you want to use for this transport. This parameter
    #   applies only to Zixi-based streams.
    #
    # @return [Types::UpdateFlowOutputResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateFlowOutputResponse#flow_arn #flow_arn} => String
    #   * {Types::UpdateFlowOutputResponse#output #output} => Types::Output
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_flow_output({
    #     description: "__string",
    #     destination: "__string",
    #     encryption: {
    #       algorithm: "aes128", # accepts aes128, aes192, aes256
    #       key_type: "static-key", # accepts static-key
    #       role_arn: "__string",
    #       secret_arn: "__string",
    #     },
    #     flow_arn: "__string", # required
    #     max_latency: 1,
    #     output_arn: "__string", # required
    #     port: 1,
    #     protocol: "zixi-push", # accepts zixi-push, rtp-fec, rtp
    #     smoothing_latency: 1,
    #     stream_id: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.flow_arn #=> String
    #   resp.output.description #=> String
    #   resp.output.destination #=> String
    #   resp.output.encryption.algorithm #=> String, one of "aes128", "aes192", "aes256"
    #   resp.output.encryption.key_type #=> String, one of "static-key"
    #   resp.output.encryption.role_arn #=> String
    #   resp.output.encryption.secret_arn #=> String
    #   resp.output.entitlement_arn #=> String
    #   resp.output.media_live_input_arn #=> String
    #   resp.output.name #=> String
    #   resp.output.output_arn #=> String
    #   resp.output.port #=> Integer
    #   resp.output.transport.max_bitrate #=> Integer
    #   resp.output.transport.max_latency #=> Integer
    #   resp.output.transport.protocol #=> String, one of "zixi-push", "rtp-fec", "rtp"
    #   resp.output.transport.smoothing_latency #=> Integer
    #   resp.output.transport.stream_id #=> String
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
    #   The smoothing max bitrate for RTP and RTP-FEC streams.
    #
    # @option params [Integer] :max_latency
    #   The maximum latency in milliseconds for Zixi-based streams.
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
    # @option params [String] :whitelist_cidr
    #   The range of IP addresses that should be allowed to contribute content
    #   to your source. These IP addresses should in the form of a Classless
    #   Inter-Domain Routing (CIDR) block; for example, 10.0.0.0/16.
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
    #       key_type: "static-key", # accepts static-key
    #       role_arn: "__string",
    #       secret_arn: "__string",
    #     },
    #     description: "__string",
    #     entitlement_arn: "__string",
    #     flow_arn: "__string", # required
    #     ingest_port: 1,
    #     max_bitrate: 1,
    #     max_latency: 1,
    #     protocol: "zixi-push", # accepts zixi-push, rtp-fec, rtp
    #     source_arn: "__string", # required
    #     stream_id: "__string",
    #     whitelist_cidr: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.flow_arn #=> String
    #   resp.source.decryption.algorithm #=> String, one of "aes128", "aes192", "aes256"
    #   resp.source.decryption.key_type #=> String, one of "static-key"
    #   resp.source.decryption.role_arn #=> String
    #   resp.source.decryption.secret_arn #=> String
    #   resp.source.description #=> String
    #   resp.source.entitlement_arn #=> String
    #   resp.source.ingest_ip #=> String
    #   resp.source.ingest_port #=> Integer
    #   resp.source.name #=> String
    #   resp.source.source_arn #=> String
    #   resp.source.transport.max_bitrate #=> Integer
    #   resp.source.transport.max_latency #=> Integer
    #   resp.source.transport.protocol #=> String, one of "zixi-push", "rtp-fec", "rtp"
    #   resp.source.transport.smoothing_latency #=> Integer
    #   resp.source.transport.stream_id #=> String
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
