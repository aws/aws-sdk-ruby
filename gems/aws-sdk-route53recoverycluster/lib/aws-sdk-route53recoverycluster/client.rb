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

module Aws::Route53RecoveryCluster
  # An API client for Aws::Route53RecoveryCluster.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::ToggleCustomerAPI

    add_plugin(::Aws::Route53RecoveryCluster::Plugins::Endpoint)
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
    # @option options [#identity] :credentials
    #  The credentials provider used to resolve credentials. Any object that responds to `#identity`
    #  and returns a {Aws::Core::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  Custom Endpoint
    # @option options [Aws::Route53RecoveryCluster::EndpointProvider] :endpoint_provider
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

    # <p>Get the state for a routing control. A routing control is a simple on/off switch that you
    # 				can use to route traffic to cells. When a routing control state is set to ON, traffic flows to a cell. When
    # 				the state is set to OFF, traffic does not flow. </p>
    #          <p>Before you can create a routing control, you must first create a cluster, and then host the control
    # 				in a control panel on the cluster. For more information, see <a href="https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.create.html">
    # 					Create routing control structures</a> in the Amazon Route 53 Application Recovery Controller Developer Guide. 
    # 				You access one of the endpoints for the cluster to get or update the routing control state to
    # 				redirect traffic for your application. </p>
    #          <p>
    #             <i>You must specify Regional endpoints when you work with API cluster operations 
    # 				to get or update routing control states in Route 53 ARC.</i>
    #          </p>
    #          <p>To see a code example for getting a routing control state, including accessing Regional cluster endpoints
    # 				in sequence, see <a href="https://docs.aws.amazon.com/r53recovery/latest/dg/service_code_examples_actions.html">API examples</a>
    # 				in the Amazon Route 53 Application Recovery Controller Developer Guide.</p>
    #          <p>Learn more about working with routing controls in the following topics in the 
    # 				Amazon Route 53 Application Recovery Controller Developer Guide:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.update.html">
    # 					Viewing and updating routing control states</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.html">Working with 
    # 					routing controls in Route 53 ARC</a>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::GetRoutingControlStateRequest] params
    # @option params [String] :routing_control_arn
    #   <p>The Amazon Resource Name (ARN) for the routing control that you want to get the state for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     routing_control_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.get_routing_control_state(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     routing_control_arn: "Arn", # required
    #     routing_control_state: "On" # One of: ["On", "Off"], # required
    #     routing_control_name: "RoutingControlName"
    #   }
    # @return [Types::GetRoutingControlStateResponse]
    def get_routing_control_state(params = {}, options = {})
      request = build_request(:get_routing_control_state, params)
      request.send_request(options)
    end

    # <p>List routing control names and Amazon Resource Names (ARNs), as well as the routing control 
    # 			state for each routing control, along with the control panel name and control panel ARN for the routing controls.
    # 			If you specify a control panel ARN, this call lists the routing controls in the control panel. Otherwise, it lists
    # 			all the routing controls in the cluster.</p>
    #          <p>A routing control is a simple on/off switch in Route 53 ARC that you
    # 			can use to route traffic to cells. When a routing control state is set to ON, traffic flows to a cell. When
    # 			the state is set to OFF, traffic does not flow.</p>
    #          <p>Before you can create a routing control, you must first create a cluster, and then host the control
    # 			in a control panel on the cluster. For more information, see <a href="https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.create.html">
    # 				Create routing control structures</a> in the Amazon Route 53 Application Recovery Controller Developer Guide. 
    # 			You access one of the endpoints for the cluster to get or update the routing control state to
    # 			redirect traffic for your application. </p>
    #          <p>
    #             <i>You must specify Regional endpoints when you work with API cluster operations 
    # 			to use this API operation to list routing controls in Route 53 ARC.</i>
    #          </p>
    #          <p>Learn more about working with routing controls in the following topics in the 
    # 			Amazon Route 53 Application Recovery Controller Developer Guide:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.update.html">
    # 				Viewing and updating routing control states</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.html">Working with 
    # 				routing controls in Route 53 ARC</a>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::ListRoutingControlsRequest] params
    # @option params [String] :control_panel_arn
    #   <p>The Amazon Resource Name (ARN) of the control panel of the routing controls to list.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. You receive this token from a previous call.</p>
    # @option params [Integer] :max_results
    #   <p>The number of routing controls objects that you want to return with this call. The default value is 500.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     control_panel_arn: "Arn",
    #     next_token: "PageToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_routing_controls(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     routing_controls: [ # required
    #       {
    #         control_panel_arn: "Arn",
    #         control_panel_name: "ControlPanelName",
    #         routing_control_arn: "Arn",
    #         routing_control_name: "RoutingControlName",
    #         routing_control_state: "On" # One of: ["On", "Off"],
    #         owner: "Owner"
    #       }
    #     ],
    #     next_token: "PageToken"
    #   }
    # @return [Types::ListRoutingControlsResponse]
    def list_routing_controls(params = {}, options = {})
      request = build_request(:list_routing_controls, params)
      request.send_request(options)
    end

    # <p>Set the state of the routing control to reroute traffic. You can set the value to ON or
    # 			OFF. When the state is ON, traffic flows to a cell. When the state is OFF, traffic does not
    # 			flow.</p>
    #          <p>With Route 53 ARC, you can add safety rules for routing controls, which are safeguards for routing 
    # 				control state updates that help prevent unexpected outcomes, like fail open traffic routing. However, 
    # 				there are scenarios when you might want to bypass the routing control safeguards that are enforced with 
    # 				safety rules that you've configured. For example, you might want to fail over quickly for disaster recovery, 
    # 				and one or more safety rules might be unexpectedly preventing you from updating a routing control state to 
    # 				reroute traffic. In a "break glass" scenario like this, you can override one or more safety rules to change 
    # 				a routing control state and fail over your application.</p>
    #          <p>The <code>SafetyRulesToOverride</code> property enables you override one or more safety rules and 
    # 				update routing control states. For more information, see 
    # 				<a href="https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.override-safety-rule.html">
    # 					Override safety rules to reroute traffic</a> in the Amazon Route 53 Application Recovery Controller Developer Guide.</p>
    #          <p>
    #             <i>You must specify Regional endpoints when you work with API cluster operations 
    # 				to get or update routing control states in Route 53 ARC.</i>
    #          </p>
    #          <p>To see a code example for getting a routing control state, including accessing Regional cluster endpoints
    # 				in sequence, see <a href="https://docs.aws.amazon.com/r53recovery/latest/dg/service_code_examples_actions.html">API examples</a>
    # 				in the Amazon Route 53 Application Recovery Controller Developer Guide.</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.update.html">
    # 					Viewing and updating routing control states</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.html">Working with routing controls overall</a>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::UpdateRoutingControlStateRequest] params
    # @option params [String] :routing_control_arn
    #   <p>The Amazon Resource Name (ARN) for the routing control that you want to update the state for.</p>
    # @option params [String] :routing_control_state
    #   <p>The state of the routing control. You can set the value to ON or OFF.</p>
    # @option params [Array<String>] :safety_rules_to_override
    #   <p>The Amazon Resource Names (ARNs) for the safety rules that you want to override when you're updating the state of
    #   			a routing control. You can override one safety rule or multiple safety rules by including one or more ARNs, separated 
    #   			by commas.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.override-safety-rule.html">
    #   			Override safety rules to reroute traffic</a> in the Amazon Route 53 Application Recovery Controller Developer Guide.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     routing_control_arn: "Arn", # required
    #     routing_control_state: "On" # One of: ["On", "Off"], # required
    #     safety_rules_to_override: ["Arn"]
    #   }
    #   options = {}
    #   response = client.update_routing_control_state(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateRoutingControlStateResponse]
    def update_routing_control_state(params = {}, options = {})
      request = build_request(:update_routing_control_state, params)
      request.send_request(options)
    end

    # <p>Set multiple routing control states. You can set the value for each state to be ON or OFF.
    # 			When the state is ON, traffic flows to a cell. When it's OFF, traffic does not
    # 			flow.</p>
    #          <p>With Route 53 ARC, you can add safety rules for routing controls, which are safeguards for routing 
    # 				control state updates that help prevent unexpected outcomes, like fail open traffic routing. However, 
    # 				there are scenarios when you might want to bypass the routing control safeguards that are enforced with 
    # 				safety rules that you've configured. For example, you might want to fail over quickly for disaster recovery, 
    # 				and one or more safety rules might be unexpectedly preventing you from updating a routing control state to 
    # 				reroute traffic. In a "break glass" scenario like this, you can override one or more safety rules to change 
    # 				a routing control state and fail over your application.</p>
    #          <p>The <code>SafetyRulesToOverride</code> property enables you override one or more safety rules and 
    # 				update routing control states. For more information, see 
    # 				<a href="https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.override-safety-rule.html">
    # 					Override safety rules to reroute traffic</a> in the Amazon Route 53 Application Recovery Controller Developer Guide.</p>
    #          <p>
    #             <i>You must specify Regional endpoints when you work with API cluster operations 
    # 				to get or update routing control states in Route 53 ARC.</i>
    #          </p>
    #          <p>To see a code example for getting a routing control state, including accessing Regional cluster endpoints
    # 				in sequence, see <a href="https://docs.aws.amazon.com/r53recovery/latest/dg/service_code_examples_actions.html">API examples</a>
    # 				in the Amazon Route 53 Application Recovery Controller Developer Guide.</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.update.html">
    # 					Viewing and updating routing control states</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.html">Working with routing controls overall</a>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::UpdateRoutingControlStatesRequest] params
    # @option params [Array<Types::UpdateRoutingControlStateEntry>] :update_routing_control_state_entries
    #   <p>A set of routing control entries that you want to update.</p>
    # @option params [Array<String>] :safety_rules_to_override
    #   <p>The Amazon Resource Names (ARNs) for the safety rules that you want to override when you're updating routing
    #   			control states. You can override one safety rule or multiple safety rules by including one or more ARNs, separated 
    #   			by commas.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.override-safety-rule.html">
    #   			Override safety rules to reroute traffic</a> in the Amazon Route 53 Application Recovery Controller Developer Guide.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     update_routing_control_state_entries: [ # required
    #       {
    #         routing_control_arn: "Arn", # required
    #         routing_control_state: "On" # One of: ["On", "Off"], # required
    #       }
    #     ],
    #     safety_rules_to_override: ["Arn"]
    #   }
    #   options = {}
    #   response = client.update_routing_control_states(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateRoutingControlStatesResponse]
    def update_routing_control_states(params = {}, options = {})
      request = build_request(:update_routing_control_states, params)
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
      context[:gem_name] = 'aws-sdk-route53recoverycluster'
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
