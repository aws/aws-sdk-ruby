# frozen_string_literal: true

# This is generated code!

require_relative 'plugins/endpoint'
require 'smithy-client/plugins/checksum_required'
require 'smithy-client/plugins/content_length'
require 'smithy-client/plugins/default_params'
require 'smithy-client/plugins/host_prefix'
require 'smithy-client/plugins/idempotency_token'
require 'smithy-client/plugins/logging'
require 'smithy-client/plugins/net_http'
require 'smithy-client/plugins/pageable_response'
require 'smithy-client/plugins/param_converter'
require 'smithy-client/plugins/param_validator'
require 'smithy-client/plugins/raise_response_errors'
require 'smithy-client/plugins/request_compression'
require 'smithy-client/plugins/resolve_auth'
require 'smithy-client/plugins/response_target'
require 'smithy-client/plugins/retry_errors'
require 'smithy-client/plugins/stub_responses'
require 'aws-sdk-core/plugins/sigv4'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/json_rpc_protocol'

module Aws::Route53Resolver
  # An API client for Aws::Route53Resolver.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::Route53Resolver

    add_plugin(::Aws::Route53Resolver::Plugins::Endpoint)
    add_plugin(Smithy::Client::Plugins::ChecksumRequired)
    add_plugin(Smithy::Client::Plugins::ContentLength)
    add_plugin(Smithy::Client::Plugins::DefaultParams)
    add_plugin(Smithy::Client::Plugins::HostPrefix)
    add_plugin(Smithy::Client::Plugins::IdempotencyToken)
    add_plugin(Smithy::Client::Plugins::Logging)
    add_plugin(Smithy::Client::Plugins::NetHTTP)
    add_plugin(Smithy::Client::Plugins::PageableResponse)
    add_plugin(Smithy::Client::Plugins::ParamConverter)
    add_plugin(Smithy::Client::Plugins::ParamValidator)
    add_plugin(Smithy::Client::Plugins::RaiseResponseErrors)
    add_plugin(Smithy::Client::Plugins::RequestCompression)
    add_plugin(Smithy::Client::Plugins::ResolveAuth)
    add_plugin(Smithy::Client::Plugins::ResponseTarget)
    add_plugin(Smithy::Client::Plugins::RetryErrors)
    add_plugin(Smithy::Client::Plugins::StubResponses)
    add_plugin(Aws::Core::Plugins::SigV4)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::JsonRpcProtocol)

    # @param options [Hash] Client options
    # @option options [String] :access_key_id
    # @option options [String] :account_id
    # @option options [Boolean] :adaptive_retry_wait_to_fill (true)
    #  When true, the request will sleep until there is sufficient client side capacity to retry
    #  the request. When false, the request will raise a `CapacityNotAvailableError` and will
    #  not retry instead of sleeping.
    # @option options [#resolve(context)] :auth_resolver (AuthResolver.new)
    #  An object that resolves authentication schemes for request signing
    # @option options [Boolean] :convert_params (true)
    #  When `true`, request parameters are coerced into the required types.
    # @option options [#identity] :credentials_provider
    #  The credentials provider used to resolve credentials. Any object that responds to `#identity`
    #  and returns a {Aws::Core::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  Custom Endpoint
    # @option options [Aws::Route53Resolver::EndpointProvider] :endpoint_provider
    #  The endpoint provider used to resolve endpoints. Any object that responds to `#resolve(parameters)`.
    # @option options [String] :http_ca_file
    #  The path to a CA certification file in PEM format. Defaults to `nil` which uses
    #  the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-ca_file Net::HTTP#ca_file}.
    # @option options [String] :http_ca_path
    #  The path of to CA directory containing certification files in PEM format. Defaults to
    #  `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-ca_path Net::HTTP#ca_path}.
    # @option options [OpenSSL::X509::Certificate] :http_cert
    #  Sets the OpenSSL::X509::Certificate object to be used for client certification. Defaults
    #  to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-cert Net::HTTP#cert}.
    # @option options [OpenSSL::X509::Store] :http_cert_store
    #  Sets the OpenSSL::X509::Store to be used for verifying peer certificate. Defaults to
    #  `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-cert_store Net::HTTP#cert_store}.
    # @option options [Numeric] :http_continue_timeout
    #  Sets the continue timeout value, which is the number of seconds to wait for an
    #  expected 100 Continue response. If the HTTP object does not receive a response
    #  in this many seconds it sends the request body. Defaults to `nil` which uses the
    #  Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-continue_timeout Net::HTTP#continue_timeout}.
    # @option options [Boolean] :http_debug_output
    #  When `true`, Net::HTTP debug output will be sent to the configured logger.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#method-i-set_debug_output Net::HTTP#set_debug_output}.
    # @option options [Numeric] :http_keep_alive_timeout
    #  The number of seconds to keep the connection open after a request is sent. If a
    #  new request is made during the given interval, the still-open connection is used;
    #  otherwise the connection will have been closed and a new connection is opened.
    #  Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-keep_alive_timeout Net::HTTP#keep_alive_timeout}.
    # @option options [OpenSSL::PKey::RSA, OpenSSL::PKey::DSA] :http_key
    #  Sets the OpenSSL::PKey object to be used for client private key. Defaults to `nil` which
    #  uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-key Net::HTTP#key}.
    # @option options [Numeric] :http_open_timeout
    #  The number of seconds to wait for a connection to open. If the connection is not
    #  made in the given interval, an exception is raised. Defaults to `nil` which uses
    #  the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-open_timeout Net::HTTP#open_timeout}.
    # @option options [URI::HTTP, String] :http_proxy
    #  A proxy to send requests through. Formatted like 'http://proxy.com:123'.
    # @option options [Numeric] :http_read_timeout
    #  The number of seconds to wait for one block to be read (via one read(2) call).
    #  Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-read_timeout Net::HTTP#read_timeout}.
    # @option options [Numeric] :http_ssl_timeout
    #  Sets the SSL timeout seconds. Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-ssl_timeout Net::HTTP#ssl_timeout}.
    # @option options [Integer] :http_verify_mode (OpenSSL::SSL::VERIFY_PEER)
    #  Sets the verify mode for SSL. Defaults to `OpenSSL::SSL::VERIFY_PEER`.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-verify_mode Net::HTTP#verify_mode}.
    # @option options [Numeric] :http_write_timeout
    #  The number of seconds to wait for one block to be written (via one write(2) call).
    #  Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-write_timeout Net::HTTP#write_timeout}.
    # @option options [Smithy::Client::LogFormatter] :log_formatter (Aws::Log::Formatter.default)
    #  The log formatter used by the logger.
    # @option options [Symbol] :log_level (:info)
    #  The log level to send messages to the logger at.
    # @option options [Logger] :logger
    #  The Logger instance to send log messages to. If this option is not set, logging is disabled.
    # @option options [String] :profile (default)
    #  Used when loading credentials from the shared config file and credentials file
    #  at ~/.aws/config and ~/.aws/credentials, respectively.  When not specified, 'default' is used.
    # @option options [Boolean] :raise_response_errors (true)
    #  When `true`, response errors are raised. When `false`, the error is placed on the
    #  output in the {Smithy::Client::Response#error error accessor}.
    # @option options [String] :region
    #  TODO
    # @option options [Integer] :request_min_compression_size_bytes (10240)
    #  The minimum size in bytes that triggers compression for request bodies.
    #  The value must be non-negative integer value between 0 and 10,485,780 bytes inclusive.
    # @option options [lambda] :retry_backoff (Smithy::Client::Retry::EXPONENTIAL_BACKOFF)
    #  A callable object that calculates a backoff delay for a retry attempt. The callable
    #  should accept a single argument, `attempts`, that represents the number of attempts
    #  that have been made. Used in the `standard` and `adaptive` retry strategies.
    # @option options [Integer] :retry_max_attempts (3)
    #  The maximum number attempts that will be made for a single request, including
    #  the initial attempt. Used in the `standard` and `adaptive` retry strategies.
    # @option options [String, Class] :retry_strategy ('standard')
    #  The retry strategy to use when retrying errors. This can be one of the following:
    #  * `standard` - A standardized retry strategy used by the AWS SDKs. This includes support
    #    for retry quotas, which limit the number of unsuccessful retries a client can make.
    #  * `adaptive` - An experimental retry strategy that includes all the functionality of the
    #    `standard` strategy along with automatic client side throttling. This is a provisional
    #    strategy that may change behavior in the future.
    #  * Any instance of a class that implements the following methods:
    #    - `acquire_initial_retry_token(token_scope)`
    #    - `refresh_retry_token(retry_token, error_info)`
    #    - `record_success(retry_token)`
    # @option options [String] :sdk_ua_app_id
    #  A unique and opaque application ID that is appended to the User-Agent header as app/sdk_ua_app_id.
    #  It should have a maximum length of 50. This variable is sourced from environment variable
    #  `AWS_SDK_UA_APP_ID` or the shared config profile attribute `sdk_ua_app_id`.
    # @option options [String] :secret_access_key
    # @option options [String] :session_token
    # @option options [Boolean] :stub_responses
    #  When `true`, the client will return stubbed responses instead of networking requests.
    #  By default fake responses are generated and returned. You can specify the response data
    #  to return or errors to raise by calling {Stubs#stub_responses}.
    #  @see Stubs
    # @option options [Boolean] :use_dual_stack_endpoint
    #  TODO
    # @option options [Boolean] :use_fips_endpoint
    #  TODO
    # @option options [Boolean] :validate_params (true)
    #  When `true`, request parameters are validated before sending the request.
    def initialize(*options)
      super
    end

    # <p>Associates a <a>FirewallRuleGroup</a> with a VPC, to provide DNS filtering for the VPC. </p>
    # @param [Hash, Types::AssociateFirewallRuleGroupRequest] params
    # @option params [String] :creator_request_id
    #   <p>A unique string that identifies the request and that allows failed requests to be
    #   			retried without the risk of running the operation twice. <code>CreatorRequestId</code>
    #   			can be any unique string, for example, a date/time stamp. </p>
    # @option params [String] :firewall_rule_group_id
    #   <p>The unique identifier of the firewall rule group. </p>
    # @option params [String] :vpc_id
    #   <p>The unique identifier of the VPC that you want to associate with the rule group. </p>
    # @option params [Integer] :priority
    #   <p>The setting that determines the processing order of the rule group among the rule
    #   			groups that you associate with the specified VPC. DNS Firewall filters VPC traffic
    #   			starting from the rule group with the lowest numeric priority setting. </p>
    #            <p>You must specify a unique priority for each rule group that you associate with a single VPC. 
    #              To make it easier to insert rule groups later, leave space between the numbers, for example, use 101, 200, and so on. You 
    #      can change the priority setting for a rule group association after you create it.</p>
    #            <p>The allowed values for <code>Priority</code> are between 100 and 9900.</p>
    # @option params [String] :name
    #   <p>A name that lets you identify the association, to manage and use it.</p>
    # @option params [String] :mutation_protection
    #   <p>If enabled, this setting disallows modification or removal of the association, to help prevent against accidentally altering DNS firewall protections. 
    #          When you create the association, the default setting is <code>DISABLED</code>. </p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of the tag keys and values that you want to associate with the rule group association. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     creator_request_id: "CreatorRequestId", # required
    #     firewall_rule_group_id: "ResourceId", # required
    #     vpc_id: "ResourceId", # required
    #     priority: 1, # required
    #     name: "Name", # required
    #     mutation_protection: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.associate_firewall_rule_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     firewall_rule_group_association: {
    #       id: "ResourceId",
    #       arn: "Arn",
    #       firewall_rule_group_id: "ResourceId",
    #       vpc_id: "ResourceId",
    #       name: "Name",
    #       priority: 1,
    #       mutation_protection: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #       managed_owner_name: "ServicePrinciple",
    #       status: "COMPLETE" # One of: ["COMPLETE", "DELETING", "UPDATING"],
    #       status_message: "StatusMessage",
    #       creator_request_id: "CreatorRequestId",
    #       creation_time: "Rfc3339TimeString",
    #       modification_time: "Rfc3339TimeString"
    #     }
    #   }
    # @return [Types::AssociateFirewallRuleGroupResponse]
    def associate_firewall_rule_group(params = {}, options = {})
      request = build_request(:associate_firewall_rule_group, params)
      request.send_request(options)
    end

    # <p>Adds IP addresses to an inbound or an outbound Resolver endpoint. If you want to add more than one IP address, 
    # 			submit one <code>AssociateResolverEndpointIpAddress</code> request for each IP address.</p>
    #          <p>To remove an IP address from an endpoint, see 
    # 			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_DisassociateResolverEndpointIpAddress.html">DisassociateResolverEndpointIpAddress</a>.
    # 		</p>
    # @param [Hash, Types::AssociateResolverEndpointIpAddressRequest] params
    # @option params [String] :resolver_endpoint_id
    #   <p>The ID of the Resolver endpoint that you want to associate IP addresses with.</p>
    # @option params [Types::IpAddressUpdate] :ip_address
    #   <p>Either the IPv4 address that you want to add to a Resolver endpoint or a subnet ID. If you specify a subnet ID, 
    #   			Resolver chooses an IP address for you from the available IPs in the specified subnet.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resolver_endpoint_id: "ResourceId", # required
    #     ip_address: { # required
    #       ip_id: "ResourceId",
    #       subnet_id: "SubnetId",
    #       ip: "Ip",
    #       ipv6: "Ipv6"
    #     }
    #   }
    #   options = {}
    #   response = client.associate_resolver_endpoint_ip_address(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resolver_endpoint: {
    #       id: "ResourceId",
    #       creator_request_id: "CreatorRequestId",
    #       arn: "Arn",
    #       name: "Name",
    #       security_group_ids: ["ResourceId"],
    #       direction: "INBOUND" # One of: ["INBOUND", "OUTBOUND", "INBOUND_DELEGATION"],
    #       ip_address_count: 1,
    #       host_vpc_id: "ResourceId",
    #       status: "CREATING" # One of: ["CREATING", "OPERATIONAL", "UPDATING", "AUTO_RECOVERING", "ACTION_NEEDED", "DELETING"],
    #       status_message: "StatusMessage",
    #       creation_time: "Rfc3339TimeString",
    #       modification_time: "Rfc3339TimeString",
    #       outpost_arn: "OutpostArn",
    #       preferred_instance_type: "OutpostInstanceType",
    #       resolver_endpoint_type: "IPV6" # One of: ["IPV6", "IPV4", "DUALSTACK"],
    #       protocols: ["DoH" # One of: ["DoH", "Do53", "DoH-FIPS"]]
    #     }
    #   }
    # @return [Types::AssociateResolverEndpointIpAddressResponse]
    def associate_resolver_endpoint_ip_address(params = {}, options = {})
      request = build_request(:associate_resolver_endpoint_ip_address, params)
      request.send_request(options)
    end

    # <p>Associates an Amazon VPC with a specified query logging configuration. Route 53 Resolver logs DNS queries that originate in all of the Amazon VPCs 
    # 			that are associated with a specified query logging configuration. To associate more than one VPC with a configuration, submit one <code>AssociateResolverQueryLogConfig</code> 
    # 			request for each VPC.</p>
    #          <note>
    #             <p>The VPCs that you associate with a query logging configuration must be in the same Region as the configuration.</p>
    #          </note>
    #          <p>To remove a VPC from a query logging configuration, see 
    # 			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_DisassociateResolverQueryLogConfig.html">DisassociateResolverQueryLogConfig</a>.
    # 			</p>
    # @param [Hash, Types::AssociateResolverQueryLogConfigRequest] params
    # @option params [String] :resolver_query_log_config_id
    #   <p>The ID of the query logging configuration that you want to associate a VPC with.</p>
    # @option params [String] :resource_id
    #   <p>The ID of an Amazon VPC that you want this query logging configuration to log queries for.</p>
    #            <note>
    #               <p>The VPCs and the query logging configuration must be in the same Region.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     resolver_query_log_config_id: "ResourceId", # required
    #     resource_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.associate_resolver_query_log_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resolver_query_log_config_association: {
    #       id: "ResourceId",
    #       resolver_query_log_config_id: "ResourceId",
    #       resource_id: "ResourceId",
    #       status: "CREATING" # One of: ["CREATING", "ACTIVE", "ACTION_NEEDED", "DELETING", "FAILED"],
    #       error: "NONE" # One of: ["NONE", "DESTINATION_NOT_FOUND", "ACCESS_DENIED", "INTERNAL_SERVICE_ERROR"],
    #       error_message: "ResolverQueryLogConfigAssociationErrorMessage",
    #       creation_time: "Rfc3339TimeString"
    #     }
    #   }
    # @return [Types::AssociateResolverQueryLogConfigResponse]
    def associate_resolver_query_log_config(params = {}, options = {})
      request = build_request(:associate_resolver_query_log_config, params)
      request.send_request(options)
    end

    # <p>Associates a Resolver rule with a VPC. When you associate a rule with a VPC, Resolver forwards all DNS queries 
    # 			for the domain name that is specified in the rule and that originate in the VPC. The queries are forwarded to the 
    # 			IP addresses for the DNS resolvers that are specified in the rule. For more information about rules, see 
    # 			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_CreateResolverRule.html">CreateResolverRule</a>. </p>
    # @param [Hash, Types::AssociateResolverRuleRequest] params
    # @option params [String] :resolver_rule_id
    #   <p>The ID of the Resolver rule that you want to associate with the VPC. To list the existing Resolver rules, use 
    #   			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverRules.html">ListResolverRules</a>.</p>
    # @option params [String] :name
    #   <p>A name for the association that you're creating between a Resolver rule and a VPC.</p>
    # @option params [String] :vpc_id
    #   <p>The ID of the VPC that you want to associate the Resolver rule with.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resolver_rule_id: "ResourceId", # required
    #     name: "Name",
    #     vpc_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.associate_resolver_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resolver_rule_association: {
    #       id: "ResourceId",
    #       resolver_rule_id: "ResourceId",
    #       name: "Name",
    #       vpc_id: "ResourceId",
    #       status: "CREATING" # One of: ["CREATING", "COMPLETE", "DELETING", "FAILED", "OVERRIDDEN"],
    #       status_message: "StatusMessage"
    #     }
    #   }
    # @return [Types::AssociateResolverRuleResponse]
    def associate_resolver_rule(params = {}, options = {})
      request = build_request(:associate_resolver_rule, params)
      request.send_request(options)
    end

    # <p>Creates an empty firewall domain list for use in DNS Firewall rules. You can populate the domains for the new list with a file, using <a>ImportFirewallDomains</a>, or with domain strings, using <a>UpdateFirewallDomains</a>. </p>
    # @param [Hash, Types::CreateFirewallDomainListRequest] params
    # @option params [String] :creator_request_id
    #   <p>A unique string that identifies the request and that allows you to retry failed requests
    #   			without the risk of running the operation twice. <code>CreatorRequestId</code> can be
    #   			any unique string, for example, a date/time stamp. </p>
    # @option params [String] :name
    #   <p>A name that lets you identify the domain list to manage and use it.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of the tag keys and values that you want to associate with the domain list. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     creator_request_id: "CreatorRequestId", # required
    #     name: "Name", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_firewall_domain_list(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     firewall_domain_list: {
    #       id: "ResourceId",
    #       arn: "Arn",
    #       name: "Name",
    #       domain_count: 1,
    #       status: "COMPLETE" # One of: ["COMPLETE", "COMPLETE_IMPORT_FAILED", "IMPORTING", "DELETING", "UPDATING"],
    #       status_message: "StatusMessage",
    #       managed_owner_name: "ServicePrinciple",
    #       creator_request_id: "CreatorRequestId",
    #       creation_time: "Rfc3339TimeString",
    #       modification_time: "Rfc3339TimeString"
    #     }
    #   }
    # @return [Types::CreateFirewallDomainListResponse]
    def create_firewall_domain_list(params = {}, options = {})
      request = build_request(:create_firewall_domain_list, params)
      request.send_request(options)
    end

    # <p>Creates a single DNS Firewall rule in the specified rule group, using the specified domain list.</p>
    # @param [Hash, Types::CreateFirewallRuleRequest] params
    # @option params [String] :creator_request_id
    #   <p>A unique string that identifies the request and that allows you to retry failed requests
    #   			without the risk of running the operation twice. <code>CreatorRequestId</code> can be
    #   			any unique string, for example, a date/time stamp. </p>
    # @option params [String] :firewall_rule_group_id
    #   <p>The unique identifier of the firewall rule group where you want to create the rule. </p>
    # @option params [String] :firewall_domain_list_id
    #   <p>The ID of the domain list that you want to use in the rule. Can't be used together with <code>DnsThreatProtecton</code>.</p>
    # @option params [Integer] :priority
    #   <p>The setting that determines the processing order of the rule in the rule group. DNS Firewall 
    #              processes the rules in a rule group by order of priority, starting from the lowest setting.</p>
    #            <p>You must specify a unique priority for each rule in a rule group. 
    #              To make it easier to insert rules later, leave space between the numbers, for example, use 100, 200, and so on. You 
    #      can change the priority setting for the rules in a rule group at any time.</p>
    # @option params [String] :action
    #   <p>The action that DNS Firewall should take on a DNS query when it matches one of the domains in the rule's domain list, or a threat in a DNS Firewall Advanced rule:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ALLOW</code> - Permit the request to go through. Not available for DNS Firewall Advanced rules.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ALERT</code> - Permit the request and send metrics and logs to Cloud Watch.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BLOCK</code> - Disallow the request. This option requires additional details in the rule's <code>BlockResponse</code>. </p>
    #               </li>
    #            </ul>
    # @option params [String] :block_response
    #   <p>The way that you want DNS Firewall to block the request, used with the rule action
    #   			setting <code>BLOCK</code>. </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>NODATA</code> - Respond indicating that the query was successful, but no response is available for it.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NXDOMAIN</code> - Respond indicating that the domain name that's in the query doesn't exist.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OVERRIDE</code> - Provide a custom override in the response. This option requires custom handling details in the rule's <code>BlockOverride*</code> settings. </p>
    #               </li>
    #            </ul>
    #            <p>This setting is required if the rule action setting is <code>BLOCK</code>.</p>
    # @option params [String] :block_override_domain
    #   <p>The custom DNS record to send back in response to the query. Used for the rule action <code>BLOCK</code> with a <code>BlockResponse</code> setting of <code>OVERRIDE</code>.</p>
    #            <p>This setting is required if the <code>BlockResponse</code> setting is <code>OVERRIDE</code>.</p>
    # @option params [String] :block_override_dns_type
    #   <p>The DNS record's type. This determines the format of the record value that you provided in <code>BlockOverrideDomain</code>. Used for the rule action <code>BLOCK</code> with a <code>BlockResponse</code> setting of <code>OVERRIDE</code>.</p>
    #            <p>This setting is required if the <code>BlockResponse</code> setting is <code>OVERRIDE</code>.</p>
    # @option params [Integer] :block_override_ttl
    #   <p>The recommended amount of time, in seconds, for the DNS resolver or web browser to cache the provided override record. Used for the rule action <code>BLOCK</code> with a <code>BlockResponse</code> setting of <code>OVERRIDE</code>.</p>
    #            <p>This setting is required if the <code>BlockResponse</code> setting is <code>OVERRIDE</code>.</p>
    # @option params [String] :name
    #   <p>A name that lets you identify the rule in the rule group.</p>
    # @option params [String] :firewall_domain_redirection_action
    #   <p>
    #   			How you want the the rule to evaluate DNS redirection in the DNS redirection chain, such as CNAME or DNAME. 
    #   		</p>
    #            <p>
    #               <code>INSPECT_REDIRECTION_DOMAIN</code>: (Default) inspects all domains in the redirection chain. The individual domains in the redirection chain must be 
    #   			added to the domain list.</p>
    #            <p>
    #               <code>TRUST_REDIRECTION_DOMAIN</code>: Inspects only the first domain in the redirection chain. You don't need to add the subsequent domains in the domain in the redirection list to 
    #   			the domain list.</p>
    # @option params [String] :qtype
    #   <p>
    #   			The DNS query type you want the rule to evaluate. Allowed values are;
    #   		</p>
    #            <ul>
    #               <li>
    #                  <p>
    #   				A: Returns an IPv4 address.</p>
    #               </li>
    #               <li>
    #                  <p>AAAA: Returns an Ipv6 address.</p>
    #               </li>
    #               <li>
    #                  <p>CAA: Restricts CAs that can create SSL/TLS certifications for the domain.</p>
    #               </li>
    #               <li>
    #                  <p>CNAME: Returns another domain name.</p>
    #               </li>
    #               <li>
    #                  <p>DS: Record that identifies the DNSSEC signing key of a delegated zone.</p>
    #               </li>
    #               <li>
    #                  <p>MX: Specifies mail servers.</p>
    #               </li>
    #               <li>
    #                  <p>NAPTR: Regular-expression-based rewriting of domain names.</p>
    #               </li>
    #               <li>
    #                  <p>NS: Authoritative name servers.</p>
    #               </li>
    #               <li>
    #                  <p>PTR: Maps an IP address to a domain name.</p>
    #               </li>
    #               <li>
    #                  <p>SOA: Start of authority record for the zone.</p>
    #               </li>
    #               <li>
    #                  <p>SPF: Lists the servers authorized to send emails from a domain.</p>
    #               </li>
    #               <li>
    #                  <p>SRV: Application specific values that identify servers.</p>
    #               </li>
    #               <li>
    #                  <p>TXT: Verifies email senders and application-specific values.</p>
    #               </li>
    #               <li>
    #                  <p>A query type you define by using the DNS type ID, for example 28 for AAAA. The values must be
    #   				defined as TYPENUMBER, where the
    #   				NUMBER can be 1-65334, for
    #   				example, TYPE28. For more information, see 
    #   				<a href="https://en.wikipedia.org/wiki/List_of_DNS_record_types">List of DNS record types</a>.</p>
    #               </li>
    #            </ul>
    # @option params [String] :dns_threat_protection
    #   <p>
    #   			Use to create a DNS Firewall Advanced rule.
    #   		</p>
    # @option params [String] :confidence_threshold
    #   <p>
    #   			The confidence threshold for DNS Firewall Advanced. You must provide this value when you create a DNS Firewall Advanced rule. The confidence
    #   			level values mean:
    #   		</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>LOW</code>: Provides the highest detection rate for threats, but also increases false positives.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MEDIUM</code>: Provides a balance between detecting threats and false positives.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>HIGH</code>: Detects only the most well corroborated threats with a low rate of false positives. </p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     creator_request_id: "CreatorRequestId", # required
    #     firewall_rule_group_id: "ResourceId", # required
    #     firewall_domain_list_id: "ResourceId",
    #     priority: 1, # required
    #     action: "ALLOW" # One of: ["ALLOW", "BLOCK", "ALERT"], # required
    #     block_response: "NODATA" # One of: ["NODATA", "NXDOMAIN", "OVERRIDE"],
    #     block_override_domain: "BlockOverrideDomain",
    #     block_override_dns_type: "CNAME" # One of: ["CNAME"],
    #     block_override_ttl: 1,
    #     name: "Name", # required
    #     firewall_domain_redirection_action: "INSPECT_REDIRECTION_DOMAIN" # One of: ["INSPECT_REDIRECTION_DOMAIN", "TRUST_REDIRECTION_DOMAIN"],
    #     qtype: "Qtype",
    #     dns_threat_protection: "DGA" # One of: ["DGA", "DNS_TUNNELING"],
    #     confidence_threshold: "LOW" # One of: ["LOW", "MEDIUM", "HIGH"]
    #   }
    #   options = {}
    #   response = client.create_firewall_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     firewall_rule: {
    #       firewall_rule_group_id: "ResourceId",
    #       firewall_domain_list_id: "ResourceId",
    #       firewall_threat_protection_id: "ResourceId",
    #       name: "Name",
    #       priority: 1,
    #       action: "ALLOW" # One of: ["ALLOW", "BLOCK", "ALERT"],
    #       block_response: "NODATA" # One of: ["NODATA", "NXDOMAIN", "OVERRIDE"],
    #       block_override_domain: "BlockOverrideDomain",
    #       block_override_dns_type: "CNAME" # One of: ["CNAME"],
    #       block_override_ttl: 1,
    #       creator_request_id: "CreatorRequestId",
    #       creation_time: "Rfc3339TimeString",
    #       modification_time: "Rfc3339TimeString",
    #       firewall_domain_redirection_action: "INSPECT_REDIRECTION_DOMAIN" # One of: ["INSPECT_REDIRECTION_DOMAIN", "TRUST_REDIRECTION_DOMAIN"],
    #       qtype: "Qtype",
    #       dns_threat_protection: "DGA" # One of: ["DGA", "DNS_TUNNELING"],
    #       confidence_threshold: "LOW" # One of: ["LOW", "MEDIUM", "HIGH"]
    #     }
    #   }
    # @return [Types::CreateFirewallRuleResponse]
    def create_firewall_rule(params = {}, options = {})
      request = build_request(:create_firewall_rule, params)
      request.send_request(options)
    end

    # <p>Creates an empty DNS Firewall rule group for filtering DNS network traffic in a VPC. You can add rules to the new rule group 
    #            by calling <a>CreateFirewallRule</a>. </p>
    # @param [Hash, Types::CreateFirewallRuleGroupRequest] params
    # @option params [String] :creator_request_id
    #   <p>A unique string defined by you to identify the request. This allows you to retry failed
    #   			requests without the risk of running the operation twice. This can be any unique string,
    #   			for example, a timestamp. </p>
    # @option params [String] :name
    #   <p>A name that lets you identify the rule group, to manage and use it.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of the tag keys and values that you want to associate with the rule group. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     creator_request_id: "CreatorRequestId", # required
    #     name: "Name", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_firewall_rule_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     firewall_rule_group: {
    #       id: "ResourceId",
    #       arn: "Arn",
    #       name: "Name",
    #       rule_count: 1,
    #       status: "COMPLETE" # One of: ["COMPLETE", "DELETING", "UPDATING"],
    #       status_message: "StatusMessage",
    #       owner_id: "AccountId",
    #       creator_request_id: "CreatorRequestId",
    #       share_status: "NOT_SHARED" # One of: ["NOT_SHARED", "SHARED_WITH_ME", "SHARED_BY_ME"],
    #       creation_time: "Rfc3339TimeString",
    #       modification_time: "Rfc3339TimeString"
    #     }
    #   }
    # @return [Types::CreateFirewallRuleGroupResponse]
    def create_firewall_rule_group(params = {}, options = {})
      request = build_request(:create_firewall_rule_group, params)
      request.send_request(options)
    end

    # <p>Creates a Route 53 Resolver on an Outpost.</p>
    # @param [Hash, Types::CreateOutpostResolverRequest] params
    # @option params [String] :creator_request_id
    #   <p>A unique string that identifies the request 
    #   		and that allows failed requests to be retried without the risk of running the operation twice. </p>
    #            <p>
    #               <code>CreatorRequestId</code> can be any unique string, for example, a date/time stamp.</p>
    # @option params [String] :name
    #   <p>A friendly name that lets you easily find a configuration in the 
    #   		Resolver dashboard in the Route 53 console.</p>
    # @option params [Integer] :instance_count
    #   <p>Number of Amazon EC2 instances for the
    #   		Resolver on Outpost. 
    #   		The default and minimal value is 4.</p>
    # @option params [String] :preferred_instance_type
    #   <p>
    #   		The Amazon EC2 instance type. If you specify this, you must also specify a value for the <code>OutpostArn</code>.
    #   	</p>
    # @option params [String] :outpost_arn
    #   <p>The Amazon Resource Name (ARN) of the Outpost. If you specify this, you must also specify a value for the <code>PreferredInstanceType</code>.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>
    #   			A string that helps identify the Route 53 Resolvers on Outpost.
    #   		</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     creator_request_id: "CreatorRequestId", # required
    #     name: "OutpostResolverName", # required
    #     instance_count: 1,
    #     preferred_instance_type: "OutpostInstanceType", # required
    #     outpost_arn: "OutpostArn", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_outpost_resolver(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     outpost_resolver: {
    #       arn: "Arn",
    #       creation_time: "Rfc3339TimeString",
    #       modification_time: "Rfc3339TimeString",
    #       creator_request_id: "CreatorRequestId",
    #       id: "ResourceId",
    #       instance_count: 1,
    #       preferred_instance_type: "OutpostInstanceType",
    #       name: "OutpostResolverName",
    #       status: "CREATING" # One of: ["CREATING", "OPERATIONAL", "UPDATING", "DELETING", "ACTION_NEEDED", "FAILED_CREATION", "FAILED_DELETION"],
    #       status_message: "OutpostResolverStatusMessage",
    #       outpost_arn: "OutpostArn"
    #     }
    #   }
    # @return [Types::CreateOutpostResolverResponse]
    def create_outpost_resolver(params = {}, options = {})
      request = build_request(:create_outpost_resolver, params)
      request.send_request(options)
    end

    # <p>Creates a Resolver endpoint. There are two types of Resolver endpoints, inbound and outbound:</p>
    #          <ul>
    #             <li>
    #                <p>An <i>inbound Resolver endpoint</i> forwards DNS queries to the DNS service for a VPC 
    # 				from your network.</p>
    #             </li>
    #             <li>
    #                <p>An <i>outbound Resolver endpoint</i> forwards DNS queries from the DNS service for a VPC 
    # 				to your network.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::CreateResolverEndpointRequest] params
    # @option params [String] :creator_request_id
    #   <p>A unique string that identifies the request and that allows failed requests to be retried
    #   			without the risk of running the operation twice. <code>CreatorRequestId</code> can be
    #   			any unique string, for example, a date/time stamp. </p>
    # @option params [String] :name
    #   <p>A friendly name that lets you easily find a configuration in the Resolver dashboard in the Route 53 console.</p>
    # @option params [Array<String>] :security_group_ids
    #   <p>The ID of one or more security groups that you want to use to control access to this VPC. The security group that you specify 
    #   			must include one or more inbound rules (for inbound Resolver endpoints) or outbound rules (for outbound Resolver endpoints). 
    #   			Inbound and outbound rules must allow TCP and UDP access. For inbound access, open port 53. For outbound access, open the port 
    #   			that you're using for DNS queries on your network.</p>
    #            <p>Some security group rules will cause your connection to be tracked. For outbound resolver endpoint, it can potentially impact the 
    #   			maximum queries per second from outbound endpoint to your target name server. For inbound resolver endpoint, it can bring down the overall maximum queries per second per IP address to as low as 1500. 
    #   			To avoid connection tracking caused by security group, see  
    #   			<a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/security-group-connection-tracking.html#untracked-connectionsl">Untracked connections</a>.</p>
    # @option params [String] :direction
    #   <p>Specify the applicable value:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>INBOUND</code>: Resolver forwards DNS queries to the DNS service for a VPC from your network.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OUTBOUND</code>: Resolver forwards DNS queries from the DNS service for a VPC to your network.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INBOUND_DELEGATION</code>: Resolver delegates queries to Route 53 private hosted zones from your network.</p>
    #               </li>
    #            </ul>
    # @option params [Array<Types::IpAddressRequest>] :ip_addresses
    #   <p>The subnets and IP addresses in your VPC that DNS queries originate from (for outbound endpoints) or that you forward 
    #   			DNS queries to (for inbound endpoints). The subnet ID uniquely identifies a VPC. </p>
    #            <note>
    #               <p>Even though the minimum is 1, Route 53 requires that you create at least two.</p>
    #            </note>
    # @option params [String] :outpost_arn
    #   <p>The Amazon Resource Name (ARN) of the Outpost. If you specify this, you must also specify a
    #   			value for the <code>PreferredInstanceType</code>. </p>
    # @option params [String] :preferred_instance_type
    #   <p>The  instance type. If you specify this, you must also specify a value for the <code>OutpostArn</code>.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of the tag keys and values that you want to associate with the endpoint.</p>
    # @option params [String] :resolver_endpoint_type
    #   <p>
    #   			For the endpoint type you can choose either IPv4, IPv6, or dual-stack.
    #   			A dual-stack endpoint means that it will resolve via both IPv4 and IPv6. This
    #   			endpoint type is applied to all IP addresses.
    #   		</p>
    # @option params [Array<String>] :protocols
    #   <p>
    #   			The protocols you want to use for the endpoint. DoH-FIPS is applicable for default inbound endpoints only.
    #   		</p>
    #            <p>For a default inbound endpoint you can apply the protocols as follows:</p>
    #            <ul>
    #               <li>
    #                  <p> Do53  and DoH in combination.</p>
    #               </li>
    #               <li>
    #                  <p>Do53  and DoH-FIPS in combination.</p>
    #               </li>
    #               <li>
    #                  <p>Do53 alone.</p>
    #               </li>
    #               <li>
    #                  <p>DoH alone.</p>
    #               </li>
    #               <li>
    #                  <p>DoH-FIPS alone.</p>
    #               </li>
    #               <li>
    #                  <p>None, which is treated as Do53.</p>
    #               </li>
    #            </ul>
    #            <p>For a delegation inbound endpoint you can use Do53 only.</p>
    #            <p>For an outbound endpoint you can apply the protocols as follows:</p>
    #            <ul>
    #               <li>
    #                  <p> Do53  and DoH in combination.</p>
    #               </li>
    #               <li>
    #                  <p>Do53 alone.</p>
    #               </li>
    #               <li>
    #                  <p>DoH alone.</p>
    #               </li>
    #               <li>
    #                  <p>None, which is treated as Do53.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     creator_request_id: "CreatorRequestId", # required
    #     name: "Name",
    #     security_group_ids: ["ResourceId"], # required
    #     direction: "INBOUND" # One of: ["INBOUND", "OUTBOUND", "INBOUND_DELEGATION"], # required
    #     ip_addresses: [ # required
    #       {
    #         subnet_id: "SubnetId", # required
    #         ip: "Ip",
    #         ipv6: "Ipv6"
    #       }
    #     ],
    #     outpost_arn: "OutpostArn",
    #     preferred_instance_type: "OutpostInstanceType",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     resolver_endpoint_type: "IPV6" # One of: ["IPV6", "IPV4", "DUALSTACK"],
    #     protocols: ["DoH" # One of: ["DoH", "Do53", "DoH-FIPS"]]
    #   }
    #   options = {}
    #   response = client.create_resolver_endpoint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resolver_endpoint: {
    #       id: "ResourceId",
    #       creator_request_id: "CreatorRequestId",
    #       arn: "Arn",
    #       name: "Name",
    #       security_group_ids: ["ResourceId"],
    #       direction: "INBOUND" # One of: ["INBOUND", "OUTBOUND", "INBOUND_DELEGATION"],
    #       ip_address_count: 1,
    #       host_vpc_id: "ResourceId",
    #       status: "CREATING" # One of: ["CREATING", "OPERATIONAL", "UPDATING", "AUTO_RECOVERING", "ACTION_NEEDED", "DELETING"],
    #       status_message: "StatusMessage",
    #       creation_time: "Rfc3339TimeString",
    #       modification_time: "Rfc3339TimeString",
    #       outpost_arn: "OutpostArn",
    #       preferred_instance_type: "OutpostInstanceType",
    #       resolver_endpoint_type: "IPV6" # One of: ["IPV6", "IPV4", "DUALSTACK"],
    #       protocols: ["DoH" # One of: ["DoH", "Do53", "DoH-FIPS"]]
    #     }
    #   }
    # @return [Types::CreateResolverEndpointResponse]
    def create_resolver_endpoint(params = {}, options = {})
      request = build_request(:create_resolver_endpoint, params)
      request.send_request(options)
    end

    # <p>Creates a Resolver query logging configuration, which defines where you want Resolver to save DNS query logs that originate in your VPCs. 
    # 			Resolver can log queries only for VPCs that are in the same Region as the query logging configuration.</p>
    #          <p>To specify which VPCs you want to log queries for, you use <code>AssociateResolverQueryLogConfig</code>. For more information, see 
    # 			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_AssociateResolverQueryLogConfig.html">AssociateResolverQueryLogConfig</a>. </p>
    #          <p>You can optionally use Resource Access Manager (RAM) to share a query logging configuration with other Amazon Web Services accounts. The other accounts 
    # 			can then associate VPCs with the configuration. The query logs that Resolver creates for a configuration include all DNS queries that originate in all 
    # 			VPCs that are associated with the configuration.</p>
    # @param [Hash, Types::CreateResolverQueryLogConfigRequest] params
    # @option params [String] :name
    #   <p>The name that you want to give the query logging configuration.</p>
    # @option params [String] :destination_arn
    #   <p>The ARN of the resource that you want Resolver to send query logs. You can send query logs to an S3 bucket, a CloudWatch Logs log group, 
    #   			or a Kinesis Data Firehose delivery stream. Examples of valid values include the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>S3 bucket</b>: </p>
    #                  <p>
    #                     <code>arn:aws:s3:::amzn-s3-demo-bucket</code>
    #                  </p>
    #                  <p>You can optionally append a file prefix to the end of the ARN.</p>
    #                  <p>
    #                     <code>arn:aws:s3:::amzn-s3-demo-bucket/development/</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>CloudWatch Logs log group</b>: </p>
    #                  <p>
    #                     <code>arn:aws:logs:us-west-1:123456789012:log-group:/mystack-testgroup-12ABC1AB12A1:*</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Kinesis Data Firehose delivery stream</b>:</p>
    #                  <p>
    #                     <code>arn:aws:kinesis:us-east-2:0123456789:stream/my_stream_name</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [String] :creator_request_id
    #   <p>A unique string that identifies the request and that allows failed requests to be retried
    #   			without the risk of running the operation twice. <code>CreatorRequestId</code> can be
    #   			any unique string, for example, a date/time stamp. </p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of the tag keys and values that you want to associate with the query logging configuration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ResolverQueryLogConfigName", # required
    #     destination_arn: "DestinationArn", # required
    #     creator_request_id: "CreatorRequestId", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_resolver_query_log_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resolver_query_log_config: {
    #       id: "ResourceId",
    #       owner_id: "AccountId",
    #       status: "CREATING" # One of: ["CREATING", "CREATED", "DELETING", "FAILED"],
    #       share_status: "NOT_SHARED" # One of: ["NOT_SHARED", "SHARED_WITH_ME", "SHARED_BY_ME"],
    #       association_count: 1,
    #       arn: "Arn",
    #       name: "ResolverQueryLogConfigName",
    #       destination_arn: "DestinationArn",
    #       creator_request_id: "CreatorRequestId",
    #       creation_time: "Rfc3339TimeString"
    #     }
    #   }
    # @return [Types::CreateResolverQueryLogConfigResponse]
    def create_resolver_query_log_config(params = {}, options = {})
      request = build_request(:create_resolver_query_log_config, params)
      request.send_request(options)
    end

    # <p>For DNS queries that originate in your VPCs, specifies which Resolver endpoint the queries pass through, 
    # 			one domain name that you want to forward to your network, and the IP addresses of the DNS resolvers in your network.</p>
    # @param [Hash, Types::CreateResolverRuleRequest] params
    # @option params [String] :creator_request_id
    #   <p>A unique string that identifies the request and that allows failed requests to be retried
    #   			without the risk of running the operation twice. <code>CreatorRequestId</code> can be
    #   			any unique string, for example, a date/time stamp. </p>
    # @option params [String] :name
    #   <p>A friendly name that lets you easily find a rule in the Resolver dashboard in the Route 53 console.</p>
    # @option params [String] :rule_type
    #   <p>When you want to forward DNS queries for specified domain name to resolvers on your network, specify <code>FORWARD</code> or <code>DELEGATE</code>.</p>
    #            <p>When you have a forwarding rule to forward DNS queries for a domain to your network and you want Resolver to process queries for 
    #   			a subdomain of that domain, specify <code>SYSTEM</code>.</p>
    #            <p>For example, to forward DNS queries for example.com to resolvers on your network, you create a rule and specify <code>FORWARD</code> 
    #   			for <code>RuleType</code>. To then have Resolver process queries for apex.example.com, you create a rule and specify 
    #   			<code>SYSTEM</code> for <code>RuleType</code>.</p>
    #            <p>Currently, only Resolver can create rules that have a value of <code>RECURSIVE</code> for <code>RuleType</code>.</p>
    # @option params [String] :domain_name
    #   <p>DNS queries for this domain name are forwarded to the IP addresses that you specify in <code>TargetIps</code>. If a query matches 
    #   			multiple Resolver rules (example.com and www.example.com), outbound DNS queries are routed using the Resolver rule that contains 
    #   			the most specific domain name (www.example.com).</p>
    # @option params [Array<Types::TargetAddress>] :target_ips
    #   <p>The IPs that you want Resolver to forward DNS queries to. You can specify either Ipv4 or Ipv6 addresses but not both in the same rule. Separate IP addresses with a space.</p>
    #            <p>
    #               <code>TargetIps</code> is available only when the value of <code>Rule type</code> is <code>FORWARD</code>.</p>
    # @option params [String] :resolver_endpoint_id
    #   <p>The ID of the outbound Resolver endpoint that you want to use to route DNS queries to the IP addresses that you specify 
    #   			in <code>TargetIps</code>.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of the tag keys and values that you want to associate with the endpoint.</p>
    # @option params [String] :delegation_record
    #   <p>
    #   			DNS queries with the delegation records that match this domain name are forwarded to the resolvers on your 
    #   			network.
    #   		</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     creator_request_id: "CreatorRequestId", # required
    #     name: "Name",
    #     rule_type: "FORWARD" # One of: ["FORWARD", "SYSTEM", "RECURSIVE", "DELEGATE"], # required
    #     domain_name: "DomainName",
    #     target_ips: [
    #       {
    #         ip: "Ip",
    #         port: 1,
    #         ipv6: "Ipv6",
    #         protocol: "DoH" # One of: ["DoH", "Do53", "DoH-FIPS"],
    #         server_name_indication: "ServerNameIndication"
    #       }
    #     ],
    #     resolver_endpoint_id: "ResourceId",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     delegation_record: "DelegationRecord"
    #   }
    #   options = {}
    #   response = client.create_resolver_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resolver_rule: {
    #       id: "ResourceId",
    #       creator_request_id: "CreatorRequestId",
    #       arn: "Arn",
    #       domain_name: "DomainName",
    #       status: "COMPLETE" # One of: ["COMPLETE", "DELETING", "UPDATING", "FAILED"],
    #       status_message: "StatusMessage",
    #       rule_type: "FORWARD" # One of: ["FORWARD", "SYSTEM", "RECURSIVE", "DELEGATE"],
    #       name: "Name",
    #       target_ips: [
    #         {
    #           ip: "Ip",
    #           port: 1,
    #           ipv6: "Ipv6",
    #           protocol: "DoH" # One of: ["DoH", "Do53", "DoH-FIPS"],
    #           server_name_indication: "ServerNameIndication"
    #         }
    #       ],
    #       resolver_endpoint_id: "ResourceId",
    #       owner_id: "AccountId",
    #       share_status: "NOT_SHARED" # One of: ["NOT_SHARED", "SHARED_WITH_ME", "SHARED_BY_ME"],
    #       creation_time: "Rfc3339TimeString",
    #       modification_time: "Rfc3339TimeString",
    #       delegation_record: "DelegationRecord"
    #     }
    #   }
    # @return [Types::CreateResolverRuleResponse]
    def create_resolver_rule(params = {}, options = {})
      request = build_request(:create_resolver_rule, params)
      request.send_request(options)
    end

    # <p>Deletes the specified domain list. </p>
    # @param [Hash, Types::DeleteFirewallDomainListRequest] params
    # @option params [String] :firewall_domain_list_id
    #   <p>The ID of the domain list that you want to delete. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     firewall_domain_list_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.delete_firewall_domain_list(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     firewall_domain_list: {
    #       id: "ResourceId",
    #       arn: "Arn",
    #       name: "Name",
    #       domain_count: 1,
    #       status: "COMPLETE" # One of: ["COMPLETE", "COMPLETE_IMPORT_FAILED", "IMPORTING", "DELETING", "UPDATING"],
    #       status_message: "StatusMessage",
    #       managed_owner_name: "ServicePrinciple",
    #       creator_request_id: "CreatorRequestId",
    #       creation_time: "Rfc3339TimeString",
    #       modification_time: "Rfc3339TimeString"
    #     }
    #   }
    # @return [Types::DeleteFirewallDomainListResponse]
    def delete_firewall_domain_list(params = {}, options = {})
      request = build_request(:delete_firewall_domain_list, params)
      request.send_request(options)
    end

    # <p>Deletes the specified firewall rule.</p>
    # @param [Hash, Types::DeleteFirewallRuleRequest] params
    # @option params [String] :firewall_rule_group_id
    #   <p>The unique identifier of the firewall rule group that you want to delete the rule from. </p>
    # @option params [String] :firewall_domain_list_id
    #   <p>The ID of the domain list that's used in the rule.  </p>
    # @option params [String] :firewall_threat_protection_id
    #   <p>
    #   			The ID that is created for a DNS Firewall Advanced rule.
    #   		</p>
    # @option params [String] :qtype
    #   <p>
    #   			The DNS query type that the rule you are deleting evaluates. Allowed values are;
    #   		</p>
    #            <ul>
    #               <li>
    #                  <p>
    #   				A: Returns an IPv4 address.</p>
    #               </li>
    #               <li>
    #                  <p>AAAA: Returns an Ipv6 address.</p>
    #               </li>
    #               <li>
    #                  <p>CAA: Restricts CAs that can create SSL/TLS certifications for the domain.</p>
    #               </li>
    #               <li>
    #                  <p>CNAME: Returns another domain name.</p>
    #               </li>
    #               <li>
    #                  <p>DS: Record that identifies the DNSSEC signing key of a delegated zone.</p>
    #               </li>
    #               <li>
    #                  <p>MX: Specifies mail servers.</p>
    #               </li>
    #               <li>
    #                  <p>NAPTR: Regular-expression-based rewriting of domain names.</p>
    #               </li>
    #               <li>
    #                  <p>NS: Authoritative name servers.</p>
    #               </li>
    #               <li>
    #                  <p>PTR: Maps an IP address to a domain name.</p>
    #               </li>
    #               <li>
    #                  <p>SOA: Start of authority record for the zone.</p>
    #               </li>
    #               <li>
    #                  <p>SPF: Lists the servers authorized to send emails from a domain.</p>
    #               </li>
    #               <li>
    #                  <p>SRV: Application specific values that identify servers.</p>
    #               </li>
    #               <li>
    #                  <p>TXT: Verifies email senders and application-specific values.</p>
    #               </li>
    #               <li>
    #                  <p>A query type you define by using the DNS type ID, for example 28 for AAAA. The values must be
    #   				defined as TYPENUMBER, where the
    #   				NUMBER can be 1-65334, for
    #   				example, TYPE28. For more information, see 
    #   				<a href="https://en.wikipedia.org/wiki/List_of_DNS_record_types">List of DNS record types</a>.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     firewall_rule_group_id: "ResourceId", # required
    #     firewall_domain_list_id: "ResourceId",
    #     firewall_threat_protection_id: "ResourceId",
    #     qtype: "Qtype"
    #   }
    #   options = {}
    #   response = client.delete_firewall_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     firewall_rule: {
    #       firewall_rule_group_id: "ResourceId",
    #       firewall_domain_list_id: "ResourceId",
    #       firewall_threat_protection_id: "ResourceId",
    #       name: "Name",
    #       priority: 1,
    #       action: "ALLOW" # One of: ["ALLOW", "BLOCK", "ALERT"],
    #       block_response: "NODATA" # One of: ["NODATA", "NXDOMAIN", "OVERRIDE"],
    #       block_override_domain: "BlockOverrideDomain",
    #       block_override_dns_type: "CNAME" # One of: ["CNAME"],
    #       block_override_ttl: 1,
    #       creator_request_id: "CreatorRequestId",
    #       creation_time: "Rfc3339TimeString",
    #       modification_time: "Rfc3339TimeString",
    #       firewall_domain_redirection_action: "INSPECT_REDIRECTION_DOMAIN" # One of: ["INSPECT_REDIRECTION_DOMAIN", "TRUST_REDIRECTION_DOMAIN"],
    #       qtype: "Qtype",
    #       dns_threat_protection: "DGA" # One of: ["DGA", "DNS_TUNNELING"],
    #       confidence_threshold: "LOW" # One of: ["LOW", "MEDIUM", "HIGH"]
    #     }
    #   }
    # @return [Types::DeleteFirewallRuleResponse]
    def delete_firewall_rule(params = {}, options = {})
      request = build_request(:delete_firewall_rule, params)
      request.send_request(options)
    end

    # <p>Deletes the specified firewall rule group. </p>
    # @param [Hash, Types::DeleteFirewallRuleGroupRequest] params
    # @option params [String] :firewall_rule_group_id
    #   <p>The unique identifier of the firewall rule group that you want to delete. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     firewall_rule_group_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.delete_firewall_rule_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     firewall_rule_group: {
    #       id: "ResourceId",
    #       arn: "Arn",
    #       name: "Name",
    #       rule_count: 1,
    #       status: "COMPLETE" # One of: ["COMPLETE", "DELETING", "UPDATING"],
    #       status_message: "StatusMessage",
    #       owner_id: "AccountId",
    #       creator_request_id: "CreatorRequestId",
    #       share_status: "NOT_SHARED" # One of: ["NOT_SHARED", "SHARED_WITH_ME", "SHARED_BY_ME"],
    #       creation_time: "Rfc3339TimeString",
    #       modification_time: "Rfc3339TimeString"
    #     }
    #   }
    # @return [Types::DeleteFirewallRuleGroupResponse]
    def delete_firewall_rule_group(params = {}, options = {})
      request = build_request(:delete_firewall_rule_group, params)
      request.send_request(options)
    end

    # <p>Deletes a Resolver on the Outpost.</p>
    # @param [Hash, Types::DeleteOutpostResolverRequest] params
    # @option params [String] :id
    #   <p>A unique string that identifies the Resolver on the Outpost.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.delete_outpost_resolver(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     outpost_resolver: {
    #       arn: "Arn",
    #       creation_time: "Rfc3339TimeString",
    #       modification_time: "Rfc3339TimeString",
    #       creator_request_id: "CreatorRequestId",
    #       id: "ResourceId",
    #       instance_count: 1,
    #       preferred_instance_type: "OutpostInstanceType",
    #       name: "OutpostResolverName",
    #       status: "CREATING" # One of: ["CREATING", "OPERATIONAL", "UPDATING", "DELETING", "ACTION_NEEDED", "FAILED_CREATION", "FAILED_DELETION"],
    #       status_message: "OutpostResolverStatusMessage",
    #       outpost_arn: "OutpostArn"
    #     }
    #   }
    # @return [Types::DeleteOutpostResolverResponse]
    def delete_outpost_resolver(params = {}, options = {})
      request = build_request(:delete_outpost_resolver, params)
      request.send_request(options)
    end

    # <p>Deletes a Resolver endpoint. The effect of deleting a Resolver endpoint depends on whether it's an inbound or an outbound 
    # 			Resolver endpoint:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <b>Inbound</b>: DNS queries from your network are no longer routed 
    # 				to the DNS service for the specified VPC.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Outbound</b>: DNS queries from a VPC are no longer routed to your network.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::DeleteResolverEndpointRequest] params
    # @option params [String] :resolver_endpoint_id
    #   <p>The ID of the Resolver endpoint that you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resolver_endpoint_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.delete_resolver_endpoint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resolver_endpoint: {
    #       id: "ResourceId",
    #       creator_request_id: "CreatorRequestId",
    #       arn: "Arn",
    #       name: "Name",
    #       security_group_ids: ["ResourceId"],
    #       direction: "INBOUND" # One of: ["INBOUND", "OUTBOUND", "INBOUND_DELEGATION"],
    #       ip_address_count: 1,
    #       host_vpc_id: "ResourceId",
    #       status: "CREATING" # One of: ["CREATING", "OPERATIONAL", "UPDATING", "AUTO_RECOVERING", "ACTION_NEEDED", "DELETING"],
    #       status_message: "StatusMessage",
    #       creation_time: "Rfc3339TimeString",
    #       modification_time: "Rfc3339TimeString",
    #       outpost_arn: "OutpostArn",
    #       preferred_instance_type: "OutpostInstanceType",
    #       resolver_endpoint_type: "IPV6" # One of: ["IPV6", "IPV4", "DUALSTACK"],
    #       protocols: ["DoH" # One of: ["DoH", "Do53", "DoH-FIPS"]]
    #     }
    #   }
    # @return [Types::DeleteResolverEndpointResponse]
    def delete_resolver_endpoint(params = {}, options = {})
      request = build_request(:delete_resolver_endpoint, params)
      request.send_request(options)
    end

    # <p>Deletes a query logging configuration. When you delete a configuration, Resolver stops logging DNS queries for all of the Amazon VPCs that are 
    # 			associated with the configuration. This also applies if the query logging configuration is shared with other Amazon Web Services accounts, and 
    # 			the other accounts have associated VPCs with the shared configuration.</p>
    #          <p>Before you can delete a query logging configuration, you must first disassociate all VPCs from the configuration. See 
    # 			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_DisassociateResolverQueryLogConfig.html">DisassociateResolverQueryLogConfig</a>.</p>
    #          <p>If you used Resource Access Manager (RAM) to share a query logging configuration with other accounts, you must stop sharing 
    # 			the configuration before you can delete a configuration. The accounts that you shared the configuration with can first disassociate VPCs 
    # 			that they associated with the configuration, but that's not necessary. If you stop sharing the configuration, those VPCs are automatically 
    # 			disassociated from the configuration.</p>
    # @param [Hash, Types::DeleteResolverQueryLogConfigRequest] params
    # @option params [String] :resolver_query_log_config_id
    #   <p>The ID of the query logging configuration that you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resolver_query_log_config_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.delete_resolver_query_log_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resolver_query_log_config: {
    #       id: "ResourceId",
    #       owner_id: "AccountId",
    #       status: "CREATING" # One of: ["CREATING", "CREATED", "DELETING", "FAILED"],
    #       share_status: "NOT_SHARED" # One of: ["NOT_SHARED", "SHARED_WITH_ME", "SHARED_BY_ME"],
    #       association_count: 1,
    #       arn: "Arn",
    #       name: "ResolverQueryLogConfigName",
    #       destination_arn: "DestinationArn",
    #       creator_request_id: "CreatorRequestId",
    #       creation_time: "Rfc3339TimeString"
    #     }
    #   }
    # @return [Types::DeleteResolverQueryLogConfigResponse]
    def delete_resolver_query_log_config(params = {}, options = {})
      request = build_request(:delete_resolver_query_log_config, params)
      request.send_request(options)
    end

    # <p>Deletes a Resolver rule. Before you can delete a Resolver rule, you must disassociate it from all the VPCs that you 
    # 			associated the Resolver rule with. For more information, see 
    # 			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_DisassociateResolverRule.html">DisassociateResolverRule</a>.</p>
    # @param [Hash, Types::DeleteResolverRuleRequest] params
    # @option params [String] :resolver_rule_id
    #   <p>The ID of the Resolver rule that you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resolver_rule_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.delete_resolver_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resolver_rule: {
    #       id: "ResourceId",
    #       creator_request_id: "CreatorRequestId",
    #       arn: "Arn",
    #       domain_name: "DomainName",
    #       status: "COMPLETE" # One of: ["COMPLETE", "DELETING", "UPDATING", "FAILED"],
    #       status_message: "StatusMessage",
    #       rule_type: "FORWARD" # One of: ["FORWARD", "SYSTEM", "RECURSIVE", "DELEGATE"],
    #       name: "Name",
    #       target_ips: [
    #         {
    #           ip: "Ip",
    #           port: 1,
    #           ipv6: "Ipv6",
    #           protocol: "DoH" # One of: ["DoH", "Do53", "DoH-FIPS"],
    #           server_name_indication: "ServerNameIndication"
    #         }
    #       ],
    #       resolver_endpoint_id: "ResourceId",
    #       owner_id: "AccountId",
    #       share_status: "NOT_SHARED" # One of: ["NOT_SHARED", "SHARED_WITH_ME", "SHARED_BY_ME"],
    #       creation_time: "Rfc3339TimeString",
    #       modification_time: "Rfc3339TimeString",
    #       delegation_record: "DelegationRecord"
    #     }
    #   }
    # @return [Types::DeleteResolverRuleResponse]
    def delete_resolver_rule(params = {}, options = {})
      request = build_request(:delete_resolver_rule, params)
      request.send_request(options)
    end

    # <p>Disassociates a <a>FirewallRuleGroup</a> from a VPC, to remove DNS filtering from the VPC. </p>
    # @param [Hash, Types::DisassociateFirewallRuleGroupRequest] params
    # @option params [String] :firewall_rule_group_association_id
    #   <p>The identifier of the <a>FirewallRuleGroupAssociation</a>. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     firewall_rule_group_association_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.disassociate_firewall_rule_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     firewall_rule_group_association: {
    #       id: "ResourceId",
    #       arn: "Arn",
    #       firewall_rule_group_id: "ResourceId",
    #       vpc_id: "ResourceId",
    #       name: "Name",
    #       priority: 1,
    #       mutation_protection: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #       managed_owner_name: "ServicePrinciple",
    #       status: "COMPLETE" # One of: ["COMPLETE", "DELETING", "UPDATING"],
    #       status_message: "StatusMessage",
    #       creator_request_id: "CreatorRequestId",
    #       creation_time: "Rfc3339TimeString",
    #       modification_time: "Rfc3339TimeString"
    #     }
    #   }
    # @return [Types::DisassociateFirewallRuleGroupResponse]
    def disassociate_firewall_rule_group(params = {}, options = {})
      request = build_request(:disassociate_firewall_rule_group, params)
      request.send_request(options)
    end

    # <p>Removes IP addresses from an inbound or an outbound Resolver endpoint. If you want to remove more than one IP address, 
    # 			submit one <code>DisassociateResolverEndpointIpAddress</code> request for each IP address.</p>
    #          <p>To add an IP address to an endpoint, see 
    # 			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_AssociateResolverEndpointIpAddress.html">AssociateResolverEndpointIpAddress</a>.
    # 		</p>
    # @param [Hash, Types::DisassociateResolverEndpointIpAddressRequest] params
    # @option params [String] :resolver_endpoint_id
    #   <p>The ID of the Resolver endpoint that you want to disassociate an IP address from.</p>
    # @option params [Types::IpAddressUpdate] :ip_address
    #   <p>The IPv4 address that you want to remove from a Resolver endpoint.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resolver_endpoint_id: "ResourceId", # required
    #     ip_address: { # required
    #       ip_id: "ResourceId",
    #       subnet_id: "SubnetId",
    #       ip: "Ip",
    #       ipv6: "Ipv6"
    #     }
    #   }
    #   options = {}
    #   response = client.disassociate_resolver_endpoint_ip_address(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resolver_endpoint: {
    #       id: "ResourceId",
    #       creator_request_id: "CreatorRequestId",
    #       arn: "Arn",
    #       name: "Name",
    #       security_group_ids: ["ResourceId"],
    #       direction: "INBOUND" # One of: ["INBOUND", "OUTBOUND", "INBOUND_DELEGATION"],
    #       ip_address_count: 1,
    #       host_vpc_id: "ResourceId",
    #       status: "CREATING" # One of: ["CREATING", "OPERATIONAL", "UPDATING", "AUTO_RECOVERING", "ACTION_NEEDED", "DELETING"],
    #       status_message: "StatusMessage",
    #       creation_time: "Rfc3339TimeString",
    #       modification_time: "Rfc3339TimeString",
    #       outpost_arn: "OutpostArn",
    #       preferred_instance_type: "OutpostInstanceType",
    #       resolver_endpoint_type: "IPV6" # One of: ["IPV6", "IPV4", "DUALSTACK"],
    #       protocols: ["DoH" # One of: ["DoH", "Do53", "DoH-FIPS"]]
    #     }
    #   }
    # @return [Types::DisassociateResolverEndpointIpAddressResponse]
    def disassociate_resolver_endpoint_ip_address(params = {}, options = {})
      request = build_request(:disassociate_resolver_endpoint_ip_address, params)
      request.send_request(options)
    end

    # <p>Disassociates a VPC from a query logging configuration.</p>
    #          <note>
    #             <p>Before you can delete a query logging configuration, you must first disassociate all VPCs
    # 				from the configuration. If you used Resource Access Manager (RAM) to share a
    # 				query logging configuration with other accounts, VPCs can be disassociated from the
    # 				configuration in the following ways:</p>
    #             <ul>
    #                <li>
    #                   <p>The accounts that you shared the configuration with can disassociate VPCs from the configuration.</p>
    #                </li>
    #                <li>
    #                   <p>You can stop sharing the configuration.</p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::DisassociateResolverQueryLogConfigRequest] params
    # @option params [String] :resolver_query_log_config_id
    #   <p>The ID of the query logging configuration that you want to disassociate a specified VPC from.</p>
    # @option params [String] :resource_id
    #   <p>The ID of the Amazon VPC that you want to disassociate from a specified query logging configuration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resolver_query_log_config_id: "ResourceId", # required
    #     resource_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.disassociate_resolver_query_log_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resolver_query_log_config_association: {
    #       id: "ResourceId",
    #       resolver_query_log_config_id: "ResourceId",
    #       resource_id: "ResourceId",
    #       status: "CREATING" # One of: ["CREATING", "ACTIVE", "ACTION_NEEDED", "DELETING", "FAILED"],
    #       error: "NONE" # One of: ["NONE", "DESTINATION_NOT_FOUND", "ACCESS_DENIED", "INTERNAL_SERVICE_ERROR"],
    #       error_message: "ResolverQueryLogConfigAssociationErrorMessage",
    #       creation_time: "Rfc3339TimeString"
    #     }
    #   }
    # @return [Types::DisassociateResolverQueryLogConfigResponse]
    def disassociate_resolver_query_log_config(params = {}, options = {})
      request = build_request(:disassociate_resolver_query_log_config, params)
      request.send_request(options)
    end

    # <p>Removes the association between a specified Resolver rule and a specified VPC.</p>
    #          <important>
    #             <p>If you disassociate a Resolver rule from a VPC, Resolver stops forwarding DNS queries for the 
    # 				domain name that you specified in the Resolver rule. </p>
    #          </important>
    # @param [Hash, Types::DisassociateResolverRuleRequest] params
    # @option params [String] :vpc_id
    #   <p>The ID of the VPC that you want to disassociate the Resolver rule from.</p>
    # @option params [String] :resolver_rule_id
    #   <p>The ID of the Resolver rule that you want to disassociate from the specified VPC.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     vpc_id: "ResourceId", # required
    #     resolver_rule_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.disassociate_resolver_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resolver_rule_association: {
    #       id: "ResourceId",
    #       resolver_rule_id: "ResourceId",
    #       name: "Name",
    #       vpc_id: "ResourceId",
    #       status: "CREATING" # One of: ["CREATING", "COMPLETE", "DELETING", "FAILED", "OVERRIDDEN"],
    #       status_message: "StatusMessage"
    #     }
    #   }
    # @return [Types::DisassociateResolverRuleResponse]
    def disassociate_resolver_rule(params = {}, options = {})
      request = build_request(:disassociate_resolver_rule, params)
      request.send_request(options)
    end

    # <p>Retrieves the configuration of the firewall behavior provided by DNS Firewall for a
    # 			single VPC from Amazon Virtual Private Cloud (Amazon VPC). </p>
    # @param [Hash, Types::GetFirewallConfigRequest] params
    # @option params [String] :resource_id
    #   <p>The ID of the VPC from Amazon VPC that the configuration is for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.get_firewall_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     firewall_config: {
    #       id: "ResourceId",
    #       resource_id: "ResourceId",
    #       owner_id: "AccountId",
    #       firewall_fail_open: "ENABLED" # One of: ["ENABLED", "DISABLED", "USE_LOCAL_RESOURCE_SETTING"]
    #     }
    #   }
    # @return [Types::GetFirewallConfigResponse]
    def get_firewall_config(params = {}, options = {})
      request = build_request(:get_firewall_config, params)
      request.send_request(options)
    end

    # <p>Retrieves the specified firewall domain list.</p>
    # @param [Hash, Types::GetFirewallDomainListRequest] params
    # @option params [String] :firewall_domain_list_id
    #   <p>The ID of the domain list.  </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     firewall_domain_list_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.get_firewall_domain_list(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     firewall_domain_list: {
    #       id: "ResourceId",
    #       arn: "Arn",
    #       name: "Name",
    #       domain_count: 1,
    #       status: "COMPLETE" # One of: ["COMPLETE", "COMPLETE_IMPORT_FAILED", "IMPORTING", "DELETING", "UPDATING"],
    #       status_message: "StatusMessage",
    #       managed_owner_name: "ServicePrinciple",
    #       creator_request_id: "CreatorRequestId",
    #       creation_time: "Rfc3339TimeString",
    #       modification_time: "Rfc3339TimeString"
    #     }
    #   }
    # @return [Types::GetFirewallDomainListResponse]
    def get_firewall_domain_list(params = {}, options = {})
      request = build_request(:get_firewall_domain_list, params)
      request.send_request(options)
    end

    # <p>Retrieves the specified firewall rule group. </p>
    # @param [Hash, Types::GetFirewallRuleGroupRequest] params
    # @option params [String] :firewall_rule_group_id
    #   <p>The unique identifier of the firewall rule group. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     firewall_rule_group_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.get_firewall_rule_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     firewall_rule_group: {
    #       id: "ResourceId",
    #       arn: "Arn",
    #       name: "Name",
    #       rule_count: 1,
    #       status: "COMPLETE" # One of: ["COMPLETE", "DELETING", "UPDATING"],
    #       status_message: "StatusMessage",
    #       owner_id: "AccountId",
    #       creator_request_id: "CreatorRequestId",
    #       share_status: "NOT_SHARED" # One of: ["NOT_SHARED", "SHARED_WITH_ME", "SHARED_BY_ME"],
    #       creation_time: "Rfc3339TimeString",
    #       modification_time: "Rfc3339TimeString"
    #     }
    #   }
    # @return [Types::GetFirewallRuleGroupResponse]
    def get_firewall_rule_group(params = {}, options = {})
      request = build_request(:get_firewall_rule_group, params)
      request.send_request(options)
    end

    # <p>Retrieves a firewall rule group association, which enables DNS filtering for a VPC with one rule group. A VPC can have more than one firewall rule group association, and a rule group can be associated with more than one VPC.</p>
    # @param [Hash, Types::GetFirewallRuleGroupAssociationRequest] params
    # @option params [String] :firewall_rule_group_association_id
    #   <p>The identifier of the <a>FirewallRuleGroupAssociation</a>. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     firewall_rule_group_association_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.get_firewall_rule_group_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     firewall_rule_group_association: {
    #       id: "ResourceId",
    #       arn: "Arn",
    #       firewall_rule_group_id: "ResourceId",
    #       vpc_id: "ResourceId",
    #       name: "Name",
    #       priority: 1,
    #       mutation_protection: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #       managed_owner_name: "ServicePrinciple",
    #       status: "COMPLETE" # One of: ["COMPLETE", "DELETING", "UPDATING"],
    #       status_message: "StatusMessage",
    #       creator_request_id: "CreatorRequestId",
    #       creation_time: "Rfc3339TimeString",
    #       modification_time: "Rfc3339TimeString"
    #     }
    #   }
    # @return [Types::GetFirewallRuleGroupAssociationResponse]
    def get_firewall_rule_group_association(params = {}, options = {})
      request = build_request(:get_firewall_rule_group_association, params)
      request.send_request(options)
    end

    # <p>Returns the Identity and Access Management (Amazon Web Services IAM) policy for sharing the
    #        	specified rule group. You can use the policy to share the rule group using Resource Access Manager (RAM). </p>
    # @param [Hash, Types::GetFirewallRuleGroupPolicyRequest] params
    # @option params [String] :arn
    #   <p>The ARN (Amazon Resource Name) for the rule group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.get_firewall_rule_group_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     firewall_rule_group_policy: "FirewallRuleGroupPolicy"
    #   }
    # @return [Types::GetFirewallRuleGroupPolicyResponse]
    def get_firewall_rule_group_policy(params = {}, options = {})
      request = build_request(:get_firewall_rule_group_policy, params)
      request.send_request(options)
    end

    # <p>Gets information about a specified Resolver on the Outpost, such as its instance count and
    # 			type, name, and the current status of the Resolver.</p>
    # @param [Hash, Types::GetOutpostResolverRequest] params
    # @option params [String] :id
    #   <p>The ID of the Resolver on the Outpost.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.get_outpost_resolver(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     outpost_resolver: {
    #       arn: "Arn",
    #       creation_time: "Rfc3339TimeString",
    #       modification_time: "Rfc3339TimeString",
    #       creator_request_id: "CreatorRequestId",
    #       id: "ResourceId",
    #       instance_count: 1,
    #       preferred_instance_type: "OutpostInstanceType",
    #       name: "OutpostResolverName",
    #       status: "CREATING" # One of: ["CREATING", "OPERATIONAL", "UPDATING", "DELETING", "ACTION_NEEDED", "FAILED_CREATION", "FAILED_DELETION"],
    #       status_message: "OutpostResolverStatusMessage",
    #       outpost_arn: "OutpostArn"
    #     }
    #   }
    # @return [Types::GetOutpostResolverResponse]
    def get_outpost_resolver(params = {}, options = {})
      request = build_request(:get_outpost_resolver, params)
      request.send_request(options)
    end

    # <p>Retrieves the behavior configuration of Route 53 Resolver behavior for a single VPC from
    # 				Amazon Virtual Private Cloud.</p>
    # @param [Hash, Types::GetResolverConfigRequest] params
    # @option params [String] :resource_id
    #   <p>Resource ID of the Amazon VPC that you want to get information about.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.get_resolver_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resolver_config: {
    #       id: "ResourceId",
    #       resource_id: "ResourceId",
    #       owner_id: "AccountId",
    #       autodefined_reverse: "ENABLING" # One of: ["ENABLING", "ENABLED", "DISABLING", "DISABLED", "UPDATING_TO_USE_LOCAL_RESOURCE_SETTING", "USE_LOCAL_RESOURCE_SETTING"]
    #     }
    #   }
    # @return [Types::GetResolverConfigResponse]
    def get_resolver_config(params = {}, options = {})
      request = build_request(:get_resolver_config, params)
      request.send_request(options)
    end

    # <p>Gets DNSSEC validation information for a specified resource.</p>
    # @param [Hash, Types::GetResolverDnssecConfigRequest] params
    # @option params [String] :resource_id
    #   <p>The ID of the virtual private cloud (VPC) for the DNSSEC validation status.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.get_resolver_dnssec_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resolver_dnssec_config: {
    #       id: "ResourceId",
    #       owner_id: "AccountId",
    #       resource_id: "ResourceId",
    #       validation_status: "ENABLING" # One of: ["ENABLING", "ENABLED", "DISABLING", "DISABLED", "UPDATING_TO_USE_LOCAL_RESOURCE_SETTING", "USE_LOCAL_RESOURCE_SETTING"]
    #     }
    #   }
    # @return [Types::GetResolverDnssecConfigResponse]
    def get_resolver_dnssec_config(params = {}, options = {})
      request = build_request(:get_resolver_dnssec_config, params)
      request.send_request(options)
    end

    # <p>Gets information about a specified Resolver endpoint, such as whether it's an inbound or an outbound Resolver endpoint, and the 
    # 			current status of the endpoint.</p>
    # @param [Hash, Types::GetResolverEndpointRequest] params
    # @option params [String] :resolver_endpoint_id
    #   <p>The ID of the Resolver endpoint that you want to get information about.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resolver_endpoint_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.get_resolver_endpoint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resolver_endpoint: {
    #       id: "ResourceId",
    #       creator_request_id: "CreatorRequestId",
    #       arn: "Arn",
    #       name: "Name",
    #       security_group_ids: ["ResourceId"],
    #       direction: "INBOUND" # One of: ["INBOUND", "OUTBOUND", "INBOUND_DELEGATION"],
    #       ip_address_count: 1,
    #       host_vpc_id: "ResourceId",
    #       status: "CREATING" # One of: ["CREATING", "OPERATIONAL", "UPDATING", "AUTO_RECOVERING", "ACTION_NEEDED", "DELETING"],
    #       status_message: "StatusMessage",
    #       creation_time: "Rfc3339TimeString",
    #       modification_time: "Rfc3339TimeString",
    #       outpost_arn: "OutpostArn",
    #       preferred_instance_type: "OutpostInstanceType",
    #       resolver_endpoint_type: "IPV6" # One of: ["IPV6", "IPV4", "DUALSTACK"],
    #       protocols: ["DoH" # One of: ["DoH", "Do53", "DoH-FIPS"]]
    #     }
    #   }
    # @return [Types::GetResolverEndpointResponse]
    def get_resolver_endpoint(params = {}, options = {})
      request = build_request(:get_resolver_endpoint, params)
      request.send_request(options)
    end

    # <p>Gets information about a specified Resolver query logging configuration, such as the number of VPCs that the configuration 
    # 			is logging queries for and the location that logs are sent to. </p>
    # @param [Hash, Types::GetResolverQueryLogConfigRequest] params
    # @option params [String] :resolver_query_log_config_id
    #   <p>The ID of the Resolver query logging configuration that you want to get information about.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resolver_query_log_config_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.get_resolver_query_log_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resolver_query_log_config: {
    #       id: "ResourceId",
    #       owner_id: "AccountId",
    #       status: "CREATING" # One of: ["CREATING", "CREATED", "DELETING", "FAILED"],
    #       share_status: "NOT_SHARED" # One of: ["NOT_SHARED", "SHARED_WITH_ME", "SHARED_BY_ME"],
    #       association_count: 1,
    #       arn: "Arn",
    #       name: "ResolverQueryLogConfigName",
    #       destination_arn: "DestinationArn",
    #       creator_request_id: "CreatorRequestId",
    #       creation_time: "Rfc3339TimeString"
    #     }
    #   }
    # @return [Types::GetResolverQueryLogConfigResponse]
    def get_resolver_query_log_config(params = {}, options = {})
      request = build_request(:get_resolver_query_log_config, params)
      request.send_request(options)
    end

    # <p>Gets information about a specified association between a Resolver query logging configuration and an Amazon VPC. When you associate a VPC 
    # 			with a query logging configuration, Resolver logs DNS queries that originate in that VPC.</p>
    # @param [Hash, Types::GetResolverQueryLogConfigAssociationRequest] params
    # @option params [String] :resolver_query_log_config_association_id
    #   <p>The ID of the Resolver query logging configuration association that you want to get information about.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resolver_query_log_config_association_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.get_resolver_query_log_config_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resolver_query_log_config_association: {
    #       id: "ResourceId",
    #       resolver_query_log_config_id: "ResourceId",
    #       resource_id: "ResourceId",
    #       status: "CREATING" # One of: ["CREATING", "ACTIVE", "ACTION_NEEDED", "DELETING", "FAILED"],
    #       error: "NONE" # One of: ["NONE", "DESTINATION_NOT_FOUND", "ACCESS_DENIED", "INTERNAL_SERVICE_ERROR"],
    #       error_message: "ResolverQueryLogConfigAssociationErrorMessage",
    #       creation_time: "Rfc3339TimeString"
    #     }
    #   }
    # @return [Types::GetResolverQueryLogConfigAssociationResponse]
    def get_resolver_query_log_config_association(params = {}, options = {})
      request = build_request(:get_resolver_query_log_config_association, params)
      request.send_request(options)
    end

    # <p>Gets information about a query logging policy. A query logging policy specifies the Resolver query logging 
    # 			operations and resources that you want to allow another Amazon Web Services account to be able to use.</p>
    # @param [Hash, Types::GetResolverQueryLogConfigPolicyRequest] params
    # @option params [String] :arn
    #   <p>The ARN of the query logging configuration that you want to get the query logging policy for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.get_resolver_query_log_config_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resolver_query_log_config_policy: "ResolverQueryLogConfigPolicy"
    #   }
    # @return [Types::GetResolverQueryLogConfigPolicyResponse]
    def get_resolver_query_log_config_policy(params = {}, options = {})
      request = build_request(:get_resolver_query_log_config_policy, params)
      request.send_request(options)
    end

    # <p>Gets information about a specified Resolver rule, such as the domain name that the rule forwards DNS queries for and the ID of the 
    # 			outbound Resolver endpoint that the rule is associated with.</p>
    # @param [Hash, Types::GetResolverRuleRequest] params
    # @option params [String] :resolver_rule_id
    #   <p>The ID of the Resolver rule that you want to get information about.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resolver_rule_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.get_resolver_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resolver_rule: {
    #       id: "ResourceId",
    #       creator_request_id: "CreatorRequestId",
    #       arn: "Arn",
    #       domain_name: "DomainName",
    #       status: "COMPLETE" # One of: ["COMPLETE", "DELETING", "UPDATING", "FAILED"],
    #       status_message: "StatusMessage",
    #       rule_type: "FORWARD" # One of: ["FORWARD", "SYSTEM", "RECURSIVE", "DELEGATE"],
    #       name: "Name",
    #       target_ips: [
    #         {
    #           ip: "Ip",
    #           port: 1,
    #           ipv6: "Ipv6",
    #           protocol: "DoH" # One of: ["DoH", "Do53", "DoH-FIPS"],
    #           server_name_indication: "ServerNameIndication"
    #         }
    #       ],
    #       resolver_endpoint_id: "ResourceId",
    #       owner_id: "AccountId",
    #       share_status: "NOT_SHARED" # One of: ["NOT_SHARED", "SHARED_WITH_ME", "SHARED_BY_ME"],
    #       creation_time: "Rfc3339TimeString",
    #       modification_time: "Rfc3339TimeString",
    #       delegation_record: "DelegationRecord"
    #     }
    #   }
    # @return [Types::GetResolverRuleResponse]
    def get_resolver_rule(params = {}, options = {})
      request = build_request(:get_resolver_rule, params)
      request.send_request(options)
    end

    # <p>Gets information about an association between a specified Resolver rule and a VPC. You associate a Resolver rule and a VPC using 
    # 			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_AssociateResolverRule.html">AssociateResolverRule</a>. </p>
    # @param [Hash, Types::GetResolverRuleAssociationRequest] params
    # @option params [String] :resolver_rule_association_id
    #   <p>The ID of the Resolver rule association that you want to get information about.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resolver_rule_association_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.get_resolver_rule_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resolver_rule_association: {
    #       id: "ResourceId",
    #       resolver_rule_id: "ResourceId",
    #       name: "Name",
    #       vpc_id: "ResourceId",
    #       status: "CREATING" # One of: ["CREATING", "COMPLETE", "DELETING", "FAILED", "OVERRIDDEN"],
    #       status_message: "StatusMessage"
    #     }
    #   }
    # @return [Types::GetResolverRuleAssociationResponse]
    def get_resolver_rule_association(params = {}, options = {})
      request = build_request(:get_resolver_rule_association, params)
      request.send_request(options)
    end

    # <p>Gets information about the Resolver rule policy for a specified rule. A Resolver rule policy includes the rule that you want to share 
    # 			with another account, the account that you want to share the rule with, and the Resolver operations that you want to allow the account to use. </p>
    # @param [Hash, Types::GetResolverRulePolicyRequest] params
    # @option params [String] :arn
    #   <p>The ID of the Resolver rule that you want to get the Resolver rule policy for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.get_resolver_rule_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resolver_rule_policy: "ResolverRulePolicy"
    #   }
    # @return [Types::GetResolverRulePolicyResponse]
    def get_resolver_rule_policy(params = {}, options = {})
      request = build_request(:get_resolver_rule_policy, params)
      request.send_request(options)
    end

    # <p>Imports domain names from a file into a domain list, for use in a DNS firewall rule group. </p>
    #          <p>Each domain specification in your domain list must satisfy the following
    # 	requirements: </p>
    #          <ul>
    #             <li>
    #                <p>It can optionally start with <code>*</code> (asterisk).</p>
    #             </li>
    #             <li>
    #                <p>With the exception of the optional starting asterisk, it must only contain
    #       	   the following characters: <code>A-Z</code>, <code>a-z</code>,
    #       	   <code>0-9</code>, <code>-</code> (hyphen).</p>
    #             </li>
    #             <li>
    #                <p>It must be from 1-255 characters in length. </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::ImportFirewallDomainsRequest] params
    # @option params [String] :firewall_domain_list_id
    #   <p>The ID of the domain list that you want to modify with the import operation.</p>
    # @option params [String] :operation
    #   <p>What you want DNS Firewall to do with the domains that are listed in the file. This must be set to <code>REPLACE</code>, which updates the domain list to exactly match the list in the file. </p>
    # @option params [String] :domain_file_url
    #   <p>The fully qualified URL or URI of the file stored in Amazon Simple Storage Service
    #   			(Amazon S3) that contains the list of domains to import.</p>
    #            <p>The file must be in an S3 bucket that's in the same Region
    #          as your DNS Firewall. The file must be a text file and must contain a single domain per line.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     firewall_domain_list_id: "ResourceId", # required
    #     operation: "REPLACE" # One of: ["REPLACE"], # required
    #     domain_file_url: "DomainListFileUrl", # required
    #   }
    #   options = {}
    #   response = client.import_firewall_domains(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ResourceId",
    #     name: "Name",
    #     status: "COMPLETE" # One of: ["COMPLETE", "COMPLETE_IMPORT_FAILED", "IMPORTING", "DELETING", "UPDATING"],
    #     status_message: "StatusMessage"
    #   }
    # @return [Types::ImportFirewallDomainsResponse]
    def import_firewall_domains(params = {}, options = {})
      request = build_request(:import_firewall_domains, params)
      request.send_request(options)
    end

    # <p>Retrieves the firewall configurations that you have defined. DNS Firewall uses the configurations to manage firewall behavior for your VPCs. </p>
    #          <p>A single call might return only a partial list of the configurations. For information, see <code>MaxResults</code>. </p>
    # @param [Hash, Types::ListFirewallConfigsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects that you want Resolver to return for this request. If more
    #               objects are available, in the response, Resolver provides a
    #              <code>NextToken</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    #            <p>If you don't specify a value for <code>MaxResults</code>, Resolver returns up to 100 objects. </p>
    # @option params [String] :next_token
    #   <p>For the first call to this list request, omit this value.</p>
    #            <p>When you request a list of objects, Resolver returns at most the number of objects 
    #          specified in <code>MaxResults</code>. If more objects are available for retrieval,
    #              Resolver returns a <code>NextToken</code> value in the response. To retrieve the next 
    #                  batch of objects, use the token that was returned for the prior request in your next request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_firewall_configs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     firewall_configs: [
    #       {
    #         id: "ResourceId",
    #         resource_id: "ResourceId",
    #         owner_id: "AccountId",
    #         firewall_fail_open: "ENABLED" # One of: ["ENABLED", "DISABLED", "USE_LOCAL_RESOURCE_SETTING"]
    #       }
    #     ]
    #   }
    # @return [Types::ListFirewallConfigsResponse]
    def list_firewall_configs(params = {}, options = {})
      request = build_request(:list_firewall_configs, params)
      request.send_request(options)
    end

    # <p>Retrieves the firewall domain lists that you have defined. For each firewall domain list, you can retrieve the domains that are defined for a list by calling <a>ListFirewallDomains</a>. </p>
    #          <p>A single call to this list operation might return only a partial list of the domain lists. For information, see <code>MaxResults</code>. </p>
    # @param [Hash, Types::ListFirewallDomainListsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects that you want Resolver to return for this request. If more
    #               objects are available, in the response, Resolver provides a
    #              <code>NextToken</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    #            <p>If you don't specify a value for <code>MaxResults</code>, Resolver returns up to 100 objects. </p>
    # @option params [String] :next_token
    #   <p>For the first call to this list request, omit this value.</p>
    #            <p>When you request a list of objects, Resolver returns at most the number of objects 
    #          specified in <code>MaxResults</code>. If more objects are available for retrieval,
    #              Resolver returns a <code>NextToken</code> value in the response. To retrieve the next 
    #                  batch of objects, use the token that was returned for the prior request in your next request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_firewall_domain_lists(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     firewall_domain_lists: [
    #       {
    #         id: "ResourceId",
    #         arn: "Arn",
    #         name: "Name",
    #         creator_request_id: "CreatorRequestId",
    #         managed_owner_name: "ServicePrinciple"
    #       }
    #     ]
    #   }
    # @return [Types::ListFirewallDomainListsResponse]
    def list_firewall_domain_lists(params = {}, options = {})
      request = build_request(:list_firewall_domain_lists, params)
      request.send_request(options)
    end

    # <p>Retrieves the domains that you have defined for the specified firewall domain list.  </p>
    #          <p>A single call might return only a partial list of the domains. For information, see <code>MaxResults</code>. </p>
    # @param [Hash, Types::ListFirewallDomainsRequest] params
    # @option params [String] :firewall_domain_list_id
    #   <p>The ID of the domain list whose domains you want to retrieve. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects that you want Resolver to return for this request. If more
    #               objects are available, in the response, Resolver provides a
    #              <code>NextToken</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    #            <p>If you don't specify a value for <code>MaxResults</code>, Resolver returns up to 100 objects. </p>
    # @option params [String] :next_token
    #   <p>For the first call to this list request, omit this value.</p>
    #            <p>When you request a list of objects, Resolver returns at most the number of objects 
    #          specified in <code>MaxResults</code>. If more objects are available for retrieval,
    #              Resolver returns a <code>NextToken</code> value in the response. To retrieve the next 
    #                  batch of objects, use the token that was returned for the prior request in your next request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     firewall_domain_list_id: "ResourceId", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_firewall_domains(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     domains: ["FirewallDomainName"]
    #   }
    # @return [Types::ListFirewallDomainsResponse]
    def list_firewall_domains(params = {}, options = {})
      request = build_request(:list_firewall_domains, params)
      request.send_request(options)
    end

    # <p>Retrieves the firewall rule group associations that you have defined. Each association enables DNS filtering for a VPC with one rule group. </p>
    #          <p>A single call might return only a partial list of the associations. For information, see <code>MaxResults</code>. </p>
    # @param [Hash, Types::ListFirewallRuleGroupAssociationsRequest] params
    # @option params [String] :firewall_rule_group_id
    #   <p>The unique identifier of the firewall rule group that you want to retrieve the associations
    #              for. Leave this blank to retrieve associations for any rule group. </p>
    # @option params [String] :vpc_id
    #   <p>The unique identifier of the VPC that you want to retrieve the associations
    #              for. Leave this blank to retrieve associations for any VPC. </p>
    # @option params [Integer] :priority
    #   <p>The setting that determines the processing order of the rule group among the rule
    #   			groups that are associated with a single VPC. DNS Firewall filters VPC traffic starting
    #   			from the rule group with the lowest numeric priority setting. </p>
    # @option params [String] :status
    #   <p>The association <code>Status</code> setting that you want DNS Firewall to filter on for the list. If you don't specify this, then DNS Firewall returns all associations, regardless of status.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects that you want Resolver to return for this request. If more
    #               objects are available, in the response, Resolver provides a
    #              <code>NextToken</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    #            <p>If you don't specify a value for <code>MaxResults</code>, Resolver returns up to 100 objects. </p>
    # @option params [String] :next_token
    #   <p>For the first call to this list request, omit this value.</p>
    #            <p>When you request a list of objects, Resolver returns at most the number of objects 
    #          specified in <code>MaxResults</code>. If more objects are available for retrieval,
    #              Resolver returns a <code>NextToken</code> value in the response. To retrieve the next 
    #                  batch of objects, use the token that was returned for the prior request in your next request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     firewall_rule_group_id: "ResourceId",
    #     vpc_id: "ResourceId",
    #     priority: 1,
    #     status: "COMPLETE" # One of: ["COMPLETE", "DELETING", "UPDATING"],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_firewall_rule_group_associations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     firewall_rule_group_associations: [
    #       {
    #         id: "ResourceId",
    #         arn: "Arn",
    #         firewall_rule_group_id: "ResourceId",
    #         vpc_id: "ResourceId",
    #         name: "Name",
    #         priority: 1,
    #         mutation_protection: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #         managed_owner_name: "ServicePrinciple",
    #         status: "COMPLETE" # One of: ["COMPLETE", "DELETING", "UPDATING"],
    #         status_message: "StatusMessage",
    #         creator_request_id: "CreatorRequestId",
    #         creation_time: "Rfc3339TimeString",
    #         modification_time: "Rfc3339TimeString"
    #       }
    #     ]
    #   }
    # @return [Types::ListFirewallRuleGroupAssociationsResponse]
    def list_firewall_rule_group_associations(params = {}, options = {})
      request = build_request(:list_firewall_rule_group_associations, params)
      request.send_request(options)
    end

    # <p>Retrieves the minimal high-level information for the rule groups that you have defined.  </p>
    #          <p>A single call might return only a partial list of the rule groups. For information, see <code>MaxResults</code>. </p>
    # @param [Hash, Types::ListFirewallRuleGroupsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects that you want Resolver to return for this request. If more
    #               objects are available, in the response, Resolver provides a
    #              <code>NextToken</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    #            <p>If you don't specify a value for <code>MaxResults</code>, Resolver returns up to 100 objects. </p>
    # @option params [String] :next_token
    #   <p>For the first call to this list request, omit this value.</p>
    #            <p>When you request a list of objects, Resolver returns at most the number of objects 
    #          specified in <code>MaxResults</code>. If more objects are available for retrieval,
    #              Resolver returns a <code>NextToken</code> value in the response. To retrieve the next 
    #                  batch of objects, use the token that was returned for the prior request in your next request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_firewall_rule_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     firewall_rule_groups: [
    #       {
    #         id: "ResourceId",
    #         arn: "Arn",
    #         name: "Name",
    #         owner_id: "AccountId",
    #         creator_request_id: "CreatorRequestId",
    #         share_status: "NOT_SHARED" # One of: ["NOT_SHARED", "SHARED_WITH_ME", "SHARED_BY_ME"]
    #       }
    #     ]
    #   }
    # @return [Types::ListFirewallRuleGroupsResponse]
    def list_firewall_rule_groups(params = {}, options = {})
      request = build_request(:list_firewall_rule_groups, params)
      request.send_request(options)
    end

    # <p>Retrieves the firewall rules that you have defined for the specified firewall rule group. DNS Firewall uses the rules in a rule group to filter DNS network traffic for a VPC. </p>
    #          <p>A single call might return only a partial list of the rules. For information, see <code>MaxResults</code>. </p>
    # @param [Hash, Types::ListFirewallRulesRequest] params
    # @option params [String] :firewall_rule_group_id
    #   <p>The unique identifier of the firewall rule group that you want to retrieve the rules for. </p>
    # @option params [Integer] :priority
    #   <p>Optional additional filter for the rules to retrieve.</p>
    #            <p>The setting that determines the processing order of the rules in a rule group. DNS Firewall 
    #              processes the rules in a rule group by order of priority, starting from the lowest setting.</p>
    # @option params [String] :action
    #   <p>Optional additional filter for the rules to retrieve.</p>
    #            <p>The action that DNS Firewall should take on a DNS query when it matches one of the domains in the rule's domain list, or a threat in a DNS Firewall Advanced rule:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ALLOW</code> - Permit the request to go through. Not availabe for DNS Firewall Advanced rules.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ALERT</code> - Permit the request to go through but send an alert to the logs.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BLOCK</code> - Disallow the request. If this is specified, additional handling details are provided in the rule's <code>BlockResponse</code> setting. </p>
    #               </li>
    #            </ul>
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects that you want Resolver to return for this request. If more
    #               objects are available, in the response, Resolver provides a
    #              <code>NextToken</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    #            <p>If you don't specify a value for <code>MaxResults</code>, Resolver returns up to 100 objects. </p>
    # @option params [String] :next_token
    #   <p>For the first call to this list request, omit this value.</p>
    #            <p>When you request a list of objects, Resolver returns at most the number of objects 
    #          specified in <code>MaxResults</code>. If more objects are available for retrieval,
    #              Resolver returns a <code>NextToken</code> value in the response. To retrieve the next 
    #                  batch of objects, use the token that was returned for the prior request in your next request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     firewall_rule_group_id: "ResourceId", # required
    #     priority: 1,
    #     action: "ALLOW" # One of: ["ALLOW", "BLOCK", "ALERT"],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_firewall_rules(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     firewall_rules: [
    #       {
    #         firewall_rule_group_id: "ResourceId",
    #         firewall_domain_list_id: "ResourceId",
    #         firewall_threat_protection_id: "ResourceId",
    #         name: "Name",
    #         priority: 1,
    #         action: "ALLOW" # One of: ["ALLOW", "BLOCK", "ALERT"],
    #         block_response: "NODATA" # One of: ["NODATA", "NXDOMAIN", "OVERRIDE"],
    #         block_override_domain: "BlockOverrideDomain",
    #         block_override_dns_type: "CNAME" # One of: ["CNAME"],
    #         block_override_ttl: 1,
    #         creator_request_id: "CreatorRequestId",
    #         creation_time: "Rfc3339TimeString",
    #         modification_time: "Rfc3339TimeString",
    #         firewall_domain_redirection_action: "INSPECT_REDIRECTION_DOMAIN" # One of: ["INSPECT_REDIRECTION_DOMAIN", "TRUST_REDIRECTION_DOMAIN"],
    #         qtype: "Qtype",
    #         dns_threat_protection: "DGA" # One of: ["DGA", "DNS_TUNNELING"],
    #         confidence_threshold: "LOW" # One of: ["LOW", "MEDIUM", "HIGH"]
    #       }
    #     ]
    #   }
    # @return [Types::ListFirewallRulesResponse]
    def list_firewall_rules(params = {}, options = {})
      request = build_request(:list_firewall_rules, params)
      request.send_request(options)
    end

    # <p>Lists all the Resolvers on Outposts that were created using the current Amazon Web Services account.</p>
    # @param [Hash, Types::ListOutpostResolversRequest] params
    # @option params [String] :outpost_arn
    #   <p>The Amazon Resource Name (ARN) of the Outpost.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of Resolvers on the Outpost that you want to return in the response to a
    #   				<code>ListOutpostResolver</code> request. If you don't specify a value for
    #   				<code>MaxResults</code>, the request returns up to 100 Resolvers.</p>
    # @option params [String] :next_token
    #   <p>For the first <code>ListOutpostResolver</code> request, omit this value.</p>
    #            <p></p>
    # @example Request syntax with placeholder values
    #   params = {
    #     outpost_arn: "OutpostArn",
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_outpost_resolvers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     outpost_resolvers: [
    #       {
    #         arn: "Arn",
    #         creation_time: "Rfc3339TimeString",
    #         modification_time: "Rfc3339TimeString",
    #         creator_request_id: "CreatorRequestId",
    #         id: "ResourceId",
    #         instance_count: 1,
    #         preferred_instance_type: "OutpostInstanceType",
    #         name: "OutpostResolverName",
    #         status: "CREATING" # One of: ["CREATING", "OPERATIONAL", "UPDATING", "DELETING", "ACTION_NEEDED", "FAILED_CREATION", "FAILED_DELETION"],
    #         status_message: "OutpostResolverStatusMessage",
    #         outpost_arn: "OutpostArn"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListOutpostResolversResponse]
    def list_outpost_resolvers(params = {}, options = {})
      request = build_request(:list_outpost_resolvers, params)
      request.send_request(options)
    end

    # <p>Retrieves the Resolver configurations that you have defined. 
    # 			Route 53 Resolver uses the configurations to manage DNS resolution behavior for your VPCs.</p>
    # @param [Hash, Types::ListResolverConfigsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of Resolver configurations that you want to return in the response to 
    #   			a <code>ListResolverConfigs</code> request. If you don't specify a value for <code>MaxResults</code>, 
    #   			up to 100 Resolver configurations are returned.</p>
    # @option params [String] :next_token
    #   <p>(Optional) If the current Amazon Web Services account has more than <code>MaxResults</code> Resolver configurations, use 
    #   			<code>NextToken</code> to get the second and subsequent pages of results.</p>
    #            <p>For the first <code>ListResolverConfigs</code> request, omit this value.</p>
    #            <p>For the second and subsequent requests, get the value of <code>NextToken</code> from the previous response and 
    #   			specify that value for <code>NextToken</code> in the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_resolver_configs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     resolver_configs: [
    #       {
    #         id: "ResourceId",
    #         resource_id: "ResourceId",
    #         owner_id: "AccountId",
    #         autodefined_reverse: "ENABLING" # One of: ["ENABLING", "ENABLED", "DISABLING", "DISABLED", "UPDATING_TO_USE_LOCAL_RESOURCE_SETTING", "USE_LOCAL_RESOURCE_SETTING"]
    #       }
    #     ]
    #   }
    # @return [Types::ListResolverConfigsResponse]
    def list_resolver_configs(params = {}, options = {})
      request = build_request(:list_resolver_configs, params)
      request.send_request(options)
    end

    # <p>Lists the configurations for DNSSEC validation that are associated with the current Amazon Web Services account.</p>
    # @param [Hash, Types::ListResolverDnssecConfigsRequest] params
    # @option params [Integer] :max_results
    #   <p>
    #               <i>Optional</i>: An integer that specifies the maximum number of DNSSEC configuration results that you want Amazon Route 53 to return. 
    #   			If you don't specify a value for <code>MaxResults</code>, Route 53 returns up to 100 configuration per page.</p>
    # @option params [String] :next_token
    #   <p>(Optional) If the current Amazon Web Services account has more than <code>MaxResults</code> DNSSEC configurations, use <code>NextToken</code> 
    #   			to get the second and subsequent pages of results.</p>
    #            <p>For the first <code>ListResolverDnssecConfigs</code> request, omit this value.</p>
    #            <p>For the second and subsequent requests, get the value of <code>NextToken</code> from the previous response and specify that value 
    #   			for <code>NextToken</code> in the request.</p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>An optional specification to return a subset of objects.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken",
    #     filters: [
    #       {
    #         name: "FilterName",
    #         values: ["FilterValue"]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.list_resolver_dnssec_configs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     resolver_dnssec_configs: [
    #       {
    #         id: "ResourceId",
    #         owner_id: "AccountId",
    #         resource_id: "ResourceId",
    #         validation_status: "ENABLING" # One of: ["ENABLING", "ENABLED", "DISABLING", "DISABLED", "UPDATING_TO_USE_LOCAL_RESOURCE_SETTING", "USE_LOCAL_RESOURCE_SETTING"]
    #       }
    #     ]
    #   }
    # @return [Types::ListResolverDnssecConfigsResponse]
    def list_resolver_dnssec_configs(params = {}, options = {})
      request = build_request(:list_resolver_dnssec_configs, params)
      request.send_request(options)
    end

    # <p>Gets the IP addresses for a specified Resolver endpoint.</p>
    # @param [Hash, Types::ListResolverEndpointIpAddressesRequest] params
    # @option params [String] :resolver_endpoint_id
    #   <p>The ID of the Resolver endpoint that you want to get IP addresses for.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of IP addresses that you want to return in the response to a <code>ListResolverEndpointIpAddresses</code> request. 
    #   			If you don't specify a value for <code>MaxResults</code>, Resolver returns up to 100 IP addresses. </p>
    # @option params [String] :next_token
    #   <p>For the first <code>ListResolverEndpointIpAddresses</code> request, omit this value.</p>
    #            <p>If the specified Resolver endpoint has more than <code>MaxResults</code> IP addresses, you can submit another 
    #   			<code>ListResolverEndpointIpAddresses</code> request to get the next group of IP addresses. In the next request, specify the value of 
    #   			<code>NextToken</code> from the previous response. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resolver_endpoint_id: "ResourceId", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_resolver_endpoint_ip_addresses(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     ip_addresses: [
    #       {
    #         ip_id: "ResourceId",
    #         subnet_id: "SubnetId",
    #         ip: "Ip",
    #         ipv6: "Ipv6",
    #         status: "CREATING" # One of: ["CREATING", "FAILED_CREATION", "ATTACHING", "ATTACHED", "REMAP_DETACHING", "REMAP_ATTACHING", "DETACHING", "FAILED_RESOURCE_GONE", "DELETING", "DELETE_FAILED_FAS_EXPIRED", "UPDATING", "UPDATE_FAILED", "ISOLATED"],
    #         status_message: "StatusMessage",
    #         creation_time: "Rfc3339TimeString",
    #         modification_time: "Rfc3339TimeString"
    #       }
    #     ]
    #   }
    # @return [Types::ListResolverEndpointIpAddressesResponse]
    def list_resolver_endpoint_ip_addresses(params = {}, options = {})
      request = build_request(:list_resolver_endpoint_ip_addresses, params)
      request.send_request(options)
    end

    # <p>Lists all the Resolver endpoints that were created using the current Amazon Web Services account.</p>
    # @param [Hash, Types::ListResolverEndpointsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of Resolver endpoints that you want to return in the response to a <code>ListResolverEndpoints</code> request. 
    #   			If you don't specify a value for <code>MaxResults</code>, Resolver returns up to 100 Resolver endpoints. </p>
    # @option params [String] :next_token
    #   <p>For the first <code>ListResolverEndpoints</code> request, omit this value.</p>
    #            <p>If you have more than <code>MaxResults</code> Resolver endpoints, you can submit another <code>ListResolverEndpoints</code> request 
    #   			to get the next group of Resolver endpoints. In the next request, specify the value of <code>NextToken</code> from the previous response. </p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>An optional specification to return a subset of Resolver endpoints, such as all inbound Resolver endpoints.</p>
    #            <note>
    #               <p>If you submit a second or subsequent <code>ListResolverEndpoints</code> request and specify the <code>NextToken</code> parameter, 
    #   			you must use the same values for <code>Filters</code>, if any, as in the previous request.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken",
    #     filters: [
    #       {
    #         name: "FilterName",
    #         values: ["FilterValue"]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.list_resolver_endpoints(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     resolver_endpoints: [
    #       {
    #         id: "ResourceId",
    #         creator_request_id: "CreatorRequestId",
    #         arn: "Arn",
    #         name: "Name",
    #         security_group_ids: ["ResourceId"],
    #         direction: "INBOUND" # One of: ["INBOUND", "OUTBOUND", "INBOUND_DELEGATION"],
    #         ip_address_count: 1,
    #         host_vpc_id: "ResourceId",
    #         status: "CREATING" # One of: ["CREATING", "OPERATIONAL", "UPDATING", "AUTO_RECOVERING", "ACTION_NEEDED", "DELETING"],
    #         status_message: "StatusMessage",
    #         creation_time: "Rfc3339TimeString",
    #         modification_time: "Rfc3339TimeString",
    #         outpost_arn: "OutpostArn",
    #         preferred_instance_type: "OutpostInstanceType",
    #         resolver_endpoint_type: "IPV6" # One of: ["IPV6", "IPV4", "DUALSTACK"],
    #         protocols: ["DoH" # One of: ["DoH", "Do53", "DoH-FIPS"]]
    #       }
    #     ]
    #   }
    # @return [Types::ListResolverEndpointsResponse]
    def list_resolver_endpoints(params = {}, options = {})
      request = build_request(:list_resolver_endpoints, params)
      request.send_request(options)
    end

    # <p>Lists information about associations between Amazon VPCs and query logging configurations.</p>
    # @param [Hash, Types::ListResolverQueryLogConfigAssociationsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of query logging associations that you want to return in the response to a <code>ListResolverQueryLogConfigAssociations</code> request. 
    #   			If you don't specify a value for <code>MaxResults</code>, Resolver returns up to 100 query logging associations. </p>
    # @option params [String] :next_token
    #   <p>For the first <code>ListResolverQueryLogConfigAssociations</code> request, omit this value.</p>
    #            <p>If there are more than <code>MaxResults</code> query logging associations that match the values that you specify for <code>Filters</code>, 
    #   			you can submit another <code>ListResolverQueryLogConfigAssociations</code> request to get the next group of associations. In the next request, specify the value of 
    #   			<code>NextToken</code> from the previous response. </p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>An optional specification to return a subset of query logging associations.</p>
    #            <note>
    #               <p>If you submit a second or subsequent <code>ListResolverQueryLogConfigAssociations</code> request and specify the <code>NextToken</code> parameter, 
    #   				you must use the same values for <code>Filters</code>, if any, as in the previous request.</p>
    #            </note>
    # @option params [String] :sort_by
    #   <p>The element that you want Resolver to sort query logging associations by. </p>
    #            <note>
    #               <p>If you submit a second or subsequent <code>ListResolverQueryLogConfigAssociations</code> request and specify the <code>NextToken</code> parameter, 
    #   				you must use the same value for <code>SortBy</code>, if any, as in the previous request.</p>
    #            </note>
    #            <p>Valid values include the following elements:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CreationTime</code>: The ID of the query logging association.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Error</code>: If the value of <code>Status</code> is <code>FAILED</code>, the value of <code>Error</code> 
    #   				indicates the cause: </p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>DESTINATION_NOT_FOUND</code>: The specified destination (for example, an Amazon S3 bucket) was deleted.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>ACCESS_DENIED</code>: Permissions don't allow sending logs to the destination.</p>
    #                     </li>
    #                  </ul>
    #                  <p>If <code>Status</code> is a value other than <code>FAILED</code>, <code>ERROR</code> is null.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Id</code>: The ID of the query logging association</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ResolverQueryLogConfigId</code>: The ID of the query logging configuration</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ResourceId</code>: The ID of the VPC that is associated with the query logging configuration</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Status</code>: The current status of the configuration. Valid values include the following:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>CREATING</code>: Resolver is creating an association between an Amazon VPC and a query logging configuration.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>CREATED</code>: The association between an Amazon VPC and a query logging configuration 
    #   						was successfully created. Resolver is logging queries that originate in the specified VPC.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>DELETING</code>: Resolver is deleting this query logging association.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>FAILED</code>: Resolver either couldn't create or couldn't delete the query logging association. 
    #   						Here are two common causes:</p>
    #                        <ul>
    #                           <li>
    #                              <p>The specified destination (for example, an Amazon S3 bucket) was deleted.</p>
    #                           </li>
    #                           <li>
    #                              <p>Permissions don't allow sending logs to the destination.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    # @option params [String] :sort_order
    #   <p>If you specified a value for <code>SortBy</code>, the order that you want query logging associations to be listed in, 
    #   			<code>ASCENDING</code> or <code>DESCENDING</code>.</p>
    #            <note>
    #               <p>If you submit a second or subsequent <code>ListResolverQueryLogConfigAssociations</code> request and specify the <code>NextToken</code> parameter, 
    #   				you must use the same value for <code>SortOrder</code>, if any, as in the previous request.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken",
    #     filters: [
    #       {
    #         name: "FilterName",
    #         values: ["FilterValue"]
    #       }
    #     ],
    #     sort_by: "SortByKey",
    #     sort_order: "ASCENDING" # One of: ["ASCENDING", "DESCENDING"]
    #   }
    #   options = {}
    #   response = client.list_resolver_query_log_config_associations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     total_count: 1,
    #     total_filtered_count: 1,
    #     resolver_query_log_config_associations: [
    #       {
    #         id: "ResourceId",
    #         resolver_query_log_config_id: "ResourceId",
    #         resource_id: "ResourceId",
    #         status: "CREATING" # One of: ["CREATING", "ACTIVE", "ACTION_NEEDED", "DELETING", "FAILED"],
    #         error: "NONE" # One of: ["NONE", "DESTINATION_NOT_FOUND", "ACCESS_DENIED", "INTERNAL_SERVICE_ERROR"],
    #         error_message: "ResolverQueryLogConfigAssociationErrorMessage",
    #         creation_time: "Rfc3339TimeString"
    #       }
    #     ]
    #   }
    # @return [Types::ListResolverQueryLogConfigAssociationsResponse]
    def list_resolver_query_log_config_associations(params = {}, options = {})
      request = build_request(:list_resolver_query_log_config_associations, params)
      request.send_request(options)
    end

    # <p>Lists information about the specified query logging configurations. Each configuration defines where you want Resolver to save 
    # 			DNS query logs and specifies the VPCs that you want to log queries for.</p>
    # @param [Hash, Types::ListResolverQueryLogConfigsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of query logging configurations that you want to return in the response to a <code>ListResolverQueryLogConfigs</code> request. 
    #   			If you don't specify a value for <code>MaxResults</code>, Resolver returns up to 100 query logging configurations. </p>
    # @option params [String] :next_token
    #   <p>For the first <code>ListResolverQueryLogConfigs</code> request, omit this value.</p>
    #            <p>If there are more than <code>MaxResults</code> query logging configurations that match the values that you specify for <code>Filters</code>, 
    #   			you can submit another <code>ListResolverQueryLogConfigs</code> request to get the next group of configurations. In the next request, specify the value of 
    #   			<code>NextToken</code> from the previous response. </p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>An optional specification to return a subset of query logging configurations.</p>
    #            <note>
    #               <p>If you submit a second or subsequent <code>ListResolverQueryLogConfigs</code> request and specify the <code>NextToken</code> parameter, 
    #   				you must use the same values for <code>Filters</code>, if any, as in the previous request.</p>
    #            </note>
    # @option params [String] :sort_by
    #   <p>The element that you want Resolver to sort query logging configurations by. </p>
    #            <note>
    #               <p>If you submit a second or subsequent <code>ListResolverQueryLogConfigs</code> request and specify the <code>NextToken</code> parameter, 
    #   				you must use the same value for <code>SortBy</code>, if any, as in the previous request.</p>
    #            </note>
    #            <p>Valid values include the following elements:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Arn</code>: The ARN of the query logging configuration</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AssociationCount</code>: The number of VPCs that are associated with the specified configuration </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CreationTime</code>: The date and time that Resolver returned when the configuration was created</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CreatorRequestId</code>: The value that was specified for <code>CreatorRequestId</code> when the configuration was created</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DestinationArn</code>: The location that logs are sent to</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Id</code>: The ID of the configuration</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Name</code>: The name of the configuration</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OwnerId</code>: The Amazon Web Services account number of the account that created the configuration</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ShareStatus</code>: Whether the configuration is shared with other Amazon Web Services accounts or shared with the current account by 
    #   				another Amazon Web Services account. Sharing is configured through Resource Access Manager (RAM).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Status</code>: The current status of the configuration. Valid values include the following:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>CREATING</code>: Resolver is creating the query logging configuration.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>CREATED</code>: The query logging configuration was successfully created. 
    #   						Resolver is logging queries that originate in the specified VPC.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>DELETING</code>: Resolver is deleting this query logging configuration.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>FAILED</code>: Resolver either couldn't create or couldn't delete the query logging configuration.
    #   						Here are two common causes:</p>
    #                        <ul>
    #                           <li>
    #                              <p>The specified destination (for example, an Amazon S3 bucket) was deleted.</p>
    #                           </li>
    #                           <li>
    #                              <p>Permissions don't allow sending logs to the destination.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    # @option params [String] :sort_order
    #   <p>If you specified a value for <code>SortBy</code>, the order that you want query logging configurations to be listed in, 
    #   			<code>ASCENDING</code> or <code>DESCENDING</code>.</p>
    #            <note>
    #               <p>If you submit a second or subsequent <code>ListResolverQueryLogConfigs</code> request and specify the <code>NextToken</code> parameter, 
    #   				you must use the same value for <code>SortOrder</code>, if any, as in the previous request.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken",
    #     filters: [
    #       {
    #         name: "FilterName",
    #         values: ["FilterValue"]
    #       }
    #     ],
    #     sort_by: "SortByKey",
    #     sort_order: "ASCENDING" # One of: ["ASCENDING", "DESCENDING"]
    #   }
    #   options = {}
    #   response = client.list_resolver_query_log_configs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     total_count: 1,
    #     total_filtered_count: 1,
    #     resolver_query_log_configs: [
    #       {
    #         id: "ResourceId",
    #         owner_id: "AccountId",
    #         status: "CREATING" # One of: ["CREATING", "CREATED", "DELETING", "FAILED"],
    #         share_status: "NOT_SHARED" # One of: ["NOT_SHARED", "SHARED_WITH_ME", "SHARED_BY_ME"],
    #         association_count: 1,
    #         arn: "Arn",
    #         name: "ResolverQueryLogConfigName",
    #         destination_arn: "DestinationArn",
    #         creator_request_id: "CreatorRequestId",
    #         creation_time: "Rfc3339TimeString"
    #       }
    #     ]
    #   }
    # @return [Types::ListResolverQueryLogConfigsResponse]
    def list_resolver_query_log_configs(params = {}, options = {})
      request = build_request(:list_resolver_query_log_configs, params)
      request.send_request(options)
    end

    # <p>Lists the associations that were created between Resolver rules and VPCs using the current Amazon Web Services account.</p>
    # @param [Hash, Types::ListResolverRuleAssociationsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of rule associations that you want to return in the response to a <code>ListResolverRuleAssociations</code> request. 
    #   			If you don't specify a value for <code>MaxResults</code>, Resolver returns up to 100 rule associations. </p>
    # @option params [String] :next_token
    #   <p>For the first <code>ListResolverRuleAssociation</code> request, omit this value.</p>
    #            <p>If you have more than <code>MaxResults</code> rule associations, you can submit another <code>ListResolverRuleAssociation</code> request 
    #   			to get the next group of rule associations. In the next request, specify the value of <code>NextToken</code> from the previous response. </p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>An optional specification to return a subset of Resolver rules, such as Resolver rules that are associated with the same VPC ID.</p>
    #            <note>
    #               <p>If you submit a second or subsequent <code>ListResolverRuleAssociations</code> request and specify the <code>NextToken</code> parameter, 
    #   			you must use the same values for <code>Filters</code>, if any, as in the previous request.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken",
    #     filters: [
    #       {
    #         name: "FilterName",
    #         values: ["FilterValue"]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.list_resolver_rule_associations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     resolver_rule_associations: [
    #       {
    #         id: "ResourceId",
    #         resolver_rule_id: "ResourceId",
    #         name: "Name",
    #         vpc_id: "ResourceId",
    #         status: "CREATING" # One of: ["CREATING", "COMPLETE", "DELETING", "FAILED", "OVERRIDDEN"],
    #         status_message: "StatusMessage"
    #       }
    #     ]
    #   }
    # @return [Types::ListResolverRuleAssociationsResponse]
    def list_resolver_rule_associations(params = {}, options = {})
      request = build_request(:list_resolver_rule_associations, params)
      request.send_request(options)
    end

    # <p>Lists the Resolver rules that were created using the current Amazon Web Services account.</p>
    # @param [Hash, Types::ListResolverRulesRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of Resolver rules that you want to return in the response to a <code>ListResolverRules</code> request. 
    #   			If you don't specify a value for <code>MaxResults</code>, Resolver returns up to 100 Resolver rules.</p>
    # @option params [String] :next_token
    #   <p>For the first <code>ListResolverRules</code> request, omit this value.</p>
    #            <p>If you have more than <code>MaxResults</code> Resolver rules, you can submit another <code>ListResolverRules</code> request 
    #   			to get the next group of Resolver rules. In the next request, specify the value of <code>NextToken</code> from the previous response. </p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>An optional specification to return a subset of Resolver rules, such as all Resolver rules that are associated with the same Resolver endpoint.</p>
    #            <note>
    #               <p>If you submit a second or subsequent <code>ListResolverRules</code> request and specify the <code>NextToken</code> parameter, 
    #   			you must use the same values for <code>Filters</code>, if any, as in the previous request.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken",
    #     filters: [
    #       {
    #         name: "FilterName",
    #         values: ["FilterValue"]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.list_resolver_rules(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     resolver_rules: [
    #       {
    #         id: "ResourceId",
    #         creator_request_id: "CreatorRequestId",
    #         arn: "Arn",
    #         domain_name: "DomainName",
    #         status: "COMPLETE" # One of: ["COMPLETE", "DELETING", "UPDATING", "FAILED"],
    #         status_message: "StatusMessage",
    #         rule_type: "FORWARD" # One of: ["FORWARD", "SYSTEM", "RECURSIVE", "DELEGATE"],
    #         name: "Name",
    #         target_ips: [
    #           {
    #             ip: "Ip",
    #             port: 1,
    #             ipv6: "Ipv6",
    #             protocol: "DoH" # One of: ["DoH", "Do53", "DoH-FIPS"],
    #             server_name_indication: "ServerNameIndication"
    #           }
    #         ],
    #         resolver_endpoint_id: "ResourceId",
    #         owner_id: "AccountId",
    #         share_status: "NOT_SHARED" # One of: ["NOT_SHARED", "SHARED_WITH_ME", "SHARED_BY_ME"],
    #         creation_time: "Rfc3339TimeString",
    #         modification_time: "Rfc3339TimeString",
    #         delegation_record: "DelegationRecord"
    #       }
    #     ]
    #   }
    # @return [Types::ListResolverRulesResponse]
    def list_resolver_rules(params = {}, options = {})
      request = build_request(:list_resolver_rules, params)
      request.send_request(options)
    end

    # <p>Lists the tags that you associated with the specified resource.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) for the resource that you want to list tags for.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of tags that you want to return in the response to a <code>ListTagsForResource</code> request. 
    #   			If you don't specify a value for <code>MaxResults</code>, Resolver returns up to 100 tags.</p>
    # @option params [String] :next_token
    #   <p>For the first <code>ListTagsForResource</code> request, omit this value.</p>
    #            <p>If you have more than <code>MaxResults</code> tags, you can submit another <code>ListTagsForResource</code> request 
    #   			to get the next group of tags for the resource. In the next request, specify the value of <code>NextToken</code> from the previous response. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Attaches an Identity and Access Management (Amazon Web Services IAM) policy for sharing the rule
    # 			group. You can use the policy to share the rule group using Resource Access Manager
    # 			(RAM). </p>
    # @param [Hash, Types::PutFirewallRuleGroupPolicyRequest] params
    # @option params [String] :arn
    #   <p>The ARN (Amazon Resource Name) for the rule group that you want to share.</p>
    # @option params [String] :firewall_rule_group_policy
    #   <p>The Identity and Access Management (Amazon Web Services IAM) policy to attach to the rule group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "Arn", # required
    #     firewall_rule_group_policy: "FirewallRuleGroupPolicy", # required
    #   }
    #   options = {}
    #   response = client.put_firewall_rule_group_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     return_value: false
    #   }
    # @return [Types::PutFirewallRuleGroupPolicyResponse]
    def put_firewall_rule_group_policy(params = {}, options = {})
      request = build_request(:put_firewall_rule_group_policy, params)
      request.send_request(options)
    end

    # <p>Specifies an Amazon Web Services account that you want to share a query logging configuration with, the query logging configuration that you want to share, 
    # 			and the operations that you want the account to be able to perform on the configuration.</p>
    # @param [Hash, Types::PutResolverQueryLogConfigPolicyRequest] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the account that you want to share rules with.</p>
    # @option params [String] :resolver_query_log_config_policy
    #   <p>An Identity and Access Management policy statement that lists the query logging configurations that you want to share with another Amazon Web Services account 
    #   			and the operations that you want the account to be able to perform. You can specify the following operations in the <code>Actions</code> section 
    #   			of the statement:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>route53resolver:AssociateResolverQueryLogConfig</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>route53resolver:DisassociateResolverQueryLogConfig</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>route53resolver:ListResolverQueryLogConfigs</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>In the <code>Resource</code> section of the statement, you specify the ARNs for the query logging configurations that you want to share 
    #   			with the account that you specified in <code>Arn</code>. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "Arn", # required
    #     resolver_query_log_config_policy: "ResolverQueryLogConfigPolicy", # required
    #   }
    #   options = {}
    #   response = client.put_resolver_query_log_config_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     return_value: false
    #   }
    # @return [Types::PutResolverQueryLogConfigPolicyResponse]
    def put_resolver_query_log_config_policy(params = {}, options = {})
      request = build_request(:put_resolver_query_log_config_policy, params)
      request.send_request(options)
    end

    # <p>Specifies an Amazon Web Services rule that you want to share with another account, the account that you want to share the rule with, 
    # 			and the operations that you want the account to be able to perform on the rule.</p>
    # @param [Hash, Types::PutResolverRulePolicyRequest] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the rule that you want to share with another account.</p>
    # @option params [String] :resolver_rule_policy
    #   <p>An Identity and Access Management policy statement that lists the rules that you want to share with another Amazon Web Services account and the operations that you want the account 
    #   			to be able to perform. You can specify the following operations in the <code>Action</code> section of the statement:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>route53resolver:GetResolverRule</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>route53resolver:AssociateResolverRule</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>route53resolver:DisassociateResolverRule</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>route53resolver:ListResolverRules</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>route53resolver:ListResolverRuleAssociations</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>In the <code>Resource</code> section of the statement, specify the ARN for the rule that you want to share with another account. Specify the same ARN 
    #   			that you specified in <code>Arn</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "Arn", # required
    #     resolver_rule_policy: "ResolverRulePolicy", # required
    #   }
    #   options = {}
    #   response = client.put_resolver_rule_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     return_value: false
    #   }
    # @return [Types::PutResolverRulePolicyResponse]
    def put_resolver_rule_policy(params = {}, options = {})
      request = build_request(:put_resolver_rule_policy, params)
      request.send_request(options)
    end

    # <p>Adds one or more tags to a specified resource.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) for the resource that you want to add tags to. To get the ARN for a resource, use the applicable 
    #   			<code>Get</code> or <code>List</code> command: </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_GetResolverEndpoint.html">GetResolverEndpoint</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_GetResolverRule.html">GetResolverRule</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_GetResolverRuleAssociation.html">GetResolverRuleAssociation</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverEndpoints.html">ListResolverEndpoints</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverRuleAssociations.html">ListResolverRuleAssociations</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverRules.html">ListResolverRules</a>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags that you want to add to the specified resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::TagResourceResponse]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Removes one or more tags from a specified resource.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) for the resource that you want to remove tags from. To get the ARN for a resource, use the applicable 
    #   			<code>Get</code> or <code>List</code> command: </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_GetResolverEndpoint.html">GetResolverEndpoint</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_GetResolverRule.html">GetResolverRule</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_GetResolverRuleAssociation.html">GetResolverRuleAssociation</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverEndpoints.html">ListResolverEndpoints</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverRuleAssociations.html">ListResolverRuleAssociations</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverRules.html">ListResolverRules</a>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [Array<String>] :tag_keys
    #   <p>The tags that you want to remove to the specified resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
    #     tag_keys: ["TagKey"], # required
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UntagResourceResponse]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <p>Updates the configuration of the firewall behavior provided by DNS Firewall for a single
    # 			VPC from Amazon Virtual Private Cloud (Amazon VPC). </p>
    # @param [Hash, Types::UpdateFirewallConfigRequest] params
    # @option params [String] :resource_id
    #   <p>The ID of the VPC that the configuration is for.</p>
    # @option params [String] :firewall_fail_open
    #   <p>Determines how Route 53 Resolver handles queries during failures, for example when all traffic that is sent to DNS Firewall fails to receive a reply. </p>
    #            <ul>
    #               <li>
    #                  <p>By default, fail open is disabled, which means the failure mode is closed. This approach favors security over availability. 
    #          DNS Firewall blocks queries that it is unable to evaluate properly. </p>
    #               </li>
    #               <li>
    #                  <p>If you enable this option, the failure mode is open. This approach favors availability over security. DNS Firewall allows queries to proceed if it 
    #          is unable to properly evaluate them. </p>
    #               </li>
    #            </ul>
    #            <p>This behavior is only enforced for VPCs that have at least one DNS Firewall rule group association. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_id: "ResourceId", # required
    #     firewall_fail_open: "ENABLED" # One of: ["ENABLED", "DISABLED", "USE_LOCAL_RESOURCE_SETTING"], # required
    #   }
    #   options = {}
    #   response = client.update_firewall_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     firewall_config: {
    #       id: "ResourceId",
    #       resource_id: "ResourceId",
    #       owner_id: "AccountId",
    #       firewall_fail_open: "ENABLED" # One of: ["ENABLED", "DISABLED", "USE_LOCAL_RESOURCE_SETTING"]
    #     }
    #   }
    # @return [Types::UpdateFirewallConfigResponse]
    def update_firewall_config(params = {}, options = {})
      request = build_request(:update_firewall_config, params)
      request.send_request(options)
    end

    # <p>Updates the firewall domain list from an array of domain specifications. </p>
    # @param [Hash, Types::UpdateFirewallDomainsRequest] params
    # @option params [String] :firewall_domain_list_id
    #   <p>The ID of the domain list whose domains you want to update. </p>
    # @option params [String] :operation
    #   <p>What you want DNS Firewall to do with the domains that you are providing: </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ADD</code> - Add the domains to the ones that are already in the domain list. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>REMOVE</code> - Search the domain list for the domains and remove them from the list.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>REPLACE</code> - Update the domain list to exactly match the list that you are providing. </p>
    #               </li>
    #            </ul>
    # @option params [Array<String>] :domains
    #   <p>A list of domains to use in the update operation.</p>
    #            <important>
    #               <p>There is a limit of 1000 domains per request.</p>
    #            </important>
    #            <p>Each domain specification in your domain list must satisfy the following
    #   	requirements: </p>
    #            <ul>
    #               <li>
    #                  <p>It can optionally start with <code>*</code> (asterisk).</p>
    #               </li>
    #               <li>
    #                  <p>With the exception of the optional starting asterisk, it must only contain
    #         	   the following characters: <code>A-Z</code>, <code>a-z</code>,
    #         	   <code>0-9</code>, <code>-</code> (hyphen).</p>
    #               </li>
    #               <li>
    #                  <p>It must be from 1-255 characters in length. </p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     firewall_domain_list_id: "ResourceId", # required
    #     operation: "ADD" # One of: ["ADD", "REMOVE", "REPLACE"], # required
    #     domains: ["FirewallDomainName"], # required
    #   }
    #   options = {}
    #   response = client.update_firewall_domains(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ResourceId",
    #     name: "Name",
    #     status: "COMPLETE" # One of: ["COMPLETE", "COMPLETE_IMPORT_FAILED", "IMPORTING", "DELETING", "UPDATING"],
    #     status_message: "StatusMessage"
    #   }
    # @return [Types::UpdateFirewallDomainsResponse]
    def update_firewall_domains(params = {}, options = {})
      request = build_request(:update_firewall_domains, params)
      request.send_request(options)
    end

    # <p>Updates the specified firewall rule. </p>
    # @param [Hash, Types::UpdateFirewallRuleRequest] params
    # @option params [String] :firewall_rule_group_id
    #   <p>The unique identifier of the firewall rule group for the rule. </p>
    # @option params [String] :firewall_domain_list_id
    #   <p>The ID of the domain list to use in the rule.  </p>
    # @option params [String] :firewall_threat_protection_id
    #   <p>
    #   			The DNS Firewall Advanced rule ID.
    #   		</p>
    # @option params [Integer] :priority
    #   <p>The setting that determines the processing order of the rule in the rule group. DNS Firewall 
    #              processes the rules in a rule group by order of priority, starting from the lowest setting.</p>
    #            <p>You must specify a unique priority for each rule in a rule group. 
    #              To make it easier to insert rules later, leave space between the numbers, for example, use 100, 200, and so on. You 
    #      can change the priority setting for the rules in a rule group at any time.</p>
    # @option params [String] :action
    #   <p>The action that DNS Firewall should take on a DNS query when it matches one of the domains in the rule's domain list, or a threat in a DNS Firewall Advanced rule:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ALLOW</code> - Permit the request to go through. Not available for DNS Firewall Advanced rules.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ALERT</code> - Permit the request to go through but send an alert to the logs.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BLOCK</code> - Disallow the request. This option requires additional details in the rule's <code>BlockResponse</code>. </p>
    #               </li>
    #            </ul>
    # @option params [String] :block_response
    #   <p>The way that you want DNS Firewall to block the request. Used for the rule action setting <code>BLOCK</code>.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>NODATA</code> - Respond indicating that the query was successful, but no response is available for it.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NXDOMAIN</code> - Respond indicating that the domain name that's in the query doesn't exist.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OVERRIDE</code> - Provide a custom override in the response. This option requires custom handling details in the rule's <code>BlockOverride*</code> settings. </p>
    #               </li>
    #            </ul>
    # @option params [String] :block_override_domain
    #   <p>The custom DNS record to send back in response to the query. Used for the rule action <code>BLOCK</code> with a <code>BlockResponse</code> setting of <code>OVERRIDE</code>.</p>
    # @option params [String] :block_override_dns_type
    #   <p>The DNS record's type. This determines the format of the record value that you provided in <code>BlockOverrideDomain</code>. Used for the rule action <code>BLOCK</code> with a <code>BlockResponse</code> setting of <code>OVERRIDE</code>.</p>
    # @option params [Integer] :block_override_ttl
    #   <p>The recommended amount of time, in seconds, for the DNS resolver or web browser to cache the provided override record. Used for the rule action <code>BLOCK</code> with a <code>BlockResponse</code> setting of <code>OVERRIDE</code>.</p>
    # @option params [String] :name
    #   <p>The name of the rule.</p>
    # @option params [String] :firewall_domain_redirection_action
    #   <p>
    #   			How you want the the rule to evaluate DNS redirection in the DNS redirection chain, such as CNAME or DNAME. 
    #   		</p>
    #            <p>
    #               <code>INSPECT_REDIRECTION_DOMAIN</code>: (Default) inspects all domains in the redirection chain. The individual domains in the redirection chain must be 
    #   			added to the domain list.</p>
    #            <p>
    #               <code>TRUST_REDIRECTION_DOMAIN</code>: Inspects only the first domain in the redirection chain. You don't need to add the subsequent domains in the domain in the redirection list to 
    #   			the domain list.</p>
    # @option params [String] :qtype
    #   <p>
    #   			The DNS query type you want the rule to evaluate. Allowed values are;
    #   		</p>
    #            <ul>
    #               <li>
    #                  <p>
    #   				A: Returns an IPv4 address.</p>
    #               </li>
    #               <li>
    #                  <p>AAAA: Returns an Ipv6 address.</p>
    #               </li>
    #               <li>
    #                  <p>CAA: Restricts CAs that can create SSL/TLS certifications for the domain.</p>
    #               </li>
    #               <li>
    #                  <p>CNAME: Returns another domain name.</p>
    #               </li>
    #               <li>
    #                  <p>DS: Record that identifies the DNSSEC signing key of a delegated zone.</p>
    #               </li>
    #               <li>
    #                  <p>MX: Specifies mail servers.</p>
    #               </li>
    #               <li>
    #                  <p>NAPTR: Regular-expression-based rewriting of domain names.</p>
    #               </li>
    #               <li>
    #                  <p>NS: Authoritative name servers.</p>
    #               </li>
    #               <li>
    #                  <p>PTR: Maps an IP address to a domain name.</p>
    #               </li>
    #               <li>
    #                  <p>SOA: Start of authority record for the zone.</p>
    #               </li>
    #               <li>
    #                  <p>SPF: Lists the servers authorized to send emails from a domain.</p>
    #               </li>
    #               <li>
    #                  <p>SRV: Application specific values that identify servers.</p>
    #               </li>
    #               <li>
    #                  <p>TXT: Verifies email senders and application-specific values.</p>
    #               </li>
    #               <li>
    #                  <p>A query type you define by using the DNS type ID, for example 28 for AAAA. The values must be
    #   				defined as TYPENUMBER, where the
    #   				NUMBER can be 1-65334, for
    #   				example, TYPE28. For more information, see 
    #   				<a href="https://en.wikipedia.org/wiki/List_of_DNS_record_types">List of DNS record types</a>.</p>
    #                  <note>
    #                     <p>If you set up a firewall BLOCK rule with action NXDOMAIN on query type equals AAAA, 
    #   					this action will not be applied to synthetic IPv6 addresses generated when DNS64 is enabled. </p>
    #                  </note>
    #               </li>
    #            </ul>
    # @option params [String] :dns_threat_protection
    #   <p>
    #   			The type of the DNS Firewall Advanced rule. Valid values are:
    #   		</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>DGA</code>: Domain generation algorithms detection. DGAs are used by attackers to generate a large number of domains 
    #   				to to launch malware attacks.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DNS_TUNNELING</code>: DNS tunneling detection. DNS tunneling is used by attackers to exfiltrate data from the client by using the DNS tunnel without
    #   				making a network connection to the client.</p>
    #               </li>
    #            </ul>
    # @option params [String] :confidence_threshold
    #   <p>
    #   			The confidence threshold for DNS Firewall Advanced. You must provide this value when you create a DNS Firewall Advanced rule. The confidence
    #   			level values mean:
    #   		</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>LOW</code>: Provides the highest detection rate for threats, but also increases false positives.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MEDIUM</code>: Provides a balance between detecting threats and false positives.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>HIGH</code>: Detects only the most well corroborated threats with a low rate of false positives. </p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     firewall_rule_group_id: "ResourceId", # required
    #     firewall_domain_list_id: "ResourceId",
    #     firewall_threat_protection_id: "ResourceId",
    #     priority: 1,
    #     action: "ALLOW" # One of: ["ALLOW", "BLOCK", "ALERT"],
    #     block_response: "NODATA" # One of: ["NODATA", "NXDOMAIN", "OVERRIDE"],
    #     block_override_domain: "BlockOverrideDomain",
    #     block_override_dns_type: "CNAME" # One of: ["CNAME"],
    #     block_override_ttl: 1,
    #     name: "Name",
    #     firewall_domain_redirection_action: "INSPECT_REDIRECTION_DOMAIN" # One of: ["INSPECT_REDIRECTION_DOMAIN", "TRUST_REDIRECTION_DOMAIN"],
    #     qtype: "Qtype",
    #     dns_threat_protection: "DGA" # One of: ["DGA", "DNS_TUNNELING"],
    #     confidence_threshold: "LOW" # One of: ["LOW", "MEDIUM", "HIGH"]
    #   }
    #   options = {}
    #   response = client.update_firewall_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     firewall_rule: {
    #       firewall_rule_group_id: "ResourceId",
    #       firewall_domain_list_id: "ResourceId",
    #       firewall_threat_protection_id: "ResourceId",
    #       name: "Name",
    #       priority: 1,
    #       action: "ALLOW" # One of: ["ALLOW", "BLOCK", "ALERT"],
    #       block_response: "NODATA" # One of: ["NODATA", "NXDOMAIN", "OVERRIDE"],
    #       block_override_domain: "BlockOverrideDomain",
    #       block_override_dns_type: "CNAME" # One of: ["CNAME"],
    #       block_override_ttl: 1,
    #       creator_request_id: "CreatorRequestId",
    #       creation_time: "Rfc3339TimeString",
    #       modification_time: "Rfc3339TimeString",
    #       firewall_domain_redirection_action: "INSPECT_REDIRECTION_DOMAIN" # One of: ["INSPECT_REDIRECTION_DOMAIN", "TRUST_REDIRECTION_DOMAIN"],
    #       qtype: "Qtype",
    #       dns_threat_protection: "DGA" # One of: ["DGA", "DNS_TUNNELING"],
    #       confidence_threshold: "LOW" # One of: ["LOW", "MEDIUM", "HIGH"]
    #     }
    #   }
    # @return [Types::UpdateFirewallRuleResponse]
    def update_firewall_rule(params = {}, options = {})
      request = build_request(:update_firewall_rule, params)
      request.send_request(options)
    end

    # <p>Changes the association of a <a>FirewallRuleGroup</a> with a VPC. The association enables DNS filtering for the VPC. </p>
    # @param [Hash, Types::UpdateFirewallRuleGroupAssociationRequest] params
    # @option params [String] :firewall_rule_group_association_id
    #   <p>The identifier of the <a>FirewallRuleGroupAssociation</a>. </p>
    # @option params [Integer] :priority
    #   <p>The setting that determines the processing order of the rule group among the rule
    #   			groups that you associate with the specified VPC. DNS Firewall filters VPC traffic
    #   			starting from the rule group with the lowest numeric priority setting. </p>
    #            <p>You must specify a unique priority for each rule group that you associate with a single VPC. 
    #              To make it easier to insert rule groups later, leave space between the numbers, for example, use 100, 200, and so on. You 
    #      can change the priority setting for a rule group association after you create it.</p>
    # @option params [String] :mutation_protection
    #   <p>If enabled, this setting disallows modification or removal of the association, to help prevent against accidentally altering DNS firewall protections. </p>
    # @option params [String] :name
    #   <p>The name of the rule group association.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     firewall_rule_group_association_id: "ResourceId", # required
    #     priority: 1,
    #     mutation_protection: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     name: "Name"
    #   }
    #   options = {}
    #   response = client.update_firewall_rule_group_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     firewall_rule_group_association: {
    #       id: "ResourceId",
    #       arn: "Arn",
    #       firewall_rule_group_id: "ResourceId",
    #       vpc_id: "ResourceId",
    #       name: "Name",
    #       priority: 1,
    #       mutation_protection: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #       managed_owner_name: "ServicePrinciple",
    #       status: "COMPLETE" # One of: ["COMPLETE", "DELETING", "UPDATING"],
    #       status_message: "StatusMessage",
    #       creator_request_id: "CreatorRequestId",
    #       creation_time: "Rfc3339TimeString",
    #       modification_time: "Rfc3339TimeString"
    #     }
    #   }
    # @return [Types::UpdateFirewallRuleGroupAssociationResponse]
    def update_firewall_rule_group_association(params = {}, options = {})
      request = build_request(:update_firewall_rule_group_association, params)
      request.send_request(options)
    end

    # <p>You can use <code>UpdateOutpostResolver</code> to  update the instance count, type, or  name of a Resolver on an Outpost.</p>
    # @param [Hash, Types::UpdateOutpostResolverRequest] params
    # @option params [String] :id
    #   <p>A unique string that identifies Resolver on an Outpost.</p>
    # @option params [String] :name
    #   <p>Name of the Resolver on the Outpost.</p>
    # @option params [Integer] :instance_count
    #   <p>The Amazon EC2 instance count for a Resolver on the Outpost.</p>
    # @option params [String] :preferred_instance_type
    #   <p>
    #   			Amazon EC2 instance type.
    #   		</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "ResourceId", # required
    #     name: "OutpostResolverName",
    #     instance_count: 1,
    #     preferred_instance_type: "OutpostInstanceType"
    #   }
    #   options = {}
    #   response = client.update_outpost_resolver(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     outpost_resolver: {
    #       arn: "Arn",
    #       creation_time: "Rfc3339TimeString",
    #       modification_time: "Rfc3339TimeString",
    #       creator_request_id: "CreatorRequestId",
    #       id: "ResourceId",
    #       instance_count: 1,
    #       preferred_instance_type: "OutpostInstanceType",
    #       name: "OutpostResolverName",
    #       status: "CREATING" # One of: ["CREATING", "OPERATIONAL", "UPDATING", "DELETING", "ACTION_NEEDED", "FAILED_CREATION", "FAILED_DELETION"],
    #       status_message: "OutpostResolverStatusMessage",
    #       outpost_arn: "OutpostArn"
    #     }
    #   }
    # @return [Types::UpdateOutpostResolverResponse]
    def update_outpost_resolver(params = {}, options = {})
      request = build_request(:update_outpost_resolver, params)
      request.send_request(options)
    end

    # <p>Updates the behavior configuration of Route 53 Resolver behavior for a single VPC from
    # 				Amazon Virtual Private Cloud.</p>
    # @param [Hash, Types::UpdateResolverConfigRequest] params
    # @option params [String] :resource_id
    #   <p>The ID of the Amazon Virtual Private Cloud VPC or a Route 53 Profile that you're configuring Resolver for.</p>
    # @option params [String] :autodefined_reverse_flag
    #   <p>Indicates whether or not the Resolver will create autodefined rules for reverse DNS
    #   			lookups. This is enabled by default. Disabling this option will also affect EC2-Classic
    #   			instances using ClassicLink. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-classiclink.html">ClassicLink</a> in the
    #   					<i>Amazon EC2 guide</i>.</p>
    #            <important>
    #               <p>We are retiring EC2-Classic on August 15, 2022. We recommend that you migrate from EC2-Classic to a VPC. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-migrate.html">Migrate from EC2-Classic to a VPC</a> in the
    #   			<i>Amazon EC2 guide</i> and the blog <a href="http://aws.amazon.com/blogs/aws/ec2-classic-is-retiring-heres-how-to-prepare/">EC2-Classic Networking is Retiring – Here’s How to Prepare</a>.</p>
    #            </important>
    #            <note>
    #               <p>It can take some time for the status change to be completed.</p>
    #            </note>
    #            <p></p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_id: "ResourceId", # required
    #     autodefined_reverse_flag: "ENABLE" # One of: ["ENABLE", "DISABLE", "USE_LOCAL_RESOURCE_SETTING"], # required
    #   }
    #   options = {}
    #   response = client.update_resolver_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resolver_config: {
    #       id: "ResourceId",
    #       resource_id: "ResourceId",
    #       owner_id: "AccountId",
    #       autodefined_reverse: "ENABLING" # One of: ["ENABLING", "ENABLED", "DISABLING", "DISABLED", "UPDATING_TO_USE_LOCAL_RESOURCE_SETTING", "USE_LOCAL_RESOURCE_SETTING"]
    #     }
    #   }
    # @return [Types::UpdateResolverConfigResponse]
    def update_resolver_config(params = {}, options = {})
      request = build_request(:update_resolver_config, params)
      request.send_request(options)
    end

    # <p>Updates an existing DNSSEC validation configuration. If there is no existing DNSSEC validation configuration, one is created.</p>
    # @param [Hash, Types::UpdateResolverDnssecConfigRequest] params
    # @option params [String] :resource_id
    #   <p>The ID of the virtual private cloud (VPC) that you're updating the DNSSEC validation status for.</p>
    # @option params [String] :validation
    #   <p>The new value that you are specifying for DNSSEC validation for the VPC. The value can be <code>ENABLE</code>
    #   			or <code>DISABLE</code>. Be aware that it can take time for a validation status change to be completed.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_id: "ResourceId", # required
    #     validation: "ENABLE" # One of: ["ENABLE", "DISABLE", "USE_LOCAL_RESOURCE_SETTING"], # required
    #   }
    #   options = {}
    #   response = client.update_resolver_dnssec_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resolver_dnssec_config: {
    #       id: "ResourceId",
    #       owner_id: "AccountId",
    #       resource_id: "ResourceId",
    #       validation_status: "ENABLING" # One of: ["ENABLING", "ENABLED", "DISABLING", "DISABLED", "UPDATING_TO_USE_LOCAL_RESOURCE_SETTING", "USE_LOCAL_RESOURCE_SETTING"]
    #     }
    #   }
    # @return [Types::UpdateResolverDnssecConfigResponse]
    def update_resolver_dnssec_config(params = {}, options = {})
      request = build_request(:update_resolver_dnssec_config, params)
      request.send_request(options)
    end

    # <p>Updates the name, or endpoint type for an inbound or an outbound Resolver endpoint. 
    # 			You can only update between IPV4 and DUALSTACK, IPV6 endpoint type can't be updated to other type. </p>
    # @param [Hash, Types::UpdateResolverEndpointRequest] params
    # @option params [String] :resolver_endpoint_id
    #   <p>The ID of the Resolver endpoint that you want to update.</p>
    # @option params [String] :name
    #   <p>The name of the Resolver endpoint that you want to update.</p>
    # @option params [String] :resolver_endpoint_type
    #   <p>
    #   			Specifies the endpoint type for what type of IP address the endpoint uses to forward DNS queries.
    #   		</p>
    #            <p>Updating to <code>IPV6</code> type isn't currently supported.</p>
    # @option params [Array<Types::UpdateIpAddress>] :update_ip_addresses
    #   <p>
    #   			Specifies the IPv6 address when you update the Resolver endpoint from IPv4 to dual-stack. 
    #   			If you don't specify an IPv6 address, one will be automatically chosen from your subnet.
    #   		</p>
    # @option params [Array<String>] :protocols
    #   <p>
    #   			The protocols you want to use for the endpoint. DoH-FIPS is applicable for default inbound endpoints only.
    #   		</p>
    #            <p>For a default inbound endpoint you can apply the protocols as follows:</p>
    #            <ul>
    #               <li>
    #                  <p> Do53  and DoH in combination.</p>
    #               </li>
    #               <li>
    #                  <p>Do53  and DoH-FIPS in combination.</p>
    #               </li>
    #               <li>
    #                  <p>Do53 alone.</p>
    #               </li>
    #               <li>
    #                  <p>DoH alone.</p>
    #               </li>
    #               <li>
    #                  <p>DoH-FIPS alone.</p>
    #               </li>
    #               <li>
    #                  <p>None, which is treated as Do53.</p>
    #               </li>
    #            </ul>
    #            <p>For a delegation inbound endpoint you can use Do53 only.</p>
    #            <p>For an outbound endpoint you can apply the protocols as follows:</p>
    #            <ul>
    #               <li>
    #                  <p> Do53  and DoH in combination.</p>
    #               </li>
    #               <li>
    #                  <p>Do53 alone.</p>
    #               </li>
    #               <li>
    #                  <p>DoH alone.</p>
    #               </li>
    #               <li>
    #                  <p>None, which is treated as Do53.</p>
    #               </li>
    #            </ul>
    #            <important>
    #               <p> You can't change the protocol of an inbound endpoint directly from only Do53 to only DoH, or DoH-FIPS.
    #   			This is to prevent a sudden disruption to incoming traffic that
    #   			relies on Do53. To change the protocol from Do53 to DoH, or DoH-FIPS, you must
    #   			first enable both Do53 and DoH, or Do53 and DoH-FIPS, to make sure that all incoming traffic
    #   			has transferred to using the DoH protocol, or DoH-FIPS, and then remove the
    #   			Do53.</p>
    #            </important>
    # @example Request syntax with placeholder values
    #   params = {
    #     resolver_endpoint_id: "ResourceId", # required
    #     name: "Name",
    #     resolver_endpoint_type: "IPV6" # One of: ["IPV6", "IPV4", "DUALSTACK"],
    #     update_ip_addresses: [
    #       {
    #         ip_id: "ResourceId", # required
    #         ipv6: "Ipv6", # required
    #       }
    #     ],
    #     protocols: ["DoH" # One of: ["DoH", "Do53", "DoH-FIPS"]]
    #   }
    #   options = {}
    #   response = client.update_resolver_endpoint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resolver_endpoint: {
    #       id: "ResourceId",
    #       creator_request_id: "CreatorRequestId",
    #       arn: "Arn",
    #       name: "Name",
    #       security_group_ids: ["ResourceId"],
    #       direction: "INBOUND" # One of: ["INBOUND", "OUTBOUND", "INBOUND_DELEGATION"],
    #       ip_address_count: 1,
    #       host_vpc_id: "ResourceId",
    #       status: "CREATING" # One of: ["CREATING", "OPERATIONAL", "UPDATING", "AUTO_RECOVERING", "ACTION_NEEDED", "DELETING"],
    #       status_message: "StatusMessage",
    #       creation_time: "Rfc3339TimeString",
    #       modification_time: "Rfc3339TimeString",
    #       outpost_arn: "OutpostArn",
    #       preferred_instance_type: "OutpostInstanceType",
    #       resolver_endpoint_type: "IPV6" # One of: ["IPV6", "IPV4", "DUALSTACK"],
    #       protocols: ["DoH" # One of: ["DoH", "Do53", "DoH-FIPS"]]
    #     }
    #   }
    # @return [Types::UpdateResolverEndpointResponse]
    def update_resolver_endpoint(params = {}, options = {})
      request = build_request(:update_resolver_endpoint, params)
      request.send_request(options)
    end

    # <p>Updates settings for a specified Resolver rule. <code>ResolverRuleId</code> is required, and all other parameters are optional. 
    # 			If you don't specify a parameter, it retains its current value.</p>
    # @param [Hash, Types::UpdateResolverRuleRequest] params
    # @option params [String] :resolver_rule_id
    #   <p>The ID of the Resolver rule that you want to update.</p>
    # @option params [Types::ResolverRuleConfig] :config
    #   <p>The new settings for the Resolver rule.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resolver_rule_id: "ResourceId", # required
    #     config: { # required
    #       name: "Name",
    #       target_ips: [
    #         {
    #           ip: "Ip",
    #           port: 1,
    #           ipv6: "Ipv6",
    #           protocol: "DoH" # One of: ["DoH", "Do53", "DoH-FIPS"],
    #           server_name_indication: "ServerNameIndication"
    #         }
    #       ],
    #       resolver_endpoint_id: "ResourceId"
    #     }
    #   }
    #   options = {}
    #   response = client.update_resolver_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resolver_rule: {
    #       id: "ResourceId",
    #       creator_request_id: "CreatorRequestId",
    #       arn: "Arn",
    #       domain_name: "DomainName",
    #       status: "COMPLETE" # One of: ["COMPLETE", "DELETING", "UPDATING", "FAILED"],
    #       status_message: "StatusMessage",
    #       rule_type: "FORWARD" # One of: ["FORWARD", "SYSTEM", "RECURSIVE", "DELEGATE"],
    #       name: "Name",
    #       target_ips: [
    #         {
    #           ip: "Ip",
    #           port: 1,
    #           ipv6: "Ipv6",
    #           protocol: "DoH" # One of: ["DoH", "Do53", "DoH-FIPS"],
    #           server_name_indication: "ServerNameIndication"
    #         }
    #       ],
    #       resolver_endpoint_id: "ResourceId",
    #       owner_id: "AccountId",
    #       share_status: "NOT_SHARED" # One of: ["NOT_SHARED", "SHARED_WITH_ME", "SHARED_BY_ME"],
    #       creation_time: "Rfc3339TimeString",
    #       modification_time: "Rfc3339TimeString",
    #       delegation_record: "DelegationRecord"
    #     }
    #   }
    # @return [Types::UpdateResolverRuleResponse]
    def update_resolver_rule(params = {}, options = {})
      request = build_request(:update_resolver_rule, params)
      request.send_request(options)
    end

    # Polls an API operation until a resource enters a desired state.
    #
    # ## Basic Usage
    #
    # A waiter will call an API operation until:
    #
    # * It is successful
    # * It enters a terminal state
    # * It reaches the maximum wait time allowed
    #
    # In between attempts, the waiter will sleep.
    #
    #     # polls in a loop, sleeping between attempts
    #     client.wait_until(waiter_name, params, options)
    #
    # ## Configuration
    #
    # You must configure the maximum amount of time in seconds a
    # waiter should wait for. You may also configure the minimum
    # and maximum amount of time in seconds to delay between
    # retries. You can pass these configuration as the final
    # arguments hash.
    #
    #     weather = Weather::Client.new
    #
    #     # poll for a maximum of 25 seconds
    #     weather.wait_until(:forecast_exists, { forecast_id: '1' }, {
    #       max_wait_time: 25,
    #       min_delay: 2,
    #       max_delay: 10
    #     })
    #
    # ## Handling Errors
    #
    # When a waiter is unsuccessful, it will raise an error.
    # All the failure errors extend from
    # {Smithy::Client::Waiters::WaiterFailed}.
    #
    #     weather = Weather::Client.new
    #     begin
    #       weather.wait_until(:forecast_exists, { forecast_id: '1' }, max_wait_time: 60)
    #     rescue Smithy::Client::Waiters::WaiterFailed
    #       # resource did not enter the desired state in time
    #     end
    #
    # @param [Symbol] waiter_name
    # @param [Hash] params ({})
    # @param [Hash] options ({})
    # @option options [Integer] :max_wait_time
    # @option options [Integer] :min_delay
    # @option options [Integer] :max_delay
    # @return [nil] Returns `nil` if the waiter was successful.
    # @raise [FailureStateError] Raised when the waiter terminates
    #   because the waiter has entered a state that it will not transition
    #   out of, preventing success.
    # @raise [MaxWaitTimeExceededError] Raised when the configured
    #   maximum wait time is reached and the waiter is not yet successful.
    # @raise [UnexpectedError] Raised when an error that is not
    #   expected is encountered while polling for a resource.
    # @raise [NoSuchWaiterError] Raised when you request to wait
    #   for an unknown state.
    def wait_until(waiter_name, params = {}, options = {})
      waiter(waiter_name, options).wait(params)
    end

    # @api private
    def build_request(operation_name, params)
      handlers = @handlers.for(operation_name)
      context = Smithy::Client::HandlerContext.new(
        operation_name: operation_name,
        operation: config.service.operation(operation_name),
        client: self,
        config: config,
        params: params
      )
      context[:gem_name] = 'aws-sdk-route53resolver'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Request.new(handlers: handlers, context: context)
    end

    private

    def waiters
      {}
    end

    class << self
      # @api private
      attr_reader :identifier

      # @api private
      def auth_parameters
        AuthParameters
      end

      # @api private
      def auth_resolver
        AuthResolver
      end

      # @api private
      def errors_module
        Errors
      end
    end
  end
end
