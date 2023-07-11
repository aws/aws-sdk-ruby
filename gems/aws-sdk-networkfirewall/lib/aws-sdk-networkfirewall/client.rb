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

Aws::Plugins::GlobalConfiguration.add_identifier(:networkfirewall)

module Aws::NetworkFirewall
  # An API client for NetworkFirewall.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::NetworkFirewall::Client.new(
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

    @identifier = :networkfirewall

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
    add_plugin(Aws::NetworkFirewall::Plugins::Endpoints)

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
    #   @option options [Aws::NetworkFirewall::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::NetworkFirewall::EndpointParameters`
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

    # Associates a FirewallPolicy to a Firewall.
    #
    # A firewall policy defines how to monitor and manage your VPC network
    # traffic, using a collection of inspection rule groups and other
    # settings. Each firewall requires one firewall policy association, and
    # you can use the same firewall policy for multiple firewalls.
    #
    # @option params [String] :update_token
    #   An optional token that you can use for optimistic locking. Network
    #   Firewall returns a token to your requests that access the firewall.
    #   The token marks the state of the firewall resource at the time of the
    #   request.
    #
    #   To make an unconditional change to the firewall, omit the token in
    #   your update request. Without the token, Network Firewall performs your
    #   updates regardless of whether the firewall has changed since you last
    #   retrieved it.
    #
    #   To make a conditional change to the firewall, provide the token in
    #   your update request. Network Firewall uses the token to ensure that
    #   the firewall hasn't changed since you last retrieved it. If it has
    #   changed, the operation fails with an `InvalidTokenException`. If this
    #   happens, retrieve the firewall again to get a current copy of it with
    #   a new token. Reapply your changes as needed, then try the operation
    #   again using the new token.
    #
    # @option params [String] :firewall_arn
    #   The Amazon Resource Name (ARN) of the firewall.
    #
    #   You must specify the ARN or the name, and you can specify both.
    #
    # @option params [String] :firewall_name
    #   The descriptive name of the firewall. You can't change the name of a
    #   firewall after you create it.
    #
    #   You must specify the ARN or the name, and you can specify both.
    #
    # @option params [required, String] :firewall_policy_arn
    #   The Amazon Resource Name (ARN) of the firewall policy.
    #
    # @return [Types::AssociateFirewallPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociateFirewallPolicyResponse#firewall_arn #firewall_arn} => String
    #   * {Types::AssociateFirewallPolicyResponse#firewall_name #firewall_name} => String
    #   * {Types::AssociateFirewallPolicyResponse#firewall_policy_arn #firewall_policy_arn} => String
    #   * {Types::AssociateFirewallPolicyResponse#update_token #update_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_firewall_policy({
    #     update_token: "UpdateToken",
    #     firewall_arn: "ResourceArn",
    #     firewall_name: "ResourceName",
    #     firewall_policy_arn: "ResourceArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.firewall_arn #=> String
    #   resp.firewall_name #=> String
    #   resp.firewall_policy_arn #=> String
    #   resp.update_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/AssociateFirewallPolicy AWS API Documentation
    #
    # @overload associate_firewall_policy(params = {})
    # @param [Hash] params ({})
    def associate_firewall_policy(params = {}, options = {})
      req = build_request(:associate_firewall_policy, params)
      req.send_request(options)
    end

    # Associates the specified subnets in the Amazon VPC to the firewall.
    # You can specify one subnet for each of the Availability Zones that the
    # VPC spans.
    #
    # This request creates an Network Firewall firewall endpoint in each of
    # the subnets. To enable the firewall's protections, you must also
    # modify the VPC's route tables for each subnet's Availability Zone,
    # to redirect the traffic that's coming into and going out of the zone
    # through the firewall endpoint.
    #
    # @option params [String] :update_token
    #   An optional token that you can use for optimistic locking. Network
    #   Firewall returns a token to your requests that access the firewall.
    #   The token marks the state of the firewall resource at the time of the
    #   request.
    #
    #   To make an unconditional change to the firewall, omit the token in
    #   your update request. Without the token, Network Firewall performs your
    #   updates regardless of whether the firewall has changed since you last
    #   retrieved it.
    #
    #   To make a conditional change to the firewall, provide the token in
    #   your update request. Network Firewall uses the token to ensure that
    #   the firewall hasn't changed since you last retrieved it. If it has
    #   changed, the operation fails with an `InvalidTokenException`. If this
    #   happens, retrieve the firewall again to get a current copy of it with
    #   a new token. Reapply your changes as needed, then try the operation
    #   again using the new token.
    #
    # @option params [String] :firewall_arn
    #   The Amazon Resource Name (ARN) of the firewall.
    #
    #   You must specify the ARN or the name, and you can specify both.
    #
    # @option params [String] :firewall_name
    #   The descriptive name of the firewall. You can't change the name of a
    #   firewall after you create it.
    #
    #   You must specify the ARN or the name, and you can specify both.
    #
    # @option params [required, Array<Types::SubnetMapping>] :subnet_mappings
    #   The IDs of the subnets that you want to associate with the firewall.
    #
    # @return [Types::AssociateSubnetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociateSubnetsResponse#firewall_arn #firewall_arn} => String
    #   * {Types::AssociateSubnetsResponse#firewall_name #firewall_name} => String
    #   * {Types::AssociateSubnetsResponse#subnet_mappings #subnet_mappings} => Array&lt;Types::SubnetMapping&gt;
    #   * {Types::AssociateSubnetsResponse#update_token #update_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_subnets({
    #     update_token: "UpdateToken",
    #     firewall_arn: "ResourceArn",
    #     firewall_name: "ResourceName",
    #     subnet_mappings: [ # required
    #       {
    #         subnet_id: "CollectionMember_String", # required
    #         ip_address_type: "DUALSTACK", # accepts DUALSTACK, IPV4, IPV6
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.firewall_arn #=> String
    #   resp.firewall_name #=> String
    #   resp.subnet_mappings #=> Array
    #   resp.subnet_mappings[0].subnet_id #=> String
    #   resp.subnet_mappings[0].ip_address_type #=> String, one of "DUALSTACK", "IPV4", "IPV6"
    #   resp.update_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/AssociateSubnets AWS API Documentation
    #
    # @overload associate_subnets(params = {})
    # @param [Hash] params ({})
    def associate_subnets(params = {}, options = {})
      req = build_request(:associate_subnets, params)
      req.send_request(options)
    end

    # Creates an Network Firewall Firewall and accompanying FirewallStatus
    # for a VPC.
    #
    # The firewall defines the configuration settings for an Network
    # Firewall firewall. The settings that you can define at creation
    # include the firewall policy, the subnets in your VPC to use for the
    # firewall endpoints, and any tags that are attached to the firewall
    # Amazon Web Services resource.
    #
    # After you create a firewall, you can provide additional settings, like
    # the logging configuration.
    #
    # To update the settings for a firewall, you use the operations that
    # apply to the settings themselves, for example
    # UpdateLoggingConfiguration, AssociateSubnets, and
    # UpdateFirewallDeleteProtection.
    #
    # To manage a firewall's tags, use the standard Amazon Web Services
    # resource tagging operations, ListTagsForResource, TagResource, and
    # UntagResource.
    #
    # To retrieve information about firewalls, use ListFirewalls and
    # DescribeFirewall.
    #
    # @option params [required, String] :firewall_name
    #   The descriptive name of the firewall. You can't change the name of a
    #   firewall after you create it.
    #
    # @option params [required, String] :firewall_policy_arn
    #   The Amazon Resource Name (ARN) of the FirewallPolicy that you want to
    #   use for the firewall.
    #
    # @option params [required, String] :vpc_id
    #   The unique identifier of the VPC where Network Firewall should create
    #   the firewall.
    #
    #   You can't change this setting after you create the firewall.
    #
    # @option params [required, Array<Types::SubnetMapping>] :subnet_mappings
    #   The public subnets to use for your Network Firewall firewalls. Each
    #   subnet must belong to a different Availability Zone in the VPC.
    #   Network Firewall creates a firewall endpoint in each subnet.
    #
    # @option params [Boolean] :delete_protection
    #   A flag indicating whether it is possible to delete the firewall. A
    #   setting of `TRUE` indicates that the firewall is protected against
    #   deletion. Use this setting to protect against accidentally deleting a
    #   firewall that is in use. When you create a firewall, the operation
    #   initializes this flag to `TRUE`.
    #
    # @option params [Boolean] :subnet_change_protection
    #   A setting indicating whether the firewall is protected against changes
    #   to the subnet associations. Use this setting to protect against
    #   accidentally modifying the subnet associations for a firewall that is
    #   in use. When you create a firewall, the operation initializes this
    #   setting to `TRUE`.
    #
    # @option params [Boolean] :firewall_policy_change_protection
    #   A setting indicating whether the firewall is protected against a
    #   change to the firewall policy association. Use this setting to protect
    #   against accidentally modifying the firewall policy for a firewall that
    #   is in use. When you create a firewall, the operation initializes this
    #   setting to `TRUE`.
    #
    # @option params [String] :description
    #   A description of the firewall.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The key:value pairs to associate with the resource.
    #
    # @option params [Types::EncryptionConfiguration] :encryption_configuration
    #   A complex type that contains settings for encryption of your firewall
    #   resources.
    #
    # @return [Types::CreateFirewallResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateFirewallResponse#firewall #firewall} => Types::Firewall
    #   * {Types::CreateFirewallResponse#firewall_status #firewall_status} => Types::FirewallStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_firewall({
    #     firewall_name: "ResourceName", # required
    #     firewall_policy_arn: "ResourceArn", # required
    #     vpc_id: "VpcId", # required
    #     subnet_mappings: [ # required
    #       {
    #         subnet_id: "CollectionMember_String", # required
    #         ip_address_type: "DUALSTACK", # accepts DUALSTACK, IPV4, IPV6
    #       },
    #     ],
    #     delete_protection: false,
    #     subnet_change_protection: false,
    #     firewall_policy_change_protection: false,
    #     description: "Description",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     encryption_configuration: {
    #       key_id: "KeyId",
    #       type: "CUSTOMER_KMS", # required, accepts CUSTOMER_KMS, AWS_OWNED_KMS_KEY
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.firewall.firewall_name #=> String
    #   resp.firewall.firewall_arn #=> String
    #   resp.firewall.firewall_policy_arn #=> String
    #   resp.firewall.vpc_id #=> String
    #   resp.firewall.subnet_mappings #=> Array
    #   resp.firewall.subnet_mappings[0].subnet_id #=> String
    #   resp.firewall.subnet_mappings[0].ip_address_type #=> String, one of "DUALSTACK", "IPV4", "IPV6"
    #   resp.firewall.delete_protection #=> Boolean
    #   resp.firewall.subnet_change_protection #=> Boolean
    #   resp.firewall.firewall_policy_change_protection #=> Boolean
    #   resp.firewall.description #=> String
    #   resp.firewall.firewall_id #=> String
    #   resp.firewall.tags #=> Array
    #   resp.firewall.tags[0].key #=> String
    #   resp.firewall.tags[0].value #=> String
    #   resp.firewall.encryption_configuration.key_id #=> String
    #   resp.firewall.encryption_configuration.type #=> String, one of "CUSTOMER_KMS", "AWS_OWNED_KMS_KEY"
    #   resp.firewall_status.status #=> String, one of "PROVISIONING", "DELETING", "READY"
    #   resp.firewall_status.configuration_sync_state_summary #=> String, one of "PENDING", "IN_SYNC", "CAPACITY_CONSTRAINED"
    #   resp.firewall_status.sync_states #=> Hash
    #   resp.firewall_status.sync_states["AvailabilityZone"].attachment.subnet_id #=> String
    #   resp.firewall_status.sync_states["AvailabilityZone"].attachment.endpoint_id #=> String
    #   resp.firewall_status.sync_states["AvailabilityZone"].attachment.status #=> String, one of "CREATING", "DELETING", "FAILED", "ERROR", "SCALING", "READY"
    #   resp.firewall_status.sync_states["AvailabilityZone"].attachment.status_message #=> String
    #   resp.firewall_status.sync_states["AvailabilityZone"].config #=> Hash
    #   resp.firewall_status.sync_states["AvailabilityZone"].config["ResourceName"].sync_status #=> String, one of "PENDING", "IN_SYNC", "CAPACITY_CONSTRAINED"
    #   resp.firewall_status.sync_states["AvailabilityZone"].config["ResourceName"].update_token #=> String
    #   resp.firewall_status.capacity_usage_summary.cid_rs.available_cidr_count #=> Integer
    #   resp.firewall_status.capacity_usage_summary.cid_rs.utilized_cidr_count #=> Integer
    #   resp.firewall_status.capacity_usage_summary.cid_rs.ip_set_references #=> Hash
    #   resp.firewall_status.capacity_usage_summary.cid_rs.ip_set_references["IPSetArn"].resolved_cidr_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/CreateFirewall AWS API Documentation
    #
    # @overload create_firewall(params = {})
    # @param [Hash] params ({})
    def create_firewall(params = {}, options = {})
      req = build_request(:create_firewall, params)
      req.send_request(options)
    end

    # Creates the firewall policy for the firewall according to the
    # specifications.
    #
    # An Network Firewall firewall policy defines the behavior of a
    # firewall, in a collection of stateless and stateful rule groups and
    # other settings. You can use one firewall policy for multiple
    # firewalls.
    #
    # @option params [required, String] :firewall_policy_name
    #   The descriptive name of the firewall policy. You can't change the
    #   name of a firewall policy after you create it.
    #
    # @option params [required, Types::FirewallPolicy] :firewall_policy
    #   The rule groups and policy actions to use in the firewall policy.
    #
    # @option params [String] :description
    #   A description of the firewall policy.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The key:value pairs to associate with the resource.
    #
    # @option params [Boolean] :dry_run
    #   Indicates whether you want Network Firewall to just check the validity
    #   of the request, rather than run the request.
    #
    #   If set to `TRUE`, Network Firewall checks whether the request can run
    #   successfully, but doesn't actually make the requested changes. The
    #   call returns the value that the request would return if you ran it
    #   with dry run set to `FALSE`, but doesn't make additions or changes to
    #   your resources. This option allows you to make sure that you have the
    #   required permissions to run the request and that your request
    #   parameters are valid.
    #
    #   If set to `FALSE`, Network Firewall makes the requested changes to
    #   your resources.
    #
    # @option params [Types::EncryptionConfiguration] :encryption_configuration
    #   A complex type that contains settings for encryption of your firewall
    #   policy resources.
    #
    # @return [Types::CreateFirewallPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateFirewallPolicyResponse#update_token #update_token} => String
    #   * {Types::CreateFirewallPolicyResponse#firewall_policy_response #firewall_policy_response} => Types::FirewallPolicyResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_firewall_policy({
    #     firewall_policy_name: "ResourceName", # required
    #     firewall_policy: { # required
    #       stateless_rule_group_references: [
    #         {
    #           resource_arn: "ResourceArn", # required
    #           priority: 1, # required
    #         },
    #       ],
    #       stateless_default_actions: ["CollectionMember_String"], # required
    #       stateless_fragment_default_actions: ["CollectionMember_String"], # required
    #       stateless_custom_actions: [
    #         {
    #           action_name: "ActionName", # required
    #           action_definition: { # required
    #             publish_metric_action: {
    #               dimensions: [ # required
    #                 {
    #                   value: "DimensionValue", # required
    #                 },
    #               ],
    #             },
    #           },
    #         },
    #       ],
    #       stateful_rule_group_references: [
    #         {
    #           resource_arn: "ResourceArn", # required
    #           priority: 1,
    #           override: {
    #             action: "DROP_TO_ALERT", # accepts DROP_TO_ALERT
    #           },
    #         },
    #       ],
    #       stateful_default_actions: ["CollectionMember_String"],
    #       stateful_engine_options: {
    #         rule_order: "DEFAULT_ACTION_ORDER", # accepts DEFAULT_ACTION_ORDER, STRICT_ORDER
    #         stream_exception_policy: "DROP", # accepts DROP, CONTINUE, REJECT
    #       },
    #       tls_inspection_configuration_arn: "ResourceArn",
    #       policy_variables: {
    #         rule_variables: {
    #           "RuleVariableName" => {
    #             definition: ["VariableDefinition"], # required
    #           },
    #         },
    #       },
    #     },
    #     description: "Description",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     dry_run: false,
    #     encryption_configuration: {
    #       key_id: "KeyId",
    #       type: "CUSTOMER_KMS", # required, accepts CUSTOMER_KMS, AWS_OWNED_KMS_KEY
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.update_token #=> String
    #   resp.firewall_policy_response.firewall_policy_name #=> String
    #   resp.firewall_policy_response.firewall_policy_arn #=> String
    #   resp.firewall_policy_response.firewall_policy_id #=> String
    #   resp.firewall_policy_response.description #=> String
    #   resp.firewall_policy_response.firewall_policy_status #=> String, one of "ACTIVE", "DELETING"
    #   resp.firewall_policy_response.tags #=> Array
    #   resp.firewall_policy_response.tags[0].key #=> String
    #   resp.firewall_policy_response.tags[0].value #=> String
    #   resp.firewall_policy_response.consumed_stateless_rule_capacity #=> Integer
    #   resp.firewall_policy_response.consumed_stateful_rule_capacity #=> Integer
    #   resp.firewall_policy_response.number_of_associations #=> Integer
    #   resp.firewall_policy_response.encryption_configuration.key_id #=> String
    #   resp.firewall_policy_response.encryption_configuration.type #=> String, one of "CUSTOMER_KMS", "AWS_OWNED_KMS_KEY"
    #   resp.firewall_policy_response.last_modified_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/CreateFirewallPolicy AWS API Documentation
    #
    # @overload create_firewall_policy(params = {})
    # @param [Hash] params ({})
    def create_firewall_policy(params = {}, options = {})
      req = build_request(:create_firewall_policy, params)
      req.send_request(options)
    end

    # Creates the specified stateless or stateful rule group, which includes
    # the rules for network traffic inspection, a capacity setting, and
    # tags.
    #
    # You provide your rule group specification in your request using either
    # `RuleGroup` or `Rules`.
    #
    # @option params [required, String] :rule_group_name
    #   The descriptive name of the rule group. You can't change the name of
    #   a rule group after you create it.
    #
    # @option params [Types::RuleGroup] :rule_group
    #   An object that defines the rule group rules.
    #
    #   <note markdown="1"> You must provide either this rule group setting or a `Rules` setting,
    #   but not both.
    #
    #    </note>
    #
    # @option params [String] :rules
    #   A string containing stateful rule group rules specifications in
    #   Suricata flat format, with one rule per line. Use this to import your
    #   existing Suricata compatible rule groups.
    #
    #   <note markdown="1"> You must provide either this rules setting or a populated `RuleGroup`
    #   setting, but not both.
    #
    #    </note>
    #
    #   You can provide your rule group specification in Suricata flat format
    #   through this setting when you create or update your rule group. The
    #   call response returns a RuleGroup object that Network Firewall has
    #   populated from your string.
    #
    # @option params [required, String] :type
    #   Indicates whether the rule group is stateless or stateful. If the rule
    #   group is stateless, it contains stateless rules. If it is stateful, it
    #   contains stateful rules.
    #
    # @option params [String] :description
    #   A description of the rule group.
    #
    # @option params [required, Integer] :capacity
    #   The maximum operating resources that this rule group can use. Rule
    #   group capacity is fixed at creation. When you update a rule group, you
    #   are limited to this capacity. When you reference a rule group from a
    #   firewall policy, Network Firewall reserves this capacity for the rule
    #   group.
    #
    #   You can retrieve the capacity that would be required for a rule group
    #   before you create the rule group by calling CreateRuleGroup with
    #   `DryRun` set to `TRUE`.
    #
    #   <note markdown="1"> You can't change or exceed this capacity when you update the rule
    #   group, so leave room for your rule group to grow.
    #
    #    </note>
    #
    #   **Capacity for a stateless rule group**
    #
    #   For a stateless rule group, the capacity required is the sum of the
    #   capacity requirements of the individual rules that you expect to have
    #   in the rule group.
    #
    #   To calculate the capacity requirement of a single rule, multiply the
    #   capacity requirement values of each of the rule's match settings:
    #
    #   * A match setting with no criteria specified has a value of 1.
    #
    #   * A match setting with `Any` specified has a value of 1.
    #
    #   * All other match settings have a value equal to the number of
    #     elements provided in the setting. For example, a protocol setting
    #     \["UDP"\] and a source setting \["10.0.0.0/24"\] each have a
    #     value of 1. A protocol setting \["UDP","TCP"\] has a value of 2.
    #     A source setting \["10.0.0.0/24","10.0.0.1/24","10.0.0.2/24"\]
    #     has a value of 3.
    #
    #   A rule with no criteria specified in any of its match settings has a
    #   capacity requirement of 1. A rule with protocol setting
    #   \["UDP","TCP"\], source setting
    #   \["10.0.0.0/24","10.0.0.1/24","10.0.0.2/24"\], and a single
    #   specification or no specification for each of the other match settings
    #   has a capacity requirement of 6.
    #
    #   **Capacity for a stateful rule group**
    #
    #   For a stateful rule group, the minimum capacity required is the number
    #   of individual rules that you expect to have in the rule group.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The key:value pairs to associate with the resource.
    #
    # @option params [Boolean] :dry_run
    #   Indicates whether you want Network Firewall to just check the validity
    #   of the request, rather than run the request.
    #
    #   If set to `TRUE`, Network Firewall checks whether the request can run
    #   successfully, but doesn't actually make the requested changes. The
    #   call returns the value that the request would return if you ran it
    #   with dry run set to `FALSE`, but doesn't make additions or changes to
    #   your resources. This option allows you to make sure that you have the
    #   required permissions to run the request and that your request
    #   parameters are valid.
    #
    #   If set to `FALSE`, Network Firewall makes the requested changes to
    #   your resources.
    #
    # @option params [Types::EncryptionConfiguration] :encryption_configuration
    #   A complex type that contains settings for encryption of your rule
    #   group resources.
    #
    # @option params [Types::SourceMetadata] :source_metadata
    #   A complex type that contains metadata about the rule group that your
    #   own rule group is copied from. You can use the metadata to keep track
    #   of updates made to the originating rule group.
    #
    # @return [Types::CreateRuleGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateRuleGroupResponse#update_token #update_token} => String
    #   * {Types::CreateRuleGroupResponse#rule_group_response #rule_group_response} => Types::RuleGroupResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_rule_group({
    #     rule_group_name: "ResourceName", # required
    #     rule_group: {
    #       rule_variables: {
    #         ip_sets: {
    #           "RuleVariableName" => {
    #             definition: ["VariableDefinition"], # required
    #           },
    #         },
    #         port_sets: {
    #           "RuleVariableName" => {
    #             definition: ["VariableDefinition"],
    #           },
    #         },
    #       },
    #       reference_sets: {
    #         ip_set_references: {
    #           "IPSetReferenceName" => {
    #             reference_arn: "ResourceArn",
    #           },
    #         },
    #       },
    #       rules_source: { # required
    #         rules_string: "RulesString",
    #         rules_source_list: {
    #           targets: ["CollectionMember_String"], # required
    #           target_types: ["TLS_SNI"], # required, accepts TLS_SNI, HTTP_HOST
    #           generated_rules_type: "ALLOWLIST", # required, accepts ALLOWLIST, DENYLIST
    #         },
    #         stateful_rules: [
    #           {
    #             action: "PASS", # required, accepts PASS, DROP, ALERT, REJECT
    #             header: { # required
    #               protocol: "IP", # required, accepts IP, TCP, UDP, ICMP, HTTP, FTP, TLS, SMB, DNS, DCERPC, SSH, SMTP, IMAP, MSN, KRB5, IKEV2, TFTP, NTP, DHCP
    #               source: "Source", # required
    #               source_port: "Port", # required
    #               direction: "FORWARD", # required, accepts FORWARD, ANY
    #               destination: "Destination", # required
    #               destination_port: "Port", # required
    #             },
    #             rule_options: [ # required
    #               {
    #                 keyword: "Keyword", # required
    #                 settings: ["Setting"],
    #               },
    #             ],
    #           },
    #         ],
    #         stateless_rules_and_custom_actions: {
    #           stateless_rules: [ # required
    #             {
    #               rule_definition: { # required
    #                 match_attributes: { # required
    #                   sources: [
    #                     {
    #                       address_definition: "AddressDefinition", # required
    #                     },
    #                   ],
    #                   destinations: [
    #                     {
    #                       address_definition: "AddressDefinition", # required
    #                     },
    #                   ],
    #                   source_ports: [
    #                     {
    #                       from_port: 1, # required
    #                       to_port: 1, # required
    #                     },
    #                   ],
    #                   destination_ports: [
    #                     {
    #                       from_port: 1, # required
    #                       to_port: 1, # required
    #                     },
    #                   ],
    #                   protocols: [1],
    #                   tcp_flags: [
    #                     {
    #                       flags: ["FIN"], # required, accepts FIN, SYN, RST, PSH, ACK, URG, ECE, CWR
    #                       masks: ["FIN"], # accepts FIN, SYN, RST, PSH, ACK, URG, ECE, CWR
    #                     },
    #                   ],
    #                 },
    #                 actions: ["CollectionMember_String"], # required
    #               },
    #               priority: 1, # required
    #             },
    #           ],
    #           custom_actions: [
    #             {
    #               action_name: "ActionName", # required
    #               action_definition: { # required
    #                 publish_metric_action: {
    #                   dimensions: [ # required
    #                     {
    #                       value: "DimensionValue", # required
    #                     },
    #                   ],
    #                 },
    #               },
    #             },
    #           ],
    #         },
    #       },
    #       stateful_rule_options: {
    #         rule_order: "DEFAULT_ACTION_ORDER", # accepts DEFAULT_ACTION_ORDER, STRICT_ORDER
    #       },
    #     },
    #     rules: "RulesString",
    #     type: "STATELESS", # required, accepts STATELESS, STATEFUL
    #     description: "Description",
    #     capacity: 1, # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     dry_run: false,
    #     encryption_configuration: {
    #       key_id: "KeyId",
    #       type: "CUSTOMER_KMS", # required, accepts CUSTOMER_KMS, AWS_OWNED_KMS_KEY
    #     },
    #     source_metadata: {
    #       source_arn: "ResourceArn",
    #       source_update_token: "UpdateToken",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.update_token #=> String
    #   resp.rule_group_response.rule_group_arn #=> String
    #   resp.rule_group_response.rule_group_name #=> String
    #   resp.rule_group_response.rule_group_id #=> String
    #   resp.rule_group_response.description #=> String
    #   resp.rule_group_response.type #=> String, one of "STATELESS", "STATEFUL"
    #   resp.rule_group_response.capacity #=> Integer
    #   resp.rule_group_response.rule_group_status #=> String, one of "ACTIVE", "DELETING"
    #   resp.rule_group_response.tags #=> Array
    #   resp.rule_group_response.tags[0].key #=> String
    #   resp.rule_group_response.tags[0].value #=> String
    #   resp.rule_group_response.consumed_capacity #=> Integer
    #   resp.rule_group_response.number_of_associations #=> Integer
    #   resp.rule_group_response.encryption_configuration.key_id #=> String
    #   resp.rule_group_response.encryption_configuration.type #=> String, one of "CUSTOMER_KMS", "AWS_OWNED_KMS_KEY"
    #   resp.rule_group_response.source_metadata.source_arn #=> String
    #   resp.rule_group_response.source_metadata.source_update_token #=> String
    #   resp.rule_group_response.sns_topic #=> String
    #   resp.rule_group_response.last_modified_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/CreateRuleGroup AWS API Documentation
    #
    # @overload create_rule_group(params = {})
    # @param [Hash] params ({})
    def create_rule_group(params = {}, options = {})
      req = build_request(:create_rule_group, params)
      req.send_request(options)
    end

    # Creates an Network Firewall TLS inspection configuration. A TLS
    # inspection configuration contains the Certificate Manager certificate
    # references that Network Firewall uses to decrypt and re-encrypt
    # inbound traffic.
    #
    # After you create a TLS inspection configuration, you associate it with
    # a firewall policy.
    #
    # To update the settings for a TLS inspection configuration, use
    # UpdateTLSInspectionConfiguration.
    #
    # To manage a TLS inspection configuration's tags, use the standard
    # Amazon Web Services resource tagging operations, ListTagsForResource,
    # TagResource, and UntagResource.
    #
    # To retrieve information about TLS inspection configurations, use
    # ListTLSInspectionConfigurations and
    # DescribeTLSInspectionConfiguration.
    #
    # For more information about TLS inspection configurations, see
    # [Decrypting SSL/TLS traffic with TLS inspection configurations][1] in
    # the *Network Firewall Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/network-firewall/latest/developerguide/tls-inspection.html
    #
    # @option params [required, String] :tls_inspection_configuration_name
    #   The descriptive name of the TLS inspection configuration. You can't
    #   change the name of a TLS inspection configuration after you create it.
    #
    # @option params [required, Types::TLSInspectionConfiguration] :tls_inspection_configuration
    #   The object that defines a TLS inspection configuration. This, along
    #   with TLSInspectionConfigurationResponse, define the TLS inspection
    #   configuration. You can retrieve all objects for a TLS inspection
    #   configuration by calling DescribeTLSInspectionConfiguration.
    #
    #   Network Firewall uses a TLS inspection configuration to decrypt
    #   traffic. Network Firewall re-encrypts the traffic before sending it to
    #   its destination.
    #
    #   To use a TLS inspection configuration, you add it to a Network
    #   Firewall firewall policy, then you apply the firewall policy to a
    #   firewall. Network Firewall acts as a proxy service to decrypt and
    #   inspect inbound traffic. You can reference a TLS inspection
    #   configuration from more than one firewall policy, and you can use a
    #   firewall policy in more than one firewall. For more information about
    #   using TLS inspection configurations, see [Decrypting SSL/TLS traffic
    #   with TLS inspection configurations][1] in the *Network Firewall
    #   Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/network-firewall/latest/developerguide/tls-inspection.html
    #
    # @option params [String] :description
    #   A description of the TLS inspection configuration.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The key:value pairs to associate with the resource.
    #
    # @option params [Types::EncryptionConfiguration] :encryption_configuration
    #   A complex type that contains optional Amazon Web Services Key
    #   Management Service (KMS) encryption settings for your Network Firewall
    #   resources. Your data is encrypted by default with an Amazon Web
    #   Services owned key that Amazon Web Services owns and manages for you.
    #   You can use either the Amazon Web Services owned key, or provide your
    #   own customer managed key. To learn more about KMS encryption of your
    #   Network Firewall resources, see [Encryption at rest with Amazon Web
    #   Services Key Managment Service][1] in the *Network Firewall Developer
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/kms-encryption-at-rest.html
    #
    # @return [Types::CreateTLSInspectionConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateTLSInspectionConfigurationResponse#update_token #update_token} => String
    #   * {Types::CreateTLSInspectionConfigurationResponse#tls_inspection_configuration_response #tls_inspection_configuration_response} => Types::TLSInspectionConfigurationResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_tls_inspection_configuration({
    #     tls_inspection_configuration_name: "ResourceName", # required
    #     tls_inspection_configuration: { # required
    #       server_certificate_configurations: [
    #         {
    #           server_certificates: [
    #             {
    #               resource_arn: "ResourceArn",
    #             },
    #           ],
    #           scopes: [
    #             {
    #               sources: [
    #                 {
    #                   address_definition: "AddressDefinition", # required
    #                 },
    #               ],
    #               destinations: [
    #                 {
    #                   address_definition: "AddressDefinition", # required
    #                 },
    #               ],
    #               source_ports: [
    #                 {
    #                   from_port: 1, # required
    #                   to_port: 1, # required
    #                 },
    #               ],
    #               destination_ports: [
    #                 {
    #                   from_port: 1, # required
    #                   to_port: 1, # required
    #                 },
    #               ],
    #               protocols: [1],
    #             },
    #           ],
    #         },
    #       ],
    #     },
    #     description: "Description",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     encryption_configuration: {
    #       key_id: "KeyId",
    #       type: "CUSTOMER_KMS", # required, accepts CUSTOMER_KMS, AWS_OWNED_KMS_KEY
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.update_token #=> String
    #   resp.tls_inspection_configuration_response.tls_inspection_configuration_arn #=> String
    #   resp.tls_inspection_configuration_response.tls_inspection_configuration_name #=> String
    #   resp.tls_inspection_configuration_response.tls_inspection_configuration_id #=> String
    #   resp.tls_inspection_configuration_response.tls_inspection_configuration_status #=> String, one of "ACTIVE", "DELETING"
    #   resp.tls_inspection_configuration_response.description #=> String
    #   resp.tls_inspection_configuration_response.tags #=> Array
    #   resp.tls_inspection_configuration_response.tags[0].key #=> String
    #   resp.tls_inspection_configuration_response.tags[0].value #=> String
    #   resp.tls_inspection_configuration_response.last_modified_time #=> Time
    #   resp.tls_inspection_configuration_response.number_of_associations #=> Integer
    #   resp.tls_inspection_configuration_response.encryption_configuration.key_id #=> String
    #   resp.tls_inspection_configuration_response.encryption_configuration.type #=> String, one of "CUSTOMER_KMS", "AWS_OWNED_KMS_KEY"
    #   resp.tls_inspection_configuration_response.certificates #=> Array
    #   resp.tls_inspection_configuration_response.certificates[0].certificate_arn #=> String
    #   resp.tls_inspection_configuration_response.certificates[0].certificate_serial #=> String
    #   resp.tls_inspection_configuration_response.certificates[0].status #=> String
    #   resp.tls_inspection_configuration_response.certificates[0].status_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/CreateTLSInspectionConfiguration AWS API Documentation
    #
    # @overload create_tls_inspection_configuration(params = {})
    # @param [Hash] params ({})
    def create_tls_inspection_configuration(params = {}, options = {})
      req = build_request(:create_tls_inspection_configuration, params)
      req.send_request(options)
    end

    # Deletes the specified Firewall and its FirewallStatus. This operation
    # requires the firewall's `DeleteProtection` flag to be `FALSE`. You
    # can't revert this operation.
    #
    # You can check whether a firewall is in use by reviewing the route
    # tables for the Availability Zones where you have firewall subnet
    # mappings. Retrieve the subnet mappings by calling DescribeFirewall.
    # You define and update the route tables through Amazon VPC. As needed,
    # update the route tables for the zones to remove the firewall
    # endpoints. When the route tables no longer use the firewall endpoints,
    # you can remove the firewall safely.
    #
    # To delete a firewall, remove the delete protection if you need to
    # using UpdateFirewallDeleteProtection, then delete the firewall by
    # calling DeleteFirewall.
    #
    # @option params [String] :firewall_name
    #   The descriptive name of the firewall. You can't change the name of a
    #   firewall after you create it.
    #
    #   You must specify the ARN or the name, and you can specify both.
    #
    # @option params [String] :firewall_arn
    #   The Amazon Resource Name (ARN) of the firewall.
    #
    #   You must specify the ARN or the name, and you can specify both.
    #
    # @return [Types::DeleteFirewallResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteFirewallResponse#firewall #firewall} => Types::Firewall
    #   * {Types::DeleteFirewallResponse#firewall_status #firewall_status} => Types::FirewallStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_firewall({
    #     firewall_name: "ResourceName",
    #     firewall_arn: "ResourceArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.firewall.firewall_name #=> String
    #   resp.firewall.firewall_arn #=> String
    #   resp.firewall.firewall_policy_arn #=> String
    #   resp.firewall.vpc_id #=> String
    #   resp.firewall.subnet_mappings #=> Array
    #   resp.firewall.subnet_mappings[0].subnet_id #=> String
    #   resp.firewall.subnet_mappings[0].ip_address_type #=> String, one of "DUALSTACK", "IPV4", "IPV6"
    #   resp.firewall.delete_protection #=> Boolean
    #   resp.firewall.subnet_change_protection #=> Boolean
    #   resp.firewall.firewall_policy_change_protection #=> Boolean
    #   resp.firewall.description #=> String
    #   resp.firewall.firewall_id #=> String
    #   resp.firewall.tags #=> Array
    #   resp.firewall.tags[0].key #=> String
    #   resp.firewall.tags[0].value #=> String
    #   resp.firewall.encryption_configuration.key_id #=> String
    #   resp.firewall.encryption_configuration.type #=> String, one of "CUSTOMER_KMS", "AWS_OWNED_KMS_KEY"
    #   resp.firewall_status.status #=> String, one of "PROVISIONING", "DELETING", "READY"
    #   resp.firewall_status.configuration_sync_state_summary #=> String, one of "PENDING", "IN_SYNC", "CAPACITY_CONSTRAINED"
    #   resp.firewall_status.sync_states #=> Hash
    #   resp.firewall_status.sync_states["AvailabilityZone"].attachment.subnet_id #=> String
    #   resp.firewall_status.sync_states["AvailabilityZone"].attachment.endpoint_id #=> String
    #   resp.firewall_status.sync_states["AvailabilityZone"].attachment.status #=> String, one of "CREATING", "DELETING", "FAILED", "ERROR", "SCALING", "READY"
    #   resp.firewall_status.sync_states["AvailabilityZone"].attachment.status_message #=> String
    #   resp.firewall_status.sync_states["AvailabilityZone"].config #=> Hash
    #   resp.firewall_status.sync_states["AvailabilityZone"].config["ResourceName"].sync_status #=> String, one of "PENDING", "IN_SYNC", "CAPACITY_CONSTRAINED"
    #   resp.firewall_status.sync_states["AvailabilityZone"].config["ResourceName"].update_token #=> String
    #   resp.firewall_status.capacity_usage_summary.cid_rs.available_cidr_count #=> Integer
    #   resp.firewall_status.capacity_usage_summary.cid_rs.utilized_cidr_count #=> Integer
    #   resp.firewall_status.capacity_usage_summary.cid_rs.ip_set_references #=> Hash
    #   resp.firewall_status.capacity_usage_summary.cid_rs.ip_set_references["IPSetArn"].resolved_cidr_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/DeleteFirewall AWS API Documentation
    #
    # @overload delete_firewall(params = {})
    # @param [Hash] params ({})
    def delete_firewall(params = {}, options = {})
      req = build_request(:delete_firewall, params)
      req.send_request(options)
    end

    # Deletes the specified FirewallPolicy.
    #
    # @option params [String] :firewall_policy_name
    #   The descriptive name of the firewall policy. You can't change the
    #   name of a firewall policy after you create it.
    #
    #   You must specify the ARN or the name, and you can specify both.
    #
    # @option params [String] :firewall_policy_arn
    #   The Amazon Resource Name (ARN) of the firewall policy.
    #
    #   You must specify the ARN or the name, and you can specify both.
    #
    # @return [Types::DeleteFirewallPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteFirewallPolicyResponse#firewall_policy_response #firewall_policy_response} => Types::FirewallPolicyResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_firewall_policy({
    #     firewall_policy_name: "ResourceName",
    #     firewall_policy_arn: "ResourceArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.firewall_policy_response.firewall_policy_name #=> String
    #   resp.firewall_policy_response.firewall_policy_arn #=> String
    #   resp.firewall_policy_response.firewall_policy_id #=> String
    #   resp.firewall_policy_response.description #=> String
    #   resp.firewall_policy_response.firewall_policy_status #=> String, one of "ACTIVE", "DELETING"
    #   resp.firewall_policy_response.tags #=> Array
    #   resp.firewall_policy_response.tags[0].key #=> String
    #   resp.firewall_policy_response.tags[0].value #=> String
    #   resp.firewall_policy_response.consumed_stateless_rule_capacity #=> Integer
    #   resp.firewall_policy_response.consumed_stateful_rule_capacity #=> Integer
    #   resp.firewall_policy_response.number_of_associations #=> Integer
    #   resp.firewall_policy_response.encryption_configuration.key_id #=> String
    #   resp.firewall_policy_response.encryption_configuration.type #=> String, one of "CUSTOMER_KMS", "AWS_OWNED_KMS_KEY"
    #   resp.firewall_policy_response.last_modified_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/DeleteFirewallPolicy AWS API Documentation
    #
    # @overload delete_firewall_policy(params = {})
    # @param [Hash] params ({})
    def delete_firewall_policy(params = {}, options = {})
      req = build_request(:delete_firewall_policy, params)
      req.send_request(options)
    end

    # Deletes a resource policy that you created in a PutResourcePolicy
    # request.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the rule group or firewall policy
    #   whose resource policy you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_resource_policy({
    #     resource_arn: "ResourceArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/DeleteResourcePolicy AWS API Documentation
    #
    # @overload delete_resource_policy(params = {})
    # @param [Hash] params ({})
    def delete_resource_policy(params = {}, options = {})
      req = build_request(:delete_resource_policy, params)
      req.send_request(options)
    end

    # Deletes the specified RuleGroup.
    #
    # @option params [String] :rule_group_name
    #   The descriptive name of the rule group. You can't change the name of
    #   a rule group after you create it.
    #
    #   You must specify the ARN or the name, and you can specify both.
    #
    # @option params [String] :rule_group_arn
    #   The Amazon Resource Name (ARN) of the rule group.
    #
    #   You must specify the ARN or the name, and you can specify both.
    #
    # @option params [String] :type
    #   Indicates whether the rule group is stateless or stateful. If the rule
    #   group is stateless, it contains stateless rules. If it is stateful, it
    #   contains stateful rules.
    #
    #   <note markdown="1"> This setting is required for requests that do not include the
    #   `RuleGroupARN`.
    #
    #    </note>
    #
    # @return [Types::DeleteRuleGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteRuleGroupResponse#rule_group_response #rule_group_response} => Types::RuleGroupResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_rule_group({
    #     rule_group_name: "ResourceName",
    #     rule_group_arn: "ResourceArn",
    #     type: "STATELESS", # accepts STATELESS, STATEFUL
    #   })
    #
    # @example Response structure
    #
    #   resp.rule_group_response.rule_group_arn #=> String
    #   resp.rule_group_response.rule_group_name #=> String
    #   resp.rule_group_response.rule_group_id #=> String
    #   resp.rule_group_response.description #=> String
    #   resp.rule_group_response.type #=> String, one of "STATELESS", "STATEFUL"
    #   resp.rule_group_response.capacity #=> Integer
    #   resp.rule_group_response.rule_group_status #=> String, one of "ACTIVE", "DELETING"
    #   resp.rule_group_response.tags #=> Array
    #   resp.rule_group_response.tags[0].key #=> String
    #   resp.rule_group_response.tags[0].value #=> String
    #   resp.rule_group_response.consumed_capacity #=> Integer
    #   resp.rule_group_response.number_of_associations #=> Integer
    #   resp.rule_group_response.encryption_configuration.key_id #=> String
    #   resp.rule_group_response.encryption_configuration.type #=> String, one of "CUSTOMER_KMS", "AWS_OWNED_KMS_KEY"
    #   resp.rule_group_response.source_metadata.source_arn #=> String
    #   resp.rule_group_response.source_metadata.source_update_token #=> String
    #   resp.rule_group_response.sns_topic #=> String
    #   resp.rule_group_response.last_modified_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/DeleteRuleGroup AWS API Documentation
    #
    # @overload delete_rule_group(params = {})
    # @param [Hash] params ({})
    def delete_rule_group(params = {}, options = {})
      req = build_request(:delete_rule_group, params)
      req.send_request(options)
    end

    # Deletes the specified TLSInspectionConfiguration.
    #
    # @option params [String] :tls_inspection_configuration_arn
    #   The Amazon Resource Name (ARN) of the TLS inspection configuration.
    #
    #   You must specify the ARN or the name, and you can specify both.
    #
    # @option params [String] :tls_inspection_configuration_name
    #   The descriptive name of the TLS inspection configuration. You can't
    #   change the name of a TLS inspection configuration after you create it.
    #
    #   You must specify the ARN or the name, and you can specify both.
    #
    # @return [Types::DeleteTLSInspectionConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteTLSInspectionConfigurationResponse#tls_inspection_configuration_response #tls_inspection_configuration_response} => Types::TLSInspectionConfigurationResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_tls_inspection_configuration({
    #     tls_inspection_configuration_arn: "ResourceArn",
    #     tls_inspection_configuration_name: "ResourceName",
    #   })
    #
    # @example Response structure
    #
    #   resp.tls_inspection_configuration_response.tls_inspection_configuration_arn #=> String
    #   resp.tls_inspection_configuration_response.tls_inspection_configuration_name #=> String
    #   resp.tls_inspection_configuration_response.tls_inspection_configuration_id #=> String
    #   resp.tls_inspection_configuration_response.tls_inspection_configuration_status #=> String, one of "ACTIVE", "DELETING"
    #   resp.tls_inspection_configuration_response.description #=> String
    #   resp.tls_inspection_configuration_response.tags #=> Array
    #   resp.tls_inspection_configuration_response.tags[0].key #=> String
    #   resp.tls_inspection_configuration_response.tags[0].value #=> String
    #   resp.tls_inspection_configuration_response.last_modified_time #=> Time
    #   resp.tls_inspection_configuration_response.number_of_associations #=> Integer
    #   resp.tls_inspection_configuration_response.encryption_configuration.key_id #=> String
    #   resp.tls_inspection_configuration_response.encryption_configuration.type #=> String, one of "CUSTOMER_KMS", "AWS_OWNED_KMS_KEY"
    #   resp.tls_inspection_configuration_response.certificates #=> Array
    #   resp.tls_inspection_configuration_response.certificates[0].certificate_arn #=> String
    #   resp.tls_inspection_configuration_response.certificates[0].certificate_serial #=> String
    #   resp.tls_inspection_configuration_response.certificates[0].status #=> String
    #   resp.tls_inspection_configuration_response.certificates[0].status_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/DeleteTLSInspectionConfiguration AWS API Documentation
    #
    # @overload delete_tls_inspection_configuration(params = {})
    # @param [Hash] params ({})
    def delete_tls_inspection_configuration(params = {}, options = {})
      req = build_request(:delete_tls_inspection_configuration, params)
      req.send_request(options)
    end

    # Returns the data objects for the specified firewall.
    #
    # @option params [String] :firewall_name
    #   The descriptive name of the firewall. You can't change the name of a
    #   firewall after you create it.
    #
    #   You must specify the ARN or the name, and you can specify both.
    #
    # @option params [String] :firewall_arn
    #   The Amazon Resource Name (ARN) of the firewall.
    #
    #   You must specify the ARN or the name, and you can specify both.
    #
    # @return [Types::DescribeFirewallResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeFirewallResponse#update_token #update_token} => String
    #   * {Types::DescribeFirewallResponse#firewall #firewall} => Types::Firewall
    #   * {Types::DescribeFirewallResponse#firewall_status #firewall_status} => Types::FirewallStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_firewall({
    #     firewall_name: "ResourceName",
    #     firewall_arn: "ResourceArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.update_token #=> String
    #   resp.firewall.firewall_name #=> String
    #   resp.firewall.firewall_arn #=> String
    #   resp.firewall.firewall_policy_arn #=> String
    #   resp.firewall.vpc_id #=> String
    #   resp.firewall.subnet_mappings #=> Array
    #   resp.firewall.subnet_mappings[0].subnet_id #=> String
    #   resp.firewall.subnet_mappings[0].ip_address_type #=> String, one of "DUALSTACK", "IPV4", "IPV6"
    #   resp.firewall.delete_protection #=> Boolean
    #   resp.firewall.subnet_change_protection #=> Boolean
    #   resp.firewall.firewall_policy_change_protection #=> Boolean
    #   resp.firewall.description #=> String
    #   resp.firewall.firewall_id #=> String
    #   resp.firewall.tags #=> Array
    #   resp.firewall.tags[0].key #=> String
    #   resp.firewall.tags[0].value #=> String
    #   resp.firewall.encryption_configuration.key_id #=> String
    #   resp.firewall.encryption_configuration.type #=> String, one of "CUSTOMER_KMS", "AWS_OWNED_KMS_KEY"
    #   resp.firewall_status.status #=> String, one of "PROVISIONING", "DELETING", "READY"
    #   resp.firewall_status.configuration_sync_state_summary #=> String, one of "PENDING", "IN_SYNC", "CAPACITY_CONSTRAINED"
    #   resp.firewall_status.sync_states #=> Hash
    #   resp.firewall_status.sync_states["AvailabilityZone"].attachment.subnet_id #=> String
    #   resp.firewall_status.sync_states["AvailabilityZone"].attachment.endpoint_id #=> String
    #   resp.firewall_status.sync_states["AvailabilityZone"].attachment.status #=> String, one of "CREATING", "DELETING", "FAILED", "ERROR", "SCALING", "READY"
    #   resp.firewall_status.sync_states["AvailabilityZone"].attachment.status_message #=> String
    #   resp.firewall_status.sync_states["AvailabilityZone"].config #=> Hash
    #   resp.firewall_status.sync_states["AvailabilityZone"].config["ResourceName"].sync_status #=> String, one of "PENDING", "IN_SYNC", "CAPACITY_CONSTRAINED"
    #   resp.firewall_status.sync_states["AvailabilityZone"].config["ResourceName"].update_token #=> String
    #   resp.firewall_status.capacity_usage_summary.cid_rs.available_cidr_count #=> Integer
    #   resp.firewall_status.capacity_usage_summary.cid_rs.utilized_cidr_count #=> Integer
    #   resp.firewall_status.capacity_usage_summary.cid_rs.ip_set_references #=> Hash
    #   resp.firewall_status.capacity_usage_summary.cid_rs.ip_set_references["IPSetArn"].resolved_cidr_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/DescribeFirewall AWS API Documentation
    #
    # @overload describe_firewall(params = {})
    # @param [Hash] params ({})
    def describe_firewall(params = {}, options = {})
      req = build_request(:describe_firewall, params)
      req.send_request(options)
    end

    # Returns the data objects for the specified firewall policy.
    #
    # @option params [String] :firewall_policy_name
    #   The descriptive name of the firewall policy. You can't change the
    #   name of a firewall policy after you create it.
    #
    #   You must specify the ARN or the name, and you can specify both.
    #
    # @option params [String] :firewall_policy_arn
    #   The Amazon Resource Name (ARN) of the firewall policy.
    #
    #   You must specify the ARN or the name, and you can specify both.
    #
    # @return [Types::DescribeFirewallPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeFirewallPolicyResponse#update_token #update_token} => String
    #   * {Types::DescribeFirewallPolicyResponse#firewall_policy_response #firewall_policy_response} => Types::FirewallPolicyResponse
    #   * {Types::DescribeFirewallPolicyResponse#firewall_policy #firewall_policy} => Types::FirewallPolicy
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_firewall_policy({
    #     firewall_policy_name: "ResourceName",
    #     firewall_policy_arn: "ResourceArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.update_token #=> String
    #   resp.firewall_policy_response.firewall_policy_name #=> String
    #   resp.firewall_policy_response.firewall_policy_arn #=> String
    #   resp.firewall_policy_response.firewall_policy_id #=> String
    #   resp.firewall_policy_response.description #=> String
    #   resp.firewall_policy_response.firewall_policy_status #=> String, one of "ACTIVE", "DELETING"
    #   resp.firewall_policy_response.tags #=> Array
    #   resp.firewall_policy_response.tags[0].key #=> String
    #   resp.firewall_policy_response.tags[0].value #=> String
    #   resp.firewall_policy_response.consumed_stateless_rule_capacity #=> Integer
    #   resp.firewall_policy_response.consumed_stateful_rule_capacity #=> Integer
    #   resp.firewall_policy_response.number_of_associations #=> Integer
    #   resp.firewall_policy_response.encryption_configuration.key_id #=> String
    #   resp.firewall_policy_response.encryption_configuration.type #=> String, one of "CUSTOMER_KMS", "AWS_OWNED_KMS_KEY"
    #   resp.firewall_policy_response.last_modified_time #=> Time
    #   resp.firewall_policy.stateless_rule_group_references #=> Array
    #   resp.firewall_policy.stateless_rule_group_references[0].resource_arn #=> String
    #   resp.firewall_policy.stateless_rule_group_references[0].priority #=> Integer
    #   resp.firewall_policy.stateless_default_actions #=> Array
    #   resp.firewall_policy.stateless_default_actions[0] #=> String
    #   resp.firewall_policy.stateless_fragment_default_actions #=> Array
    #   resp.firewall_policy.stateless_fragment_default_actions[0] #=> String
    #   resp.firewall_policy.stateless_custom_actions #=> Array
    #   resp.firewall_policy.stateless_custom_actions[0].action_name #=> String
    #   resp.firewall_policy.stateless_custom_actions[0].action_definition.publish_metric_action.dimensions #=> Array
    #   resp.firewall_policy.stateless_custom_actions[0].action_definition.publish_metric_action.dimensions[0].value #=> String
    #   resp.firewall_policy.stateful_rule_group_references #=> Array
    #   resp.firewall_policy.stateful_rule_group_references[0].resource_arn #=> String
    #   resp.firewall_policy.stateful_rule_group_references[0].priority #=> Integer
    #   resp.firewall_policy.stateful_rule_group_references[0].override.action #=> String, one of "DROP_TO_ALERT"
    #   resp.firewall_policy.stateful_default_actions #=> Array
    #   resp.firewall_policy.stateful_default_actions[0] #=> String
    #   resp.firewall_policy.stateful_engine_options.rule_order #=> String, one of "DEFAULT_ACTION_ORDER", "STRICT_ORDER"
    #   resp.firewall_policy.stateful_engine_options.stream_exception_policy #=> String, one of "DROP", "CONTINUE", "REJECT"
    #   resp.firewall_policy.tls_inspection_configuration_arn #=> String
    #   resp.firewall_policy.policy_variables.rule_variables #=> Hash
    #   resp.firewall_policy.policy_variables.rule_variables["RuleVariableName"].definition #=> Array
    #   resp.firewall_policy.policy_variables.rule_variables["RuleVariableName"].definition[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/DescribeFirewallPolicy AWS API Documentation
    #
    # @overload describe_firewall_policy(params = {})
    # @param [Hash] params ({})
    def describe_firewall_policy(params = {}, options = {})
      req = build_request(:describe_firewall_policy, params)
      req.send_request(options)
    end

    # Returns the logging configuration for the specified firewall.
    #
    # @option params [String] :firewall_arn
    #   The Amazon Resource Name (ARN) of the firewall.
    #
    #   You must specify the ARN or the name, and you can specify both.
    #
    # @option params [String] :firewall_name
    #   The descriptive name of the firewall. You can't change the name of a
    #   firewall after you create it.
    #
    #   You must specify the ARN or the name, and you can specify both.
    #
    # @return [Types::DescribeLoggingConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeLoggingConfigurationResponse#firewall_arn #firewall_arn} => String
    #   * {Types::DescribeLoggingConfigurationResponse#logging_configuration #logging_configuration} => Types::LoggingConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_logging_configuration({
    #     firewall_arn: "ResourceArn",
    #     firewall_name: "ResourceName",
    #   })
    #
    # @example Response structure
    #
    #   resp.firewall_arn #=> String
    #   resp.logging_configuration.log_destination_configs #=> Array
    #   resp.logging_configuration.log_destination_configs[0].log_type #=> String, one of "ALERT", "FLOW"
    #   resp.logging_configuration.log_destination_configs[0].log_destination_type #=> String, one of "S3", "CloudWatchLogs", "KinesisDataFirehose"
    #   resp.logging_configuration.log_destination_configs[0].log_destination #=> Hash
    #   resp.logging_configuration.log_destination_configs[0].log_destination["HashMapKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/DescribeLoggingConfiguration AWS API Documentation
    #
    # @overload describe_logging_configuration(params = {})
    # @param [Hash] params ({})
    def describe_logging_configuration(params = {}, options = {})
      req = build_request(:describe_logging_configuration, params)
      req.send_request(options)
    end

    # Retrieves a resource policy that you created in a PutResourcePolicy
    # request.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the rule group or firewall policy
    #   whose resource policy you want to retrieve.
    #
    # @return [Types::DescribeResourcePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeResourcePolicyResponse#policy #policy} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_resource_policy({
    #     resource_arn: "ResourceArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.policy #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/DescribeResourcePolicy AWS API Documentation
    #
    # @overload describe_resource_policy(params = {})
    # @param [Hash] params ({})
    def describe_resource_policy(params = {}, options = {})
      req = build_request(:describe_resource_policy, params)
      req.send_request(options)
    end

    # Returns the data objects for the specified rule group.
    #
    # @option params [String] :rule_group_name
    #   The descriptive name of the rule group. You can't change the name of
    #   a rule group after you create it.
    #
    #   You must specify the ARN or the name, and you can specify both.
    #
    # @option params [String] :rule_group_arn
    #   The Amazon Resource Name (ARN) of the rule group.
    #
    #   You must specify the ARN or the name, and you can specify both.
    #
    # @option params [String] :type
    #   Indicates whether the rule group is stateless or stateful. If the rule
    #   group is stateless, it contains stateless rules. If it is stateful, it
    #   contains stateful rules.
    #
    #   <note markdown="1"> This setting is required for requests that do not include the
    #   `RuleGroupARN`.
    #
    #    </note>
    #
    # @return [Types::DescribeRuleGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeRuleGroupResponse#update_token #update_token} => String
    #   * {Types::DescribeRuleGroupResponse#rule_group #rule_group} => Types::RuleGroup
    #   * {Types::DescribeRuleGroupResponse#rule_group_response #rule_group_response} => Types::RuleGroupResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_rule_group({
    #     rule_group_name: "ResourceName",
    #     rule_group_arn: "ResourceArn",
    #     type: "STATELESS", # accepts STATELESS, STATEFUL
    #   })
    #
    # @example Response structure
    #
    #   resp.update_token #=> String
    #   resp.rule_group.rule_variables.ip_sets #=> Hash
    #   resp.rule_group.rule_variables.ip_sets["RuleVariableName"].definition #=> Array
    #   resp.rule_group.rule_variables.ip_sets["RuleVariableName"].definition[0] #=> String
    #   resp.rule_group.rule_variables.port_sets #=> Hash
    #   resp.rule_group.rule_variables.port_sets["RuleVariableName"].definition #=> Array
    #   resp.rule_group.rule_variables.port_sets["RuleVariableName"].definition[0] #=> String
    #   resp.rule_group.reference_sets.ip_set_references #=> Hash
    #   resp.rule_group.reference_sets.ip_set_references["IPSetReferenceName"].reference_arn #=> String
    #   resp.rule_group.rules_source.rules_string #=> String
    #   resp.rule_group.rules_source.rules_source_list.targets #=> Array
    #   resp.rule_group.rules_source.rules_source_list.targets[0] #=> String
    #   resp.rule_group.rules_source.rules_source_list.target_types #=> Array
    #   resp.rule_group.rules_source.rules_source_list.target_types[0] #=> String, one of "TLS_SNI", "HTTP_HOST"
    #   resp.rule_group.rules_source.rules_source_list.generated_rules_type #=> String, one of "ALLOWLIST", "DENYLIST"
    #   resp.rule_group.rules_source.stateful_rules #=> Array
    #   resp.rule_group.rules_source.stateful_rules[0].action #=> String, one of "PASS", "DROP", "ALERT", "REJECT"
    #   resp.rule_group.rules_source.stateful_rules[0].header.protocol #=> String, one of "IP", "TCP", "UDP", "ICMP", "HTTP", "FTP", "TLS", "SMB", "DNS", "DCERPC", "SSH", "SMTP", "IMAP", "MSN", "KRB5", "IKEV2", "TFTP", "NTP", "DHCP"
    #   resp.rule_group.rules_source.stateful_rules[0].header.source #=> String
    #   resp.rule_group.rules_source.stateful_rules[0].header.source_port #=> String
    #   resp.rule_group.rules_source.stateful_rules[0].header.direction #=> String, one of "FORWARD", "ANY"
    #   resp.rule_group.rules_source.stateful_rules[0].header.destination #=> String
    #   resp.rule_group.rules_source.stateful_rules[0].header.destination_port #=> String
    #   resp.rule_group.rules_source.stateful_rules[0].rule_options #=> Array
    #   resp.rule_group.rules_source.stateful_rules[0].rule_options[0].keyword #=> String
    #   resp.rule_group.rules_source.stateful_rules[0].rule_options[0].settings #=> Array
    #   resp.rule_group.rules_source.stateful_rules[0].rule_options[0].settings[0] #=> String
    #   resp.rule_group.rules_source.stateless_rules_and_custom_actions.stateless_rules #=> Array
    #   resp.rule_group.rules_source.stateless_rules_and_custom_actions.stateless_rules[0].rule_definition.match_attributes.sources #=> Array
    #   resp.rule_group.rules_source.stateless_rules_and_custom_actions.stateless_rules[0].rule_definition.match_attributes.sources[0].address_definition #=> String
    #   resp.rule_group.rules_source.stateless_rules_and_custom_actions.stateless_rules[0].rule_definition.match_attributes.destinations #=> Array
    #   resp.rule_group.rules_source.stateless_rules_and_custom_actions.stateless_rules[0].rule_definition.match_attributes.destinations[0].address_definition #=> String
    #   resp.rule_group.rules_source.stateless_rules_and_custom_actions.stateless_rules[0].rule_definition.match_attributes.source_ports #=> Array
    #   resp.rule_group.rules_source.stateless_rules_and_custom_actions.stateless_rules[0].rule_definition.match_attributes.source_ports[0].from_port #=> Integer
    #   resp.rule_group.rules_source.stateless_rules_and_custom_actions.stateless_rules[0].rule_definition.match_attributes.source_ports[0].to_port #=> Integer
    #   resp.rule_group.rules_source.stateless_rules_and_custom_actions.stateless_rules[0].rule_definition.match_attributes.destination_ports #=> Array
    #   resp.rule_group.rules_source.stateless_rules_and_custom_actions.stateless_rules[0].rule_definition.match_attributes.destination_ports[0].from_port #=> Integer
    #   resp.rule_group.rules_source.stateless_rules_and_custom_actions.stateless_rules[0].rule_definition.match_attributes.destination_ports[0].to_port #=> Integer
    #   resp.rule_group.rules_source.stateless_rules_and_custom_actions.stateless_rules[0].rule_definition.match_attributes.protocols #=> Array
    #   resp.rule_group.rules_source.stateless_rules_and_custom_actions.stateless_rules[0].rule_definition.match_attributes.protocols[0] #=> Integer
    #   resp.rule_group.rules_source.stateless_rules_and_custom_actions.stateless_rules[0].rule_definition.match_attributes.tcp_flags #=> Array
    #   resp.rule_group.rules_source.stateless_rules_and_custom_actions.stateless_rules[0].rule_definition.match_attributes.tcp_flags[0].flags #=> Array
    #   resp.rule_group.rules_source.stateless_rules_and_custom_actions.stateless_rules[0].rule_definition.match_attributes.tcp_flags[0].flags[0] #=> String, one of "FIN", "SYN", "RST", "PSH", "ACK", "URG", "ECE", "CWR"
    #   resp.rule_group.rules_source.stateless_rules_and_custom_actions.stateless_rules[0].rule_definition.match_attributes.tcp_flags[0].masks #=> Array
    #   resp.rule_group.rules_source.stateless_rules_and_custom_actions.stateless_rules[0].rule_definition.match_attributes.tcp_flags[0].masks[0] #=> String, one of "FIN", "SYN", "RST", "PSH", "ACK", "URG", "ECE", "CWR"
    #   resp.rule_group.rules_source.stateless_rules_and_custom_actions.stateless_rules[0].rule_definition.actions #=> Array
    #   resp.rule_group.rules_source.stateless_rules_and_custom_actions.stateless_rules[0].rule_definition.actions[0] #=> String
    #   resp.rule_group.rules_source.stateless_rules_and_custom_actions.stateless_rules[0].priority #=> Integer
    #   resp.rule_group.rules_source.stateless_rules_and_custom_actions.custom_actions #=> Array
    #   resp.rule_group.rules_source.stateless_rules_and_custom_actions.custom_actions[0].action_name #=> String
    #   resp.rule_group.rules_source.stateless_rules_and_custom_actions.custom_actions[0].action_definition.publish_metric_action.dimensions #=> Array
    #   resp.rule_group.rules_source.stateless_rules_and_custom_actions.custom_actions[0].action_definition.publish_metric_action.dimensions[0].value #=> String
    #   resp.rule_group.stateful_rule_options.rule_order #=> String, one of "DEFAULT_ACTION_ORDER", "STRICT_ORDER"
    #   resp.rule_group_response.rule_group_arn #=> String
    #   resp.rule_group_response.rule_group_name #=> String
    #   resp.rule_group_response.rule_group_id #=> String
    #   resp.rule_group_response.description #=> String
    #   resp.rule_group_response.type #=> String, one of "STATELESS", "STATEFUL"
    #   resp.rule_group_response.capacity #=> Integer
    #   resp.rule_group_response.rule_group_status #=> String, one of "ACTIVE", "DELETING"
    #   resp.rule_group_response.tags #=> Array
    #   resp.rule_group_response.tags[0].key #=> String
    #   resp.rule_group_response.tags[0].value #=> String
    #   resp.rule_group_response.consumed_capacity #=> Integer
    #   resp.rule_group_response.number_of_associations #=> Integer
    #   resp.rule_group_response.encryption_configuration.key_id #=> String
    #   resp.rule_group_response.encryption_configuration.type #=> String, one of "CUSTOMER_KMS", "AWS_OWNED_KMS_KEY"
    #   resp.rule_group_response.source_metadata.source_arn #=> String
    #   resp.rule_group_response.source_metadata.source_update_token #=> String
    #   resp.rule_group_response.sns_topic #=> String
    #   resp.rule_group_response.last_modified_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/DescribeRuleGroup AWS API Documentation
    #
    # @overload describe_rule_group(params = {})
    # @param [Hash] params ({})
    def describe_rule_group(params = {}, options = {})
      req = build_request(:describe_rule_group, params)
      req.send_request(options)
    end

    # High-level information about a rule group, returned by operations like
    # create and describe. You can use the information provided in the
    # metadata to retrieve and manage a rule group. You can retrieve all
    # objects for a rule group by calling DescribeRuleGroup.
    #
    # @option params [String] :rule_group_name
    #   The descriptive name of the rule group. You can't change the name of
    #   a rule group after you create it.
    #
    #   You must specify the ARN or the name, and you can specify both.
    #
    # @option params [String] :rule_group_arn
    #   The descriptive name of the rule group. You can't change the name of
    #   a rule group after you create it.
    #
    #   You must specify the ARN or the name, and you can specify both.
    #
    # @option params [String] :type
    #   Indicates whether the rule group is stateless or stateful. If the rule
    #   group is stateless, it contains stateless rules. If it is stateful, it
    #   contains stateful rules.
    #
    #   <note markdown="1"> This setting is required for requests that do not include the
    #   `RuleGroupARN`.
    #
    #    </note>
    #
    # @return [Types::DescribeRuleGroupMetadataResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeRuleGroupMetadataResponse#rule_group_arn #rule_group_arn} => String
    #   * {Types::DescribeRuleGroupMetadataResponse#rule_group_name #rule_group_name} => String
    #   * {Types::DescribeRuleGroupMetadataResponse#description #description} => String
    #   * {Types::DescribeRuleGroupMetadataResponse#type #type} => String
    #   * {Types::DescribeRuleGroupMetadataResponse#capacity #capacity} => Integer
    #   * {Types::DescribeRuleGroupMetadataResponse#stateful_rule_options #stateful_rule_options} => Types::StatefulRuleOptions
    #   * {Types::DescribeRuleGroupMetadataResponse#last_modified_time #last_modified_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_rule_group_metadata({
    #     rule_group_name: "ResourceName",
    #     rule_group_arn: "ResourceArn",
    #     type: "STATELESS", # accepts STATELESS, STATEFUL
    #   })
    #
    # @example Response structure
    #
    #   resp.rule_group_arn #=> String
    #   resp.rule_group_name #=> String
    #   resp.description #=> String
    #   resp.type #=> String, one of "STATELESS", "STATEFUL"
    #   resp.capacity #=> Integer
    #   resp.stateful_rule_options.rule_order #=> String, one of "DEFAULT_ACTION_ORDER", "STRICT_ORDER"
    #   resp.last_modified_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/DescribeRuleGroupMetadata AWS API Documentation
    #
    # @overload describe_rule_group_metadata(params = {})
    # @param [Hash] params ({})
    def describe_rule_group_metadata(params = {}, options = {})
      req = build_request(:describe_rule_group_metadata, params)
      req.send_request(options)
    end

    # Returns the data objects for the specified TLS inspection
    # configuration.
    #
    # @option params [String] :tls_inspection_configuration_arn
    #   The Amazon Resource Name (ARN) of the TLS inspection configuration.
    #
    #   You must specify the ARN or the name, and you can specify both.
    #
    # @option params [String] :tls_inspection_configuration_name
    #   The descriptive name of the TLS inspection configuration. You can't
    #   change the name of a TLS inspection configuration after you create it.
    #
    #   You must specify the ARN or the name, and you can specify both.
    #
    # @return [Types::DescribeTLSInspectionConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTLSInspectionConfigurationResponse#update_token #update_token} => String
    #   * {Types::DescribeTLSInspectionConfigurationResponse#tls_inspection_configuration #tls_inspection_configuration} => Types::TLSInspectionConfiguration
    #   * {Types::DescribeTLSInspectionConfigurationResponse#tls_inspection_configuration_response #tls_inspection_configuration_response} => Types::TLSInspectionConfigurationResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_tls_inspection_configuration({
    #     tls_inspection_configuration_arn: "ResourceArn",
    #     tls_inspection_configuration_name: "ResourceName",
    #   })
    #
    # @example Response structure
    #
    #   resp.update_token #=> String
    #   resp.tls_inspection_configuration.server_certificate_configurations #=> Array
    #   resp.tls_inspection_configuration.server_certificate_configurations[0].server_certificates #=> Array
    #   resp.tls_inspection_configuration.server_certificate_configurations[0].server_certificates[0].resource_arn #=> String
    #   resp.tls_inspection_configuration.server_certificate_configurations[0].scopes #=> Array
    #   resp.tls_inspection_configuration.server_certificate_configurations[0].scopes[0].sources #=> Array
    #   resp.tls_inspection_configuration.server_certificate_configurations[0].scopes[0].sources[0].address_definition #=> String
    #   resp.tls_inspection_configuration.server_certificate_configurations[0].scopes[0].destinations #=> Array
    #   resp.tls_inspection_configuration.server_certificate_configurations[0].scopes[0].destinations[0].address_definition #=> String
    #   resp.tls_inspection_configuration.server_certificate_configurations[0].scopes[0].source_ports #=> Array
    #   resp.tls_inspection_configuration.server_certificate_configurations[0].scopes[0].source_ports[0].from_port #=> Integer
    #   resp.tls_inspection_configuration.server_certificate_configurations[0].scopes[0].source_ports[0].to_port #=> Integer
    #   resp.tls_inspection_configuration.server_certificate_configurations[0].scopes[0].destination_ports #=> Array
    #   resp.tls_inspection_configuration.server_certificate_configurations[0].scopes[0].destination_ports[0].from_port #=> Integer
    #   resp.tls_inspection_configuration.server_certificate_configurations[0].scopes[0].destination_ports[0].to_port #=> Integer
    #   resp.tls_inspection_configuration.server_certificate_configurations[0].scopes[0].protocols #=> Array
    #   resp.tls_inspection_configuration.server_certificate_configurations[0].scopes[0].protocols[0] #=> Integer
    #   resp.tls_inspection_configuration_response.tls_inspection_configuration_arn #=> String
    #   resp.tls_inspection_configuration_response.tls_inspection_configuration_name #=> String
    #   resp.tls_inspection_configuration_response.tls_inspection_configuration_id #=> String
    #   resp.tls_inspection_configuration_response.tls_inspection_configuration_status #=> String, one of "ACTIVE", "DELETING"
    #   resp.tls_inspection_configuration_response.description #=> String
    #   resp.tls_inspection_configuration_response.tags #=> Array
    #   resp.tls_inspection_configuration_response.tags[0].key #=> String
    #   resp.tls_inspection_configuration_response.tags[0].value #=> String
    #   resp.tls_inspection_configuration_response.last_modified_time #=> Time
    #   resp.tls_inspection_configuration_response.number_of_associations #=> Integer
    #   resp.tls_inspection_configuration_response.encryption_configuration.key_id #=> String
    #   resp.tls_inspection_configuration_response.encryption_configuration.type #=> String, one of "CUSTOMER_KMS", "AWS_OWNED_KMS_KEY"
    #   resp.tls_inspection_configuration_response.certificates #=> Array
    #   resp.tls_inspection_configuration_response.certificates[0].certificate_arn #=> String
    #   resp.tls_inspection_configuration_response.certificates[0].certificate_serial #=> String
    #   resp.tls_inspection_configuration_response.certificates[0].status #=> String
    #   resp.tls_inspection_configuration_response.certificates[0].status_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/DescribeTLSInspectionConfiguration AWS API Documentation
    #
    # @overload describe_tls_inspection_configuration(params = {})
    # @param [Hash] params ({})
    def describe_tls_inspection_configuration(params = {}, options = {})
      req = build_request(:describe_tls_inspection_configuration, params)
      req.send_request(options)
    end

    # Removes the specified subnet associations from the firewall. This
    # removes the firewall endpoints from the subnets and removes any
    # network filtering protections that the endpoints were providing.
    #
    # @option params [String] :update_token
    #   An optional token that you can use for optimistic locking. Network
    #   Firewall returns a token to your requests that access the firewall.
    #   The token marks the state of the firewall resource at the time of the
    #   request.
    #
    #   To make an unconditional change to the firewall, omit the token in
    #   your update request. Without the token, Network Firewall performs your
    #   updates regardless of whether the firewall has changed since you last
    #   retrieved it.
    #
    #   To make a conditional change to the firewall, provide the token in
    #   your update request. Network Firewall uses the token to ensure that
    #   the firewall hasn't changed since you last retrieved it. If it has
    #   changed, the operation fails with an `InvalidTokenException`. If this
    #   happens, retrieve the firewall again to get a current copy of it with
    #   a new token. Reapply your changes as needed, then try the operation
    #   again using the new token.
    #
    # @option params [String] :firewall_arn
    #   The Amazon Resource Name (ARN) of the firewall.
    #
    #   You must specify the ARN or the name, and you can specify both.
    #
    # @option params [String] :firewall_name
    #   The descriptive name of the firewall. You can't change the name of a
    #   firewall after you create it.
    #
    #   You must specify the ARN or the name, and you can specify both.
    #
    # @option params [required, Array<String>] :subnet_ids
    #   The unique identifiers for the subnets that you want to disassociate.
    #
    # @return [Types::DisassociateSubnetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DisassociateSubnetsResponse#firewall_arn #firewall_arn} => String
    #   * {Types::DisassociateSubnetsResponse#firewall_name #firewall_name} => String
    #   * {Types::DisassociateSubnetsResponse#subnet_mappings #subnet_mappings} => Array&lt;Types::SubnetMapping&gt;
    #   * {Types::DisassociateSubnetsResponse#update_token #update_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_subnets({
    #     update_token: "UpdateToken",
    #     firewall_arn: "ResourceArn",
    #     firewall_name: "ResourceName",
    #     subnet_ids: ["AzSubnet"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.firewall_arn #=> String
    #   resp.firewall_name #=> String
    #   resp.subnet_mappings #=> Array
    #   resp.subnet_mappings[0].subnet_id #=> String
    #   resp.subnet_mappings[0].ip_address_type #=> String, one of "DUALSTACK", "IPV4", "IPV6"
    #   resp.update_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/DisassociateSubnets AWS API Documentation
    #
    # @overload disassociate_subnets(params = {})
    # @param [Hash] params ({})
    def disassociate_subnets(params = {}, options = {})
      req = build_request(:disassociate_subnets, params)
      req.send_request(options)
    end

    # Retrieves the metadata for the firewall policies that you have
    # defined. Depending on your setting for max results and the number of
    # firewall policies, a single call might not return the full list.
    #
    # @option params [String] :next_token
    #   When you request a list of objects with a `MaxResults` setting, if the
    #   number of objects that are still available for retrieval exceeds the
    #   maximum you requested, Network Firewall returns a `NextToken` value in
    #   the response. To retrieve the next batch of objects, use the token
    #   returned from the prior request in your next request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of objects that you want Network Firewall to return
    #   for this request. If more objects are available, in the response,
    #   Network Firewall provides a `NextToken` value that you can use in a
    #   subsequent call to get the next batch of objects.
    #
    # @return [Types::ListFirewallPoliciesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFirewallPoliciesResponse#next_token #next_token} => String
    #   * {Types::ListFirewallPoliciesResponse#firewall_policies #firewall_policies} => Array&lt;Types::FirewallPolicyMetadata&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_firewall_policies({
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.firewall_policies #=> Array
    #   resp.firewall_policies[0].name #=> String
    #   resp.firewall_policies[0].arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/ListFirewallPolicies AWS API Documentation
    #
    # @overload list_firewall_policies(params = {})
    # @param [Hash] params ({})
    def list_firewall_policies(params = {}, options = {})
      req = build_request(:list_firewall_policies, params)
      req.send_request(options)
    end

    # Retrieves the metadata for the firewalls that you have defined. If you
    # provide VPC identifiers in your request, this returns only the
    # firewalls for those VPCs.
    #
    # Depending on your setting for max results and the number of firewalls,
    # a single call might not return the full list.
    #
    # @option params [String] :next_token
    #   When you request a list of objects with a `MaxResults` setting, if the
    #   number of objects that are still available for retrieval exceeds the
    #   maximum you requested, Network Firewall returns a `NextToken` value in
    #   the response. To retrieve the next batch of objects, use the token
    #   returned from the prior request in your next request.
    #
    # @option params [Array<String>] :vpc_ids
    #   The unique identifiers of the VPCs that you want Network Firewall to
    #   retrieve the firewalls for. Leave this blank to retrieve all firewalls
    #   that you have defined.
    #
    # @option params [Integer] :max_results
    #   The maximum number of objects that you want Network Firewall to return
    #   for this request. If more objects are available, in the response,
    #   Network Firewall provides a `NextToken` value that you can use in a
    #   subsequent call to get the next batch of objects.
    #
    # @return [Types::ListFirewallsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFirewallsResponse#next_token #next_token} => String
    #   * {Types::ListFirewallsResponse#firewalls #firewalls} => Array&lt;Types::FirewallMetadata&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_firewalls({
    #     next_token: "PaginationToken",
    #     vpc_ids: ["VpcId"],
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.firewalls #=> Array
    #   resp.firewalls[0].firewall_name #=> String
    #   resp.firewalls[0].firewall_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/ListFirewalls AWS API Documentation
    #
    # @overload list_firewalls(params = {})
    # @param [Hash] params ({})
    def list_firewalls(params = {}, options = {})
      req = build_request(:list_firewalls, params)
      req.send_request(options)
    end

    # Retrieves the metadata for the rule groups that you have defined.
    # Depending on your setting for max results and the number of rule
    # groups, a single call might not return the full list.
    #
    # @option params [String] :next_token
    #   When you request a list of objects with a `MaxResults` setting, if the
    #   number of objects that are still available for retrieval exceeds the
    #   maximum you requested, Network Firewall returns a `NextToken` value in
    #   the response. To retrieve the next batch of objects, use the token
    #   returned from the prior request in your next request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of objects that you want Network Firewall to return
    #   for this request. If more objects are available, in the response,
    #   Network Firewall provides a `NextToken` value that you can use in a
    #   subsequent call to get the next batch of objects.
    #
    # @option params [String] :scope
    #   The scope of the request. The default setting of `ACCOUNT` or a
    #   setting of `NULL` returns all of the rule groups in your account. A
    #   setting of `MANAGED` returns all available managed rule groups.
    #
    # @option params [String] :managed_type
    #   Indicates the general category of the Amazon Web Services managed rule
    #   group.
    #
    # @option params [String] :type
    #   Indicates whether the rule group is stateless or stateful. If the rule
    #   group is stateless, it contains stateless rules. If it is stateful, it
    #   contains stateful rules.
    #
    # @return [Types::ListRuleGroupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRuleGroupsResponse#next_token #next_token} => String
    #   * {Types::ListRuleGroupsResponse#rule_groups #rule_groups} => Array&lt;Types::RuleGroupMetadata&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_rule_groups({
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #     scope: "MANAGED", # accepts MANAGED, ACCOUNT
    #     managed_type: "AWS_MANAGED_THREAT_SIGNATURES", # accepts AWS_MANAGED_THREAT_SIGNATURES, AWS_MANAGED_DOMAIN_LISTS
    #     type: "STATELESS", # accepts STATELESS, STATEFUL
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.rule_groups #=> Array
    #   resp.rule_groups[0].name #=> String
    #   resp.rule_groups[0].arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/ListRuleGroups AWS API Documentation
    #
    # @overload list_rule_groups(params = {})
    # @param [Hash] params ({})
    def list_rule_groups(params = {}, options = {})
      req = build_request(:list_rule_groups, params)
      req.send_request(options)
    end

    # Retrieves the metadata for the TLS inspection configurations that you
    # have defined. Depending on your setting for max results and the number
    # of TLS inspection configurations, a single call might not return the
    # full list.
    #
    # @option params [String] :next_token
    #   When you request a list of objects with a `MaxResults` setting, if the
    #   number of objects that are still available for retrieval exceeds the
    #   maximum you requested, Network Firewall returns a `NextToken` value in
    #   the response. To retrieve the next batch of objects, use the token
    #   returned from the prior request in your next request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of objects that you want Network Firewall to return
    #   for this request. If more objects are available, in the response,
    #   Network Firewall provides a `NextToken` value that you can use in a
    #   subsequent call to get the next batch of objects.
    #
    # @return [Types::ListTLSInspectionConfigurationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTLSInspectionConfigurationsResponse#next_token #next_token} => String
    #   * {Types::ListTLSInspectionConfigurationsResponse#tls_inspection_configurations #tls_inspection_configurations} => Array&lt;Types::TLSInspectionConfigurationMetadata&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tls_inspection_configurations({
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.tls_inspection_configurations #=> Array
    #   resp.tls_inspection_configurations[0].name #=> String
    #   resp.tls_inspection_configurations[0].arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/ListTLSInspectionConfigurations AWS API Documentation
    #
    # @overload list_tls_inspection_configurations(params = {})
    # @param [Hash] params ({})
    def list_tls_inspection_configurations(params = {}, options = {})
      req = build_request(:list_tls_inspection_configurations, params)
      req.send_request(options)
    end

    # Retrieves the tags associated with the specified resource. Tags are
    # key:value pairs that you can use to categorize and manage your
    # resources, for purposes like billing. For example, you might set the
    # tag key to "customer" and the value to the customer name or ID. You
    # can specify one or more tags to add to each Amazon Web Services
    # resource, up to 50 tags for a resource.
    #
    # You can tag the Amazon Web Services resources that you manage through
    # Network Firewall: firewalls, firewall policies, and rule groups.
    #
    # @option params [String] :next_token
    #   When you request a list of objects with a `MaxResults` setting, if the
    #   number of objects that are still available for retrieval exceeds the
    #   maximum you requested, Network Firewall returns a `NextToken` value in
    #   the response. To retrieve the next batch of objects, use the token
    #   returned from the prior request in your next request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of objects that you want Network Firewall to return
    #   for this request. If more objects are available, in the response,
    #   Network Firewall provides a `NextToken` value that you can use in a
    #   subsequent call to get the next batch of objects.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#next_token #next_token} => String
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #     resource_arn: "ResourceArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Creates or updates an IAM policy for your rule group or firewall
    # policy. Use this to share rule groups and firewall policies between
    # accounts. This operation works in conjunction with the Amazon Web
    # Services Resource Access Manager (RAM) service to manage resource
    # sharing for Network Firewall.
    #
    # Use this operation to create or update a resource policy for your rule
    # group or firewall policy. In the policy, you specify the accounts that
    # you want to share the resource with and the operations that you want
    # the accounts to be able to perform.
    #
    # When you add an account in the resource policy, you then run the
    # following Resource Access Manager (RAM) operations to access and
    # accept the shared rule group or firewall policy.
    #
    # * [GetResourceShareInvitations][1] - Returns the Amazon Resource Names
    #   (ARNs) of the resource share invitations.
    #
    # * [AcceptResourceShareInvitation][2] - Accepts the share invitation
    #   for a specified resource share.
    #
    # For additional information about resource sharing using RAM, see
    # [Resource Access Manager User Guide][3].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/ram/latest/APIReference/API_GetResourceShareInvitations.html
    # [2]: https://docs.aws.amazon.com/ram/latest/APIReference/API_AcceptResourceShareInvitation.html
    # [3]: https://docs.aws.amazon.com/ram/latest/userguide/what-is.html
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the account that you want to share
    #   rule groups and firewall policies with.
    #
    # @option params [required, String] :policy
    #   The IAM policy statement that lists the accounts that you want to
    #   share your rule group or firewall policy with and the operations that
    #   you want the accounts to be able to perform.
    #
    #   For a rule group resource, you can specify the following operations in
    #   the Actions section of the statement:
    #
    #   * network-firewall:CreateFirewallPolicy
    #
    #   * network-firewall:UpdateFirewallPolicy
    #
    #   * network-firewall:ListRuleGroups
    #
    #   For a firewall policy resource, you can specify the following
    #   operations in the Actions section of the statement:
    #
    #   * network-firewall:AssociateFirewallPolicy
    #
    #   * network-firewall:ListFirewallPolicies
    #
    #   In the Resource section of the statement, you specify the ARNs for the
    #   rule groups and firewall policies that you want to share with the
    #   account that you specified in `Arn`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_resource_policy({
    #     resource_arn: "ResourceArn", # required
    #     policy: "PolicyString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/PutResourcePolicy AWS API Documentation
    #
    # @overload put_resource_policy(params = {})
    # @param [Hash] params ({})
    def put_resource_policy(params = {}, options = {})
      req = build_request(:put_resource_policy, params)
      req.send_request(options)
    end

    # Adds the specified tags to the specified resource. Tags are key:value
    # pairs that you can use to categorize and manage your resources, for
    # purposes like billing. For example, you might set the tag key to
    # "customer" and the value to the customer name or ID. You can specify
    # one or more tags to add to each Amazon Web Services resource, up to 50
    # tags for a resource.
    #
    # You can tag the Amazon Web Services resources that you manage through
    # Network Firewall: firewalls, firewall policies, and rule groups.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #
    # @option params [required, Array<Types::Tag>] :tags
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes the tags with the specified keys from the specified resource.
    # Tags are key:value pairs that you can use to categorize and manage
    # your resources, for purposes like billing. For example, you might set
    # the tag key to "customer" and the value to the customer name or ID.
    # You can specify one or more tags to add to each Amazon Web Services
    # resource, up to 50 tags for a resource.
    #
    # You can manage tags for the Amazon Web Services resources that you
    # manage through Network Firewall: firewalls, firewall policies, and
    # rule groups.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #
    # @option params [required, Array<String>] :tag_keys
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Modifies the flag, `DeleteProtection`, which indicates whether it is
    # possible to delete the firewall. If the flag is set to `TRUE`, the
    # firewall is protected against deletion. This setting helps protect
    # against accidentally deleting a firewall that's in use.
    #
    # @option params [String] :update_token
    #   An optional token that you can use for optimistic locking. Network
    #   Firewall returns a token to your requests that access the firewall.
    #   The token marks the state of the firewall resource at the time of the
    #   request.
    #
    #   To make an unconditional change to the firewall, omit the token in
    #   your update request. Without the token, Network Firewall performs your
    #   updates regardless of whether the firewall has changed since you last
    #   retrieved it.
    #
    #   To make a conditional change to the firewall, provide the token in
    #   your update request. Network Firewall uses the token to ensure that
    #   the firewall hasn't changed since you last retrieved it. If it has
    #   changed, the operation fails with an `InvalidTokenException`. If this
    #   happens, retrieve the firewall again to get a current copy of it with
    #   a new token. Reapply your changes as needed, then try the operation
    #   again using the new token.
    #
    # @option params [String] :firewall_arn
    #   The Amazon Resource Name (ARN) of the firewall.
    #
    #   You must specify the ARN or the name, and you can specify both.
    #
    # @option params [String] :firewall_name
    #   The descriptive name of the firewall. You can't change the name of a
    #   firewall after you create it.
    #
    #   You must specify the ARN or the name, and you can specify both.
    #
    # @option params [required, Boolean] :delete_protection
    #   A flag indicating whether it is possible to delete the firewall. A
    #   setting of `TRUE` indicates that the firewall is protected against
    #   deletion. Use this setting to protect against accidentally deleting a
    #   firewall that is in use. When you create a firewall, the operation
    #   initializes this flag to `TRUE`.
    #
    # @return [Types::UpdateFirewallDeleteProtectionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateFirewallDeleteProtectionResponse#firewall_arn #firewall_arn} => String
    #   * {Types::UpdateFirewallDeleteProtectionResponse#firewall_name #firewall_name} => String
    #   * {Types::UpdateFirewallDeleteProtectionResponse#delete_protection #delete_protection} => Boolean
    #   * {Types::UpdateFirewallDeleteProtectionResponse#update_token #update_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_firewall_delete_protection({
    #     update_token: "UpdateToken",
    #     firewall_arn: "ResourceArn",
    #     firewall_name: "ResourceName",
    #     delete_protection: false, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.firewall_arn #=> String
    #   resp.firewall_name #=> String
    #   resp.delete_protection #=> Boolean
    #   resp.update_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/UpdateFirewallDeleteProtection AWS API Documentation
    #
    # @overload update_firewall_delete_protection(params = {})
    # @param [Hash] params ({})
    def update_firewall_delete_protection(params = {}, options = {})
      req = build_request(:update_firewall_delete_protection, params)
      req.send_request(options)
    end

    # Modifies the description for the specified firewall. Use the
    # description to help you identify the firewall when you're working
    # with it.
    #
    # @option params [String] :update_token
    #   An optional token that you can use for optimistic locking. Network
    #   Firewall returns a token to your requests that access the firewall.
    #   The token marks the state of the firewall resource at the time of the
    #   request.
    #
    #   To make an unconditional change to the firewall, omit the token in
    #   your update request. Without the token, Network Firewall performs your
    #   updates regardless of whether the firewall has changed since you last
    #   retrieved it.
    #
    #   To make a conditional change to the firewall, provide the token in
    #   your update request. Network Firewall uses the token to ensure that
    #   the firewall hasn't changed since you last retrieved it. If it has
    #   changed, the operation fails with an `InvalidTokenException`. If this
    #   happens, retrieve the firewall again to get a current copy of it with
    #   a new token. Reapply your changes as needed, then try the operation
    #   again using the new token.
    #
    # @option params [String] :firewall_arn
    #   The Amazon Resource Name (ARN) of the firewall.
    #
    #   You must specify the ARN or the name, and you can specify both.
    #
    # @option params [String] :firewall_name
    #   The descriptive name of the firewall. You can't change the name of a
    #   firewall after you create it.
    #
    #   You must specify the ARN or the name, and you can specify both.
    #
    # @option params [String] :description
    #   The new description for the firewall. If you omit this setting,
    #   Network Firewall removes the description for the firewall.
    #
    # @return [Types::UpdateFirewallDescriptionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateFirewallDescriptionResponse#firewall_arn #firewall_arn} => String
    #   * {Types::UpdateFirewallDescriptionResponse#firewall_name #firewall_name} => String
    #   * {Types::UpdateFirewallDescriptionResponse#description #description} => String
    #   * {Types::UpdateFirewallDescriptionResponse#update_token #update_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_firewall_description({
    #     update_token: "UpdateToken",
    #     firewall_arn: "ResourceArn",
    #     firewall_name: "ResourceName",
    #     description: "Description",
    #   })
    #
    # @example Response structure
    #
    #   resp.firewall_arn #=> String
    #   resp.firewall_name #=> String
    #   resp.description #=> String
    #   resp.update_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/UpdateFirewallDescription AWS API Documentation
    #
    # @overload update_firewall_description(params = {})
    # @param [Hash] params ({})
    def update_firewall_description(params = {}, options = {})
      req = build_request(:update_firewall_description, params)
      req.send_request(options)
    end

    # A complex type that contains settings for encryption of your firewall
    # resources.
    #
    # @option params [String] :update_token
    #   An optional token that you can use for optimistic locking. Network
    #   Firewall returns a token to your requests that access the firewall.
    #   The token marks the state of the firewall resource at the time of the
    #   request.
    #
    #   To make an unconditional change to the firewall, omit the token in
    #   your update request. Without the token, Network Firewall performs your
    #   updates regardless of whether the firewall has changed since you last
    #   retrieved it.
    #
    #   To make a conditional change to the firewall, provide the token in
    #   your update request. Network Firewall uses the token to ensure that
    #   the firewall hasn't changed since you last retrieved it. If it has
    #   changed, the operation fails with an `InvalidTokenException`. If this
    #   happens, retrieve the firewall again to get a current copy of it with
    #   a new token. Reapply your changes as needed, then try the operation
    #   again using the new token.
    #
    # @option params [String] :firewall_arn
    #   The Amazon Resource Name (ARN) of the firewall.
    #
    # @option params [String] :firewall_name
    #   The descriptive name of the firewall. You can't change the name of a
    #   firewall after you create it.
    #
    # @option params [Types::EncryptionConfiguration] :encryption_configuration
    #   A complex type that contains optional Amazon Web Services Key
    #   Management Service (KMS) encryption settings for your Network Firewall
    #   resources. Your data is encrypted by default with an Amazon Web
    #   Services owned key that Amazon Web Services owns and manages for you.
    #   You can use either the Amazon Web Services owned key, or provide your
    #   own customer managed key. To learn more about KMS encryption of your
    #   Network Firewall resources, see [Encryption at rest with Amazon Web
    #   Services Key Managment Service][1] in the *Network Firewall Developer
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/kms-encryption-at-rest.html
    #
    # @return [Types::UpdateFirewallEncryptionConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateFirewallEncryptionConfigurationResponse#firewall_arn #firewall_arn} => String
    #   * {Types::UpdateFirewallEncryptionConfigurationResponse#firewall_name #firewall_name} => String
    #   * {Types::UpdateFirewallEncryptionConfigurationResponse#update_token #update_token} => String
    #   * {Types::UpdateFirewallEncryptionConfigurationResponse#encryption_configuration #encryption_configuration} => Types::EncryptionConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_firewall_encryption_configuration({
    #     update_token: "UpdateToken",
    #     firewall_arn: "ResourceArn",
    #     firewall_name: "ResourceName",
    #     encryption_configuration: {
    #       key_id: "KeyId",
    #       type: "CUSTOMER_KMS", # required, accepts CUSTOMER_KMS, AWS_OWNED_KMS_KEY
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.firewall_arn #=> String
    #   resp.firewall_name #=> String
    #   resp.update_token #=> String
    #   resp.encryption_configuration.key_id #=> String
    #   resp.encryption_configuration.type #=> String, one of "CUSTOMER_KMS", "AWS_OWNED_KMS_KEY"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/UpdateFirewallEncryptionConfiguration AWS API Documentation
    #
    # @overload update_firewall_encryption_configuration(params = {})
    # @param [Hash] params ({})
    def update_firewall_encryption_configuration(params = {}, options = {})
      req = build_request(:update_firewall_encryption_configuration, params)
      req.send_request(options)
    end

    # Updates the properties of the specified firewall policy.
    #
    # @option params [required, String] :update_token
    #   A token used for optimistic locking. Network Firewall returns a token
    #   to your requests that access the firewall policy. The token marks the
    #   state of the policy resource at the time of the request.
    #
    #   To make changes to the policy, you provide the token in your request.
    #   Network Firewall uses the token to ensure that the policy hasn't
    #   changed since you last retrieved it. If it has changed, the operation
    #   fails with an `InvalidTokenException`. If this happens, retrieve the
    #   firewall policy again to get a current copy of it with current token.
    #   Reapply your changes as needed, then try the operation again using the
    #   new token.
    #
    # @option params [String] :firewall_policy_arn
    #   The Amazon Resource Name (ARN) of the firewall policy.
    #
    #   You must specify the ARN or the name, and you can specify both.
    #
    # @option params [String] :firewall_policy_name
    #   The descriptive name of the firewall policy. You can't change the
    #   name of a firewall policy after you create it.
    #
    #   You must specify the ARN or the name, and you can specify both.
    #
    # @option params [required, Types::FirewallPolicy] :firewall_policy
    #   The updated firewall policy to use for the firewall.
    #
    # @option params [String] :description
    #   A description of the firewall policy.
    #
    # @option params [Boolean] :dry_run
    #   Indicates whether you want Network Firewall to just check the validity
    #   of the request, rather than run the request.
    #
    #   If set to `TRUE`, Network Firewall checks whether the request can run
    #   successfully, but doesn't actually make the requested changes. The
    #   call returns the value that the request would return if you ran it
    #   with dry run set to `FALSE`, but doesn't make additions or changes to
    #   your resources. This option allows you to make sure that you have the
    #   required permissions to run the request and that your request
    #   parameters are valid.
    #
    #   If set to `FALSE`, Network Firewall makes the requested changes to
    #   your resources.
    #
    # @option params [Types::EncryptionConfiguration] :encryption_configuration
    #   A complex type that contains settings for encryption of your firewall
    #   policy resources.
    #
    # @return [Types::UpdateFirewallPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateFirewallPolicyResponse#update_token #update_token} => String
    #   * {Types::UpdateFirewallPolicyResponse#firewall_policy_response #firewall_policy_response} => Types::FirewallPolicyResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_firewall_policy({
    #     update_token: "UpdateToken", # required
    #     firewall_policy_arn: "ResourceArn",
    #     firewall_policy_name: "ResourceName",
    #     firewall_policy: { # required
    #       stateless_rule_group_references: [
    #         {
    #           resource_arn: "ResourceArn", # required
    #           priority: 1, # required
    #         },
    #       ],
    #       stateless_default_actions: ["CollectionMember_String"], # required
    #       stateless_fragment_default_actions: ["CollectionMember_String"], # required
    #       stateless_custom_actions: [
    #         {
    #           action_name: "ActionName", # required
    #           action_definition: { # required
    #             publish_metric_action: {
    #               dimensions: [ # required
    #                 {
    #                   value: "DimensionValue", # required
    #                 },
    #               ],
    #             },
    #           },
    #         },
    #       ],
    #       stateful_rule_group_references: [
    #         {
    #           resource_arn: "ResourceArn", # required
    #           priority: 1,
    #           override: {
    #             action: "DROP_TO_ALERT", # accepts DROP_TO_ALERT
    #           },
    #         },
    #       ],
    #       stateful_default_actions: ["CollectionMember_String"],
    #       stateful_engine_options: {
    #         rule_order: "DEFAULT_ACTION_ORDER", # accepts DEFAULT_ACTION_ORDER, STRICT_ORDER
    #         stream_exception_policy: "DROP", # accepts DROP, CONTINUE, REJECT
    #       },
    #       tls_inspection_configuration_arn: "ResourceArn",
    #       policy_variables: {
    #         rule_variables: {
    #           "RuleVariableName" => {
    #             definition: ["VariableDefinition"], # required
    #           },
    #         },
    #       },
    #     },
    #     description: "Description",
    #     dry_run: false,
    #     encryption_configuration: {
    #       key_id: "KeyId",
    #       type: "CUSTOMER_KMS", # required, accepts CUSTOMER_KMS, AWS_OWNED_KMS_KEY
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.update_token #=> String
    #   resp.firewall_policy_response.firewall_policy_name #=> String
    #   resp.firewall_policy_response.firewall_policy_arn #=> String
    #   resp.firewall_policy_response.firewall_policy_id #=> String
    #   resp.firewall_policy_response.description #=> String
    #   resp.firewall_policy_response.firewall_policy_status #=> String, one of "ACTIVE", "DELETING"
    #   resp.firewall_policy_response.tags #=> Array
    #   resp.firewall_policy_response.tags[0].key #=> String
    #   resp.firewall_policy_response.tags[0].value #=> String
    #   resp.firewall_policy_response.consumed_stateless_rule_capacity #=> Integer
    #   resp.firewall_policy_response.consumed_stateful_rule_capacity #=> Integer
    #   resp.firewall_policy_response.number_of_associations #=> Integer
    #   resp.firewall_policy_response.encryption_configuration.key_id #=> String
    #   resp.firewall_policy_response.encryption_configuration.type #=> String, one of "CUSTOMER_KMS", "AWS_OWNED_KMS_KEY"
    #   resp.firewall_policy_response.last_modified_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/UpdateFirewallPolicy AWS API Documentation
    #
    # @overload update_firewall_policy(params = {})
    # @param [Hash] params ({})
    def update_firewall_policy(params = {}, options = {})
      req = build_request(:update_firewall_policy, params)
      req.send_request(options)
    end

    # Modifies the flag, `ChangeProtection`, which indicates whether it is
    # possible to change the firewall. If the flag is set to `TRUE`, the
    # firewall is protected from changes. This setting helps protect against
    # accidentally changing a firewall that's in use.
    #
    # @option params [String] :update_token
    #   An optional token that you can use for optimistic locking. Network
    #   Firewall returns a token to your requests that access the firewall.
    #   The token marks the state of the firewall resource at the time of the
    #   request.
    #
    #   To make an unconditional change to the firewall, omit the token in
    #   your update request. Without the token, Network Firewall performs your
    #   updates regardless of whether the firewall has changed since you last
    #   retrieved it.
    #
    #   To make a conditional change to the firewall, provide the token in
    #   your update request. Network Firewall uses the token to ensure that
    #   the firewall hasn't changed since you last retrieved it. If it has
    #   changed, the operation fails with an `InvalidTokenException`. If this
    #   happens, retrieve the firewall again to get a current copy of it with
    #   a new token. Reapply your changes as needed, then try the operation
    #   again using the new token.
    #
    # @option params [String] :firewall_arn
    #   The Amazon Resource Name (ARN) of the firewall.
    #
    #   You must specify the ARN or the name, and you can specify both.
    #
    # @option params [String] :firewall_name
    #   The descriptive name of the firewall. You can't change the name of a
    #   firewall after you create it.
    #
    #   You must specify the ARN or the name, and you can specify both.
    #
    # @option params [required, Boolean] :firewall_policy_change_protection
    #   A setting indicating whether the firewall is protected against a
    #   change to the firewall policy association. Use this setting to protect
    #   against accidentally modifying the firewall policy for a firewall that
    #   is in use. When you create a firewall, the operation initializes this
    #   setting to `TRUE`.
    #
    # @return [Types::UpdateFirewallPolicyChangeProtectionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateFirewallPolicyChangeProtectionResponse#update_token #update_token} => String
    #   * {Types::UpdateFirewallPolicyChangeProtectionResponse#firewall_arn #firewall_arn} => String
    #   * {Types::UpdateFirewallPolicyChangeProtectionResponse#firewall_name #firewall_name} => String
    #   * {Types::UpdateFirewallPolicyChangeProtectionResponse#firewall_policy_change_protection #firewall_policy_change_protection} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_firewall_policy_change_protection({
    #     update_token: "UpdateToken",
    #     firewall_arn: "ResourceArn",
    #     firewall_name: "ResourceName",
    #     firewall_policy_change_protection: false, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.update_token #=> String
    #   resp.firewall_arn #=> String
    #   resp.firewall_name #=> String
    #   resp.firewall_policy_change_protection #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/UpdateFirewallPolicyChangeProtection AWS API Documentation
    #
    # @overload update_firewall_policy_change_protection(params = {})
    # @param [Hash] params ({})
    def update_firewall_policy_change_protection(params = {}, options = {})
      req = build_request(:update_firewall_policy_change_protection, params)
      req.send_request(options)
    end

    # Sets the logging configuration for the specified firewall.
    #
    # To change the logging configuration, retrieve the LoggingConfiguration
    # by calling DescribeLoggingConfiguration, then change it and provide
    # the modified object to this update call. You must change the logging
    # configuration one LogDestinationConfig at a time inside the retrieved
    # LoggingConfiguration object.
    #
    # You can perform only one of the following actions in any call to
    # `UpdateLoggingConfiguration`:
    #
    # * Create a new log destination object by adding a single
    #   `LogDestinationConfig` array element to `LogDestinationConfigs`.
    #
    # * Delete a log destination object by removing a single
    #   `LogDestinationConfig` array element from `LogDestinationConfigs`.
    #
    # * Change the `LogDestination` setting in a single
    #   `LogDestinationConfig` array element.
    #
    # You can't change the `LogDestinationType` or `LogType` in a
    # `LogDestinationConfig`. To change these settings, delete the existing
    # `LogDestinationConfig` object and create a new one, using two separate
    # calls to this update operation.
    #
    # @option params [String] :firewall_arn
    #   The Amazon Resource Name (ARN) of the firewall.
    #
    #   You must specify the ARN or the name, and you can specify both.
    #
    # @option params [String] :firewall_name
    #   The descriptive name of the firewall. You can't change the name of a
    #   firewall after you create it.
    #
    #   You must specify the ARN or the name, and you can specify both.
    #
    # @option params [Types::LoggingConfiguration] :logging_configuration
    #   Defines how Network Firewall performs logging for a firewall. If you
    #   omit this setting, Network Firewall disables logging for the firewall.
    #
    # @return [Types::UpdateLoggingConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateLoggingConfigurationResponse#firewall_arn #firewall_arn} => String
    #   * {Types::UpdateLoggingConfigurationResponse#firewall_name #firewall_name} => String
    #   * {Types::UpdateLoggingConfigurationResponse#logging_configuration #logging_configuration} => Types::LoggingConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_logging_configuration({
    #     firewall_arn: "ResourceArn",
    #     firewall_name: "ResourceName",
    #     logging_configuration: {
    #       log_destination_configs: [ # required
    #         {
    #           log_type: "ALERT", # required, accepts ALERT, FLOW
    #           log_destination_type: "S3", # required, accepts S3, CloudWatchLogs, KinesisDataFirehose
    #           log_destination: { # required
    #             "HashMapKey" => "HashMapValue",
    #           },
    #         },
    #       ],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.firewall_arn #=> String
    #   resp.firewall_name #=> String
    #   resp.logging_configuration.log_destination_configs #=> Array
    #   resp.logging_configuration.log_destination_configs[0].log_type #=> String, one of "ALERT", "FLOW"
    #   resp.logging_configuration.log_destination_configs[0].log_destination_type #=> String, one of "S3", "CloudWatchLogs", "KinesisDataFirehose"
    #   resp.logging_configuration.log_destination_configs[0].log_destination #=> Hash
    #   resp.logging_configuration.log_destination_configs[0].log_destination["HashMapKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/UpdateLoggingConfiguration AWS API Documentation
    #
    # @overload update_logging_configuration(params = {})
    # @param [Hash] params ({})
    def update_logging_configuration(params = {}, options = {})
      req = build_request(:update_logging_configuration, params)
      req.send_request(options)
    end

    # Updates the rule settings for the specified rule group. You use a rule
    # group by reference in one or more firewall policies. When you modify a
    # rule group, you modify all firewall policies that use the rule group.
    #
    # To update a rule group, first call DescribeRuleGroup to retrieve the
    # current RuleGroup object, update the object as needed, and then
    # provide the updated object to this call.
    #
    # @option params [required, String] :update_token
    #   A token used for optimistic locking. Network Firewall returns a token
    #   to your requests that access the rule group. The token marks the state
    #   of the rule group resource at the time of the request.
    #
    #   To make changes to the rule group, you provide the token in your
    #   request. Network Firewall uses the token to ensure that the rule group
    #   hasn't changed since you last retrieved it. If it has changed, the
    #   operation fails with an `InvalidTokenException`. If this happens,
    #   retrieve the rule group again to get a current copy of it with a
    #   current token. Reapply your changes as needed, then try the operation
    #   again using the new token.
    #
    # @option params [String] :rule_group_arn
    #   The Amazon Resource Name (ARN) of the rule group.
    #
    #   You must specify the ARN or the name, and you can specify both.
    #
    # @option params [String] :rule_group_name
    #   The descriptive name of the rule group. You can't change the name of
    #   a rule group after you create it.
    #
    #   You must specify the ARN or the name, and you can specify both.
    #
    # @option params [Types::RuleGroup] :rule_group
    #   An object that defines the rule group rules.
    #
    #   <note markdown="1"> You must provide either this rule group setting or a `Rules` setting,
    #   but not both.
    #
    #    </note>
    #
    # @option params [String] :rules
    #   A string containing stateful rule group rules specifications in
    #   Suricata flat format, with one rule per line. Use this to import your
    #   existing Suricata compatible rule groups.
    #
    #   <note markdown="1"> You must provide either this rules setting or a populated `RuleGroup`
    #   setting, but not both.
    #
    #    </note>
    #
    #   You can provide your rule group specification in Suricata flat format
    #   through this setting when you create or update your rule group. The
    #   call response returns a RuleGroup object that Network Firewall has
    #   populated from your string.
    #
    # @option params [String] :type
    #   Indicates whether the rule group is stateless or stateful. If the rule
    #   group is stateless, it contains stateless rules. If it is stateful, it
    #   contains stateful rules.
    #
    #   <note markdown="1"> This setting is required for requests that do not include the
    #   `RuleGroupARN`.
    #
    #    </note>
    #
    # @option params [String] :description
    #   A description of the rule group.
    #
    # @option params [Boolean] :dry_run
    #   Indicates whether you want Network Firewall to just check the validity
    #   of the request, rather than run the request.
    #
    #   If set to `TRUE`, Network Firewall checks whether the request can run
    #   successfully, but doesn't actually make the requested changes. The
    #   call returns the value that the request would return if you ran it
    #   with dry run set to `FALSE`, but doesn't make additions or changes to
    #   your resources. This option allows you to make sure that you have the
    #   required permissions to run the request and that your request
    #   parameters are valid.
    #
    #   If set to `FALSE`, Network Firewall makes the requested changes to
    #   your resources.
    #
    # @option params [Types::EncryptionConfiguration] :encryption_configuration
    #   A complex type that contains settings for encryption of your rule
    #   group resources.
    #
    # @option params [Types::SourceMetadata] :source_metadata
    #   A complex type that contains metadata about the rule group that your
    #   own rule group is copied from. You can use the metadata to keep track
    #   of updates made to the originating rule group.
    #
    # @return [Types::UpdateRuleGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateRuleGroupResponse#update_token #update_token} => String
    #   * {Types::UpdateRuleGroupResponse#rule_group_response #rule_group_response} => Types::RuleGroupResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_rule_group({
    #     update_token: "UpdateToken", # required
    #     rule_group_arn: "ResourceArn",
    #     rule_group_name: "ResourceName",
    #     rule_group: {
    #       rule_variables: {
    #         ip_sets: {
    #           "RuleVariableName" => {
    #             definition: ["VariableDefinition"], # required
    #           },
    #         },
    #         port_sets: {
    #           "RuleVariableName" => {
    #             definition: ["VariableDefinition"],
    #           },
    #         },
    #       },
    #       reference_sets: {
    #         ip_set_references: {
    #           "IPSetReferenceName" => {
    #             reference_arn: "ResourceArn",
    #           },
    #         },
    #       },
    #       rules_source: { # required
    #         rules_string: "RulesString",
    #         rules_source_list: {
    #           targets: ["CollectionMember_String"], # required
    #           target_types: ["TLS_SNI"], # required, accepts TLS_SNI, HTTP_HOST
    #           generated_rules_type: "ALLOWLIST", # required, accepts ALLOWLIST, DENYLIST
    #         },
    #         stateful_rules: [
    #           {
    #             action: "PASS", # required, accepts PASS, DROP, ALERT, REJECT
    #             header: { # required
    #               protocol: "IP", # required, accepts IP, TCP, UDP, ICMP, HTTP, FTP, TLS, SMB, DNS, DCERPC, SSH, SMTP, IMAP, MSN, KRB5, IKEV2, TFTP, NTP, DHCP
    #               source: "Source", # required
    #               source_port: "Port", # required
    #               direction: "FORWARD", # required, accepts FORWARD, ANY
    #               destination: "Destination", # required
    #               destination_port: "Port", # required
    #             },
    #             rule_options: [ # required
    #               {
    #                 keyword: "Keyword", # required
    #                 settings: ["Setting"],
    #               },
    #             ],
    #           },
    #         ],
    #         stateless_rules_and_custom_actions: {
    #           stateless_rules: [ # required
    #             {
    #               rule_definition: { # required
    #                 match_attributes: { # required
    #                   sources: [
    #                     {
    #                       address_definition: "AddressDefinition", # required
    #                     },
    #                   ],
    #                   destinations: [
    #                     {
    #                       address_definition: "AddressDefinition", # required
    #                     },
    #                   ],
    #                   source_ports: [
    #                     {
    #                       from_port: 1, # required
    #                       to_port: 1, # required
    #                     },
    #                   ],
    #                   destination_ports: [
    #                     {
    #                       from_port: 1, # required
    #                       to_port: 1, # required
    #                     },
    #                   ],
    #                   protocols: [1],
    #                   tcp_flags: [
    #                     {
    #                       flags: ["FIN"], # required, accepts FIN, SYN, RST, PSH, ACK, URG, ECE, CWR
    #                       masks: ["FIN"], # accepts FIN, SYN, RST, PSH, ACK, URG, ECE, CWR
    #                     },
    #                   ],
    #                 },
    #                 actions: ["CollectionMember_String"], # required
    #               },
    #               priority: 1, # required
    #             },
    #           ],
    #           custom_actions: [
    #             {
    #               action_name: "ActionName", # required
    #               action_definition: { # required
    #                 publish_metric_action: {
    #                   dimensions: [ # required
    #                     {
    #                       value: "DimensionValue", # required
    #                     },
    #                   ],
    #                 },
    #               },
    #             },
    #           ],
    #         },
    #       },
    #       stateful_rule_options: {
    #         rule_order: "DEFAULT_ACTION_ORDER", # accepts DEFAULT_ACTION_ORDER, STRICT_ORDER
    #       },
    #     },
    #     rules: "RulesString",
    #     type: "STATELESS", # accepts STATELESS, STATEFUL
    #     description: "Description",
    #     dry_run: false,
    #     encryption_configuration: {
    #       key_id: "KeyId",
    #       type: "CUSTOMER_KMS", # required, accepts CUSTOMER_KMS, AWS_OWNED_KMS_KEY
    #     },
    #     source_metadata: {
    #       source_arn: "ResourceArn",
    #       source_update_token: "UpdateToken",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.update_token #=> String
    #   resp.rule_group_response.rule_group_arn #=> String
    #   resp.rule_group_response.rule_group_name #=> String
    #   resp.rule_group_response.rule_group_id #=> String
    #   resp.rule_group_response.description #=> String
    #   resp.rule_group_response.type #=> String, one of "STATELESS", "STATEFUL"
    #   resp.rule_group_response.capacity #=> Integer
    #   resp.rule_group_response.rule_group_status #=> String, one of "ACTIVE", "DELETING"
    #   resp.rule_group_response.tags #=> Array
    #   resp.rule_group_response.tags[0].key #=> String
    #   resp.rule_group_response.tags[0].value #=> String
    #   resp.rule_group_response.consumed_capacity #=> Integer
    #   resp.rule_group_response.number_of_associations #=> Integer
    #   resp.rule_group_response.encryption_configuration.key_id #=> String
    #   resp.rule_group_response.encryption_configuration.type #=> String, one of "CUSTOMER_KMS", "AWS_OWNED_KMS_KEY"
    #   resp.rule_group_response.source_metadata.source_arn #=> String
    #   resp.rule_group_response.source_metadata.source_update_token #=> String
    #   resp.rule_group_response.sns_topic #=> String
    #   resp.rule_group_response.last_modified_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/UpdateRuleGroup AWS API Documentation
    #
    # @overload update_rule_group(params = {})
    # @param [Hash] params ({})
    def update_rule_group(params = {}, options = {})
      req = build_request(:update_rule_group, params)
      req.send_request(options)
    end

    # @option params [String] :update_token
    #   An optional token that you can use for optimistic locking. Network
    #   Firewall returns a token to your requests that access the firewall.
    #   The token marks the state of the firewall resource at the time of the
    #   request.
    #
    #   To make an unconditional change to the firewall, omit the token in
    #   your update request. Without the token, Network Firewall performs your
    #   updates regardless of whether the firewall has changed since you last
    #   retrieved it.
    #
    #   To make a conditional change to the firewall, provide the token in
    #   your update request. Network Firewall uses the token to ensure that
    #   the firewall hasn't changed since you last retrieved it. If it has
    #   changed, the operation fails with an `InvalidTokenException`. If this
    #   happens, retrieve the firewall again to get a current copy of it with
    #   a new token. Reapply your changes as needed, then try the operation
    #   again using the new token.
    #
    # @option params [String] :firewall_arn
    #   The Amazon Resource Name (ARN) of the firewall.
    #
    #   You must specify the ARN or the name, and you can specify both.
    #
    # @option params [String] :firewall_name
    #   The descriptive name of the firewall. You can't change the name of a
    #   firewall after you create it.
    #
    #   You must specify the ARN or the name, and you can specify both.
    #
    # @option params [required, Boolean] :subnet_change_protection
    #   A setting indicating whether the firewall is protected against changes
    #   to the subnet associations. Use this setting to protect against
    #   accidentally modifying the subnet associations for a firewall that is
    #   in use. When you create a firewall, the operation initializes this
    #   setting to `TRUE`.
    #
    # @return [Types::UpdateSubnetChangeProtectionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateSubnetChangeProtectionResponse#update_token #update_token} => String
    #   * {Types::UpdateSubnetChangeProtectionResponse#firewall_arn #firewall_arn} => String
    #   * {Types::UpdateSubnetChangeProtectionResponse#firewall_name #firewall_name} => String
    #   * {Types::UpdateSubnetChangeProtectionResponse#subnet_change_protection #subnet_change_protection} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_subnet_change_protection({
    #     update_token: "UpdateToken",
    #     firewall_arn: "ResourceArn",
    #     firewall_name: "ResourceName",
    #     subnet_change_protection: false, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.update_token #=> String
    #   resp.firewall_arn #=> String
    #   resp.firewall_name #=> String
    #   resp.subnet_change_protection #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/UpdateSubnetChangeProtection AWS API Documentation
    #
    # @overload update_subnet_change_protection(params = {})
    # @param [Hash] params ({})
    def update_subnet_change_protection(params = {}, options = {})
      req = build_request(:update_subnet_change_protection, params)
      req.send_request(options)
    end

    # Updates the TLS inspection configuration settings for the specified
    # TLS inspection configuration. You use a TLS inspection configuration
    # by reference in one or more firewall policies. When you modify a TLS
    # inspection configuration, you modify all firewall policies that use
    # the TLS inspection configuration.
    #
    # To update a TLS inspection configuration, first call
    # DescribeTLSInspectionConfiguration to retrieve the current
    # TLSInspectionConfiguration object, update the object as needed, and
    # then provide the updated object to this call.
    #
    # @option params [String] :tls_inspection_configuration_arn
    #   The Amazon Resource Name (ARN) of the TLS inspection configuration.
    #
    # @option params [String] :tls_inspection_configuration_name
    #   The descriptive name of the TLS inspection configuration. You can't
    #   change the name of a TLS inspection configuration after you create it.
    #
    # @option params [required, Types::TLSInspectionConfiguration] :tls_inspection_configuration
    #   The object that defines a TLS inspection configuration. This, along
    #   with TLSInspectionConfigurationResponse, define the TLS inspection
    #   configuration. You can retrieve all objects for a TLS inspection
    #   configuration by calling DescribeTLSInspectionConfiguration.
    #
    #   Network Firewall uses a TLS inspection configuration to decrypt
    #   traffic. Network Firewall re-encrypts the traffic before sending it to
    #   its destination.
    #
    #   To use a TLS inspection configuration, you add it to a Network
    #   Firewall firewall policy, then you apply the firewall policy to a
    #   firewall. Network Firewall acts as a proxy service to decrypt and
    #   inspect inbound traffic. You can reference a TLS inspection
    #   configuration from more than one firewall policy, and you can use a
    #   firewall policy in more than one firewall. For more information about
    #   using TLS inspection configurations, see [Decrypting SSL/TLS traffic
    #   with TLS inspection configurations][1] in the *Network Firewall
    #   Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/network-firewall/latest/developerguide/tls-inspection.html
    #
    # @option params [String] :description
    #   A description of the TLS inspection configuration.
    #
    # @option params [Types::EncryptionConfiguration] :encryption_configuration
    #   A complex type that contains the Amazon Web Services KMS encryption
    #   configuration settings for your TLS inspection configuration.
    #
    # @option params [required, String] :update_token
    #   A token used for optimistic locking. Network Firewall returns a token
    #   to your requests that access the TLS inspection configuration. The
    #   token marks the state of the TLS inspection configuration resource at
    #   the time of the request.
    #
    #   To make changes to the TLS inspection configuration, you provide the
    #   token in your request. Network Firewall uses the token to ensure that
    #   the TLS inspection configuration hasn't changed since you last
    #   retrieved it. If it has changed, the operation fails with an
    #   `InvalidTokenException`. If this happens, retrieve the TLS inspection
    #   configuration again to get a current copy of it with a current token.
    #   Reapply your changes as needed, then try the operation again using the
    #   new token.
    #
    # @return [Types::UpdateTLSInspectionConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateTLSInspectionConfigurationResponse#update_token #update_token} => String
    #   * {Types::UpdateTLSInspectionConfigurationResponse#tls_inspection_configuration_response #tls_inspection_configuration_response} => Types::TLSInspectionConfigurationResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_tls_inspection_configuration({
    #     tls_inspection_configuration_arn: "ResourceArn",
    #     tls_inspection_configuration_name: "ResourceName",
    #     tls_inspection_configuration: { # required
    #       server_certificate_configurations: [
    #         {
    #           server_certificates: [
    #             {
    #               resource_arn: "ResourceArn",
    #             },
    #           ],
    #           scopes: [
    #             {
    #               sources: [
    #                 {
    #                   address_definition: "AddressDefinition", # required
    #                 },
    #               ],
    #               destinations: [
    #                 {
    #                   address_definition: "AddressDefinition", # required
    #                 },
    #               ],
    #               source_ports: [
    #                 {
    #                   from_port: 1, # required
    #                   to_port: 1, # required
    #                 },
    #               ],
    #               destination_ports: [
    #                 {
    #                   from_port: 1, # required
    #                   to_port: 1, # required
    #                 },
    #               ],
    #               protocols: [1],
    #             },
    #           ],
    #         },
    #       ],
    #     },
    #     description: "Description",
    #     encryption_configuration: {
    #       key_id: "KeyId",
    #       type: "CUSTOMER_KMS", # required, accepts CUSTOMER_KMS, AWS_OWNED_KMS_KEY
    #     },
    #     update_token: "UpdateToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.update_token #=> String
    #   resp.tls_inspection_configuration_response.tls_inspection_configuration_arn #=> String
    #   resp.tls_inspection_configuration_response.tls_inspection_configuration_name #=> String
    #   resp.tls_inspection_configuration_response.tls_inspection_configuration_id #=> String
    #   resp.tls_inspection_configuration_response.tls_inspection_configuration_status #=> String, one of "ACTIVE", "DELETING"
    #   resp.tls_inspection_configuration_response.description #=> String
    #   resp.tls_inspection_configuration_response.tags #=> Array
    #   resp.tls_inspection_configuration_response.tags[0].key #=> String
    #   resp.tls_inspection_configuration_response.tags[0].value #=> String
    #   resp.tls_inspection_configuration_response.last_modified_time #=> Time
    #   resp.tls_inspection_configuration_response.number_of_associations #=> Integer
    #   resp.tls_inspection_configuration_response.encryption_configuration.key_id #=> String
    #   resp.tls_inspection_configuration_response.encryption_configuration.type #=> String, one of "CUSTOMER_KMS", "AWS_OWNED_KMS_KEY"
    #   resp.tls_inspection_configuration_response.certificates #=> Array
    #   resp.tls_inspection_configuration_response.certificates[0].certificate_arn #=> String
    #   resp.tls_inspection_configuration_response.certificates[0].certificate_serial #=> String
    #   resp.tls_inspection_configuration_response.certificates[0].status #=> String
    #   resp.tls_inspection_configuration_response.certificates[0].status_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/UpdateTLSInspectionConfiguration AWS API Documentation
    #
    # @overload update_tls_inspection_configuration(params = {})
    # @param [Hash] params ({})
    def update_tls_inspection_configuration(params = {}, options = {})
      req = build_request(:update_tls_inspection_configuration, params)
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
      context[:gem_name] = 'aws-sdk-networkfirewall'
      context[:gem_version] = '1.33.0'
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
