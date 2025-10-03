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
require 'smithy-client/plugins/sign_requests'
require 'smithy-client/plugins/stub_responses'
require 'aws-sdk-core/plugins/sigv4'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/json_rpc_protocol'

module Aws::NetworkFirewall
  # An API client for Aws::NetworkFirewall.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::NetworkFirewall20201112

    add_plugin(::Aws::NetworkFirewall::Plugins::Endpoint)
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
    add_plugin(Smithy::Client::Plugins::SignRequests)
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
    #  An object that resolves authentication schemes for request signing.
    # @option options [Array<String>] :auth_scheme_preference
    #  An ordered list of preferred authentication schemes to use when making a request.
    #  The items in the list must be a fully qualified scheme IDs, such as `smithy.api#httpBearerAuth`.
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::NetworkFirewall::EndpointProvider)
    #  An object that provides an endpoint to use for the request.
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

    # <p>Accepts a transit gateway attachment request for Network Firewall. When you accept the attachment request, Network Firewall creates the necessary routing components to enable traffic flow between the transit gateway and firewall endpoints.</p>
    #          <p>You must accept a transit gateway attachment to complete the creation of a transit gateway-attached firewall, unless auto-accept is enabled on the transit gateway. After acceptance, use <a>DescribeFirewall</a> to verify the firewall status.</p>
    #          <p>To reject an attachment instead of accepting it, use <a>RejectNetworkFirewallTransitGatewayAttachment</a>.</p>
    #          <note>
    #             <p>It can take several minutes for the attachment acceptance to complete and the firewall to become available.</p>
    #          </note>
    # @param [Hash, Types::AcceptNetworkFirewallTransitGatewayAttachmentRequest] params
    # @option params [String] :transit_gateway_attachment_id
    #   <p>Required. The unique identifier of the transit gateway attachment to accept. This ID is returned in the response when creating a transit gateway-attached firewall.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     transit_gateway_attachment_id: "TransitGatewayAttachmentId", # required
    #   }
    #   options = {}
    #   response = client.accept_network_firewall_transit_gateway_attachment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     transit_gateway_attachment_id: "TransitGatewayAttachmentId", # required
    #     transit_gateway_attachment_status: "CREATING" # One of: ["CREATING", "DELETING", "DELETED", "FAILED", "ERROR", "READY", "PENDING_ACCEPTANCE", "REJECTING", "REJECTED"], # required
    #   }
    # @return [Types::AcceptNetworkFirewallTransitGatewayAttachmentResponse]
    def accept_network_firewall_transit_gateway_attachment(params = {}, options = {})
      request = build_request(:accept_network_firewall_transit_gateway_attachment, params)
      request.send_request(options)
    end

    # <p>Associates the specified Availability Zones with a transit gateway-attached firewall. For each Availability Zone, Network Firewall creates a firewall endpoint to process traffic. You can specify one or more Availability Zones where you want to deploy the firewall.</p>
    #          <p>After adding Availability Zones, you must update your transit gateway route tables to direct traffic through the new firewall endpoints. Use <a>DescribeFirewall</a> to monitor the status of the new endpoints.</p>
    # @param [Hash, Types::AssociateAvailabilityZonesRequest] params
    # @option params [String] :update_token
    #   <p>An optional token that you can use for optimistic locking. Network Firewall returns a token to your requests that access the firewall. The token marks the state of the firewall resource at the time of the request. </p>
    #            <p>To make an unconditional change to the firewall, omit the token in your update request. Without the token, Network Firewall performs your updates regardless of whether the firewall has changed since you last retrieved it.</p>
    #            <p>To make a conditional change to the firewall, provide the token in your update request. Network Firewall uses the token to ensure that the firewall hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the firewall again to get a current copy of it with a new token. Reapply your changes as needed, then try the operation again using the new token. </p>
    # @option params [String] :firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    # @option params [String] :firewall_name
    #   <p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    # @option params [Array<Types::AvailabilityZoneMapping>] :availability_zone_mappings
    #   <p>Required. The Availability Zones where you want to create firewall endpoints. You must specify at least one Availability Zone.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     update_token: "UpdateToken",
    #     firewall_arn: "ResourceArn",
    #     firewall_name: "ResourceName",
    #     availability_zone_mappings: [ # required
    #       {
    #         availability_zone: "AvailabilityZoneMappingString", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.associate_availability_zones(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     firewall_arn: "ResourceArn",
    #     firewall_name: "ResourceName",
    #     availability_zone_mappings: [
    #       {
    #         availability_zone: "AvailabilityZoneMappingString", # required
    #       }
    #     ],
    #     update_token: "UpdateToken"
    #   }
    # @return [Types::AssociateAvailabilityZonesResponse]
    def associate_availability_zones(params = {}, options = {})
      request = build_request(:associate_availability_zones, params)
      request.send_request(options)
    end

    # <p>Associates a <a>FirewallPolicy</a> to a <a>Firewall</a>. </p>
    #          <p>A firewall policy defines how to monitor and manage your VPC network traffic, using a
    #          collection of inspection rule groups and other settings. Each firewall requires one
    #          firewall policy association, and you can use the same firewall policy for multiple
    #          firewalls. </p>
    # @param [Hash, Types::AssociateFirewallPolicyRequest] params
    # @option params [String] :update_token
    #   <p>An optional token that you can use for optimistic locking. Network Firewall returns a token to your requests that access the firewall. The token marks the state of the firewall resource at the time of the request. </p>
    #            <p>To make an unconditional change to the firewall, omit the token in your update request. Without the token, Network Firewall performs your updates regardless of whether the firewall has changed since you last retrieved it.</p>
    #            <p>To make a conditional change to the firewall, provide the token in your update request. Network Firewall uses the token to ensure that the firewall hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the firewall again to get a current copy of it with a new token. Reapply your changes as needed, then try the operation again using the new token. </p>
    # @option params [String] :firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    # @option params [String] :firewall_name
    #   <p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    # @option params [String] :firewall_policy_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall policy.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     update_token: "UpdateToken",
    #     firewall_arn: "ResourceArn",
    #     firewall_name: "ResourceName",
    #     firewall_policy_arn: "ResourceArn", # required
    #   }
    #   options = {}
    #   response = client.associate_firewall_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     firewall_arn: "ResourceArn",
    #     firewall_name: "ResourceName",
    #     firewall_policy_arn: "ResourceArn",
    #     update_token: "UpdateToken"
    #   }
    # @return [Types::AssociateFirewallPolicyResponse]
    def associate_firewall_policy(params = {}, options = {})
      request = build_request(:associate_firewall_policy, params)
      request.send_request(options)
    end

    # <p>Associates the specified subnets in the Amazon VPC to the firewall. You can specify one
    #          subnet for each of the Availability Zones that the VPC spans. </p>
    #          <p>This request creates an Network Firewall firewall endpoint in each of the subnets. To
    #          enable the firewall's protections, you must also modify the VPC's route tables for each
    #          subnet's Availability Zone, to redirect the traffic that's coming into and going out of the
    #          zone through the firewall endpoint. </p>
    # @param [Hash, Types::AssociateSubnetsRequest] params
    # @option params [String] :update_token
    #   <p>An optional token that you can use for optimistic locking. Network Firewall returns a token to your requests that access the firewall. The token marks the state of the firewall resource at the time of the request. </p>
    #            <p>To make an unconditional change to the firewall, omit the token in your update request. Without the token, Network Firewall performs your updates regardless of whether the firewall has changed since you last retrieved it.</p>
    #            <p>To make a conditional change to the firewall, provide the token in your update request. Network Firewall uses the token to ensure that the firewall hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the firewall again to get a current copy of it with a new token. Reapply your changes as needed, then try the operation again using the new token. </p>
    # @option params [String] :firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    # @option params [String] :firewall_name
    #   <p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    # @option params [Array<Types::SubnetMapping>] :subnet_mappings
    #   <p>The IDs of the subnets that you want to associate with the firewall. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     update_token: "UpdateToken",
    #     firewall_arn: "ResourceArn",
    #     firewall_name: "ResourceName",
    #     subnet_mappings: [ # required
    #       {
    #         subnet_id: "CollectionMember_String", # required
    #         ip_address_type: "DUALSTACK" # One of: ["DUALSTACK", "IPV4", "IPV6"]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.associate_subnets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     firewall_arn: "ResourceArn",
    #     firewall_name: "ResourceName",
    #     subnet_mappings: [
    #       {
    #         subnet_id: "CollectionMember_String", # required
    #         ip_address_type: "DUALSTACK" # One of: ["DUALSTACK", "IPV4", "IPV6"]
    #       }
    #     ],
    #     update_token: "UpdateToken"
    #   }
    # @return [Types::AssociateSubnetsResponse]
    def associate_subnets(params = {}, options = {})
      request = build_request(:associate_subnets, params)
      request.send_request(options)
    end

    # <p>Creates an Network Firewall <a>Firewall</a> and accompanying <a>FirewallStatus</a> for a VPC. </p>
    #          <p>The firewall defines the configuration settings for an Network Firewall firewall. The settings that you can define at creation include the firewall policy, the subnets in your VPC to use for the firewall endpoints, and any tags that are attached to the firewall Amazon Web Services resource. </p>
    #          <p>After you create a firewall, you can provide additional settings, like the logging configuration. </p>
    #          <p>To update the settings for a firewall, you use the operations that apply to the settings
    #          themselves, for example <a>UpdateLoggingConfiguration</a>, <a>AssociateSubnets</a>, and <a>UpdateFirewallDeleteProtection</a>. </p>
    #          <p>To manage a firewall's tags, use the standard Amazon Web Services resource tagging operations, <a>ListTagsForResource</a>, <a>TagResource</a>, and <a>UntagResource</a>.</p>
    #          <p>To retrieve information about firewalls, use <a>ListFirewalls</a> and <a>DescribeFirewall</a>.</p>
    #          <p>To generate a report on the last 30 days of traffic monitored by a firewall, use <a>StartAnalysisReport</a>.</p>
    # @param [Hash, Types::CreateFirewallRequest] params
    # @option params [String] :firewall_name
    #   <p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>
    # @option params [String] :firewall_policy_arn
    #   <p>The Amazon Resource Name (ARN) of the <a>FirewallPolicy</a> that you want to
    #            use for the firewall.</p>
    # @option params [String] :vpc_id
    #   <p>The unique identifier of the VPC where Network Firewall should create the firewall. </p>
    #            <p>You can't change this setting after you create the firewall. </p>
    # @option params [Array<Types::SubnetMapping>] :subnet_mappings
    #   <p>The public subnets to use for your Network Firewall firewalls. Each subnet must belong to a
    #            different Availability Zone in the VPC. Network Firewall creates a firewall endpoint in each
    #            subnet. </p>
    # @option params [Boolean] :delete_protection
    #   <p>A flag indicating whether it is possible to delete the firewall. A setting of <code>TRUE</code> indicates
    #            that the firewall is protected against deletion. Use this setting to protect against
    #            accidentally deleting a firewall that is in use. When you create a firewall, the operation initializes this flag to <code>TRUE</code>.</p>
    # @option params [Boolean] :subnet_change_protection
    #   <p>A setting indicating whether the firewall is protected against changes to the subnet associations.
    #            Use this setting to protect against
    #            accidentally modifying the subnet associations for a firewall that is in use. When you create a firewall, the operation initializes this setting to <code>TRUE</code>.</p>
    # @option params [Boolean] :firewall_policy_change_protection
    #   <p>A setting indicating whether the firewall is protected against a change to the firewall policy association.
    #            Use this setting to protect against
    #            accidentally modifying the firewall policy for a firewall that is in use. When you create a firewall, the operation initializes this setting to <code>TRUE</code>.</p>
    # @option params [String] :description
    #   <p>A description of the firewall.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The key:value pairs to associate with the resource.</p>
    # @option params [Types::EncryptionConfiguration] :encryption_configuration
    #   <p>A complex type that contains settings for encryption of your firewall resources.</p>
    # @option params [Array<String>] :enabled_analysis_types
    #   <p>An optional setting indicating the specific traffic analysis types to enable on the firewall. </p>
    # @option params [String] :transit_gateway_id
    #   <p>Required when creating a transit gateway-attached firewall. The unique identifier of the transit gateway to attach to this firewall. You can provide either a transit gateway from your account or one that has been shared with you through Resource Access Manager.</p>
    #            <important>
    #               <p>After creating the firewall, you cannot change the transit gateway association. To use a different transit gateway, you must create a new firewall.</p>
    #            </important>
    #            <p>For information about creating firewalls, see <a>CreateFirewall</a>. For specific guidance about transit gateway-attached firewalls, see <a href="https://docs.aws.amazon.com/network-firewall/latest/developerguide/tgw-firewall-considerations.html">Considerations for transit gateway-attached firewalls</a> in the <i>Network Firewall Developer Guide</i>.</p>
    # @option params [Array<Types::AvailabilityZoneMapping>] :availability_zone_mappings
    #   <p>Required. The Availability Zones where you want to create firewall endpoints for a transit gateway-attached firewall. You must specify at least one Availability Zone. Consider enabling the firewall in every Availability Zone where you have workloads to maintain Availability Zone isolation.</p>
    #            <p>You can modify Availability Zones later using <a>AssociateAvailabilityZones</a> or <a>DisassociateAvailabilityZones</a>, but this may briefly disrupt traffic. The <code>AvailabilityZoneChangeProtection</code> setting controls whether you can make these modifications.</p>
    # @option params [Boolean] :availability_zone_change_protection
    #   <p>Optional. A setting indicating whether the firewall is protected against changes to its Availability Zone configuration. When set to <code>TRUE</code>, you cannot add or remove Availability Zones without first disabling this protection using <a>UpdateAvailabilityZoneChangeProtection</a>.</p>
    #            <p>Default value: <code>FALSE</code>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     firewall_name: "ResourceName", # required
    #     firewall_policy_arn: "ResourceArn", # required
    #     vpc_id: "VpcId",
    #     subnet_mappings: [
    #       {
    #         subnet_id: "CollectionMember_String", # required
    #         ip_address_type: "DUALSTACK" # One of: ["DUALSTACK", "IPV4", "IPV6"]
    #       }
    #     ],
    #     delete_protection: false,
    #     subnet_change_protection: false,
    #     firewall_policy_change_protection: false,
    #     description: "Description",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     encryption_configuration: {
    #       key_id: "KeyId",
    #       type: "CUSTOMER_KMS" # One of: ["CUSTOMER_KMS", "AWS_OWNED_KMS_KEY"], # required
    #     },
    #     enabled_analysis_types: ["TLS_SNI" # One of: ["TLS_SNI", "HTTP_HOST"]],
    #     transit_gateway_id: "TransitGatewayId",
    #     availability_zone_mappings: [
    #       {
    #         availability_zone: "AvailabilityZoneMappingString", # required
    #       }
    #     ],
    #     availability_zone_change_protection: false
    #   }
    #   options = {}
    #   response = client.create_firewall(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     firewall: {
    #       firewall_name: "ResourceName",
    #       firewall_arn: "ResourceArn",
    #       firewall_policy_arn: "ResourceArn", # required
    #       vpc_id: "VpcId", # required
    #       subnet_mappings: [ # required
    #         {
    #           subnet_id: "CollectionMember_String", # required
    #           ip_address_type: "DUALSTACK" # One of: ["DUALSTACK", "IPV4", "IPV6"]
    #         }
    #       ],
    #       delete_protection: false,
    #       subnet_change_protection: false,
    #       firewall_policy_change_protection: false,
    #       description: "Description",
    #       firewall_id: "ResourceId", # required
    #       tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue", # required
    #         }
    #       ],
    #       encryption_configuration: {
    #         key_id: "KeyId",
    #         type: "CUSTOMER_KMS" # One of: ["CUSTOMER_KMS", "AWS_OWNED_KMS_KEY"], # required
    #       },
    #       number_of_associations: 1,
    #       enabled_analysis_types: ["TLS_SNI" # One of: ["TLS_SNI", "HTTP_HOST"]],
    #       transit_gateway_id: "TransitGatewayId",
    #       transit_gateway_owner_account_id: "AWSAccountId",
    #       availability_zone_mappings: [
    #         {
    #           availability_zone: "AvailabilityZoneMappingString", # required
    #         }
    #       ],
    #       availability_zone_change_protection: false
    #     },
    #     firewall_status: {
    #       status: "PROVISIONING" # One of: ["PROVISIONING", "DELETING", "READY"], # required
    #       configuration_sync_state_summary: "PENDING" # One of: ["PENDING", "IN_SYNC", "CAPACITY_CONSTRAINED"], # required
    #       sync_states: {
    #         "AvailabilityZone" => {
    #           attachment: {
    #             subnet_id: "AzSubnet",
    #             endpoint_id: "EndpointId",
    #             status: "CREATING" # One of: ["CREATING", "DELETING", "FAILED", "ERROR", "SCALING", "READY"],
    #             status_message: "StatusMessage"
    #           },
    #           config: {
    #             "ResourceName" => {
    #               sync_status: "PENDING" # One of: ["PENDING", "IN_SYNC", "CAPACITY_CONSTRAINED"],
    #               update_token: "UpdateToken"
    #             }
    #           }
    #         }
    #       },
    #       capacity_usage_summary: {
    #         cid_rs: {
    #           available_cidr_count: 1,
    #           utilized_cidr_count: 1,
    #           ip_set_references: {
    #             "IPSetArn" => {
    #               resolved_cidr_count: 1
    #             }
    #           }
    #         }
    #       },
    #       transit_gateway_attachment_sync_state: {
    #         attachment_id: "AttachmentId",
    #         transit_gateway_attachment_status: "CREATING" # One of: ["CREATING", "DELETING", "DELETED", "FAILED", "ERROR", "READY", "PENDING_ACCEPTANCE", "REJECTING", "REJECTED"],
    #         status_message: "TransitGatewayAttachmentSyncStateMessage"
    #       }
    #     }
    #   }
    # @return [Types::CreateFirewallResponse]
    def create_firewall(params = {}, options = {})
      request = build_request(:create_firewall, params)
      request.send_request(options)
    end

    # <p>Creates the firewall policy for the firewall according to the specifications. </p>
    #          <p>An Network Firewall firewall policy defines the behavior of a firewall, in a collection of
    #          stateless and stateful rule groups and other settings. You can use one firewall policy for
    #          multiple firewalls. </p>
    # @param [Hash, Types::CreateFirewallPolicyRequest] params
    # @option params [String] :firewall_policy_name
    #   <p>The descriptive name of the firewall policy. You can't change the name of a firewall policy after you create it.</p>
    # @option params [Types::FirewallPolicy] :firewall_policy
    #   <p>The rule groups and policy actions to use in the firewall policy.</p>
    # @option params [String] :description
    #   <p>A description of the firewall policy.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The key:value pairs to associate with the resource.</p>
    # @option params [Boolean] :dry_run
    #   <p>Indicates whether you want Network Firewall to just check the validity of the request, rather than run the request. </p>
    #            <p>If set to <code>TRUE</code>, Network Firewall checks whether the request can run successfully,
    #            but doesn't actually make the requested changes. The call returns the value that the request would return if you ran it with
    #            dry run set to <code>FALSE</code>, but doesn't make additions or changes to your resources. This option allows you to make sure that you have
    #            the required permissions to run the request and that your request parameters are valid. </p>
    #            <p>If set to <code>FALSE</code>, Network Firewall makes the requested changes to your resources. </p>
    # @option params [Types::EncryptionConfiguration] :encryption_configuration
    #   <p>A complex type that contains settings for encryption of your firewall policy resources.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     firewall_policy_name: "ResourceName", # required
    #     firewall_policy: { # required
    #       stateless_rule_group_references: [
    #         {
    #           resource_arn: "ResourceArn", # required
    #           priority: 1, # required
    #         }
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
    #                 }
    #               ]
    #             }
    #           }
    #         }
    #       ],
    #       stateful_rule_group_references: [
    #         {
    #           resource_arn: "ResourceArn", # required
    #           priority: 1,
    #           override: {
    #             action: "DROP_TO_ALERT" # One of: ["DROP_TO_ALERT"]
    #           },
    #           deep_threat_inspection: false
    #         }
    #       ],
    #       stateful_default_actions: ["CollectionMember_String"],
    #       stateful_engine_options: {
    #         rule_order: "DEFAULT_ACTION_ORDER" # One of: ["DEFAULT_ACTION_ORDER", "STRICT_ORDER"],
    #         stream_exception_policy: "DROP" # One of: ["DROP", "CONTINUE", "REJECT"],
    #         flow_timeouts: {
    #           tcp_idle_timeout_seconds: 1
    #         }
    #       },
    #       tls_inspection_configuration_arn: "ResourceArn",
    #       policy_variables: {
    #         rule_variables: {
    #           "RuleVariableName" => {
    #             definition: ["VariableDefinition"], # required
    #           }
    #         }
    #       },
    #       enable_tls_session_holding: false
    #     },
    #     description: "Description",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     dry_run: false,
    #     encryption_configuration: {
    #       key_id: "KeyId",
    #       type: "CUSTOMER_KMS" # One of: ["CUSTOMER_KMS", "AWS_OWNED_KMS_KEY"], # required
    #     }
    #   }
    #   options = {}
    #   response = client.create_firewall_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     update_token: "UpdateToken", # required
    #     firewall_policy_response: { # required
    #       firewall_policy_name: "ResourceName", # required
    #       firewall_policy_arn: "ResourceArn", # required
    #       firewall_policy_id: "ResourceId", # required
    #       description: "Description",
    #       firewall_policy_status: "ACTIVE" # One of: ["ACTIVE", "DELETING", "ERROR"],
    #       tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue", # required
    #         }
    #       ],
    #       consumed_stateless_rule_capacity: 1,
    #       consumed_stateful_rule_capacity: 1,
    #       number_of_associations: 1,
    #       encryption_configuration: {
    #         key_id: "KeyId",
    #         type: "CUSTOMER_KMS" # One of: ["CUSTOMER_KMS", "AWS_OWNED_KMS_KEY"], # required
    #       },
    #       last_modified_time: Time.now
    #     }
    #   }
    # @return [Types::CreateFirewallPolicyResponse]
    def create_firewall_policy(params = {}, options = {})
      request = build_request(:create_firewall_policy, params)
      request.send_request(options)
    end

    # <p>Creates the specified stateless or stateful rule group, which includes the rules for
    #          network traffic inspection, a capacity setting, and tags. </p>
    #          <p>You provide your rule group specification in your request using either
    #             <code>RuleGroup</code> or <code>Rules</code>.</p>
    # @param [Hash, Types::CreateRuleGroupRequest] params
    # @option params [String] :rule_group_name
    #   <p>The descriptive name of the rule group. You can't change the name of a rule group after you create it.</p>
    # @option params [Types::RuleGroup] :rule_group
    #   <p>An object that defines the rule group rules. </p>
    #            <note>
    #               <p>You must provide either this rule group setting or a <code>Rules</code> setting, but not both. </p>
    #            </note>
    # @option params [String] :rules
    #   <p>A string containing stateful rule group rules specifications in Suricata flat format, with one rule
    #   per line. Use this to import your existing Suricata compatible rule groups. </p>
    #            <note>
    #               <p>You must provide either this rules setting or a populated <code>RuleGroup</code> setting, but not both. </p>
    #            </note>
    #            <p>You can provide your rule group specification in Suricata flat format through this setting when you create or update your rule group. The call
    #   response returns a <a>RuleGroup</a> object that Network Firewall has populated from your string. </p>
    # @option params [String] :type
    #   <p>Indicates whether the rule group is stateless or stateful. If the rule group is stateless, it contains
    #   stateless rules. If it is stateful, it contains stateful rules. </p>
    # @option params [String] :description
    #   <p>A description of the rule group. </p>
    # @option params [Integer] :capacity
    #   <p>The maximum operating resources that this rule group can use. Rule group capacity is fixed at creation.
    #         When you update a rule group, you are limited to this capacity. When you reference a rule group
    #         from a firewall policy, Network Firewall reserves this capacity for the rule group. </p>
    #            <p>You can retrieve the capacity that would be required for a rule group before you create the rule group by calling
    #         <a>CreateRuleGroup</a> with <code>DryRun</code> set to <code>TRUE</code>. </p>
    #            <note>
    #               <p>You can't change or exceed this capacity when you update the rule group, so leave
    #               room for your rule group to grow. </p>
    #            </note>
    #            <p>
    #               <b>Capacity for a stateless rule group</b>
    #            </p>
    #            <p>For a stateless rule group, the capacity required is the sum of the capacity
    #            requirements of the individual rules that you expect to have in the rule group. </p>
    #            <p>To calculate the capacity requirement of a single rule, multiply the capacity
    #            requirement values of each of the rule's match settings:</p>
    #            <ul>
    #               <li>
    #                  <p>A match setting with no criteria specified has a value of 1. </p>
    #               </li>
    #               <li>
    #                  <p>A match setting with <code>Any</code> specified has a value of 1. </p>
    #               </li>
    #               <li>
    #                  <p>All other match settings have a value equal to the number of elements provided in
    #                  the setting. For example, a protocol setting ["UDP"] and a source setting
    #                  ["10.0.0.0/24"] each have a value of 1. A protocol setting ["UDP","TCP"] has a value
    #                  of 2. A source setting ["10.0.0.0/24","10.0.0.1/24","10.0.0.2/24"] has a value of 3.
    #               </p>
    #               </li>
    #            </ul>
    #            <p>A rule with no criteria specified in any of its match settings has a capacity
    #            requirement of 1. A rule with protocol setting ["UDP","TCP"], source setting
    #            ["10.0.0.0/24","10.0.0.1/24","10.0.0.2/24"], and a single specification or no specification
    #            for each of the other match settings has a capacity requirement of 6. </p>
    #            <p>
    #               <b>Capacity for a stateful rule group</b>
    #            </p>
    #            <p>For a stateful rule group, the minimum capacity required is the number of individual rules that
    #            you expect to have in the rule group. </p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The key:value pairs to associate with the resource.</p>
    # @option params [Boolean] :dry_run
    #   <p>Indicates whether you want Network Firewall to just check the validity of the request, rather than run the request. </p>
    #            <p>If set to <code>TRUE</code>, Network Firewall checks whether the request can run successfully,
    #            but doesn't actually make the requested changes. The call returns the value that the request would return if you ran it with
    #            dry run set to <code>FALSE</code>, but doesn't make additions or changes to your resources. This option allows you to make sure that you have
    #            the required permissions to run the request and that your request parameters are valid. </p>
    #            <p>If set to <code>FALSE</code>, Network Firewall makes the requested changes to your resources. </p>
    # @option params [Types::EncryptionConfiguration] :encryption_configuration
    #   <p>A complex type that contains settings for encryption of your rule group resources.</p>
    # @option params [Types::SourceMetadata] :source_metadata
    #   <p>A complex type that contains metadata about the rule group that your own rule group is copied from. You can use the metadata to keep track of updates made to the originating rule group.</p>
    # @option params [Boolean] :analyze_rule_group
    #   <p>Indicates whether you want Network Firewall to analyze the stateless rules in the rule group for rule behavior such as asymmetric routing. If set to <code>TRUE</code>, Network Firewall runs the analysis and then creates the rule group for you. To run the stateless rule group analyzer without creating the rule group, set <code>DryRun</code> to <code>TRUE</code>.</p>
    # @option params [Types::SummaryConfiguration] :summary_configuration
    #   <p>An object that contains a <code>RuleOptions</code> array of strings. 
    #            You use <code>RuleOptions</code> to determine which of the following <a>RuleSummary</a> values are returned in response to <code>DescribeRuleGroupSummary</code>.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Metadata</code> - returns</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Msg</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SID</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     rule_group_name: "ResourceName", # required
    #     rule_group: {
    #       rule_variables: {
    #         ip_sets: {
    #           "RuleVariableName" => {
    #             definition: ["VariableDefinition"], # required
    #           }
    #         },
    #         port_sets: {
    #           "RuleVariableName" => {
    #             definition: ["VariableDefinition"]
    #           }
    #         }
    #       },
    #       reference_sets: {
    #         ip_set_references: {
    #           "IPSetReferenceName" => {
    #             reference_arn: "ResourceArn"
    #           }
    #         }
    #       },
    #       rules_source: { # required
    #         rules_string: "RulesString",
    #         rules_source_list: {
    #           targets: ["CollectionMember_String"], # required
    #           target_types: ["TLS_SNI" # One of: ["TLS_SNI", "HTTP_HOST"]], # required
    #           generated_rules_type: "ALLOWLIST" # One of: ["ALLOWLIST", "DENYLIST", "REJECTLIST", "ALERTLIST"], # required
    #         },
    #         stateful_rules: [
    #           {
    #             action: "PASS" # One of: ["PASS", "DROP", "ALERT", "REJECT"], # required
    #             header: { # required
    #               protocol: "IP" # One of: ["IP", "TCP", "UDP", "ICMP", "HTTP", "FTP", "TLS", "SMB", "DNS", "DCERPC", "SSH", "SMTP", "IMAP", "MSN", "KRB5", "IKEV2", "TFTP", "NTP", "DHCP", "HTTP2", "QUIC"], # required
    #               source: "Source", # required
    #               source_port: "Port", # required
    #               direction: "FORWARD" # One of: ["FORWARD", "ANY"], # required
    #               destination: "Destination", # required
    #               destination_port: "Port", # required
    #             },
    #             rule_options: [ # required
    #               {
    #                 keyword: "Keyword", # required
    #                 settings: ["Setting"]
    #               }
    #             ]
    #           }
    #         ],
    #         stateless_rules_and_custom_actions: {
    #           stateless_rules: [ # required
    #             {
    #               rule_definition: { # required
    #                 match_attributes: { # required
    #                   sources: [
    #                     {
    #                       address_definition: "AddressDefinition", # required
    #                     }
    #                   ],
    #                   destinations: [
    #                     {
    #                       address_definition: "AddressDefinition", # required
    #                     }
    #                   ],
    #                   source_ports: [
    #                     {
    #                       from_port: 1, # required
    #                       to_port: 1, # required
    #                     }
    #                   ],
    #                   destination_ports: [
    #                     {
    #                       from_port: 1, # required
    #                       to_port: 1, # required
    #                     }
    #                   ],
    #                   protocols: [1],
    #                   tcp_flags: [
    #                     {
    #                       flags: ["FIN" # One of: ["FIN", "SYN", "RST", "PSH", "ACK", "URG", "ECE", "CWR"]], # required
    #                       masks: ["FIN" # One of: ["FIN", "SYN", "RST", "PSH", "ACK", "URG", "ECE", "CWR"]]
    #                     }
    #                   ]
    #                 },
    #                 actions: ["CollectionMember_String"], # required
    #               },
    #               priority: 1, # required
    #             }
    #           ],
    #           custom_actions: [
    #             {
    #               action_name: "ActionName", # required
    #               action_definition: { # required
    #                 publish_metric_action: {
    #                   dimensions: [ # required
    #                     {
    #                       value: "DimensionValue", # required
    #                     }
    #                   ]
    #                 }
    #               }
    #             }
    #           ]
    #         }
    #       },
    #       stateful_rule_options: {
    #         rule_order: "DEFAULT_ACTION_ORDER" # One of: ["DEFAULT_ACTION_ORDER", "STRICT_ORDER"]
    #       }
    #     },
    #     rules: "RulesString",
    #     type: "STATELESS" # One of: ["STATELESS", "STATEFUL"], # required
    #     description: "Description",
    #     capacity: 1, # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     dry_run: false,
    #     encryption_configuration: {
    #       key_id: "KeyId",
    #       type: "CUSTOMER_KMS" # One of: ["CUSTOMER_KMS", "AWS_OWNED_KMS_KEY"], # required
    #     },
    #     source_metadata: {
    #       source_arn: "ResourceArn",
    #       source_update_token: "UpdateToken"
    #     },
    #     analyze_rule_group: false,
    #     summary_configuration: {
    #       rule_options: ["SID" # One of: ["SID", "MSG", "METADATA"]]
    #     }
    #   }
    #   options = {}
    #   response = client.create_rule_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     update_token: "UpdateToken", # required
    #     rule_group_response: { # required
    #       rule_group_arn: "ResourceArn", # required
    #       rule_group_name: "ResourceName", # required
    #       rule_group_id: "ResourceId", # required
    #       description: "Description",
    #       type: "STATELESS" # One of: ["STATELESS", "STATEFUL"],
    #       capacity: 1,
    #       rule_group_status: "ACTIVE" # One of: ["ACTIVE", "DELETING", "ERROR"],
    #       tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue", # required
    #         }
    #       ],
    #       consumed_capacity: 1,
    #       number_of_associations: 1,
    #       encryption_configuration: {
    #         key_id: "KeyId",
    #         type: "CUSTOMER_KMS" # One of: ["CUSTOMER_KMS", "AWS_OWNED_KMS_KEY"], # required
    #       },
    #       source_metadata: {
    #         source_arn: "ResourceArn",
    #         source_update_token: "UpdateToken"
    #       },
    #       sns_topic: "ResourceArn",
    #       last_modified_time: Time.now,
    #       analysis_results: [
    #         {
    #           identified_rule_ids: ["CollectionMember_String"],
    #           identified_type: "STATELESS_RULE_FORWARDING_ASYMMETRICALLY" # One of: ["STATELESS_RULE_FORWARDING_ASYMMETRICALLY", "STATELESS_RULE_CONTAINS_TCP_FLAGS"],
    #           analysis_detail: "CollectionMember_String"
    #         }
    #       ],
    #       summary_configuration: {
    #         rule_options: ["SID" # One of: ["SID", "MSG", "METADATA"]]
    #       }
    #     }
    #   }
    # @return [Types::CreateRuleGroupResponse]
    def create_rule_group(params = {}, options = {})
      request = build_request(:create_rule_group, params)
      request.send_request(options)
    end

    # <p>Creates an Network Firewall TLS inspection configuration. Network Firewall uses TLS inspection configurations to decrypt your firewall's inbound and outbound SSL/TLS traffic. After decryption, Network Firewall inspects the traffic according to your firewall policy's stateful rules, and then re-encrypts it before sending it to its destination. You can enable inspection of your firewall's inbound traffic, outbound traffic, or both. To use TLS inspection with your firewall, you must first import or provision certificates using ACM, create a TLS inspection configuration, add that configuration to a new firewall policy, and then associate that policy with your firewall.</p>
    #          <p>To update the settings for a TLS inspection configuration, use <a>UpdateTLSInspectionConfiguration</a>.</p>
    #          <p>To manage a TLS inspection configuration's tags, use the standard Amazon Web Services resource tagging operations, <a>ListTagsForResource</a>, <a>TagResource</a>, and <a>UntagResource</a>.</p>
    #          <p>To retrieve information about TLS inspection configurations, use <a>ListTLSInspectionConfigurations</a> and <a>DescribeTLSInspectionConfiguration</a>.</p>
    #          <p>
    #               For more information about TLS inspection configurations, see <a href="https://docs.aws.amazon.com/network-firewall/latest/developerguide/tls-inspection.html">Inspecting SSL/TLS traffic with TLS
    # inspection configurations</a> in the <i>Network Firewall Developer Guide</i>.
    #             </p>
    # @param [Hash, Types::CreateTLSInspectionConfigurationRequest] params
    # @option params [String] :tls_inspection_configuration_name
    #   <p>The descriptive name of the TLS inspection configuration. You can't change the name of a TLS inspection configuration after you create it.</p>
    # @option params [Types::TLSInspectionConfiguration] :tls_inspection_configuration
    #   <p>The object that defines a TLS inspection configuration. This, along with <a>TLSInspectionConfigurationResponse</a>, define the TLS inspection configuration. You can retrieve all objects for a TLS inspection configuration by calling <a>DescribeTLSInspectionConfiguration</a>. </p>
    #            <p>Network Firewall uses a TLS inspection configuration to decrypt traffic. Network Firewall re-encrypts the traffic before sending it to its destination.</p>
    #            <p>To use a TLS inspection configuration, you add it to a new Network Firewall firewall policy, then you apply the firewall policy to a firewall. Network Firewall acts as a proxy service to decrypt and inspect the traffic traveling through your firewalls. You can reference a TLS inspection configuration from more than one firewall policy, and you can use a firewall policy in more than one firewall. For more information about using TLS inspection configurations, see 
    #       <a href="https://docs.aws.amazon.com/network-firewall/latest/developerguide/tls-inspection.html">Inspecting SSL/TLS traffic with TLS
    #   inspection configurations</a> in the <i>Network Firewall Developer Guide</i>.</p>
    # @option params [String] :description
    #   <p>A description of the TLS inspection configuration. </p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The key:value pairs to associate with the resource.</p>
    # @option params [Types::EncryptionConfiguration] :encryption_configuration
    #   <p>A complex type that contains optional Amazon Web Services Key Management Service (KMS) encryption settings for your Network Firewall resources. Your data is encrypted by default with an Amazon Web Services owned key that Amazon Web Services owns and manages for you. You can use either the Amazon Web Services owned key, or provide your own customer managed key. To learn more about KMS encryption of your Network Firewall resources, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-encryption-at-rest.html">Encryption at rest with Amazon Web Services Key Managment Service</a> in the <i>Network Firewall Developer Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     tls_inspection_configuration_name: "ResourceName", # required
    #     tls_inspection_configuration: { # required
    #       server_certificate_configurations: [
    #         {
    #           server_certificates: [
    #             {
    #               resource_arn: "ResourceArn"
    #             }
    #           ],
    #           scopes: [
    #             {
    #               sources: [
    #                 {
    #                   address_definition: "AddressDefinition", # required
    #                 }
    #               ],
    #               destinations: [
    #                 {
    #                   address_definition: "AddressDefinition", # required
    #                 }
    #               ],
    #               source_ports: [
    #                 {
    #                   from_port: 1, # required
    #                   to_port: 1, # required
    #                 }
    #               ],
    #               destination_ports: [
    #                 {
    #                   from_port: 1, # required
    #                   to_port: 1, # required
    #                 }
    #               ],
    #               protocols: [1]
    #             }
    #           ],
    #           certificate_authority_arn: "ResourceArn",
    #           check_certificate_revocation_status: {
    #             revoked_status_action: "PASS" # One of: ["PASS", "DROP", "REJECT"],
    #             unknown_status_action: "PASS" # One of: ["PASS", "DROP", "REJECT"]
    #           }
    #         }
    #       ]
    #     },
    #     description: "Description",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     encryption_configuration: {
    #       key_id: "KeyId",
    #       type: "CUSTOMER_KMS" # One of: ["CUSTOMER_KMS", "AWS_OWNED_KMS_KEY"], # required
    #     }
    #   }
    #   options = {}
    #   response = client.create_tls_inspection_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     update_token: "UpdateToken", # required
    #     tls_inspection_configuration_response: { # required
    #       tls_inspection_configuration_arn: "ResourceArn", # required
    #       tls_inspection_configuration_name: "ResourceName", # required
    #       tls_inspection_configuration_id: "ResourceId", # required
    #       tls_inspection_configuration_status: "ACTIVE" # One of: ["ACTIVE", "DELETING", "ERROR"],
    #       description: "Description",
    #       tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue", # required
    #         }
    #       ],
    #       last_modified_time: Time.now,
    #       number_of_associations: 1,
    #       encryption_configuration: {
    #         key_id: "KeyId",
    #         type: "CUSTOMER_KMS" # One of: ["CUSTOMER_KMS", "AWS_OWNED_KMS_KEY"], # required
    #       },
    #       certificates: [
    #         {
    #           certificate_arn: "ResourceArn",
    #           certificate_serial: "CollectionMember_String",
    #           status: "CollectionMember_String",
    #           status_message: "StatusReason"
    #         }
    #       ],
    #       certificate_authority: {
    #         certificate_arn: "ResourceArn",
    #         certificate_serial: "CollectionMember_String",
    #         status: "CollectionMember_String",
    #         status_message: "StatusReason"
    #       }
    #     }
    #   }
    # @return [Types::CreateTLSInspectionConfigurationResponse]
    def create_tls_inspection_configuration(params = {}, options = {})
      request = build_request(:create_tls_inspection_configuration, params)
      request.send_request(options)
    end

    # <p>Creates a firewall endpoint for an Network Firewall firewall. This type of firewall endpoint is independent of the firewall endpoints that you specify in the <code>Firewall</code> itself, and you define it in addition to those endpoints after the firewall has been created. You can define a VPC endpoint association using a different VPC than the one you used in the firewall specifications. </p>
    # @param [Hash, Types::CreateVpcEndpointAssociationRequest] params
    # @option params [String] :firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    # @option params [String] :vpc_id
    #   <p>The unique identifier of the VPC where you want to create a firewall endpoint. </p>
    # @option params [Types::SubnetMapping] :subnet_mapping
    #   <p>The ID for a subnet that's used in an association with a firewall. This is used in
    #         <a>CreateFirewall</a>, <a>AssociateSubnets</a>, and <a>CreateVpcEndpointAssociation</a>. Network Firewall
    #            creates an instance of the associated firewall in each subnet that you specify, to filter
    #            traffic in the subnet's Availability Zone.</p>
    # @option params [String] :description
    #   <p>A description of the VPC endpoint association. </p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The key:value pairs to associate with the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     firewall_arn: "ResourceArn", # required
    #     vpc_id: "VpcId", # required
    #     subnet_mapping: { # required
    #       subnet_id: "CollectionMember_String", # required
    #       ip_address_type: "DUALSTACK" # One of: ["DUALSTACK", "IPV4", "IPV6"]
    #     },
    #     description: "Description",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_vpc_endpoint_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     vpc_endpoint_association: {
    #       vpc_endpoint_association_id: "ResourceId",
    #       vpc_endpoint_association_arn: "ResourceArn", # required
    #       firewall_arn: "ResourceArn", # required
    #       vpc_id: "VpcId", # required
    #       subnet_mapping: { # required
    #         subnet_id: "CollectionMember_String", # required
    #         ip_address_type: "DUALSTACK" # One of: ["DUALSTACK", "IPV4", "IPV6"]
    #       },
    #       description: "Description",
    #       tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue", # required
    #         }
    #       ]
    #     },
    #     vpc_endpoint_association_status: {
    #       status: "PROVISIONING" # One of: ["PROVISIONING", "DELETING", "READY"], # required
    #       association_sync_state: {
    #         "AvailabilityZone" => {
    #           attachment: {
    #             subnet_id: "AzSubnet",
    #             endpoint_id: "EndpointId",
    #             status: "CREATING" # One of: ["CREATING", "DELETING", "FAILED", "ERROR", "SCALING", "READY"],
    #             status_message: "StatusMessage"
    #           }
    #         }
    #       }
    #     }
    #   }
    # @return [Types::CreateVpcEndpointAssociationResponse]
    def create_vpc_endpoint_association(params = {}, options = {})
      request = build_request(:create_vpc_endpoint_association, params)
      request.send_request(options)
    end

    # <p>Deletes the specified <a>Firewall</a> and its <a>FirewallStatus</a>.
    #        This operation requires the firewall's <code>DeleteProtection</code> flag to be
    #             <code>FALSE</code>. You can't revert this operation. </p>
    #          <p>You can check whether a firewall is
    #          in use by reviewing the route tables for the Availability Zones where you have
    #          firewall subnet mappings. Retrieve the subnet mappings by calling <a>DescribeFirewall</a>.
    #          You define and update the route tables through Amazon VPC. As needed, update the route tables for the
    #          zones to remove the firewall endpoints. When the route tables no longer use the firewall endpoints,
    #          you can remove the firewall safely.</p>
    #          <p>To delete a firewall, remove the delete protection if you need to using <a>UpdateFirewallDeleteProtection</a>,
    #          then delete the firewall by calling <a>DeleteFirewall</a>. </p>
    # @param [Hash, Types::DeleteFirewallRequest] params
    # @option params [String] :firewall_name
    #   <p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    # @option params [String] :firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     firewall_name: "ResourceName",
    #     firewall_arn: "ResourceArn"
    #   }
    #   options = {}
    #   response = client.delete_firewall(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     firewall: {
    #       firewall_name: "ResourceName",
    #       firewall_arn: "ResourceArn",
    #       firewall_policy_arn: "ResourceArn", # required
    #       vpc_id: "VpcId", # required
    #       subnet_mappings: [ # required
    #         {
    #           subnet_id: "CollectionMember_String", # required
    #           ip_address_type: "DUALSTACK" # One of: ["DUALSTACK", "IPV4", "IPV6"]
    #         }
    #       ],
    #       delete_protection: false,
    #       subnet_change_protection: false,
    #       firewall_policy_change_protection: false,
    #       description: "Description",
    #       firewall_id: "ResourceId", # required
    #       tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue", # required
    #         }
    #       ],
    #       encryption_configuration: {
    #         key_id: "KeyId",
    #         type: "CUSTOMER_KMS" # One of: ["CUSTOMER_KMS", "AWS_OWNED_KMS_KEY"], # required
    #       },
    #       number_of_associations: 1,
    #       enabled_analysis_types: ["TLS_SNI" # One of: ["TLS_SNI", "HTTP_HOST"]],
    #       transit_gateway_id: "TransitGatewayId",
    #       transit_gateway_owner_account_id: "AWSAccountId",
    #       availability_zone_mappings: [
    #         {
    #           availability_zone: "AvailabilityZoneMappingString", # required
    #         }
    #       ],
    #       availability_zone_change_protection: false
    #     },
    #     firewall_status: {
    #       status: "PROVISIONING" # One of: ["PROVISIONING", "DELETING", "READY"], # required
    #       configuration_sync_state_summary: "PENDING" # One of: ["PENDING", "IN_SYNC", "CAPACITY_CONSTRAINED"], # required
    #       sync_states: {
    #         "AvailabilityZone" => {
    #           attachment: {
    #             subnet_id: "AzSubnet",
    #             endpoint_id: "EndpointId",
    #             status: "CREATING" # One of: ["CREATING", "DELETING", "FAILED", "ERROR", "SCALING", "READY"],
    #             status_message: "StatusMessage"
    #           },
    #           config: {
    #             "ResourceName" => {
    #               sync_status: "PENDING" # One of: ["PENDING", "IN_SYNC", "CAPACITY_CONSTRAINED"],
    #               update_token: "UpdateToken"
    #             }
    #           }
    #         }
    #       },
    #       capacity_usage_summary: {
    #         cid_rs: {
    #           available_cidr_count: 1,
    #           utilized_cidr_count: 1,
    #           ip_set_references: {
    #             "IPSetArn" => {
    #               resolved_cidr_count: 1
    #             }
    #           }
    #         }
    #       },
    #       transit_gateway_attachment_sync_state: {
    #         attachment_id: "AttachmentId",
    #         transit_gateway_attachment_status: "CREATING" # One of: ["CREATING", "DELETING", "DELETED", "FAILED", "ERROR", "READY", "PENDING_ACCEPTANCE", "REJECTING", "REJECTED"],
    #         status_message: "TransitGatewayAttachmentSyncStateMessage"
    #       }
    #     }
    #   }
    # @return [Types::DeleteFirewallResponse]
    def delete_firewall(params = {}, options = {})
      request = build_request(:delete_firewall, params)
      request.send_request(options)
    end

    # <p>Deletes the specified <a>FirewallPolicy</a>. </p>
    # @param [Hash, Types::DeleteFirewallPolicyRequest] params
    # @option params [String] :firewall_policy_name
    #   <p>The descriptive name of the firewall policy. You can't change the name of a firewall policy after you create it.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    # @option params [String] :firewall_policy_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall policy.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     firewall_policy_name: "ResourceName",
    #     firewall_policy_arn: "ResourceArn"
    #   }
    #   options = {}
    #   response = client.delete_firewall_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     firewall_policy_response: { # required
    #       firewall_policy_name: "ResourceName", # required
    #       firewall_policy_arn: "ResourceArn", # required
    #       firewall_policy_id: "ResourceId", # required
    #       description: "Description",
    #       firewall_policy_status: "ACTIVE" # One of: ["ACTIVE", "DELETING", "ERROR"],
    #       tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue", # required
    #         }
    #       ],
    #       consumed_stateless_rule_capacity: 1,
    #       consumed_stateful_rule_capacity: 1,
    #       number_of_associations: 1,
    #       encryption_configuration: {
    #         key_id: "KeyId",
    #         type: "CUSTOMER_KMS" # One of: ["CUSTOMER_KMS", "AWS_OWNED_KMS_KEY"], # required
    #       },
    #       last_modified_time: Time.now
    #     }
    #   }
    # @return [Types::DeleteFirewallPolicyResponse]
    def delete_firewall_policy(params = {}, options = {})
      request = build_request(:delete_firewall_policy, params)
      request.send_request(options)
    end

    # <p>Deletes a transit gateway attachment from a Network Firewall. Either the firewall owner or the transit gateway owner can delete the attachment.</p>
    #          <important>
    #             <p>After you delete a transit gateway attachment, traffic will no longer flow through the firewall endpoints.</p>
    #          </important>
    #          <p>After you initiate the delete operation, use <a>DescribeFirewall</a> to monitor the deletion status.</p>
    # @param [Hash, Types::DeleteNetworkFirewallTransitGatewayAttachmentRequest] params
    # @option params [String] :transit_gateway_attachment_id
    #   <p>Required. The unique identifier of the transit gateway attachment to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     transit_gateway_attachment_id: "TransitGatewayAttachmentId", # required
    #   }
    #   options = {}
    #   response = client.delete_network_firewall_transit_gateway_attachment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     transit_gateway_attachment_id: "TransitGatewayAttachmentId", # required
    #     transit_gateway_attachment_status: "CREATING" # One of: ["CREATING", "DELETING", "DELETED", "FAILED", "ERROR", "READY", "PENDING_ACCEPTANCE", "REJECTING", "REJECTED"], # required
    #   }
    # @return [Types::DeleteNetworkFirewallTransitGatewayAttachmentResponse]
    def delete_network_firewall_transit_gateway_attachment(params = {}, options = {})
      request = build_request(:delete_network_firewall_transit_gateway_attachment, params)
      request.send_request(options)
    end

    # <p>Deletes a resource policy that you created in a <a>PutResourcePolicy</a> request. </p>
    # @param [Hash, Types::DeleteResourcePolicyRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the rule group or firewall policy whose resource policy you want to delete. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
    #   }
    #   options = {}
    #   response = client.delete_resource_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteResourcePolicyResponse]
    def delete_resource_policy(params = {}, options = {})
      request = build_request(:delete_resource_policy, params)
      request.send_request(options)
    end

    # <p>Deletes the specified <a>RuleGroup</a>. </p>
    # @param [Hash, Types::DeleteRuleGroupRequest] params
    # @option params [String] :rule_group_name
    #   <p>The descriptive name of the rule group. You can't change the name of a rule group after you create it.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    # @option params [String] :rule_group_arn
    #   <p>The Amazon Resource Name (ARN) of the rule group.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    # @option params [String] :type
    #   <p>Indicates whether the rule group is stateless or stateful. If the rule group is stateless, it contains
    #   stateless rules. If it is stateful, it contains stateful rules. </p>
    #            <note>
    #               <p>This setting is required for requests that do not include the <code>RuleGroupARN</code>.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     rule_group_name: "ResourceName",
    #     rule_group_arn: "ResourceArn",
    #     type: "STATELESS" # One of: ["STATELESS", "STATEFUL"]
    #   }
    #   options = {}
    #   response = client.delete_rule_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rule_group_response: { # required
    #       rule_group_arn: "ResourceArn", # required
    #       rule_group_name: "ResourceName", # required
    #       rule_group_id: "ResourceId", # required
    #       description: "Description",
    #       type: "STATELESS" # One of: ["STATELESS", "STATEFUL"],
    #       capacity: 1,
    #       rule_group_status: "ACTIVE" # One of: ["ACTIVE", "DELETING", "ERROR"],
    #       tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue", # required
    #         }
    #       ],
    #       consumed_capacity: 1,
    #       number_of_associations: 1,
    #       encryption_configuration: {
    #         key_id: "KeyId",
    #         type: "CUSTOMER_KMS" # One of: ["CUSTOMER_KMS", "AWS_OWNED_KMS_KEY"], # required
    #       },
    #       source_metadata: {
    #         source_arn: "ResourceArn",
    #         source_update_token: "UpdateToken"
    #       },
    #       sns_topic: "ResourceArn",
    #       last_modified_time: Time.now,
    #       analysis_results: [
    #         {
    #           identified_rule_ids: ["CollectionMember_String"],
    #           identified_type: "STATELESS_RULE_FORWARDING_ASYMMETRICALLY" # One of: ["STATELESS_RULE_FORWARDING_ASYMMETRICALLY", "STATELESS_RULE_CONTAINS_TCP_FLAGS"],
    #           analysis_detail: "CollectionMember_String"
    #         }
    #       ],
    #       summary_configuration: {
    #         rule_options: ["SID" # One of: ["SID", "MSG", "METADATA"]]
    #       }
    #     }
    #   }
    # @return [Types::DeleteRuleGroupResponse]
    def delete_rule_group(params = {}, options = {})
      request = build_request(:delete_rule_group, params)
      request.send_request(options)
    end

    # <p>Deletes the specified <a>TLSInspectionConfiguration</a>.</p>
    # @param [Hash, Types::DeleteTLSInspectionConfigurationRequest] params
    # @option params [String] :tls_inspection_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the TLS inspection configuration.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    # @option params [String] :tls_inspection_configuration_name
    #   <p>The descriptive name of the TLS inspection configuration. You can't change the name of a TLS inspection configuration after you create it.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     tls_inspection_configuration_arn: "ResourceArn",
    #     tls_inspection_configuration_name: "ResourceName"
    #   }
    #   options = {}
    #   response = client.delete_tls_inspection_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tls_inspection_configuration_response: { # required
    #       tls_inspection_configuration_arn: "ResourceArn", # required
    #       tls_inspection_configuration_name: "ResourceName", # required
    #       tls_inspection_configuration_id: "ResourceId", # required
    #       tls_inspection_configuration_status: "ACTIVE" # One of: ["ACTIVE", "DELETING", "ERROR"],
    #       description: "Description",
    #       tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue", # required
    #         }
    #       ],
    #       last_modified_time: Time.now,
    #       number_of_associations: 1,
    #       encryption_configuration: {
    #         key_id: "KeyId",
    #         type: "CUSTOMER_KMS" # One of: ["CUSTOMER_KMS", "AWS_OWNED_KMS_KEY"], # required
    #       },
    #       certificates: [
    #         {
    #           certificate_arn: "ResourceArn",
    #           certificate_serial: "CollectionMember_String",
    #           status: "CollectionMember_String",
    #           status_message: "StatusReason"
    #         }
    #       ],
    #       certificate_authority: {
    #         certificate_arn: "ResourceArn",
    #         certificate_serial: "CollectionMember_String",
    #         status: "CollectionMember_String",
    #         status_message: "StatusReason"
    #       }
    #     }
    #   }
    # @return [Types::DeleteTLSInspectionConfigurationResponse]
    def delete_tls_inspection_configuration(params = {}, options = {})
      request = build_request(:delete_tls_inspection_configuration, params)
      request.send_request(options)
    end

    # <p>Deletes the specified <a>VpcEndpointAssociation</a>.</p>
    #          <p>You can check whether an endpoint association is
    #          in use by reviewing the route tables for the Availability Zones where you have the endpoint subnet mapping. 
    #          You can retrieve the subnet mapping by calling <a>DescribeVpcEndpointAssociation</a>.
    #          You define and update the route tables through Amazon VPC. As needed, update the route tables for the
    #          Availability Zone to remove the firewall endpoint for the association. When the route tables no longer use the firewall endpoint,
    #          you can remove the endpoint association safely.</p>
    # @param [Hash, Types::DeleteVpcEndpointAssociationRequest] params
    # @option params [String] :vpc_endpoint_association_arn
    #   <p>The Amazon Resource Name (ARN) of a VPC endpoint association.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     vpc_endpoint_association_arn: "ResourceArn", # required
    #   }
    #   options = {}
    #   response = client.delete_vpc_endpoint_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     vpc_endpoint_association: {
    #       vpc_endpoint_association_id: "ResourceId",
    #       vpc_endpoint_association_arn: "ResourceArn", # required
    #       firewall_arn: "ResourceArn", # required
    #       vpc_id: "VpcId", # required
    #       subnet_mapping: { # required
    #         subnet_id: "CollectionMember_String", # required
    #         ip_address_type: "DUALSTACK" # One of: ["DUALSTACK", "IPV4", "IPV6"]
    #       },
    #       description: "Description",
    #       tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue", # required
    #         }
    #       ]
    #     },
    #     vpc_endpoint_association_status: {
    #       status: "PROVISIONING" # One of: ["PROVISIONING", "DELETING", "READY"], # required
    #       association_sync_state: {
    #         "AvailabilityZone" => {
    #           attachment: {
    #             subnet_id: "AzSubnet",
    #             endpoint_id: "EndpointId",
    #             status: "CREATING" # One of: ["CREATING", "DELETING", "FAILED", "ERROR", "SCALING", "READY"],
    #             status_message: "StatusMessage"
    #           }
    #         }
    #       }
    #     }
    #   }
    # @return [Types::DeleteVpcEndpointAssociationResponse]
    def delete_vpc_endpoint_association(params = {}, options = {})
      request = build_request(:delete_vpc_endpoint_association, params)
      request.send_request(options)
    end

    # <p>Returns the data objects for the specified firewall. </p>
    # @param [Hash, Types::DescribeFirewallRequest] params
    # @option params [String] :firewall_name
    #   <p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    # @option params [String] :firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     firewall_name: "ResourceName",
    #     firewall_arn: "ResourceArn"
    #   }
    #   options = {}
    #   response = client.describe_firewall(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     update_token: "UpdateToken",
    #     firewall: {
    #       firewall_name: "ResourceName",
    #       firewall_arn: "ResourceArn",
    #       firewall_policy_arn: "ResourceArn", # required
    #       vpc_id: "VpcId", # required
    #       subnet_mappings: [ # required
    #         {
    #           subnet_id: "CollectionMember_String", # required
    #           ip_address_type: "DUALSTACK" # One of: ["DUALSTACK", "IPV4", "IPV6"]
    #         }
    #       ],
    #       delete_protection: false,
    #       subnet_change_protection: false,
    #       firewall_policy_change_protection: false,
    #       description: "Description",
    #       firewall_id: "ResourceId", # required
    #       tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue", # required
    #         }
    #       ],
    #       encryption_configuration: {
    #         key_id: "KeyId",
    #         type: "CUSTOMER_KMS" # One of: ["CUSTOMER_KMS", "AWS_OWNED_KMS_KEY"], # required
    #       },
    #       number_of_associations: 1,
    #       enabled_analysis_types: ["TLS_SNI" # One of: ["TLS_SNI", "HTTP_HOST"]],
    #       transit_gateway_id: "TransitGatewayId",
    #       transit_gateway_owner_account_id: "AWSAccountId",
    #       availability_zone_mappings: [
    #         {
    #           availability_zone: "AvailabilityZoneMappingString", # required
    #         }
    #       ],
    #       availability_zone_change_protection: false
    #     },
    #     firewall_status: {
    #       status: "PROVISIONING" # One of: ["PROVISIONING", "DELETING", "READY"], # required
    #       configuration_sync_state_summary: "PENDING" # One of: ["PENDING", "IN_SYNC", "CAPACITY_CONSTRAINED"], # required
    #       sync_states: {
    #         "AvailabilityZone" => {
    #           attachment: {
    #             subnet_id: "AzSubnet",
    #             endpoint_id: "EndpointId",
    #             status: "CREATING" # One of: ["CREATING", "DELETING", "FAILED", "ERROR", "SCALING", "READY"],
    #             status_message: "StatusMessage"
    #           },
    #           config: {
    #             "ResourceName" => {
    #               sync_status: "PENDING" # One of: ["PENDING", "IN_SYNC", "CAPACITY_CONSTRAINED"],
    #               update_token: "UpdateToken"
    #             }
    #           }
    #         }
    #       },
    #       capacity_usage_summary: {
    #         cid_rs: {
    #           available_cidr_count: 1,
    #           utilized_cidr_count: 1,
    #           ip_set_references: {
    #             "IPSetArn" => {
    #               resolved_cidr_count: 1
    #             }
    #           }
    #         }
    #       },
    #       transit_gateway_attachment_sync_state: {
    #         attachment_id: "AttachmentId",
    #         transit_gateway_attachment_status: "CREATING" # One of: ["CREATING", "DELETING", "DELETED", "FAILED", "ERROR", "READY", "PENDING_ACCEPTANCE", "REJECTING", "REJECTED"],
    #         status_message: "TransitGatewayAttachmentSyncStateMessage"
    #       }
    #     }
    #   }
    # @return [Types::DescribeFirewallResponse]
    def describe_firewall(params = {}, options = {})
      request = build_request(:describe_firewall, params)
      request.send_request(options)
    end

    # <p>Returns the high-level information about a firewall, including the Availability Zones where the Firewall is 
    #            currently in use. </p>
    # @param [Hash, Types::DescribeFirewallMetadataRequest] params
    # @option params [String] :firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     firewall_arn: "ResourceArn"
    #   }
    #   options = {}
    #   response = client.describe_firewall_metadata(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     firewall_arn: "ResourceArn",
    #     firewall_policy_arn: "ResourceArn",
    #     description: "Description",
    #     status: "PROVISIONING" # One of: ["PROVISIONING", "DELETING", "READY"],
    #     supported_availability_zones: {
    #       "AvailabilityZone" => {
    #         ip_address_type: "DUALSTACK" # One of: ["DUALSTACK", "IPV4", "IPV6"]
    #       }
    #     },
    #     transit_gateway_attachment_id: "TransitGatewayAttachmentId"
    #   }
    # @return [Types::DescribeFirewallMetadataResponse]
    def describe_firewall_metadata(params = {}, options = {})
      request = build_request(:describe_firewall_metadata, params)
      request.send_request(options)
    end

    # <p>Returns the data objects for the specified firewall policy. </p>
    # @param [Hash, Types::DescribeFirewallPolicyRequest] params
    # @option params [String] :firewall_policy_name
    #   <p>The descriptive name of the firewall policy. You can't change the name of a firewall policy after you create it.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    # @option params [String] :firewall_policy_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall policy.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     firewall_policy_name: "ResourceName",
    #     firewall_policy_arn: "ResourceArn"
    #   }
    #   options = {}
    #   response = client.describe_firewall_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     update_token: "UpdateToken", # required
    #     firewall_policy_response: { # required
    #       firewall_policy_name: "ResourceName", # required
    #       firewall_policy_arn: "ResourceArn", # required
    #       firewall_policy_id: "ResourceId", # required
    #       description: "Description",
    #       firewall_policy_status: "ACTIVE" # One of: ["ACTIVE", "DELETING", "ERROR"],
    #       tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue", # required
    #         }
    #       ],
    #       consumed_stateless_rule_capacity: 1,
    #       consumed_stateful_rule_capacity: 1,
    #       number_of_associations: 1,
    #       encryption_configuration: {
    #         key_id: "KeyId",
    #         type: "CUSTOMER_KMS" # One of: ["CUSTOMER_KMS", "AWS_OWNED_KMS_KEY"], # required
    #       },
    #       last_modified_time: Time.now
    #     },
    #     firewall_policy: {
    #       stateless_rule_group_references: [
    #         {
    #           resource_arn: "ResourceArn", # required
    #           priority: 1, # required
    #         }
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
    #                 }
    #               ]
    #             }
    #           }
    #         }
    #       ],
    #       stateful_rule_group_references: [
    #         {
    #           resource_arn: "ResourceArn", # required
    #           priority: 1,
    #           override: {
    #             action: "DROP_TO_ALERT" # One of: ["DROP_TO_ALERT"]
    #           },
    #           deep_threat_inspection: false
    #         }
    #       ],
    #       stateful_default_actions: ["CollectionMember_String"],
    #       stateful_engine_options: {
    #         rule_order: "DEFAULT_ACTION_ORDER" # One of: ["DEFAULT_ACTION_ORDER", "STRICT_ORDER"],
    #         stream_exception_policy: "DROP" # One of: ["DROP", "CONTINUE", "REJECT"],
    #         flow_timeouts: {
    #           tcp_idle_timeout_seconds: 1
    #         }
    #       },
    #       tls_inspection_configuration_arn: "ResourceArn",
    #       policy_variables: {
    #         rule_variables: {
    #           "RuleVariableName" => {
    #             definition: ["VariableDefinition"], # required
    #           }
    #         }
    #       },
    #       enable_tls_session_holding: false
    #     }
    #   }
    # @return [Types::DescribeFirewallPolicyResponse]
    def describe_firewall_policy(params = {}, options = {})
      request = build_request(:describe_firewall_policy, params)
      request.send_request(options)
    end

    # <p>Returns key information about a specific flow operation.</p>
    # @param [Hash, Types::DescribeFlowOperationRequest] params
    # @option params [String] :firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    # @option params [String] :availability_zone
    #   <p>The ID of the Availability Zone where the firewall is located. For example, <code>us-east-2a</code>.</p>
    #            <p>Defines the scope a flow operation. You can use up to 20 filters to configure a single flow operation.</p>
    # @option params [String] :vpc_endpoint_association_arn
    #   <p>The Amazon Resource Name (ARN) of a VPC endpoint association.</p>
    # @option params [String] :vpc_endpoint_id
    #   <p>A unique identifier for the primary endpoint associated with a firewall.</p>
    # @option params [String] :flow_operation_id
    #   <p>A unique identifier for the flow operation. This ID is returned in the responses to start and list commands. You provide to describe commands.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     firewall_arn: "ResourceArn", # required
    #     availability_zone: "AvailabilityZone",
    #     vpc_endpoint_association_arn: "ResourceArn",
    #     vpc_endpoint_id: "VpcEndpointId",
    #     flow_operation_id: "FlowOperationId", # required
    #   }
    #   options = {}
    #   response = client.describe_flow_operation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     firewall_arn: "ResourceArn",
    #     availability_zone: "AvailabilityZone",
    #     vpc_endpoint_association_arn: "ResourceArn",
    #     vpc_endpoint_id: "VpcEndpointId",
    #     flow_operation_id: "FlowOperationId",
    #     flow_operation_type: "FLOW_FLUSH" # One of: ["FLOW_FLUSH", "FLOW_CAPTURE"],
    #     flow_operation_status: "COMPLETED" # One of: ["COMPLETED", "IN_PROGRESS", "FAILED", "COMPLETED_WITH_ERRORS"],
    #     status_message: "StatusReason",
    #     flow_request_timestamp: Time.now,
    #     flow_operation: {
    #       minimum_flow_age_in_seconds: 1,
    #       flow_filters: [
    #         {
    #           source_address: {
    #             address_definition: "AddressDefinition", # required
    #           },
    #           destination_address: {
    #             address_definition: "AddressDefinition", # required
    #           },
    #           source_port: "Port",
    #           destination_port: "Port",
    #           protocols: ["ProtocolString"]
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::DescribeFlowOperationResponse]
    def describe_flow_operation(params = {}, options = {})
      request = build_request(:describe_flow_operation, params)
      request.send_request(options)
    end

    # <p>Returns the logging configuration for the specified firewall. </p>
    # @param [Hash, Types::DescribeLoggingConfigurationRequest] params
    # @option params [String] :firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    # @option params [String] :firewall_name
    #   <p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     firewall_arn: "ResourceArn",
    #     firewall_name: "ResourceName"
    #   }
    #   options = {}
    #   response = client.describe_logging_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     firewall_arn: "ResourceArn",
    #     logging_configuration: {
    #       log_destination_configs: [ # required
    #         {
    #           log_type: "ALERT" # One of: ["ALERT", "FLOW", "TLS"], # required
    #           log_destination_type: "S3" # One of: ["S3", "CloudWatchLogs", "KinesisDataFirehose"], # required
    #           log_destination: { # required
    #             "HashMapKey" => "HashMapValue"
    #           }
    #         }
    #       ]
    #     },
    #     enable_monitoring_dashboard: false
    #   }
    # @return [Types::DescribeLoggingConfigurationResponse]
    def describe_logging_configuration(params = {}, options = {})
      request = build_request(:describe_logging_configuration, params)
      request.send_request(options)
    end

    # <p>Retrieves a resource policy that you created in a <a>PutResourcePolicy</a> request. </p>
    # @param [Hash, Types::DescribeResourcePolicyRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the rule group or firewall policy whose resource policy you want to retrieve. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
    #   }
    #   options = {}
    #   response = client.describe_resource_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy: "PolicyString"
    #   }
    # @return [Types::DescribeResourcePolicyResponse]
    def describe_resource_policy(params = {}, options = {})
      request = build_request(:describe_resource_policy, params)
      request.send_request(options)
    end

    # <p>Returns the data objects for the specified rule group. </p>
    # @param [Hash, Types::DescribeRuleGroupRequest] params
    # @option params [String] :rule_group_name
    #   <p>The descriptive name of the rule group. You can't change the name of a rule group after you create it.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    # @option params [String] :rule_group_arn
    #   <p>The Amazon Resource Name (ARN) of the rule group.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    # @option params [String] :type
    #   <p>Indicates whether the rule group is stateless or stateful. If the rule group is stateless, it contains
    #   stateless rules. If it is stateful, it contains stateful rules. </p>
    #            <note>
    #               <p>This setting is required for requests that do not include the <code>RuleGroupARN</code>.</p>
    #            </note>
    # @option params [Boolean] :analyze_rule_group
    #   <p>Indicates whether you want Network Firewall to analyze the stateless rules in the rule group for rule behavior such as asymmetric routing. If set to <code>TRUE</code>, Network Firewall runs the analysis.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rule_group_name: "ResourceName",
    #     rule_group_arn: "ResourceArn",
    #     type: "STATELESS" # One of: ["STATELESS", "STATEFUL"],
    #     analyze_rule_group: false
    #   }
    #   options = {}
    #   response = client.describe_rule_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     update_token: "UpdateToken", # required
    #     rule_group: {
    #       rule_variables: {
    #         ip_sets: {
    #           "RuleVariableName" => {
    #             definition: ["VariableDefinition"], # required
    #           }
    #         },
    #         port_sets: {
    #           "RuleVariableName" => {
    #             definition: ["VariableDefinition"]
    #           }
    #         }
    #       },
    #       reference_sets: {
    #         ip_set_references: {
    #           "IPSetReferenceName" => {
    #             reference_arn: "ResourceArn"
    #           }
    #         }
    #       },
    #       rules_source: { # required
    #         rules_string: "RulesString",
    #         rules_source_list: {
    #           targets: ["CollectionMember_String"], # required
    #           target_types: ["TLS_SNI" # One of: ["TLS_SNI", "HTTP_HOST"]], # required
    #           generated_rules_type: "ALLOWLIST" # One of: ["ALLOWLIST", "DENYLIST", "REJECTLIST", "ALERTLIST"], # required
    #         },
    #         stateful_rules: [
    #           {
    #             action: "PASS" # One of: ["PASS", "DROP", "ALERT", "REJECT"], # required
    #             header: { # required
    #               protocol: "IP" # One of: ["IP", "TCP", "UDP", "ICMP", "HTTP", "FTP", "TLS", "SMB", "DNS", "DCERPC", "SSH", "SMTP", "IMAP", "MSN", "KRB5", "IKEV2", "TFTP", "NTP", "DHCP", "HTTP2", "QUIC"], # required
    #               source: "Source", # required
    #               source_port: "Port", # required
    #               direction: "FORWARD" # One of: ["FORWARD", "ANY"], # required
    #               destination: "Destination", # required
    #               destination_port: "Port", # required
    #             },
    #             rule_options: [ # required
    #               {
    #                 keyword: "Keyword", # required
    #                 settings: ["Setting"]
    #               }
    #             ]
    #           }
    #         ],
    #         stateless_rules_and_custom_actions: {
    #           stateless_rules: [ # required
    #             {
    #               rule_definition: { # required
    #                 match_attributes: { # required
    #                   sources: [
    #                     {
    #                       address_definition: "AddressDefinition", # required
    #                     }
    #                   ],
    #                   destinations: [
    #                     {
    #                       address_definition: "AddressDefinition", # required
    #                     }
    #                   ],
    #                   source_ports: [
    #                     {
    #                       from_port: 1, # required
    #                       to_port: 1, # required
    #                     }
    #                   ],
    #                   destination_ports: [
    #                     {
    #                       from_port: 1, # required
    #                       to_port: 1, # required
    #                     }
    #                   ],
    #                   protocols: [1],
    #                   tcp_flags: [
    #                     {
    #                       flags: ["FIN" # One of: ["FIN", "SYN", "RST", "PSH", "ACK", "URG", "ECE", "CWR"]], # required
    #                       masks: ["FIN" # One of: ["FIN", "SYN", "RST", "PSH", "ACK", "URG", "ECE", "CWR"]]
    #                     }
    #                   ]
    #                 },
    #                 actions: ["CollectionMember_String"], # required
    #               },
    #               priority: 1, # required
    #             }
    #           ],
    #           custom_actions: [
    #             {
    #               action_name: "ActionName", # required
    #               action_definition: { # required
    #                 publish_metric_action: {
    #                   dimensions: [ # required
    #                     {
    #                       value: "DimensionValue", # required
    #                     }
    #                   ]
    #                 }
    #               }
    #             }
    #           ]
    #         }
    #       },
    #       stateful_rule_options: {
    #         rule_order: "DEFAULT_ACTION_ORDER" # One of: ["DEFAULT_ACTION_ORDER", "STRICT_ORDER"]
    #       }
    #     },
    #     rule_group_response: { # required
    #       rule_group_arn: "ResourceArn", # required
    #       rule_group_name: "ResourceName", # required
    #       rule_group_id: "ResourceId", # required
    #       description: "Description",
    #       type: "STATELESS" # One of: ["STATELESS", "STATEFUL"],
    #       capacity: 1,
    #       rule_group_status: "ACTIVE" # One of: ["ACTIVE", "DELETING", "ERROR"],
    #       tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue", # required
    #         }
    #       ],
    #       consumed_capacity: 1,
    #       number_of_associations: 1,
    #       encryption_configuration: {
    #         key_id: "KeyId",
    #         type: "CUSTOMER_KMS" # One of: ["CUSTOMER_KMS", "AWS_OWNED_KMS_KEY"], # required
    #       },
    #       source_metadata: {
    #         source_arn: "ResourceArn",
    #         source_update_token: "UpdateToken"
    #       },
    #       sns_topic: "ResourceArn",
    #       last_modified_time: Time.now,
    #       analysis_results: [
    #         {
    #           identified_rule_ids: ["CollectionMember_String"],
    #           identified_type: "STATELESS_RULE_FORWARDING_ASYMMETRICALLY" # One of: ["STATELESS_RULE_FORWARDING_ASYMMETRICALLY", "STATELESS_RULE_CONTAINS_TCP_FLAGS"],
    #           analysis_detail: "CollectionMember_String"
    #         }
    #       ],
    #       summary_configuration: {
    #         rule_options: ["SID" # One of: ["SID", "MSG", "METADATA"]]
    #       }
    #     }
    #   }
    # @return [Types::DescribeRuleGroupResponse]
    def describe_rule_group(params = {}, options = {})
      request = build_request(:describe_rule_group, params)
      request.send_request(options)
    end

    # <p>High-level information about a rule group, returned by operations like create and describe.
    #          You can use the information provided in the metadata to retrieve and manage a rule group.
    #          You can retrieve all objects for a rule group by calling <a>DescribeRuleGroup</a>.
    #       </p>
    # @param [Hash, Types::DescribeRuleGroupMetadataRequest] params
    # @option params [String] :rule_group_name
    #   <p>The descriptive name of the rule group. You can't change the name of a rule group after you create it.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    # @option params [String] :rule_group_arn
    #   <p>The descriptive name of the rule group. You can't change the name of a rule group after you create it.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    # @option params [String] :type
    #   <p>Indicates whether the rule group is stateless or stateful. If the rule group is stateless, it contains
    #   stateless rules. If it is stateful, it contains stateful rules. </p>
    #            <note>
    #               <p>This setting is required for requests that do not include the <code>RuleGroupARN</code>.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     rule_group_name: "ResourceName",
    #     rule_group_arn: "ResourceArn",
    #     type: "STATELESS" # One of: ["STATELESS", "STATEFUL"]
    #   }
    #   options = {}
    #   response = client.describe_rule_group_metadata(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rule_group_arn: "ResourceArn", # required
    #     rule_group_name: "ResourceName", # required
    #     description: "Description",
    #     type: "STATELESS" # One of: ["STATELESS", "STATEFUL"],
    #     capacity: 1,
    #     stateful_rule_options: {
    #       rule_order: "DEFAULT_ACTION_ORDER" # One of: ["DEFAULT_ACTION_ORDER", "STRICT_ORDER"]
    #     },
    #     last_modified_time: Time.now
    #   }
    # @return [Types::DescribeRuleGroupMetadataResponse]
    def describe_rule_group_metadata(params = {}, options = {})
      request = build_request(:describe_rule_group_metadata, params)
      request.send_request(options)
    end

    # <p>Returns detailed information for a stateful rule group.</p>
    #          <p>For active threat defense Amazon Web Services managed rule groups, this operation provides insight into the protections enabled by the rule group, based on Suricata rule metadata fields. Summaries are available for rule groups you manage and for active threat defense Amazon Web Services managed rule groups.</p>
    #          <p>To modify how threat information appears in summaries, use the <code>SummaryConfiguration</code> parameter in <a>UpdateRuleGroup</a>.</p>
    # @param [Hash, Types::DescribeRuleGroupSummaryRequest] params
    # @option params [String] :rule_group_name
    #   <p>The descriptive name of the rule group. You can't change the name of a rule group after you create it.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    # @option params [String] :rule_group_arn
    #   <p>Required. The Amazon Resource Name (ARN) of the rule group.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    # @option params [String] :type
    #   <p>The type of rule group you want a summary for. This is a required field.</p>
    #            <p>Valid value: <code>STATEFUL</code>
    #            </p>
    #            <p>Note that <code>STATELESS</code> exists but is not currently supported. If you provide <code>STATELESS</code>, an exception is returned.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rule_group_name: "ResourceName",
    #     rule_group_arn: "ResourceArn",
    #     type: "STATELESS" # One of: ["STATELESS", "STATEFUL"]
    #   }
    #   options = {}
    #   response = client.describe_rule_group_summary(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rule_group_name: "ResourceName", # required
    #     description: "Description",
    #     summary: {
    #       rule_summaries: [
    #         {
    #           sid: "CollectionMember_String",
    #           msg: "CollectionMember_String",
    #           metadata: "CollectionMember_String"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::DescribeRuleGroupSummaryResponse]
    def describe_rule_group_summary(params = {}, options = {})
      request = build_request(:describe_rule_group_summary, params)
      request.send_request(options)
    end

    # <p>Returns the data objects for the specified TLS inspection configuration.</p>
    # @param [Hash, Types::DescribeTLSInspectionConfigurationRequest] params
    # @option params [String] :tls_inspection_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the TLS inspection configuration.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    # @option params [String] :tls_inspection_configuration_name
    #   <p>The descriptive name of the TLS inspection configuration. You can't change the name of a TLS inspection configuration after you create it.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     tls_inspection_configuration_arn: "ResourceArn",
    #     tls_inspection_configuration_name: "ResourceName"
    #   }
    #   options = {}
    #   response = client.describe_tls_inspection_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     update_token: "UpdateToken", # required
    #     tls_inspection_configuration: {
    #       server_certificate_configurations: [
    #         {
    #           server_certificates: [
    #             {
    #               resource_arn: "ResourceArn"
    #             }
    #           ],
    #           scopes: [
    #             {
    #               sources: [
    #                 {
    #                   address_definition: "AddressDefinition", # required
    #                 }
    #               ],
    #               destinations: [
    #                 {
    #                   address_definition: "AddressDefinition", # required
    #                 }
    #               ],
    #               source_ports: [
    #                 {
    #                   from_port: 1, # required
    #                   to_port: 1, # required
    #                 }
    #               ],
    #               destination_ports: [
    #                 {
    #                   from_port: 1, # required
    #                   to_port: 1, # required
    #                 }
    #               ],
    #               protocols: [1]
    #             }
    #           ],
    #           certificate_authority_arn: "ResourceArn",
    #           check_certificate_revocation_status: {
    #             revoked_status_action: "PASS" # One of: ["PASS", "DROP", "REJECT"],
    #             unknown_status_action: "PASS" # One of: ["PASS", "DROP", "REJECT"]
    #           }
    #         }
    #       ]
    #     },
    #     tls_inspection_configuration_response: { # required
    #       tls_inspection_configuration_arn: "ResourceArn", # required
    #       tls_inspection_configuration_name: "ResourceName", # required
    #       tls_inspection_configuration_id: "ResourceId", # required
    #       tls_inspection_configuration_status: "ACTIVE" # One of: ["ACTIVE", "DELETING", "ERROR"],
    #       description: "Description",
    #       tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue", # required
    #         }
    #       ],
    #       last_modified_time: Time.now,
    #       number_of_associations: 1,
    #       encryption_configuration: {
    #         key_id: "KeyId",
    #         type: "CUSTOMER_KMS" # One of: ["CUSTOMER_KMS", "AWS_OWNED_KMS_KEY"], # required
    #       },
    #       certificates: [
    #         {
    #           certificate_arn: "ResourceArn",
    #           certificate_serial: "CollectionMember_String",
    #           status: "CollectionMember_String",
    #           status_message: "StatusReason"
    #         }
    #       ],
    #       certificate_authority: {
    #         certificate_arn: "ResourceArn",
    #         certificate_serial: "CollectionMember_String",
    #         status: "CollectionMember_String",
    #         status_message: "StatusReason"
    #       }
    #     }
    #   }
    # @return [Types::DescribeTLSInspectionConfigurationResponse]
    def describe_tls_inspection_configuration(params = {}, options = {})
      request = build_request(:describe_tls_inspection_configuration, params)
      request.send_request(options)
    end

    # <p>Returns the data object for the specified VPC endpoint association. </p>
    # @param [Hash, Types::DescribeVpcEndpointAssociationRequest] params
    # @option params [String] :vpc_endpoint_association_arn
    #   <p>The Amazon Resource Name (ARN) of a VPC endpoint association.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     vpc_endpoint_association_arn: "ResourceArn", # required
    #   }
    #   options = {}
    #   response = client.describe_vpc_endpoint_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     vpc_endpoint_association: {
    #       vpc_endpoint_association_id: "ResourceId",
    #       vpc_endpoint_association_arn: "ResourceArn", # required
    #       firewall_arn: "ResourceArn", # required
    #       vpc_id: "VpcId", # required
    #       subnet_mapping: { # required
    #         subnet_id: "CollectionMember_String", # required
    #         ip_address_type: "DUALSTACK" # One of: ["DUALSTACK", "IPV4", "IPV6"]
    #       },
    #       description: "Description",
    #       tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue", # required
    #         }
    #       ]
    #     },
    #     vpc_endpoint_association_status: {
    #       status: "PROVISIONING" # One of: ["PROVISIONING", "DELETING", "READY"], # required
    #       association_sync_state: {
    #         "AvailabilityZone" => {
    #           attachment: {
    #             subnet_id: "AzSubnet",
    #             endpoint_id: "EndpointId",
    #             status: "CREATING" # One of: ["CREATING", "DELETING", "FAILED", "ERROR", "SCALING", "READY"],
    #             status_message: "StatusMessage"
    #           }
    #         }
    #       }
    #     }
    #   }
    # @return [Types::DescribeVpcEndpointAssociationResponse]
    def describe_vpc_endpoint_association(params = {}, options = {})
      request = build_request(:describe_vpc_endpoint_association, params)
      request.send_request(options)
    end

    # <p>Removes the specified Availability Zone associations from a transit gateway-attached firewall. This removes the firewall endpoints from these Availability Zones and stops traffic filtering in those zones. Before removing an Availability Zone, ensure you've updated your transit gateway route tables to redirect traffic appropriately.</p>
    #          <note>
    #             <p>If <code>AvailabilityZoneChangeProtection</code> is enabled, you must first disable it using <a>UpdateAvailabilityZoneChangeProtection</a>.</p>
    #          </note>
    #          <p>To verify the status of your Availability Zone changes, use <a>DescribeFirewall</a>.</p>
    # @param [Hash, Types::DisassociateAvailabilityZonesRequest] params
    # @option params [String] :update_token
    #   <p>An optional token that you can use for optimistic locking. Network Firewall returns a token to your requests that access the firewall. The token marks the state of the firewall resource at the time of the request. </p>
    #            <p>To make an unconditional change to the firewall, omit the token in your update request. Without the token, Network Firewall performs your updates regardless of whether the firewall has changed since you last retrieved it.</p>
    #            <p>To make a conditional change to the firewall, provide the token in your update request. Network Firewall uses the token to ensure that the firewall hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the firewall again to get a current copy of it with a new token. Reapply your changes as needed, then try the operation again using the new token. </p>
    # @option params [String] :firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    # @option params [String] :firewall_name
    #   <p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    # @option params [Array<Types::AvailabilityZoneMapping>] :availability_zone_mappings
    #   <p>Required. The Availability Zones to remove from the firewall's configuration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     update_token: "UpdateToken",
    #     firewall_arn: "ResourceArn",
    #     firewall_name: "ResourceName",
    #     availability_zone_mappings: [ # required
    #       {
    #         availability_zone: "AvailabilityZoneMappingString", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.disassociate_availability_zones(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     firewall_arn: "ResourceArn",
    #     firewall_name: "ResourceName",
    #     availability_zone_mappings: [
    #       {
    #         availability_zone: "AvailabilityZoneMappingString", # required
    #       }
    #     ],
    #     update_token: "UpdateToken"
    #   }
    # @return [Types::DisassociateAvailabilityZonesResponse]
    def disassociate_availability_zones(params = {}, options = {})
      request = build_request(:disassociate_availability_zones, params)
      request.send_request(options)
    end

    # <p>Removes the specified subnet associations from the firewall. This removes the
    #           firewall endpoints from the subnets and removes any network filtering protections that the endpoints
    #           were providing.
    #       </p>
    # @param [Hash, Types::DisassociateSubnetsRequest] params
    # @option params [String] :update_token
    #   <p>An optional token that you can use for optimistic locking. Network Firewall returns a token to your requests that access the firewall. The token marks the state of the firewall resource at the time of the request. </p>
    #            <p>To make an unconditional change to the firewall, omit the token in your update request. Without the token, Network Firewall performs your updates regardless of whether the firewall has changed since you last retrieved it.</p>
    #            <p>To make a conditional change to the firewall, provide the token in your update request. Network Firewall uses the token to ensure that the firewall hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the firewall again to get a current copy of it with a new token. Reapply your changes as needed, then try the operation again using the new token. </p>
    # @option params [String] :firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    # @option params [String] :firewall_name
    #   <p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    # @option params [Array<String>] :subnet_ids
    #   <p>The unique identifiers for the subnets that you want to disassociate. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     update_token: "UpdateToken",
    #     firewall_arn: "ResourceArn",
    #     firewall_name: "ResourceName",
    #     subnet_ids: ["AzSubnet"], # required
    #   }
    #   options = {}
    #   response = client.disassociate_subnets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     firewall_arn: "ResourceArn",
    #     firewall_name: "ResourceName",
    #     subnet_mappings: [
    #       {
    #         subnet_id: "CollectionMember_String", # required
    #         ip_address_type: "DUALSTACK" # One of: ["DUALSTACK", "IPV4", "IPV6"]
    #       }
    #     ],
    #     update_token: "UpdateToken"
    #   }
    # @return [Types::DisassociateSubnetsResponse]
    def disassociate_subnets(params = {}, options = {})
      request = build_request(:disassociate_subnets, params)
      request.send_request(options)
    end

    # <p>The results of a <code>COMPLETED</code> analysis report generated with <a>StartAnalysisReport</a>.</p>
    #          <p>For more information, see <a>AnalysisTypeReportResult</a>. </p>
    # @param [Hash, Types::GetAnalysisReportResultsRequest] params
    # @option params [String] :firewall_name
    #   <p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    # @option params [String] :analysis_report_id
    #   <p>The unique ID of the query that ran when you requested an analysis report. </p>
    # @option params [String] :firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    # @option params [String] :next_token
    #   <p>When you request a list of objects with a <code>MaxResults</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the maximum you requested, Network Firewall returns a <code>NextToken</code>
    #            value in the response. To retrieve the next batch of objects, use the token returned from the prior request in your next request.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects that you want Network Firewall to return for this request. If more
    #             objects are available, in the response, Network Firewall provides a
    #            <code>NextToken</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     firewall_name: "ResourceName",
    #     analysis_report_id: "AnalysisReportId", # required
    #     firewall_arn: "ResourceArn",
    #     next_token: "AnalysisReportNextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.get_analysis_report_results(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "Status",
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     report_time: Time.now,
    #     analysis_type: "TLS_SNI" # One of: ["TLS_SNI", "HTTP_HOST"],
    #     next_token: "AnalysisReportNextToken",
    #     analysis_report_results: [
    #       {
    #         protocol: "CollectionMember_String",
    #         first_accessed: Time.now,
    #         last_accessed: Time.now,
    #         domain: "Domain",
    #         hits: {
    #           count: 1
    #         },
    #         unique_sources: {
    #           count: 1
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::GetAnalysisReportResultsResponse]
    def get_analysis_report_results(params = {}, options = {})
      request = build_request(:get_analysis_report_results, params)
      request.send_request(options)
    end

    # <p>Returns a list of all traffic analysis reports generated within the last 30 days.</p>
    # @param [Hash, Types::ListAnalysisReportsRequest] params
    # @option params [String] :firewall_name
    #   <p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    # @option params [String] :firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    # @option params [String] :next_token
    #   <p>When you request a list of objects with a <code>MaxResults</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the maximum you requested, Network Firewall returns a <code>NextToken</code>
    #            value in the response. To retrieve the next batch of objects, use the token returned from the prior request in your next request.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects that you want Network Firewall to return for this request. If more
    #             objects are available, in the response, Network Firewall provides a
    #            <code>NextToken</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     firewall_name: "ResourceName",
    #     firewall_arn: "ResourceArn",
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_analysis_reports(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     analysis_reports: [
    #       {
    #         analysis_report_id: "AnalysisReportId",
    #         analysis_type: "TLS_SNI" # One of: ["TLS_SNI", "HTTP_HOST"],
    #         report_time: Time.now,
    #         status: "Status"
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListAnalysisReportsResponse]
    def list_analysis_reports(params = {}, options = {})
      request = build_request(:list_analysis_reports, params)
      request.send_request(options)
    end

    # <p>Retrieves the metadata for the firewall policies that you have defined. Depending on
    #          your setting for max results and the number of firewall policies, a single call might not
    #          return the full list. </p>
    # @param [Hash, Types::ListFirewallPoliciesRequest] params
    # @option params [String] :next_token
    #   <p>When you request a list of objects with a <code>MaxResults</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the maximum you requested, Network Firewall returns a <code>NextToken</code>
    #            value in the response. To retrieve the next batch of objects, use the token returned from the prior request in your next request.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects that you want Network Firewall to return for this request. If more
    #             objects are available, in the response, Network Firewall provides a
    #            <code>NextToken</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_firewall_policies(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "PaginationToken",
    #     firewall_policies: [
    #       {
    #         name: "ResourceName",
    #         arn: "ResourceArn"
    #       }
    #     ]
    #   }
    # @return [Types::ListFirewallPoliciesResponse]
    def list_firewall_policies(params = {}, options = {})
      request = build_request(:list_firewall_policies, params)
      request.send_request(options)
    end

    # <p>Retrieves the metadata for the firewalls that you have defined. If you provide VPC
    #          identifiers in your request, this returns only the firewalls for those VPCs.</p>
    #          <p>Depending on your setting for max results and the number of firewalls, a single call
    #          might not return the full list. </p>
    # @param [Hash, Types::ListFirewallsRequest] params
    # @option params [String] :next_token
    #   <p>When you request a list of objects with a <code>MaxResults</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the maximum you requested, Network Firewall returns a <code>NextToken</code>
    #            value in the response. To retrieve the next batch of objects, use the token returned from the prior request in your next request.</p>
    # @option params [Array<String>] :vpc_ids
    #   <p>The unique identifiers of the VPCs that you want Network Firewall to retrieve the firewalls
    #            for. Leave this blank to retrieve all firewalls that you have defined.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects that you want Network Firewall to return for this request. If more
    #             objects are available, in the response, Network Firewall provides a
    #            <code>NextToken</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken",
    #     vpc_ids: ["VpcId"],
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_firewalls(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "PaginationToken",
    #     firewalls: [
    #       {
    #         firewall_name: "ResourceName",
    #         firewall_arn: "ResourceArn",
    #         transit_gateway_attachment_id: "TransitGatewayAttachmentId"
    #       }
    #     ]
    #   }
    # @return [Types::ListFirewallsResponse]
    def list_firewalls(params = {}, options = {})
      request = build_request(:list_firewalls, params)
      request.send_request(options)
    end

    # <p>Returns the results of a specific flow operation. </p>
    #          <p>Flow operations let you manage the flows tracked in the flow table, also known as the firewall table.</p>
    #          <p>A flow is network traffic that is monitored by a firewall, either by stateful or stateless rules. 
    # For traffic to be considered part of a flow, it must share Destination, DestinationPort, Direction, Protocol, Source, and SourcePort. </p>
    # @param [Hash, Types::ListFlowOperationResultsRequest] params
    # @option params [String] :firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    # @option params [String] :flow_operation_id
    #   <p>A unique identifier for the flow operation. This ID is returned in the responses to start and list commands. You provide to describe commands.</p>
    # @option params [String] :next_token
    #   <p>When you request a list of objects with a <code>MaxResults</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the maximum you requested, Network Firewall returns a <code>NextToken</code>
    #            value in the response. To retrieve the next batch of objects, use the token returned from the prior request in your next request.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects that you want Network Firewall to return for this request. If more
    #             objects are available, in the response, Network Firewall provides a
    #            <code>NextToken</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    # @option params [String] :availability_zone
    #   <p>The ID of the Availability Zone where the firewall is located. For example, <code>us-east-2a</code>.</p>
    #            <p>Defines the scope a flow operation. You can use up to 20 filters to configure a single flow operation.</p>
    # @option params [String] :vpc_endpoint_id
    #   <p>A unique identifier for the primary endpoint associated with a firewall.</p>
    # @option params [String] :vpc_endpoint_association_arn
    #   <p>The Amazon Resource Name (ARN) of a VPC endpoint association.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     firewall_arn: "ResourceArn", # required
    #     flow_operation_id: "FlowOperationId", # required
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #     availability_zone: "AvailabilityZone",
    #     vpc_endpoint_id: "VpcEndpointId",
    #     vpc_endpoint_association_arn: "ResourceArn"
    #   }
    #   options = {}
    #   response = client.list_flow_operation_results(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     firewall_arn: "ResourceArn",
    #     availability_zone: "AvailabilityZone",
    #     vpc_endpoint_association_arn: "ResourceArn",
    #     vpc_endpoint_id: "VpcEndpointId",
    #     flow_operation_id: "FlowOperationId",
    #     flow_operation_status: "COMPLETED" # One of: ["COMPLETED", "IN_PROGRESS", "FAILED", "COMPLETED_WITH_ERRORS"],
    #     status_message: "StatusReason",
    #     flow_request_timestamp: Time.now,
    #     flows: [
    #       {
    #         source_address: {
    #           address_definition: "AddressDefinition", # required
    #         },
    #         destination_address: {
    #           address_definition: "AddressDefinition", # required
    #         },
    #         source_port: "Port",
    #         destination_port: "Port",
    #         protocol: "ProtocolString",
    #         age: 1,
    #         packet_count: 1,
    #         byte_count: 1
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListFlowOperationResultsResponse]
    def list_flow_operation_results(params = {}, options = {})
      request = build_request(:list_flow_operation_results, params)
      request.send_request(options)
    end

    # <p>Returns a list of all flow operations ran in a specific firewall. 
    #          You can optionally narrow the request scope by specifying the operation type or Availability Zone associated with a firewall's flow operations.  </p>
    #          <p>Flow operations let you manage the flows tracked in the flow table, also known as the firewall table.</p>
    #          <p>A flow is network traffic that is monitored by a firewall, either by stateful or stateless rules. 
    # For traffic to be considered part of a flow, it must share Destination, DestinationPort, Direction, Protocol, Source, and SourcePort. </p>
    # @param [Hash, Types::ListFlowOperationsRequest] params
    # @option params [String] :firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    # @option params [String] :availability_zone
    #   <p>The ID of the Availability Zone where the firewall is located. For example, <code>us-east-2a</code>.</p>
    #            <p>Defines the scope a flow operation. You can use up to 20 filters to configure a single flow operation.</p>
    # @option params [String] :vpc_endpoint_association_arn
    #   <p>The Amazon Resource Name (ARN) of a VPC endpoint association.</p>
    # @option params [String] :vpc_endpoint_id
    #   <p>A unique identifier for the primary endpoint associated with a firewall.</p>
    # @option params [String] :flow_operation_type
    #   <p>An optional string that defines whether any or all operation types are returned.</p>
    # @option params [String] :next_token
    #   <p>When you request a list of objects with a <code>MaxResults</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the maximum you requested, Network Firewall returns a <code>NextToken</code>
    #            value in the response. To retrieve the next batch of objects, use the token returned from the prior request in your next request.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects that you want Network Firewall to return for this request. If more
    #             objects are available, in the response, Network Firewall provides a
    #            <code>NextToken</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     firewall_arn: "ResourceArn", # required
    #     availability_zone: "AvailabilityZone",
    #     vpc_endpoint_association_arn: "ResourceArn",
    #     vpc_endpoint_id: "VpcEndpointId",
    #     flow_operation_type: "FLOW_FLUSH" # One of: ["FLOW_FLUSH", "FLOW_CAPTURE"],
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_flow_operations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     flow_operations: [
    #       {
    #         flow_operation_id: "FlowOperationId",
    #         flow_operation_type: "FLOW_FLUSH" # One of: ["FLOW_FLUSH", "FLOW_CAPTURE"],
    #         flow_request_timestamp: Time.now,
    #         flow_operation_status: "COMPLETED" # One of: ["COMPLETED", "IN_PROGRESS", "FAILED", "COMPLETED_WITH_ERRORS"]
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListFlowOperationsResponse]
    def list_flow_operations(params = {}, options = {})
      request = build_request(:list_flow_operations, params)
      request.send_request(options)
    end

    # <p>Retrieves the metadata for the rule groups that you have defined. Depending on your
    #          setting for max results and the number of rule groups, a single call might not return the
    #          full list. </p>
    # @param [Hash, Types::ListRuleGroupsRequest] params
    # @option params [String] :next_token
    #   <p>When you request a list of objects with a <code>MaxResults</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the maximum you requested, Network Firewall returns a <code>NextToken</code>
    #            value in the response. To retrieve the next batch of objects, use the token returned from the prior request in your next request.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects that you want Network Firewall to return for this request. If more
    #             objects are available, in the response, Network Firewall provides a
    #            <code>NextToken</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    # @option params [String] :scope
    #   <p>The scope of the request. The default setting of <code>ACCOUNT</code> or a setting of
    #            <code>NULL</code> returns all of the rule groups in your account. A setting of
    #            <code>MANAGED</code> returns all available managed rule groups.</p>
    # @option params [String] :managed_type
    #   <p>Indicates the general category of the Amazon Web Services managed rule group.</p>
    # @option params [String] :type
    #   <p>Indicates whether the rule group is stateless or stateful. If the rule group is stateless, it contains stateless rules. If it is stateful, it contains stateful rules.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #     scope: "MANAGED" # One of: ["MANAGED", "ACCOUNT"],
    #     managed_type: "AWS_MANAGED_THREAT_SIGNATURES" # One of: ["AWS_MANAGED_THREAT_SIGNATURES", "AWS_MANAGED_DOMAIN_LISTS", "ACTIVE_THREAT_DEFENSE"],
    #     type: "STATELESS" # One of: ["STATELESS", "STATEFUL"]
    #   }
    #   options = {}
    #   response = client.list_rule_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "PaginationToken",
    #     rule_groups: [
    #       {
    #         name: "ResourceName",
    #         arn: "ResourceArn"
    #       }
    #     ]
    #   }
    # @return [Types::ListRuleGroupsResponse]
    def list_rule_groups(params = {}, options = {})
      request = build_request(:list_rule_groups, params)
      request.send_request(options)
    end

    # <p>Retrieves the metadata for the TLS inspection configurations that you have defined. Depending on your setting for max results and the number of TLS inspection configurations, a single call might not return the full list.</p>
    # @param [Hash, Types::ListTLSInspectionConfigurationsRequest] params
    # @option params [String] :next_token
    #   <p>When you request a list of objects with a <code>MaxResults</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the maximum you requested, Network Firewall returns a <code>NextToken</code>
    #            value in the response. To retrieve the next batch of objects, use the token returned from the prior request in your next request.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects that you want Network Firewall to return for this request. If more
    #             objects are available, in the response, Network Firewall provides a
    #            <code>NextToken</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_tls_inspection_configurations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "PaginationToken",
    #     tls_inspection_configurations: [
    #       {
    #         name: "ResourceName",
    #         arn: "ResourceArn"
    #       }
    #     ]
    #   }
    # @return [Types::ListTLSInspectionConfigurationsResponse]
    def list_tls_inspection_configurations(params = {}, options = {})
      request = build_request(:list_tls_inspection_configurations, params)
      request.send_request(options)
    end

    # <p>Retrieves the tags associated with the specified resource. Tags are key:value pairs that
    #          you can use to categorize and manage your resources, for purposes like billing. For
    #          example, you might set the tag key to "customer" and the value to the customer name or ID.
    #          You can specify one or more tags to add to each Amazon Web Services resource, up to 50 tags for a
    #          resource.</p>
    #          <p>You can tag the Amazon Web Services resources that you manage through Network Firewall: firewalls, firewall
    #          policies, and rule groups. </p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :next_token
    #   <p>When you request a list of objects with a <code>MaxResults</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the maximum you requested, Network Firewall returns a <code>NextToken</code>
    #            value in the response. To retrieve the next batch of objects, use the token returned from the prior request in your next request.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects that you want Network Firewall to return for this request. If more
    #             objects are available, in the response, Network Firewall provides a
    #            <code>NextToken</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #     resource_arn: "ResourceArn", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "PaginationToken",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Retrieves the metadata for the VPC endpoint associations that you have defined. If you specify a fireawll,
    #        this returns only the endpoint associations for that firewall. </p>
    #          <p>Depending on your setting for max results and the number of associations, a single call
    #          might not return the full list. </p>
    # @param [Hash, Types::ListVpcEndpointAssociationsRequest] params
    # @option params [String] :next_token
    #   <p>When you request a list of objects with a <code>MaxResults</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the maximum you requested, Network Firewall returns a <code>NextToken</code>
    #            value in the response. To retrieve the next batch of objects, use the token returned from the prior request in your next request.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects that you want Network Firewall to return for this request. If more
    #             objects are available, in the response, Network Firewall provides a
    #            <code>NextToken</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    # @option params [String] :firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #            <p>If you don't specify this, Network Firewall retrieves all VPC endpoint associations that you have defined.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #     firewall_arn: "ResourceArn"
    #   }
    #   options = {}
    #   response = client.list_vpc_endpoint_associations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "PaginationToken",
    #     vpc_endpoint_associations: [
    #       {
    #         vpc_endpoint_association_arn: "ResourceArn"
    #       }
    #     ]
    #   }
    # @return [Types::ListVpcEndpointAssociationsResponse]
    def list_vpc_endpoint_associations(params = {}, options = {})
      request = build_request(:list_vpc_endpoint_associations, params)
      request.send_request(options)
    end

    # <p>Creates or updates an IAM policy for your rule group, firewall policy, or firewall. Use this to share these resources between accounts. This operation works in conjunction with the Amazon Web Services Resource Access Manager (RAM) service to manage resource sharing for Network Firewall. </p>
    #          <p>For information about using sharing with Network Firewall resources, see 
    #     <a href="https://docs.aws.amazon.com/network-firewall/latest/developerguide/sharing.html">Sharing Network Firewall resources</a> in the <i>Network Firewall Developer Guide</i>.</p>
    #          <p>Use this operation to create or update a resource policy for your Network Firewall rule group, firewall policy, or firewall. In the resource policy, you specify the accounts that you want to share the Network Firewall resource with and the operations that you want the accounts to be able to perform. </p>
    #          <p>When you add an account in the resource policy, you then run the following Resource Access Manager (RAM) operations to access and accept the shared resource. </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/ram/latest/APIReference/API_GetResourceShareInvitations.html">GetResourceShareInvitations</a> - Returns the Amazon Resource Names (ARNs) of the resource share invitations.  </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/ram/latest/APIReference/API_AcceptResourceShareInvitation.html">AcceptResourceShareInvitation</a> - Accepts the share invitation for a specified resource share. </p>
    #             </li>
    #          </ul>
    #          <p>For additional information about resource sharing using RAM, see <a href="https://docs.aws.amazon.com/ram/latest/userguide/what-is.html">Resource Access Manager User Guide</a>.</p>
    # @param [Hash, Types::PutResourcePolicyRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the account that you want to share your Network Firewall resources with.</p>
    # @option params [String] :policy
    #   <p>The IAM policy statement that lists the accounts that you want to share your Network Firewall resources with
    #              and the operations that you want the accounts to be able to perform. </p>
    #            <p>For a rule group resource, you can specify the following operations in the Actions section of the statement:</p>
    #            <ul>
    #               <li>
    #                  <p>network-firewall:CreateFirewallPolicy</p>
    #               </li>
    #               <li>
    #                  <p>network-firewall:UpdateFirewallPolicy</p>
    #               </li>
    #               <li>
    #                  <p>network-firewall:ListRuleGroups</p>
    #               </li>
    #            </ul>
    #            <p>For a firewall policy resource, you can specify the following operations in the Actions section of the statement:</p>
    #            <ul>
    #               <li>
    #                  <p>network-firewall:AssociateFirewallPolicy</p>
    #               </li>
    #               <li>
    #                  <p>network-firewall:ListFirewallPolicies</p>
    #               </li>
    #            </ul>
    #            <p>For a firewall resource, you can specify the following operations in the Actions section of the statement:</p>
    #            <ul>
    #               <li>
    #                  <p>network-firewall:CreateVpcEndpointAssociation</p>
    #               </li>
    #               <li>
    #                  <p>network-firewall:DescribeFirewallMetadata</p>
    #               </li>
    #               <li>
    #                  <p>network-firewall:ListFirewalls</p>
    #               </li>
    #            </ul>
    #            <p>In the Resource section of the statement, you specify the ARNs for the Network Firewall resources that you want to share with the account that you specified in <code>Arn</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
    #     policy: "PolicyString", # required
    #   }
    #   options = {}
    #   response = client.put_resource_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutResourcePolicyResponse]
    def put_resource_policy(params = {}, options = {})
      request = build_request(:put_resource_policy, params)
      request.send_request(options)
    end

    # <p>Rejects a transit gateway attachment request for Network Firewall. When you reject the attachment request, Network Firewall cancels the creation of routing components between the transit gateway and firewall endpoints.</p>
    #          <p>Only the transit gateway owner can reject the attachment. After rejection, no traffic will flow through the firewall endpoints for this attachment.</p>
    #          <p>Use <a>DescribeFirewall</a> to monitor the rejection status. To accept the attachment instead of rejecting it, use <a>AcceptNetworkFirewallTransitGatewayAttachment</a>.</p>
    #          <note>
    #             <p>Once rejected, you cannot reverse this action. To establish connectivity, you must create a new transit gateway-attached firewall.</p>
    #          </note>
    # @param [Hash, Types::RejectNetworkFirewallTransitGatewayAttachmentRequest] params
    # @option params [String] :transit_gateway_attachment_id
    #   <p>Required. The unique identifier of the transit gateway attachment to reject. This ID is returned in the response when creating a transit gateway-attached firewall.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     transit_gateway_attachment_id: "TransitGatewayAttachmentId", # required
    #   }
    #   options = {}
    #   response = client.reject_network_firewall_transit_gateway_attachment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     transit_gateway_attachment_id: "TransitGatewayAttachmentId", # required
    #     transit_gateway_attachment_status: "CREATING" # One of: ["CREATING", "DELETING", "DELETED", "FAILED", "ERROR", "READY", "PENDING_ACCEPTANCE", "REJECTING", "REJECTED"], # required
    #   }
    # @return [Types::RejectNetworkFirewallTransitGatewayAttachmentResponse]
    def reject_network_firewall_transit_gateway_attachment(params = {}, options = {})
      request = build_request(:reject_network_firewall_transit_gateway_attachment, params)
      request.send_request(options)
    end

    # <p>Generates a traffic analysis report for the timeframe and traffic type you specify.</p>
    #          <p>For information on the contents of a traffic analysis report, see <a>AnalysisReport</a>.</p>
    # @param [Hash, Types::StartAnalysisReportRequest] params
    # @option params [String] :firewall_name
    #   <p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    # @option params [String] :firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    # @option params [String] :analysis_type
    #   <p>The type of traffic that will be used to generate a report. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     firewall_name: "ResourceName",
    #     firewall_arn: "ResourceArn",
    #     analysis_type: "TLS_SNI" # One of: ["TLS_SNI", "HTTP_HOST"], # required
    #   }
    #   options = {}
    #   response = client.start_analysis_report(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     analysis_report_id: "AnalysisReportId", # required
    #   }
    # @return [Types::StartAnalysisReportResponse]
    def start_analysis_report(params = {}, options = {})
      request = build_request(:start_analysis_report, params)
      request.send_request(options)
    end

    # <p>Begins capturing the flows in a firewall, according to the filters you define. 
    #          Captures are similar, but not identical to snapshots. Capture operations provide visibility into flows that are not closed and are tracked by a firewall's flow table. 
    #          Unlike snapshots, captures are a time-boxed view. </p>
    #          <p>A flow is network traffic that is monitored by a firewall, either by stateful or stateless rules. 
    # For traffic to be considered part of a flow, it must share Destination, DestinationPort, Direction, Protocol, Source, and SourcePort. </p>
    #          <note>
    #             <p>To avoid encountering operation limits, you should avoid starting captures with broad filters, like wide IP ranges. 
    #             Instead, we recommend you define more specific criteria with <code>FlowFilters</code>, like narrow IP ranges, ports, or protocols.</p>
    #          </note>
    # @param [Hash, Types::StartFlowCaptureRequest] params
    # @option params [String] :firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    # @option params [String] :availability_zone
    #   <p>The ID of the Availability Zone where the firewall is located. For example, <code>us-east-2a</code>.</p>
    #            <p>Defines the scope a flow operation. You can use up to 20 filters to configure a single flow operation.</p>
    # @option params [String] :vpc_endpoint_association_arn
    #   <p>The Amazon Resource Name (ARN) of a VPC endpoint association.</p>
    # @option params [String] :vpc_endpoint_id
    #   <p>A unique identifier for the primary endpoint associated with a firewall.</p>
    # @option params [Integer] :minimum_flow_age_in_seconds
    #   <p>The reqested <code>FlowOperation</code> ignores flows with an age (in seconds) lower than <code>MinimumFlowAgeInSeconds</code>. 
    #   You provide this for start commands.</p>
    #            <note>
    #               <p>We recommend setting this value to at least 1 minute (60 seconds) to reduce chance of capturing flows that are not yet established.</p>
    #            </note>
    # @option params [Array<Types::FlowFilter>] :flow_filters
    #   <p>Defines the scope a flow operation. You can use up to 20 filters to configure a single flow operation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     firewall_arn: "ResourceArn", # required
    #     availability_zone: "AvailabilityZone",
    #     vpc_endpoint_association_arn: "ResourceArn",
    #     vpc_endpoint_id: "VpcEndpointId",
    #     minimum_flow_age_in_seconds: 1,
    #     flow_filters: [ # required
    #       {
    #         source_address: {
    #           address_definition: "AddressDefinition", # required
    #         },
    #         destination_address: {
    #           address_definition: "AddressDefinition", # required
    #         },
    #         source_port: "Port",
    #         destination_port: "Port",
    #         protocols: ["ProtocolString"]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.start_flow_capture(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     firewall_arn: "ResourceArn",
    #     flow_operation_id: "FlowOperationId",
    #     flow_operation_status: "COMPLETED" # One of: ["COMPLETED", "IN_PROGRESS", "FAILED", "COMPLETED_WITH_ERRORS"]
    #   }
    # @return [Types::StartFlowCaptureResponse]
    def start_flow_capture(params = {}, options = {})
      request = build_request(:start_flow_capture, params)
      request.send_request(options)
    end

    # <p>Begins the flushing of traffic from the firewall, according to the filters you define. 
    #          When the operation starts, impacted flows are temporarily marked as timed out before the Suricata engine prunes, 
    #          or flushes, the flows from the firewall table.</p>
    #          <important>
    #             <p>While the flush completes, impacted flows are processed as midstream traffic. This may result in a 
    #             temporary increase in midstream traffic metrics. We recommend that you double check your stream exception policy 
    #             before you perform a flush operation.</p>
    #          </important>
    # @param [Hash, Types::StartFlowFlushRequest] params
    # @option params [String] :firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    # @option params [String] :availability_zone
    #   <p>The ID of the Availability Zone where the firewall is located. For example, <code>us-east-2a</code>.</p>
    #            <p>Defines the scope a flow operation. You can use up to 20 filters to configure a single flow operation.</p>
    # @option params [String] :vpc_endpoint_association_arn
    #   <p>The Amazon Resource Name (ARN) of a VPC endpoint association.</p>
    # @option params [String] :vpc_endpoint_id
    #   <p>A unique identifier for the primary endpoint associated with a firewall.</p>
    # @option params [Integer] :minimum_flow_age_in_seconds
    #   <p>The reqested <code>FlowOperation</code> ignores flows with an age (in seconds) lower than <code>MinimumFlowAgeInSeconds</code>. 
    #   You provide this for start commands.</p>
    # @option params [Array<Types::FlowFilter>] :flow_filters
    #   <p>Defines the scope a flow operation. You can use up to 20 filters to configure a single flow operation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     firewall_arn: "ResourceArn", # required
    #     availability_zone: "AvailabilityZone",
    #     vpc_endpoint_association_arn: "ResourceArn",
    #     vpc_endpoint_id: "VpcEndpointId",
    #     minimum_flow_age_in_seconds: 1,
    #     flow_filters: [ # required
    #       {
    #         source_address: {
    #           address_definition: "AddressDefinition", # required
    #         },
    #         destination_address: {
    #           address_definition: "AddressDefinition", # required
    #         },
    #         source_port: "Port",
    #         destination_port: "Port",
    #         protocols: ["ProtocolString"]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.start_flow_flush(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     firewall_arn: "ResourceArn",
    #     flow_operation_id: "FlowOperationId",
    #     flow_operation_status: "COMPLETED" # One of: ["COMPLETED", "IN_PROGRESS", "FAILED", "COMPLETED_WITH_ERRORS"]
    #   }
    # @return [Types::StartFlowFlushResponse]
    def start_flow_flush(params = {}, options = {})
      request = build_request(:start_flow_flush, params)
      request.send_request(options)
    end

    # <p>Adds the specified tags to the specified resource. Tags are key:value pairs that you can
    #          use to categorize and manage your resources, for purposes like billing. For example, you
    #          might set the tag key to "customer" and the value to the customer name or ID. You can
    #          specify one or more tags to add to each Amazon Web Services resource, up to 50 tags for a resource.</p>
    #          <p>You can tag the Amazon Web Services resources that you manage through Network Firewall: firewalls, firewall
    #          policies, and rule groups. </p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p></p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
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

    # <p>Removes the tags with the specified keys from the specified resource. Tags are key:value
    #          pairs that you can use to categorize and manage your resources, for purposes like billing.
    #          For example, you might set the tag key to "customer" and the value to the customer name or
    #          ID. You can specify one or more tags to add to each Amazon Web Services resource, up to 50 tags for a
    #          resource.</p>
    #          <p>You can manage tags for the Amazon Web Services resources that you manage through Network Firewall:
    #          firewalls, firewall policies, and rule groups. </p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    # @option params [Array<String>] :tag_keys
    #   <p></p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
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

    # <p>Modifies the <code>AvailabilityZoneChangeProtection</code> setting for a transit gateway-attached firewall. When enabled, this setting prevents accidental changes to the firewall's Availability Zone configuration. This helps protect against disrupting traffic flow in production environments.</p>
    #          <p>When enabled, you must disable this protection before using <a>AssociateAvailabilityZones</a> or <a>DisassociateAvailabilityZones</a> to modify the firewall's Availability Zone configuration.</p>
    # @param [Hash, Types::UpdateAvailabilityZoneChangeProtectionRequest] params
    # @option params [String] :update_token
    #   <p>An optional token that you can use for optimistic locking. Network Firewall returns a token to your requests that access the firewall. The token marks the state of the firewall resource at the time of the request. </p>
    #            <p>To make an unconditional change to the firewall, omit the token in your update request. Without the token, Network Firewall performs your updates regardless of whether the firewall has changed since you last retrieved it.</p>
    #            <p>To make a conditional change to the firewall, provide the token in your update request. Network Firewall uses the token to ensure that the firewall hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the firewall again to get a current copy of it with a new token. Reapply your changes as needed, then try the operation again using the new token. </p>
    # @option params [String] :firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    # @option params [String] :firewall_name
    #   <p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    # @option params [Boolean] :availability_zone_change_protection
    #   <p>A setting indicating whether the firewall is protected against changes to the subnet associations.
    #            Use this setting to protect against
    #            accidentally modifying the subnet associations for a firewall that is in use. When you create a firewall, the operation initializes this setting to <code>TRUE</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     update_token: "UpdateToken",
    #     firewall_arn: "ResourceArn",
    #     firewall_name: "ResourceName",
    #     availability_zone_change_protection: false, # required
    #   }
    #   options = {}
    #   response = client.update_availability_zone_change_protection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     update_token: "UpdateToken",
    #     firewall_arn: "ResourceArn",
    #     firewall_name: "ResourceName",
    #     availability_zone_change_protection: false
    #   }
    # @return [Types::UpdateAvailabilityZoneChangeProtectionResponse]
    def update_availability_zone_change_protection(params = {}, options = {})
      request = build_request(:update_availability_zone_change_protection, params)
      request.send_request(options)
    end

    # <p>Enables specific types of firewall analysis on a specific firewall you define.</p>
    # @param [Hash, Types::UpdateFirewallAnalysisSettingsRequest] params
    # @option params [Array<String>] :enabled_analysis_types
    #   <p>An optional setting indicating the specific traffic analysis types to enable on the firewall. </p>
    # @option params [String] :firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    # @option params [String] :firewall_name
    #   <p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    # @option params [String] :update_token
    #   <p>An optional token that you can use for optimistic locking. Network Firewall returns a token to your requests that access the firewall. The token marks the state of the firewall resource at the time of the request. </p>
    #            <p>To make an unconditional change to the firewall, omit the token in your update request. Without the token, Network Firewall performs your updates regardless of whether the firewall has changed since you last retrieved it.</p>
    #            <p>To make a conditional change to the firewall, provide the token in your update request. Network Firewall uses the token to ensure that the firewall hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the firewall again to get a current copy of it with a new token. Reapply your changes as needed, then try the operation again using the new token. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     enabled_analysis_types: ["TLS_SNI" # One of: ["TLS_SNI", "HTTP_HOST"]],
    #     firewall_arn: "ResourceArn",
    #     firewall_name: "ResourceName",
    #     update_token: "UpdateToken"
    #   }
    #   options = {}
    #   response = client.update_firewall_analysis_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     enabled_analysis_types: ["TLS_SNI" # One of: ["TLS_SNI", "HTTP_HOST"]],
    #     firewall_arn: "ResourceArn",
    #     firewall_name: "ResourceName",
    #     update_token: "UpdateToken"
    #   }
    # @return [Types::UpdateFirewallAnalysisSettingsResponse]
    def update_firewall_analysis_settings(params = {}, options = {})
      request = build_request(:update_firewall_analysis_settings, params)
      request.send_request(options)
    end

    # <p>Modifies the flag, <code>DeleteProtection</code>, which indicates whether it is possible
    #          to delete the firewall. If the flag is set to <code>TRUE</code>, the firewall is protected
    #          against deletion. This setting helps protect against accidentally deleting a firewall
    #          that's in use. </p>
    # @param [Hash, Types::UpdateFirewallDeleteProtectionRequest] params
    # @option params [String] :update_token
    #   <p>An optional token that you can use for optimistic locking. Network Firewall returns a token to your requests that access the firewall. The token marks the state of the firewall resource at the time of the request. </p>
    #            <p>To make an unconditional change to the firewall, omit the token in your update request. Without the token, Network Firewall performs your updates regardless of whether the firewall has changed since you last retrieved it.</p>
    #            <p>To make a conditional change to the firewall, provide the token in your update request. Network Firewall uses the token to ensure that the firewall hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the firewall again to get a current copy of it with a new token. Reapply your changes as needed, then try the operation again using the new token. </p>
    # @option params [String] :firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    # @option params [String] :firewall_name
    #   <p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    # @option params [Boolean] :delete_protection
    #   <p>A flag indicating whether it is possible to delete the firewall. A setting of <code>TRUE</code> indicates
    #            that the firewall is protected against deletion. Use this setting to protect against
    #            accidentally deleting a firewall that is in use. When you create a firewall, the operation initializes this flag to <code>TRUE</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     update_token: "UpdateToken",
    #     firewall_arn: "ResourceArn",
    #     firewall_name: "ResourceName",
    #     delete_protection: false, # required
    #   }
    #   options = {}
    #   response = client.update_firewall_delete_protection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     firewall_arn: "ResourceArn",
    #     firewall_name: "ResourceName",
    #     delete_protection: false,
    #     update_token: "UpdateToken"
    #   }
    # @return [Types::UpdateFirewallDeleteProtectionResponse]
    def update_firewall_delete_protection(params = {}, options = {})
      request = build_request(:update_firewall_delete_protection, params)
      request.send_request(options)
    end

    # <p>Modifies the description for the specified firewall. Use the description to help you
    #          identify the firewall when you're working with it. </p>
    # @param [Hash, Types::UpdateFirewallDescriptionRequest] params
    # @option params [String] :update_token
    #   <p>An optional token that you can use for optimistic locking. Network Firewall returns a token to your requests that access the firewall. The token marks the state of the firewall resource at the time of the request. </p>
    #            <p>To make an unconditional change to the firewall, omit the token in your update request. Without the token, Network Firewall performs your updates regardless of whether the firewall has changed since you last retrieved it.</p>
    #            <p>To make a conditional change to the firewall, provide the token in your update request. Network Firewall uses the token to ensure that the firewall hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the firewall again to get a current copy of it with a new token. Reapply your changes as needed, then try the operation again using the new token. </p>
    # @option params [String] :firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    # @option params [String] :firewall_name
    #   <p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    # @option params [String] :description
    #   <p>The new description for the firewall. If you omit this setting, Network Firewall removes
    #            the description for the firewall.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     update_token: "UpdateToken",
    #     firewall_arn: "ResourceArn",
    #     firewall_name: "ResourceName",
    #     description: "Description"
    #   }
    #   options = {}
    #   response = client.update_firewall_description(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     firewall_arn: "ResourceArn",
    #     firewall_name: "ResourceName",
    #     description: "Description",
    #     update_token: "UpdateToken"
    #   }
    # @return [Types::UpdateFirewallDescriptionResponse]
    def update_firewall_description(params = {}, options = {})
      request = build_request(:update_firewall_description, params)
      request.send_request(options)
    end

    # <p>A complex type that contains settings for encryption of your firewall resources.</p>
    # @param [Hash, Types::UpdateFirewallEncryptionConfigurationRequest] params
    # @option params [String] :update_token
    #   <p>An optional token that you can use for optimistic locking. Network Firewall returns a token to your requests that access the firewall. The token marks the state of the firewall resource at the time of the request. </p>
    #            <p>To make an unconditional change to the firewall, omit the token in your update request. Without the token, Network Firewall performs your updates regardless of whether the firewall has changed since you last retrieved it.</p>
    #            <p>To make a conditional change to the firewall, provide the token in your update request. Network Firewall uses the token to ensure that the firewall hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the firewall again to get a current copy of it with a new token. Reapply your changes as needed, then try the operation again using the new token. </p>
    # @option params [String] :firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    # @option params [String] :firewall_name
    #   <p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>
    # @option params [Types::EncryptionConfiguration] :encryption_configuration
    #   <p>A complex type that contains optional Amazon Web Services Key Management Service (KMS) encryption settings for your Network Firewall resources. Your data is encrypted by default with an Amazon Web Services owned key that Amazon Web Services owns and manages for you. You can use either the Amazon Web Services owned key, or provide your own customer managed key. To learn more about KMS encryption of your Network Firewall resources, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-encryption-at-rest.html">Encryption at rest with Amazon Web Services Key Managment Service</a> in the <i>Network Firewall Developer Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     update_token: "UpdateToken",
    #     firewall_arn: "ResourceArn",
    #     firewall_name: "ResourceName",
    #     encryption_configuration: {
    #       key_id: "KeyId",
    #       type: "CUSTOMER_KMS" # One of: ["CUSTOMER_KMS", "AWS_OWNED_KMS_KEY"], # required
    #     }
    #   }
    #   options = {}
    #   response = client.update_firewall_encryption_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     firewall_arn: "ResourceArn",
    #     firewall_name: "ResourceName",
    #     update_token: "UpdateToken",
    #     encryption_configuration: {
    #       key_id: "KeyId",
    #       type: "CUSTOMER_KMS" # One of: ["CUSTOMER_KMS", "AWS_OWNED_KMS_KEY"], # required
    #     }
    #   }
    # @return [Types::UpdateFirewallEncryptionConfigurationResponse]
    def update_firewall_encryption_configuration(params = {}, options = {})
      request = build_request(:update_firewall_encryption_configuration, params)
      request.send_request(options)
    end

    # <p>Updates the properties of the specified firewall policy.</p>
    # @param [Hash, Types::UpdateFirewallPolicyRequest] params
    # @option params [String] :update_token
    #   <p>A token used for optimistic locking. Network Firewall returns a token to your requests that access the firewall policy. The token marks the state of the policy resource at the time of the request. </p>
    #            <p>To make changes to the policy, you provide the token in your request. Network Firewall uses the token to ensure that the policy hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the firewall policy again to get a current copy of it with current token. Reapply your changes as needed, then try the operation again using the new token. </p>
    # @option params [String] :firewall_policy_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall policy.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    # @option params [String] :firewall_policy_name
    #   <p>The descriptive name of the firewall policy. You can't change the name of a firewall policy after you create it.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    # @option params [Types::FirewallPolicy] :firewall_policy
    #   <p>The updated firewall policy to use for the firewall. You can't add or remove a <a>TLSInspectionConfiguration</a> after you create a firewall policy. However, you can replace an existing TLS inspection configuration with another <code>TLSInspectionConfiguration</code>.</p>
    # @option params [String] :description
    #   <p>A description of the firewall policy.</p>
    # @option params [Boolean] :dry_run
    #   <p>Indicates whether you want Network Firewall to just check the validity of the request, rather than run the request. </p>
    #            <p>If set to <code>TRUE</code>, Network Firewall checks whether the request can run successfully,
    #            but doesn't actually make the requested changes. The call returns the value that the request would return if you ran it with
    #            dry run set to <code>FALSE</code>, but doesn't make additions or changes to your resources. This option allows you to make sure that you have
    #            the required permissions to run the request and that your request parameters are valid. </p>
    #            <p>If set to <code>FALSE</code>, Network Firewall makes the requested changes to your resources. </p>
    # @option params [Types::EncryptionConfiguration] :encryption_configuration
    #   <p>A complex type that contains settings for encryption of your firewall policy resources.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     update_token: "UpdateToken", # required
    #     firewall_policy_arn: "ResourceArn",
    #     firewall_policy_name: "ResourceName",
    #     firewall_policy: { # required
    #       stateless_rule_group_references: [
    #         {
    #           resource_arn: "ResourceArn", # required
    #           priority: 1, # required
    #         }
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
    #                 }
    #               ]
    #             }
    #           }
    #         }
    #       ],
    #       stateful_rule_group_references: [
    #         {
    #           resource_arn: "ResourceArn", # required
    #           priority: 1,
    #           override: {
    #             action: "DROP_TO_ALERT" # One of: ["DROP_TO_ALERT"]
    #           },
    #           deep_threat_inspection: false
    #         }
    #       ],
    #       stateful_default_actions: ["CollectionMember_String"],
    #       stateful_engine_options: {
    #         rule_order: "DEFAULT_ACTION_ORDER" # One of: ["DEFAULT_ACTION_ORDER", "STRICT_ORDER"],
    #         stream_exception_policy: "DROP" # One of: ["DROP", "CONTINUE", "REJECT"],
    #         flow_timeouts: {
    #           tcp_idle_timeout_seconds: 1
    #         }
    #       },
    #       tls_inspection_configuration_arn: "ResourceArn",
    #       policy_variables: {
    #         rule_variables: {
    #           "RuleVariableName" => {
    #             definition: ["VariableDefinition"], # required
    #           }
    #         }
    #       },
    #       enable_tls_session_holding: false
    #     },
    #     description: "Description",
    #     dry_run: false,
    #     encryption_configuration: {
    #       key_id: "KeyId",
    #       type: "CUSTOMER_KMS" # One of: ["CUSTOMER_KMS", "AWS_OWNED_KMS_KEY"], # required
    #     }
    #   }
    #   options = {}
    #   response = client.update_firewall_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     update_token: "UpdateToken", # required
    #     firewall_policy_response: { # required
    #       firewall_policy_name: "ResourceName", # required
    #       firewall_policy_arn: "ResourceArn", # required
    #       firewall_policy_id: "ResourceId", # required
    #       description: "Description",
    #       firewall_policy_status: "ACTIVE" # One of: ["ACTIVE", "DELETING", "ERROR"],
    #       tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue", # required
    #         }
    #       ],
    #       consumed_stateless_rule_capacity: 1,
    #       consumed_stateful_rule_capacity: 1,
    #       number_of_associations: 1,
    #       encryption_configuration: {
    #         key_id: "KeyId",
    #         type: "CUSTOMER_KMS" # One of: ["CUSTOMER_KMS", "AWS_OWNED_KMS_KEY"], # required
    #       },
    #       last_modified_time: Time.now
    #     }
    #   }
    # @return [Types::UpdateFirewallPolicyResponse]
    def update_firewall_policy(params = {}, options = {})
      request = build_request(:update_firewall_policy, params)
      request.send_request(options)
    end

    # <p>Modifies the flag, <code>ChangeProtection</code>, which indicates whether it
    #          is possible to change the firewall. If the flag is set to <code>TRUE</code>, the firewall is protected
    #          from changes. This setting helps protect against accidentally changing a firewall that's in use.</p>
    # @param [Hash, Types::UpdateFirewallPolicyChangeProtectionRequest] params
    # @option params [String] :update_token
    #   <p>An optional token that you can use for optimistic locking. Network Firewall returns a token to your requests that access the firewall. The token marks the state of the firewall resource at the time of the request. </p>
    #            <p>To make an unconditional change to the firewall, omit the token in your update request. Without the token, Network Firewall performs your updates regardless of whether the firewall has changed since you last retrieved it.</p>
    #            <p>To make a conditional change to the firewall, provide the token in your update request. Network Firewall uses the token to ensure that the firewall hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the firewall again to get a current copy of it with a new token. Reapply your changes as needed, then try the operation again using the new token. </p>
    # @option params [String] :firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    # @option params [String] :firewall_name
    #   <p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    # @option params [Boolean] :firewall_policy_change_protection
    #   <p>A setting indicating whether the firewall is protected against a change to the firewall policy association.
    #            Use this setting to protect against
    #            accidentally modifying the firewall policy for a firewall that is in use. When you create a firewall, the operation initializes this setting to <code>TRUE</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     update_token: "UpdateToken",
    #     firewall_arn: "ResourceArn",
    #     firewall_name: "ResourceName",
    #     firewall_policy_change_protection: false, # required
    #   }
    #   options = {}
    #   response = client.update_firewall_policy_change_protection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     update_token: "UpdateToken",
    #     firewall_arn: "ResourceArn",
    #     firewall_name: "ResourceName",
    #     firewall_policy_change_protection: false
    #   }
    # @return [Types::UpdateFirewallPolicyChangeProtectionResponse]
    def update_firewall_policy_change_protection(params = {}, options = {})
      request = build_request(:update_firewall_policy_change_protection, params)
      request.send_request(options)
    end

    # <p>Sets the logging configuration for the specified firewall. </p>
    #          <p>To change the logging configuration, retrieve the <a>LoggingConfiguration</a> by calling <a>DescribeLoggingConfiguration</a>, then change it and provide
    #          the modified object to this update call. You must change the logging configuration one
    #             <a>LogDestinationConfig</a> at a time inside the retrieved <a>LoggingConfiguration</a> object. </p>
    #          <p>You can perform only one of the following actions in any call to
    #             <code>UpdateLoggingConfiguration</code>: </p>
    #          <ul>
    #             <li>
    #                <p>Create a new log destination object by adding a single
    #                   <code>LogDestinationConfig</code> array element to
    #                   <code>LogDestinationConfigs</code>.</p>
    #             </li>
    #             <li>
    #                <p>Delete a log destination object by removing a single
    #                   <code>LogDestinationConfig</code> array element from
    #                   <code>LogDestinationConfigs</code>.</p>
    #             </li>
    #             <li>
    #                <p>Change the <code>LogDestination</code> setting in a single
    #                   <code>LogDestinationConfig</code> array element.</p>
    #             </li>
    #          </ul>
    #          <p>You can't change the <code>LogDestinationType</code> or <code>LogType</code> in a
    #             <code>LogDestinationConfig</code>. To change these settings, delete the existing
    #             <code>LogDestinationConfig</code> object and create a new one, using two separate calls
    #          to this update operation.</p>
    # @param [Hash, Types::UpdateLoggingConfigurationRequest] params
    # @option params [String] :firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    # @option params [String] :firewall_name
    #   <p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    # @option params [Types::LoggingConfiguration] :logging_configuration
    #   <p>Defines how Network Firewall performs logging for a firewall. If you omit this setting,
    #            Network Firewall disables logging for the firewall.</p>
    # @option params [Boolean] :enable_monitoring_dashboard
    #   <p>A boolean that lets you enable or disable the detailed firewall monitoring dashboard on the firewall. </p>
    #            <p>The monitoring dashboard provides comprehensive visibility into your firewall's flow logs and alert logs. 
    #            After you enable detailed monitoring, you can access these dashboards directly from the <b>Monitoring</b> page of the Network Firewall console.</p>
    #            <p>
    #            Specify <code>TRUE</code> to enable the the detailed monitoring dashboard on the firewall. 
    #            Specify <code>FALSE</code> to disable the the detailed monitoring dashboard on the firewall. 
    #         </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     firewall_arn: "ResourceArn",
    #     firewall_name: "ResourceName",
    #     logging_configuration: {
    #       log_destination_configs: [ # required
    #         {
    #           log_type: "ALERT" # One of: ["ALERT", "FLOW", "TLS"], # required
    #           log_destination_type: "S3" # One of: ["S3", "CloudWatchLogs", "KinesisDataFirehose"], # required
    #           log_destination: { # required
    #             "HashMapKey" => "HashMapValue"
    #           }
    #         }
    #       ]
    #     },
    #     enable_monitoring_dashboard: false
    #   }
    #   options = {}
    #   response = client.update_logging_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     firewall_arn: "ResourceArn",
    #     firewall_name: "ResourceName",
    #     logging_configuration: {
    #       log_destination_configs: [ # required
    #         {
    #           log_type: "ALERT" # One of: ["ALERT", "FLOW", "TLS"], # required
    #           log_destination_type: "S3" # One of: ["S3", "CloudWatchLogs", "KinesisDataFirehose"], # required
    #           log_destination: { # required
    #             "HashMapKey" => "HashMapValue"
    #           }
    #         }
    #       ]
    #     },
    #     enable_monitoring_dashboard: false
    #   }
    # @return [Types::UpdateLoggingConfigurationResponse]
    def update_logging_configuration(params = {}, options = {})
      request = build_request(:update_logging_configuration, params)
      request.send_request(options)
    end

    # <p>Updates the rule settings for the specified rule group. You use a rule group by
    #          reference in one or more firewall policies. When you modify a rule group, you modify all
    #          firewall policies that use the rule group. </p>
    #          <p>To update a rule group, first call <a>DescribeRuleGroup</a> to retrieve the
    #          current <a>RuleGroup</a> object, update the object as needed, and then provide
    #          the updated object to this call. </p>
    # @param [Hash, Types::UpdateRuleGroupRequest] params
    # @option params [String] :update_token
    #   <p>A token used for optimistic locking. Network Firewall returns a token to your requests that access the rule group. The token marks the state of the rule group resource at the time of the request. </p>
    #            <p>To make changes to the rule group, you provide the token in your request. Network Firewall uses the token to ensure that the rule group hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the rule group again to get a current copy of it with a current token. Reapply your changes as needed, then try the operation again using the new token. </p>
    # @option params [String] :rule_group_arn
    #   <p>The Amazon Resource Name (ARN) of the rule group.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    # @option params [String] :rule_group_name
    #   <p>The descriptive name of the rule group. You can't change the name of a rule group after you create it.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    # @option params [Types::RuleGroup] :rule_group
    #   <p>An object that defines the rule group rules. </p>
    #            <note>
    #               <p>You must provide either this rule group setting or a <code>Rules</code> setting, but not both. </p>
    #            </note>
    # @option params [String] :rules
    #   <p>A string containing stateful rule group rules specifications in Suricata flat format, with one rule
    #   per line. Use this to import your existing Suricata compatible rule groups. </p>
    #            <note>
    #               <p>You must provide either this rules setting or a populated <code>RuleGroup</code> setting, but not both. </p>
    #            </note>
    #            <p>You can provide your rule group specification in Suricata flat format through this setting when you create or update your rule group. The call
    #   response returns a <a>RuleGroup</a> object that Network Firewall has populated from your string. </p>
    # @option params [String] :type
    #   <p>Indicates whether the rule group is stateless or stateful. If the rule group is stateless, it contains
    #   stateless rules. If it is stateful, it contains stateful rules. </p>
    #            <note>
    #               <p>This setting is required for requests that do not include the <code>RuleGroupARN</code>.</p>
    #            </note>
    # @option params [String] :description
    #   <p>A description of the rule group. </p>
    # @option params [Boolean] :dry_run
    #   <p>Indicates whether you want Network Firewall to just check the validity of the request, rather than run the request. </p>
    #            <p>If set to <code>TRUE</code>, Network Firewall checks whether the request can run successfully,
    #            but doesn't actually make the requested changes. The call returns the value that the request would return if you ran it with
    #            dry run set to <code>FALSE</code>, but doesn't make additions or changes to your resources. This option allows you to make sure that you have
    #            the required permissions to run the request and that your request parameters are valid. </p>
    #            <p>If set to <code>FALSE</code>, Network Firewall makes the requested changes to your resources. </p>
    # @option params [Types::EncryptionConfiguration] :encryption_configuration
    #   <p>A complex type that contains settings for encryption of your rule group resources.</p>
    # @option params [Types::SourceMetadata] :source_metadata
    #   <p>A complex type that contains metadata about the rule group that your own rule group is copied from. You can use the metadata to keep track of updates made to the originating rule group.</p>
    # @option params [Boolean] :analyze_rule_group
    #   <p>Indicates whether you want Network Firewall to analyze the stateless rules in the rule group for rule behavior such as asymmetric routing. If set to <code>TRUE</code>, Network Firewall runs the analysis and then updates the rule group for you. To run the stateless rule group analyzer without updating the rule group, set <code>DryRun</code> to <code>TRUE</code>. </p>
    # @option params [Types::SummaryConfiguration] :summary_configuration
    #   <p>Updates the selected summary configuration for a rule group.</p>
    #            <p>Changes affect subsequent responses from <a>DescribeRuleGroupSummary</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     update_token: "UpdateToken", # required
    #     rule_group_arn: "ResourceArn",
    #     rule_group_name: "ResourceName",
    #     rule_group: {
    #       rule_variables: {
    #         ip_sets: {
    #           "RuleVariableName" => {
    #             definition: ["VariableDefinition"], # required
    #           }
    #         },
    #         port_sets: {
    #           "RuleVariableName" => {
    #             definition: ["VariableDefinition"]
    #           }
    #         }
    #       },
    #       reference_sets: {
    #         ip_set_references: {
    #           "IPSetReferenceName" => {
    #             reference_arn: "ResourceArn"
    #           }
    #         }
    #       },
    #       rules_source: { # required
    #         rules_string: "RulesString",
    #         rules_source_list: {
    #           targets: ["CollectionMember_String"], # required
    #           target_types: ["TLS_SNI" # One of: ["TLS_SNI", "HTTP_HOST"]], # required
    #           generated_rules_type: "ALLOWLIST" # One of: ["ALLOWLIST", "DENYLIST", "REJECTLIST", "ALERTLIST"], # required
    #         },
    #         stateful_rules: [
    #           {
    #             action: "PASS" # One of: ["PASS", "DROP", "ALERT", "REJECT"], # required
    #             header: { # required
    #               protocol: "IP" # One of: ["IP", "TCP", "UDP", "ICMP", "HTTP", "FTP", "TLS", "SMB", "DNS", "DCERPC", "SSH", "SMTP", "IMAP", "MSN", "KRB5", "IKEV2", "TFTP", "NTP", "DHCP", "HTTP2", "QUIC"], # required
    #               source: "Source", # required
    #               source_port: "Port", # required
    #               direction: "FORWARD" # One of: ["FORWARD", "ANY"], # required
    #               destination: "Destination", # required
    #               destination_port: "Port", # required
    #             },
    #             rule_options: [ # required
    #               {
    #                 keyword: "Keyword", # required
    #                 settings: ["Setting"]
    #               }
    #             ]
    #           }
    #         ],
    #         stateless_rules_and_custom_actions: {
    #           stateless_rules: [ # required
    #             {
    #               rule_definition: { # required
    #                 match_attributes: { # required
    #                   sources: [
    #                     {
    #                       address_definition: "AddressDefinition", # required
    #                     }
    #                   ],
    #                   destinations: [
    #                     {
    #                       address_definition: "AddressDefinition", # required
    #                     }
    #                   ],
    #                   source_ports: [
    #                     {
    #                       from_port: 1, # required
    #                       to_port: 1, # required
    #                     }
    #                   ],
    #                   destination_ports: [
    #                     {
    #                       from_port: 1, # required
    #                       to_port: 1, # required
    #                     }
    #                   ],
    #                   protocols: [1],
    #                   tcp_flags: [
    #                     {
    #                       flags: ["FIN" # One of: ["FIN", "SYN", "RST", "PSH", "ACK", "URG", "ECE", "CWR"]], # required
    #                       masks: ["FIN" # One of: ["FIN", "SYN", "RST", "PSH", "ACK", "URG", "ECE", "CWR"]]
    #                     }
    #                   ]
    #                 },
    #                 actions: ["CollectionMember_String"], # required
    #               },
    #               priority: 1, # required
    #             }
    #           ],
    #           custom_actions: [
    #             {
    #               action_name: "ActionName", # required
    #               action_definition: { # required
    #                 publish_metric_action: {
    #                   dimensions: [ # required
    #                     {
    #                       value: "DimensionValue", # required
    #                     }
    #                   ]
    #                 }
    #               }
    #             }
    #           ]
    #         }
    #       },
    #       stateful_rule_options: {
    #         rule_order: "DEFAULT_ACTION_ORDER" # One of: ["DEFAULT_ACTION_ORDER", "STRICT_ORDER"]
    #       }
    #     },
    #     rules: "RulesString",
    #     type: "STATELESS" # One of: ["STATELESS", "STATEFUL"],
    #     description: "Description",
    #     dry_run: false,
    #     encryption_configuration: {
    #       key_id: "KeyId",
    #       type: "CUSTOMER_KMS" # One of: ["CUSTOMER_KMS", "AWS_OWNED_KMS_KEY"], # required
    #     },
    #     source_metadata: {
    #       source_arn: "ResourceArn",
    #       source_update_token: "UpdateToken"
    #     },
    #     analyze_rule_group: false,
    #     summary_configuration: {
    #       rule_options: ["SID" # One of: ["SID", "MSG", "METADATA"]]
    #     }
    #   }
    #   options = {}
    #   response = client.update_rule_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     update_token: "UpdateToken", # required
    #     rule_group_response: { # required
    #       rule_group_arn: "ResourceArn", # required
    #       rule_group_name: "ResourceName", # required
    #       rule_group_id: "ResourceId", # required
    #       description: "Description",
    #       type: "STATELESS" # One of: ["STATELESS", "STATEFUL"],
    #       capacity: 1,
    #       rule_group_status: "ACTIVE" # One of: ["ACTIVE", "DELETING", "ERROR"],
    #       tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue", # required
    #         }
    #       ],
    #       consumed_capacity: 1,
    #       number_of_associations: 1,
    #       encryption_configuration: {
    #         key_id: "KeyId",
    #         type: "CUSTOMER_KMS" # One of: ["CUSTOMER_KMS", "AWS_OWNED_KMS_KEY"], # required
    #       },
    #       source_metadata: {
    #         source_arn: "ResourceArn",
    #         source_update_token: "UpdateToken"
    #       },
    #       sns_topic: "ResourceArn",
    #       last_modified_time: Time.now,
    #       analysis_results: [
    #         {
    #           identified_rule_ids: ["CollectionMember_String"],
    #           identified_type: "STATELESS_RULE_FORWARDING_ASYMMETRICALLY" # One of: ["STATELESS_RULE_FORWARDING_ASYMMETRICALLY", "STATELESS_RULE_CONTAINS_TCP_FLAGS"],
    #           analysis_detail: "CollectionMember_String"
    #         }
    #       ],
    #       summary_configuration: {
    #         rule_options: ["SID" # One of: ["SID", "MSG", "METADATA"]]
    #       }
    #     }
    #   }
    # @return [Types::UpdateRuleGroupResponse]
    def update_rule_group(params = {}, options = {})
      request = build_request(:update_rule_group, params)
      request.send_request(options)
    end

    # <p></p>
    # @param [Hash, Types::UpdateSubnetChangeProtectionRequest] params
    # @option params [String] :update_token
    #   <p>An optional token that you can use for optimistic locking. Network Firewall returns a token to your requests that access the firewall. The token marks the state of the firewall resource at the time of the request. </p>
    #            <p>To make an unconditional change to the firewall, omit the token in your update request. Without the token, Network Firewall performs your updates regardless of whether the firewall has changed since you last retrieved it.</p>
    #            <p>To make a conditional change to the firewall, provide the token in your update request. Network Firewall uses the token to ensure that the firewall hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the firewall again to get a current copy of it with a new token. Reapply your changes as needed, then try the operation again using the new token. </p>
    # @option params [String] :firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    # @option params [String] :firewall_name
    #   <p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    # @option params [Boolean] :subnet_change_protection
    #   <p>A setting indicating whether the firewall is protected against changes to the subnet associations.
    #            Use this setting to protect against
    #            accidentally modifying the subnet associations for a firewall that is in use. When you create a firewall, the operation initializes this setting to <code>TRUE</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     update_token: "UpdateToken",
    #     firewall_arn: "ResourceArn",
    #     firewall_name: "ResourceName",
    #     subnet_change_protection: false, # required
    #   }
    #   options = {}
    #   response = client.update_subnet_change_protection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     update_token: "UpdateToken",
    #     firewall_arn: "ResourceArn",
    #     firewall_name: "ResourceName",
    #     subnet_change_protection: false
    #   }
    # @return [Types::UpdateSubnetChangeProtectionResponse]
    def update_subnet_change_protection(params = {}, options = {})
      request = build_request(:update_subnet_change_protection, params)
      request.send_request(options)
    end

    # <p>Updates the TLS inspection configuration settings for the specified TLS inspection configuration. You use a TLS inspection configuration by
    #         referencing it in one or more firewall policies. When you modify a TLS inspection configuration, you modify all
    #         firewall policies that use the TLS inspection configuration. </p>
    #          <p>To update a TLS inspection configuration, first call <a>DescribeTLSInspectionConfiguration</a> to retrieve the
    #         current <a>TLSInspectionConfiguration</a> object, update the object as needed, and then provide
    #         the updated object to this call. </p>
    # @param [Hash, Types::UpdateTLSInspectionConfigurationRequest] params
    # @option params [String] :tls_inspection_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the TLS inspection configuration.</p>
    # @option params [String] :tls_inspection_configuration_name
    #   <p>The descriptive name of the TLS inspection configuration. You can't change the name of a TLS inspection configuration after you create it.</p>
    # @option params [Types::TLSInspectionConfiguration] :tls_inspection_configuration
    #   <p>The object that defines a TLS inspection configuration. This, along with <a>TLSInspectionConfigurationResponse</a>, define the TLS inspection configuration. You can retrieve all objects for a TLS inspection configuration by calling <a>DescribeTLSInspectionConfiguration</a>. </p>
    #            <p>Network Firewall uses a TLS inspection configuration to decrypt traffic. Network Firewall re-encrypts the traffic before sending it to its destination.</p>
    #            <p>To use a TLS inspection configuration, you add it to a new Network Firewall firewall policy, then you apply the firewall policy to a firewall. Network Firewall acts as a proxy service to decrypt and inspect the traffic traveling through your firewalls. You can reference a TLS inspection configuration from more than one firewall policy, and you can use a firewall policy in more than one firewall. For more information about using TLS inspection configurations, see 
    #       <a href="https://docs.aws.amazon.com/network-firewall/latest/developerguide/tls-inspection.html">Inspecting SSL/TLS traffic with TLS
    #   inspection configurations</a> in the <i>Network Firewall Developer Guide</i>.</p>
    # @option params [String] :description
    #   <p>A description of the TLS inspection configuration. </p>
    # @option params [Types::EncryptionConfiguration] :encryption_configuration
    #   <p>A complex type that contains the Amazon Web Services KMS encryption configuration settings for your TLS inspection configuration.</p>
    # @option params [String] :update_token
    #   <p>A token used for optimistic locking. Network Firewall returns a token to your requests that access the TLS inspection configuration. The token marks the state of the TLS inspection configuration resource at the time of the request. </p>
    #            <p>To make changes to the TLS inspection configuration, you provide the token in your request. Network Firewall uses the token to ensure that the TLS inspection configuration hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the TLS inspection configuration again to get a current copy of it with a current token. Reapply your changes as needed, then try the operation again using the new token. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     tls_inspection_configuration_arn: "ResourceArn",
    #     tls_inspection_configuration_name: "ResourceName",
    #     tls_inspection_configuration: { # required
    #       server_certificate_configurations: [
    #         {
    #           server_certificates: [
    #             {
    #               resource_arn: "ResourceArn"
    #             }
    #           ],
    #           scopes: [
    #             {
    #               sources: [
    #                 {
    #                   address_definition: "AddressDefinition", # required
    #                 }
    #               ],
    #               destinations: [
    #                 {
    #                   address_definition: "AddressDefinition", # required
    #                 }
    #               ],
    #               source_ports: [
    #                 {
    #                   from_port: 1, # required
    #                   to_port: 1, # required
    #                 }
    #               ],
    #               destination_ports: [
    #                 {
    #                   from_port: 1, # required
    #                   to_port: 1, # required
    #                 }
    #               ],
    #               protocols: [1]
    #             }
    #           ],
    #           certificate_authority_arn: "ResourceArn",
    #           check_certificate_revocation_status: {
    #             revoked_status_action: "PASS" # One of: ["PASS", "DROP", "REJECT"],
    #             unknown_status_action: "PASS" # One of: ["PASS", "DROP", "REJECT"]
    #           }
    #         }
    #       ]
    #     },
    #     description: "Description",
    #     encryption_configuration: {
    #       key_id: "KeyId",
    #       type: "CUSTOMER_KMS" # One of: ["CUSTOMER_KMS", "AWS_OWNED_KMS_KEY"], # required
    #     },
    #     update_token: "UpdateToken", # required
    #   }
    #   options = {}
    #   response = client.update_tls_inspection_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     update_token: "UpdateToken", # required
    #     tls_inspection_configuration_response: { # required
    #       tls_inspection_configuration_arn: "ResourceArn", # required
    #       tls_inspection_configuration_name: "ResourceName", # required
    #       tls_inspection_configuration_id: "ResourceId", # required
    #       tls_inspection_configuration_status: "ACTIVE" # One of: ["ACTIVE", "DELETING", "ERROR"],
    #       description: "Description",
    #       tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue", # required
    #         }
    #       ],
    #       last_modified_time: Time.now,
    #       number_of_associations: 1,
    #       encryption_configuration: {
    #         key_id: "KeyId",
    #         type: "CUSTOMER_KMS" # One of: ["CUSTOMER_KMS", "AWS_OWNED_KMS_KEY"], # required
    #       },
    #       certificates: [
    #         {
    #           certificate_arn: "ResourceArn",
    #           certificate_serial: "CollectionMember_String",
    #           status: "CollectionMember_String",
    #           status_message: "StatusReason"
    #         }
    #       ],
    #       certificate_authority: {
    #         certificate_arn: "ResourceArn",
    #         certificate_serial: "CollectionMember_String",
    #         status: "CollectionMember_String",
    #         status_message: "StatusReason"
    #       }
    #     }
    #   }
    # @return [Types::UpdateTLSInspectionConfigurationResponse]
    def update_tls_inspection_configuration(params = {}, options = {})
      request = build_request(:update_tls_inspection_configuration, params)
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
      context[:gem_name] = 'aws-sdk-networkfirewall'
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
