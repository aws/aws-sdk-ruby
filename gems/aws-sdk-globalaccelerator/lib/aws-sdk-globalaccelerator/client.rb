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

Aws::Plugins::GlobalConfiguration.add_identifier(:globalaccelerator)

module Aws::GlobalAccelerator
  # An API client for GlobalAccelerator.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::GlobalAccelerator::Client.new(
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

    # Advertises an IPv4 address range that is provisioned for use with your
    # AWS resources through bring your own IP addresses (BYOIP). It can take
    # a few minutes before traffic to the specified addresses starts routing
    # to AWS because of propagation delays. To see an AWS CLI example of
    # advertising an address range, scroll down to **Example**.
    #
    # To stop advertising the BYOIP address range, use [
    # WithdrawByoipCidr][1].
    #
    # For more information, see [Bring Your Own IP Addresses (BYOIP)][2] in
    # the *AWS Global Accelerator Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/global-accelerator/latest/api/WithdrawByoipCidr.html
    # [2]: https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html
    #
    # @option params [required, String] :cidr
    #   The address range, in CIDR notation. This must be the exact range that
    #   you provisioned. You can't advertise only a portion of the
    #   provisioned range.
    #
    # @return [Types::AdvertiseByoipCidrResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AdvertiseByoipCidrResponse#byoip_cidr #byoip_cidr} => Types::ByoipCidr
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.advertise_byoip_cidr({
    #     cidr: "GenericString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.byoip_cidr.cidr #=> String
    #   resp.byoip_cidr.state #=> String, one of "PENDING_PROVISIONING", "READY", "PENDING_ADVERTISING", "ADVERTISING", "PENDING_WITHDRAWING", "PENDING_DEPROVISIONING", "DEPROVISIONED", "FAILED_PROVISION", "FAILED_ADVERTISING", "FAILED_WITHDRAW", "FAILED_DEPROVISION"
    #   resp.byoip_cidr.events #=> Array
    #   resp.byoip_cidr.events[0].message #=> String
    #   resp.byoip_cidr.events[0].timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/AdvertiseByoipCidr AWS API Documentation
    #
    # @overload advertise_byoip_cidr(params = {})
    # @param [Hash] params ({})
    def advertise_byoip_cidr(params = {}, options = {})
      req = build_request(:advertise_byoip_cidr, params)
      req.send_request(options)
    end

    # Create an accelerator. An accelerator includes one or more listeners
    # that process inbound connections and direct traffic to one or more
    # endpoint groups, each of which includes endpoints, such as Network
    # Load Balancers. To see an AWS CLI example of creating an accelerator,
    # scroll down to **Example**.
    #
    # If you bring your own IP address ranges to AWS Global Accelerator
    # (BYOIP), you can assign IP addresses from your own pool to your
    # accelerator as the static IP address entry points. Only one IP address
    # from each of your IP address ranges can be used for each accelerator.
    #
    # You must specify the US West (Oregon) Region to create or update
    # accelerators.
    #
    # @option params [required, String] :name
    #   The name of an accelerator. The name can have a maximum of 32
    #   characters, must contain only alphanumeric characters or hyphens (-),
    #   and must not begin or end with a hyphen.
    #
    # @option params [String] :ip_address_type
    #   The value for the address type must be IPv4.
    #
    # @option params [Array<String>] :ip_addresses
    #   Optionally, if you've added your own IP address pool to Global
    #   Accelerator, you can choose IP addresses from your own pool to use for
    #   the accelerator's static IP addresses. You can specify one or two
    #   addresses, separated by a comma. Do not include the /32 suffix.
    #
    #   If you specify only one IP address from your IP address range, Global
    #   Accelerator assigns a second static IP address for the accelerator
    #   from the AWS IP address pool.
    #
    #   For more information, see [Bring Your Own IP Addresses (BYOIP)][1] in
    #   the *AWS Global Accelerator Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html
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
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Array<Types::Tag>] :tags
    #   Create tags for an accelerator.
    #
    #   For more information, see [Tagging in AWS Global Accelerator][1] in
    #   the *AWS Global Accelerator Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/global-accelerator/latest/dg/tagging-in-global-accelerator.html
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
    #     ip_addresses: ["IpAddress"],
    #     enabled: false,
    #     idempotency_token: "IdempotencyToken", # required
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
    #   resp.accelerator.accelerator_arn #=> String
    #   resp.accelerator.name #=> String
    #   resp.accelerator.ip_address_type #=> String, one of "IPV4"
    #   resp.accelerator.enabled #=> Boolean
    #   resp.accelerator.ip_sets #=> Array
    #   resp.accelerator.ip_sets[0].ip_family #=> String
    #   resp.accelerator.ip_sets[0].ip_addresses #=> Array
    #   resp.accelerator.ip_sets[0].ip_addresses[0] #=> String
    #   resp.accelerator.dns_name #=> String
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
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
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
    #         client_ip_preservation_enabled: false,
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
    #   resp.endpoint_group.endpoint_descriptions[0].client_ip_preservation_enabled #=> Boolean
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
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
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

    # Delete an accelerator. Before you can delete an accelerator, you must
    # disable it and remove all dependent resources (listeners and endpoint
    # groups). To disable the accelerator, update the accelerator to set
    # `Enabled` to false.
    #
    # When you create an accelerator, by default, Global Accelerator
    # provides you with a set of two static IP addresses. Alternatively, you
    # can bring your own IP address ranges to Global Accelerator and assign
    # IP addresses from those ranges.
    #
    #  The IP addresses are assigned to your accelerator for as long as it
    # exists, even if you disable the accelerator and it no longer accepts
    # or routes traffic. However, when you *delete* an accelerator, you lose
    # the static IP addresses that are assigned to the accelerator, so you
    # can no longer route traffic by using them. As a best practice, ensure
    # that you have permissions in place to avoid inadvertently deleting
    # accelerators. You can use IAM policies with Global Accelerator to
    # limit the users who have permissions to delete an accelerator. For
    # more information, see [Authentication and Access Control][1] in the
    # *AWS Global Accelerator Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/global-accelerator/latest/dg/auth-and-access-control.html
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

    # Releases the specified address range that you provisioned to use with
    # your AWS resources through bring your own IP addresses (BYOIP) and
    # deletes the corresponding address pool. To see an AWS CLI example of
    # deprovisioning an address range, scroll down to **Example**.
    #
    # Before you can release an address range, you must stop advertising it
    # by using [WithdrawByoipCidr][1] and you must not have any accelerators
    # that are using static IP addresses allocated from its address range.
    #
    # For more information, see [Bring Your Own IP Addresses (BYOIP)][2] in
    # the *AWS Global Accelerator Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/global-accelerator/latest/api/WithdrawByoipCidr.html
    # [2]: https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html
    #
    # @option params [required, String] :cidr
    #   The address range, in CIDR notation. The prefix must be the same
    #   prefix that you specified when you provisioned the address range.
    #
    # @return [Types::DeprovisionByoipCidrResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeprovisionByoipCidrResponse#byoip_cidr #byoip_cidr} => Types::ByoipCidr
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deprovision_byoip_cidr({
    #     cidr: "GenericString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.byoip_cidr.cidr #=> String
    #   resp.byoip_cidr.state #=> String, one of "PENDING_PROVISIONING", "READY", "PENDING_ADVERTISING", "ADVERTISING", "PENDING_WITHDRAWING", "PENDING_DEPROVISIONING", "DEPROVISIONED", "FAILED_PROVISION", "FAILED_ADVERTISING", "FAILED_WITHDRAW", "FAILED_DEPROVISION"
    #   resp.byoip_cidr.events #=> Array
    #   resp.byoip_cidr.events[0].message #=> String
    #   resp.byoip_cidr.events[0].timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/DeprovisionByoipCidr AWS API Documentation
    #
    # @overload deprovision_byoip_cidr(params = {})
    # @param [Hash] params ({})
    def deprovision_byoip_cidr(params = {}, options = {})
      req = build_request(:deprovision_byoip_cidr, params)
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
    #   resp.accelerator.dns_name #=> String
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

    # Describe the attributes of an accelerator. To see an AWS CLI example
    # of describing the attributes of an accelerator, scroll down to
    # **Example**.
    #
    # @option params [required, String] :accelerator_arn
    #   The Amazon Resource Name (ARN) of the accelerator with the attributes
    #   that you want to describe.
    #
    # @return [Types::DescribeAcceleratorAttributesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAcceleratorAttributesResponse#accelerator_attributes #accelerator_attributes} => Types::AcceleratorAttributes
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_accelerator_attributes({
    #     accelerator_arn: "GenericString", # required
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

    # Describe an endpoint group. To see an AWS CLI example of describing an
    # endpoint group, scroll down to **Example**.
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
    #   resp.endpoint_group.endpoint_descriptions[0].client_ip_preservation_enabled #=> Boolean
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

    # Describe a listener. To see an AWS CLI example of describing a
    # listener, scroll down to **Example**.
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

    # List the accelerators for an AWS account. To see an AWS CLI example of
    # listing the accelerators for an AWS account, scroll down to
    # **Example**.
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
    #   resp.accelerators[0].dns_name #=> String
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

    # Lists the IP address ranges that were specified in calls to
    # [ProvisionByoipCidr][1], including the current state and a history of
    # state changes.
    #
    # To see an AWS CLI example of listing BYOIP CIDR addresses, scroll down
    # to **Example**.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/global-accelerator/latest/api/ProvisionByoipCidr.html
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   `nextToken` value.
    #
    # @option params [String] :next_token
    #   The token for the next page of results.
    #
    # @return [Types::ListByoipCidrsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListByoipCidrsResponse#byoip_cidrs #byoip_cidrs} => Array&lt;Types::ByoipCidr&gt;
    #   * {Types::ListByoipCidrsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_byoip_cidrs({
    #     max_results: 1,
    #     next_token: "GenericString",
    #   })
    #
    # @example Response structure
    #
    #   resp.byoip_cidrs #=> Array
    #   resp.byoip_cidrs[0].cidr #=> String
    #   resp.byoip_cidrs[0].state #=> String, one of "PENDING_PROVISIONING", "READY", "PENDING_ADVERTISING", "ADVERTISING", "PENDING_WITHDRAWING", "PENDING_DEPROVISIONING", "DEPROVISIONED", "FAILED_PROVISION", "FAILED_ADVERTISING", "FAILED_WITHDRAW", "FAILED_DEPROVISION"
    #   resp.byoip_cidrs[0].events #=> Array
    #   resp.byoip_cidrs[0].events[0].message #=> String
    #   resp.byoip_cidrs[0].events[0].timestamp #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/ListByoipCidrs AWS API Documentation
    #
    # @overload list_byoip_cidrs(params = {})
    # @param [Hash] params ({})
    def list_byoip_cidrs(params = {}, options = {})
      req = build_request(:list_byoip_cidrs, params)
      req.send_request(options)
    end

    # List the endpoint groups that are associated with a listener. To see
    # an AWS CLI example of listing the endpoint groups for listener, scroll
    # down to **Example**.
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
    #   resp.endpoint_groups[0].endpoint_descriptions[0].client_ip_preservation_enabled #=> Boolean
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

    # List the listeners for an accelerator. To see an AWS CLI example of
    # listing the listeners for an accelerator, scroll down to **Example**.
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

    # List all tags for an accelerator. To see an AWS CLI example of listing
    # tags for an accelerator, scroll down to **Example**.
    #
    # For more information, see [Tagging in AWS Global Accelerator][1] in
    # the *AWS Global Accelerator Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/global-accelerator/latest/dg/tagging-in-global-accelerator.html
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the accelerator to list tags for. An
    #   ARN uniquely identifies an accelerator.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "ResourceArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Provisions an IP address range to use with your AWS resources through
    # bring your own IP addresses (BYOIP) and creates a corresponding
    # address pool. After the address range is provisioned, it is ready to
    # be advertised using [ AdvertiseByoipCidr][1].
    #
    # To see an AWS CLI example of provisioning an address range for BYOIP,
    # scroll down to **Example**.
    #
    # For more information, see [Bring Your Own IP Addresses (BYOIP)][2] in
    # the *AWS Global Accelerator Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/global-accelerator/latest/api/AdvertiseByoipCidr.html
    # [2]: https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html
    #
    # @option params [required, String] :cidr
    #   The public IPv4 address range, in CIDR notation. The most specific IP
    #   prefix that you can specify is /24. The address range cannot overlap
    #   with another address range that you've brought to this or another
    #   Region.
    #
    # @option params [required, Types::CidrAuthorizationContext] :cidr_authorization_context
    #   A signed document that proves that you are authorized to bring the
    #   specified IP address range to Amazon using BYOIP.
    #
    # @return [Types::ProvisionByoipCidrResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ProvisionByoipCidrResponse#byoip_cidr #byoip_cidr} => Types::ByoipCidr
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.provision_byoip_cidr({
    #     cidr: "GenericString", # required
    #     cidr_authorization_context: { # required
    #       message: "GenericString", # required
    #       signature: "GenericString", # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.byoip_cidr.cidr #=> String
    #   resp.byoip_cidr.state #=> String, one of "PENDING_PROVISIONING", "READY", "PENDING_ADVERTISING", "ADVERTISING", "PENDING_WITHDRAWING", "PENDING_DEPROVISIONING", "DEPROVISIONED", "FAILED_PROVISION", "FAILED_ADVERTISING", "FAILED_WITHDRAW", "FAILED_DEPROVISION"
    #   resp.byoip_cidr.events #=> Array
    #   resp.byoip_cidr.events[0].message #=> String
    #   resp.byoip_cidr.events[0].timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/ProvisionByoipCidr AWS API Documentation
    #
    # @overload provision_byoip_cidr(params = {})
    # @param [Hash] params ({})
    def provision_byoip_cidr(params = {}, options = {})
      req = build_request(:provision_byoip_cidr, params)
      req.send_request(options)
    end

    # Add tags to an accelerator resource. To see an AWS CLI example of
    # adding tags to an accelerator, scroll down to **Example**.
    #
    # For more information, see [Tagging in AWS Global Accelerator][1] in
    # the *AWS Global Accelerator Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/global-accelerator/latest/dg/tagging-in-global-accelerator.html
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the Global Accelerator resource to
    #   add tags to. An ARN uniquely identifies a resource.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   The tags to add to a resource. A tag consists of a key and a value
    #   that you define.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "ResourceArn", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Remove tags from a Global Accelerator resource. When you specify a tag
    # key, the action removes both that key and its associated value. To see
    # an AWS CLI example of removing tags from an accelerator, scroll down
    # to **Example**. The operation succeeds even if you attempt to remove
    # tags from an accelerator that was already removed.
    #
    # For more information, see [Tagging in AWS Global Accelerator][1] in
    # the *AWS Global Accelerator Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/global-accelerator/latest/dg/tagging-in-global-accelerator.html
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the Global Accelerator resource to
    #   remove tags from. An ARN uniquely identifies a resource.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The tag key pairs that you want to remove from the specified
    #   resources.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Update an accelerator. To see an AWS CLI example of updating an
    # accelerator, scroll down to **Example**.
    #
    # You must specify the US West (Oregon) Region to create or update
    # accelerators.
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
    #   resp.accelerator.dns_name #=> String
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
    # @option params [required, String] :accelerator_arn
    #   The Amazon Resource Name (ARN) of the accelerator that you want to
    #   update.
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
    #   flow logs. Attribute is required if `FlowLogsEnabled` is `true`.
    #
    #   If you don’t specify a prefix, the flow logs are stored in the root of
    #   the bucket. If you specify slash (/) for the S3 bucket prefix, the log
    #   file bucket folder structure will include a double slash (//), like
    #   the following:
    #
    #   s3-bucket\_name//AWSLogs/aws\_account\_id
    #
    # @return [Types::UpdateAcceleratorAttributesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAcceleratorAttributesResponse#accelerator_attributes #accelerator_attributes} => Types::AcceleratorAttributes
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_accelerator_attributes({
    #     accelerator_arn: "GenericString", # required
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
    #         client_ip_preservation_enabled: false,
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
    #   resp.endpoint_group.endpoint_descriptions[0].client_ip_preservation_enabled #=> Boolean
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

    # Update a listener. To see an AWS CLI example of updating listener,
    # scroll down to **Example**.
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

    # Stops advertising an address range that is provisioned as an address
    # pool. You can perform this operation at most once every 10 seconds,
    # even if you specify different address ranges each time. To see an AWS
    # CLI example of withdrawing an address range for BYOIP so it will no
    # longer be advertised by AWS, scroll down to **Example**.
    #
    # It can take a few minutes before traffic to the specified addresses
    # stops routing to AWS because of propagation delays.
    #
    # For more information, see [Bring Your Own IP Addresses (BYOIP)][1] in
    # the *AWS Global Accelerator Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html
    #
    # @option params [required, String] :cidr
    #   The address range, in CIDR notation.
    #
    # @return [Types::WithdrawByoipCidrResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::WithdrawByoipCidrResponse#byoip_cidr #byoip_cidr} => Types::ByoipCidr
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.withdraw_byoip_cidr({
    #     cidr: "GenericString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.byoip_cidr.cidr #=> String
    #   resp.byoip_cidr.state #=> String, one of "PENDING_PROVISIONING", "READY", "PENDING_ADVERTISING", "ADVERTISING", "PENDING_WITHDRAWING", "PENDING_DEPROVISIONING", "DEPROVISIONED", "FAILED_PROVISION", "FAILED_ADVERTISING", "FAILED_WITHDRAW", "FAILED_DEPROVISION"
    #   resp.byoip_cidr.events #=> Array
    #   resp.byoip_cidr.events[0].message #=> String
    #   resp.byoip_cidr.events[0].timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/WithdrawByoipCidr AWS API Documentation
    #
    # @overload withdraw_byoip_cidr(params = {})
    # @param [Hash] params ({})
    def withdraw_byoip_cidr(params = {}, options = {})
      req = build_request(:withdraw_byoip_cidr, params)
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
      context[:gem_version] = '1.23.0'
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
