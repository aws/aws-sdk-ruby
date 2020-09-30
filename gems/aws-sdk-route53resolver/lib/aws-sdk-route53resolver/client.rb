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
    #   one or more inbound rules (for inbound Resolver endpoints) or outbound
    #   rules (for outbound Resolver endpoints). Inbound and outbound rules
    #   must allow TCP and UDP access. For inbound access, open port 53. For
    #   outbound access, open the port that you're using for DNS queries on
    #   your network.
    #
    # @option params [required, String] :direction
    #   Specify the applicable value:
    #
    #   * `INBOUND`\: Resolver forwards DNS queries to the DNS service for a
    #     VPC from your network
    #
    #   * `OUTBOUND`\: Resolver forwards DNS queries from the DNS service for
    #     a VPC to your network
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
    #         key: "TagKey", # required
    #         value: "TagValue", # required
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

    # Creates a Resolver query logging configuration, which defines where
    # you want Resolver to save DNS query logs that originate in your VPCs.
    # Resolver can log queries only for VPCs that are in the same Region as
    # the query logging configuration.
    #
    # To specify which VPCs you want to log queries for, you use
    # `AssociateResolverQueryLogConfig`. For more information, see
    # [AssociateResolverQueryLogConfig][1].
    #
    # You can optionally use AWS Resource Access Manager (AWS RAM) to share
    # a query logging configuration with other AWS accounts. The other
    # accounts can then associate VPCs with the configuration. The query
    # logs that Resolver creates for a configuration include all DNS queries
    # that originate in all VPCs that are associated with the configuration.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_AssociateResolverQueryLogConfig.html
    #
    # @option params [required, String] :name
    #   The name that you want to give the query logging configuration
    #
    # @option params [required, String] :destination_arn
    #   The ARN of the resource that you want Resolver to send query logs. You
    #   can send query logs to an S3 bucket, a CloudWatch Logs log group, or a
    #   Kinesis Data Firehose delivery stream. Examples of valid values
    #   include the following:
    #
    #   * **S3 bucket**\:
    #
    #     `arn:aws:s3:::examplebucket`
    #
    #     You can optionally append a file prefix to the end of the ARN.
    #
    #     `arn:aws:s3:::examplebucket/development/`
    #
    #   * **CloudWatch Logs log group**\:
    #
    #     `arn:aws:logs:us-west-1:123456789012:log-group:/mystack-testgroup-12ABC1AB12A1:*`
    #
    #   * **Kinesis Data Firehose delivery stream**\:
    #
    #     `arn:aws:kinesis:us-east-2:0123456789:stream/my_stream_name`
    #
    # @option params [required, String] :creator_request_id
    #   A unique string that identifies the request and that allows failed
    #   requests to be retried without the risk of executing the operation
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
    #   requests to be retried without the risk of executing the operation
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
    #   specify only IPv4 addresses. Separate IP addresses with a comma.
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
    #         ip: "Ip", # required
    #         port: 1,
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

    # Deletes a Resolver endpoint. The effect of deleting a Resolver
    # endpoint depends on whether it's an inbound or an outbound Resolver
    # endpoint:
    #
    # * **Inbound**\: DNS queries from your network are no longer routed to
    #   the DNS service for the specified VPC.
    #
    # * **Outbound**\: DNS queries from a VPC are no longer routed to your
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
    # applies if the query logging configuration is shared with other AWS
    # accounts, and the other accounts have associated VPCs with the shared
    # configuration.
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
    # want to allow another AWS account to be able to use.
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

    # Gets information about a Resolver rule policy. A Resolver rule policy
    # specifies the Resolver operations and resources that you want to allow
    # another AWS account to be able to use.
    #
    # @option params [required, String] :arn
    #   The ID of the Resolver rule policy that you want to get information
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

    # Lists all the Resolver endpoints that were created using the current
    # AWS account.
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
    #   * `CreationTime`\: The ID of the query logging association.
    #
    #   * `Error`\: If the value of `Status` is `FAILED`, the value of `Error`
    #     indicates the cause:
    #
    #     * `DESTINATION_NOT_FOUND`\: The specified destination (for example,
    #       an Amazon S3 bucket) was deleted.
    #
    #     * `ACCESS_DENIED`\: Permissions don't allow sending logs to the
    #       destination.
    #
    #     If `Status` is a value other than `FAILED`, `ERROR` is null.
    #
    #   * `Id`\: The ID of the query logging association
    #
    #   * `ResolverQueryLogConfigId`\: The ID of the query logging
    #     configuration
    #
    #   * `ResourceId`\: The ID of the VPC that is associated with the query
    #     logging configuration
    #
    #   * `Status`\: The current status of the configuration. Valid values
    #     include the following:
    #
    #     * `CREATING`\: Resolver is creating an association between an Amazon
    #       VPC and a query logging configuration.
    #
    #     * `CREATED`\: The association between an Amazon VPC and a query
    #       logging configuration was successfully created. Resolver is
    #       logging queries that originate in the specified VPC.
    #
    #     * `DELETING`\: Resolver is deleting this query logging association.
    #
    #     * `FAILED`\: Resolver either couldn't create or couldn't delete
    #       the query logging association. Here are two common causes:
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
    #   * `Arn`\: The ARN of the query logging configuration
    #
    #   * `AssociationCount`\: The number of VPCs that are associated with the
    #     specified configuration
    #
    #   * `CreationTime`\: The date and time that Resolver returned when the
    #     configuration was created
    #
    #   * `CreatorRequestId`\: The value that was specified for
    #     `CreatorRequestId` when the configuration was created
    #
    #   * `DestinationArn`\: The location that logs are sent to
    #
    #   * `Id`\: The ID of the configuration
    #
    #   * `Name`\: The name of the configuration
    #
    #   * `OwnerId`\: The AWS account number of the account that created the
    #     configuration
    #
    #   * `ShareStatus`\: Whether the configuration is shared with other AWS
    #     accounts or shared with the current account by another AWS account.
    #     Sharing is configured through AWS Resource Access Manager (AWS RAM).
    #
    #   * `Status`\: The current status of the configuration. Valid values
    #     include the following:
    #
    #     * `CREATING`\: Resolver is creating the query logging configuration.
    #
    #     * `CREATED`\: The query logging configuration was successfully
    #       created. Resolver is logging queries that originate in the
    #       specified VPC.
    #
    #     * `DELETING`\: Resolver is deleting this query logging
    #       configuration.
    #
    #     * `FAILED`\: Resolver either couldn't create or couldn't delete
    #       the query logging configuration. Here are two common causes:
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

    # Lists the Resolver rules that were created using the current AWS
    # account.
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

    # Specifies an AWS account that you want to share a query logging
    # configuration with, the query logging configuration that you want to
    # share, and the operations that you want the account to be able to
    # perform on the configuration.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) of the account that you want to share
    #   rules with.
    #
    # @option params [required, String] :resolver_query_log_config_policy
    #   An AWS Identity and Access Management policy statement that lists the
    #   query logging configurations that you want to share with another AWS
    #   account and the operations that you want the account to be able to
    #   perform. You can specify the following operations in the `Actions`
    #   section of the statement:
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

    # Specifies an AWS account that you want to share rules with, the
    # Resolver rules that you want to share, and the operations that you
    # want the account to be able to perform on those rules.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) of the account that you want to share
    #   rules with.
    #
    # @option params [required, String] :resolver_rule_policy
    #   An AWS Identity and Access Management policy statement that lists the
    #   rules that you want to share with another AWS account and the
    #   operations that you want the account to be able to perform. You can
    #   specify the following operations in the `Actions` section of the
    #   statement:
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
    #   In the `Resource` section of the statement, you specify the ARNs for
    #   the rules that you want to share with the account that you specified
    #   in `Arn`.
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

    # Updates the name of an inbound or an outbound Resolver endpoint.
    #
    # @option params [required, String] :resolver_endpoint_id
    #   The ID of the Resolver endpoint that you want to update.
    #
    # @option params [String] :name
    #   The name of the Resolver endpoint that you want to update.
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
      context[:gem_version] = '1.21.0'
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
