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

Aws::Plugins::GlobalConfiguration.add_identifier(:route53resolver)

module Aws::Route53Resolver
  # An API client for Route53Resolver.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::Route53Resolver::Client.new(
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

    @identifier = :route53resolver

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
    add_plugin(Aws::Route53Resolver::Plugins::Endpoints)

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
    #   @option options [Aws::Route53Resolver::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::Route53Resolver::EndpointParameters`
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

    # Associates a FirewallRuleGroup with a VPC, to provide DNS filtering
    # for the VPC.
    #
    # @option params [required, String] :creator_request_id
    #   A unique string that identifies the request and that allows failed
    #   requests to be retried without the risk of running the operation
    #   twice. `CreatorRequestId` can be any unique string, for example, a
    #   date/time stamp.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :firewall_rule_group_id
    #   The unique identifier of the firewall rule group.
    #
    # @option params [required, String] :vpc_id
    #   The unique identifier of the VPC that you want to associate with the
    #   rule group.
    #
    # @option params [required, Integer] :priority
    #   The setting that determines the processing order of the rule group
    #   among the rule groups that you associate with the specified VPC. DNS
    #   Firewall filters VPC traffic starting from the rule group with the
    #   lowest numeric priority setting.
    #
    #   You must specify a unique priority for each rule group that you
    #   associate with a single VPC. To make it easier to insert rule groups
    #   later, leave space between the numbers, for example, use 101, 200, and
    #   so on. You can change the priority setting for a rule group
    #   association after you create it.
    #
    #   The allowed values for `Priority` are between 100 and 9900.
    #
    # @option params [required, String] :name
    #   A name that lets you identify the association, to manage and use it.
    #
    # @option params [String] :mutation_protection
    #   If enabled, this setting disallows modification or removal of the
    #   association, to help prevent against accidentally altering DNS
    #   firewall protections. When you create the association, the default
    #   setting is `DISABLED`.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of the tag keys and values that you want to associate with the
    #   rule group association.
    #
    # @return [Types::AssociateFirewallRuleGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociateFirewallRuleGroupResponse#firewall_rule_group_association #firewall_rule_group_association} => Types::FirewallRuleGroupAssociation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_firewall_rule_group({
    #     creator_request_id: "CreatorRequestId", # required
    #     firewall_rule_group_id: "ResourceId", # required
    #     vpc_id: "ResourceId", # required
    #     priority: 1, # required
    #     name: "Name", # required
    #     mutation_protection: "ENABLED", # accepts ENABLED, DISABLED
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
    #   resp.firewall_rule_group_association.id #=> String
    #   resp.firewall_rule_group_association.arn #=> String
    #   resp.firewall_rule_group_association.firewall_rule_group_id #=> String
    #   resp.firewall_rule_group_association.vpc_id #=> String
    #   resp.firewall_rule_group_association.name #=> String
    #   resp.firewall_rule_group_association.priority #=> Integer
    #   resp.firewall_rule_group_association.mutation_protection #=> String, one of "ENABLED", "DISABLED"
    #   resp.firewall_rule_group_association.managed_owner_name #=> String
    #   resp.firewall_rule_group_association.status #=> String, one of "COMPLETE", "DELETING", "UPDATING"
    #   resp.firewall_rule_group_association.status_message #=> String
    #   resp.firewall_rule_group_association.creator_request_id #=> String
    #   resp.firewall_rule_group_association.creation_time #=> String
    #   resp.firewall_rule_group_association.modification_time #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/AssociateFirewallRuleGroup AWS API Documentation
    #
    # @overload associate_firewall_rule_group(params = {})
    # @param [Hash] params ({})
    def associate_firewall_rule_group(params = {}, options = {})
      req = build_request(:associate_firewall_rule_group, params)
      req.send_request(options)
    end

    # Adds IP addresses to an inbound or an outbound Resolver endpoint. If
    # you want to add more than one IP address, submit one
    # `AssociateResolverEndpointIpAddress` request for each IP address.
    #
    # To remove an IP address from an endpoint, see
    # [DisassociateResolverEndpointIpAddress][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_DisassociateResolverEndpointIpAddress.html
    #
    # @option params [required, String] :resolver_endpoint_id
    #   The ID of the Resolver endpoint that you want to associate IP
    #   addresses with.
    #
    # @option params [required, Types::IpAddressUpdate] :ip_address
    #   Either the IPv4 address that you want to add to a Resolver endpoint or
    #   a subnet ID. If you specify a subnet ID, Resolver chooses an IP
    #   address for you from the available IPs in the specified subnet.
    #
    # @return [Types::AssociateResolverEndpointIpAddressResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociateResolverEndpointIpAddressResponse#resolver_endpoint #resolver_endpoint} => Types::ResolverEndpoint
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_resolver_endpoint_ip_address({
    #     resolver_endpoint_id: "ResourceId", # required
    #     ip_address: { # required
    #       ip_id: "ResourceId",
    #       subnet_id: "SubnetId",
    #       ip: "Ip",
    #       ipv_6: "Ipv6",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.resolver_endpoint.id #=> String
    #   resp.resolver_endpoint.creator_request_id #=> String
    #   resp.resolver_endpoint.arn #=> String
    #   resp.resolver_endpoint.name #=> String
    #   resp.resolver_endpoint.security_group_ids #=> Array
    #   resp.resolver_endpoint.security_group_ids[0] #=> String
    #   resp.resolver_endpoint.direction #=> String, one of "INBOUND", "OUTBOUND"
    #   resp.resolver_endpoint.ip_address_count #=> Integer
    #   resp.resolver_endpoint.host_vpc_id #=> String
    #   resp.resolver_endpoint.status #=> String, one of "CREATING", "OPERATIONAL", "UPDATING", "AUTO_RECOVERING", "ACTION_NEEDED", "DELETING"
    #   resp.resolver_endpoint.status_message #=> String
    #   resp.resolver_endpoint.creation_time #=> String
    #   resp.resolver_endpoint.modification_time #=> String
    #   resp.resolver_endpoint.resolver_endpoint_type #=> String, one of "IPV6", "IPV4", "DUALSTACK"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/AssociateResolverEndpointIpAddress AWS API Documentation
    #
    # @overload associate_resolver_endpoint_ip_address(params = {})
    # @param [Hash] params ({})
    def associate_resolver_endpoint_ip_address(params = {}, options = {})
      req = build_request(:associate_resolver_endpoint_ip_address, params)
      req.send_request(options)
    end

    # Associates an Amazon VPC with a specified query logging configuration.
    # Route 53 Resolver logs DNS queries that originate in all of the Amazon
    # VPCs that are associated with a specified query logging configuration.
    # To associate more than one VPC with a configuration, submit one
    # `AssociateResolverQueryLogConfig` request for each VPC.
    #
    # <note markdown="1"> The VPCs that you associate with a query logging configuration must be
    # in the same Region as the configuration.
    #
    #  </note>
    #
    # To remove a VPC from a query logging configuration, see
    # [DisassociateResolverQueryLogConfig][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_DisassociateResolverQueryLogConfig.html
    #
    # @option params [required, String] :resolver_query_log_config_id
    #   The ID of the query logging configuration that you want to associate a
    #   VPC with.
    #
    # @option params [required, String] :resource_id
    #   The ID of an Amazon VPC that you want this query logging configuration
    #   to log queries for.
    #
    #   <note markdown="1"> The VPCs and the query logging configuration must be in the same
    #   Region.
    #
    #    </note>
    #
    # @return [Types::AssociateResolverQueryLogConfigResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociateResolverQueryLogConfigResponse#resolver_query_log_config_association #resolver_query_log_config_association} => Types::ResolverQueryLogConfigAssociation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_resolver_query_log_config({
    #     resolver_query_log_config_id: "ResourceId", # required
    #     resource_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.resolver_query_log_config_association.id #=> String
    #   resp.resolver_query_log_config_association.resolver_query_log_config_id #=> String
    #   resp.resolver_query_log_config_association.resource_id #=> String
    #   resp.resolver_query_log_config_association.status #=> String, one of "CREATING", "ACTIVE", "ACTION_NEEDED", "DELETING", "FAILED"
    #   resp.resolver_query_log_config_association.error #=> String, one of "NONE", "DESTINATION_NOT_FOUND", "ACCESS_DENIED", "INTERNAL_SERVICE_ERROR"
    #   resp.resolver_query_log_config_association.error_message #=> String
    #   resp.resolver_query_log_config_association.creation_time #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/AssociateResolverQueryLogConfig AWS API Documentation
    #
    # @overload associate_resolver_query_log_config(params = {})
    # @param [Hash] params ({})
    def associate_resolver_query_log_config(params = {}, options = {})
      req = build_request(:associate_resolver_query_log_config, params)
      req.send_request(options)
    end

    # Associates a Resolver rule with a VPC. When you associate a rule with
    # a VPC, Resolver forwards all DNS queries for the domain name that is
    # specified in the rule and that originate in the VPC. The queries are
    # forwarded to the IP addresses for the DNS resolvers that are specified
    # in the rule. For more information about rules, see
    # [CreateResolverRule][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_CreateResolverRule.html
    #
    # @option params [required, String] :resolver_rule_id
    #   The ID of the Resolver rule that you want to associate with the VPC.
    #   To list the existing Resolver rules, use [ListResolverRules][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverRules.html
    #
    # @option params [String] :name
    #   A name for the association that you're creating between a Resolver
    #   rule and a VPC.
    #
    # @option params [required, String] :vpc_id
    #   The ID of the VPC that you want to associate the Resolver rule with.
    #
    # @return [Types::AssociateResolverRuleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociateResolverRuleResponse#resolver_rule_association #resolver_rule_association} => Types::ResolverRuleAssociation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_resolver_rule({
    #     resolver_rule_id: "ResourceId", # required
    #     name: "Name",
    #     vpc_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.resolver_rule_association.id #=> String
    #   resp.resolver_rule_association.resolver_rule_id #=> String
    #   resp.resolver_rule_association.name #=> String
    #   resp.resolver_rule_association.vpc_id #=> String
    #   resp.resolver_rule_association.status #=> String, one of "CREATING", "COMPLETE", "DELETING", "FAILED", "OVERRIDDEN"
    #   resp.resolver_rule_association.status_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/AssociateResolverRule AWS API Documentation
    #
    # @overload associate_resolver_rule(params = {})
    # @param [Hash] params ({})
    def associate_resolver_rule(params = {}, options = {})
      req = build_request(:associate_resolver_rule, params)
      req.send_request(options)
    end

    # Creates an empty firewall domain list for use in DNS Firewall rules.
    # You can populate the domains for the new list with a file, using
    # ImportFirewallDomains, or with domain strings, using
    # UpdateFirewallDomains.
    #
    # @option params [required, String] :creator_request_id
    #   A unique string that identifies the request and that allows you to
    #   retry failed requests without the risk of running the operation twice.
    #   `CreatorRequestId` can be any unique string, for example, a date/time
    #   stamp.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :name
    #   A name that lets you identify the domain list to manage and use it.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of the tag keys and values that you want to associate with the
    #   domain list.
    #
    # @return [Types::CreateFirewallDomainListResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateFirewallDomainListResponse#firewall_domain_list #firewall_domain_list} => Types::FirewallDomainList
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_firewall_domain_list({
    #     creator_request_id: "CreatorRequestId", # required
    #     name: "Name", # required
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
    #   resp.firewall_domain_list.id #=> String
    #   resp.firewall_domain_list.arn #=> String
    #   resp.firewall_domain_list.name #=> String
    #   resp.firewall_domain_list.domain_count #=> Integer
    #   resp.firewall_domain_list.status #=> String, one of "COMPLETE", "COMPLETE_IMPORT_FAILED", "IMPORTING", "DELETING", "UPDATING"
    #   resp.firewall_domain_list.status_message #=> String
    #   resp.firewall_domain_list.managed_owner_name #=> String
    #   resp.firewall_domain_list.creator_request_id #=> String
    #   resp.firewall_domain_list.creation_time #=> String
    #   resp.firewall_domain_list.modification_time #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/CreateFirewallDomainList AWS API Documentation
    #
    # @overload create_firewall_domain_list(params = {})
    # @param [Hash] params ({})
    def create_firewall_domain_list(params = {}, options = {})
      req = build_request(:create_firewall_domain_list, params)
      req.send_request(options)
    end

    # Creates a single DNS Firewall rule in the specified rule group, using
    # the specified domain list.
    #
    # @option params [required, String] :creator_request_id
    #   A unique string that identifies the request and that allows you to
    #   retry failed requests without the risk of running the operation twice.
    #   `CreatorRequestId` can be any unique string, for example, a date/time
    #   stamp.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :firewall_rule_group_id
    #   The unique identifier of the firewall rule group where you want to
    #   create the rule.
    #
    # @option params [required, String] :firewall_domain_list_id
    #   The ID of the domain list that you want to use in the rule.
    #
    # @option params [required, Integer] :priority
    #   The setting that determines the processing order of the rule in the
    #   rule group. DNS Firewall processes the rules in a rule group by order
    #   of priority, starting from the lowest setting.
    #
    #   You must specify a unique priority for each rule in a rule group. To
    #   make it easier to insert rules later, leave space between the numbers,
    #   for example, use 100, 200, and so on. You can change the priority
    #   setting for the rules in a rule group at any time.
    #
    # @option params [required, String] :action
    #   The action that DNS Firewall should take on a DNS query when it
    #   matches one of the domains in the rule's domain list:
    #
    #   * `ALLOW` - Permit the request to go through.
    #
    #   * `ALERT` - Permit the request and send metrics and logs to Cloud
    #     Watch.
    #
    #   * `BLOCK` - Disallow the request. This option requires additional
    #     details in the rule's `BlockResponse`.
    #
    # @option params [String] :block_response
    #   The way that you want DNS Firewall to block the request, used with the
    #   rule action setting `BLOCK`.
    #
    #   * `NODATA` - Respond indicating that the query was successful, but no
    #     response is available for it.
    #
    #   * `NXDOMAIN` - Respond indicating that the domain name that's in the
    #     query doesn't exist.
    #
    #   * `OVERRIDE` - Provide a custom override in the response. This option
    #     requires custom handling details in the rule's `BlockOverride*`
    #     settings.
    #
    #   This setting is required if the rule action setting is `BLOCK`.
    #
    # @option params [String] :block_override_domain
    #   The custom DNS record to send back in response to the query. Used for
    #   the rule action `BLOCK` with a `BlockResponse` setting of `OVERRIDE`.
    #
    #   This setting is required if the `BlockResponse` setting is `OVERRIDE`.
    #
    # @option params [String] :block_override_dns_type
    #   The DNS record's type. This determines the format of the record value
    #   that you provided in `BlockOverrideDomain`. Used for the rule action
    #   `BLOCK` with a `BlockResponse` setting of `OVERRIDE`.
    #
    #   This setting is required if the `BlockResponse` setting is `OVERRIDE`.
    #
    # @option params [Integer] :block_override_ttl
    #   The recommended amount of time, in seconds, for the DNS resolver or
    #   web browser to cache the provided override record. Used for the rule
    #   action `BLOCK` with a `BlockResponse` setting of `OVERRIDE`.
    #
    #   This setting is required if the `BlockResponse` setting is `OVERRIDE`.
    #
    # @option params [required, String] :name
    #   A name that lets you identify the rule in the rule group.
    #
    # @return [Types::CreateFirewallRuleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateFirewallRuleResponse#firewall_rule #firewall_rule} => Types::FirewallRule
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_firewall_rule({
    #     creator_request_id: "CreatorRequestId", # required
    #     firewall_rule_group_id: "ResourceId", # required
    #     firewall_domain_list_id: "ResourceId", # required
    #     priority: 1, # required
    #     action: "ALLOW", # required, accepts ALLOW, BLOCK, ALERT
    #     block_response: "NODATA", # accepts NODATA, NXDOMAIN, OVERRIDE
    #     block_override_domain: "BlockOverrideDomain",
    #     block_override_dns_type: "CNAME", # accepts CNAME
    #     block_override_ttl: 1,
    #     name: "Name", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.firewall_rule.firewall_rule_group_id #=> String
    #   resp.firewall_rule.firewall_domain_list_id #=> String
    #   resp.firewall_rule.name #=> String
    #   resp.firewall_rule.priority #=> Integer
    #   resp.firewall_rule.action #=> String, one of "ALLOW", "BLOCK", "ALERT"
    #   resp.firewall_rule.block_response #=> String, one of "NODATA", "NXDOMAIN", "OVERRIDE"
    #   resp.firewall_rule.block_override_domain #=> String
    #   resp.firewall_rule.block_override_dns_type #=> String, one of "CNAME"
    #   resp.firewall_rule.block_override_ttl #=> Integer
    #   resp.firewall_rule.creator_request_id #=> String
    #   resp.firewall_rule.creation_time #=> String
    #   resp.firewall_rule.modification_time #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/CreateFirewallRule AWS API Documentation
    #
    # @overload create_firewall_rule(params = {})
    # @param [Hash] params ({})
    def create_firewall_rule(params = {}, options = {})
      req = build_request(:create_firewall_rule, params)
      req.send_request(options)
    end

    # Creates an empty DNS Firewall rule group for filtering DNS network
    # traffic in a VPC. You can add rules to the new rule group by calling
    # CreateFirewallRule.
    #
    # @option params [required, String] :creator_request_id
    #   A unique string defined by you to identify the request. This allows
    #   you to retry failed requests without the risk of running the operation
    #   twice. This can be any unique string, for example, a timestamp.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :name
    #   A name that lets you identify the rule group, to manage and use it.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of the tag keys and values that you want to associate with the
    #   rule group.
    #
    # @return [Types::CreateFirewallRuleGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateFirewallRuleGroupResponse#firewall_rule_group #firewall_rule_group} => Types::FirewallRuleGroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_firewall_rule_group({
    #     creator_request_id: "CreatorRequestId", # required
    #     name: "Name", # required
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
    #   resp.firewall_rule_group.id #=> String
    #   resp.firewall_rule_group.arn #=> String
    #   resp.firewall_rule_group.name #=> String
    #   resp.firewall_rule_group.rule_count #=> Integer
    #   resp.firewall_rule_group.status #=> String, one of "COMPLETE", "DELETING", "UPDATING"
    #   resp.firewall_rule_group.status_message #=> String
    #   resp.firewall_rule_group.owner_id #=> String
    #   resp.firewall_rule_group.creator_request_id #=> String
    #   resp.firewall_rule_group.share_status #=> String, one of "NOT_SHARED", "SHARED_WITH_ME", "SHARED_BY_ME"
    #   resp.firewall_rule_group.creation_time #=> String
    #   resp.firewall_rule_group.modification_time #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/CreateFirewallRuleGroup AWS API Documentation
    #
    # @overload create_firewall_rule_group(params = {})
    # @param [Hash] params ({})
    def create_firewall_rule_group(params = {}, options = {})
      req = build_request(:create_firewall_rule_group, params)
      req.send_request(options)
    end

    # Creates a Resolver endpoint. There are two types of Resolver
    # endpoints, inbound and outbound:
    #
    # * An *inbound Resolver endpoint* forwards DNS queries to the DNS
    #   service for a VPC from your network.
    #
    # * An *outbound Resolver endpoint* forwards DNS queries from the DNS
    #   service for a VPC to your network.
    #
    # @option params [required, String] :creator_request_id
    #   A unique string that identifies the request and that allows failed
    #   requests to be retried without the risk of running the operation
    #   twice. `CreatorRequestId` can be any unique string, for example, a
    #   date/time stamp.
    #
    # @option params [String] :name
    #   A friendly name that lets you easily find a configuration in the
    #   Resolver dashboard in the Route 53 console.
    #
    # @option params [required, Array<String>] :security_group_ids
    #   The ID of one or more security groups that you want to use to control
    #   access to this VPC. The security group that you specify must include
    #   one or more inbound rules (for inbound Resolver endpoints) or outbound
    #   rules (for outbound Resolver endpoints). Inbound and outbound rules
    #   must allow TCP and UDP access. For inbound access, open port 53. For
    #   outbound access, open the port that you're using for DNS queries on
    #   your network.
    #
    # @option params [required, String] :direction
    #   Specify the applicable value:
    #
    #   * `INBOUND`: Resolver forwards DNS queries to the DNS service for a
    #     VPC from your network
    #
    #   * `OUTBOUND`: Resolver forwards DNS queries from the DNS service for a
    #     VPC to your network
    #
    # @option params [required, Array<Types::IpAddressRequest>] :ip_addresses
    #   The subnets and IP addresses in your VPC that DNS queries originate
    #   from (for outbound endpoints) or that you forward DNS queries to (for
    #   inbound endpoints). The subnet ID uniquely identifies a VPC.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of the tag keys and values that you want to associate with the
    #   endpoint.
    #
    # @option params [String] :resolver_endpoint_type
    #   For the endpoint type you can choose either IPv4, IPv6. or dual-stack.
    #   A dual-stack endpoint means that it will resolve via both IPv4 and
    #   IPv6. This endpoint type is applied to all IP addresses.
    #
    # @return [Types::CreateResolverEndpointResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateResolverEndpointResponse#resolver_endpoint #resolver_endpoint} => Types::ResolverEndpoint
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_resolver_endpoint({
    #     creator_request_id: "CreatorRequestId", # required
    #     name: "Name",
    #     security_group_ids: ["ResourceId"], # required
    #     direction: "INBOUND", # required, accepts INBOUND, OUTBOUND
    #     ip_addresses: [ # required
    #       {
    #         subnet_id: "SubnetId", # required
    #         ip: "Ip",
    #         ipv_6: "Ipv6",
    #       },
    #     ],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     resolver_endpoint_type: "IPV6", # accepts IPV6, IPV4, DUALSTACK
    #   })
    #
    # @example Response structure
    #
    #   resp.resolver_endpoint.id #=> String
    #   resp.resolver_endpoint.creator_request_id #=> String
    #   resp.resolver_endpoint.arn #=> String
    #   resp.resolver_endpoint.name #=> String
    #   resp.resolver_endpoint.security_group_ids #=> Array
    #   resp.resolver_endpoint.security_group_ids[0] #=> String
    #   resp.resolver_endpoint.direction #=> String, one of "INBOUND", "OUTBOUND"
    #   resp.resolver_endpoint.ip_address_count #=> Integer
    #   resp.resolver_endpoint.host_vpc_id #=> String
    #   resp.resolver_endpoint.status #=> String, one of "CREATING", "OPERATIONAL", "UPDATING", "AUTO_RECOVERING", "ACTION_NEEDED", "DELETING"
    #   resp.resolver_endpoint.status_message #=> String
    #   resp.resolver_endpoint.creation_time #=> String
    #   resp.resolver_endpoint.modification_time #=> String
    #   resp.resolver_endpoint.resolver_endpoint_type #=> String, one of "IPV6", "IPV4", "DUALSTACK"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/CreateResolverEndpoint AWS API Documentation
    #
    # @overload create_resolver_endpoint(params = {})
    # @param [Hash] params ({})
    def create_resolver_endpoint(params = {}, options = {})
      req = build_request(:create_resolver_endpoint, params)
      req.send_request(options)
    end

    # Creates a Resolver query logging configuration, which defines where
    # you want Resolver to save DNS query logs that originate in your VPCs.
    # Resolver can log queries only for VPCs that are in the same Region as
    # the query logging configuration.
    #
    # To specify which VPCs you want to log queries for, you use
    # `AssociateResolverQueryLogConfig`. For more information, see
    # [AssociateResolverQueryLogConfig][1].
    #
    # You can optionally use Resource Access Manager (RAM) to share a query
    # logging configuration with other Amazon Web Services accounts. The
    # other accounts can then associate VPCs with the configuration. The
    # query logs that Resolver creates for a configuration include all DNS
    # queries that originate in all VPCs that are associated with the
    # configuration.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_AssociateResolverQueryLogConfig.html
    #
    # @option params [required, String] :name
    #   The name that you want to give the query logging configuration.
    #
    # @option params [required, String] :destination_arn
    #   The ARN of the resource that you want Resolver to send query logs. You
    #   can send query logs to an S3 bucket, a CloudWatch Logs log group, or a
    #   Kinesis Data Firehose delivery stream. Examples of valid values
    #   include the following:
    #
    #   * **S3 bucket**:
    #
    #     `arn:aws:s3:::examplebucket`
    #
    #     You can optionally append a file prefix to the end of the ARN.
    #
    #     `arn:aws:s3:::examplebucket/development/`
    #
    #   * **CloudWatch Logs log group**:
    #
    #     `arn:aws:logs:us-west-1:123456789012:log-group:/mystack-testgroup-12ABC1AB12A1:*`
    #
    #   * **Kinesis Data Firehose delivery stream**:
    #
    #     `arn:aws:kinesis:us-east-2:0123456789:stream/my_stream_name`
    #
    # @option params [required, String] :creator_request_id
    #   A unique string that identifies the request and that allows failed
    #   requests to be retried without the risk of running the operation
    #   twice. `CreatorRequestId` can be any unique string, for example, a
    #   date/time stamp.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of the tag keys and values that you want to associate with the
    #   query logging configuration.
    #
    # @return [Types::CreateResolverQueryLogConfigResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateResolverQueryLogConfigResponse#resolver_query_log_config #resolver_query_log_config} => Types::ResolverQueryLogConfig
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_resolver_query_log_config({
    #     name: "ResolverQueryLogConfigName", # required
    #     destination_arn: "DestinationArn", # required
    #     creator_request_id: "CreatorRequestId", # required
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
    #   resp.resolver_query_log_config.id #=> String
    #   resp.resolver_query_log_config.owner_id #=> String
    #   resp.resolver_query_log_config.status #=> String, one of "CREATING", "CREATED", "DELETING", "FAILED"
    #   resp.resolver_query_log_config.share_status #=> String, one of "NOT_SHARED", "SHARED_WITH_ME", "SHARED_BY_ME"
    #   resp.resolver_query_log_config.association_count #=> Integer
    #   resp.resolver_query_log_config.arn #=> String
    #   resp.resolver_query_log_config.name #=> String
    #   resp.resolver_query_log_config.destination_arn #=> String
    #   resp.resolver_query_log_config.creator_request_id #=> String
    #   resp.resolver_query_log_config.creation_time #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/CreateResolverQueryLogConfig AWS API Documentation
    #
    # @overload create_resolver_query_log_config(params = {})
    # @param [Hash] params ({})
    def create_resolver_query_log_config(params = {}, options = {})
      req = build_request(:create_resolver_query_log_config, params)
      req.send_request(options)
    end

    # For DNS queries that originate in your VPCs, specifies which Resolver
    # endpoint the queries pass through, one domain name that you want to
    # forward to your network, and the IP addresses of the DNS resolvers in
    # your network.
    #
    # @option params [required, String] :creator_request_id
    #   A unique string that identifies the request and that allows failed
    #   requests to be retried without the risk of running the operation
    #   twice. `CreatorRequestId` can be any unique string, for example, a
    #   date/time stamp.
    #
    # @option params [String] :name
    #   A friendly name that lets you easily find a rule in the Resolver
    #   dashboard in the Route 53 console.
    #
    # @option params [required, String] :rule_type
    #   When you want to forward DNS queries for specified domain name to
    #   resolvers on your network, specify `FORWARD`.
    #
    #   When you have a forwarding rule to forward DNS queries for a domain to
    #   your network and you want Resolver to process queries for a subdomain
    #   of that domain, specify `SYSTEM`.
    #
    #   For example, to forward DNS queries for example.com to resolvers on
    #   your network, you create a rule and specify `FORWARD` for `RuleType`.
    #   To then have Resolver process queries for apex.example.com, you create
    #   a rule and specify `SYSTEM` for `RuleType`.
    #
    #   Currently, only Resolver can create rules that have a value of
    #   `RECURSIVE` for `RuleType`.
    #
    # @option params [required, String] :domain_name
    #   DNS queries for this domain name are forwarded to the IP addresses
    #   that you specify in `TargetIps`. If a query matches multiple Resolver
    #   rules (example.com and www.example.com), outbound DNS queries are
    #   routed using the Resolver rule that contains the most specific domain
    #   name (www.example.com).
    #
    # @option params [Array<Types::TargetAddress>] :target_ips
    #   The IPs that you want Resolver to forward DNS queries to. You can
    #   specify only IPv4 addresses. Separate IP addresses with a space.
    #
    #   `TargetIps` is available only when the value of `Rule type` is
    #   `FORWARD`.
    #
    # @option params [String] :resolver_endpoint_id
    #   The ID of the outbound Resolver endpoint that you want to use to route
    #   DNS queries to the IP addresses that you specify in `TargetIps`.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of the tag keys and values that you want to associate with the
    #   endpoint.
    #
    # @return [Types::CreateResolverRuleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateResolverRuleResponse#resolver_rule #resolver_rule} => Types::ResolverRule
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_resolver_rule({
    #     creator_request_id: "CreatorRequestId", # required
    #     name: "Name",
    #     rule_type: "FORWARD", # required, accepts FORWARD, SYSTEM, RECURSIVE
    #     domain_name: "DomainName", # required
    #     target_ips: [
    #       {
    #         ip: "Ip",
    #         port: 1,
    #         ipv_6: "Ipv6",
    #       },
    #     ],
    #     resolver_endpoint_id: "ResourceId",
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
    #   resp.resolver_rule.id #=> String
    #   resp.resolver_rule.creator_request_id #=> String
    #   resp.resolver_rule.arn #=> String
    #   resp.resolver_rule.domain_name #=> String
    #   resp.resolver_rule.status #=> String, one of "COMPLETE", "DELETING", "UPDATING", "FAILED"
    #   resp.resolver_rule.status_message #=> String
    #   resp.resolver_rule.rule_type #=> String, one of "FORWARD", "SYSTEM", "RECURSIVE"
    #   resp.resolver_rule.name #=> String
    #   resp.resolver_rule.target_ips #=> Array
    #   resp.resolver_rule.target_ips[0].ip #=> String
    #   resp.resolver_rule.target_ips[0].port #=> Integer
    #   resp.resolver_rule.target_ips[0].ipv_6 #=> String
    #   resp.resolver_rule.resolver_endpoint_id #=> String
    #   resp.resolver_rule.owner_id #=> String
    #   resp.resolver_rule.share_status #=> String, one of "NOT_SHARED", "SHARED_WITH_ME", "SHARED_BY_ME"
    #   resp.resolver_rule.creation_time #=> String
    #   resp.resolver_rule.modification_time #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/CreateResolverRule AWS API Documentation
    #
    # @overload create_resolver_rule(params = {})
    # @param [Hash] params ({})
    def create_resolver_rule(params = {}, options = {})
      req = build_request(:create_resolver_rule, params)
      req.send_request(options)
    end

    # Deletes the specified domain list.
    #
    # @option params [required, String] :firewall_domain_list_id
    #   The ID of the domain list that you want to delete.
    #
    # @return [Types::DeleteFirewallDomainListResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteFirewallDomainListResponse#firewall_domain_list #firewall_domain_list} => Types::FirewallDomainList
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_firewall_domain_list({
    #     firewall_domain_list_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.firewall_domain_list.id #=> String
    #   resp.firewall_domain_list.arn #=> String
    #   resp.firewall_domain_list.name #=> String
    #   resp.firewall_domain_list.domain_count #=> Integer
    #   resp.firewall_domain_list.status #=> String, one of "COMPLETE", "COMPLETE_IMPORT_FAILED", "IMPORTING", "DELETING", "UPDATING"
    #   resp.firewall_domain_list.status_message #=> String
    #   resp.firewall_domain_list.managed_owner_name #=> String
    #   resp.firewall_domain_list.creator_request_id #=> String
    #   resp.firewall_domain_list.creation_time #=> String
    #   resp.firewall_domain_list.modification_time #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/DeleteFirewallDomainList AWS API Documentation
    #
    # @overload delete_firewall_domain_list(params = {})
    # @param [Hash] params ({})
    def delete_firewall_domain_list(params = {}, options = {})
      req = build_request(:delete_firewall_domain_list, params)
      req.send_request(options)
    end

    # Deletes the specified firewall rule.
    #
    # @option params [required, String] :firewall_rule_group_id
    #   The unique identifier of the firewall rule group that you want to
    #   delete the rule from.
    #
    # @option params [required, String] :firewall_domain_list_id
    #   The ID of the domain list that's used in the rule.
    #
    # @return [Types::DeleteFirewallRuleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteFirewallRuleResponse#firewall_rule #firewall_rule} => Types::FirewallRule
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_firewall_rule({
    #     firewall_rule_group_id: "ResourceId", # required
    #     firewall_domain_list_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.firewall_rule.firewall_rule_group_id #=> String
    #   resp.firewall_rule.firewall_domain_list_id #=> String
    #   resp.firewall_rule.name #=> String
    #   resp.firewall_rule.priority #=> Integer
    #   resp.firewall_rule.action #=> String, one of "ALLOW", "BLOCK", "ALERT"
    #   resp.firewall_rule.block_response #=> String, one of "NODATA", "NXDOMAIN", "OVERRIDE"
    #   resp.firewall_rule.block_override_domain #=> String
    #   resp.firewall_rule.block_override_dns_type #=> String, one of "CNAME"
    #   resp.firewall_rule.block_override_ttl #=> Integer
    #   resp.firewall_rule.creator_request_id #=> String
    #   resp.firewall_rule.creation_time #=> String
    #   resp.firewall_rule.modification_time #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/DeleteFirewallRule AWS API Documentation
    #
    # @overload delete_firewall_rule(params = {})
    # @param [Hash] params ({})
    def delete_firewall_rule(params = {}, options = {})
      req = build_request(:delete_firewall_rule, params)
      req.send_request(options)
    end

    # Deletes the specified firewall rule group.
    #
    # @option params [required, String] :firewall_rule_group_id
    #   The unique identifier of the firewall rule group that you want to
    #   delete.
    #
    # @return [Types::DeleteFirewallRuleGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteFirewallRuleGroupResponse#firewall_rule_group #firewall_rule_group} => Types::FirewallRuleGroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_firewall_rule_group({
    #     firewall_rule_group_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.firewall_rule_group.id #=> String
    #   resp.firewall_rule_group.arn #=> String
    #   resp.firewall_rule_group.name #=> String
    #   resp.firewall_rule_group.rule_count #=> Integer
    #   resp.firewall_rule_group.status #=> String, one of "COMPLETE", "DELETING", "UPDATING"
    #   resp.firewall_rule_group.status_message #=> String
    #   resp.firewall_rule_group.owner_id #=> String
    #   resp.firewall_rule_group.creator_request_id #=> String
    #   resp.firewall_rule_group.share_status #=> String, one of "NOT_SHARED", "SHARED_WITH_ME", "SHARED_BY_ME"
    #   resp.firewall_rule_group.creation_time #=> String
    #   resp.firewall_rule_group.modification_time #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/DeleteFirewallRuleGroup AWS API Documentation
    #
    # @overload delete_firewall_rule_group(params = {})
    # @param [Hash] params ({})
    def delete_firewall_rule_group(params = {}, options = {})
      req = build_request(:delete_firewall_rule_group, params)
      req.send_request(options)
    end

    # Deletes a Resolver endpoint. The effect of deleting a Resolver
    # endpoint depends on whether it's an inbound or an outbound Resolver
    # endpoint:
    #
    # * **Inbound**: DNS queries from your network are no longer routed to
    #   the DNS service for the specified VPC.
    #
    # * **Outbound**: DNS queries from a VPC are no longer routed to your
    #   network.
    #
    # @option params [required, String] :resolver_endpoint_id
    #   The ID of the Resolver endpoint that you want to delete.
    #
    # @return [Types::DeleteResolverEndpointResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteResolverEndpointResponse#resolver_endpoint #resolver_endpoint} => Types::ResolverEndpoint
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_resolver_endpoint({
    #     resolver_endpoint_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.resolver_endpoint.id #=> String
    #   resp.resolver_endpoint.creator_request_id #=> String
    #   resp.resolver_endpoint.arn #=> String
    #   resp.resolver_endpoint.name #=> String
    #   resp.resolver_endpoint.security_group_ids #=> Array
    #   resp.resolver_endpoint.security_group_ids[0] #=> String
    #   resp.resolver_endpoint.direction #=> String, one of "INBOUND", "OUTBOUND"
    #   resp.resolver_endpoint.ip_address_count #=> Integer
    #   resp.resolver_endpoint.host_vpc_id #=> String
    #   resp.resolver_endpoint.status #=> String, one of "CREATING", "OPERATIONAL", "UPDATING", "AUTO_RECOVERING", "ACTION_NEEDED", "DELETING"
    #   resp.resolver_endpoint.status_message #=> String
    #   resp.resolver_endpoint.creation_time #=> String
    #   resp.resolver_endpoint.modification_time #=> String
    #   resp.resolver_endpoint.resolver_endpoint_type #=> String, one of "IPV6", "IPV4", "DUALSTACK"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/DeleteResolverEndpoint AWS API Documentation
    #
    # @overload delete_resolver_endpoint(params = {})
    # @param [Hash] params ({})
    def delete_resolver_endpoint(params = {}, options = {})
      req = build_request(:delete_resolver_endpoint, params)
      req.send_request(options)
    end

    # Deletes a query logging configuration. When you delete a
    # configuration, Resolver stops logging DNS queries for all of the
    # Amazon VPCs that are associated with the configuration. This also
    # applies if the query logging configuration is shared with other Amazon
    # Web Services accounts, and the other accounts have associated VPCs
    # with the shared configuration.
    #
    # Before you can delete a query logging configuration, you must first
    # disassociate all VPCs from the configuration. See
    # [DisassociateResolverQueryLogConfig][1].
    #
    # If you used Resource Access Manager (RAM) to share a query logging
    # configuration with other accounts, you must stop sharing the
    # configuration before you can delete a configuration. The accounts that
    # you shared the configuration with can first disassociate VPCs that
    # they associated with the configuration, but that's not necessary. If
    # you stop sharing the configuration, those VPCs are automatically
    # disassociated from the configuration.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_DisassociateResolverQueryLogConfig.html
    #
    # @option params [required, String] :resolver_query_log_config_id
    #   The ID of the query logging configuration that you want to delete.
    #
    # @return [Types::DeleteResolverQueryLogConfigResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteResolverQueryLogConfigResponse#resolver_query_log_config #resolver_query_log_config} => Types::ResolverQueryLogConfig
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_resolver_query_log_config({
    #     resolver_query_log_config_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.resolver_query_log_config.id #=> String
    #   resp.resolver_query_log_config.owner_id #=> String
    #   resp.resolver_query_log_config.status #=> String, one of "CREATING", "CREATED", "DELETING", "FAILED"
    #   resp.resolver_query_log_config.share_status #=> String, one of "NOT_SHARED", "SHARED_WITH_ME", "SHARED_BY_ME"
    #   resp.resolver_query_log_config.association_count #=> Integer
    #   resp.resolver_query_log_config.arn #=> String
    #   resp.resolver_query_log_config.name #=> String
    #   resp.resolver_query_log_config.destination_arn #=> String
    #   resp.resolver_query_log_config.creator_request_id #=> String
    #   resp.resolver_query_log_config.creation_time #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/DeleteResolverQueryLogConfig AWS API Documentation
    #
    # @overload delete_resolver_query_log_config(params = {})
    # @param [Hash] params ({})
    def delete_resolver_query_log_config(params = {}, options = {})
      req = build_request(:delete_resolver_query_log_config, params)
      req.send_request(options)
    end

    # Deletes a Resolver rule. Before you can delete a Resolver rule, you
    # must disassociate it from all the VPCs that you associated the
    # Resolver rule with. For more information, see
    # [DisassociateResolverRule][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_DisassociateResolverRule.html
    #
    # @option params [required, String] :resolver_rule_id
    #   The ID of the Resolver rule that you want to delete.
    #
    # @return [Types::DeleteResolverRuleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteResolverRuleResponse#resolver_rule #resolver_rule} => Types::ResolverRule
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_resolver_rule({
    #     resolver_rule_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.resolver_rule.id #=> String
    #   resp.resolver_rule.creator_request_id #=> String
    #   resp.resolver_rule.arn #=> String
    #   resp.resolver_rule.domain_name #=> String
    #   resp.resolver_rule.status #=> String, one of "COMPLETE", "DELETING", "UPDATING", "FAILED"
    #   resp.resolver_rule.status_message #=> String
    #   resp.resolver_rule.rule_type #=> String, one of "FORWARD", "SYSTEM", "RECURSIVE"
    #   resp.resolver_rule.name #=> String
    #   resp.resolver_rule.target_ips #=> Array
    #   resp.resolver_rule.target_ips[0].ip #=> String
    #   resp.resolver_rule.target_ips[0].port #=> Integer
    #   resp.resolver_rule.target_ips[0].ipv_6 #=> String
    #   resp.resolver_rule.resolver_endpoint_id #=> String
    #   resp.resolver_rule.owner_id #=> String
    #   resp.resolver_rule.share_status #=> String, one of "NOT_SHARED", "SHARED_WITH_ME", "SHARED_BY_ME"
    #   resp.resolver_rule.creation_time #=> String
    #   resp.resolver_rule.modification_time #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/DeleteResolverRule AWS API Documentation
    #
    # @overload delete_resolver_rule(params = {})
    # @param [Hash] params ({})
    def delete_resolver_rule(params = {}, options = {})
      req = build_request(:delete_resolver_rule, params)
      req.send_request(options)
    end

    # Disassociates a FirewallRuleGroup from a VPC, to remove DNS filtering
    # from the VPC.
    #
    # @option params [required, String] :firewall_rule_group_association_id
    #   The identifier of the FirewallRuleGroupAssociation.
    #
    # @return [Types::DisassociateFirewallRuleGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DisassociateFirewallRuleGroupResponse#firewall_rule_group_association #firewall_rule_group_association} => Types::FirewallRuleGroupAssociation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_firewall_rule_group({
    #     firewall_rule_group_association_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.firewall_rule_group_association.id #=> String
    #   resp.firewall_rule_group_association.arn #=> String
    #   resp.firewall_rule_group_association.firewall_rule_group_id #=> String
    #   resp.firewall_rule_group_association.vpc_id #=> String
    #   resp.firewall_rule_group_association.name #=> String
    #   resp.firewall_rule_group_association.priority #=> Integer
    #   resp.firewall_rule_group_association.mutation_protection #=> String, one of "ENABLED", "DISABLED"
    #   resp.firewall_rule_group_association.managed_owner_name #=> String
    #   resp.firewall_rule_group_association.status #=> String, one of "COMPLETE", "DELETING", "UPDATING"
    #   resp.firewall_rule_group_association.status_message #=> String
    #   resp.firewall_rule_group_association.creator_request_id #=> String
    #   resp.firewall_rule_group_association.creation_time #=> String
    #   resp.firewall_rule_group_association.modification_time #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/DisassociateFirewallRuleGroup AWS API Documentation
    #
    # @overload disassociate_firewall_rule_group(params = {})
    # @param [Hash] params ({})
    def disassociate_firewall_rule_group(params = {}, options = {})
      req = build_request(:disassociate_firewall_rule_group, params)
      req.send_request(options)
    end

    # Removes IP addresses from an inbound or an outbound Resolver endpoint.
    # If you want to remove more than one IP address, submit one
    # `DisassociateResolverEndpointIpAddress` request for each IP address.
    #
    # To add an IP address to an endpoint, see
    # [AssociateResolverEndpointIpAddress][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_AssociateResolverEndpointIpAddress.html
    #
    # @option params [required, String] :resolver_endpoint_id
    #   The ID of the Resolver endpoint that you want to disassociate an IP
    #   address from.
    #
    # @option params [required, Types::IpAddressUpdate] :ip_address
    #   The IPv4 address that you want to remove from a Resolver endpoint.
    #
    # @return [Types::DisassociateResolverEndpointIpAddressResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DisassociateResolverEndpointIpAddressResponse#resolver_endpoint #resolver_endpoint} => Types::ResolverEndpoint
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_resolver_endpoint_ip_address({
    #     resolver_endpoint_id: "ResourceId", # required
    #     ip_address: { # required
    #       ip_id: "ResourceId",
    #       subnet_id: "SubnetId",
    #       ip: "Ip",
    #       ipv_6: "Ipv6",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.resolver_endpoint.id #=> String
    #   resp.resolver_endpoint.creator_request_id #=> String
    #   resp.resolver_endpoint.arn #=> String
    #   resp.resolver_endpoint.name #=> String
    #   resp.resolver_endpoint.security_group_ids #=> Array
    #   resp.resolver_endpoint.security_group_ids[0] #=> String
    #   resp.resolver_endpoint.direction #=> String, one of "INBOUND", "OUTBOUND"
    #   resp.resolver_endpoint.ip_address_count #=> Integer
    #   resp.resolver_endpoint.host_vpc_id #=> String
    #   resp.resolver_endpoint.status #=> String, one of "CREATING", "OPERATIONAL", "UPDATING", "AUTO_RECOVERING", "ACTION_NEEDED", "DELETING"
    #   resp.resolver_endpoint.status_message #=> String
    #   resp.resolver_endpoint.creation_time #=> String
    #   resp.resolver_endpoint.modification_time #=> String
    #   resp.resolver_endpoint.resolver_endpoint_type #=> String, one of "IPV6", "IPV4", "DUALSTACK"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/DisassociateResolverEndpointIpAddress AWS API Documentation
    #
    # @overload disassociate_resolver_endpoint_ip_address(params = {})
    # @param [Hash] params ({})
    def disassociate_resolver_endpoint_ip_address(params = {}, options = {})
      req = build_request(:disassociate_resolver_endpoint_ip_address, params)
      req.send_request(options)
    end

    # Disassociates a VPC from a query logging configuration.
    #
    # <note markdown="1"> Before you can delete a query logging configuration, you must first
    # disassociate all VPCs from the configuration. If you used Resource
    # Access Manager (RAM) to share a query logging configuration with other
    # accounts, VPCs can be disassociated from the configuration in the
    # following ways:
    #
    #  * The accounts that you shared the configuration with can disassociate
    #   VPCs from the configuration.
    #
    # * You can stop sharing the configuration.
    #
    #  </note>
    #
    # @option params [required, String] :resolver_query_log_config_id
    #   The ID of the query logging configuration that you want to
    #   disassociate a specified VPC from.
    #
    # @option params [required, String] :resource_id
    #   The ID of the Amazon VPC that you want to disassociate from a
    #   specified query logging configuration.
    #
    # @return [Types::DisassociateResolverQueryLogConfigResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DisassociateResolverQueryLogConfigResponse#resolver_query_log_config_association #resolver_query_log_config_association} => Types::ResolverQueryLogConfigAssociation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_resolver_query_log_config({
    #     resolver_query_log_config_id: "ResourceId", # required
    #     resource_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.resolver_query_log_config_association.id #=> String
    #   resp.resolver_query_log_config_association.resolver_query_log_config_id #=> String
    #   resp.resolver_query_log_config_association.resource_id #=> String
    #   resp.resolver_query_log_config_association.status #=> String, one of "CREATING", "ACTIVE", "ACTION_NEEDED", "DELETING", "FAILED"
    #   resp.resolver_query_log_config_association.error #=> String, one of "NONE", "DESTINATION_NOT_FOUND", "ACCESS_DENIED", "INTERNAL_SERVICE_ERROR"
    #   resp.resolver_query_log_config_association.error_message #=> String
    #   resp.resolver_query_log_config_association.creation_time #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/DisassociateResolverQueryLogConfig AWS API Documentation
    #
    # @overload disassociate_resolver_query_log_config(params = {})
    # @param [Hash] params ({})
    def disassociate_resolver_query_log_config(params = {}, options = {})
      req = build_request(:disassociate_resolver_query_log_config, params)
      req.send_request(options)
    end

    # Removes the association between a specified Resolver rule and a
    # specified VPC.
    #
    # If you disassociate a Resolver rule from a VPC, Resolver stops
    # forwarding DNS queries for the domain name that you specified in the
    # Resolver rule.
    #
    # @option params [required, String] :vpc_id
    #   The ID of the VPC that you want to disassociate the Resolver rule
    #   from.
    #
    # @option params [required, String] :resolver_rule_id
    #   The ID of the Resolver rule that you want to disassociate from the
    #   specified VPC.
    #
    # @return [Types::DisassociateResolverRuleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DisassociateResolverRuleResponse#resolver_rule_association #resolver_rule_association} => Types::ResolverRuleAssociation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_resolver_rule({
    #     vpc_id: "ResourceId", # required
    #     resolver_rule_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.resolver_rule_association.id #=> String
    #   resp.resolver_rule_association.resolver_rule_id #=> String
    #   resp.resolver_rule_association.name #=> String
    #   resp.resolver_rule_association.vpc_id #=> String
    #   resp.resolver_rule_association.status #=> String, one of "CREATING", "COMPLETE", "DELETING", "FAILED", "OVERRIDDEN"
    #   resp.resolver_rule_association.status_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/DisassociateResolverRule AWS API Documentation
    #
    # @overload disassociate_resolver_rule(params = {})
    # @param [Hash] params ({})
    def disassociate_resolver_rule(params = {}, options = {})
      req = build_request(:disassociate_resolver_rule, params)
      req.send_request(options)
    end

    # Retrieves the configuration of the firewall behavior provided by DNS
    # Firewall for a single VPC from Amazon Virtual Private Cloud (Amazon
    # VPC).
    #
    # @option params [required, String] :resource_id
    #   The ID of the VPC from Amazon VPC that the configuration is for.
    #
    # @return [Types::GetFirewallConfigResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetFirewallConfigResponse#firewall_config #firewall_config} => Types::FirewallConfig
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_firewall_config({
    #     resource_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.firewall_config.id #=> String
    #   resp.firewall_config.resource_id #=> String
    #   resp.firewall_config.owner_id #=> String
    #   resp.firewall_config.firewall_fail_open #=> String, one of "ENABLED", "DISABLED", "USE_LOCAL_RESOURCE_SETTING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/GetFirewallConfig AWS API Documentation
    #
    # @overload get_firewall_config(params = {})
    # @param [Hash] params ({})
    def get_firewall_config(params = {}, options = {})
      req = build_request(:get_firewall_config, params)
      req.send_request(options)
    end

    # Retrieves the specified firewall domain list.
    #
    # @option params [required, String] :firewall_domain_list_id
    #   The ID of the domain list.
    #
    # @return [Types::GetFirewallDomainListResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetFirewallDomainListResponse#firewall_domain_list #firewall_domain_list} => Types::FirewallDomainList
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_firewall_domain_list({
    #     firewall_domain_list_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.firewall_domain_list.id #=> String
    #   resp.firewall_domain_list.arn #=> String
    #   resp.firewall_domain_list.name #=> String
    #   resp.firewall_domain_list.domain_count #=> Integer
    #   resp.firewall_domain_list.status #=> String, one of "COMPLETE", "COMPLETE_IMPORT_FAILED", "IMPORTING", "DELETING", "UPDATING"
    #   resp.firewall_domain_list.status_message #=> String
    #   resp.firewall_domain_list.managed_owner_name #=> String
    #   resp.firewall_domain_list.creator_request_id #=> String
    #   resp.firewall_domain_list.creation_time #=> String
    #   resp.firewall_domain_list.modification_time #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/GetFirewallDomainList AWS API Documentation
    #
    # @overload get_firewall_domain_list(params = {})
    # @param [Hash] params ({})
    def get_firewall_domain_list(params = {}, options = {})
      req = build_request(:get_firewall_domain_list, params)
      req.send_request(options)
    end

    # Retrieves the specified firewall rule group.
    #
    # @option params [required, String] :firewall_rule_group_id
    #   The unique identifier of the firewall rule group.
    #
    # @return [Types::GetFirewallRuleGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetFirewallRuleGroupResponse#firewall_rule_group #firewall_rule_group} => Types::FirewallRuleGroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_firewall_rule_group({
    #     firewall_rule_group_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.firewall_rule_group.id #=> String
    #   resp.firewall_rule_group.arn #=> String
    #   resp.firewall_rule_group.name #=> String
    #   resp.firewall_rule_group.rule_count #=> Integer
    #   resp.firewall_rule_group.status #=> String, one of "COMPLETE", "DELETING", "UPDATING"
    #   resp.firewall_rule_group.status_message #=> String
    #   resp.firewall_rule_group.owner_id #=> String
    #   resp.firewall_rule_group.creator_request_id #=> String
    #   resp.firewall_rule_group.share_status #=> String, one of "NOT_SHARED", "SHARED_WITH_ME", "SHARED_BY_ME"
    #   resp.firewall_rule_group.creation_time #=> String
    #   resp.firewall_rule_group.modification_time #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/GetFirewallRuleGroup AWS API Documentation
    #
    # @overload get_firewall_rule_group(params = {})
    # @param [Hash] params ({})
    def get_firewall_rule_group(params = {}, options = {})
      req = build_request(:get_firewall_rule_group, params)
      req.send_request(options)
    end

    # Retrieves a firewall rule group association, which enables DNS
    # filtering for a VPC with one rule group. A VPC can have more than one
    # firewall rule group association, and a rule group can be associated
    # with more than one VPC.
    #
    # @option params [required, String] :firewall_rule_group_association_id
    #   The identifier of the FirewallRuleGroupAssociation.
    #
    # @return [Types::GetFirewallRuleGroupAssociationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetFirewallRuleGroupAssociationResponse#firewall_rule_group_association #firewall_rule_group_association} => Types::FirewallRuleGroupAssociation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_firewall_rule_group_association({
    #     firewall_rule_group_association_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.firewall_rule_group_association.id #=> String
    #   resp.firewall_rule_group_association.arn #=> String
    #   resp.firewall_rule_group_association.firewall_rule_group_id #=> String
    #   resp.firewall_rule_group_association.vpc_id #=> String
    #   resp.firewall_rule_group_association.name #=> String
    #   resp.firewall_rule_group_association.priority #=> Integer
    #   resp.firewall_rule_group_association.mutation_protection #=> String, one of "ENABLED", "DISABLED"
    #   resp.firewall_rule_group_association.managed_owner_name #=> String
    #   resp.firewall_rule_group_association.status #=> String, one of "COMPLETE", "DELETING", "UPDATING"
    #   resp.firewall_rule_group_association.status_message #=> String
    #   resp.firewall_rule_group_association.creator_request_id #=> String
    #   resp.firewall_rule_group_association.creation_time #=> String
    #   resp.firewall_rule_group_association.modification_time #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/GetFirewallRuleGroupAssociation AWS API Documentation
    #
    # @overload get_firewall_rule_group_association(params = {})
    # @param [Hash] params ({})
    def get_firewall_rule_group_association(params = {}, options = {})
      req = build_request(:get_firewall_rule_group_association, params)
      req.send_request(options)
    end

    # Returns the Identity and Access Management (Amazon Web Services IAM)
    # policy for sharing the specified rule group. You can use the policy to
    # share the rule group using Resource Access Manager (RAM).
    #
    # @option params [required, String] :arn
    #   The ARN (Amazon Resource Name) for the rule group.
    #
    # @return [Types::GetFirewallRuleGroupPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetFirewallRuleGroupPolicyResponse#firewall_rule_group_policy #firewall_rule_group_policy} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_firewall_rule_group_policy({
    #     arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.firewall_rule_group_policy #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/GetFirewallRuleGroupPolicy AWS API Documentation
    #
    # @overload get_firewall_rule_group_policy(params = {})
    # @param [Hash] params ({})
    def get_firewall_rule_group_policy(params = {}, options = {})
      req = build_request(:get_firewall_rule_group_policy, params)
      req.send_request(options)
    end

    # Retrieves the behavior configuration of Route 53 Resolver behavior for
    # a single VPC from Amazon Virtual Private Cloud.
    #
    # @option params [required, String] :resource_id
    #   Resource ID of the Amazon VPC that you want to get information about.
    #
    # @return [Types::GetResolverConfigResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetResolverConfigResponse#resolver_config #resolver_config} => Types::ResolverConfig
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resolver_config({
    #     resource_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.resolver_config.id #=> String
    #   resp.resolver_config.resource_id #=> String
    #   resp.resolver_config.owner_id #=> String
    #   resp.resolver_config.autodefined_reverse #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED", "UPDATING_TO_USE_LOCAL_RESOURCE_SETTING", "USE_LOCAL_RESOURCE_SETTING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/GetResolverConfig AWS API Documentation
    #
    # @overload get_resolver_config(params = {})
    # @param [Hash] params ({})
    def get_resolver_config(params = {}, options = {})
      req = build_request(:get_resolver_config, params)
      req.send_request(options)
    end

    # Gets DNSSEC validation information for a specified resource.
    #
    # @option params [required, String] :resource_id
    #   The ID of the virtual private cloud (VPC) for the DNSSEC validation
    #   status.
    #
    # @return [Types::GetResolverDnssecConfigResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetResolverDnssecConfigResponse#resolver_dnssec_config #resolver_dnssec_config} => Types::ResolverDnssecConfig
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resolver_dnssec_config({
    #     resource_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.resolver_dnssec_config.id #=> String
    #   resp.resolver_dnssec_config.owner_id #=> String
    #   resp.resolver_dnssec_config.resource_id #=> String
    #   resp.resolver_dnssec_config.validation_status #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED", "UPDATING_TO_USE_LOCAL_RESOURCE_SETTING", "USE_LOCAL_RESOURCE_SETTING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/GetResolverDnssecConfig AWS API Documentation
    #
    # @overload get_resolver_dnssec_config(params = {})
    # @param [Hash] params ({})
    def get_resolver_dnssec_config(params = {}, options = {})
      req = build_request(:get_resolver_dnssec_config, params)
      req.send_request(options)
    end

    # Gets information about a specified Resolver endpoint, such as whether
    # it's an inbound or an outbound Resolver endpoint, and the current
    # status of the endpoint.
    #
    # @option params [required, String] :resolver_endpoint_id
    #   The ID of the Resolver endpoint that you want to get information
    #   about.
    #
    # @return [Types::GetResolverEndpointResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetResolverEndpointResponse#resolver_endpoint #resolver_endpoint} => Types::ResolverEndpoint
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resolver_endpoint({
    #     resolver_endpoint_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.resolver_endpoint.id #=> String
    #   resp.resolver_endpoint.creator_request_id #=> String
    #   resp.resolver_endpoint.arn #=> String
    #   resp.resolver_endpoint.name #=> String
    #   resp.resolver_endpoint.security_group_ids #=> Array
    #   resp.resolver_endpoint.security_group_ids[0] #=> String
    #   resp.resolver_endpoint.direction #=> String, one of "INBOUND", "OUTBOUND"
    #   resp.resolver_endpoint.ip_address_count #=> Integer
    #   resp.resolver_endpoint.host_vpc_id #=> String
    #   resp.resolver_endpoint.status #=> String, one of "CREATING", "OPERATIONAL", "UPDATING", "AUTO_RECOVERING", "ACTION_NEEDED", "DELETING"
    #   resp.resolver_endpoint.status_message #=> String
    #   resp.resolver_endpoint.creation_time #=> String
    #   resp.resolver_endpoint.modification_time #=> String
    #   resp.resolver_endpoint.resolver_endpoint_type #=> String, one of "IPV6", "IPV4", "DUALSTACK"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/GetResolverEndpoint AWS API Documentation
    #
    # @overload get_resolver_endpoint(params = {})
    # @param [Hash] params ({})
    def get_resolver_endpoint(params = {}, options = {})
      req = build_request(:get_resolver_endpoint, params)
      req.send_request(options)
    end

    # Gets information about a specified Resolver query logging
    # configuration, such as the number of VPCs that the configuration is
    # logging queries for and the location that logs are sent to.
    #
    # @option params [required, String] :resolver_query_log_config_id
    #   The ID of the Resolver query logging configuration that you want to
    #   get information about.
    #
    # @return [Types::GetResolverQueryLogConfigResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetResolverQueryLogConfigResponse#resolver_query_log_config #resolver_query_log_config} => Types::ResolverQueryLogConfig
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resolver_query_log_config({
    #     resolver_query_log_config_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.resolver_query_log_config.id #=> String
    #   resp.resolver_query_log_config.owner_id #=> String
    #   resp.resolver_query_log_config.status #=> String, one of "CREATING", "CREATED", "DELETING", "FAILED"
    #   resp.resolver_query_log_config.share_status #=> String, one of "NOT_SHARED", "SHARED_WITH_ME", "SHARED_BY_ME"
    #   resp.resolver_query_log_config.association_count #=> Integer
    #   resp.resolver_query_log_config.arn #=> String
    #   resp.resolver_query_log_config.name #=> String
    #   resp.resolver_query_log_config.destination_arn #=> String
    #   resp.resolver_query_log_config.creator_request_id #=> String
    #   resp.resolver_query_log_config.creation_time #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/GetResolverQueryLogConfig AWS API Documentation
    #
    # @overload get_resolver_query_log_config(params = {})
    # @param [Hash] params ({})
    def get_resolver_query_log_config(params = {}, options = {})
      req = build_request(:get_resolver_query_log_config, params)
      req.send_request(options)
    end

    # Gets information about a specified association between a Resolver
    # query logging configuration and an Amazon VPC. When you associate a
    # VPC with a query logging configuration, Resolver logs DNS queries that
    # originate in that VPC.
    #
    # @option params [required, String] :resolver_query_log_config_association_id
    #   The ID of the Resolver query logging configuration association that
    #   you want to get information about.
    #
    # @return [Types::GetResolverQueryLogConfigAssociationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetResolverQueryLogConfigAssociationResponse#resolver_query_log_config_association #resolver_query_log_config_association} => Types::ResolverQueryLogConfigAssociation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resolver_query_log_config_association({
    #     resolver_query_log_config_association_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.resolver_query_log_config_association.id #=> String
    #   resp.resolver_query_log_config_association.resolver_query_log_config_id #=> String
    #   resp.resolver_query_log_config_association.resource_id #=> String
    #   resp.resolver_query_log_config_association.status #=> String, one of "CREATING", "ACTIVE", "ACTION_NEEDED", "DELETING", "FAILED"
    #   resp.resolver_query_log_config_association.error #=> String, one of "NONE", "DESTINATION_NOT_FOUND", "ACCESS_DENIED", "INTERNAL_SERVICE_ERROR"
    #   resp.resolver_query_log_config_association.error_message #=> String
    #   resp.resolver_query_log_config_association.creation_time #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/GetResolverQueryLogConfigAssociation AWS API Documentation
    #
    # @overload get_resolver_query_log_config_association(params = {})
    # @param [Hash] params ({})
    def get_resolver_query_log_config_association(params = {}, options = {})
      req = build_request(:get_resolver_query_log_config_association, params)
      req.send_request(options)
    end

    # Gets information about a query logging policy. A query logging policy
    # specifies the Resolver query logging operations and resources that you
    # want to allow another Amazon Web Services account to be able to use.
    #
    # @option params [required, String] :arn
    #   The ARN of the query logging configuration that you want to get the
    #   query logging policy for.
    #
    # @return [Types::GetResolverQueryLogConfigPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetResolverQueryLogConfigPolicyResponse#resolver_query_log_config_policy #resolver_query_log_config_policy} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resolver_query_log_config_policy({
    #     arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.resolver_query_log_config_policy #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/GetResolverQueryLogConfigPolicy AWS API Documentation
    #
    # @overload get_resolver_query_log_config_policy(params = {})
    # @param [Hash] params ({})
    def get_resolver_query_log_config_policy(params = {}, options = {})
      req = build_request(:get_resolver_query_log_config_policy, params)
      req.send_request(options)
    end

    # Gets information about a specified Resolver rule, such as the domain
    # name that the rule forwards DNS queries for and the ID of the outbound
    # Resolver endpoint that the rule is associated with.
    #
    # @option params [required, String] :resolver_rule_id
    #   The ID of the Resolver rule that you want to get information about.
    #
    # @return [Types::GetResolverRuleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetResolverRuleResponse#resolver_rule #resolver_rule} => Types::ResolverRule
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resolver_rule({
    #     resolver_rule_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.resolver_rule.id #=> String
    #   resp.resolver_rule.creator_request_id #=> String
    #   resp.resolver_rule.arn #=> String
    #   resp.resolver_rule.domain_name #=> String
    #   resp.resolver_rule.status #=> String, one of "COMPLETE", "DELETING", "UPDATING", "FAILED"
    #   resp.resolver_rule.status_message #=> String
    #   resp.resolver_rule.rule_type #=> String, one of "FORWARD", "SYSTEM", "RECURSIVE"
    #   resp.resolver_rule.name #=> String
    #   resp.resolver_rule.target_ips #=> Array
    #   resp.resolver_rule.target_ips[0].ip #=> String
    #   resp.resolver_rule.target_ips[0].port #=> Integer
    #   resp.resolver_rule.target_ips[0].ipv_6 #=> String
    #   resp.resolver_rule.resolver_endpoint_id #=> String
    #   resp.resolver_rule.owner_id #=> String
    #   resp.resolver_rule.share_status #=> String, one of "NOT_SHARED", "SHARED_WITH_ME", "SHARED_BY_ME"
    #   resp.resolver_rule.creation_time #=> String
    #   resp.resolver_rule.modification_time #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/GetResolverRule AWS API Documentation
    #
    # @overload get_resolver_rule(params = {})
    # @param [Hash] params ({})
    def get_resolver_rule(params = {}, options = {})
      req = build_request(:get_resolver_rule, params)
      req.send_request(options)
    end

    # Gets information about an association between a specified Resolver
    # rule and a VPC. You associate a Resolver rule and a VPC using
    # [AssociateResolverRule][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_AssociateResolverRule.html
    #
    # @option params [required, String] :resolver_rule_association_id
    #   The ID of the Resolver rule association that you want to get
    #   information about.
    #
    # @return [Types::GetResolverRuleAssociationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetResolverRuleAssociationResponse#resolver_rule_association #resolver_rule_association} => Types::ResolverRuleAssociation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resolver_rule_association({
    #     resolver_rule_association_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.resolver_rule_association.id #=> String
    #   resp.resolver_rule_association.resolver_rule_id #=> String
    #   resp.resolver_rule_association.name #=> String
    #   resp.resolver_rule_association.vpc_id #=> String
    #   resp.resolver_rule_association.status #=> String, one of "CREATING", "COMPLETE", "DELETING", "FAILED", "OVERRIDDEN"
    #   resp.resolver_rule_association.status_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/GetResolverRuleAssociation AWS API Documentation
    #
    # @overload get_resolver_rule_association(params = {})
    # @param [Hash] params ({})
    def get_resolver_rule_association(params = {}, options = {})
      req = build_request(:get_resolver_rule_association, params)
      req.send_request(options)
    end

    # Gets information about the Resolver rule policy for a specified rule.
    # A Resolver rule policy includes the rule that you want to share with
    # another account, the account that you want to share the rule with, and
    # the Resolver operations that you want to allow the account to use.
    #
    # @option params [required, String] :arn
    #   The ID of the Resolver rule that you want to get the Resolver rule
    #   policy for.
    #
    # @return [Types::GetResolverRulePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetResolverRulePolicyResponse#resolver_rule_policy #resolver_rule_policy} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resolver_rule_policy({
    #     arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.resolver_rule_policy #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/GetResolverRulePolicy AWS API Documentation
    #
    # @overload get_resolver_rule_policy(params = {})
    # @param [Hash] params ({})
    def get_resolver_rule_policy(params = {}, options = {})
      req = build_request(:get_resolver_rule_policy, params)
      req.send_request(options)
    end

    # Imports domain names from a file into a domain list, for use in a DNS
    # firewall rule group.
    #
    # Each domain specification in your domain list must satisfy the
    # following requirements:
    #
    # * It can optionally start with `*` (asterisk).
    #
    # * With the exception of the optional starting asterisk, it must only
    #   contain the following characters: `A-Z`, `a-z`, `0-9`, `-` (hyphen).
    #
    # * It must be from 1-255 characters in length.
    #
    # @option params [required, String] :firewall_domain_list_id
    #   The ID of the domain list that you want to modify with the import
    #   operation.
    #
    # @option params [required, String] :operation
    #   What you want DNS Firewall to do with the domains that are listed in
    #   the file. This must be set to `REPLACE`, which updates the domain list
    #   to exactly match the list in the file.
    #
    # @option params [required, String] :domain_file_url
    #   The fully qualified URL or URI of the file stored in Amazon Simple
    #   Storage Service (Amazon S3) that contains the list of domains to
    #   import.
    #
    #   The file must be in an S3 bucket that's in the same Region as your
    #   DNS Firewall. The file must be a text file and must contain a single
    #   domain per line.
    #
    # @return [Types::ImportFirewallDomainsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ImportFirewallDomainsResponse#id #id} => String
    #   * {Types::ImportFirewallDomainsResponse#name #name} => String
    #   * {Types::ImportFirewallDomainsResponse#status #status} => String
    #   * {Types::ImportFirewallDomainsResponse#status_message #status_message} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.import_firewall_domains({
    #     firewall_domain_list_id: "ResourceId", # required
    #     operation: "REPLACE", # required, accepts REPLACE
    #     domain_file_url: "DomainListFileUrl", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.status #=> String, one of "COMPLETE", "COMPLETE_IMPORT_FAILED", "IMPORTING", "DELETING", "UPDATING"
    #   resp.status_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/ImportFirewallDomains AWS API Documentation
    #
    # @overload import_firewall_domains(params = {})
    # @param [Hash] params ({})
    def import_firewall_domains(params = {}, options = {})
      req = build_request(:import_firewall_domains, params)
      req.send_request(options)
    end

    # Retrieves the firewall configurations that you have defined. DNS
    # Firewall uses the configurations to manage firewall behavior for your
    # VPCs.
    #
    # A single call might return only a partial list of the configurations.
    # For information, see `MaxResults`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of objects that you want Resolver to return for
    #   this request. If more objects are available, in the response, Resolver
    #   provides a `NextToken` value that you can use in a subsequent call to
    #   get the next batch of objects.
    #
    #   If you don't specify a value for `MaxResults`, Resolver returns up to
    #   100 objects.
    #
    # @option params [String] :next_token
    #   For the first call to this list request, omit this value.
    #
    #   When you request a list of objects, Resolver returns at most the
    #   number of objects specified in `MaxResults`. If more objects are
    #   available for retrieval, Resolver returns a `NextToken` value in the
    #   response. To retrieve the next batch of objects, use the token that
    #   was returned for the prior request in your next request.
    #
    # @return [Types::ListFirewallConfigsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFirewallConfigsResponse#next_token #next_token} => String
    #   * {Types::ListFirewallConfigsResponse#firewall_configs #firewall_configs} => Array&lt;Types::FirewallConfig&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_firewall_configs({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.firewall_configs #=> Array
    #   resp.firewall_configs[0].id #=> String
    #   resp.firewall_configs[0].resource_id #=> String
    #   resp.firewall_configs[0].owner_id #=> String
    #   resp.firewall_configs[0].firewall_fail_open #=> String, one of "ENABLED", "DISABLED", "USE_LOCAL_RESOURCE_SETTING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/ListFirewallConfigs AWS API Documentation
    #
    # @overload list_firewall_configs(params = {})
    # @param [Hash] params ({})
    def list_firewall_configs(params = {}, options = {})
      req = build_request(:list_firewall_configs, params)
      req.send_request(options)
    end

    # Retrieves the firewall domain lists that you have defined. For each
    # firewall domain list, you can retrieve the domains that are defined
    # for a list by calling ListFirewallDomains.
    #
    # A single call to this list operation might return only a partial list
    # of the domain lists. For information, see `MaxResults`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of objects that you want Resolver to return for
    #   this request. If more objects are available, in the response, Resolver
    #   provides a `NextToken` value that you can use in a subsequent call to
    #   get the next batch of objects.
    #
    #   If you don't specify a value for `MaxResults`, Resolver returns up to
    #   100 objects.
    #
    # @option params [String] :next_token
    #   For the first call to this list request, omit this value.
    #
    #   When you request a list of objects, Resolver returns at most the
    #   number of objects specified in `MaxResults`. If more objects are
    #   available for retrieval, Resolver returns a `NextToken` value in the
    #   response. To retrieve the next batch of objects, use the token that
    #   was returned for the prior request in your next request.
    #
    # @return [Types::ListFirewallDomainListsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFirewallDomainListsResponse#next_token #next_token} => String
    #   * {Types::ListFirewallDomainListsResponse#firewall_domain_lists #firewall_domain_lists} => Array&lt;Types::FirewallDomainListMetadata&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_firewall_domain_lists({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.firewall_domain_lists #=> Array
    #   resp.firewall_domain_lists[0].id #=> String
    #   resp.firewall_domain_lists[0].arn #=> String
    #   resp.firewall_domain_lists[0].name #=> String
    #   resp.firewall_domain_lists[0].creator_request_id #=> String
    #   resp.firewall_domain_lists[0].managed_owner_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/ListFirewallDomainLists AWS API Documentation
    #
    # @overload list_firewall_domain_lists(params = {})
    # @param [Hash] params ({})
    def list_firewall_domain_lists(params = {}, options = {})
      req = build_request(:list_firewall_domain_lists, params)
      req.send_request(options)
    end

    # Retrieves the domains that you have defined for the specified firewall
    # domain list.
    #
    # A single call might return only a partial list of the domains. For
    # information, see `MaxResults`.
    #
    # @option params [required, String] :firewall_domain_list_id
    #   The ID of the domain list whose domains you want to retrieve.
    #
    # @option params [Integer] :max_results
    #   The maximum number of objects that you want Resolver to return for
    #   this request. If more objects are available, in the response, Resolver
    #   provides a `NextToken` value that you can use in a subsequent call to
    #   get the next batch of objects.
    #
    #   If you don't specify a value for `MaxResults`, Resolver returns up to
    #   100 objects.
    #
    # @option params [String] :next_token
    #   For the first call to this list request, omit this value.
    #
    #   When you request a list of objects, Resolver returns at most the
    #   number of objects specified in `MaxResults`. If more objects are
    #   available for retrieval, Resolver returns a `NextToken` value in the
    #   response. To retrieve the next batch of objects, use the token that
    #   was returned for the prior request in your next request.
    #
    # @return [Types::ListFirewallDomainsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFirewallDomainsResponse#next_token #next_token} => String
    #   * {Types::ListFirewallDomainsResponse#domains #domains} => Array&lt;String&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_firewall_domains({
    #     firewall_domain_list_id: "ResourceId", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.domains #=> Array
    #   resp.domains[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/ListFirewallDomains AWS API Documentation
    #
    # @overload list_firewall_domains(params = {})
    # @param [Hash] params ({})
    def list_firewall_domains(params = {}, options = {})
      req = build_request(:list_firewall_domains, params)
      req.send_request(options)
    end

    # Retrieves the firewall rule group associations that you have defined.
    # Each association enables DNS filtering for a VPC with one rule group.
    #
    # A single call might return only a partial list of the associations.
    # For information, see `MaxResults`.
    #
    # @option params [String] :firewall_rule_group_id
    #   The unique identifier of the firewall rule group that you want to
    #   retrieve the associations for. Leave this blank to retrieve
    #   associations for any rule group.
    #
    # @option params [String] :vpc_id
    #   The unique identifier of the VPC that you want to retrieve the
    #   associations for. Leave this blank to retrieve associations for any
    #   VPC.
    #
    # @option params [Integer] :priority
    #   The setting that determines the processing order of the rule group
    #   among the rule groups that are associated with a single VPC. DNS
    #   Firewall filters VPC traffic starting from the rule group with the
    #   lowest numeric priority setting.
    #
    # @option params [String] :status
    #   The association `Status` setting that you want DNS Firewall to filter
    #   on for the list. If you don't specify this, then DNS Firewall returns
    #   all associations, regardless of status.
    #
    # @option params [Integer] :max_results
    #   The maximum number of objects that you want Resolver to return for
    #   this request. If more objects are available, in the response, Resolver
    #   provides a `NextToken` value that you can use in a subsequent call to
    #   get the next batch of objects.
    #
    #   If you don't specify a value for `MaxResults`, Resolver returns up to
    #   100 objects.
    #
    # @option params [String] :next_token
    #   For the first call to this list request, omit this value.
    #
    #   When you request a list of objects, Resolver returns at most the
    #   number of objects specified in `MaxResults`. If more objects are
    #   available for retrieval, Resolver returns a `NextToken` value in the
    #   response. To retrieve the next batch of objects, use the token that
    #   was returned for the prior request in your next request.
    #
    # @return [Types::ListFirewallRuleGroupAssociationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFirewallRuleGroupAssociationsResponse#next_token #next_token} => String
    #   * {Types::ListFirewallRuleGroupAssociationsResponse#firewall_rule_group_associations #firewall_rule_group_associations} => Array&lt;Types::FirewallRuleGroupAssociation&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_firewall_rule_group_associations({
    #     firewall_rule_group_id: "ResourceId",
    #     vpc_id: "ResourceId",
    #     priority: 1,
    #     status: "COMPLETE", # accepts COMPLETE, DELETING, UPDATING
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.firewall_rule_group_associations #=> Array
    #   resp.firewall_rule_group_associations[0].id #=> String
    #   resp.firewall_rule_group_associations[0].arn #=> String
    #   resp.firewall_rule_group_associations[0].firewall_rule_group_id #=> String
    #   resp.firewall_rule_group_associations[0].vpc_id #=> String
    #   resp.firewall_rule_group_associations[0].name #=> String
    #   resp.firewall_rule_group_associations[0].priority #=> Integer
    #   resp.firewall_rule_group_associations[0].mutation_protection #=> String, one of "ENABLED", "DISABLED"
    #   resp.firewall_rule_group_associations[0].managed_owner_name #=> String
    #   resp.firewall_rule_group_associations[0].status #=> String, one of "COMPLETE", "DELETING", "UPDATING"
    #   resp.firewall_rule_group_associations[0].status_message #=> String
    #   resp.firewall_rule_group_associations[0].creator_request_id #=> String
    #   resp.firewall_rule_group_associations[0].creation_time #=> String
    #   resp.firewall_rule_group_associations[0].modification_time #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/ListFirewallRuleGroupAssociations AWS API Documentation
    #
    # @overload list_firewall_rule_group_associations(params = {})
    # @param [Hash] params ({})
    def list_firewall_rule_group_associations(params = {}, options = {})
      req = build_request(:list_firewall_rule_group_associations, params)
      req.send_request(options)
    end

    # Retrieves the minimal high-level information for the rule groups that
    # you have defined.
    #
    # A single call might return only a partial list of the rule groups. For
    # information, see `MaxResults`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of objects that you want Resolver to return for
    #   this request. If more objects are available, in the response, Resolver
    #   provides a `NextToken` value that you can use in a subsequent call to
    #   get the next batch of objects.
    #
    #   If you don't specify a value for `MaxResults`, Resolver returns up to
    #   100 objects.
    #
    # @option params [String] :next_token
    #   For the first call to this list request, omit this value.
    #
    #   When you request a list of objects, Resolver returns at most the
    #   number of objects specified in `MaxResults`. If more objects are
    #   available for retrieval, Resolver returns a `NextToken` value in the
    #   response. To retrieve the next batch of objects, use the token that
    #   was returned for the prior request in your next request.
    #
    # @return [Types::ListFirewallRuleGroupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFirewallRuleGroupsResponse#next_token #next_token} => String
    #   * {Types::ListFirewallRuleGroupsResponse#firewall_rule_groups #firewall_rule_groups} => Array&lt;Types::FirewallRuleGroupMetadata&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_firewall_rule_groups({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.firewall_rule_groups #=> Array
    #   resp.firewall_rule_groups[0].id #=> String
    #   resp.firewall_rule_groups[0].arn #=> String
    #   resp.firewall_rule_groups[0].name #=> String
    #   resp.firewall_rule_groups[0].owner_id #=> String
    #   resp.firewall_rule_groups[0].creator_request_id #=> String
    #   resp.firewall_rule_groups[0].share_status #=> String, one of "NOT_SHARED", "SHARED_WITH_ME", "SHARED_BY_ME"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/ListFirewallRuleGroups AWS API Documentation
    #
    # @overload list_firewall_rule_groups(params = {})
    # @param [Hash] params ({})
    def list_firewall_rule_groups(params = {}, options = {})
      req = build_request(:list_firewall_rule_groups, params)
      req.send_request(options)
    end

    # Retrieves the firewall rules that you have defined for the specified
    # firewall rule group. DNS Firewall uses the rules in a rule group to
    # filter DNS network traffic for a VPC.
    #
    # A single call might return only a partial list of the rules. For
    # information, see `MaxResults`.
    #
    # @option params [required, String] :firewall_rule_group_id
    #   The unique identifier of the firewall rule group that you want to
    #   retrieve the rules for.
    #
    # @option params [Integer] :priority
    #   Optional additional filter for the rules to retrieve.
    #
    #   The setting that determines the processing order of the rules in a
    #   rule group. DNS Firewall processes the rules in a rule group by order
    #   of priority, starting from the lowest setting.
    #
    # @option params [String] :action
    #   Optional additional filter for the rules to retrieve.
    #
    #   The action that DNS Firewall should take on a DNS query when it
    #   matches one of the domains in the rule's domain list:
    #
    #   * `ALLOW` - Permit the request to go through.
    #
    #   * `ALERT` - Permit the request to go through but send an alert to the
    #     logs.
    #
    #   * `BLOCK` - Disallow the request. If this is specified, additional
    #     handling details are provided in the rule's `BlockResponse`
    #     setting.
    #
    # @option params [Integer] :max_results
    #   The maximum number of objects that you want Resolver to return for
    #   this request. If more objects are available, in the response, Resolver
    #   provides a `NextToken` value that you can use in a subsequent call to
    #   get the next batch of objects.
    #
    #   If you don't specify a value for `MaxResults`, Resolver returns up to
    #   100 objects.
    #
    # @option params [String] :next_token
    #   For the first call to this list request, omit this value.
    #
    #   When you request a list of objects, Resolver returns at most the
    #   number of objects specified in `MaxResults`. If more objects are
    #   available for retrieval, Resolver returns a `NextToken` value in the
    #   response. To retrieve the next batch of objects, use the token that
    #   was returned for the prior request in your next request.
    #
    # @return [Types::ListFirewallRulesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFirewallRulesResponse#next_token #next_token} => String
    #   * {Types::ListFirewallRulesResponse#firewall_rules #firewall_rules} => Array&lt;Types::FirewallRule&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_firewall_rules({
    #     firewall_rule_group_id: "ResourceId", # required
    #     priority: 1,
    #     action: "ALLOW", # accepts ALLOW, BLOCK, ALERT
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.firewall_rules #=> Array
    #   resp.firewall_rules[0].firewall_rule_group_id #=> String
    #   resp.firewall_rules[0].firewall_domain_list_id #=> String
    #   resp.firewall_rules[0].name #=> String
    #   resp.firewall_rules[0].priority #=> Integer
    #   resp.firewall_rules[0].action #=> String, one of "ALLOW", "BLOCK", "ALERT"
    #   resp.firewall_rules[0].block_response #=> String, one of "NODATA", "NXDOMAIN", "OVERRIDE"
    #   resp.firewall_rules[0].block_override_domain #=> String
    #   resp.firewall_rules[0].block_override_dns_type #=> String, one of "CNAME"
    #   resp.firewall_rules[0].block_override_ttl #=> Integer
    #   resp.firewall_rules[0].creator_request_id #=> String
    #   resp.firewall_rules[0].creation_time #=> String
    #   resp.firewall_rules[0].modification_time #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/ListFirewallRules AWS API Documentation
    #
    # @overload list_firewall_rules(params = {})
    # @param [Hash] params ({})
    def list_firewall_rules(params = {}, options = {})
      req = build_request(:list_firewall_rules, params)
      req.send_request(options)
    end

    # Retrieves the Resolver configurations that you have defined. Route 53
    # Resolver uses the configurations to manage DNS resolution behavior for
    # your VPCs.
    #
    # @option params [Integer] :max_results
    #   The maximum number of Resolver configurations that you want to return
    #   in the response to a `ListResolverConfigs` request. If you don't
    #   specify a value for `MaxResults`, up to 100 Resolver configurations
    #   are returned.
    #
    # @option params [String] :next_token
    #   (Optional) If the current Amazon Web Services account has more than
    #   `MaxResults` Resolver configurations, use `NextToken` to get the
    #   second and subsequent pages of results.
    #
    #   For the first `ListResolverConfigs` request, omit this value.
    #
    #   For the second and subsequent requests, get the value of `NextToken`
    #   from the previous response and specify that value for `NextToken` in
    #   the request.
    #
    # @return [Types::ListResolverConfigsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListResolverConfigsResponse#next_token #next_token} => String
    #   * {Types::ListResolverConfigsResponse#resolver_configs #resolver_configs} => Array&lt;Types::ResolverConfig&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_resolver_configs({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.resolver_configs #=> Array
    #   resp.resolver_configs[0].id #=> String
    #   resp.resolver_configs[0].resource_id #=> String
    #   resp.resolver_configs[0].owner_id #=> String
    #   resp.resolver_configs[0].autodefined_reverse #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED", "UPDATING_TO_USE_LOCAL_RESOURCE_SETTING", "USE_LOCAL_RESOURCE_SETTING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/ListResolverConfigs AWS API Documentation
    #
    # @overload list_resolver_configs(params = {})
    # @param [Hash] params ({})
    def list_resolver_configs(params = {}, options = {})
      req = build_request(:list_resolver_configs, params)
      req.send_request(options)
    end

    # Lists the configurations for DNSSEC validation that are associated
    # with the current Amazon Web Services account.
    #
    # @option params [Integer] :max_results
    #   *Optional*: An integer that specifies the maximum number of DNSSEC
    #   configuration results that you want Amazon Route 53 to return. If you
    #   don't specify a value for `MaxResults`, Route 53 returns up to 100
    #   configuration per page.
    #
    # @option params [String] :next_token
    #   (Optional) If the current Amazon Web Services account has more than
    #   `MaxResults` DNSSEC configurations, use `NextToken` to get the second
    #   and subsequent pages of results.
    #
    #   For the first `ListResolverDnssecConfigs` request, omit this value.
    #
    #   For the second and subsequent requests, get the value of `NextToken`
    #   from the previous response and specify that value for `NextToken` in
    #   the request.
    #
    # @option params [Array<Types::Filter>] :filters
    #   An optional specification to return a subset of objects.
    #
    # @return [Types::ListResolverDnssecConfigsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListResolverDnssecConfigsResponse#next_token #next_token} => String
    #   * {Types::ListResolverDnssecConfigsResponse#resolver_dnssec_configs #resolver_dnssec_configs} => Array&lt;Types::ResolverDnssecConfig&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_resolver_dnssec_configs({
    #     max_results: 1,
    #     next_token: "NextToken",
    #     filters: [
    #       {
    #         name: "FilterName",
    #         values: ["FilterValue"],
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.resolver_dnssec_configs #=> Array
    #   resp.resolver_dnssec_configs[0].id #=> String
    #   resp.resolver_dnssec_configs[0].owner_id #=> String
    #   resp.resolver_dnssec_configs[0].resource_id #=> String
    #   resp.resolver_dnssec_configs[0].validation_status #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED", "UPDATING_TO_USE_LOCAL_RESOURCE_SETTING", "USE_LOCAL_RESOURCE_SETTING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/ListResolverDnssecConfigs AWS API Documentation
    #
    # @overload list_resolver_dnssec_configs(params = {})
    # @param [Hash] params ({})
    def list_resolver_dnssec_configs(params = {}, options = {})
      req = build_request(:list_resolver_dnssec_configs, params)
      req.send_request(options)
    end

    # Gets the IP addresses for a specified Resolver endpoint.
    #
    # @option params [required, String] :resolver_endpoint_id
    #   The ID of the Resolver endpoint that you want to get IP addresses for.
    #
    # @option params [Integer] :max_results
    #   The maximum number of IP addresses that you want to return in the
    #   response to a `ListResolverEndpointIpAddresses` request. If you don't
    #   specify a value for `MaxResults`, Resolver returns up to 100 IP
    #   addresses.
    #
    # @option params [String] :next_token
    #   For the first `ListResolverEndpointIpAddresses` request, omit this
    #   value.
    #
    #   If the specified Resolver endpoint has more than `MaxResults` IP
    #   addresses, you can submit another `ListResolverEndpointIpAddresses`
    #   request to get the next group of IP addresses. In the next request,
    #   specify the value of `NextToken` from the previous response.
    #
    # @return [Types::ListResolverEndpointIpAddressesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListResolverEndpointIpAddressesResponse#next_token #next_token} => String
    #   * {Types::ListResolverEndpointIpAddressesResponse#max_results #max_results} => Integer
    #   * {Types::ListResolverEndpointIpAddressesResponse#ip_addresses #ip_addresses} => Array&lt;Types::IpAddressResponse&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_resolver_endpoint_ip_addresses({
    #     resolver_endpoint_id: "ResourceId", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.max_results #=> Integer
    #   resp.ip_addresses #=> Array
    #   resp.ip_addresses[0].ip_id #=> String
    #   resp.ip_addresses[0].subnet_id #=> String
    #   resp.ip_addresses[0].ip #=> String
    #   resp.ip_addresses[0].ipv_6 #=> String
    #   resp.ip_addresses[0].status #=> String, one of "CREATING", "FAILED_CREATION", "ATTACHING", "ATTACHED", "REMAP_DETACHING", "REMAP_ATTACHING", "DETACHING", "FAILED_RESOURCE_GONE", "DELETING", "DELETE_FAILED_FAS_EXPIRED", "UPDATING"
    #   resp.ip_addresses[0].status_message #=> String
    #   resp.ip_addresses[0].creation_time #=> String
    #   resp.ip_addresses[0].modification_time #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/ListResolverEndpointIpAddresses AWS API Documentation
    #
    # @overload list_resolver_endpoint_ip_addresses(params = {})
    # @param [Hash] params ({})
    def list_resolver_endpoint_ip_addresses(params = {}, options = {})
      req = build_request(:list_resolver_endpoint_ip_addresses, params)
      req.send_request(options)
    end

    # Lists all the Resolver endpoints that were created using the current
    # Amazon Web Services account.
    #
    # @option params [Integer] :max_results
    #   The maximum number of Resolver endpoints that you want to return in
    #   the response to a `ListResolverEndpoints` request. If you don't
    #   specify a value for `MaxResults`, Resolver returns up to 100 Resolver
    #   endpoints.
    #
    # @option params [String] :next_token
    #   For the first `ListResolverEndpoints` request, omit this value.
    #
    #   If you have more than `MaxResults` Resolver endpoints, you can submit
    #   another `ListResolverEndpoints` request to get the next group of
    #   Resolver endpoints. In the next request, specify the value of
    #   `NextToken` from the previous response.
    #
    # @option params [Array<Types::Filter>] :filters
    #   An optional specification to return a subset of Resolver endpoints,
    #   such as all inbound Resolver endpoints.
    #
    #   <note markdown="1"> If you submit a second or subsequent `ListResolverEndpoints` request
    #   and specify the `NextToken` parameter, you must use the same values
    #   for `Filters`, if any, as in the previous request.
    #
    #    </note>
    #
    # @return [Types::ListResolverEndpointsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListResolverEndpointsResponse#next_token #next_token} => String
    #   * {Types::ListResolverEndpointsResponse#max_results #max_results} => Integer
    #   * {Types::ListResolverEndpointsResponse#resolver_endpoints #resolver_endpoints} => Array&lt;Types::ResolverEndpoint&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_resolver_endpoints({
    #     max_results: 1,
    #     next_token: "NextToken",
    #     filters: [
    #       {
    #         name: "FilterName",
    #         values: ["FilterValue"],
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.max_results #=> Integer
    #   resp.resolver_endpoints #=> Array
    #   resp.resolver_endpoints[0].id #=> String
    #   resp.resolver_endpoints[0].creator_request_id #=> String
    #   resp.resolver_endpoints[0].arn #=> String
    #   resp.resolver_endpoints[0].name #=> String
    #   resp.resolver_endpoints[0].security_group_ids #=> Array
    #   resp.resolver_endpoints[0].security_group_ids[0] #=> String
    #   resp.resolver_endpoints[0].direction #=> String, one of "INBOUND", "OUTBOUND"
    #   resp.resolver_endpoints[0].ip_address_count #=> Integer
    #   resp.resolver_endpoints[0].host_vpc_id #=> String
    #   resp.resolver_endpoints[0].status #=> String, one of "CREATING", "OPERATIONAL", "UPDATING", "AUTO_RECOVERING", "ACTION_NEEDED", "DELETING"
    #   resp.resolver_endpoints[0].status_message #=> String
    #   resp.resolver_endpoints[0].creation_time #=> String
    #   resp.resolver_endpoints[0].modification_time #=> String
    #   resp.resolver_endpoints[0].resolver_endpoint_type #=> String, one of "IPV6", "IPV4", "DUALSTACK"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/ListResolverEndpoints AWS API Documentation
    #
    # @overload list_resolver_endpoints(params = {})
    # @param [Hash] params ({})
    def list_resolver_endpoints(params = {}, options = {})
      req = build_request(:list_resolver_endpoints, params)
      req.send_request(options)
    end

    # Lists information about associations between Amazon VPCs and query
    # logging configurations.
    #
    # @option params [Integer] :max_results
    #   The maximum number of query logging associations that you want to
    #   return in the response to a `ListResolverQueryLogConfigAssociations`
    #   request. If you don't specify a value for `MaxResults`, Resolver
    #   returns up to 100 query logging associations.
    #
    # @option params [String] :next_token
    #   For the first `ListResolverQueryLogConfigAssociations` request, omit
    #   this value.
    #
    #   If there are more than `MaxResults` query logging associations that
    #   match the values that you specify for `Filters`, you can submit
    #   another `ListResolverQueryLogConfigAssociations` request to get the
    #   next group of associations. In the next request, specify the value of
    #   `NextToken` from the previous response.
    #
    # @option params [Array<Types::Filter>] :filters
    #   An optional specification to return a subset of query logging
    #   associations.
    #
    #   <note markdown="1"> If you submit a second or subsequent
    #   `ListResolverQueryLogConfigAssociations` request and specify the
    #   `NextToken` parameter, you must use the same values for `Filters`, if
    #   any, as in the previous request.
    #
    #    </note>
    #
    # @option params [String] :sort_by
    #   The element that you want Resolver to sort query logging associations
    #   by.
    #
    #   <note markdown="1"> If you submit a second or subsequent
    #   `ListResolverQueryLogConfigAssociations` request and specify the
    #   `NextToken` parameter, you must use the same value for `SortBy`, if
    #   any, as in the previous request.
    #
    #    </note>
    #
    #   Valid values include the following elements:
    #
    #   * `CreationTime`: The ID of the query logging association.
    #
    #   * `Error`: If the value of `Status` is `FAILED`, the value of `Error`
    #     indicates the cause:
    #
    #     * `DESTINATION_NOT_FOUND`: The specified destination (for example,
    #       an Amazon S3 bucket) was deleted.
    #
    #     * `ACCESS_DENIED`: Permissions don't allow sending logs to the
    #       destination.
    #
    #     If `Status` is a value other than `FAILED`, `ERROR` is null.
    #
    #   * `Id`: The ID of the query logging association
    #
    #   * `ResolverQueryLogConfigId`: The ID of the query logging
    #     configuration
    #
    #   * `ResourceId`: The ID of the VPC that is associated with the query
    #     logging configuration
    #
    #   * `Status`: The current status of the configuration. Valid values
    #     include the following:
    #
    #     * `CREATING`: Resolver is creating an association between an Amazon
    #       VPC and a query logging configuration.
    #
    #     * `CREATED`: The association between an Amazon VPC and a query
    #       logging configuration was successfully created. Resolver is
    #       logging queries that originate in the specified VPC.
    #
    #     * `DELETING`: Resolver is deleting this query logging association.
    #
    #     * `FAILED`: Resolver either couldn't create or couldn't delete the
    #       query logging association. Here are two common causes:
    #
    #       * The specified destination (for example, an Amazon S3 bucket) was
    #         deleted.
    #
    #       * Permissions don't allow sending logs to the destination.
    #
    # @option params [String] :sort_order
    #   If you specified a value for `SortBy`, the order that you want query
    #   logging associations to be listed in, `ASCENDING` or `DESCENDING`.
    #
    #   <note markdown="1"> If you submit a second or subsequent
    #   `ListResolverQueryLogConfigAssociations` request and specify the
    #   `NextToken` parameter, you must use the same value for `SortOrder`, if
    #   any, as in the previous request.
    #
    #    </note>
    #
    # @return [Types::ListResolverQueryLogConfigAssociationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListResolverQueryLogConfigAssociationsResponse#next_token #next_token} => String
    #   * {Types::ListResolverQueryLogConfigAssociationsResponse#total_count #total_count} => Integer
    #   * {Types::ListResolverQueryLogConfigAssociationsResponse#total_filtered_count #total_filtered_count} => Integer
    #   * {Types::ListResolverQueryLogConfigAssociationsResponse#resolver_query_log_config_associations #resolver_query_log_config_associations} => Array&lt;Types::ResolverQueryLogConfigAssociation&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_resolver_query_log_config_associations({
    #     max_results: 1,
    #     next_token: "NextToken",
    #     filters: [
    #       {
    #         name: "FilterName",
    #         values: ["FilterValue"],
    #       },
    #     ],
    #     sort_by: "SortByKey",
    #     sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.total_count #=> Integer
    #   resp.total_filtered_count #=> Integer
    #   resp.resolver_query_log_config_associations #=> Array
    #   resp.resolver_query_log_config_associations[0].id #=> String
    #   resp.resolver_query_log_config_associations[0].resolver_query_log_config_id #=> String
    #   resp.resolver_query_log_config_associations[0].resource_id #=> String
    #   resp.resolver_query_log_config_associations[0].status #=> String, one of "CREATING", "ACTIVE", "ACTION_NEEDED", "DELETING", "FAILED"
    #   resp.resolver_query_log_config_associations[0].error #=> String, one of "NONE", "DESTINATION_NOT_FOUND", "ACCESS_DENIED", "INTERNAL_SERVICE_ERROR"
    #   resp.resolver_query_log_config_associations[0].error_message #=> String
    #   resp.resolver_query_log_config_associations[0].creation_time #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/ListResolverQueryLogConfigAssociations AWS API Documentation
    #
    # @overload list_resolver_query_log_config_associations(params = {})
    # @param [Hash] params ({})
    def list_resolver_query_log_config_associations(params = {}, options = {})
      req = build_request(:list_resolver_query_log_config_associations, params)
      req.send_request(options)
    end

    # Lists information about the specified query logging configurations.
    # Each configuration defines where you want Resolver to save DNS query
    # logs and specifies the VPCs that you want to log queries for.
    #
    # @option params [Integer] :max_results
    #   The maximum number of query logging configurations that you want to
    #   return in the response to a `ListResolverQueryLogConfigs` request. If
    #   you don't specify a value for `MaxResults`, Resolver returns up to
    #   100 query logging configurations.
    #
    # @option params [String] :next_token
    #   For the first `ListResolverQueryLogConfigs` request, omit this value.
    #
    #   If there are more than `MaxResults` query logging configurations that
    #   match the values that you specify for `Filters`, you can submit
    #   another `ListResolverQueryLogConfigs` request to get the next group of
    #   configurations. In the next request, specify the value of `NextToken`
    #   from the previous response.
    #
    # @option params [Array<Types::Filter>] :filters
    #   An optional specification to return a subset of query logging
    #   configurations.
    #
    #   <note markdown="1"> If you submit a second or subsequent `ListResolverQueryLogConfigs`
    #   request and specify the `NextToken` parameter, you must use the same
    #   values for `Filters`, if any, as in the previous request.
    #
    #    </note>
    #
    # @option params [String] :sort_by
    #   The element that you want Resolver to sort query logging
    #   configurations by.
    #
    #   <note markdown="1"> If you submit a second or subsequent `ListResolverQueryLogConfigs`
    #   request and specify the `NextToken` parameter, you must use the same
    #   value for `SortBy`, if any, as in the previous request.
    #
    #    </note>
    #
    #   Valid values include the following elements:
    #
    #   * `Arn`: The ARN of the query logging configuration
    #
    #   * `AssociationCount`: The number of VPCs that are associated with the
    #     specified configuration
    #
    #   * `CreationTime`: The date and time that Resolver returned when the
    #     configuration was created
    #
    #   * `CreatorRequestId`: The value that was specified for
    #     `CreatorRequestId` when the configuration was created
    #
    #   * `DestinationArn`: The location that logs are sent to
    #
    #   * `Id`: The ID of the configuration
    #
    #   * `Name`: The name of the configuration
    #
    #   * `OwnerId`: The Amazon Web Services account number of the account
    #     that created the configuration
    #
    #   * `ShareStatus`: Whether the configuration is shared with other Amazon
    #     Web Services accounts or shared with the current account by another
    #     Amazon Web Services account. Sharing is configured through Resource
    #     Access Manager (RAM).
    #
    #   * `Status`: The current status of the configuration. Valid values
    #     include the following:
    #
    #     * `CREATING`: Resolver is creating the query logging configuration.
    #
    #     * `CREATED`: The query logging configuration was successfully
    #       created. Resolver is logging queries that originate in the
    #       specified VPC.
    #
    #     * `DELETING`: Resolver is deleting this query logging configuration.
    #
    #     * `FAILED`: Resolver either couldn't create or couldn't delete the
    #       query logging configuration. Here are two common causes:
    #
    #       * The specified destination (for example, an Amazon S3 bucket) was
    #         deleted.
    #
    #       * Permissions don't allow sending logs to the destination.
    #
    # @option params [String] :sort_order
    #   If you specified a value for `SortBy`, the order that you want query
    #   logging configurations to be listed in, `ASCENDING` or `DESCENDING`.
    #
    #   <note markdown="1"> If you submit a second or subsequent `ListResolverQueryLogConfigs`
    #   request and specify the `NextToken` parameter, you must use the same
    #   value for `SortOrder`, if any, as in the previous request.
    #
    #    </note>
    #
    # @return [Types::ListResolverQueryLogConfigsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListResolverQueryLogConfigsResponse#next_token #next_token} => String
    #   * {Types::ListResolverQueryLogConfigsResponse#total_count #total_count} => Integer
    #   * {Types::ListResolverQueryLogConfigsResponse#total_filtered_count #total_filtered_count} => Integer
    #   * {Types::ListResolverQueryLogConfigsResponse#resolver_query_log_configs #resolver_query_log_configs} => Array&lt;Types::ResolverQueryLogConfig&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_resolver_query_log_configs({
    #     max_results: 1,
    #     next_token: "NextToken",
    #     filters: [
    #       {
    #         name: "FilterName",
    #         values: ["FilterValue"],
    #       },
    #     ],
    #     sort_by: "SortByKey",
    #     sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.total_count #=> Integer
    #   resp.total_filtered_count #=> Integer
    #   resp.resolver_query_log_configs #=> Array
    #   resp.resolver_query_log_configs[0].id #=> String
    #   resp.resolver_query_log_configs[0].owner_id #=> String
    #   resp.resolver_query_log_configs[0].status #=> String, one of "CREATING", "CREATED", "DELETING", "FAILED"
    #   resp.resolver_query_log_configs[0].share_status #=> String, one of "NOT_SHARED", "SHARED_WITH_ME", "SHARED_BY_ME"
    #   resp.resolver_query_log_configs[0].association_count #=> Integer
    #   resp.resolver_query_log_configs[0].arn #=> String
    #   resp.resolver_query_log_configs[0].name #=> String
    #   resp.resolver_query_log_configs[0].destination_arn #=> String
    #   resp.resolver_query_log_configs[0].creator_request_id #=> String
    #   resp.resolver_query_log_configs[0].creation_time #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/ListResolverQueryLogConfigs AWS API Documentation
    #
    # @overload list_resolver_query_log_configs(params = {})
    # @param [Hash] params ({})
    def list_resolver_query_log_configs(params = {}, options = {})
      req = build_request(:list_resolver_query_log_configs, params)
      req.send_request(options)
    end

    # Lists the associations that were created between Resolver rules and
    # VPCs using the current Amazon Web Services account.
    #
    # @option params [Integer] :max_results
    #   The maximum number of rule associations that you want to return in the
    #   response to a `ListResolverRuleAssociations` request. If you don't
    #   specify a value for `MaxResults`, Resolver returns up to 100 rule
    #   associations.
    #
    # @option params [String] :next_token
    #   For the first `ListResolverRuleAssociation` request, omit this value.
    #
    #   If you have more than `MaxResults` rule associations, you can submit
    #   another `ListResolverRuleAssociation` request to get the next group of
    #   rule associations. In the next request, specify the value of
    #   `NextToken` from the previous response.
    #
    # @option params [Array<Types::Filter>] :filters
    #   An optional specification to return a subset of Resolver rules, such
    #   as Resolver rules that are associated with the same VPC ID.
    #
    #   <note markdown="1"> If you submit a second or subsequent `ListResolverRuleAssociations`
    #   request and specify the `NextToken` parameter, you must use the same
    #   values for `Filters`, if any, as in the previous request.
    #
    #    </note>
    #
    # @return [Types::ListResolverRuleAssociationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListResolverRuleAssociationsResponse#next_token #next_token} => String
    #   * {Types::ListResolverRuleAssociationsResponse#max_results #max_results} => Integer
    #   * {Types::ListResolverRuleAssociationsResponse#resolver_rule_associations #resolver_rule_associations} => Array&lt;Types::ResolverRuleAssociation&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_resolver_rule_associations({
    #     max_results: 1,
    #     next_token: "NextToken",
    #     filters: [
    #       {
    #         name: "FilterName",
    #         values: ["FilterValue"],
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.max_results #=> Integer
    #   resp.resolver_rule_associations #=> Array
    #   resp.resolver_rule_associations[0].id #=> String
    #   resp.resolver_rule_associations[0].resolver_rule_id #=> String
    #   resp.resolver_rule_associations[0].name #=> String
    #   resp.resolver_rule_associations[0].vpc_id #=> String
    #   resp.resolver_rule_associations[0].status #=> String, one of "CREATING", "COMPLETE", "DELETING", "FAILED", "OVERRIDDEN"
    #   resp.resolver_rule_associations[0].status_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/ListResolverRuleAssociations AWS API Documentation
    #
    # @overload list_resolver_rule_associations(params = {})
    # @param [Hash] params ({})
    def list_resolver_rule_associations(params = {}, options = {})
      req = build_request(:list_resolver_rule_associations, params)
      req.send_request(options)
    end

    # Lists the Resolver rules that were created using the current Amazon
    # Web Services account.
    #
    # @option params [Integer] :max_results
    #   The maximum number of Resolver rules that you want to return in the
    #   response to a `ListResolverRules` request. If you don't specify a
    #   value for `MaxResults`, Resolver returns up to 100 Resolver rules.
    #
    # @option params [String] :next_token
    #   For the first `ListResolverRules` request, omit this value.
    #
    #   If you have more than `MaxResults` Resolver rules, you can submit
    #   another `ListResolverRules` request to get the next group of Resolver
    #   rules. In the next request, specify the value of `NextToken` from the
    #   previous response.
    #
    # @option params [Array<Types::Filter>] :filters
    #   An optional specification to return a subset of Resolver rules, such
    #   as all Resolver rules that are associated with the same Resolver
    #   endpoint.
    #
    #   <note markdown="1"> If you submit a second or subsequent `ListResolverRules` request and
    #   specify the `NextToken` parameter, you must use the same values for
    #   `Filters`, if any, as in the previous request.
    #
    #    </note>
    #
    # @return [Types::ListResolverRulesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListResolverRulesResponse#next_token #next_token} => String
    #   * {Types::ListResolverRulesResponse#max_results #max_results} => Integer
    #   * {Types::ListResolverRulesResponse#resolver_rules #resolver_rules} => Array&lt;Types::ResolverRule&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_resolver_rules({
    #     max_results: 1,
    #     next_token: "NextToken",
    #     filters: [
    #       {
    #         name: "FilterName",
    #         values: ["FilterValue"],
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.max_results #=> Integer
    #   resp.resolver_rules #=> Array
    #   resp.resolver_rules[0].id #=> String
    #   resp.resolver_rules[0].creator_request_id #=> String
    #   resp.resolver_rules[0].arn #=> String
    #   resp.resolver_rules[0].domain_name #=> String
    #   resp.resolver_rules[0].status #=> String, one of "COMPLETE", "DELETING", "UPDATING", "FAILED"
    #   resp.resolver_rules[0].status_message #=> String
    #   resp.resolver_rules[0].rule_type #=> String, one of "FORWARD", "SYSTEM", "RECURSIVE"
    #   resp.resolver_rules[0].name #=> String
    #   resp.resolver_rules[0].target_ips #=> Array
    #   resp.resolver_rules[0].target_ips[0].ip #=> String
    #   resp.resolver_rules[0].target_ips[0].port #=> Integer
    #   resp.resolver_rules[0].target_ips[0].ipv_6 #=> String
    #   resp.resolver_rules[0].resolver_endpoint_id #=> String
    #   resp.resolver_rules[0].owner_id #=> String
    #   resp.resolver_rules[0].share_status #=> String, one of "NOT_SHARED", "SHARED_WITH_ME", "SHARED_BY_ME"
    #   resp.resolver_rules[0].creation_time #=> String
    #   resp.resolver_rules[0].modification_time #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/ListResolverRules AWS API Documentation
    #
    # @overload list_resolver_rules(params = {})
    # @param [Hash] params ({})
    def list_resolver_rules(params = {}, options = {})
      req = build_request(:list_resolver_rules, params)
      req.send_request(options)
    end

    # Lists the tags that you associated with the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) for the resource that you want to list
    #   tags for.
    #
    # @option params [Integer] :max_results
    #   The maximum number of tags that you want to return in the response to
    #   a `ListTagsForResource` request. If you don't specify a value for
    #   `MaxResults`, Resolver returns up to 100 tags.
    #
    # @option params [String] :next_token
    #   For the first `ListTagsForResource` request, omit this value.
    #
    #   If you have more than `MaxResults` tags, you can submit another
    #   `ListTagsForResource` request to get the next group of tags for the
    #   resource. In the next request, specify the value of `NextToken` from
    #   the previous response.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #   * {Types::ListTagsForResourceResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "Arn", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Attaches an Identity and Access Management (Amazon Web Services IAM)
    # policy for sharing the rule group. You can use the policy to share the
    # rule group using Resource Access Manager (RAM).
    #
    # @option params [required, String] :arn
    #   The ARN (Amazon Resource Name) for the rule group that you want to
    #   share.
    #
    # @option params [required, String] :firewall_rule_group_policy
    #   The Identity and Access Management (Amazon Web Services IAM) policy to
    #   attach to the rule group.
    #
    # @return [Types::PutFirewallRuleGroupPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutFirewallRuleGroupPolicyResponse#return_value #return_value} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_firewall_rule_group_policy({
    #     arn: "Arn", # required
    #     firewall_rule_group_policy: "FirewallRuleGroupPolicy", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.return_value #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/PutFirewallRuleGroupPolicy AWS API Documentation
    #
    # @overload put_firewall_rule_group_policy(params = {})
    # @param [Hash] params ({})
    def put_firewall_rule_group_policy(params = {}, options = {})
      req = build_request(:put_firewall_rule_group_policy, params)
      req.send_request(options)
    end

    # Specifies an Amazon Web Services account that you want to share a
    # query logging configuration with, the query logging configuration that
    # you want to share, and the operations that you want the account to be
    # able to perform on the configuration.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) of the account that you want to share
    #   rules with.
    #
    # @option params [required, String] :resolver_query_log_config_policy
    #   An Identity and Access Management policy statement that lists the
    #   query logging configurations that you want to share with another
    #   Amazon Web Services account and the operations that you want the
    #   account to be able to perform. You can specify the following
    #   operations in the `Actions` section of the statement:
    #
    #   * `route53resolver:AssociateResolverQueryLogConfig`
    #
    #   * `route53resolver:DisassociateResolverQueryLogConfig`
    #
    #   * `route53resolver:ListResolverQueryLogConfigAssociations`
    #
    #   * `route53resolver:ListResolverQueryLogConfigs`
    #
    #   In the `Resource` section of the statement, you specify the ARNs for
    #   the query logging configurations that you want to share with the
    #   account that you specified in `Arn`.
    #
    # @return [Types::PutResolverQueryLogConfigPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutResolverQueryLogConfigPolicyResponse#return_value #return_value} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_resolver_query_log_config_policy({
    #     arn: "Arn", # required
    #     resolver_query_log_config_policy: "ResolverQueryLogConfigPolicy", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.return_value #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/PutResolverQueryLogConfigPolicy AWS API Documentation
    #
    # @overload put_resolver_query_log_config_policy(params = {})
    # @param [Hash] params ({})
    def put_resolver_query_log_config_policy(params = {}, options = {})
      req = build_request(:put_resolver_query_log_config_policy, params)
      req.send_request(options)
    end

    # Specifies an Amazon Web Services rule that you want to share with
    # another account, the account that you want to share the rule with, and
    # the operations that you want the account to be able to perform on the
    # rule.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) of the rule that you want to share with
    #   another account.
    #
    # @option params [required, String] :resolver_rule_policy
    #   An Identity and Access Management policy statement that lists the
    #   rules that you want to share with another Amazon Web Services account
    #   and the operations that you want the account to be able to perform.
    #   You can specify the following operations in the `Action` section of
    #   the statement:
    #
    #   * `route53resolver:GetResolverRule`
    #
    #   * `route53resolver:AssociateResolverRule`
    #
    #   * `route53resolver:DisassociateResolverRule`
    #
    #   * `route53resolver:ListResolverRules`
    #
    #   * `route53resolver:ListResolverRuleAssociations`
    #
    #   In the `Resource` section of the statement, specify the ARN for the
    #   rule that you want to share with another account. Specify the same ARN
    #   that you specified in `Arn`.
    #
    # @return [Types::PutResolverRulePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutResolverRulePolicyResponse#return_value #return_value} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_resolver_rule_policy({
    #     arn: "Arn", # required
    #     resolver_rule_policy: "ResolverRulePolicy", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.return_value #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/PutResolverRulePolicy AWS API Documentation
    #
    # @overload put_resolver_rule_policy(params = {})
    # @param [Hash] params ({})
    def put_resolver_rule_policy(params = {}, options = {})
      req = build_request(:put_resolver_rule_policy, params)
      req.send_request(options)
    end

    # Adds one or more tags to a specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) for the resource that you want to add
    #   tags to. To get the ARN for a resource, use the applicable `Get` or
    #   `List` command:
    #
    #   * [GetResolverEndpoint][1]
    #
    #   * [GetResolverRule][2]
    #
    #   * [GetResolverRuleAssociation][3]
    #
    #   * [ListResolverEndpoints][4]
    #
    #   * [ListResolverRuleAssociations][5]
    #
    #   * [ListResolverRules][6]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_GetResolverEndpoint.html
    #   [2]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_GetResolverRule.html
    #   [3]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_GetResolverRuleAssociation.html
    #   [4]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverEndpoints.html
    #   [5]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverRuleAssociations.html
    #   [6]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverRules.html
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   The tags that you want to add to the specified resource.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes one or more tags from a specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) for the resource that you want to
    #   remove tags from. To get the ARN for a resource, use the applicable
    #   `Get` or `List` command:
    #
    #   * [GetResolverEndpoint][1]
    #
    #   * [GetResolverRule][2]
    #
    #   * [GetResolverRuleAssociation][3]
    #
    #   * [ListResolverEndpoints][4]
    #
    #   * [ListResolverRuleAssociations][5]
    #
    #   * [ListResolverRules][6]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_GetResolverEndpoint.html
    #   [2]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_GetResolverRule.html
    #   [3]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_GetResolverRuleAssociation.html
    #   [4]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverEndpoints.html
    #   [5]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverRuleAssociations.html
    #   [6]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverRules.html
    #
    # @option params [required, Array<String>] :tag_keys
    #   The tags that you want to remove to the specified resource.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates the configuration of the firewall behavior provided by DNS
    # Firewall for a single VPC from Amazon Virtual Private Cloud (Amazon
    # VPC).
    #
    # @option params [required, String] :resource_id
    #   The ID of the VPC that the configuration is for.
    #
    # @option params [required, String] :firewall_fail_open
    #   Determines how Route 53 Resolver handles queries during failures, for
    #   example when all traffic that is sent to DNS Firewall fails to receive
    #   a reply.
    #
    #   * By default, fail open is disabled, which means the failure mode is
    #     closed. This approach favors security over availability. DNS
    #     Firewall blocks queries that it is unable to evaluate properly.
    #
    #   * If you enable this option, the failure mode is open. This approach
    #     favors availability over security. DNS Firewall allows queries to
    #     proceed if it is unable to properly evaluate them.
    #
    #   This behavior is only enforced for VPCs that have at least one DNS
    #   Firewall rule group association.
    #
    # @return [Types::UpdateFirewallConfigResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateFirewallConfigResponse#firewall_config #firewall_config} => Types::FirewallConfig
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_firewall_config({
    #     resource_id: "ResourceId", # required
    #     firewall_fail_open: "ENABLED", # required, accepts ENABLED, DISABLED, USE_LOCAL_RESOURCE_SETTING
    #   })
    #
    # @example Response structure
    #
    #   resp.firewall_config.id #=> String
    #   resp.firewall_config.resource_id #=> String
    #   resp.firewall_config.owner_id #=> String
    #   resp.firewall_config.firewall_fail_open #=> String, one of "ENABLED", "DISABLED", "USE_LOCAL_RESOURCE_SETTING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/UpdateFirewallConfig AWS API Documentation
    #
    # @overload update_firewall_config(params = {})
    # @param [Hash] params ({})
    def update_firewall_config(params = {}, options = {})
      req = build_request(:update_firewall_config, params)
      req.send_request(options)
    end

    # Updates the firewall domain list from an array of domain
    # specifications.
    #
    # @option params [required, String] :firewall_domain_list_id
    #   The ID of the domain list whose domains you want to update.
    #
    # @option params [required, String] :operation
    #   What you want DNS Firewall to do with the domains that you are
    #   providing:
    #
    #   * `ADD` - Add the domains to the ones that are already in the domain
    #     list.
    #
    #   * `REMOVE` - Search the domain list for the domains and remove them
    #     from the list.
    #
    #   * `REPLACE` - Update the domain list to exactly match the list that
    #     you are providing.
    #
    # @option params [required, Array<String>] :domains
    #   A list of domains to use in the update operation.
    #
    #   There is a limit of 1000 domains per request.
    #
    #   Each domain specification in your domain list must satisfy the
    #   following requirements:
    #
    #   * It can optionally start with `*` (asterisk).
    #
    #   * With the exception of the optional starting asterisk, it must only
    #     contain the following characters: `A-Z`, `a-z`, `0-9`, `-` (hyphen).
    #
    #   * It must be from 1-255 characters in length.
    #
    # @return [Types::UpdateFirewallDomainsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateFirewallDomainsResponse#id #id} => String
    #   * {Types::UpdateFirewallDomainsResponse#name #name} => String
    #   * {Types::UpdateFirewallDomainsResponse#status #status} => String
    #   * {Types::UpdateFirewallDomainsResponse#status_message #status_message} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_firewall_domains({
    #     firewall_domain_list_id: "ResourceId", # required
    #     operation: "ADD", # required, accepts ADD, REMOVE, REPLACE
    #     domains: ["FirewallDomainName"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.status #=> String, one of "COMPLETE", "COMPLETE_IMPORT_FAILED", "IMPORTING", "DELETING", "UPDATING"
    #   resp.status_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/UpdateFirewallDomains AWS API Documentation
    #
    # @overload update_firewall_domains(params = {})
    # @param [Hash] params ({})
    def update_firewall_domains(params = {}, options = {})
      req = build_request(:update_firewall_domains, params)
      req.send_request(options)
    end

    # Updates the specified firewall rule.
    #
    # @option params [required, String] :firewall_rule_group_id
    #   The unique identifier of the firewall rule group for the rule.
    #
    # @option params [required, String] :firewall_domain_list_id
    #   The ID of the domain list to use in the rule.
    #
    # @option params [Integer] :priority
    #   The setting that determines the processing order of the rule in the
    #   rule group. DNS Firewall processes the rules in a rule group by order
    #   of priority, starting from the lowest setting.
    #
    #   You must specify a unique priority for each rule in a rule group. To
    #   make it easier to insert rules later, leave space between the numbers,
    #   for example, use 100, 200, and so on. You can change the priority
    #   setting for the rules in a rule group at any time.
    #
    # @option params [String] :action
    #   The action that DNS Firewall should take on a DNS query when it
    #   matches one of the domains in the rule's domain list:
    #
    #   * `ALLOW` - Permit the request to go through.
    #
    #   * `ALERT` - Permit the request to go through but send an alert to the
    #     logs.
    #
    #   * `BLOCK` - Disallow the request. This option requires additional
    #     details in the rule's `BlockResponse`.
    #
    # @option params [String] :block_response
    #   The way that you want DNS Firewall to block the request. Used for the
    #   rule action setting `BLOCK`.
    #
    #   * `NODATA` - Respond indicating that the query was successful, but no
    #     response is available for it.
    #
    #   * `NXDOMAIN` - Respond indicating that the domain name that's in the
    #     query doesn't exist.
    #
    #   * `OVERRIDE` - Provide a custom override in the response. This option
    #     requires custom handling details in the rule's `BlockOverride*`
    #     settings.
    #
    # @option params [String] :block_override_domain
    #   The custom DNS record to send back in response to the query. Used for
    #   the rule action `BLOCK` with a `BlockResponse` setting of `OVERRIDE`.
    #
    # @option params [String] :block_override_dns_type
    #   The DNS record's type. This determines the format of the record value
    #   that you provided in `BlockOverrideDomain`. Used for the rule action
    #   `BLOCK` with a `BlockResponse` setting of `OVERRIDE`.
    #
    # @option params [Integer] :block_override_ttl
    #   The recommended amount of time, in seconds, for the DNS resolver or
    #   web browser to cache the provided override record. Used for the rule
    #   action `BLOCK` with a `BlockResponse` setting of `OVERRIDE`.
    #
    # @option params [String] :name
    #   The name of the rule.
    #
    # @return [Types::UpdateFirewallRuleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateFirewallRuleResponse#firewall_rule #firewall_rule} => Types::FirewallRule
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_firewall_rule({
    #     firewall_rule_group_id: "ResourceId", # required
    #     firewall_domain_list_id: "ResourceId", # required
    #     priority: 1,
    #     action: "ALLOW", # accepts ALLOW, BLOCK, ALERT
    #     block_response: "NODATA", # accepts NODATA, NXDOMAIN, OVERRIDE
    #     block_override_domain: "BlockOverrideDomain",
    #     block_override_dns_type: "CNAME", # accepts CNAME
    #     block_override_ttl: 1,
    #     name: "Name",
    #   })
    #
    # @example Response structure
    #
    #   resp.firewall_rule.firewall_rule_group_id #=> String
    #   resp.firewall_rule.firewall_domain_list_id #=> String
    #   resp.firewall_rule.name #=> String
    #   resp.firewall_rule.priority #=> Integer
    #   resp.firewall_rule.action #=> String, one of "ALLOW", "BLOCK", "ALERT"
    #   resp.firewall_rule.block_response #=> String, one of "NODATA", "NXDOMAIN", "OVERRIDE"
    #   resp.firewall_rule.block_override_domain #=> String
    #   resp.firewall_rule.block_override_dns_type #=> String, one of "CNAME"
    #   resp.firewall_rule.block_override_ttl #=> Integer
    #   resp.firewall_rule.creator_request_id #=> String
    #   resp.firewall_rule.creation_time #=> String
    #   resp.firewall_rule.modification_time #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/UpdateFirewallRule AWS API Documentation
    #
    # @overload update_firewall_rule(params = {})
    # @param [Hash] params ({})
    def update_firewall_rule(params = {}, options = {})
      req = build_request(:update_firewall_rule, params)
      req.send_request(options)
    end

    # Changes the association of a FirewallRuleGroup with a VPC. The
    # association enables DNS filtering for the VPC.
    #
    # @option params [required, String] :firewall_rule_group_association_id
    #   The identifier of the FirewallRuleGroupAssociation.
    #
    # @option params [Integer] :priority
    #   The setting that determines the processing order of the rule group
    #   among the rule groups that you associate with the specified VPC. DNS
    #   Firewall filters VPC traffic starting from the rule group with the
    #   lowest numeric priority setting.
    #
    #   You must specify a unique priority for each rule group that you
    #   associate with a single VPC. To make it easier to insert rule groups
    #   later, leave space between the numbers, for example, use 100, 200, and
    #   so on. You can change the priority setting for a rule group
    #   association after you create it.
    #
    # @option params [String] :mutation_protection
    #   If enabled, this setting disallows modification or removal of the
    #   association, to help prevent against accidentally altering DNS
    #   firewall protections.
    #
    # @option params [String] :name
    #   The name of the rule group association.
    #
    # @return [Types::UpdateFirewallRuleGroupAssociationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateFirewallRuleGroupAssociationResponse#firewall_rule_group_association #firewall_rule_group_association} => Types::FirewallRuleGroupAssociation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_firewall_rule_group_association({
    #     firewall_rule_group_association_id: "ResourceId", # required
    #     priority: 1,
    #     mutation_protection: "ENABLED", # accepts ENABLED, DISABLED
    #     name: "Name",
    #   })
    #
    # @example Response structure
    #
    #   resp.firewall_rule_group_association.id #=> String
    #   resp.firewall_rule_group_association.arn #=> String
    #   resp.firewall_rule_group_association.firewall_rule_group_id #=> String
    #   resp.firewall_rule_group_association.vpc_id #=> String
    #   resp.firewall_rule_group_association.name #=> String
    #   resp.firewall_rule_group_association.priority #=> Integer
    #   resp.firewall_rule_group_association.mutation_protection #=> String, one of "ENABLED", "DISABLED"
    #   resp.firewall_rule_group_association.managed_owner_name #=> String
    #   resp.firewall_rule_group_association.status #=> String, one of "COMPLETE", "DELETING", "UPDATING"
    #   resp.firewall_rule_group_association.status_message #=> String
    #   resp.firewall_rule_group_association.creator_request_id #=> String
    #   resp.firewall_rule_group_association.creation_time #=> String
    #   resp.firewall_rule_group_association.modification_time #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/UpdateFirewallRuleGroupAssociation AWS API Documentation
    #
    # @overload update_firewall_rule_group_association(params = {})
    # @param [Hash] params ({})
    def update_firewall_rule_group_association(params = {}, options = {})
      req = build_request(:update_firewall_rule_group_association, params)
      req.send_request(options)
    end

    # Updates the behavior configuration of Route 53 Resolver behavior for a
    # single VPC from Amazon Virtual Private Cloud.
    #
    # @option params [required, String] :resource_id
    #   Resource ID of the Amazon VPC that you want to update the Resolver
    #   configuration for.
    #
    # @option params [required, String] :autodefined_reverse_flag
    #   Indicates whether or not the Resolver will create autodefined rules
    #   for reverse DNS lookups. This is enabled by default. Disabling this
    #   option will also affect EC2-Classic instances using ClassicLink. For
    #   more information, see [ClassicLink][1] in the *Amazon EC2 guide*.
    #
    #   We are retiring EC2-Classic on August 15, 2022. We recommend that you
    #   migrate from EC2-Classic to a VPC. For more information, see [Migrate
    #   from EC2-Classic to a VPC][2] in the *Amazon EC2 guide* and the blog
    #   [EC2-Classic Networking is Retiring – Here’s How to Prepare][3].
    #
    #   <note markdown="1"> It can take some time for the status change to be completed.
    #
    #    </note>
    #
    #
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-classiclink.html
    #   [2]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-migrate.html
    #   [3]: http://aws.amazon.com/blogs/aws/ec2-classic-is-retiring-heres-how-to-prepare/
    #
    # @return [Types::UpdateResolverConfigResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateResolverConfigResponse#resolver_config #resolver_config} => Types::ResolverConfig
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_resolver_config({
    #     resource_id: "ResourceId", # required
    #     autodefined_reverse_flag: "ENABLE", # required, accepts ENABLE, DISABLE, USE_LOCAL_RESOURCE_SETTING
    #   })
    #
    # @example Response structure
    #
    #   resp.resolver_config.id #=> String
    #   resp.resolver_config.resource_id #=> String
    #   resp.resolver_config.owner_id #=> String
    #   resp.resolver_config.autodefined_reverse #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED", "UPDATING_TO_USE_LOCAL_RESOURCE_SETTING", "USE_LOCAL_RESOURCE_SETTING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/UpdateResolverConfig AWS API Documentation
    #
    # @overload update_resolver_config(params = {})
    # @param [Hash] params ({})
    def update_resolver_config(params = {}, options = {})
      req = build_request(:update_resolver_config, params)
      req.send_request(options)
    end

    # Updates an existing DNSSEC validation configuration. If there is no
    # existing DNSSEC validation configuration, one is created.
    #
    # @option params [required, String] :resource_id
    #   The ID of the virtual private cloud (VPC) that you're updating the
    #   DNSSEC validation status for.
    #
    # @option params [required, String] :validation
    #   The new value that you are specifying for DNSSEC validation for the
    #   VPC. The value can be `ENABLE` or `DISABLE`. Be aware that it can take
    #   time for a validation status change to be completed.
    #
    # @return [Types::UpdateResolverDnssecConfigResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateResolverDnssecConfigResponse#resolver_dnssec_config #resolver_dnssec_config} => Types::ResolverDnssecConfig
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_resolver_dnssec_config({
    #     resource_id: "ResourceId", # required
    #     validation: "ENABLE", # required, accepts ENABLE, DISABLE, USE_LOCAL_RESOURCE_SETTING
    #   })
    #
    # @example Response structure
    #
    #   resp.resolver_dnssec_config.id #=> String
    #   resp.resolver_dnssec_config.owner_id #=> String
    #   resp.resolver_dnssec_config.resource_id #=> String
    #   resp.resolver_dnssec_config.validation_status #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED", "UPDATING_TO_USE_LOCAL_RESOURCE_SETTING", "USE_LOCAL_RESOURCE_SETTING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/UpdateResolverDnssecConfig AWS API Documentation
    #
    # @overload update_resolver_dnssec_config(params = {})
    # @param [Hash] params ({})
    def update_resolver_dnssec_config(params = {}, options = {})
      req = build_request(:update_resolver_dnssec_config, params)
      req.send_request(options)
    end

    # Updates the name, or enpoint type for an inbound or an outbound
    # Resolver endpoint. You can only update between IPV4 and DUALSTACK,
    # IPV6 endpoint type can't be updated to other type.
    #
    # @option params [required, String] :resolver_endpoint_id
    #   The ID of the Resolver endpoint that you want to update.
    #
    # @option params [String] :name
    #   The name of the Resolver endpoint that you want to update.
    #
    # @option params [String] :resolver_endpoint_type
    #   Specifies the endpoint type for what type of IP address the endpoint
    #   uses to forward DNS queries.
    #
    # @option params [Array<Types::UpdateIpAddress>] :update_ip_addresses
    #   Updates the Resolver endpoint type to IpV4, Ipv6, or dual-stack.
    #
    # @return [Types::UpdateResolverEndpointResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateResolverEndpointResponse#resolver_endpoint #resolver_endpoint} => Types::ResolverEndpoint
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_resolver_endpoint({
    #     resolver_endpoint_id: "ResourceId", # required
    #     name: "Name",
    #     resolver_endpoint_type: "IPV6", # accepts IPV6, IPV4, DUALSTACK
    #     update_ip_addresses: [
    #       {
    #         ip_id: "ResourceId", # required
    #         ipv_6: "Ipv6", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.resolver_endpoint.id #=> String
    #   resp.resolver_endpoint.creator_request_id #=> String
    #   resp.resolver_endpoint.arn #=> String
    #   resp.resolver_endpoint.name #=> String
    #   resp.resolver_endpoint.security_group_ids #=> Array
    #   resp.resolver_endpoint.security_group_ids[0] #=> String
    #   resp.resolver_endpoint.direction #=> String, one of "INBOUND", "OUTBOUND"
    #   resp.resolver_endpoint.ip_address_count #=> Integer
    #   resp.resolver_endpoint.host_vpc_id #=> String
    #   resp.resolver_endpoint.status #=> String, one of "CREATING", "OPERATIONAL", "UPDATING", "AUTO_RECOVERING", "ACTION_NEEDED", "DELETING"
    #   resp.resolver_endpoint.status_message #=> String
    #   resp.resolver_endpoint.creation_time #=> String
    #   resp.resolver_endpoint.modification_time #=> String
    #   resp.resolver_endpoint.resolver_endpoint_type #=> String, one of "IPV6", "IPV4", "DUALSTACK"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/UpdateResolverEndpoint AWS API Documentation
    #
    # @overload update_resolver_endpoint(params = {})
    # @param [Hash] params ({})
    def update_resolver_endpoint(params = {}, options = {})
      req = build_request(:update_resolver_endpoint, params)
      req.send_request(options)
    end

    # Updates settings for a specified Resolver rule. `ResolverRuleId` is
    # required, and all other parameters are optional. If you don't specify
    # a parameter, it retains its current value.
    #
    # @option params [required, String] :resolver_rule_id
    #   The ID of the Resolver rule that you want to update.
    #
    # @option params [required, Types::ResolverRuleConfig] :config
    #   The new settings for the Resolver rule.
    #
    # @return [Types::UpdateResolverRuleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateResolverRuleResponse#resolver_rule #resolver_rule} => Types::ResolverRule
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_resolver_rule({
    #     resolver_rule_id: "ResourceId", # required
    #     config: { # required
    #       name: "Name",
    #       target_ips: [
    #         {
    #           ip: "Ip",
    #           port: 1,
    #           ipv_6: "Ipv6",
    #         },
    #       ],
    #       resolver_endpoint_id: "ResourceId",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.resolver_rule.id #=> String
    #   resp.resolver_rule.creator_request_id #=> String
    #   resp.resolver_rule.arn #=> String
    #   resp.resolver_rule.domain_name #=> String
    #   resp.resolver_rule.status #=> String, one of "COMPLETE", "DELETING", "UPDATING", "FAILED"
    #   resp.resolver_rule.status_message #=> String
    #   resp.resolver_rule.rule_type #=> String, one of "FORWARD", "SYSTEM", "RECURSIVE"
    #   resp.resolver_rule.name #=> String
    #   resp.resolver_rule.target_ips #=> Array
    #   resp.resolver_rule.target_ips[0].ip #=> String
    #   resp.resolver_rule.target_ips[0].port #=> Integer
    #   resp.resolver_rule.target_ips[0].ipv_6 #=> String
    #   resp.resolver_rule.resolver_endpoint_id #=> String
    #   resp.resolver_rule.owner_id #=> String
    #   resp.resolver_rule.share_status #=> String, one of "NOT_SHARED", "SHARED_WITH_ME", "SHARED_BY_ME"
    #   resp.resolver_rule.creation_time #=> String
    #   resp.resolver_rule.modification_time #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/UpdateResolverRule AWS API Documentation
    #
    # @overload update_resolver_rule(params = {})
    # @param [Hash] params ({})
    def update_resolver_rule(params = {}, options = {})
      req = build_request(:update_resolver_rule, params)
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
      context[:gem_name] = 'aws-sdk-route53resolver'
      context[:gem_version] = '1.46.0'
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
