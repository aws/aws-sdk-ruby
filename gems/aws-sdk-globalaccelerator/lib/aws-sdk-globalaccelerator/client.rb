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
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:globalaccelerator)

module Aws::GlobalAccelerator
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :globalaccelerator

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

    # Create an accelerator. An accelerator includes one or more listeners
    # that process inbound connections and direct traffic to one or more
    # endpoint groups, each of which includes endpoints, such as Network
    # Load Balancers. To see an AWS CLI example of creating an accelerator,
    # scroll down to **Example**.
    #
    # @option params [required, String] :name
    #   The name of an accelerator. The name can have a maximum of 32
    #   characters, must contain only alphanumeric characters or hyphens (-),
    #   and must not begin or end with a hyphen.
    #
    # @option params [String] :ip_address_type
    #   The value for the address type must be IPv4.
    #
    # @option params [Boolean] :enabled
    #   Indicates whether an accelerator is enabled. The value is true or
    #   false. The default value is true.
    #
    #   If the value is set to true, an accelerator cannot be deleted. If set
    #   to false, the accelerator can be deleted.
    #
    # @option params [required, String] :idempotency_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency—that is, the uniqueness—of an accelerator.
    #
    # @return [Types::CreateAcceleratorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAcceleratorResponse#accelerator #accelerator} => Types::Accelerator
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_accelerator({
    #     name: "GenericString", # required
    #     ip_address_type: "IPV4", # accepts IPV4
    #     enabled: false,
    #     idempotency_token: "IdempotencyToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.accelerator.accelerator_arn #=> String
    #   resp.accelerator.name #=> String
    #   resp.accelerator.ip_address_type #=> String, one of "IPV4"
    #   resp.accelerator.enabled #=> Boolean
    #   resp.accelerator.ip_sets #=> Array
    #   resp.accelerator.ip_sets[0].ip_family #=> String
    #   resp.accelerator.ip_sets[0].ip_addresses #=> Array
    #   resp.accelerator.ip_sets[0].ip_addresses[0] #=> String
    #   resp.accelerator.status #=> String, one of "DEPLOYED", "IN_PROGRESS"
    #   resp.accelerator.created_time #=> Time
    #   resp.accelerator.last_modified_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/CreateAccelerator AWS API Documentation
    #
    # @overload create_accelerator(params = {})
    # @param [Hash] params ({})
    def create_accelerator(params = {}, options = {})
      req = build_request(:create_accelerator, params)
      req.send_request(options)
    end

    # Create an endpoint group for the specified listener. An endpoint group
    # is a collection of endpoints in one AWS Region. To see an AWS CLI
    # example of creating an endpoint group, scroll down to **Example**.
    #
    # @option params [required, String] :listener_arn
    #   The Amazon Resource Name (ARN) of the listener.
    #
    # @option params [required, String] :endpoint_group_region
    #   The name of the AWS Region where the endpoint group is located. A
    #   listener can have only one endpoint group in a specific Region.
    #
    # @option params [Array<Types::EndpointConfiguration>] :endpoint_configurations
    #   The list of endpoint objects.
    #
    # @option params [Float] :traffic_dial_percentage
    #   The percentage of traffic to send to an AWS Region. Additional traffic
    #   is distributed to other endpoint groups for this listener.
    #
    #   Use this action to increase (dial up) or decrease (dial down) traffic
    #   to a specific Region. The percentage is applied to the traffic that
    #   would otherwise have been routed to the Region based on optimal
    #   routing.
    #
    #   The default value is 100.
    #
    # @option params [Integer] :health_check_port
    #   The port that AWS Global Accelerator uses to check the health of
    #   endpoints that are part of this endpoint group. The default port is
    #   the listener port that this endpoint group is associated with. If
    #   listener port is a list of ports, Global Accelerator uses the first
    #   port in the list.
    #
    # @option params [String] :health_check_protocol
    #   The protocol that AWS Global Accelerator uses to check the health of
    #   endpoints that are part of this endpoint group. The default value is
    #   TCP.
    #
    # @option params [String] :health_check_path
    #   If the protocol is HTTP/S, then this specifies the path that is the
    #   destination for health check targets. The default value is slash (/).
    #
    # @option params [Integer] :health_check_interval_seconds
    #   The time—10 seconds or 30 seconds—between each health check for an
    #   endpoint. The default value is 30.
    #
    # @option params [Integer] :threshold_count
    #   The number of consecutive health checks required to set the state of a
    #   healthy endpoint to unhealthy, or to set an unhealthy endpoint to
    #   healthy. The default value is 3.
    #
    # @option params [required, String] :idempotency_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency—that is, the uniqueness—of the request.
    #
    # @return [Types::CreateEndpointGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateEndpointGroupResponse#endpoint_group #endpoint_group} => Types::EndpointGroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_endpoint_group({
    #     listener_arn: "GenericString", # required
    #     endpoint_group_region: "GenericString", # required
    #     endpoint_configurations: [
    #       {
    #         endpoint_id: "GenericString",
    #         weight: 1,
    #       },
    #     ],
    #     traffic_dial_percentage: 1.0,
    #     health_check_port: 1,
    #     health_check_protocol: "TCP", # accepts TCP, HTTP, HTTPS
    #     health_check_path: "GenericString",
    #     health_check_interval_seconds: 1,
    #     threshold_count: 1,
    #     idempotency_token: "IdempotencyToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.endpoint_group.endpoint_group_arn #=> String
    #   resp.endpoint_group.endpoint_group_region #=> String
    #   resp.endpoint_group.endpoint_descriptions #=> Array
    #   resp.endpoint_group.endpoint_descriptions[0].endpoint_id #=> String
    #   resp.endpoint_group.endpoint_descriptions[0].weight #=> Integer
    #   resp.endpoint_group.endpoint_descriptions[0].health_state #=> String, one of "INITIAL", "HEALTHY", "UNHEALTHY"
    #   resp.endpoint_group.endpoint_descriptions[0].health_reason #=> String
    #   resp.endpoint_group.traffic_dial_percentage #=> Float
    #   resp.endpoint_group.health_check_port #=> Integer
    #   resp.endpoint_group.health_check_protocol #=> String, one of "TCP", "HTTP", "HTTPS"
    #   resp.endpoint_group.health_check_path #=> String
    #   resp.endpoint_group.health_check_interval_seconds #=> Integer
    #   resp.endpoint_group.threshold_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/CreateEndpointGroup AWS API Documentation
    #
    # @overload create_endpoint_group(params = {})
    # @param [Hash] params ({})
    def create_endpoint_group(params = {}, options = {})
      req = build_request(:create_endpoint_group, params)
      req.send_request(options)
    end

    # Create a listener to process inbound connections from clients to an
    # accelerator. Connections arrive to assigned static IP addresses on a
    # port, port range, or list of port ranges that you specify. To see an
    # AWS CLI example of creating a listener, scroll down to **Example**.
    #
    # @option params [required, String] :accelerator_arn
    #   The Amazon Resource Name (ARN) of your accelerator.
    #
    # @option params [required, Array<Types::PortRange>] :port_ranges
    #   The list of port ranges to support for connections from clients to
    #   your accelerator.
    #
    # @option params [required, String] :protocol
    #   The protocol for connections from clients to your accelerator.
    #
    # @option params [String] :client_affinity
    #   Client affinity lets you direct all requests from a user to the same
    #   endpoint, if you have stateful applications, regardless of the port
    #   and protocol of the client request. Clienty affinity gives you control
    #   over whether to always route each client to the same specific
    #   endpoint.
    #
    #   AWS Global Accelerator uses a consistent-flow hashing algorithm to
    #   choose the optimal endpoint for a connection. If client affinity is
    #   `NONE`, Global Accelerator uses the "five-tuple" (5-tuple)
    #   properties—source IP address, source port, destination IP address,
    #   destination port, and protocol—to select the hash value, and then
    #   chooses the best endpoint. However, with this setting, if someone uses
    #   different ports to connect to Global Accelerator, their connections
    #   might not be always routed to the same endpoint because the hash value
    #   changes.
    #
    #   If you want a given client to always be routed to the same endpoint,
    #   set client affinity to `SOURCE_IP` instead. When you use the
    #   `SOURCE_IP` setting, Global Accelerator uses the "two-tuple"
    #   (2-tuple) properties— source (client) IP address and destination IP
    #   address—to select the hash value.
    #
    #   The default value is `NONE`.
    #
    # @option params [required, String] :idempotency_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency—that is, the uniqueness—of the request.
    #
    # @return [Types::CreateListenerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateListenerResponse#listener #listener} => Types::Listener
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_listener({
    #     accelerator_arn: "GenericString", # required
    #     port_ranges: [ # required
    #       {
    #         from_port: 1,
    #         to_port: 1,
    #       },
    #     ],
    #     protocol: "TCP", # required, accepts TCP, UDP
    #     client_affinity: "NONE", # accepts NONE, SOURCE_IP
    #     idempotency_token: "IdempotencyToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.listener.listener_arn #=> String
    #   resp.listener.port_ranges #=> Array
    #   resp.listener.port_ranges[0].from_port #=> Integer
    #   resp.listener.port_ranges[0].to_port #=> Integer
    #   resp.listener.protocol #=> String, one of "TCP", "UDP"
    #   resp.listener.client_affinity #=> String, one of "NONE", "SOURCE_IP"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/CreateListener AWS API Documentation
    #
    # @overload create_listener(params = {})
    # @param [Hash] params ({})
    def create_listener(params = {}, options = {})
      req = build_request(:create_listener, params)
      req.send_request(options)
    end

    # Delete an accelerator. Note: before you can delete an accelerator, you
    # must disable it and remove all dependent resources (listeners and
    # endpoint groups).
    #
    # @option params [required, String] :accelerator_arn
    #   The Amazon Resource Name (ARN) of an accelerator.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_accelerator({
    #     accelerator_arn: "GenericString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/DeleteAccelerator AWS API Documentation
    #
    # @overload delete_accelerator(params = {})
    # @param [Hash] params ({})
    def delete_accelerator(params = {}, options = {})
      req = build_request(:delete_accelerator, params)
      req.send_request(options)
    end

    # Delete an endpoint group from a listener.
    #
    # @option params [required, String] :endpoint_group_arn
    #   The Amazon Resource Name (ARN) of the endpoint group to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_endpoint_group({
    #     endpoint_group_arn: "GenericString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/DeleteEndpointGroup AWS API Documentation
    #
    # @overload delete_endpoint_group(params = {})
    # @param [Hash] params ({})
    def delete_endpoint_group(params = {}, options = {})
      req = build_request(:delete_endpoint_group, params)
      req.send_request(options)
    end

    # Delete a listener from an accelerator.
    #
    # @option params [required, String] :listener_arn
    #   The Amazon Resource Name (ARN) of the listener.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_listener({
    #     listener_arn: "GenericString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/DeleteListener AWS API Documentation
    #
    # @overload delete_listener(params = {})
    # @param [Hash] params ({})
    def delete_listener(params = {}, options = {})
      req = build_request(:delete_listener, params)
      req.send_request(options)
    end

    # Describe an accelerator. To see an AWS CLI example of describing an
    # accelerator, scroll down to **Example**.
    #
    # @option params [required, String] :accelerator_arn
    #   The Amazon Resource Name (ARN) of the accelerator to describe.
    #
    # @return [Types::DescribeAcceleratorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAcceleratorResponse#accelerator #accelerator} => Types::Accelerator
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_accelerator({
    #     accelerator_arn: "GenericString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.accelerator.accelerator_arn #=> String
    #   resp.accelerator.name #=> String
    #   resp.accelerator.ip_address_type #=> String, one of "IPV4"
    #   resp.accelerator.enabled #=> Boolean
    #   resp.accelerator.ip_sets #=> Array
    #   resp.accelerator.ip_sets[0].ip_family #=> String
    #   resp.accelerator.ip_sets[0].ip_addresses #=> Array
    #   resp.accelerator.ip_sets[0].ip_addresses[0] #=> String
    #   resp.accelerator.status #=> String, one of "DEPLOYED", "IN_PROGRESS"
    #   resp.accelerator.created_time #=> Time
    #   resp.accelerator.last_modified_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/DescribeAccelerator AWS API Documentation
    #
    # @overload describe_accelerator(params = {})
    # @param [Hash] params ({})
    def describe_accelerator(params = {}, options = {})
      req = build_request(:describe_accelerator, params)
      req.send_request(options)
    end

    # Describe the attributes of an accelerator.
    #
    # @option params [String] :accelerator_arn
    #   The Amazon Resource Name (ARN) of the accelerator with the attributes
    #   that you want to describe. Value is required.
    #
    # @return [Types::DescribeAcceleratorAttributesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAcceleratorAttributesResponse#accelerator_attributes #accelerator_attributes} => Types::AcceleratorAttributes
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_accelerator_attributes({
    #     accelerator_arn: "GenericString",
    #   })
    #
    # @example Response structure
    #
    #   resp.accelerator_attributes.flow_logs_enabled #=> Boolean
    #   resp.accelerator_attributes.flow_logs_s3_bucket #=> String
    #   resp.accelerator_attributes.flow_logs_s3_prefix #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/DescribeAcceleratorAttributes AWS API Documentation
    #
    # @overload describe_accelerator_attributes(params = {})
    # @param [Hash] params ({})
    def describe_accelerator_attributes(params = {}, options = {})
      req = build_request(:describe_accelerator_attributes, params)
      req.send_request(options)
    end

    # Describe an endpoint group.
    #
    # @option params [required, String] :endpoint_group_arn
    #   The Amazon Resource Name (ARN) of the endpoint group to describe.
    #
    # @return [Types::DescribeEndpointGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeEndpointGroupResponse#endpoint_group #endpoint_group} => Types::EndpointGroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_endpoint_group({
    #     endpoint_group_arn: "GenericString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.endpoint_group.endpoint_group_arn #=> String
    #   resp.endpoint_group.endpoint_group_region #=> String
    #   resp.endpoint_group.endpoint_descriptions #=> Array
    #   resp.endpoint_group.endpoint_descriptions[0].endpoint_id #=> String
    #   resp.endpoint_group.endpoint_descriptions[0].weight #=> Integer
    #   resp.endpoint_group.endpoint_descriptions[0].health_state #=> String, one of "INITIAL", "HEALTHY", "UNHEALTHY"
    #   resp.endpoint_group.endpoint_descriptions[0].health_reason #=> String
    #   resp.endpoint_group.traffic_dial_percentage #=> Float
    #   resp.endpoint_group.health_check_port #=> Integer
    #   resp.endpoint_group.health_check_protocol #=> String, one of "TCP", "HTTP", "HTTPS"
    #   resp.endpoint_group.health_check_path #=> String
    #   resp.endpoint_group.health_check_interval_seconds #=> Integer
    #   resp.endpoint_group.threshold_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/DescribeEndpointGroup AWS API Documentation
    #
    # @overload describe_endpoint_group(params = {})
    # @param [Hash] params ({})
    def describe_endpoint_group(params = {}, options = {})
      req = build_request(:describe_endpoint_group, params)
      req.send_request(options)
    end

    # Describe a listener.
    #
    # @option params [required, String] :listener_arn
    #   The Amazon Resource Name (ARN) of the listener to describe.
    #
    # @return [Types::DescribeListenerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeListenerResponse#listener #listener} => Types::Listener
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_listener({
    #     listener_arn: "GenericString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.listener.listener_arn #=> String
    #   resp.listener.port_ranges #=> Array
    #   resp.listener.port_ranges[0].from_port #=> Integer
    #   resp.listener.port_ranges[0].to_port #=> Integer
    #   resp.listener.protocol #=> String, one of "TCP", "UDP"
    #   resp.listener.client_affinity #=> String, one of "NONE", "SOURCE_IP"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/DescribeListener AWS API Documentation
    #
    # @overload describe_listener(params = {})
    # @param [Hash] params ({})
    def describe_listener(params = {}, options = {})
      req = build_request(:describe_listener, params)
      req.send_request(options)
    end

    # List the accelerators for an AWS account.
    #
    # @option params [Integer] :max_results
    #   The number of Global Accelerator objects that you want to return with
    #   this call. The default value is 10.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. You receive this token from a
    #   previous call.
    #
    # @return [Types::ListAcceleratorsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAcceleratorsResponse#accelerators #accelerators} => Array&lt;Types::Accelerator&gt;
    #   * {Types::ListAcceleratorsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_accelerators({
    #     max_results: 1,
    #     next_token: "GenericString",
    #   })
    #
    # @example Response structure
    #
    #   resp.accelerators #=> Array
    #   resp.accelerators[0].accelerator_arn #=> String
    #   resp.accelerators[0].name #=> String
    #   resp.accelerators[0].ip_address_type #=> String, one of "IPV4"
    #   resp.accelerators[0].enabled #=> Boolean
    #   resp.accelerators[0].ip_sets #=> Array
    #   resp.accelerators[0].ip_sets[0].ip_family #=> String
    #   resp.accelerators[0].ip_sets[0].ip_addresses #=> Array
    #   resp.accelerators[0].ip_sets[0].ip_addresses[0] #=> String
    #   resp.accelerators[0].status #=> String, one of "DEPLOYED", "IN_PROGRESS"
    #   resp.accelerators[0].created_time #=> Time
    #   resp.accelerators[0].last_modified_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/ListAccelerators AWS API Documentation
    #
    # @overload list_accelerators(params = {})
    # @param [Hash] params ({})
    def list_accelerators(params = {}, options = {})
      req = build_request(:list_accelerators, params)
      req.send_request(options)
    end

    # List the endpoint groups that are associated with a listener.
    #
    # @option params [required, String] :listener_arn
    #   The Amazon Resource Name (ARN) of the listener.
    #
    # @option params [Integer] :max_results
    #   The number of endpoint group objects that you want to return with this
    #   call. The default value is 10.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. You receive this token from a
    #   previous call.
    #
    # @return [Types::ListEndpointGroupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEndpointGroupsResponse#endpoint_groups #endpoint_groups} => Array&lt;Types::EndpointGroup&gt;
    #   * {Types::ListEndpointGroupsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_endpoint_groups({
    #     listener_arn: "GenericString", # required
    #     max_results: 1,
    #     next_token: "GenericString",
    #   })
    #
    # @example Response structure
    #
    #   resp.endpoint_groups #=> Array
    #   resp.endpoint_groups[0].endpoint_group_arn #=> String
    #   resp.endpoint_groups[0].endpoint_group_region #=> String
    #   resp.endpoint_groups[0].endpoint_descriptions #=> Array
    #   resp.endpoint_groups[0].endpoint_descriptions[0].endpoint_id #=> String
    #   resp.endpoint_groups[0].endpoint_descriptions[0].weight #=> Integer
    #   resp.endpoint_groups[0].endpoint_descriptions[0].health_state #=> String, one of "INITIAL", "HEALTHY", "UNHEALTHY"
    #   resp.endpoint_groups[0].endpoint_descriptions[0].health_reason #=> String
    #   resp.endpoint_groups[0].traffic_dial_percentage #=> Float
    #   resp.endpoint_groups[0].health_check_port #=> Integer
    #   resp.endpoint_groups[0].health_check_protocol #=> String, one of "TCP", "HTTP", "HTTPS"
    #   resp.endpoint_groups[0].health_check_path #=> String
    #   resp.endpoint_groups[0].health_check_interval_seconds #=> Integer
    #   resp.endpoint_groups[0].threshold_count #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/ListEndpointGroups AWS API Documentation
    #
    # @overload list_endpoint_groups(params = {})
    # @param [Hash] params ({})
    def list_endpoint_groups(params = {}, options = {})
      req = build_request(:list_endpoint_groups, params)
      req.send_request(options)
    end

    # List the listeners for an accelerator.
    #
    # @option params [required, String] :accelerator_arn
    #   The Amazon Resource Name (ARN) of the accelerator for which you want
    #   to list listener objects.
    #
    # @option params [Integer] :max_results
    #   The number of listener objects that you want to return with this call.
    #   The default value is 10.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. You receive this token from a
    #   previous call.
    #
    # @return [Types::ListListenersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListListenersResponse#listeners #listeners} => Array&lt;Types::Listener&gt;
    #   * {Types::ListListenersResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_listeners({
    #     accelerator_arn: "GenericString", # required
    #     max_results: 1,
    #     next_token: "GenericString",
    #   })
    #
    # @example Response structure
    #
    #   resp.listeners #=> Array
    #   resp.listeners[0].listener_arn #=> String
    #   resp.listeners[0].port_ranges #=> Array
    #   resp.listeners[0].port_ranges[0].from_port #=> Integer
    #   resp.listeners[0].port_ranges[0].to_port #=> Integer
    #   resp.listeners[0].protocol #=> String, one of "TCP", "UDP"
    #   resp.listeners[0].client_affinity #=> String, one of "NONE", "SOURCE_IP"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/ListListeners AWS API Documentation
    #
    # @overload list_listeners(params = {})
    # @param [Hash] params ({})
    def list_listeners(params = {}, options = {})
      req = build_request(:list_listeners, params)
      req.send_request(options)
    end

    # Update an accelerator.
    #
    # @option params [required, String] :accelerator_arn
    #   The Amazon Resource Name (ARN) of the accelerator to update.
    #
    # @option params [String] :name
    #   The name of the accelerator. The name can have a maximum of 32
    #   characters, must contain only alphanumeric characters or hyphens (-),
    #   and must not begin or end with a hyphen.
    #
    # @option params [String] :ip_address_type
    #   The value for the address type must be IPv4.
    #
    # @option params [Boolean] :enabled
    #   Indicates whether an accelerator is enabled. The value is true or
    #   false. The default value is true.
    #
    #   If the value is set to true, the accelerator cannot be deleted. If set
    #   to false, the accelerator can be deleted.
    #
    # @return [Types::UpdateAcceleratorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAcceleratorResponse#accelerator #accelerator} => Types::Accelerator
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_accelerator({
    #     accelerator_arn: "GenericString", # required
    #     name: "GenericString",
    #     ip_address_type: "IPV4", # accepts IPV4
    #     enabled: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.accelerator.accelerator_arn #=> String
    #   resp.accelerator.name #=> String
    #   resp.accelerator.ip_address_type #=> String, one of "IPV4"
    #   resp.accelerator.enabled #=> Boolean
    #   resp.accelerator.ip_sets #=> Array
    #   resp.accelerator.ip_sets[0].ip_family #=> String
    #   resp.accelerator.ip_sets[0].ip_addresses #=> Array
    #   resp.accelerator.ip_sets[0].ip_addresses[0] #=> String
    #   resp.accelerator.status #=> String, one of "DEPLOYED", "IN_PROGRESS"
    #   resp.accelerator.created_time #=> Time
    #   resp.accelerator.last_modified_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/UpdateAccelerator AWS API Documentation
    #
    # @overload update_accelerator(params = {})
    # @param [Hash] params ({})
    def update_accelerator(params = {}, options = {})
      req = build_request(:update_accelerator, params)
      req.send_request(options)
    end

    # Update the attributes for an accelerator. To see an AWS CLI example of
    # updating an accelerator to enable flow logs, scroll down to
    # **Example**.
    #
    # @option params [String] :accelerator_arn
    #   The Amazon Resource Name (ARN) of the accelerator that you want to
    #   update. Attribute is required.
    #
    # @option params [Boolean] :flow_logs_enabled
    #   Update whether flow logs are enabled. The default value is false. If
    #   the value is true, `FlowLogsS3Bucket` and `FlowLogsS3Prefix` must be
    #   specified.
    #
    #   For more information, see [Flow Logs][1] in the *AWS Global
    #   Accelerator Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/global-accelerator/latest/dg/monitoring-global-accelerator.flow-logs.html
    #
    # @option params [String] :flow_logs_s3_bucket
    #   The name of the Amazon S3 bucket for the flow logs. Attribute is
    #   required if `FlowLogsEnabled` is `true`. The bucket must exist and
    #   have a bucket policy that grants AWS Global Accelerator permission to
    #   write to the bucket.
    #
    # @option params [String] :flow_logs_s3_prefix
    #   Update the prefix for the location in the Amazon S3 bucket for the
    #   flow logs. Attribute is required if `FlowLogsEnabled` is `true`. If
    #   you don’t specify a prefix, the flow logs are stored in the root of
    #   the bucket.
    #
    # @return [Types::UpdateAcceleratorAttributesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAcceleratorAttributesResponse#accelerator_attributes #accelerator_attributes} => Types::AcceleratorAttributes
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_accelerator_attributes({
    #     accelerator_arn: "GenericString",
    #     flow_logs_enabled: false,
    #     flow_logs_s3_bucket: "GenericString",
    #     flow_logs_s3_prefix: "GenericString",
    #   })
    #
    # @example Response structure
    #
    #   resp.accelerator_attributes.flow_logs_enabled #=> Boolean
    #   resp.accelerator_attributes.flow_logs_s3_bucket #=> String
    #   resp.accelerator_attributes.flow_logs_s3_prefix #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/UpdateAcceleratorAttributes AWS API Documentation
    #
    # @overload update_accelerator_attributes(params = {})
    # @param [Hash] params ({})
    def update_accelerator_attributes(params = {}, options = {})
      req = build_request(:update_accelerator_attributes, params)
      req.send_request(options)
    end

    # Update an endpoint group. To see an AWS CLI example of updating an
    # endpoint group, scroll down to **Example**.
    #
    # @option params [required, String] :endpoint_group_arn
    #   The Amazon Resource Name (ARN) of the endpoint group.
    #
    # @option params [Array<Types::EndpointConfiguration>] :endpoint_configurations
    #   The list of endpoint objects.
    #
    # @option params [Float] :traffic_dial_percentage
    #   The percentage of traffic to send to an AWS Region. Additional traffic
    #   is distributed to other endpoint groups for this listener.
    #
    #   Use this action to increase (dial up) or decrease (dial down) traffic
    #   to a specific Region. The percentage is applied to the traffic that
    #   would otherwise have been routed to the Region based on optimal
    #   routing.
    #
    #   The default value is 100.
    #
    # @option params [Integer] :health_check_port
    #   The port that AWS Global Accelerator uses to check the health of
    #   endpoints that are part of this endpoint group. The default port is
    #   the listener port that this endpoint group is associated with. If the
    #   listener port is a list of ports, Global Accelerator uses the first
    #   port in the list.
    #
    # @option params [String] :health_check_protocol
    #   The protocol that AWS Global Accelerator uses to check the health of
    #   endpoints that are part of this endpoint group. The default value is
    #   TCP.
    #
    # @option params [String] :health_check_path
    #   If the protocol is HTTP/S, then this specifies the path that is the
    #   destination for health check targets. The default value is slash (/).
    #
    # @option params [Integer] :health_check_interval_seconds
    #   The time—10 seconds or 30 seconds—between each health check for an
    #   endpoint. The default value is 30.
    #
    # @option params [Integer] :threshold_count
    #   The number of consecutive health checks required to set the state of a
    #   healthy endpoint to unhealthy, or to set an unhealthy endpoint to
    #   healthy. The default value is 3.
    #
    # @return [Types::UpdateEndpointGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateEndpointGroupResponse#endpoint_group #endpoint_group} => Types::EndpointGroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_endpoint_group({
    #     endpoint_group_arn: "GenericString", # required
    #     endpoint_configurations: [
    #       {
    #         endpoint_id: "GenericString",
    #         weight: 1,
    #       },
    #     ],
    #     traffic_dial_percentage: 1.0,
    #     health_check_port: 1,
    #     health_check_protocol: "TCP", # accepts TCP, HTTP, HTTPS
    #     health_check_path: "GenericString",
    #     health_check_interval_seconds: 1,
    #     threshold_count: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.endpoint_group.endpoint_group_arn #=> String
    #   resp.endpoint_group.endpoint_group_region #=> String
    #   resp.endpoint_group.endpoint_descriptions #=> Array
    #   resp.endpoint_group.endpoint_descriptions[0].endpoint_id #=> String
    #   resp.endpoint_group.endpoint_descriptions[0].weight #=> Integer
    #   resp.endpoint_group.endpoint_descriptions[0].health_state #=> String, one of "INITIAL", "HEALTHY", "UNHEALTHY"
    #   resp.endpoint_group.endpoint_descriptions[0].health_reason #=> String
    #   resp.endpoint_group.traffic_dial_percentage #=> Float
    #   resp.endpoint_group.health_check_port #=> Integer
    #   resp.endpoint_group.health_check_protocol #=> String, one of "TCP", "HTTP", "HTTPS"
    #   resp.endpoint_group.health_check_path #=> String
    #   resp.endpoint_group.health_check_interval_seconds #=> Integer
    #   resp.endpoint_group.threshold_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/UpdateEndpointGroup AWS API Documentation
    #
    # @overload update_endpoint_group(params = {})
    # @param [Hash] params ({})
    def update_endpoint_group(params = {}, options = {})
      req = build_request(:update_endpoint_group, params)
      req.send_request(options)
    end

    # Update a listener.
    #
    # @option params [required, String] :listener_arn
    #   The Amazon Resource Name (ARN) of the listener to update.
    #
    # @option params [Array<Types::PortRange>] :port_ranges
    #   The updated list of port ranges for the connections from clients to
    #   the accelerator.
    #
    # @option params [String] :protocol
    #   The updated protocol for the connections from clients to the
    #   accelerator.
    #
    # @option params [String] :client_affinity
    #   Client affinity lets you direct all requests from a user to the same
    #   endpoint, if you have stateful applications, regardless of the port
    #   and protocol of the client request. Clienty affinity gives you control
    #   over whether to always route each client to the same specific
    #   endpoint.
    #
    #   AWS Global Accelerator uses a consistent-flow hashing algorithm to
    #   choose the optimal endpoint for a connection. If client affinity is
    #   `NONE`, Global Accelerator uses the "five-tuple" (5-tuple)
    #   properties—source IP address, source port, destination IP address,
    #   destination port, and protocol—to select the hash value, and then
    #   chooses the best endpoint. However, with this setting, if someone uses
    #   different ports to connect to Global Accelerator, their connections
    #   might not be always routed to the same endpoint because the hash value
    #   changes.
    #
    #   If you want a given client to always be routed to the same endpoint,
    #   set client affinity to `SOURCE_IP` instead. When you use the
    #   `SOURCE_IP` setting, Global Accelerator uses the "two-tuple"
    #   (2-tuple) properties— source (client) IP address and destination IP
    #   address—to select the hash value.
    #
    #   The default value is `NONE`.
    #
    # @return [Types::UpdateListenerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateListenerResponse#listener #listener} => Types::Listener
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_listener({
    #     listener_arn: "GenericString", # required
    #     port_ranges: [
    #       {
    #         from_port: 1,
    #         to_port: 1,
    #       },
    #     ],
    #     protocol: "TCP", # accepts TCP, UDP
    #     client_affinity: "NONE", # accepts NONE, SOURCE_IP
    #   })
    #
    # @example Response structure
    #
    #   resp.listener.listener_arn #=> String
    #   resp.listener.port_ranges #=> Array
    #   resp.listener.port_ranges[0].from_port #=> Integer
    #   resp.listener.port_ranges[0].to_port #=> Integer
    #   resp.listener.protocol #=> String, one of "TCP", "UDP"
    #   resp.listener.client_affinity #=> String, one of "NONE", "SOURCE_IP"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/UpdateListener AWS API Documentation
    #
    # @overload update_listener(params = {})
    # @param [Hash] params ({})
    def update_listener(params = {}, options = {})
      req = build_request(:update_listener, params)
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
      context[:gem_name] = 'aws-sdk-globalaccelerator'
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
