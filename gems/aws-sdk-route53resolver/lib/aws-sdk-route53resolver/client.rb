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

Aws::Plugins::GlobalConfiguration.add_identifier(:route53resolver)

module Aws::Route53Resolver
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

    # Adds IP addresses to an inbound or an outbound resolver endpoint. If
    # you want to adding more than one IP address, submit one
    # `AssociateResolverEndpointIpAddress` request for each IP address.
    #
    # To remove an IP address from an endpoint, see
    # DisassociateResolverEndpointIpAddress.
    #
    # @option params [required, String] :resolver_endpoint_id
    #   The ID of the resolver endpoint that you want to associate IP
    #   addresses with.
    #
    # @option params [required, Types::IpAddressUpdate] :ip_address
    #   Either the IPv4 address that you want to add to a resolver endpoint or
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/AssociateResolverEndpointIpAddress AWS API Documentation
    #
    # @overload associate_resolver_endpoint_ip_address(params = {})
    # @param [Hash] params ({})
    def associate_resolver_endpoint_ip_address(params = {}, options = {})
      req = build_request(:associate_resolver_endpoint_ip_address, params)
      req.send_request(options)
    end

    # Associates a resolver rule with a VPC. When you associate a rule with
    # a VPC, Resolver forwards all DNS queries for the domain name that is
    # specified in the rule and that originate in the VPC. The queries are
    # forwarded to the IP addresses for the DNS resolvers that are specified
    # in the rule. For more information about rules, see CreateResolverRule.
    #
    # @option params [required, String] :resolver_rule_id
    #   The ID of the resolver rule that you want to associate with the VPC.
    #   To list the existing resolver rules, use ListResolverRules.
    #
    # @option params [String] :name
    #   A name for the association that you're creating between a resolver
    #   rule and a VPC.
    #
    # @option params [required, String] :vpc_id
    #   The ID of the VPC that you want to associate the resolver rule with.
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

    # Creates a resolver endpoint. There are two types of resolver
    # endpoints, inbound and outbound:
    #
    # * An *inbound resolver endpoint* forwards DNS queries to the DNS
    #   service for a VPC from your network or another VPC.
    #
    # * An *outbound resolver endpoint* forwards DNS queries from the DNS
    #   service for a VPC to your network or another VPC.
    #
    # @option params [required, String] :creator_request_id
    #   A unique string that identifies the request and that allows failed
    #   requests to be retried without the risk of executing the operation
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
    #   one or more inbound rules (for inbound resolver endpoints) or outbound
    #   rules (for outbound resolver endpoints).
    #
    # @option params [required, String] :direction
    #   Specify the applicable value:
    #
    #   * `INBOUND`\: Resolver forwards DNS queries to the DNS service for a
    #     VPC from your network or another VPC
    #
    #   * `OUTBOUND`\: Resolver forwards DNS queries from the DNS service for
    #     a VPC to your network or another VPC
    #
    # @option params [required, Array<Types::IpAddressRequest>] :ip_addresses
    #   The subnets and IP addresses in your VPC that you want DNS queries to
    #   pass through on the way from your VPCs to your network (for outbound
    #   endpoints) or on the way from your network to your VPCs (for inbound
    #   resolver endpoints).
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of the tag keys and values that you want to associate with the
    #   endpoint.
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
    #       },
    #     ],
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/CreateResolverEndpoint AWS API Documentation
    #
    # @overload create_resolver_endpoint(params = {})
    # @param [Hash] params ({})
    def create_resolver_endpoint(params = {}, options = {})
      req = build_request(:create_resolver_endpoint, params)
      req.send_request(options)
    end

    # For DNS queries that originate in your VPCs, specifies which resolver
    # endpoint the queries pass through, one domain name that you want to
    # forward to your network, and the IP addresses of the DNS resolvers in
    # your network.
    #
    # @option params [required, String] :creator_request_id
    #   A unique string that identifies the request and that allows failed
    #   requests to be retried without the risk of executing the operation
    #   twice. `CreatorRequestId` can be any unique string, for example, a
    #   date/time stamp.
    #
    # @option params [String] :name
    #   A friendly name that lets you easily find a rule in the Resolver
    #   dashboard in the Route 53 console.
    #
    # @option params [required, String] :rule_type
    #   Specify `FORWARD`. Other resolver rule types aren't supported.
    #
    # @option params [required, String] :domain_name
    #   DNS queries for this domain name are forwarded to the IP addresses
    #   that you specify in `TargetIps`. If a query matches multiple resolver
    #   rules (example.com and www.example.com), outbound DNS queries are
    #   routed using the resolver rule that contains the most specific domain
    #   name (www.example.com).
    #
    # @option params [Array<Types::TargetAddress>] :target_ips
    #   The IPs that you want Resolver to forward DNS queries to. You can
    #   specify only IPv4 addresses. Separate IP addresses with a comma.
    #
    # @option params [String] :resolver_endpoint_id
    #   The ID of the outbound resolver endpoint that you want to use to route
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
    #         ip: "Ip", # required
    #         port: 1,
    #       },
    #     ],
    #     resolver_endpoint_id: "ResourceId",
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
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
    #   resp.resolver_rule.resolver_endpoint_id #=> String
    #   resp.resolver_rule.owner_id #=> String
    #   resp.resolver_rule.share_status #=> String, one of "NOT_SHARED", "SHARED_WITH_ME", "SHARED_BY_ME"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/CreateResolverRule AWS API Documentation
    #
    # @overload create_resolver_rule(params = {})
    # @param [Hash] params ({})
    def create_resolver_rule(params = {}, options = {})
      req = build_request(:create_resolver_rule, params)
      req.send_request(options)
    end

    # Deletes a resolver endpoint. The effect of deleting a resolver
    # endpoint depends on whether it's an inbound or an outbound resolver
    # endpoint:
    #
    # * **Inbound**\: DNS queries from your network or another VPC are no
    #   longer routed to the DNS service for the specified VPC.
    #
    # * **Outbound**\: DNS queries from a VPC are no longer routed to your
    #   network or to another VPC.
    #
    # @option params [required, String] :resolver_endpoint_id
    #   The ID of the resolver endpoint that you want to delete.
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/DeleteResolverEndpoint AWS API Documentation
    #
    # @overload delete_resolver_endpoint(params = {})
    # @param [Hash] params ({})
    def delete_resolver_endpoint(params = {}, options = {})
      req = build_request(:delete_resolver_endpoint, params)
      req.send_request(options)
    end

    # Deletes a resolver rule. Before you can delete a resolver rule, you
    # must disassociate it from all the VPCs that you associated the
    # resolver rule with. For more infomation, see DisassociateResolverRule.
    #
    # @option params [required, String] :resolver_rule_id
    #   The ID of the resolver rule that you want to delete.
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
    #   resp.resolver_rule.resolver_endpoint_id #=> String
    #   resp.resolver_rule.owner_id #=> String
    #   resp.resolver_rule.share_status #=> String, one of "NOT_SHARED", "SHARED_WITH_ME", "SHARED_BY_ME"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/DeleteResolverRule AWS API Documentation
    #
    # @overload delete_resolver_rule(params = {})
    # @param [Hash] params ({})
    def delete_resolver_rule(params = {}, options = {})
      req = build_request(:delete_resolver_rule, params)
      req.send_request(options)
    end

    # Removes IP addresses from an inbound or an outbound resolver endpoint.
    # If you want to remove more than one IP address, submit one
    # `DisassociateResolverEndpointIpAddress` request for each IP address.
    #
    # To add an IP address to an endpoint, see
    # AssociateResolverEndpointIpAddress.
    #
    # @option params [required, String] :resolver_endpoint_id
    #   The ID of the resolver endpoint that you want to disassociate an IP
    #   address from.
    #
    # @option params [required, Types::IpAddressUpdate] :ip_address
    #   The IPv4 address that you want to remove from a resolver endpoint.
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/DisassociateResolverEndpointIpAddress AWS API Documentation
    #
    # @overload disassociate_resolver_endpoint_ip_address(params = {})
    # @param [Hash] params ({})
    def disassociate_resolver_endpoint_ip_address(params = {}, options = {})
      req = build_request(:disassociate_resolver_endpoint_ip_address, params)
      req.send_request(options)
    end

    # Removes the association between a specified resolver rule and a
    # specified VPC.
    #
    # If you disassociate a resolver rule from a VPC, Resolver stops
    # forwarding DNS queries for the domain name that you specified in the
    # resolver rule.
    #
    # @option params [required, String] :vpc_id
    #   The ID of the VPC that you want to disassociate the resolver rule
    #   from.
    #
    # @option params [required, String] :resolver_rule_id
    #   The ID of the resolver rule that you want to disassociate from the
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

    # Gets information about a specified resolver endpoint, such as whether
    # it's an inbound or an outbound resolver endpoint, and the current
    # status of the endpoint.
    #
    # @option params [required, String] :resolver_endpoint_id
    #   The ID of the resolver endpoint that you want to get information
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/GetResolverEndpoint AWS API Documentation
    #
    # @overload get_resolver_endpoint(params = {})
    # @param [Hash] params ({})
    def get_resolver_endpoint(params = {}, options = {})
      req = build_request(:get_resolver_endpoint, params)
      req.send_request(options)
    end

    # Gets information about a specified resolver rule, such as the domain
    # name that the rule forwards DNS queries for and the ID of the outbound
    # resolver endpoint that the rule is associated with.
    #
    # @option params [required, String] :resolver_rule_id
    #   The ID of the resolver rule that you want to get information about.
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
    #   resp.resolver_rule.resolver_endpoint_id #=> String
    #   resp.resolver_rule.owner_id #=> String
    #   resp.resolver_rule.share_status #=> String, one of "NOT_SHARED", "SHARED_WITH_ME", "SHARED_BY_ME"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/GetResolverRule AWS API Documentation
    #
    # @overload get_resolver_rule(params = {})
    # @param [Hash] params ({})
    def get_resolver_rule(params = {}, options = {})
      req = build_request(:get_resolver_rule, params)
      req.send_request(options)
    end

    # Gets information about an association between a specified resolver
    # rule and a VPC. You associate a resolver rule and a VPC using
    # AssociateResolverRule.
    #
    # @option params [required, String] :resolver_rule_association_id
    #   The ID of the resolver rule association that you want to get
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

    # Gets information about a resolver rule policy. A resolver rule policy
    # specifies the Resolver operations and resources that you want to allow
    # another AWS account to be able to use.
    #
    # @option params [required, String] :arn
    #   The ID of the resolver rule policy that you want to get information
    #   about.
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

    # Gets the IP addresses for a specified resolver endpoint.
    #
    # @option params [required, String] :resolver_endpoint_id
    #   The ID of the resolver endpoint that you want to get IP addresses for.
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
    #   If the specified resolver endpoint has more than `MaxResults` IP
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
    #   resp.ip_addresses[0].status #=> String, one of "CREATING", "FAILED_CREATION", "ATTACHING", "ATTACHED", "REMAP_DETACHING", "REMAP_ATTACHING", "DETACHING", "FAILED_RESOURCE_GONE", "DELETING", "DELETE_FAILED_FAS_EXPIRED"
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

    # Lists all the resolver endpoints that were created using the current
    # AWS account.
    #
    # @option params [Integer] :max_results
    #   The maximum number of resolver endpoints that you want to return in
    #   the response to a `ListResolverEndpoints` request. If you don't
    #   specify a value for `MaxResults`, Resolver returns up to 100 resolver
    #   endpoints.
    #
    # @option params [String] :next_token
    #   For the first `ListResolverEndpoints` request, omit this value.
    #
    #   If you have more than `MaxResults` resolver endpoints, you can submit
    #   another `ListResolverEndpoints` request to get the next group of
    #   resolver endpoints. In the next request, specify the value of
    #   `NextToken` from the previous response.
    #
    # @option params [Array<Types::Filter>] :filters
    #   An optional specification to return a subset of resolver endpoints,
    #   such as all inbound resolver endpoints.
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/ListResolverEndpoints AWS API Documentation
    #
    # @overload list_resolver_endpoints(params = {})
    # @param [Hash] params ({})
    def list_resolver_endpoints(params = {}, options = {})
      req = build_request(:list_resolver_endpoints, params)
      req.send_request(options)
    end

    # Lists the associations that were created between resolver rules and
    # VPCs using the current AWS account.
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
    #   An optional specification to return a subset of resolver rules, such
    #   as resolver rules that are associated with the same VPC ID.
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

    # Lists the resolver rules that were created using the current AWS
    # account.
    #
    # @option params [Integer] :max_results
    #   The maximum number of resolver rules that you want to return in the
    #   response to a `ListResolverRules` request. If you don't specify a
    #   value for `MaxResults`, Resolver returns up to 100 resolver rules.
    #
    # @option params [String] :next_token
    #   For the first `ListResolverRules` request, omit this value.
    #
    #   If you have more than `MaxResults` resolver rules, you can submit
    #   another `ListResolverRules` request to get the next group of resolver
    #   rules. In the next request, specify the value of `NextToken` from the
    #   previous response.
    #
    # @option params [Array<Types::Filter>] :filters
    #   An optional specification to return a subset of resolver rules, such
    #   as all resolver rules that are associated with the same resolver
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
    #   resp.resolver_rules[0].resolver_endpoint_id #=> String
    #   resp.resolver_rules[0].owner_id #=> String
    #   resp.resolver_rules[0].share_status #=> String, one of "NOT_SHARED", "SHARED_WITH_ME", "SHARED_BY_ME"
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

    # Specifies the Resolver operations and resources that you want to allow
    # another AWS account to be able to use.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) of the account that you want to grant
    #   permissions to.
    #
    # @option params [required, String] :resolver_rule_policy
    #   An AWS Identity and Access Management policy statement that lists the
    #   permissions that you want to grant to another AWS account.
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
    #   * GetResolverEndpoint
    #
    #   * GetResolverRule
    #
    #   * GetResolverRuleAssociation
    #
    #   * ListResolverEndpoints
    #
    #   * ListResolverRuleAssociations
    #
    #   * ListResolverRules
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
    #         key: "TagKey",
    #         value: "TagValue",
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
    #   * GetResolverEndpoint
    #
    #   * GetResolverRule
    #
    #   * GetResolverRuleAssociation
    #
    #   * ListResolverEndpoints
    #
    #   * ListResolverRuleAssociations
    #
    #   * ListResolverRules
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

    # Updates the name of an inbound or an outbound resolver endpoint.
    #
    # @option params [required, String] :resolver_endpoint_id
    #   The ID of the resolver endpoint that you want to update.
    #
    # @option params [String] :name
    #   The name of the resolver endpoint that you want to update.
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/UpdateResolverEndpoint AWS API Documentation
    #
    # @overload update_resolver_endpoint(params = {})
    # @param [Hash] params ({})
    def update_resolver_endpoint(params = {}, options = {})
      req = build_request(:update_resolver_endpoint, params)
      req.send_request(options)
    end

    # Updates settings for a specified resolver rule. `ResolverRuleId` is
    # required, and all other parameters are optional. If you don't specify
    # a parameter, it retains its current value.
    #
    # @option params [required, String] :resolver_rule_id
    #   The ID of the resolver rule that you want to update.
    #
    # @option params [required, Types::ResolverRuleConfig] :config
    #   The new settings for the resolver rule.
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
    #           ip: "Ip", # required
    #           port: 1,
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
    #   resp.resolver_rule.resolver_endpoint_id #=> String
    #   resp.resolver_rule.owner_id #=> String
    #   resp.resolver_rule.share_status #=> String, one of "NOT_SHARED", "SHARED_WITH_ME", "SHARED_BY_ME"
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
