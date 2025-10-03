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

module Aws::GlobalAccelerator
  # An API client for Aws::GlobalAccelerator.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::GlobalAcceleratorV20180706

    add_plugin(::Aws::GlobalAccelerator::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::GlobalAccelerator::EndpointProvider)
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

    # <p>Associate a virtual private cloud (VPC) subnet endpoint with your custom routing accelerator.</p>
    #          <p>The listener port range must be large enough to support the number of IP addresses that can be 
    # 		specified in your subnet. The number of ports required is: subnet size times the number
    # 		of ports per destination EC2 instances. For example, a subnet defined as /24 requires a listener 
    # 		port range of at least 255 ports. </p>
    #          <p>Note: You must have enough remaining listener ports available to 
    # 		map to the subnet ports, or the call will fail with a LimitExceededException.</p>
    #          <p>By default, all destinations in a subnet in a custom routing accelerator cannot receive traffic. To enable all
    # 			destinations to receive traffic, or to specify individual port mappings that can receive
    # 			traffic, see the <a href="https://docs.aws.amazon.com/global-accelerator/latest/api/API_AllowCustomRoutingTraffic.html">
    # 				AllowCustomRoutingTraffic</a> operation.</p>
    # @param [Hash, Types::AddCustomRoutingEndpointsRequest] params
    # @option params [Array<Types::CustomRoutingEndpointConfiguration>] :endpoint_configurations
    #   <p>The list of endpoint objects to add to a custom routing accelerator.</p>
    # @option params [String] :endpoint_group_arn
    #   <p>The Amazon Resource Name (ARN) of the endpoint group for the custom routing endpoint.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     endpoint_configurations: [ # required
    #       {
    #         endpoint_id: "GenericString",
    #         attachment_arn: "GenericString"
    #       }
    #     ],
    #     endpoint_group_arn: "GenericString", # required
    #   }
    #   options = {}
    #   response = client.add_custom_routing_endpoints(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     endpoint_descriptions: [
    #       {
    #         endpoint_id: "GenericString"
    #       }
    #     ],
    #     endpoint_group_arn: "GenericString"
    #   }
    # @return [Types::AddCustomRoutingEndpointsResponse]
    def add_custom_routing_endpoints(params = {}, options = {})
      request = build_request(:add_custom_routing_endpoints, params)
      request.send_request(options)
    end

    # <p>Add endpoints to an endpoint group. The <code>AddEndpoints</code> API operation is the recommended option for adding endpoints. The
    # 			alternative options are to add endpoints when you create an endpoint group (with the
    # 			<a href="https://docs.aws.amazon.com/global-accelerator/latest/api/API_CreateEndpointGroup.html">CreateEndpointGroup</a> API) 
    # 			or when you update an endpoint group (with the 
    # 			<a href="https://docs.aws.amazon.com/global-accelerator/latest/api/API_UpdateEndpointGroup.html">UpdateEndpointGroup</a> API). </p>
    #          <p>There are two advantages to using <code>AddEndpoints</code> to add endpoints in Global Accelerator:</p>
    #          <ul>
    #             <li>
    #                <p>It's faster, because Global Accelerator only has to resolve the new endpoints that
    # 					you're adding, rather than resolving new and existing endpoints.</p>
    #             </li>
    #             <li>
    #                <p>It's more convenient, because you don't need to specify the current 
    # 					endpoints that are already in the endpoint group, in addition to the new endpoints that 
    # 					you want to add.</p>
    #             </li>
    #          </ul>
    #          <p>For information about endpoint types and requirements for endpoints that you can add
    # 			to Global Accelerator, see <a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/about-endpoints.html">
    # 				Endpoints for standard accelerators</a> in the <i>Global Accelerator Developer Guide</i>.</p>
    # @param [Hash, Types::AddEndpointsRequest] params
    # @option params [Array<Types::EndpointConfiguration>] :endpoint_configurations
    #   <p>The list of endpoint objects.</p>
    # @option params [String] :endpoint_group_arn
    #   <p>The Amazon Resource Name (ARN) of the endpoint group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     endpoint_configurations: [ # required
    #       {
    #         endpoint_id: "GenericString",
    #         weight: 1,
    #         client_ip_preservation_enabled: false,
    #         attachment_arn: "GenericString"
    #       }
    #     ],
    #     endpoint_group_arn: "GenericString", # required
    #   }
    #   options = {}
    #   response = client.add_endpoints(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     endpoint_descriptions: [
    #       {
    #         endpoint_id: "GenericString",
    #         weight: 1,
    #         health_state: "INITIAL" # One of: ["INITIAL", "HEALTHY", "UNHEALTHY"],
    #         health_reason: "GenericString",
    #         client_ip_preservation_enabled: false
    #       }
    #     ],
    #     endpoint_group_arn: "GenericString"
    #   }
    # @return [Types::AddEndpointsResponse]
    def add_endpoints(params = {}, options = {})
      request = build_request(:add_endpoints, params)
      request.send_request(options)
    end

    # <p>Advertises an IPv4 address range that is provisioned for use with your Amazon Web Services resources 
    # 			through bring your own IP addresses (BYOIP). It can take a few minutes before traffic to 
    # 			the specified addresses starts routing to Amazon Web Services because of propagation delays. </p>
    #          <p>To stop advertising the BYOIP address range, use <a href="https://docs.aws.amazon.com/global-accelerator/latest/api/WithdrawByoipCidr.html">
    # 			WithdrawByoipCidr</a>.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html">Bring your own 
    # 		    IP addresses (BYOIP)</a> in the <i>Global Accelerator Developer Guide</i>.</p>
    # @param [Hash, Types::AdvertiseByoipCidrRequest] params
    # @option params [String] :cidr
    #   <p>The address range, in CIDR notation. This must be the exact range that you provisioned. 
    #   			You can't advertise only a portion of the provisioned range.</p>
    #            <p> For more information, see
    #   			<a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html">Bring your own IP addresses (BYOIP)</a> in 
    #   			the Global Accelerator Developer Guide.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cidr: "GenericString", # required
    #   }
    #   options = {}
    #   response = client.advertise_byoip_cidr(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     byoip_cidr: {
    #       cidr: "GenericString",
    #       state: "PENDING_PROVISIONING" # One of: ["PENDING_PROVISIONING", "READY", "PENDING_ADVERTISING", "ADVERTISING", "PENDING_WITHDRAWING", "PENDING_DEPROVISIONING", "DEPROVISIONED", "FAILED_PROVISION", "FAILED_ADVERTISING", "FAILED_WITHDRAW", "FAILED_DEPROVISION"],
    #       events: [
    #         {
    #           message: "GenericString",
    #           timestamp: Time.now
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::AdvertiseByoipCidrResponse]
    def advertise_byoip_cidr(params = {}, options = {})
      request = build_request(:advertise_byoip_cidr, params)
      request.send_request(options)
    end

    # <p>Specify the Amazon EC2 instance (destination) IP addresses and ports for a VPC subnet endpoint that can receive traffic 
    # 			for a custom routing accelerator. You can allow traffic to all destinations in the subnet endpoint, or allow traffic to a
    # 			specified list of destination IP addresses and ports in the subnet. Note that you cannot specify IP addresses or ports 
    # 			outside of the range that you configured for the endpoint group.</p>
    #          <p>After you make changes, you can verify that the updates are complete by checking the status of your
    # 			accelerator: the status changes from IN_PROGRESS to DEPLOYED.</p>
    # @param [Hash, Types::AllowCustomRoutingTrafficRequest] params
    # @option params [String] :endpoint_group_arn
    #   <p>The Amazon Resource Name (ARN) of the endpoint group.</p>
    # @option params [String] :endpoint_id
    #   <p>An ID for the endpoint. For custom routing accelerators, this is the virtual private cloud (VPC) subnet ID.</p>
    # @option params [Array<String>] :destination_addresses
    #   <p>A list of specific Amazon EC2 instance IP addresses (destination addresses) in a subnet that you want to allow to receive 
    #   			traffic. The IP addresses must be a subset of the IP addresses that you specified for the endpoint group.</p>
    #            <p>
    #               <code>DestinationAddresses</code> is required if <code>AllowAllTrafficToEndpoint</code> is <code>FALSE</code> or is
    #   		not specified.</p>
    # @option params [Array<Integer>] :destination_ports
    #   <p>A list of specific Amazon EC2 instance ports (destination ports) that you want to allow to receive traffic.</p>
    # @option params [Boolean] :allow_all_traffic_to_endpoint
    #   <p>Indicates whether all destination IP addresses and ports for a specified VPC subnet endpoint can receive traffic 
    #   			from a custom routing accelerator. The value is TRUE or FALSE. </p>
    #            <p>When set to TRUE, <i>all</i> destinations in the custom routing VPC subnet can receive traffic. Note 
    #   			that you cannot specify destination IP addresses and ports when the value is set to TRUE.</p>
    #            <p>When set to FALSE (or not specified), you <i>must</i> specify a list of destination IP addresses that are allowed
    #   			to receive traffic. A list of ports is optional. If you don't specify a list of ports, the ports that can accept traffic is
    #   			the same as the ports configured for the endpoint group.</p>
    #            <p>The default value is FALSE.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     endpoint_group_arn: "GenericString", # required
    #     endpoint_id: "GenericString", # required
    #     destination_addresses: ["IpAddress"],
    #     destination_ports: [1],
    #     allow_all_traffic_to_endpoint: false
    #   }
    #   options = {}
    #   response = client.allow_custom_routing_traffic(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def allow_custom_routing_traffic(params = {}, options = {})
      request = build_request(:allow_custom_routing_traffic, params)
      request.send_request(options)
    end

    # <p>Create an accelerator. An accelerator includes one or more listeners that process inbound connections and direct traffic
    # 			to one or more endpoint groups, each of which includes endpoints, such as Network Load Balancers. </p>
    #          <important>
    #             <p>Global Accelerator is a global service that supports endpoints in multiple Amazon Web Services Regions but you must specify the 
    # 				US West (Oregon) Region to create, update, or otherwise work with accelerators.  That is, for example, specify <code>--region us-west-2</code>
    # 				on Amazon Web Services CLI commands.</p>
    #          </important>
    # @param [Hash, Types::CreateAcceleratorRequest] params
    # @option params [String] :name
    #   <p>The name of the accelerator. The name can have a maximum of 64 characters, must contain only alphanumeric characters, 
    #   			periods (.), or hyphens (-), and must not begin or end with a hyphen or period.</p>
    # @option params [String] :ip_address_type
    #   <p>The IP address type that an accelerator supports. For a standard accelerator, the value can be IPV4 or DUAL_STACK.</p>
    # @option params [Array<String>] :ip_addresses
    #   <p>Optionally, if you've added your own IP address pool to Global Accelerator (BYOIP), you can choose an IPv4 address 
    #   			from your own pool to use for the accelerator's static IPv4 address when you create an accelerator. </p>
    #            <p>After you bring an address range to Amazon Web Services, it appears in your account as an address pool. 
    #   	    	When you create an accelerator, you can assign one IPv4 address from your range to it. Global Accelerator assigns 
    #   	    	you a second static IPv4 address from an Amazon IP address range. If you bring two IPv4 address ranges 
    #   	    	to Amazon Web Services, you can assign one IPv4 address from each range to your accelerator. This restriction is 
    #   			because Global Accelerator assigns each address range to a different network zone, for high availability.</p>
    #            <p>You can specify one or two addresses, separated by a space. Do not include the /32 suffix.</p>
    #            <p>Note that you can't update IP addresses for an existing accelerator. To change them, you must create a new 
    #   			accelerator with the new addresses.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html">Bring 
    #   		    your own IP addresses (BYOIP)</a> in the <i>Global Accelerator Developer Guide</i>.</p>
    # @option params [Boolean] :enabled
    #   <p>Indicates whether an accelerator is enabled. The value is true or false. The default value is true. </p>
    #            <p>If the value is set to true, an accelerator cannot be deleted. If set to false, the accelerator can be deleted.</p>
    # @option params [String] :idempotency_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency—that is, the
    #   			uniqueness—of an accelerator.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Create tags for an accelerator.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/tagging-in-global-accelerator.html">Tagging
    #   		    in Global Accelerator</a> in the <i>Global Accelerator Developer Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "GenericString", # required
    #     ip_address_type: "IPV4" # One of: ["IPV4", "DUAL_STACK"],
    #     ip_addresses: ["IpAddress"],
    #     enabled: false,
    #     idempotency_token: "IdempotencyToken", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_accelerator(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     accelerator: {
    #       accelerator_arn: "GenericString",
    #       name: "GenericString",
    #       ip_address_type: "IPV4" # One of: ["IPV4", "DUAL_STACK"],
    #       enabled: false,
    #       ip_sets: [
    #         {
    #           ip_family: "GenericString",
    #           ip_addresses: ["IpAddress"],
    #           ip_address_family: "IPv4" # One of: ["IPv4", "IPv6"]
    #         }
    #       ],
    #       dns_name: "GenericString",
    #       status: "DEPLOYED" # One of: ["DEPLOYED", "IN_PROGRESS"],
    #       created_time: Time.now,
    #       last_modified_time: Time.now,
    #       dual_stack_dns_name: "GenericString",
    #       events: [
    #         {
    #           message: "GenericString",
    #           timestamp: Time.now
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::CreateAcceleratorResponse]
    def create_accelerator(params = {}, options = {})
      request = build_request(:create_accelerator, params)
      request.send_request(options)
    end

    # <p>Create a cross-account attachment in Global Accelerator. You create a cross-account attachment to
    # 			specify the <i>principals</i> who have permission to work with <i>resources</i>
    # 			in accelerators in their own account. You specify, in the same attachment, the resources that are shared.</p>
    #          <p>A principal can be an Amazon Web Services account number or the Amazon Resource Name (ARN) for an 
    # 			accelerator. For account numbers that are listed as principals, to work with a resource listed in the attachment,
    # 			you must sign in to an account specified as a principal. Then, you can work with resources that are listed, 
    # 			with any of your accelerators. If an accelerator ARN is listed in the cross-account attachment as a principal, 
    # 			anyone with permission to make updates to the accelerator can work with resources that are listed in the 
    # 			attachment. </p>
    #          <p>Specify each principal and resource separately. To specify two CIDR address pools, list
    # 			them individually under <code>Resources</code>, and so on. For a command line operation, for example,
    # 			you might use a statement like the following:</p>
    #          <p>
    #             <code> "Resources": [{"Cidr": "169.254.60.0/24"},{"Cidr": "169.254.59.0/24"}]</code>
    #          </p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/cross-account-resources.html">
    # 			Working with cross-account attachments and resources in Global Accelerator</a> in the <i>
    # 				Global Accelerator Developer Guide</i>.</p>
    # @param [Hash, Types::CreateCrossAccountAttachmentRequest] params
    # @option params [String] :name
    #   <p>The name of the cross-account attachment. </p>
    # @option params [Array<String>] :principals
    #   <p>The principals to include in the cross-account attachment. A principal can be an Amazon Web Services account
    #   			number or the Amazon Resource Name (ARN) for an accelerator. </p>
    # @option params [Array<Types::Resource>] :resources
    #   <p>The Amazon Resource Names (ARNs) for the resources to include in the cross-account attachment. A resource can
    #   			be any supported Amazon Web Services resource type for Global Accelerator or a CIDR range for a
    #   			bring your own IP address (BYOIP) address pool. </p>
    # @option params [String] :idempotency_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency—that is, the
    #   			uniqueness—of the request.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Add tags for a cross-account attachment.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/tagging-in-global-accelerator.html">Tagging
    #   			in Global Accelerator</a> in the <i>Global Accelerator Developer Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "AttachmentName", # required
    #     principals: ["Principal"],
    #     resources: [
    #       {
    #         endpoint_id: "GenericString",
    #         cidr: "GenericString",
    #         region: "GenericString"
    #       }
    #     ],
    #     idempotency_token: "IdempotencyToken", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_cross_account_attachment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cross_account_attachment: {
    #       attachment_arn: "GenericString",
    #       name: "AttachmentName",
    #       principals: ["Principal"],
    #       resources: [
    #         {
    #           endpoint_id: "GenericString",
    #           cidr: "GenericString",
    #           region: "GenericString"
    #         }
    #       ],
    #       last_modified_time: Time.now,
    #       created_time: Time.now
    #     }
    #   }
    # @return [Types::CreateCrossAccountAttachmentResponse]
    def create_cross_account_attachment(params = {}, options = {})
      request = build_request(:create_cross_account_attachment, params)
      request.send_request(options)
    end

    # <p>Create a custom routing accelerator. A custom routing accelerator directs traffic to one of possibly thousands
    # 	    of Amazon EC2 instance destinations running in a single or multiple virtual private clouds (VPC) subnet endpoints.</p>
    #          <p>Be aware that, by default, all destination EC2 instances in a VPC subnet endpoint cannot receive
    # 			traffic. To enable all destinations to receive traffic, or to specify individual port
    # 			mappings that can receive traffic, see the <a href="https://docs.aws.amazon.com/global-accelerator/latest/api/API_AllowCustomRoutingTraffic.html">
    # 				AllowCustomRoutingTraffic</a> operation.</p>
    #          <important>
    #             <p>Global Accelerator is a global service that supports endpoints in multiple Amazon Web Services Regions but you must specify the 
    # 			US West (Oregon) Region to create, update, or otherwise work with accelerators.  That is, for example, specify <code>--region us-west-2</code>
    # 			on Amazon Web Services CLI commands.</p>
    #          </important>
    # @param [Hash, Types::CreateCustomRoutingAcceleratorRequest] params
    # @option params [String] :name
    #   <p>The name of a custom routing accelerator. The name can have a maximum of 64 characters, must contain 
    #   		only alphanumeric characters or hyphens (-), and must not begin or end with a hyphen.</p>
    # @option params [String] :ip_address_type
    #   <p>The IP address type that an accelerator supports. For a custom routing accelerator, the value must be IPV4.</p>
    # @option params [Array<String>] :ip_addresses
    #   <p>Optionally, if you've added your own IP address pool to Global Accelerator (BYOIP), you can choose an IPv4 address 
    #   			from your own pool to use for the accelerator's static IPv4 address when you create an accelerator. </p>
    #            <p>After you bring an address range to Amazon Web Services, it appears in your account as an address pool. 
    #   			When you create an accelerator, you can assign one IPv4 address from your range to it. Global Accelerator assigns 
    #   			you a second static IPv4 address from an Amazon IP address range. If you bring two IPv4 address ranges 
    #   			to Amazon Web Services, you can assign one IPv4 address from each range to your accelerator. This restriction is 
    #   			because Global Accelerator assigns each address range to a different network zone, for high availability.</p>
    #            <p>You can specify one or two addresses, separated by a space. Do not include the /32 suffix.</p>
    #            <p>Note that you can't update IP addresses for an existing accelerator. To change them, you must create a new 
    #   			accelerator with the new addresses.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html">Bring 
    #   			your own IP addresses (BYOIP)</a> in the <i>Global Accelerator Developer Guide</i>.</p>
    # @option params [Boolean] :enabled
    #   <p>Indicates whether an accelerator is enabled. The value is true or false. The default value is true. </p>
    #            <p>If the value is set to true, an accelerator cannot be deleted. If set to false, the accelerator can be deleted.</p>
    # @option params [String] :idempotency_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency—that
    #   			is, the uniqueness—of the request.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Create tags for an accelerator.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/tagging-in-global-accelerator.html">Tagging
    #   	    in Global Accelerator</a> in the <i>Global Accelerator Developer Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "GenericString", # required
    #     ip_address_type: "IPV4" # One of: ["IPV4", "DUAL_STACK"],
    #     ip_addresses: ["IpAddress"],
    #     enabled: false,
    #     idempotency_token: "IdempotencyToken", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_custom_routing_accelerator(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     accelerator: {
    #       accelerator_arn: "GenericString",
    #       name: "GenericString",
    #       ip_address_type: "IPV4" # One of: ["IPV4", "DUAL_STACK"],
    #       enabled: false,
    #       ip_sets: [
    #         {
    #           ip_family: "GenericString",
    #           ip_addresses: ["IpAddress"],
    #           ip_address_family: "IPv4" # One of: ["IPv4", "IPv6"]
    #         }
    #       ],
    #       dns_name: "GenericString",
    #       status: "DEPLOYED" # One of: ["DEPLOYED", "IN_PROGRESS"],
    #       created_time: Time.now,
    #       last_modified_time: Time.now
    #     }
    #   }
    # @return [Types::CreateCustomRoutingAcceleratorResponse]
    def create_custom_routing_accelerator(params = {}, options = {})
      request = build_request(:create_custom_routing_accelerator, params)
      request.send_request(options)
    end

    # <p>Create an endpoint group for the specified listener for a custom routing accelerator. 
    # 	    An endpoint group is a collection of endpoints in one Amazon Web Services
    # 		Region. </p>
    # @param [Hash, Types::CreateCustomRoutingEndpointGroupRequest] params
    # @option params [String] :listener_arn
    #   <p>The Amazon Resource Name (ARN) of the listener for a custom routing endpoint.</p>
    # @option params [String] :endpoint_group_region
    #   <p>The Amazon Web Services Region where the endpoint group is located. A listener can have only one endpoint group in a
    #   		specific Region.</p>
    # @option params [Array<Types::CustomRoutingDestinationConfiguration>] :destination_configurations
    #   <p>Sets the port range and protocol for all endpoints (virtual private cloud subnets) in a custom routing endpoint group to accept 
    #   		client traffic on.</p>
    # @option params [String] :idempotency_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency—that is, the
    #   		uniqueness—of the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     listener_arn: "GenericString", # required
    #     endpoint_group_region: "GenericString", # required
    #     destination_configurations: [ # required
    #       {
    #         from_port: 1, # required
    #         to_port: 1, # required
    #         protocols: ["TCP" # One of: ["TCP", "UDP"]], # required
    #       }
    #     ],
    #     idempotency_token: "IdempotencyToken", # required
    #   }
    #   options = {}
    #   response = client.create_custom_routing_endpoint_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     endpoint_group: {
    #       endpoint_group_arn: "GenericString",
    #       endpoint_group_region: "GenericString",
    #       destination_descriptions: [
    #         {
    #           from_port: 1,
    #           to_port: 1,
    #           protocols: ["TCP" # One of: ["TCP", "UDP"]]
    #         }
    #       ],
    #       endpoint_descriptions: [
    #         {
    #           endpoint_id: "GenericString"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::CreateCustomRoutingEndpointGroupResponse]
    def create_custom_routing_endpoint_group(params = {}, options = {})
      request = build_request(:create_custom_routing_endpoint_group, params)
      request.send_request(options)
    end

    # <p>Create a listener to process inbound connections from clients to a custom routing accelerator.
    # 			Connections arrive to assigned static IP addresses on the port range that you specify. </p>
    # @param [Hash, Types::CreateCustomRoutingListenerRequest] params
    # @option params [String] :accelerator_arn
    #   <p>The Amazon Resource Name (ARN) of the accelerator for a custom routing listener.</p>
    # @option params [Array<Types::PortRange>] :port_ranges
    #   <p>The port range to support for connections from clients to your accelerator.</p>
    #            <p>Separately, you set port ranges for endpoints. For more information, see <a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/about-custom-routing-endpoints.html">About 
    #   		endpoints for custom routing accelerators</a>.</p>
    # @option params [String] :idempotency_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency—that is, the
    #   		uniqueness—of the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     accelerator_arn: "GenericString", # required
    #     port_ranges: [ # required
    #       {
    #         from_port: 1,
    #         to_port: 1
    #       }
    #     ],
    #     idempotency_token: "IdempotencyToken", # required
    #   }
    #   options = {}
    #   response = client.create_custom_routing_listener(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     listener: {
    #       listener_arn: "GenericString",
    #       port_ranges: [
    #         {
    #           from_port: 1,
    #           to_port: 1
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::CreateCustomRoutingListenerResponse]
    def create_custom_routing_listener(params = {}, options = {})
      request = build_request(:create_custom_routing_listener, params)
      request.send_request(options)
    end

    # <p>Create an endpoint group for the specified listener. An endpoint group is a collection of endpoints in one Amazon Web Services
    # 			Region. A resource must be valid and active when you add it as an endpoint.</p>
    #          <p>For more information about endpoint types and requirements for endpoints that you can add
    # 				to Global Accelerator, see <a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/about-endpoints.html">
    # 					Endpoints for standard accelerators</a> in the <i>Global Accelerator Developer Guide</i>.</p>
    # @param [Hash, Types::CreateEndpointGroupRequest] params
    # @option params [String] :listener_arn
    #   <p>The Amazon Resource Name (ARN) of the listener.</p>
    # @option params [String] :endpoint_group_region
    #   <p>The Amazon Web Services Region where the endpoint group is located. A listener can have only one endpoint group in a
    #   			specific Region.</p>
    # @option params [Array<Types::EndpointConfiguration>] :endpoint_configurations
    #   <p>The list of endpoint objects.</p>
    # @option params [Float] :traffic_dial_percentage
    #   <p>The percentage of traffic to send to an Amazon Web Services Region. Additional traffic is distributed to other endpoint groups for
    #   			this listener. </p>
    #            <p>Use this action to increase (dial up) or decrease (dial down) traffic to a specific Region. The percentage is
    #   			applied to the traffic that would otherwise have been routed to the Region based on optimal routing.</p>
    #            <p>The default value is 100.</p>
    # @option params [Integer] :health_check_port
    #   <p>The port that Global Accelerator uses to check the health of endpoints that are part of this endpoint group. The default port
    #   	        is the listener port that this endpoint group is associated with. If listener port is a list of ports, Global Accelerator uses the
    #   			first port in the list.</p>
    # @option params [String] :health_check_protocol
    #   <p>The protocol that Global Accelerator uses to check the health of endpoints that are part of this endpoint group. The default
    #   			value is TCP.</p>
    # @option params [String] :health_check_path
    #   <p>If the protocol is HTTP/S, then this specifies the path that is the destination for health check targets. The
    #   			default value is slash (/).</p>
    # @option params [Integer] :health_check_interval_seconds
    #   <p>The time—10 seconds or 30 seconds—between each health check for an endpoint. The default value is 30.</p>
    # @option params [Integer] :threshold_count
    #   <p>The number of consecutive health checks required to set the state of a healthy endpoint to unhealthy, or to set an
    #   			unhealthy endpoint to healthy. The default value is 3.</p>
    # @option params [String] :idempotency_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency—that is, the
    #   			uniqueness—of the request.</p>
    # @option params [Array<Types::PortOverride>] :port_overrides
    #   <p>Override specific listener ports used to route traffic to endpoints that are part of this endpoint group.
    #   			For example, you can create a port override in which the listener 
    #   			receives user traffic on ports 80 and 443, but your accelerator routes that traffic to ports 1080 
    #   			and 1443, respectively, on the endpoints.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/about-endpoint-groups-port-override.html">
    #   			Overriding listener ports</a> in the <i>Global Accelerator Developer Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     listener_arn: "GenericString", # required
    #     endpoint_group_region: "GenericString", # required
    #     endpoint_configurations: [
    #       {
    #         endpoint_id: "GenericString",
    #         weight: 1,
    #         client_ip_preservation_enabled: false,
    #         attachment_arn: "GenericString"
    #       }
    #     ],
    #     traffic_dial_percentage: 1.0,
    #     health_check_port: 1,
    #     health_check_protocol: "TCP" # One of: ["TCP", "HTTP", "HTTPS"],
    #     health_check_path: "HealthCheckPath",
    #     health_check_interval_seconds: 1,
    #     threshold_count: 1,
    #     idempotency_token: "IdempotencyToken", # required
    #     port_overrides: [
    #       {
    #         listener_port: 1,
    #         endpoint_port: 1
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_endpoint_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     endpoint_group: {
    #       endpoint_group_arn: "GenericString",
    #       endpoint_group_region: "GenericString",
    #       endpoint_descriptions: [
    #         {
    #           endpoint_id: "GenericString",
    #           weight: 1,
    #           health_state: "INITIAL" # One of: ["INITIAL", "HEALTHY", "UNHEALTHY"],
    #           health_reason: "GenericString",
    #           client_ip_preservation_enabled: false
    #         }
    #       ],
    #       traffic_dial_percentage: 1.0,
    #       health_check_port: 1,
    #       health_check_protocol: "TCP" # One of: ["TCP", "HTTP", "HTTPS"],
    #       health_check_path: "HealthCheckPath",
    #       health_check_interval_seconds: 1,
    #       threshold_count: 1,
    #       port_overrides: [
    #         {
    #           listener_port: 1,
    #           endpoint_port: 1
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::CreateEndpointGroupResponse]
    def create_endpoint_group(params = {}, options = {})
      request = build_request(:create_endpoint_group, params)
      request.send_request(options)
    end

    # <p>Create a listener to process inbound connections from clients to an accelerator. Connections arrive to assigned static
    # 			IP addresses on a port, port range, or list of port ranges that you specify. </p>
    # @param [Hash, Types::CreateListenerRequest] params
    # @option params [String] :accelerator_arn
    #   <p>The Amazon Resource Name (ARN) of your accelerator.</p>
    # @option params [Array<Types::PortRange>] :port_ranges
    #   <p>The list of port ranges to support for connections from clients to your accelerator.</p>
    # @option params [String] :protocol
    #   <p>The protocol for connections from clients to your accelerator.</p>
    # @option params [String] :client_affinity
    #   <p>Client affinity lets you direct all requests from a user to the same endpoint, if you have stateful applications,
    #   			regardless of the port and protocol of the client request. Client affinity gives you control over whether to always
    #   			route each client to the same specific endpoint.</p>
    #            <p>Global Accelerator uses a consistent-flow hashing algorithm to choose the optimal endpoint for a connection. If client
    #   	        affinity is <code>NONE</code>, Global Accelerator uses the "five-tuple" (5-tuple) properties—source IP address, source port,
    #   			destination IP address, destination port, and protocol—to select the hash value, and then chooses the best
    #   			endpoint. However, with this setting, if someone uses different ports to connect to Global Accelerator, their connections might not
    #   			be always routed to the same endpoint because the hash value changes. </p>
    #            <p>If you want a given client to always be routed to the same endpoint, set client affinity to <code>SOURCE_IP</code>
    #   		    instead. When you use the <code>SOURCE_IP</code> setting, Global Accelerator uses the "two-tuple" (2-tuple) properties—
    #   			source (client) IP address and destination IP address—to select the hash value.</p>
    #            <p>The default value is <code>NONE</code>.</p>
    # @option params [String] :idempotency_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency—that is, the
    #   			uniqueness—of the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     accelerator_arn: "GenericString", # required
    #     port_ranges: [ # required
    #       {
    #         from_port: 1,
    #         to_port: 1
    #       }
    #     ],
    #     protocol: "TCP" # One of: ["TCP", "UDP"], # required
    #     client_affinity: "NONE" # One of: ["NONE", "SOURCE_IP"],
    #     idempotency_token: "IdempotencyToken", # required
    #   }
    #   options = {}
    #   response = client.create_listener(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     listener: {
    #       listener_arn: "GenericString",
    #       port_ranges: [
    #         {
    #           from_port: 1,
    #           to_port: 1
    #         }
    #       ],
    #       protocol: "TCP" # One of: ["TCP", "UDP"],
    #       client_affinity: "NONE" # One of: ["NONE", "SOURCE_IP"]
    #     }
    #   }
    # @return [Types::CreateListenerResponse]
    def create_listener(params = {}, options = {})
      request = build_request(:create_listener, params)
      request.send_request(options)
    end

    # <p>Delete an accelerator. Before you can delete an accelerator, you must disable it and remove all dependent resources
    # 			(listeners and endpoint groups). To disable the accelerator, update the accelerator to set <code>Enabled</code> to false.</p>
    #          <important>
    #             <p>When you create an accelerator, by default, Global Accelerator provides you with a set of two static IP addresses. 
    # 	        Alternatively, you can bring your own IP address ranges to Global Accelerator and assign IP addresses from those ranges. 
    # 		</p>
    #             <p>The IP addresses are assigned to your accelerator for as long as it exists, even if you disable the accelerator and
    # 			it no longer accepts or routes traffic. However, when you <i>delete</i> an accelerator, you lose the 
    # 			static IP addresses that are assigned to the accelerator, so you can no longer route traffic by using them.
    # 			As a best practice, ensure that you have permissions in place to avoid inadvertently deleting accelerators. You 
    # 			can use IAM policies with Global Accelerator to limit the users who have permissions to delete an accelerator. For more information, 
    # 			see <a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/auth-and-access-control.html">Identity and access management</a> in
    # 		    the <i>Global Accelerator Developer Guide</i>.</p>
    #          </important>
    # @param [Hash, Types::DeleteAcceleratorRequest] params
    # @option params [String] :accelerator_arn
    #   <p>The Amazon Resource Name (ARN) of an accelerator.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     accelerator_arn: "GenericString", # required
    #   }
    #   options = {}
    #   response = client.delete_accelerator(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_accelerator(params = {}, options = {})
      request = build_request(:delete_accelerator, params)
      request.send_request(options)
    end

    # <p>Delete a cross-account attachment. When you delete an attachment, Global Accelerator revokes the permission
    # 			to use the resources in the attachment from all principals in the list of principals. Global Accelerator 
    # 			revokes the permission for specific resources.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/cross-account-resources.html">
    # 			Working with cross-account attachments and resources in Global Accelerator</a> in the <i>
    # 				Global Accelerator Developer Guide</i>.</p>
    # @param [Hash, Types::DeleteCrossAccountAttachmentRequest] params
    # @option params [String] :attachment_arn
    #   <p>The Amazon Resource Name (ARN) for the cross-account attachment to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     attachment_arn: "GenericString", # required
    #   }
    #   options = {}
    #   response = client.delete_cross_account_attachment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_cross_account_attachment(params = {}, options = {})
      request = build_request(:delete_cross_account_attachment, params)
      request.send_request(options)
    end

    # <p>Delete a custom routing accelerator. Before you can delete an accelerator, you must disable it and remove all dependent resources
    # 		(listeners and endpoint groups). To disable the accelerator, update the accelerator to set <code>Enabled</code> to false.</p>
    #          <important>
    #             <p>When you create a custom routing accelerator, by default, Global Accelerator provides you with a set of two static IP addresses. 
    # 	</p>
    #             <p>The IP 
    # 			addresses are assigned to your accelerator for as long as it exists, even if you disable the accelerator and
    # 			it no longer accepts or routes traffic. However, when you <i>delete</i> an accelerator, you lose the 
    # 			static IP addresses that are assigned to the accelerator, so you can no longer route traffic by using them.
    # 			As a best practice, ensure that you have permissions in place to avoid inadvertently deleting accelerators. You 
    # 			can use IAM policies with Global Accelerator to limit the users who have permissions to delete an accelerator. For more information, 
    # 			see <a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/auth-and-access-control.html">Identity and access management</a> in
    # 		    the <i>Global Accelerator Developer Guide</i>.</p>
    #          </important>
    # @param [Hash, Types::DeleteCustomRoutingAcceleratorRequest] params
    # @option params [String] :accelerator_arn
    #   <p>The Amazon Resource Name (ARN) of the custom routing accelerator to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     accelerator_arn: "GenericString", # required
    #   }
    #   options = {}
    #   response = client.delete_custom_routing_accelerator(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_custom_routing_accelerator(params = {}, options = {})
      request = build_request(:delete_custom_routing_accelerator, params)
      request.send_request(options)
    end

    # <p>Delete an endpoint group from a listener for a custom routing accelerator.</p>
    # @param [Hash, Types::DeleteCustomRoutingEndpointGroupRequest] params
    # @option params [String] :endpoint_group_arn
    #   <p>The Amazon Resource Name (ARN) of the endpoint group to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     endpoint_group_arn: "GenericString", # required
    #   }
    #   options = {}
    #   response = client.delete_custom_routing_endpoint_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_custom_routing_endpoint_group(params = {}, options = {})
      request = build_request(:delete_custom_routing_endpoint_group, params)
      request.send_request(options)
    end

    # <p>Delete a listener for a custom routing accelerator.</p>
    # @param [Hash, Types::DeleteCustomRoutingListenerRequest] params
    # @option params [String] :listener_arn
    #   <p>The Amazon Resource Name (ARN) of the listener to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     listener_arn: "GenericString", # required
    #   }
    #   options = {}
    #   response = client.delete_custom_routing_listener(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_custom_routing_listener(params = {}, options = {})
      request = build_request(:delete_custom_routing_listener, params)
      request.send_request(options)
    end

    # <p>Delete an endpoint group from a listener.</p>
    # @param [Hash, Types::DeleteEndpointGroupRequest] params
    # @option params [String] :endpoint_group_arn
    #   <p>The Amazon Resource Name (ARN) of the endpoint group to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     endpoint_group_arn: "GenericString", # required
    #   }
    #   options = {}
    #   response = client.delete_endpoint_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_endpoint_group(params = {}, options = {})
      request = build_request(:delete_endpoint_group, params)
      request.send_request(options)
    end

    # <p>Delete a listener from an accelerator.</p>
    # @param [Hash, Types::DeleteListenerRequest] params
    # @option params [String] :listener_arn
    #   <p>The Amazon Resource Name (ARN) of the listener.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     listener_arn: "GenericString", # required
    #   }
    #   options = {}
    #   response = client.delete_listener(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_listener(params = {}, options = {})
      request = build_request(:delete_listener, params)
      request.send_request(options)
    end

    # <p>Specify the Amazon EC2 instance (destination) IP addresses and ports for a VPC subnet endpoint that cannot receive traffic 
    # 			for a custom routing accelerator. You can deny traffic to all destinations in the VPC endpoint, or deny traffic to a
    # 			specified list of destination IP addresses and ports. Note that you cannot specify IP addresses 
    # 			or ports outside of the range that you configured for the endpoint group.</p>
    #          <p>After you make changes, you can verify that the updates are complete by checking the status of your
    # 			accelerator: the status changes from IN_PROGRESS to DEPLOYED.</p>
    # @param [Hash, Types::DenyCustomRoutingTrafficRequest] params
    # @option params [String] :endpoint_group_arn
    #   <p>The Amazon Resource Name (ARN) of the endpoint group.</p>
    # @option params [String] :endpoint_id
    #   <p>An ID for the endpoint. For custom routing accelerators, this is the virtual private cloud (VPC) subnet ID.</p>
    # @option params [Array<String>] :destination_addresses
    #   <p>A list of specific Amazon EC2 instance IP addresses (destination addresses) in a subnet that you want to prevent from receiving 
    #   			traffic. The IP addresses must be a subset of the IP addresses allowed for the VPC subnet associated with the 
    #   			endpoint group.</p>
    # @option params [Array<Integer>] :destination_ports
    #   <p>A list of specific Amazon EC2 instance ports (destination ports) in a subnet endpoint that you want to prevent from 
    #   			receiving traffic.</p>
    # @option params [Boolean] :deny_all_traffic_to_endpoint
    #   <p>Indicates whether all destination IP addresses and ports for a specified VPC subnet endpoint <i>cannot</i> 
    #   			receive traffic from a custom routing accelerator. The value is TRUE or FALSE. </p>
    #            <p>When set to TRUE, <i>no</i> destinations in the custom routing VPC subnet can receive traffic. Note 
    #   			that you cannot specify destination IP addresses and ports when the value is set to TRUE.</p>
    #            <p>When set to FALSE (or not specified), you <i>must</i> specify a list of destination IP addresses that cannot receive
    #   			traffic. A list of ports is optional. If you don't specify a list of ports, the ports that can accept traffic is
    #   			the same as the ports configured for the endpoint group.</p>
    #            <p>The default value is FALSE.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     endpoint_group_arn: "GenericString", # required
    #     endpoint_id: "GenericString", # required
    #     destination_addresses: ["IpAddress"],
    #     destination_ports: [1],
    #     deny_all_traffic_to_endpoint: false
    #   }
    #   options = {}
    #   response = client.deny_custom_routing_traffic(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def deny_custom_routing_traffic(params = {}, options = {})
      request = build_request(:deny_custom_routing_traffic, params)
      request.send_request(options)
    end

    # <p>Releases the specified address range that you provisioned to use with your Amazon Web Services resources 
    # 			through bring your own IP addresses (BYOIP) and deletes the corresponding address pool. </p>
    #          <p>Before you can release an address range, you must stop advertising it by using <a href="https://docs.aws.amazon.com/global-accelerator/latest/api/WithdrawByoipCidr.html">WithdrawByoipCidr</a> and you must not have 
    # 			any accelerators that are using static IP addresses allocated from its address range.
    # 		</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html">Bring 
    # 			your own IP addresses (BYOIP)</a> in the <i>Global Accelerator Developer Guide</i>.</p>
    # @param [Hash, Types::DeprovisionByoipCidrRequest] params
    # @option params [String] :cidr
    #   <p>The address range, in CIDR notation. The prefix must be the same prefix that you specified 
    #   			when you provisioned the address range.</p>
    #            <p> For more information, see
    #   			<a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html">Bring your own IP addresses (BYOIP)</a> in 
    #   			the Global Accelerator Developer Guide.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cidr: "GenericString", # required
    #   }
    #   options = {}
    #   response = client.deprovision_byoip_cidr(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     byoip_cidr: {
    #       cidr: "GenericString",
    #       state: "PENDING_PROVISIONING" # One of: ["PENDING_PROVISIONING", "READY", "PENDING_ADVERTISING", "ADVERTISING", "PENDING_WITHDRAWING", "PENDING_DEPROVISIONING", "DEPROVISIONED", "FAILED_PROVISION", "FAILED_ADVERTISING", "FAILED_WITHDRAW", "FAILED_DEPROVISION"],
    #       events: [
    #         {
    #           message: "GenericString",
    #           timestamp: Time.now
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::DeprovisionByoipCidrResponse]
    def deprovision_byoip_cidr(params = {}, options = {})
      request = build_request(:deprovision_byoip_cidr, params)
      request.send_request(options)
    end

    # <p>Describe an accelerator. </p>
    # @param [Hash, Types::DescribeAcceleratorRequest] params
    # @option params [String] :accelerator_arn
    #   <p>The Amazon Resource Name (ARN) of the accelerator to describe.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     accelerator_arn: "GenericString", # required
    #   }
    #   options = {}
    #   response = client.describe_accelerator(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     accelerator: {
    #       accelerator_arn: "GenericString",
    #       name: "GenericString",
    #       ip_address_type: "IPV4" # One of: ["IPV4", "DUAL_STACK"],
    #       enabled: false,
    #       ip_sets: [
    #         {
    #           ip_family: "GenericString",
    #           ip_addresses: ["IpAddress"],
    #           ip_address_family: "IPv4" # One of: ["IPv4", "IPv6"]
    #         }
    #       ],
    #       dns_name: "GenericString",
    #       status: "DEPLOYED" # One of: ["DEPLOYED", "IN_PROGRESS"],
    #       created_time: Time.now,
    #       last_modified_time: Time.now,
    #       dual_stack_dns_name: "GenericString",
    #       events: [
    #         {
    #           message: "GenericString",
    #           timestamp: Time.now
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::DescribeAcceleratorResponse]
    def describe_accelerator(params = {}, options = {})
      request = build_request(:describe_accelerator, params)
      request.send_request(options)
    end

    # <p>Describe the attributes of an accelerator. 
    # 		</p>
    # @param [Hash, Types::DescribeAcceleratorAttributesRequest] params
    # @option params [String] :accelerator_arn
    #   <p>The Amazon Resource Name (ARN) of the accelerator with the attributes that you want to describe.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     accelerator_arn: "GenericString", # required
    #   }
    #   options = {}
    #   response = client.describe_accelerator_attributes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     accelerator_attributes: {
    #       flow_logs_enabled: false,
    #       flow_logs_s3_bucket: "GenericString",
    #       flow_logs_s3_prefix: "GenericString"
    #     }
    #   }
    # @return [Types::DescribeAcceleratorAttributesResponse]
    def describe_accelerator_attributes(params = {}, options = {})
      request = build_request(:describe_accelerator_attributes, params)
      request.send_request(options)
    end

    # <p>Gets configuration information about a cross-account attachment.</p>
    # @param [Hash, Types::DescribeCrossAccountAttachmentRequest] params
    # @option params [String] :attachment_arn
    #   <p>The Amazon Resource Name (ARN) for the cross-account attachment to describe.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     attachment_arn: "GenericString", # required
    #   }
    #   options = {}
    #   response = client.describe_cross_account_attachment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cross_account_attachment: {
    #       attachment_arn: "GenericString",
    #       name: "AttachmentName",
    #       principals: ["Principal"],
    #       resources: [
    #         {
    #           endpoint_id: "GenericString",
    #           cidr: "GenericString",
    #           region: "GenericString"
    #         }
    #       ],
    #       last_modified_time: Time.now,
    #       created_time: Time.now
    #     }
    #   }
    # @return [Types::DescribeCrossAccountAttachmentResponse]
    def describe_cross_account_attachment(params = {}, options = {})
      request = build_request(:describe_cross_account_attachment, params)
      request.send_request(options)
    end

    # <p>Describe a custom routing accelerator. </p>
    # @param [Hash, Types::DescribeCustomRoutingAcceleratorRequest] params
    # @option params [String] :accelerator_arn
    #   <p>The Amazon Resource Name (ARN) of the accelerator to describe.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     accelerator_arn: "GenericString", # required
    #   }
    #   options = {}
    #   response = client.describe_custom_routing_accelerator(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     accelerator: {
    #       accelerator_arn: "GenericString",
    #       name: "GenericString",
    #       ip_address_type: "IPV4" # One of: ["IPV4", "DUAL_STACK"],
    #       enabled: false,
    #       ip_sets: [
    #         {
    #           ip_family: "GenericString",
    #           ip_addresses: ["IpAddress"],
    #           ip_address_family: "IPv4" # One of: ["IPv4", "IPv6"]
    #         }
    #       ],
    #       dns_name: "GenericString",
    #       status: "DEPLOYED" # One of: ["DEPLOYED", "IN_PROGRESS"],
    #       created_time: Time.now,
    #       last_modified_time: Time.now
    #     }
    #   }
    # @return [Types::DescribeCustomRoutingAcceleratorResponse]
    def describe_custom_routing_accelerator(params = {}, options = {})
      request = build_request(:describe_custom_routing_accelerator, params)
      request.send_request(options)
    end

    # <p>Describe the attributes of a custom routing accelerator. </p>
    # @param [Hash, Types::DescribeCustomRoutingAcceleratorAttributesRequest] params
    # @option params [String] :accelerator_arn
    #   <p>The Amazon Resource Name (ARN) of the custom routing accelerator to describe the attributes for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     accelerator_arn: "GenericString", # required
    #   }
    #   options = {}
    #   response = client.describe_custom_routing_accelerator_attributes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     accelerator_attributes: {
    #       flow_logs_enabled: false,
    #       flow_logs_s3_bucket: "GenericString",
    #       flow_logs_s3_prefix: "GenericString"
    #     }
    #   }
    # @return [Types::DescribeCustomRoutingAcceleratorAttributesResponse]
    def describe_custom_routing_accelerator_attributes(params = {}, options = {})
      request = build_request(:describe_custom_routing_accelerator_attributes, params)
      request.send_request(options)
    end

    # <p>Describe an endpoint group for a custom routing accelerator. </p>
    # @param [Hash, Types::DescribeCustomRoutingEndpointGroupRequest] params
    # @option params [String] :endpoint_group_arn
    #   <p>The Amazon Resource Name (ARN) of the endpoint group to describe.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     endpoint_group_arn: "GenericString", # required
    #   }
    #   options = {}
    #   response = client.describe_custom_routing_endpoint_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     endpoint_group: {
    #       endpoint_group_arn: "GenericString",
    #       endpoint_group_region: "GenericString",
    #       destination_descriptions: [
    #         {
    #           from_port: 1,
    #           to_port: 1,
    #           protocols: ["TCP" # One of: ["TCP", "UDP"]]
    #         }
    #       ],
    #       endpoint_descriptions: [
    #         {
    #           endpoint_id: "GenericString"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::DescribeCustomRoutingEndpointGroupResponse]
    def describe_custom_routing_endpoint_group(params = {}, options = {})
      request = build_request(:describe_custom_routing_endpoint_group, params)
      request.send_request(options)
    end

    # <p>The description of a listener for a custom routing accelerator.</p>
    # @param [Hash, Types::DescribeCustomRoutingListenerRequest] params
    # @option params [String] :listener_arn
    #   <p>The Amazon Resource Name (ARN) of the listener to describe.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     listener_arn: "GenericString", # required
    #   }
    #   options = {}
    #   response = client.describe_custom_routing_listener(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     listener: {
    #       listener_arn: "GenericString",
    #       port_ranges: [
    #         {
    #           from_port: 1,
    #           to_port: 1
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::DescribeCustomRoutingListenerResponse]
    def describe_custom_routing_listener(params = {}, options = {})
      request = build_request(:describe_custom_routing_listener, params)
      request.send_request(options)
    end

    # <p>Describe an endpoint group. </p>
    # @param [Hash, Types::DescribeEndpointGroupRequest] params
    # @option params [String] :endpoint_group_arn
    #   <p>The Amazon Resource Name (ARN) of the endpoint group to describe.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     endpoint_group_arn: "GenericString", # required
    #   }
    #   options = {}
    #   response = client.describe_endpoint_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     endpoint_group: {
    #       endpoint_group_arn: "GenericString",
    #       endpoint_group_region: "GenericString",
    #       endpoint_descriptions: [
    #         {
    #           endpoint_id: "GenericString",
    #           weight: 1,
    #           health_state: "INITIAL" # One of: ["INITIAL", "HEALTHY", "UNHEALTHY"],
    #           health_reason: "GenericString",
    #           client_ip_preservation_enabled: false
    #         }
    #       ],
    #       traffic_dial_percentage: 1.0,
    #       health_check_port: 1,
    #       health_check_protocol: "TCP" # One of: ["TCP", "HTTP", "HTTPS"],
    #       health_check_path: "HealthCheckPath",
    #       health_check_interval_seconds: 1,
    #       threshold_count: 1,
    #       port_overrides: [
    #         {
    #           listener_port: 1,
    #           endpoint_port: 1
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::DescribeEndpointGroupResponse]
    def describe_endpoint_group(params = {}, options = {})
      request = build_request(:describe_endpoint_group, params)
      request.send_request(options)
    end

    # <p>Describe a listener. </p>
    # @param [Hash, Types::DescribeListenerRequest] params
    # @option params [String] :listener_arn
    #   <p>The Amazon Resource Name (ARN) of the listener to describe.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     listener_arn: "GenericString", # required
    #   }
    #   options = {}
    #   response = client.describe_listener(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     listener: {
    #       listener_arn: "GenericString",
    #       port_ranges: [
    #         {
    #           from_port: 1,
    #           to_port: 1
    #         }
    #       ],
    #       protocol: "TCP" # One of: ["TCP", "UDP"],
    #       client_affinity: "NONE" # One of: ["NONE", "SOURCE_IP"]
    #     }
    #   }
    # @return [Types::DescribeListenerResponse]
    def describe_listener(params = {}, options = {})
      request = build_request(:describe_listener, params)
      request.send_request(options)
    end

    # <p>List the accelerators for an Amazon Web Services account. </p>
    # @param [Hash, Types::ListAcceleratorsRequest] params
    # @option params [Integer] :max_results
    #   <p>The number of Global Accelerator objects that you want to return with this call. The default value is 10.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. You receive this token from a previous call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "GenericString"
    #   }
    #   options = {}
    #   response = client.list_accelerators(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     accelerators: [
    #       {
    #         accelerator_arn: "GenericString",
    #         name: "GenericString",
    #         ip_address_type: "IPV4" # One of: ["IPV4", "DUAL_STACK"],
    #         enabled: false,
    #         ip_sets: [
    #           {
    #             ip_family: "GenericString",
    #             ip_addresses: ["IpAddress"],
    #             ip_address_family: "IPv4" # One of: ["IPv4", "IPv6"]
    #           }
    #         ],
    #         dns_name: "GenericString",
    #         status: "DEPLOYED" # One of: ["DEPLOYED", "IN_PROGRESS"],
    #         created_time: Time.now,
    #         last_modified_time: Time.now,
    #         dual_stack_dns_name: "GenericString",
    #         events: [
    #           {
    #             message: "GenericString",
    #             timestamp: Time.now
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "GenericString"
    #   }
    # @return [Types::ListAcceleratorsResponse]
    def list_accelerators(params = {}, options = {})
      request = build_request(:list_accelerators, params)
      request.send_request(options)
    end

    # <p>Lists the IP address ranges that were specified in calls to <a href="https://docs.aws.amazon.com/global-accelerator/latest/api/ProvisionByoipCidr.html">ProvisionByoipCidr</a>, including
    # 			the current state and a history of state changes.</p>
    # @param [Hash, Types::ListByoipCidrsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return with a single call. To retrieve the remaining results, make
    #   			another call with the returned <code>nextToken</code> value.</p>
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "GenericString"
    #   }
    #   options = {}
    #   response = client.list_byoip_cidrs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     byoip_cidrs: [
    #       {
    #         cidr: "GenericString",
    #         state: "PENDING_PROVISIONING" # One of: ["PENDING_PROVISIONING", "READY", "PENDING_ADVERTISING", "ADVERTISING", "PENDING_WITHDRAWING", "PENDING_DEPROVISIONING", "DEPROVISIONED", "FAILED_PROVISION", "FAILED_ADVERTISING", "FAILED_WITHDRAW", "FAILED_DEPROVISION"],
    #         events: [
    #           {
    #             message: "GenericString",
    #             timestamp: Time.now
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "GenericString"
    #   }
    # @return [Types::ListByoipCidrsResponse]
    def list_byoip_cidrs(params = {}, options = {})
      request = build_request(:list_byoip_cidrs, params)
      request.send_request(options)
    end

    # <p>List the cross-account attachments that have been created in Global Accelerator.</p>
    # @param [Hash, Types::ListCrossAccountAttachmentsRequest] params
    # @option params [Integer] :max_results
    #   <p>The number of cross-account attachment objects that you want to return with this call. The default value is 10.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. You receive this token from a previous call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "GenericString"
    #   }
    #   options = {}
    #   response = client.list_cross_account_attachments(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cross_account_attachments: [
    #       {
    #         attachment_arn: "GenericString",
    #         name: "AttachmentName",
    #         principals: ["Principal"],
    #         resources: [
    #           {
    #             endpoint_id: "GenericString",
    #             cidr: "GenericString",
    #             region: "GenericString"
    #           }
    #         ],
    #         last_modified_time: Time.now,
    #         created_time: Time.now
    #       }
    #     ],
    #     next_token: "GenericString"
    #   }
    # @return [Types::ListCrossAccountAttachmentsResponse]
    def list_cross_account_attachments(params = {}, options = {})
      request = build_request(:list_cross_account_attachments, params)
      request.send_request(options)
    end

    # <p>List the accounts that have cross-account resources.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/cross-account-resources.html">
    # 			Working with cross-account attachments and resources in Global Accelerator</a> in the <i>
    # 				Global Accelerator Developer Guide</i>.</p>
    # @param [Hash, Types::ListCrossAccountResourceAccountsRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.list_cross_account_resource_accounts(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_owner_aws_account_ids: ["AwsAccountId"]
    #   }
    # @return [Types::ListCrossAccountResourceAccountsResponse]
    def list_cross_account_resource_accounts(params = {}, options = {})
      request = build_request(:list_cross_account_resource_accounts, params)
      request.send_request(options)
    end

    # <p>List the cross-account resources available to work with.</p>
    # @param [Hash, Types::ListCrossAccountResourcesRequest] params
    # @option params [String] :accelerator_arn
    #   <p>The Amazon Resource Name (ARN) of an accelerator in a cross-account attachment.</p>
    # @option params [String] :resource_owner_aws_account_id
    #   <p>The account ID of a resource owner in a cross-account attachment.</p>
    # @option params [Integer] :max_results
    #   <p>The number of cross-account resource objects that you want to return with this call. The default value is 10.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. You receive this token from a previous call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     accelerator_arn: "GenericString",
    #     resource_owner_aws_account_id: "AwsAccountId", # required
    #     max_results: 1,
    #     next_token: "GenericString"
    #   }
    #   options = {}
    #   response = client.list_cross_account_resources(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cross_account_resources: [
    #       {
    #         endpoint_id: "GenericString",
    #         cidr: "GenericString",
    #         attachment_arn: "GenericString"
    #       }
    #     ],
    #     next_token: "GenericString"
    #   }
    # @return [Types::ListCrossAccountResourcesResponse]
    def list_cross_account_resources(params = {}, options = {})
      request = build_request(:list_cross_account_resources, params)
      request.send_request(options)
    end

    # <p>List the custom routing accelerators for an Amazon Web Services account. </p>
    # @param [Hash, Types::ListCustomRoutingAcceleratorsRequest] params
    # @option params [Integer] :max_results
    #   <p>The number of custom routing Global Accelerator objects that you want to return with this call. The default value is 10.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. You receive this token from a previous call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "GenericString"
    #   }
    #   options = {}
    #   response = client.list_custom_routing_accelerators(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     accelerators: [
    #       {
    #         accelerator_arn: "GenericString",
    #         name: "GenericString",
    #         ip_address_type: "IPV4" # One of: ["IPV4", "DUAL_STACK"],
    #         enabled: false,
    #         ip_sets: [
    #           {
    #             ip_family: "GenericString",
    #             ip_addresses: ["IpAddress"],
    #             ip_address_family: "IPv4" # One of: ["IPv4", "IPv6"]
    #           }
    #         ],
    #         dns_name: "GenericString",
    #         status: "DEPLOYED" # One of: ["DEPLOYED", "IN_PROGRESS"],
    #         created_time: Time.now,
    #         last_modified_time: Time.now
    #       }
    #     ],
    #     next_token: "GenericString"
    #   }
    # @return [Types::ListCustomRoutingAcceleratorsResponse]
    def list_custom_routing_accelerators(params = {}, options = {})
      request = build_request(:list_custom_routing_accelerators, params)
      request.send_request(options)
    end

    # <p>List the endpoint groups that are associated with a listener for a custom routing accelerator. </p>
    # @param [Hash, Types::ListCustomRoutingEndpointGroupsRequest] params
    # @option params [String] :listener_arn
    #   <p>The Amazon Resource Name (ARN) of the listener to list endpoint groups for.</p>
    # @option params [Integer] :max_results
    #   <p>The number of endpoint group objects that you want to return with this call. The default value is 10.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. You receive this token from a previous call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     listener_arn: "GenericString", # required
    #     max_results: 1,
    #     next_token: "GenericString"
    #   }
    #   options = {}
    #   response = client.list_custom_routing_endpoint_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     endpoint_groups: [
    #       {
    #         endpoint_group_arn: "GenericString",
    #         endpoint_group_region: "GenericString",
    #         destination_descriptions: [
    #           {
    #             from_port: 1,
    #             to_port: 1,
    #             protocols: ["TCP" # One of: ["TCP", "UDP"]]
    #           }
    #         ],
    #         endpoint_descriptions: [
    #           {
    #             endpoint_id: "GenericString"
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "GenericString"
    #   }
    # @return [Types::ListCustomRoutingEndpointGroupsResponse]
    def list_custom_routing_endpoint_groups(params = {}, options = {})
      request = build_request(:list_custom_routing_endpoint_groups, params)
      request.send_request(options)
    end

    # <p>List the listeners for a custom routing accelerator. </p>
    # @param [Hash, Types::ListCustomRoutingListenersRequest] params
    # @option params [String] :accelerator_arn
    #   <p>The Amazon Resource Name (ARN) of the accelerator to list listeners for.</p>
    # @option params [Integer] :max_results
    #   <p>The number of listener objects that you want to return with this call. The default value is 10.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. You receive this token from a previous call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     accelerator_arn: "GenericString", # required
    #     max_results: 1,
    #     next_token: "GenericString"
    #   }
    #   options = {}
    #   response = client.list_custom_routing_listeners(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     listeners: [
    #       {
    #         listener_arn: "GenericString",
    #         port_ranges: [
    #           {
    #             from_port: 1,
    #             to_port: 1
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "GenericString"
    #   }
    # @return [Types::ListCustomRoutingListenersResponse]
    def list_custom_routing_listeners(params = {}, options = {})
      request = build_request(:list_custom_routing_listeners, params)
      request.send_request(options)
    end

    # <p>Provides a complete mapping from the public accelerator IP address and port to destination EC2 instance
    # 		IP addresses and ports in the virtual public cloud (VPC) subnet endpoint for a custom routing accelerator.
    # 		For each subnet endpoint that you add, Global Accelerator creates a new static port mapping for the accelerator. The port 
    # 	    mappings don't change after Global Accelerator generates them, so you can retrieve and cache the full mapping on your servers. </p>
    #          <p>If you remove a subnet from your accelerator, Global Accelerator removes (reclaims) the port mappings. If you add a subnet to 
    #         your accelerator, Global Accelerator creates new port mappings (the existing ones don't change). If you add or remove EC2 instances
    #         in your subnet, the port mappings don't change, because the mappings are created when you add the subnet to Global Accelerator.</p>
    #          <p>The mappings also include a flag for each destination denoting which destination IP addresses and
    # 		ports are allowed or denied traffic.</p>
    # @param [Hash, Types::ListCustomRoutingPortMappingsRequest] params
    # @option params [String] :accelerator_arn
    #   <p>The Amazon Resource Name (ARN) of the accelerator to list the custom routing port mappings for.</p>
    # @option params [String] :endpoint_group_arn
    #   <p>The Amazon Resource Name (ARN) of the endpoint group to list the custom routing port mappings for.</p>
    # @option params [Integer] :max_results
    #   <p>The number of destination port mappings that you want to return with this call. The default value is 10.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. You receive this token from a previous call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     accelerator_arn: "GenericString", # required
    #     endpoint_group_arn: "GenericString",
    #     max_results: 1,
    #     next_token: "GenericString"
    #   }
    #   options = {}
    #   response = client.list_custom_routing_port_mappings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     port_mappings: [
    #       {
    #         accelerator_port: 1,
    #         endpoint_group_arn: "GenericString",
    #         endpoint_id: "GenericString",
    #         destination_socket_address: {
    #           ip_address: "GenericString",
    #           port: 1
    #         },
    #         protocols: ["TCP" # One of: ["TCP", "UDP"]],
    #         destination_traffic_state: "ALLOW" # One of: ["ALLOW", "DENY"]
    #       }
    #     ],
    #     next_token: "GenericString"
    #   }
    # @return [Types::ListCustomRoutingPortMappingsResponse]
    def list_custom_routing_port_mappings(params = {}, options = {})
      request = build_request(:list_custom_routing_port_mappings, params)
      request.send_request(options)
    end

    # <p>List the port mappings for a specific EC2 instance (destination) in a VPC subnet endpoint. The
    # 			response is the mappings for one destination IP address. This is useful when your subnet endpoint has mappings that 
    # 			span multiple custom routing accelerators in your account, or for scenarios where you only want to
    # 			list the port mappings for a specific destination instance.</p>
    # @param [Hash, Types::ListCustomRoutingPortMappingsByDestinationRequest] params
    # @option params [String] :endpoint_id
    #   <p>The ID for the virtual private cloud (VPC) subnet.</p>
    # @option params [String] :destination_address
    #   <p>The endpoint IP address in a virtual private cloud (VPC) subnet for which you want to receive back port
    #   		mappings.</p>
    # @option params [Integer] :max_results
    #   <p>The number of destination port mappings that you want to return with this call. The default value is 10.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. You receive this token from a previous call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     endpoint_id: "GenericString", # required
    #     destination_address: "GenericString", # required
    #     max_results: 1,
    #     next_token: "GenericString"
    #   }
    #   options = {}
    #   response = client.list_custom_routing_port_mappings_by_destination(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     destination_port_mappings: [
    #       {
    #         accelerator_arn: "GenericString",
    #         accelerator_socket_addresses: [
    #           {
    #             ip_address: "GenericString",
    #             port: 1
    #           }
    #         ],
    #         endpoint_group_arn: "GenericString",
    #         endpoint_id: "GenericString",
    #         endpoint_group_region: "GenericString",
    #         destination_socket_address: {
    #           ip_address: "GenericString",
    #           port: 1
    #         },
    #         ip_address_type: "IPV4" # One of: ["IPV4", "DUAL_STACK"],
    #         destination_traffic_state: "ALLOW" # One of: ["ALLOW", "DENY"]
    #       }
    #     ],
    #     next_token: "GenericString"
    #   }
    # @return [Types::ListCustomRoutingPortMappingsByDestinationResponse]
    def list_custom_routing_port_mappings_by_destination(params = {}, options = {})
      request = build_request(:list_custom_routing_port_mappings_by_destination, params)
      request.send_request(options)
    end

    # <p>List the endpoint groups that are associated with a listener. </p>
    # @param [Hash, Types::ListEndpointGroupsRequest] params
    # @option params [String] :listener_arn
    #   <p>The Amazon Resource Name (ARN) of the listener.</p>
    # @option params [Integer] :max_results
    #   <p>The number of endpoint group objects that you want to return with this call. The default value is 10.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. You receive this token from a previous call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     listener_arn: "GenericString", # required
    #     max_results: 1,
    #     next_token: "GenericString"
    #   }
    #   options = {}
    #   response = client.list_endpoint_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     endpoint_groups: [
    #       {
    #         endpoint_group_arn: "GenericString",
    #         endpoint_group_region: "GenericString",
    #         endpoint_descriptions: [
    #           {
    #             endpoint_id: "GenericString",
    #             weight: 1,
    #             health_state: "INITIAL" # One of: ["INITIAL", "HEALTHY", "UNHEALTHY"],
    #             health_reason: "GenericString",
    #             client_ip_preservation_enabled: false
    #           }
    #         ],
    #         traffic_dial_percentage: 1.0,
    #         health_check_port: 1,
    #         health_check_protocol: "TCP" # One of: ["TCP", "HTTP", "HTTPS"],
    #         health_check_path: "HealthCheckPath",
    #         health_check_interval_seconds: 1,
    #         threshold_count: 1,
    #         port_overrides: [
    #           {
    #             listener_port: 1,
    #             endpoint_port: 1
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "GenericString"
    #   }
    # @return [Types::ListEndpointGroupsResponse]
    def list_endpoint_groups(params = {}, options = {})
      request = build_request(:list_endpoint_groups, params)
      request.send_request(options)
    end

    # <p>List the listeners for an accelerator. </p>
    # @param [Hash, Types::ListListenersRequest] params
    # @option params [String] :accelerator_arn
    #   <p>The Amazon Resource Name (ARN) of the accelerator for which you want to list listener objects.</p>
    # @option params [Integer] :max_results
    #   <p>The number of listener objects that you want to return with this call. The default value is 10.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. You receive this token from a previous call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     accelerator_arn: "GenericString", # required
    #     max_results: 1,
    #     next_token: "GenericString"
    #   }
    #   options = {}
    #   response = client.list_listeners(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     listeners: [
    #       {
    #         listener_arn: "GenericString",
    #         port_ranges: [
    #           {
    #             from_port: 1,
    #             to_port: 1
    #           }
    #         ],
    #         protocol: "TCP" # One of: ["TCP", "UDP"],
    #         client_affinity: "NONE" # One of: ["NONE", "SOURCE_IP"]
    #       }
    #     ],
    #     next_token: "GenericString"
    #   }
    # @return [Types::ListListenersResponse]
    def list_listeners(params = {}, options = {})
      request = build_request(:list_listeners, params)
      request.send_request(options)
    end

    # <p>List all tags for an accelerator. </p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/tagging-in-global-accelerator.html">Tagging
    # 		    in Global Accelerator</a> in the <i>Global Accelerator Developer Guide</i>. </p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the accelerator to list tags for. An ARN uniquely identifies an accelerator.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
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
    #     ]
    #   }
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Provisions an IP address range to use with your Amazon Web Services resources through bring your own IP
    # 			addresses (BYOIP) and creates a corresponding address pool. After the address range is provisioned, 
    # 			it is ready to be advertised using <a href="https://docs.aws.amazon.com/global-accelerator/latest/api/AdvertiseByoipCidr.html">
    # 			AdvertiseByoipCidr</a>.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html">Bring your own 
    # 			IP addresses (BYOIP)</a> in the <i>Global Accelerator Developer Guide</i>.</p>
    # @param [Hash, Types::ProvisionByoipCidrRequest] params
    # @option params [String] :cidr
    #   <p>The public IPv4 address range, in CIDR notation. The most specific IP prefix that you can
    #   			specify is /24. The address range cannot overlap with another address range that you've brought 
    #   			to this Amazon Web Services Region or another Region.</p>
    #            <p> For more information, see
    #   			<a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html">Bring your own IP addresses (BYOIP)</a> in 
    #   			the Global Accelerator Developer Guide.</p>
    # @option params [Types::CidrAuthorizationContext] :cidr_authorization_context
    #   <p>A signed document that proves that you are authorized to bring the specified IP address range to
    #   			Amazon using BYOIP.
    #   		</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cidr: "GenericString", # required
    #     cidr_authorization_context: { # required
    #       message: "GenericString", # required
    #       signature: "GenericString", # required
    #     }
    #   }
    #   options = {}
    #   response = client.provision_byoip_cidr(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     byoip_cidr: {
    #       cidr: "GenericString",
    #       state: "PENDING_PROVISIONING" # One of: ["PENDING_PROVISIONING", "READY", "PENDING_ADVERTISING", "ADVERTISING", "PENDING_WITHDRAWING", "PENDING_DEPROVISIONING", "DEPROVISIONED", "FAILED_PROVISION", "FAILED_ADVERTISING", "FAILED_WITHDRAW", "FAILED_DEPROVISION"],
    #       events: [
    #         {
    #           message: "GenericString",
    #           timestamp: Time.now
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::ProvisionByoipCidrResponse]
    def provision_byoip_cidr(params = {}, options = {})
      request = build_request(:provision_byoip_cidr, params)
      request.send_request(options)
    end

    # <p>Remove endpoints from a custom routing accelerator.</p>
    # @param [Hash, Types::RemoveCustomRoutingEndpointsRequest] params
    # @option params [Array<String>] :endpoint_ids
    #   <p>The IDs for the endpoints. For custom routing accelerators, endpoint IDs are the virtual private cloud (VPC)
    #   		subnet IDs. </p>
    # @option params [String] :endpoint_group_arn
    #   <p>The Amazon Resource Name (ARN) of the endpoint group to remove endpoints from.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     endpoint_ids: ["GenericString"], # required
    #     endpoint_group_arn: "GenericString", # required
    #   }
    #   options = {}
    #   response = client.remove_custom_routing_endpoints(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def remove_custom_routing_endpoints(params = {}, options = {})
      request = build_request(:remove_custom_routing_endpoints, params)
      request.send_request(options)
    end

    # <p>Remove endpoints from an endpoint group. </p>
    #          <p>The <code>RemoveEndpoints</code> API operation is the recommended option for removing endpoints. The alternative is to remove
    # 			endpoints by updating an endpoint group by using the 
    # 			<a href="https://docs.aws.amazon.com/global-accelerator/latest/api/API_UpdateEndpointGroup.html">UpdateEndpointGroup</a>
    # 			API operation. There are two advantages to using <code>AddEndpoints</code> to remove endpoints instead:</p>
    #          <ul>
    #             <li>
    #                <p>It's more convenient, because you only need to specify the endpoints that you want to remove. With the 
    # 				<code>UpdateEndpointGroup</code> API operation, you must specify all of the endpoints in the 
    # 				endpoint group except the ones that you want to remove from the group.</p>
    #             </li>
    #             <li>
    #                <p>It's faster, because Global Accelerator doesn't need to resolve any endpoints. With the 
    # 				<code>UpdateEndpointGroup</code> API operation, Global Accelerator must resolve all of the endpoints that
    # 				remain in the group.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::RemoveEndpointsRequest] params
    # @option params [Array<Types::EndpointIdentifier>] :endpoint_identifiers
    #   <p>The identifiers of the endpoints that you want to remove.</p>
    # @option params [String] :endpoint_group_arn
    #   <p>The Amazon Resource Name (ARN) of the endpoint group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     endpoint_identifiers: [ # required
    #       {
    #         endpoint_id: "GenericString", # required
    #         client_ip_preservation_enabled: false
    #       }
    #     ],
    #     endpoint_group_arn: "GenericString", # required
    #   }
    #   options = {}
    #   response = client.remove_endpoints(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def remove_endpoints(params = {}, options = {})
      request = build_request(:remove_endpoints, params)
      request.send_request(options)
    end

    # <p>Add tags to an accelerator resource. </p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/tagging-in-global-accelerator.html">Tagging
    # 		    in Global Accelerator</a> in the <i>Global Accelerator Developer Guide</i>. </p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Global Accelerator resource to add tags to. An ARN uniquely identifies a resource.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags to add to a resource. A tag consists of a key and a value that you define.</p>
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

    # <p>Remove tags from a Global Accelerator resource. When you specify a tag key, the action removes both that key and its associated value.
    # 			The operation succeeds even if you attempt to remove tags from an accelerator that was already removed.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/tagging-in-global-accelerator.html">Tagging
    # 		    in Global Accelerator</a> in the <i>Global Accelerator Developer Guide</i>.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Global Accelerator resource to remove tags from. An ARN uniquely identifies a resource.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The tag key pairs that you want to remove from the specified resources.</p>
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

    # <p>Update an accelerator to make changes, such as the following: </p>
    #          <ul>
    #             <li>
    #                <p>Change the name of the accelerator.</p>
    #             </li>
    #             <li>
    #                <p>Disable the accelerator so that it no longer accepts or routes traffic, or so that you can delete it.</p>
    #             </li>
    #             <li>
    #                <p>Enable the accelerator, if it is disabled.</p>
    #             </li>
    #             <li>
    #                <p>Change the IP address type to dual-stack if it is IPv4, or change the IP address type to IPv4 if it's dual-stack.</p>
    #             </li>
    #          </ul>
    #          <p>Be aware that static IP addresses remain assigned to your accelerator for as long as it exists, even if you disable the accelerator and it no 
    # 			longer accepts or routes traffic. However, when you delete the accelerator, you lose the static IP addresses that are assigned to it, so you 
    # 			can no longer route traffic by using them.</p>
    #          <important>
    #             <p>Global Accelerator is a global service that supports endpoints in multiple Amazon Web Services Regions but you must specify the 
    # 				US West (Oregon) Region to create, update, or otherwise work with accelerators.  That is, for example, specify <code>--region us-west-2</code>
    # 				on Amazon Web Services CLI commands.</p>
    #          </important>
    # @param [Hash, Types::UpdateAcceleratorRequest] params
    # @option params [String] :accelerator_arn
    #   <p>The Amazon Resource Name (ARN) of the accelerator to update.</p>
    # @option params [String] :name
    #   <p>The name of the accelerator. The name can have a maximum of 64 characters, must contain only alphanumeric characters, 
    #   			periods (.), or hyphens (-), and must not begin or end with a hyphen or period.</p>
    # @option params [String] :ip_address_type
    #   <p>The IP address type that an accelerator supports. For a standard accelerator, the value can be IPV4 or DUAL_STACK.</p>
    # @option params [Array<String>] :ip_addresses
    #   <p>The IP addresses for an accelerator.</p>
    # @option params [Boolean] :enabled
    #   <p>Indicates whether an accelerator is enabled. The value is true or false. The default value is true. </p>
    #            <p>If the value is set to true, the accelerator cannot be deleted. If set to false, the accelerator can be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     accelerator_arn: "GenericString", # required
    #     name: "GenericString",
    #     ip_address_type: "IPV4" # One of: ["IPV4", "DUAL_STACK"],
    #     ip_addresses: ["IpAddress"],
    #     enabled: false
    #   }
    #   options = {}
    #   response = client.update_accelerator(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     accelerator: {
    #       accelerator_arn: "GenericString",
    #       name: "GenericString",
    #       ip_address_type: "IPV4" # One of: ["IPV4", "DUAL_STACK"],
    #       enabled: false,
    #       ip_sets: [
    #         {
    #           ip_family: "GenericString",
    #           ip_addresses: ["IpAddress"],
    #           ip_address_family: "IPv4" # One of: ["IPv4", "IPv6"]
    #         }
    #       ],
    #       dns_name: "GenericString",
    #       status: "DEPLOYED" # One of: ["DEPLOYED", "IN_PROGRESS"],
    #       created_time: Time.now,
    #       last_modified_time: Time.now,
    #       dual_stack_dns_name: "GenericString",
    #       events: [
    #         {
    #           message: "GenericString",
    #           timestamp: Time.now
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::UpdateAcceleratorResponse]
    def update_accelerator(params = {}, options = {})
      request = build_request(:update_accelerator, params)
      request.send_request(options)
    end

    # <p>Update the attributes for an accelerator. </p>
    # @param [Hash, Types::UpdateAcceleratorAttributesRequest] params
    # @option params [String] :accelerator_arn
    #   <p>The Amazon Resource Name (ARN) of the accelerator that you want to update.</p>
    # @option params [Boolean] :flow_logs_enabled
    #   <p>Update whether flow logs are enabled. The default value is false. If the value is true,
    #   				<code>FlowLogsS3Bucket</code> and <code>FlowLogsS3Prefix</code> must be specified.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/monitoring-global-accelerator.flow-logs.html">Flow Logs</a> in
    #   		    the <i>Global Accelerator Developer Guide</i>.</p>
    # @option params [String] :flow_logs_s3_bucket
    #   <p>The name of the Amazon S3 bucket for the flow logs. Attribute is required if <code>FlowLogsEnabled</code> is
    #   		    <code>true</code>. The bucket must exist and have a bucket policy that grants Global Accelerator permission to write to the
    #   			bucket.</p>
    # @option params [String] :flow_logs_s3_prefix
    #   <p>Update the prefix for the location in the Amazon S3 bucket for the flow logs. Attribute is required if
    #   				<code>FlowLogsEnabled</code> is <code>true</code>. </p>
    #            <p>If you specify slash (/) for the S3 bucket prefix, the log file bucket folder structure will include a double slash (//), 
    #   			like the following:</p>
    #            <p>s3-bucket_name//AWSLogs/aws_account_id</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     accelerator_arn: "GenericString", # required
    #     flow_logs_enabled: false,
    #     flow_logs_s3_bucket: "GenericString",
    #     flow_logs_s3_prefix: "GenericString"
    #   }
    #   options = {}
    #   response = client.update_accelerator_attributes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     accelerator_attributes: {
    #       flow_logs_enabled: false,
    #       flow_logs_s3_bucket: "GenericString",
    #       flow_logs_s3_prefix: "GenericString"
    #     }
    #   }
    # @return [Types::UpdateAcceleratorAttributesResponse]
    def update_accelerator_attributes(params = {}, options = {})
      request = build_request(:update_accelerator_attributes, params)
      request.send_request(options)
    end

    # <p>Update a cross-account attachment to add or remove principals or resources. When you update 
    # 			an attachment to remove a principal (account ID or accelerator) or a resource, Global Accelerator 
    # 			revokes the permission for specific resources. </p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/cross-account-resources.html">
    # 			Working with cross-account attachments and resources in Global Accelerator</a> in the <i>
    # 				Global Accelerator Developer Guide</i>.</p>
    # @param [Hash, Types::UpdateCrossAccountAttachmentRequest] params
    # @option params [String] :attachment_arn
    #   <p>The Amazon Resource Name (ARN) of the cross-account attachment to update.</p>
    # @option params [String] :name
    #   <p>The name of the cross-account attachment.  </p>
    # @option params [Array<String>] :add_principals
    #   <p>The principals to add to the cross-account attachment. A principal is an account or the Amazon Resource Name (ARN)
    #   			of an accelerator that the attachment gives permission to work with resources from another account. The resources
    #   			are also listed in the attachment.</p>
    #            <p>To add more than one principal, separate the account numbers or accelerator ARNs, or both, with commas.</p>
    # @option params [Array<String>] :remove_principals
    #   <p>The principals to remove from the cross-account attachment. A principal is an account or the Amazon Resource Name (ARN)
    #   			of an accelerator that the attachment gives permission to work with resources from another account. The resources
    #   			are also listed in the attachment.</p>
    #            <p>To remove more than one principal, separate the account numbers or accelerator ARNs, or both, with commas.</p>
    # @option params [Array<Types::Resource>] :add_resources
    #   <p>The resources to add to the cross-account attachment. A resource listed in a cross-account attachment can be used
    #   			with an accelerator by the principals that are listed in the attachment.</p>
    #            <p>To add more than one resource, separate the resource ARNs with commas.</p>
    # @option params [Array<Types::Resource>] :remove_resources
    #   <p>The resources to remove from the cross-account attachment. A resource listed in a cross-account attachment can be used
    #   			with an accelerator by the principals that are listed in the attachment.</p>
    #            <p>To remove more than one resource, separate the resource ARNs with commas.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     attachment_arn: "GenericString", # required
    #     name: "AttachmentName",
    #     add_principals: ["Principal"],
    #     remove_principals: ["Principal"],
    #     add_resources: [
    #       {
    #         endpoint_id: "GenericString",
    #         cidr: "GenericString",
    #         region: "GenericString"
    #       }
    #     ],
    #     remove_resources: [
    #       {
    #         endpoint_id: "GenericString",
    #         cidr: "GenericString",
    #         region: "GenericString"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_cross_account_attachment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cross_account_attachment: {
    #       attachment_arn: "GenericString",
    #       name: "AttachmentName",
    #       principals: ["Principal"],
    #       resources: [
    #         {
    #           endpoint_id: "GenericString",
    #           cidr: "GenericString",
    #           region: "GenericString"
    #         }
    #       ],
    #       last_modified_time: Time.now,
    #       created_time: Time.now
    #     }
    #   }
    # @return [Types::UpdateCrossAccountAttachmentResponse]
    def update_cross_account_attachment(params = {}, options = {})
      request = build_request(:update_cross_account_attachment, params)
      request.send_request(options)
    end

    # <p>Update a custom routing accelerator. </p>
    # @param [Hash, Types::UpdateCustomRoutingAcceleratorRequest] params
    # @option params [String] :accelerator_arn
    #   <p>The Amazon Resource Name (ARN) of the accelerator to update.</p>
    # @option params [String] :name
    #   <p>The name of the accelerator. The name can have a maximum of 64 characters, must contain only alphanumeric characters, 
    #   		periods (.), or hyphens (-), and must not begin or end with a hyphen or period.</p>
    # @option params [String] :ip_address_type
    #   <p>The IP address type that an accelerator supports. For a custom routing accelerator, the value must be IPV4.</p>
    # @option params [Array<String>] :ip_addresses
    #   <p>The IP addresses for an accelerator.</p>
    # @option params [Boolean] :enabled
    #   <p>Indicates whether an accelerator is enabled. The value is true or false. The default value is true. </p>
    #            <p>If the value is set to true, the accelerator cannot be deleted. If set to false, the accelerator can be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     accelerator_arn: "GenericString", # required
    #     name: "GenericString",
    #     ip_address_type: "IPV4" # One of: ["IPV4", "DUAL_STACK"],
    #     ip_addresses: ["IpAddress"],
    #     enabled: false
    #   }
    #   options = {}
    #   response = client.update_custom_routing_accelerator(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     accelerator: {
    #       accelerator_arn: "GenericString",
    #       name: "GenericString",
    #       ip_address_type: "IPV4" # One of: ["IPV4", "DUAL_STACK"],
    #       enabled: false,
    #       ip_sets: [
    #         {
    #           ip_family: "GenericString",
    #           ip_addresses: ["IpAddress"],
    #           ip_address_family: "IPv4" # One of: ["IPv4", "IPv6"]
    #         }
    #       ],
    #       dns_name: "GenericString",
    #       status: "DEPLOYED" # One of: ["DEPLOYED", "IN_PROGRESS"],
    #       created_time: Time.now,
    #       last_modified_time: Time.now
    #     }
    #   }
    # @return [Types::UpdateCustomRoutingAcceleratorResponse]
    def update_custom_routing_accelerator(params = {}, options = {})
      request = build_request(:update_custom_routing_accelerator, params)
      request.send_request(options)
    end

    # <p>Update the attributes for a custom routing accelerator. </p>
    # @param [Hash, Types::UpdateCustomRoutingAcceleratorAttributesRequest] params
    # @option params [String] :accelerator_arn
    #   <p>The Amazon Resource Name (ARN) of the custom routing accelerator to update attributes for.</p>
    # @option params [Boolean] :flow_logs_enabled
    #   <p>Update whether flow logs are enabled. The default value is false. If the value is true,
    #   		<code>FlowLogsS3Bucket</code> and <code>FlowLogsS3Prefix</code> must be specified.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/monitoring-global-accelerator.flow-logs.html">Flow logs</a> in
    #   	    the <i>Global Accelerator Developer Guide</i>.</p>
    # @option params [String] :flow_logs_s3_bucket
    #   <p>The name of the Amazon S3 bucket for the flow logs. Attribute is required if <code>FlowLogsEnabled</code> is
    #   	    <code>true</code>. The bucket must exist and have a bucket policy that grants Global Accelerator permission to write to the
    #   		bucket.</p>
    # @option params [String] :flow_logs_s3_prefix
    #   <p>Update the prefix for the location in the Amazon S3 bucket for the flow logs. Attribute is required if
    #   		<code>FlowLogsEnabled</code> is <code>true</code>. </p>
    #            <p>If you don’t specify a prefix, the flow logs are stored in the
    #   		root of the bucket. If you specify slash (/) for the S3 bucket prefix, the log file bucket folder structure will include a double slash (//), like the following:</p>
    #            <p>DOC-EXAMPLE-BUCKET//AWSLogs/aws_account_id</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     accelerator_arn: "GenericString", # required
    #     flow_logs_enabled: false,
    #     flow_logs_s3_bucket: "GenericString",
    #     flow_logs_s3_prefix: "GenericString"
    #   }
    #   options = {}
    #   response = client.update_custom_routing_accelerator_attributes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     accelerator_attributes: {
    #       flow_logs_enabled: false,
    #       flow_logs_s3_bucket: "GenericString",
    #       flow_logs_s3_prefix: "GenericString"
    #     }
    #   }
    # @return [Types::UpdateCustomRoutingAcceleratorAttributesResponse]
    def update_custom_routing_accelerator_attributes(params = {}, options = {})
      request = build_request(:update_custom_routing_accelerator_attributes, params)
      request.send_request(options)
    end

    # <p>Update a listener for a custom routing accelerator. </p>
    # @param [Hash, Types::UpdateCustomRoutingListenerRequest] params
    # @option params [String] :listener_arn
    #   <p>The Amazon Resource Name (ARN) of the listener to update.</p>
    # @option params [Array<Types::PortRange>] :port_ranges
    #   <p>The updated port range to support for connections from clients to your accelerator. If you remove ports that are
    #   	currently being used by a subnet endpoint, the call fails.</p>
    #            <p>Separately, you set port ranges for endpoints. For more information, see <a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/about-custom-routing-endpoints.html">About 
    #   		endpoints for custom routing accelerators</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     listener_arn: "GenericString", # required
    #     port_ranges: [ # required
    #       {
    #         from_port: 1,
    #         to_port: 1
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_custom_routing_listener(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     listener: {
    #       listener_arn: "GenericString",
    #       port_ranges: [
    #         {
    #           from_port: 1,
    #           to_port: 1
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::UpdateCustomRoutingListenerResponse]
    def update_custom_routing_listener(params = {}, options = {})
      request = build_request(:update_custom_routing_listener, params)
      request.send_request(options)
    end

    # <p>Update an endpoint group. A resource must be valid and active when you add it as an endpoint.</p>
    # @param [Hash, Types::UpdateEndpointGroupRequest] params
    # @option params [String] :endpoint_group_arn
    #   <p>The Amazon Resource Name (ARN) of the endpoint group.</p>
    # @option params [Array<Types::EndpointConfiguration>] :endpoint_configurations
    #   <p>The list of endpoint objects. A resource must be valid and active when you add it as an endpoint.</p>
    # @option params [Float] :traffic_dial_percentage
    #   <p>The percentage of traffic to send to an Amazon Web Services Region. Additional traffic is distributed to other endpoint groups for
    #   			this listener. </p>
    #            <p>Use this action to increase (dial up) or decrease (dial down) traffic to a specific Region. The percentage is
    #   			applied to the traffic that would otherwise have been routed to the Region based on optimal routing.</p>
    #            <p>The default value is 100.</p>
    # @option params [Integer] :health_check_port
    #   <p>The port that Global Accelerator uses to check the health of endpoints that are part of this endpoint group. The default port
    #   	        is the listener port that this endpoint group is associated with. If the listener port is a list of ports, Global Accelerator uses
    #   			the first port in the list.</p>
    # @option params [String] :health_check_protocol
    #   <p>The protocol that Global Accelerator uses to check the health of endpoints that are part of this endpoint group. The default
    #   			value is TCP.</p>
    # @option params [String] :health_check_path
    #   <p>If the protocol is HTTP/S, then this specifies the path that is the destination for health check targets. The
    #   			default value is slash (/).</p>
    # @option params [Integer] :health_check_interval_seconds
    #   <p>The time—10 seconds or 30 seconds—between each health check for an endpoint. The default value is 30.</p>
    # @option params [Integer] :threshold_count
    #   <p>The number of consecutive health checks required to set the state of a healthy endpoint to unhealthy, or to set an
    #   			unhealthy endpoint to healthy. The default value is 3.</p>
    # @option params [Array<Types::PortOverride>] :port_overrides
    #   <p>Override specific listener ports used to route traffic to endpoints that are part of this endpoint group. 
    #   			For example, you can create a port override in which the listener 
    #   			receives user traffic on ports 80 and 443, but your accelerator routes that traffic to ports 1080 
    #   			and 1443, respectively, on the endpoints.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/about-endpoint-groups-port-override.html">
    #   			Overriding listener ports</a> in the <i>Global Accelerator Developer Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     endpoint_group_arn: "GenericString", # required
    #     endpoint_configurations: [
    #       {
    #         endpoint_id: "GenericString",
    #         weight: 1,
    #         client_ip_preservation_enabled: false,
    #         attachment_arn: "GenericString"
    #       }
    #     ],
    #     traffic_dial_percentage: 1.0,
    #     health_check_port: 1,
    #     health_check_protocol: "TCP" # One of: ["TCP", "HTTP", "HTTPS"],
    #     health_check_path: "HealthCheckPath",
    #     health_check_interval_seconds: 1,
    #     threshold_count: 1,
    #     port_overrides: [
    #       {
    #         listener_port: 1,
    #         endpoint_port: 1
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_endpoint_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     endpoint_group: {
    #       endpoint_group_arn: "GenericString",
    #       endpoint_group_region: "GenericString",
    #       endpoint_descriptions: [
    #         {
    #           endpoint_id: "GenericString",
    #           weight: 1,
    #           health_state: "INITIAL" # One of: ["INITIAL", "HEALTHY", "UNHEALTHY"],
    #           health_reason: "GenericString",
    #           client_ip_preservation_enabled: false
    #         }
    #       ],
    #       traffic_dial_percentage: 1.0,
    #       health_check_port: 1,
    #       health_check_protocol: "TCP" # One of: ["TCP", "HTTP", "HTTPS"],
    #       health_check_path: "HealthCheckPath",
    #       health_check_interval_seconds: 1,
    #       threshold_count: 1,
    #       port_overrides: [
    #         {
    #           listener_port: 1,
    #           endpoint_port: 1
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::UpdateEndpointGroupResponse]
    def update_endpoint_group(params = {}, options = {})
      request = build_request(:update_endpoint_group, params)
      request.send_request(options)
    end

    # <p>Update a listener. </p>
    # @param [Hash, Types::UpdateListenerRequest] params
    # @option params [String] :listener_arn
    #   <p>The Amazon Resource Name (ARN) of the listener to update.</p>
    # @option params [Array<Types::PortRange>] :port_ranges
    #   <p>The updated list of port ranges for the connections from clients to the accelerator.</p>
    # @option params [String] :protocol
    #   <p>The updated protocol for the connections from clients to the accelerator.</p>
    # @option params [String] :client_affinity
    #   <p>Client affinity lets you direct all requests from a user to the same endpoint, if you have stateful applications,
    #   			regardless of the port and protocol of the client request. Client affinity gives you control over whether to always
    #   			route each client to the same specific endpoint.</p>
    #            <p>Global Accelerator uses a consistent-flow hashing algorithm to choose the optimal endpoint for a connection. If client
    #   	        affinity is <code>NONE</code>, Global Accelerator uses the "five-tuple" (5-tuple) properties—source IP address, source port,
    #   			destination IP address, destination port, and protocol—to select the hash value, and then chooses the best
    #   			endpoint. However, with this setting, if someone uses different ports to connect to Global Accelerator, their connections might not
    #   			be always routed to the same endpoint because the hash value changes. </p>
    #            <p>If you want a given client to always be routed to the same endpoint, set client affinity to <code>SOURCE_IP</code>
    #   		    instead. When you use the <code>SOURCE_IP</code> setting, Global Accelerator uses the "two-tuple" (2-tuple) properties—
    #   			source (client) IP address and destination IP address—to select the hash value.</p>
    #            <p>The default value is <code>NONE</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     listener_arn: "GenericString", # required
    #     port_ranges: [
    #       {
    #         from_port: 1,
    #         to_port: 1
    #       }
    #     ],
    #     protocol: "TCP" # One of: ["TCP", "UDP"],
    #     client_affinity: "NONE" # One of: ["NONE", "SOURCE_IP"]
    #   }
    #   options = {}
    #   response = client.update_listener(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     listener: {
    #       listener_arn: "GenericString",
    #       port_ranges: [
    #         {
    #           from_port: 1,
    #           to_port: 1
    #         }
    #       ],
    #       protocol: "TCP" # One of: ["TCP", "UDP"],
    #       client_affinity: "NONE" # One of: ["NONE", "SOURCE_IP"]
    #     }
    #   }
    # @return [Types::UpdateListenerResponse]
    def update_listener(params = {}, options = {})
      request = build_request(:update_listener, params)
      request.send_request(options)
    end

    # <p>Stops advertising an address range that is provisioned as an address pool.
    # 			You can perform this operation at most once every 10 seconds, even if you specify different address
    # 			ranges each time.</p>
    #          <p>It can take a few minutes before traffic to the specified addresses stops routing to Amazon Web Services because of
    # 			propagation delays.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html">Bring your own 
    # 			IP addresses (BYOIP)</a> in the <i>Global Accelerator Developer Guide</i>.</p>
    # @param [Hash, Types::WithdrawByoipCidrRequest] params
    # @option params [String] :cidr
    #   <p>The address range, in CIDR notation.</p>
    #            <p> For more information, see
    #   			<a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html">Bring your own IP addresses (BYOIP)</a> in 
    #   			the Global Accelerator Developer Guide.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cidr: "GenericString", # required
    #   }
    #   options = {}
    #   response = client.withdraw_byoip_cidr(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     byoip_cidr: {
    #       cidr: "GenericString",
    #       state: "PENDING_PROVISIONING" # One of: ["PENDING_PROVISIONING", "READY", "PENDING_ADVERTISING", "ADVERTISING", "PENDING_WITHDRAWING", "PENDING_DEPROVISIONING", "DEPROVISIONED", "FAILED_PROVISION", "FAILED_ADVERTISING", "FAILED_WITHDRAW", "FAILED_DEPROVISION"],
    #       events: [
    #         {
    #           message: "GenericString",
    #           timestamp: Time.now
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::WithdrawByoipCidrResponse]
    def withdraw_byoip_cidr(params = {}, options = {})
      request = build_request(:withdraw_byoip_cidr, params)
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
      context[:gem_name] = 'aws-sdk-globalaccelerator'
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
