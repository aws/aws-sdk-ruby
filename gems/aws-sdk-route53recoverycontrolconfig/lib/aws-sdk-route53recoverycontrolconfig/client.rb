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
require 'aws-sdk-core/plugins/global_configuration'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/rest_json_protocol'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:route53recoverycontrolconfig)

module Aws::Route53RecoveryControlConfig
  # An API client for Aws::Route53RecoveryControlConfig.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::Route53RecoveryControlConfig
    @identifier = :route53recoverycontrolconfig

    add_plugin(::Aws::Route53RecoveryControlConfig::Plugins::Endpoint)
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
    add_plugin(Aws::Core::Plugins::GlobalConfiguration)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::RestJsonProtocol)
    add_plugin(Aws::Core::Plugins::RegionalEndpoints)
    add_plugin(Aws::Core::Plugins::SigV4)

    # @param options [Hash] Client options
    # @option options [String] :access_key_id
    # @option options [String] :account_id
    # @option options [String] :account_id_endpoint_mode
    #  The account ID endpoint mode to use. This can be one of the following values:
    #  * `preferred` - (default) Use the account ID endpoint if available, otherwise use the standard endpoint.
    #  * `disabled` - Never use the account ID endpoint, only use the standard endpoint.
    #  * `required` - Always use the account ID endpoint. If the account ID cannot be retrieved from credentials, an error is raised.
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
    #  The endpoint to send requests to.
    #  The endpoint should be a URI formatted like "http://example.com:123"'
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::Route53RecoveryControlConfig::EndpointProvider)
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
    #  The AWS region to connect to. The configured `:region` is used to determine the service `:endpoint`.
    #  When not provided, a default region is searched for in the following locations:
    #  * `Aws.config[:region]`
    #  * `ENV['AWS_REGION']`
    #  * `ENV['AWS_DEFAULT_REGION']`
    #  * `~/.aws/credentials` as `region` under a profile
    #  * `~/.aws/config` as `region` under a profile
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
    # @option options [Boolean] :use_dualstack_endpoint
    #  When set to `true`, dualstack enabled endpoints (with `.aws` TLD) will be used if available.
    #  This option can also be configured in the following locations:
    #  * `ENV['AWS_USE_DUALSTACK_ENDPOINT']`
    #  * `~/.aws/credentials` as `use_dualstack_endpoint` under a profile
    #  * `~/.aws/config` as `use_dualstack_endpoint` under a profile
    # @option options [Boolean] :use_fips_endpoint
    #  When set to `true`, FIPS compatible endpoints will be used if available.
    #  This option can also be configured in the following locations:
    #  * `ENV['AWS_USE_FIPS_ENDPOINT']`
    #  * `~/.aws/credentials` as `use_fips_endpoint` under a profile
    #  * `~/.aws/config` as `use_fips_endpoint` under a profile
    # @option options [Boolean] :validate_params (true)
    #  When `true`, request parameters are validated before sending the request.
    def initialize(*options)
      super
    end

    # <p>Create a new cluster. A cluster is a set of redundant Regional endpoints against which you can run API calls to update or get the state of one or more routing controls. Each cluster has a name, status, Amazon Resource Name (ARN), and an array of the five cluster endpoints (one for each supported Amazon Web Services Region) that you can use with API calls to the cluster data plane.</p>
    # @param [Hash, Types::CreateClusterRequest] params
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive string of up to 64 ASCII characters. To make an idempotent API request with an action, specify a client token in the request.</p>
    # @option params [String] :cluster_name
    #   <p>The name of the cluster.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags associated with the cluster.</p>
    # @option params [String] :network_type
    #   <p>The network type of the cluster. NetworkType can be one of the following: IPV4, DUALSTACK.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "__stringMin1Max64PatternS",
    #     cluster_name: "__stringMin1Max64PatternS", # required
    #     tags: {
    #       "__string" => "__stringMin0Max256PatternS"
    #     },
    #     network_type: "IPV4" # One of: ["IPV4", "DUALSTACK"]
    #   }
    #   options = {}
    #   response = client.create_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cluster: {
    #       cluster_arn: "__stringMin1Max256PatternAZaZ09",
    #       cluster_endpoints: [
    #         {
    #           endpoint: "__stringMin1Max128PatternAZaZ09",
    #           region: "__stringMin1Max32PatternS"
    #         }
    #       ],
    #       name: "__stringMin1Max64PatternS",
    #       status: "PENDING" # One of: ["PENDING", "DEPLOYED", "PENDING_DELETION"],
    #       owner: "__stringMin12Max12PatternD12",
    #       network_type: "IPV4" # One of: ["IPV4", "DUALSTACK"]
    #     }
    #   }
    # @return [Types::CreateClusterResponse]
    def create_cluster(params = {}, options = {})
      request = build_request(:create_cluster, params)
      request.send_request(options)
    end

    # <p>Creates a new control panel. A control panel represents a group of routing controls that can be changed together in a single transaction. You can use a control panel to centrally view the operational status of applications across your organization, and trigger multi-app failovers in a single transaction, for example, to fail over an Availability Zone or Amazon Web Services Region.</p>
    # @param [Hash, Types::CreateControlPanelRequest] params
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive string of up to 64 ASCII characters. To make an idempotent API request with an action, specify a client token in the request.</p>
    # @option params [String] :cluster_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster for the control panel.</p>
    # @option params [String] :control_panel_name
    #   <p>The name of the control panel.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags associated with the control panel.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "__stringMin1Max64PatternS",
    #     cluster_arn: "__stringMin1Max256PatternAZaZ09", # required
    #     control_panel_name: "__stringMin1Max64PatternS", # required
    #     tags: {
    #       "__string" => "__stringMin0Max256PatternS"
    #     }
    #   }
    #   options = {}
    #   response = client.create_control_panel(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     control_panel: {
    #       cluster_arn: "__stringMin1Max256PatternAZaZ09",
    #       control_panel_arn: "__stringMin1Max256PatternAZaZ09",
    #       default_control_panel: false,
    #       name: "__stringMin1Max64PatternS",
    #       routing_control_count: 1,
    #       status: "PENDING" # One of: ["PENDING", "DEPLOYED", "PENDING_DELETION"],
    #       owner: "__stringMin12Max12PatternD12"
    #     }
    #   }
    # @return [Types::CreateControlPanelResponse]
    def create_control_panel(params = {}, options = {})
      request = build_request(:create_control_panel, params)
      request.send_request(options)
    end

    # <p>Creates a new routing control.</p> <p>A routing control has one of two states: ON and OFF. You can map the routing control state to the state of an Amazon Route 53 health check, which can be used to control traffic routing.</p> <p>To get or update the routing control state, see the Recovery Cluster (data plane) API actions for Amazon Route 53 Application Recovery Controller.</p>
    # @param [Hash, Types::CreateRoutingControlRequest] params
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive string of up to 64 ASCII characters. To make an idempotent API request with an action, specify a client token in the request.</p>
    # @option params [String] :cluster_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster that includes the routing control.</p>
    # @option params [String] :control_panel_arn
    #   <p>The Amazon Resource Name (ARN) of the control panel that includes the routing control.</p>
    # @option params [String] :routing_control_name
    #   <p>The name of the routing control.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "__stringMin1Max64PatternS",
    #     cluster_arn: "__stringMin1Max256PatternAZaZ09", # required
    #     control_panel_arn: "__stringMin1Max256PatternAZaZ09",
    #     routing_control_name: "__stringMin1Max64PatternS", # required
    #   }
    #   options = {}
    #   response = client.create_routing_control(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     routing_control: {
    #       control_panel_arn: "__stringMin1Max256PatternAZaZ09",
    #       name: "__stringMin1Max64PatternS",
    #       routing_control_arn: "__stringMin1Max256PatternAZaZ09",
    #       status: "PENDING" # One of: ["PENDING", "DEPLOYED", "PENDING_DELETION"],
    #       owner: "__stringMin12Max12PatternD12"
    #     }
    #   }
    # @return [Types::CreateRoutingControlResponse]
    def create_routing_control(params = {}, options = {})
      request = build_request(:create_routing_control, params)
      request.send_request(options)
    end

    # <p>Creates a safety rule in a control panel. Safety rules let you add safeguards around changing routing control states, and for enabling and disabling routing controls, to help prevent unexpected outcomes.</p> <p>There are two types of safety rules: assertion rules and gating rules.</p> <p>Assertion rule: An assertion rule enforces that, when you change a routing control state, that a certain criteria is met. For example, the criteria might be that at least one routing control state is On after the transaction so that traffic continues to flow to at least one cell for the application. This ensures that you avoid a fail-open scenario.</p> <p>Gating rule: A gating rule lets you configure a gating routing control as an overall "on/off" switch for a group of routing controls. Or, you can configure more complex gating scenarios, for example by configuring multiple gating routing controls.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.safety-rules.html">Safety rules</a> in the Amazon Route 53 Application Recovery Controller Developer Guide.</p>
    # @param [Hash, Types::CreateSafetyRuleRequest] params
    # @option params [Types::NewAssertionRule] :assertion_rule
    #   <p>The assertion rule requested.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive string of up to 64 ASCII characters. To make an idempotent API request with an action, specify a client token in the request.</p>
    # @option params [Types::NewGatingRule] :gating_rule
    #   <p>The gating rule requested.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags associated with the safety rule.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     assertion_rule: {
    #       asserted_controls: ["__stringMin1Max256PatternAZaZ09"], # required
    #       control_panel_arn: "__stringMin1Max256PatternAZaZ09", # required
    #       name: "__stringMin1Max64PatternS", # required
    #       rule_config: { # required
    #         inverted: false, # required
    #         threshold: 1, # required
    #         type: "ATLEAST" # One of: ["ATLEAST", "AND", "OR"], # required
    #       },
    #       wait_period_ms: 1, # required
    #     },
    #     client_token: "__stringMin1Max64PatternS",
    #     gating_rule: {
    #       control_panel_arn: "__stringMin1Max256PatternAZaZ09", # required
    #       gating_controls: ["__stringMin1Max256PatternAZaZ09"], # required
    #       name: "__stringMin1Max64PatternS", # required
    #       rule_config: { # required
    #         inverted: false, # required
    #         threshold: 1, # required
    #         type: "ATLEAST" # One of: ["ATLEAST", "AND", "OR"], # required
    #       },
    #       target_controls: ["__stringMin1Max256PatternAZaZ09"], # required
    #       wait_period_ms: 1, # required
    #     },
    #     tags: {
    #       "__string" => "__stringMin0Max256PatternS"
    #     }
    #   }
    #   options = {}
    #   response = client.create_safety_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     assertion_rule: {
    #       asserted_controls: ["__stringMin1Max256PatternAZaZ09"], # required
    #       control_panel_arn: "__stringMin1Max256PatternAZaZ09", # required
    #       name: "__stringMin1Max64PatternS", # required
    #       rule_config: { # required
    #         inverted: false, # required
    #         threshold: 1, # required
    #         type: "ATLEAST" # One of: ["ATLEAST", "AND", "OR"], # required
    #       },
    #       safety_rule_arn: "__stringMin1Max256PatternAZaZ09", # required
    #       status: "PENDING" # One of: ["PENDING", "DEPLOYED", "PENDING_DELETION"], # required
    #       wait_period_ms: 1, # required
    #       owner: "__stringMin12Max12PatternD12"
    #     },
    #     gating_rule: {
    #       control_panel_arn: "__stringMin1Max256PatternAZaZ09", # required
    #       gating_controls: ["__stringMin1Max256PatternAZaZ09"], # required
    #       name: "__stringMin1Max64PatternS", # required
    #       rule_config: { # required
    #         inverted: false, # required
    #         threshold: 1, # required
    #         type: "ATLEAST" # One of: ["ATLEAST", "AND", "OR"], # required
    #       },
    #       safety_rule_arn: "__stringMin1Max256PatternAZaZ09", # required
    #       status: "PENDING" # One of: ["PENDING", "DEPLOYED", "PENDING_DELETION"], # required
    #       target_controls: ["__stringMin1Max256PatternAZaZ09"], # required
    #       wait_period_ms: 1, # required
    #       owner: "__stringMin12Max12PatternD12"
    #     }
    #   }
    # @return [Types::CreateSafetyRuleResponse]
    def create_safety_rule(params = {}, options = {})
      request = build_request(:create_safety_rule, params)
      request.send_request(options)
    end

    # <p>Delete a cluster.</p>
    # @param [Hash, Types::DeleteClusterRequest] params
    # @option params [String] :cluster_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster that you're deleting.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_arn: "__string", # required
    #   }
    #   options = {}
    #   response = client.delete_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteClusterResponse]
    def delete_cluster(params = {}, options = {})
      request = build_request(:delete_cluster, params)
      request.send_request(options)
    end

    # <p>Deletes a control panel.</p>
    # @param [Hash, Types::DeleteControlPanelRequest] params
    # @option params [String] :control_panel_arn
    #   <p>The Amazon Resource Name (ARN) of the control panel.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     control_panel_arn: "__string", # required
    #   }
    #   options = {}
    #   response = client.delete_control_panel(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteControlPanelResponse]
    def delete_control_panel(params = {}, options = {})
      request = build_request(:delete_control_panel, params)
      request.send_request(options)
    end

    # <p>Deletes a routing control.</p>
    # @param [Hash, Types::DeleteRoutingControlRequest] params
    # @option params [String] :routing_control_arn
    #   <p>The Amazon Resource Name (ARN) of the routing control that you're deleting.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     routing_control_arn: "__string", # required
    #   }
    #   options = {}
    #   response = client.delete_routing_control(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteRoutingControlResponse]
    def delete_routing_control(params = {}, options = {})
      request = build_request(:delete_routing_control, params)
      request.send_request(options)
    end

    # <p>Deletes a safety rule.</p>/&gt;
    # @param [Hash, Types::DeleteSafetyRuleRequest] params
    # @option params [String] :safety_rule_arn
    #   <p>The ARN of the safety rule.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     safety_rule_arn: "__string", # required
    #   }
    #   options = {}
    #   response = client.delete_safety_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteSafetyRuleResponse]
    def delete_safety_rule(params = {}, options = {})
      request = build_request(:delete_safety_rule, params)
      request.send_request(options)
    end

    # <p>Display the details about a cluster. The response includes the cluster name, endpoints, status, and Amazon Resource Name (ARN).</p>
    # @param [Hash, Types::DescribeClusterRequest] params
    # @option params [String] :cluster_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_arn: "__string", # required
    #   }
    #   options = {}
    #   response = client.describe_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cluster: {
    #       cluster_arn: "__stringMin1Max256PatternAZaZ09",
    #       cluster_endpoints: [
    #         {
    #           endpoint: "__stringMin1Max128PatternAZaZ09",
    #           region: "__stringMin1Max32PatternS"
    #         }
    #       ],
    #       name: "__stringMin1Max64PatternS",
    #       status: "PENDING" # One of: ["PENDING", "DEPLOYED", "PENDING_DELETION"],
    #       owner: "__stringMin12Max12PatternD12",
    #       network_type: "IPV4" # One of: ["IPV4", "DUALSTACK"]
    #     }
    #   }
    # @return [Types::DescribeClusterResponse]
    def describe_cluster(params = {}, options = {})
      request = build_request(:describe_cluster, params)
      request.send_request(options)
    end

    # <p>Displays details about a control panel.</p>
    # @param [Hash, Types::DescribeControlPanelRequest] params
    # @option params [String] :control_panel_arn
    #   <p>The Amazon Resource Name (ARN) of the control panel.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     control_panel_arn: "__string", # required
    #   }
    #   options = {}
    #   response = client.describe_control_panel(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     control_panel: {
    #       cluster_arn: "__stringMin1Max256PatternAZaZ09",
    #       control_panel_arn: "__stringMin1Max256PatternAZaZ09",
    #       default_control_panel: false,
    #       name: "__stringMin1Max64PatternS",
    #       routing_control_count: 1,
    #       status: "PENDING" # One of: ["PENDING", "DEPLOYED", "PENDING_DELETION"],
    #       owner: "__stringMin12Max12PatternD12"
    #     }
    #   }
    # @return [Types::DescribeControlPanelResponse]
    def describe_control_panel(params = {}, options = {})
      request = build_request(:describe_control_panel, params)
      request.send_request(options)
    end

    # <p>Displays details about a routing control. A routing control has one of two states: ON and OFF. You can map the routing control state to the state of an Amazon Route 53 health check, which can be used to control routing.</p> <p>To get or update the routing control state, see the Recovery Cluster (data plane) API actions for Amazon Route 53 Application Recovery Controller.</p>
    # @param [Hash, Types::DescribeRoutingControlRequest] params
    # @option params [String] :routing_control_arn
    #   <p>The Amazon Resource Name (ARN) of the routing control.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     routing_control_arn: "__string", # required
    #   }
    #   options = {}
    #   response = client.describe_routing_control(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     routing_control: {
    #       control_panel_arn: "__stringMin1Max256PatternAZaZ09",
    #       name: "__stringMin1Max64PatternS",
    #       routing_control_arn: "__stringMin1Max256PatternAZaZ09",
    #       status: "PENDING" # One of: ["PENDING", "DEPLOYED", "PENDING_DELETION"],
    #       owner: "__stringMin12Max12PatternD12"
    #     }
    #   }
    # @return [Types::DescribeRoutingControlResponse]
    def describe_routing_control(params = {}, options = {})
      request = build_request(:describe_routing_control, params)
      request.send_request(options)
    end

    # <p>Returns information about a safety rule.</p>
    # @param [Hash, Types::DescribeSafetyRuleRequest] params
    # @option params [String] :safety_rule_arn
    #   <p>The ARN of the safety rule.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     safety_rule_arn: "__string", # required
    #   }
    #   options = {}
    #   response = client.describe_safety_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     assertion_rule: {
    #       asserted_controls: ["__stringMin1Max256PatternAZaZ09"], # required
    #       control_panel_arn: "__stringMin1Max256PatternAZaZ09", # required
    #       name: "__stringMin1Max64PatternS", # required
    #       rule_config: { # required
    #         inverted: false, # required
    #         threshold: 1, # required
    #         type: "ATLEAST" # One of: ["ATLEAST", "AND", "OR"], # required
    #       },
    #       safety_rule_arn: "__stringMin1Max256PatternAZaZ09", # required
    #       status: "PENDING" # One of: ["PENDING", "DEPLOYED", "PENDING_DELETION"], # required
    #       wait_period_ms: 1, # required
    #       owner: "__stringMin12Max12PatternD12"
    #     },
    #     gating_rule: {
    #       control_panel_arn: "__stringMin1Max256PatternAZaZ09", # required
    #       gating_controls: ["__stringMin1Max256PatternAZaZ09"], # required
    #       name: "__stringMin1Max64PatternS", # required
    #       rule_config: { # required
    #         inverted: false, # required
    #         threshold: 1, # required
    #         type: "ATLEAST" # One of: ["ATLEAST", "AND", "OR"], # required
    #       },
    #       safety_rule_arn: "__stringMin1Max256PatternAZaZ09", # required
    #       status: "PENDING" # One of: ["PENDING", "DEPLOYED", "PENDING_DELETION"], # required
    #       target_controls: ["__stringMin1Max256PatternAZaZ09"], # required
    #       wait_period_ms: 1, # required
    #       owner: "__stringMin12Max12PatternD12"
    #     }
    #   }
    # @return [Types::DescribeSafetyRuleResponse]
    def describe_safety_rule(params = {}, options = {})
      request = build_request(:describe_safety_rule, params)
      request.send_request(options)
    end

    # <p>Get information about the resource policy for a cluster.</p>
    # @param [Hash, Types::GetResourcePolicyRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "__string", # required
    #   }
    #   options = {}
    #   response = client.get_resource_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy: "__policy"
    #   }
    # @return [Types::GetResourcePolicyResponse]
    def get_resource_policy(params = {}, options = {})
      request = build_request(:get_resource_policy, params)
      request.send_request(options)
    end

    # <p>Returns an array of all Amazon Route 53 health checks associated with a specific routing control.</p>
    # @param [Hash, Types::ListAssociatedRoute53HealthChecksRequest] params
    # @option params [Integer] :max_results
    #   <p>The number of objects that you want to return with this call.</p>
    # @option params [String] :next_token
    #   <p>The token that identifies which batch of results you want to see.</p>
    # @option params [String] :routing_control_arn
    #   <p>The Amazon Resource Name (ARN) of the routing control.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "__string",
    #     routing_control_arn: "__string", # required
    #   }
    #   options = {}
    #   response = client.list_associated_route53_health_checks(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     health_check_ids: ["__stringMax36PatternS"],
    #     next_token: "__stringMin1Max8096PatternS"
    #   }
    # @return [Types::ListAssociatedRoute53HealthChecksResponse]
    def list_associated_route53_health_checks(params = {}, options = {})
      request = build_request(:list_associated_route53_health_checks, params)
      request.send_request(options)
    end

    # <p>Returns an array of all the clusters in an account.</p>
    # @param [Hash, Types::ListClustersRequest] params
    # @option params [Integer] :max_results
    #   <p>The number of objects that you want to return with this call.</p>
    # @option params [String] :next_token
    #   <p>The token that identifies which batch of results you want to see.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "__string"
    #   }
    #   options = {}
    #   response = client.list_clusters(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     clusters: [
    #       {
    #         cluster_arn: "__stringMin1Max256PatternAZaZ09",
    #         cluster_endpoints: [
    #           {
    #             endpoint: "__stringMin1Max128PatternAZaZ09",
    #             region: "__stringMin1Max32PatternS"
    #           }
    #         ],
    #         name: "__stringMin1Max64PatternS",
    #         status: "PENDING" # One of: ["PENDING", "DEPLOYED", "PENDING_DELETION"],
    #         owner: "__stringMin12Max12PatternD12",
    #         network_type: "IPV4" # One of: ["IPV4", "DUALSTACK"]
    #       }
    #     ],
    #     next_token: "__stringMin1Max8096PatternS"
    #   }
    # @return [Types::ListClustersResponse]
    def list_clusters(params = {}, options = {})
      request = build_request(:list_clusters, params)
      request.send_request(options)
    end

    # <p>Returns an array of control panels in an account or in a cluster.</p>
    # @param [Hash, Types::ListControlPanelsRequest] params
    # @option params [String] :cluster_arn
    #   <p>The Amazon Resource Name (ARN) of a cluster.</p>
    # @option params [Integer] :max_results
    #   <p>The number of objects that you want to return with this call.</p>
    # @option params [String] :next_token
    #   <p>The token that identifies which batch of results you want to see.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_arn: "__string",
    #     max_results: 1,
    #     next_token: "__string"
    #   }
    #   options = {}
    #   response = client.list_control_panels(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     control_panels: [
    #       {
    #         cluster_arn: "__stringMin1Max256PatternAZaZ09",
    #         control_panel_arn: "__stringMin1Max256PatternAZaZ09",
    #         default_control_panel: false,
    #         name: "__stringMin1Max64PatternS",
    #         routing_control_count: 1,
    #         status: "PENDING" # One of: ["PENDING", "DEPLOYED", "PENDING_DELETION"],
    #         owner: "__stringMin12Max12PatternD12"
    #       }
    #     ],
    #     next_token: "__stringMin1Max8096PatternS"
    #   }
    # @return [Types::ListControlPanelsResponse]
    def list_control_panels(params = {}, options = {})
      request = build_request(:list_control_panels, params)
      request.send_request(options)
    end

    # <p>Returns an array of routing controls for a control panel. A routing control is an Amazon Route 53 Application Recovery Controller construct that has one of two states: ON and OFF. You can map the routing control state to the state of an Amazon Route 53 health check, which can be used to control routing.</p>
    # @param [Hash, Types::ListRoutingControlsRequest] params
    # @option params [String] :control_panel_arn
    #   <p>The Amazon Resource Name (ARN) of the control panel.</p>
    # @option params [Integer] :max_results
    #   <p>The number of objects that you want to return with this call.</p>
    # @option params [String] :next_token
    #   <p>The token that identifies which batch of results you want to see.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     control_panel_arn: "__string", # required
    #     max_results: 1,
    #     next_token: "__string"
    #   }
    #   options = {}
    #   response = client.list_routing_controls(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "__stringMin1Max8096PatternS",
    #     routing_controls: [
    #       {
    #         control_panel_arn: "__stringMin1Max256PatternAZaZ09",
    #         name: "__stringMin1Max64PatternS",
    #         routing_control_arn: "__stringMin1Max256PatternAZaZ09",
    #         status: "PENDING" # One of: ["PENDING", "DEPLOYED", "PENDING_DELETION"],
    #         owner: "__stringMin12Max12PatternD12"
    #       }
    #     ]
    #   }
    # @return [Types::ListRoutingControlsResponse]
    def list_routing_controls(params = {}, options = {})
      request = build_request(:list_routing_controls, params)
      request.send_request(options)
    end

    # <p>List the safety rules (the assertion rules and gating rules) that you've defined for the routing controls in a control panel.</p>
    # @param [Hash, Types::ListSafetyRulesRequest] params
    # @option params [String] :control_panel_arn
    #   <p>The Amazon Resource Name (ARN) of the control panel.</p>
    # @option params [Integer] :max_results
    #   <p>The number of objects that you want to return with this call.</p>
    # @option params [String] :next_token
    #   <p>The token that identifies which batch of results you want to see.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     control_panel_arn: "__string", # required
    #     max_results: 1,
    #     next_token: "__string"
    #   }
    #   options = {}
    #   response = client.list_safety_rules(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "__stringMin1Max8096PatternS",
    #     safety_rules: [
    #       {
    #         assertion: {
    #           asserted_controls: ["__stringMin1Max256PatternAZaZ09"], # required
    #           control_panel_arn: "__stringMin1Max256PatternAZaZ09", # required
    #           name: "__stringMin1Max64PatternS", # required
    #           rule_config: { # required
    #             inverted: false, # required
    #             threshold: 1, # required
    #             type: "ATLEAST" # One of: ["ATLEAST", "AND", "OR"], # required
    #           },
    #           safety_rule_arn: "__stringMin1Max256PatternAZaZ09", # required
    #           status: "PENDING" # One of: ["PENDING", "DEPLOYED", "PENDING_DELETION"], # required
    #           wait_period_ms: 1, # required
    #           owner: "__stringMin12Max12PatternD12"
    #         },
    #         gating: {
    #           control_panel_arn: "__stringMin1Max256PatternAZaZ09", # required
    #           gating_controls: ["__stringMin1Max256PatternAZaZ09"], # required
    #           name: "__stringMin1Max64PatternS", # required
    #           rule_config: { # required
    #             inverted: false, # required
    #             threshold: 1, # required
    #             type: "ATLEAST" # One of: ["ATLEAST", "AND", "OR"], # required
    #           },
    #           safety_rule_arn: "__stringMin1Max256PatternAZaZ09", # required
    #           status: "PENDING" # One of: ["PENDING", "DEPLOYED", "PENDING_DELETION"], # required
    #           target_controls: ["__stringMin1Max256PatternAZaZ09"], # required
    #           wait_period_ms: 1, # required
    #           owner: "__stringMin12Max12PatternD12"
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::ListSafetyRulesResponse]
    def list_safety_rules(params = {}, options = {})
      request = build_request(:list_safety_rules, params)
      request.send_request(options)
    end

    # <p>Lists the tags for a resource.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) for the resource that's tagged.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "__string", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: {
    #       "__string" => "__stringMin0Max256PatternS"
    #     }
    #   }
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Adds a tag to a resource.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) for the resource that's tagged.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags associated with the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "__string", # required
    #     tags: { # required
    #       "__string" => "__stringMin0Max256PatternS"
    #     }
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

    # <p>Removes a tag from a resource.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) for the resource that's tagged.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>Keys for the tags to be removed.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "__string", # required
    #     tag_keys: ["__string"], # required
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

    # <p>Updates an existing cluster. You can only update the network type of a cluster.</p>
    # @param [Hash, Types::UpdateClusterRequest] params
    # @option params [String] :cluster_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster.</p>
    # @option params [String] :network_type
    #   <p>The network type of the cluster. NetworkType can be one of the following: IPV4, DUALSTACK.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_arn: "__stringMin1Max256PatternAZaZ09", # required
    #     network_type: "IPV4" # One of: ["IPV4", "DUALSTACK"], # required
    #   }
    #   options = {}
    #   response = client.update_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cluster: {
    #       cluster_arn: "__stringMin1Max256PatternAZaZ09",
    #       cluster_endpoints: [
    #         {
    #           endpoint: "__stringMin1Max128PatternAZaZ09",
    #           region: "__stringMin1Max32PatternS"
    #         }
    #       ],
    #       name: "__stringMin1Max64PatternS",
    #       status: "PENDING" # One of: ["PENDING", "DEPLOYED", "PENDING_DELETION"],
    #       owner: "__stringMin12Max12PatternD12",
    #       network_type: "IPV4" # One of: ["IPV4", "DUALSTACK"]
    #     }
    #   }
    # @return [Types::UpdateClusterResponse]
    def update_cluster(params = {}, options = {})
      request = build_request(:update_cluster, params)
      request.send_request(options)
    end

    # <p>Updates a control panel. The only update you can make to a control panel is to change the name of the control panel.</p>
    # @param [Hash, Types::UpdateControlPanelRequest] params
    # @option params [String] :control_panel_arn
    #   <p>The Amazon Resource Name (ARN) of the control panel.</p>
    # @option params [String] :control_panel_name
    #   <p>The name of the control panel.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     control_panel_arn: "__stringMin1Max256PatternAZaZ09", # required
    #     control_panel_name: "__stringMin1Max64PatternS", # required
    #   }
    #   options = {}
    #   response = client.update_control_panel(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     control_panel: {
    #       cluster_arn: "__stringMin1Max256PatternAZaZ09",
    #       control_panel_arn: "__stringMin1Max256PatternAZaZ09",
    #       default_control_panel: false,
    #       name: "__stringMin1Max64PatternS",
    #       routing_control_count: 1,
    #       status: "PENDING" # One of: ["PENDING", "DEPLOYED", "PENDING_DELETION"],
    #       owner: "__stringMin12Max12PatternD12"
    #     }
    #   }
    # @return [Types::UpdateControlPanelResponse]
    def update_control_panel(params = {}, options = {})
      request = build_request(:update_control_panel, params)
      request.send_request(options)
    end

    # <p>Updates a routing control. You can only update the name of the routing control. To get or update the routing control state, see the Recovery Cluster (data plane) API actions for Amazon Route 53 Application Recovery Controller.</p>
    # @param [Hash, Types::UpdateRoutingControlRequest] params
    # @option params [String] :routing_control_arn
    #   <p>The Amazon Resource Name (ARN) of the routing control.</p>
    # @option params [String] :routing_control_name
    #   <p>The name of the routing control.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     routing_control_arn: "__stringMin1Max256PatternAZaZ09", # required
    #     routing_control_name: "__stringMin1Max64PatternS", # required
    #   }
    #   options = {}
    #   response = client.update_routing_control(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     routing_control: {
    #       control_panel_arn: "__stringMin1Max256PatternAZaZ09",
    #       name: "__stringMin1Max64PatternS",
    #       routing_control_arn: "__stringMin1Max256PatternAZaZ09",
    #       status: "PENDING" # One of: ["PENDING", "DEPLOYED", "PENDING_DELETION"],
    #       owner: "__stringMin12Max12PatternD12"
    #     }
    #   }
    # @return [Types::UpdateRoutingControlResponse]
    def update_routing_control(params = {}, options = {})
      request = build_request(:update_routing_control, params)
      request.send_request(options)
    end

    # <p>Update a safety rule (an assertion rule or gating rule). You can only update the name and the waiting period for a safety rule. To make other updates, delete the safety rule and create a new one.</p>
    # @param [Hash, Types::UpdateSafetyRuleRequest] params
    # @option params [Types::AssertionRuleUpdate] :assertion_rule_update
    #   <p>The assertion rule to update.</p>
    # @option params [Types::GatingRuleUpdate] :gating_rule_update
    #   <p>The gating rule to update.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     assertion_rule_update: {
    #       name: "__stringMin1Max64PatternS", # required
    #       safety_rule_arn: "__stringMin1Max256PatternAZaZ09", # required
    #       wait_period_ms: 1, # required
    #     },
    #     gating_rule_update: {
    #       name: "__stringMin1Max64PatternS", # required
    #       safety_rule_arn: "__stringMin1Max256PatternAZaZ09", # required
    #       wait_period_ms: 1, # required
    #     }
    #   }
    #   options = {}
    #   response = client.update_safety_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     assertion_rule: {
    #       asserted_controls: ["__stringMin1Max256PatternAZaZ09"], # required
    #       control_panel_arn: "__stringMin1Max256PatternAZaZ09", # required
    #       name: "__stringMin1Max64PatternS", # required
    #       rule_config: { # required
    #         inverted: false, # required
    #         threshold: 1, # required
    #         type: "ATLEAST" # One of: ["ATLEAST", "AND", "OR"], # required
    #       },
    #       safety_rule_arn: "__stringMin1Max256PatternAZaZ09", # required
    #       status: "PENDING" # One of: ["PENDING", "DEPLOYED", "PENDING_DELETION"], # required
    #       wait_period_ms: 1, # required
    #       owner: "__stringMin12Max12PatternD12"
    #     },
    #     gating_rule: {
    #       control_panel_arn: "__stringMin1Max256PatternAZaZ09", # required
    #       gating_controls: ["__stringMin1Max256PatternAZaZ09"], # required
    #       name: "__stringMin1Max64PatternS", # required
    #       rule_config: { # required
    #         inverted: false, # required
    #         threshold: 1, # required
    #         type: "ATLEAST" # One of: ["ATLEAST", "AND", "OR"], # required
    #       },
    #       safety_rule_arn: "__stringMin1Max256PatternAZaZ09", # required
    #       status: "PENDING" # One of: ["PENDING", "DEPLOYED", "PENDING_DELETION"], # required
    #       target_controls: ["__stringMin1Max256PatternAZaZ09"], # required
    #       wait_period_ms: 1, # required
    #       owner: "__stringMin12Max12PatternD12"
    #     }
    #   }
    # @return [Types::UpdateSafetyRuleResponse]
    def update_safety_rule(params = {}, options = {})
      request = build_request(:update_safety_rule, params)
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
      context[:gem_name] = 'aws-sdk-route53recoverycontrolconfig'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Request.new(handlers: handlers, context: context)
    end

    private

    def waiters
      {
        cluster_created: Waiters::ClusterCreated,
        cluster_deleted: Waiters::ClusterDeleted,
        control_panel_created: Waiters::ControlPanelCreated,
        control_panel_deleted: Waiters::ControlPanelDeleted,
        routing_control_created: Waiters::RoutingControlCreated,
        routing_control_deleted: Waiters::RoutingControlDeleted
      }
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
