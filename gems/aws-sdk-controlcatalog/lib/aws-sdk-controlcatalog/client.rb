# frozen_string_literal: true

# This is generated code!

require_relative 'plugins/endpoint'
require 'smithy-client/plugins/checksum_required'
require 'smithy-client/plugins/content_length'
require 'smithy-client/plugins/default_params'
require 'smithy-client/plugins/host_prefix'
require 'smithy-client/plugins/idempotency_token'
require 'smithy-client/plugins/logging'
require 'smithy-client/plugins/transport'
require 'smithy-client/plugins/pageable_response'
require 'smithy-client/plugins/param_converter'
require 'smithy-client/plugins/param_validator'
require 'smithy-client/plugins/protocol'
require 'smithy-client/plugins/raise_response_errors'
require 'smithy-client/plugins/request_compression'
require 'smithy-client/plugins/resolve_auth'
require 'smithy-client/plugins/response_target'
require 'smithy-client/plugins/sign_requests'
require 'smithy-client/plugins/transfer_encoding'
require 'aws-sdk-core/plugins/global_configuration'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/invocation_id'
require 'aws-sdk-core/plugins/recursion_detection'
require 'aws-sdk-core/plugins/retry_errors'
require 'aws-sdk-core/plugins/stub_responses'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'
require 'aws-sdk-core/rest_json'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:controlcatalog)

module Aws::ControlCatalog
  # An API client for Aws::ControlCatalog.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::ControlCatalog
    @identifier = :controlcatalog

    add_plugin(::Aws::ControlCatalog::Plugins::Endpoint)
    add_plugin(Smithy::Client::Plugins::ChecksumRequired)
    add_plugin(Smithy::Client::Plugins::ContentLength)
    add_plugin(Smithy::Client::Plugins::DefaultParams)
    add_plugin(Smithy::Client::Plugins::HostPrefix)
    add_plugin(Smithy::Client::Plugins::IdempotencyToken)
    add_plugin(Smithy::Client::Plugins::Logging)
    add_plugin(Smithy::Client::Plugins::Transport)
    add_plugin(Smithy::Client::Plugins::PageableResponse)
    add_plugin(Smithy::Client::Plugins::ParamConverter)
    add_plugin(Smithy::Client::Plugins::ParamValidator)
    add_plugin(Smithy::Client::Plugins::Protocol)
    add_plugin(Smithy::Client::Plugins::RaiseResponseErrors)
    add_plugin(Smithy::Client::Plugins::RequestCompression)
    add_plugin(Smithy::Client::Plugins::ResolveAuth)
    add_plugin(Smithy::Client::Plugins::ResponseTarget)
    add_plugin(Smithy::Client::Plugins::SignRequests)
    add_plugin(Smithy::Client::Plugins::TransferEncoding)
    add_plugin(Aws::Core::Plugins::GlobalConfiguration)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::InvocationId)
    add_plugin(Aws::Core::Plugins::RecursionDetection)
    add_plugin(Aws::Core::Plugins::RetryErrors)
    add_plugin(Aws::Core::Plugins::StubResponses)
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
    # @option options [Numeric] :connect_timeout
    #  The number of seconds to wait when opening a connection before timing out.
    #  Defaults to `nil`, which uses the transport's default; the default
    #  Net::HTTP transport uses 60 seconds.
    # @option options [Boolean] :convert_params (true)
    #  When `true`, request parameters are coerced into the required types.
    # @option options [#identity] :credentials_provider
    #  The credentials provider used to resolve credentials. Any object that responds to `#identity`
    #  and returns a {Aws::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  The endpoint to send requests to.
    #  The endpoint should be a URI formatted like "http://example.com:123"'
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::ControlCatalog::EndpointProvider)
    #  An object that provides an endpoint to use for the request.
    # @option options [URI::HTTP, String] :http_proxy
    #  A proxy to send requests through. Formatted like 'http://proxy.com:123'.
    # @option options [Boolean] :http_wire_trace
    #  When `true`, HTTP wire trace output is sent to the configured logger.
    # @option options [Smithy::Client::LogFormatter] :log_formatter (Aws::Log::Formatter.default)
    #  The log formatter used by the logger.
    # @option options [Symbol] :log_level (:info)
    #  The log level to send messages to the logger at.
    # @option options [Logger] :logger
    #  The Logger instance to send log messages to. If this option is not set, logging is disabled.
    # @option options [Integer] :max_attempts (3)
    #  The maximum number attempts that will be made for a single request, including
    #  the initial attempt.
    # @option options [String] :profile (default)
    #  Used when loading credentials from the shared config file and credentials file
    #  at ~/.aws/config and ~/.aws/credentials, respectively.  When not specified, 'default' is used.
    # @option options [Symbol, Object] :protocol
    #  The protocol used for request serialization and response deserialization. Defaults to the service default protocol. May be a Symbol naming a supported protocol, or a custom object implementing the protocol interface.
    #  Supported protocols: +:rest_json+ (defaults to +:rest_json+).
    # @option options [Boolean] :raise_response_errors (true)
    #  When `true`, response errors are raised. When `false`, the error is placed on the
    #  output in the {Smithy::Client::Response#error error accessor}.
    # @option options [Numeric] :read_timeout
    #  The number of seconds to wait for data to be read before timing out.
    #  Defaults to `nil`, which uses the transport's default; the default
    #  Net::HTTP transport uses 60 seconds.
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
    # @option options [String] :retry_mode (standard)
    #  Specifies which retry algorithm to use. Values are:
    #
    #  * `standard` - A standardized set of retry rules across the AWS SDKs.
    #    This includes support for retry quotas, which limit the number of
    #    unsuccessful retries a client can make. This is the default
    #    value if no retry mode is provided.
    #
    #  * `adaptive` - A retry mode that includes all the functionality of
    #    `standard` mode along with automatic client side throttling.
    # @option options [Object] :retry_strategy
    #  The retry strategy used by the client. If not provided, a default strategy is built
    #  based on `:retry_mode` — either `Standard` or `Adaptive`.
    #
    #  A custom strategy must respond to:
    #  * `#acquire_initial_retry_token` - returns a token
    #  * `#refresh_retry_token(token, error_info)` - returns a token or nil
    #  * `#record_success(token)` - records a successful request
    #  * `#request_bookkeeping(error_info = nil)` - updates internal state
    # @option options [String] :sdk_ua_app_id
    #  A unique and opaque application ID that is appended to the User-Agent header as app/sdk_ua_app_id.
    #  It should have a maximum length of 50. This variable is sourced from environment variable
    #  `AWS_SDK_UA_APP_ID` or the shared config profile attribute `sdk_ua_app_id`.
    # @option options [String] :secret_access_key
    # @option options [String] :session_token
    # @option options [String] :ssl_ca_bundle
    #  The path to a CA certificate bundle file in PEM format used to verify peer
    #  certificates. Defaults to `nil`, which uses the transport's default trust store.
    # @option options [String] :ssl_ca_directory
    #  The path to a directory of CA certificates in PEM format used to verify peer
    #  certificates. Defaults to `nil`, which uses the transport's default trust store.
    # @option options [OpenSSL::X509::Store] :ssl_ca_store
    #  An in-memory TLS trust store used to verify peer certificates. Defaults to `nil`,
    #  which uses the transport's default trust store.
    # @option options [Boolean] :ssl_verify_peer (true)
    #  When `true` (default), the peer's TLS certificate is verified. Disable only
    #  for debugging, as it is insecure.
    # @option options [Boolean] :stub_responses
    #  When `true`, the client will return stubbed responses instead of networking requests.
    #  By default fake responses are generated and returned. You can specify the response data
    #  to return or errors to raise by calling {Smithy::Client::Stubs#stub_responses}.
    # @option options [Smithy::Client::NetHTTP::Transport] :transport
    #  The transport used to send requests. Defaults to an HTTP/1.1 transport based on
    #  Net::HTTP ({Smithy::Client::NetHTTP::Transport}), constructed with the resolved
    #  common client transport options. Supply a custom object responding to
    #  `#transmit(request, sink)` and `#transmit_background(request, sink)` (both push
    #  the response into the sink; see {Smithy::Client::Transport}) to swap the transport,
    #  or a directly-constructed `NetHTTP::Transport` to set Net::HTTP-specific knobs. A
    #  caller-supplied transport instance is used as-is.
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

    # <p>Returns details about a specific control, most notably a list of Amazon Web Services Regions where this control is supported. Input a value for the <i>ControlArn</i> parameter, in ARN form. <code>GetControl</code> accepts <i>controltower</i> or <i>controlcatalog</i> control ARNs as input. Returns a <i>controlcatalog</i> ARN format.</p> <p>In the API response, controls that have the value <code>GLOBAL</code> in the <code>Scope</code> field do not show the <code>DeployableRegions</code> field, because it does not apply. Controls that have the value <code>REGIONAL</code> in the <code>Scope</code> field return a value for the <code>DeployableRegions</code> field, as shown in the example.</p>
    # @param [Hash, Types::GetControlRequest] params
    # @option params [String] :control_arn
    #   <p>The Amazon Resource Name (ARN) of the control. It has one of the following formats:</p> <p> <i>Global format</i> </p> <p> <code>arn:{PARTITION}:controlcatalog:::control/{CONTROL_CATALOG_OPAQUE_ID}</code> </p> <p> <i>Or Regional format</i> </p> <p> <code>arn:{PARTITION}:controltower:{REGION}::control/{CONTROL_TOWER_OPAQUE_ID}</code> </p> <p>Here is a more general pattern that covers Amazon Web Services Control Tower and Control Catalog ARNs:</p> <p> <code>^arn:(aws(?:[-a-z]*)?):(controlcatalog|controltower):[a-zA-Z0-9-]*::control/[0-9a-zA-Z_\\-]+$</code> </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     control_arn: "ControlArn", # required
    #   }
    #   options = {}
    #   response = client.get_control(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "ControlArn", # required
    #     aliases: ["ControlAlias"],
    #     name: "String", # required
    #     description: "String", # required
    #     behavior: "PREVENTIVE" # One of: ["PREVENTIVE", "PROACTIVE", "DETECTIVE"], # required
    #     severity: "LOW" # One of: ["LOW", "MEDIUM", "HIGH", "CRITICAL"],
    #     region_configuration: { # required
    #       scope: "GLOBAL" # One of: ["GLOBAL", "REGIONAL"], # required
    #       deployable_regions: ["RegionCode"]
    #     },
    #     implementation: {
    #       type: "ImplementationType", # required
    #       identifier: "ImplementationIdentifier"
    #     },
    #     parameter_requirement_summary: "REQUIRED" # One of: ["REQUIRED", "OPTIONAL", "NONE"],
    #     parameters: [
    #       {
    #         name: "String", # required
    #         requirement: "REQUIRED" # One of: ["REQUIRED", "OPTIONAL"]
    #       }
    #     ],
    #     create_time: Time.now,
    #     governed_resources: ["GovernedResource"],
    #     governed_providers: ["GovernedProvider"]
    #   }
    # @return [Types::GetControlResponse]
    def get_control(params = {}, options = {})
      request = build_request(:get_control, params)
      request.send_request(options)
    end

    # <p>Returns a paginated list of common controls from the Amazon Web Services Control Catalog.</p> <p>You can apply an optional filter to see common controls that have a specific objective. If you don’t provide a filter, the operation returns all common controls. </p>
    # @param [Hash, Types::ListCommonControlsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results on a page or for an API request call.</p>
    # @option params [String] :next_token
    #   <p>The pagination token that's used to fetch the next set of results.</p>
    # @option params [Types::CommonControlFilter] :common_control_filter
    #   <p>An optional filter that narrows the results to a specific objective.</p> <p>This filter allows you to specify one objective ARN at a time. Passing multiple ARNs in the <code>CommonControlFilter</code> isn’t supported.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     common_control_filter: {
    #       objectives: [
    #         {
    #           arn: "ObjectiveArn"
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.list_common_controls(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     common_controls: [ # required
    #       {
    #         arn: "CommonControlArn", # required
    #         name: "String", # required
    #         description: "String", # required
    #         domain: { # required
    #           arn: "DomainArn",
    #           name: "String"
    #         },
    #         objective: { # required
    #           arn: "ObjectiveArn",
    #           name: "String"
    #         },
    #         create_time: Time.now, # required
    #         last_update_time: Time.now, # required
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListCommonControlsResponse]
    def list_common_controls(params = {}, options = {})
      request = build_request(:list_common_controls, params)
      request.send_request(options)
    end

    # <p>Returns a paginated list of control mappings from the Control Catalog. Control mappings show relationships between controls and other entities, such as common controls or compliance frameworks.</p>
    # @param [Hash, Types::ListControlMappingsRequest] params
    # @option params [String] :next_token
    #   <p>The pagination token that's used to fetch the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results on a page or for an API request call.</p>
    # @option params [Types::ControlMappingFilter] :filter
    #   <p>An optional filter that narrows the results to specific control mappings based on control ARNs, common control ARNs, or mapping types.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #     filter: {
    #       control_arns: ["ControlArn"],
    #       common_control_arns: ["CommonControlArn"],
    #       mapping_types: ["FRAMEWORK" # One of: ["FRAMEWORK", "COMMON_CONTROL", "RELATED_CONTROL"]]
    #     }
    #   }
    #   options = {}
    #   response = client.list_control_mappings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     control_mappings: [ # required
    #       {
    #         control_arn: "ControlArn", # required
    #         mapping_type: "FRAMEWORK" # One of: ["FRAMEWORK", "COMMON_CONTROL", "RELATED_CONTROL"], # required
    #         mapping: { # required
    #           # One of:
    #           framework: {
    #             name: "FrameworkName", # required
    #             item: "FrameworkItem", # required
    #           },
    #           common_control: {
    #             common_control_arn: "CommonControlArn", # required
    #           },
    #           related_control: {
    #             control_arn: "ControlArn",
    #             relation_type: "COMPLEMENTARY" # One of: ["COMPLEMENTARY", "ALTERNATIVE", "MUTUALLY_EXCLUSIVE"], # required
    #           }
    #         }
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListControlMappingsResponse]
    def list_control_mappings(params = {}, options = {})
      request = build_request(:list_control_mappings, params)
      request.send_request(options)
    end

    # <p>Returns a paginated list of all available controls in the Control Catalog library. Allows you to discover available controls. The list of controls is given as structures of type <i>controlSummary</i>. The ARN is returned in the global <i>controlcatalog</i> format, as shown in the examples.</p>
    # @param [Hash, Types::ListControlsRequest] params
    # @option params [String] :next_token
    #   <p>The pagination token that's used to fetch the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results on a page or for an API request call.</p>
    # @option params [Types::ControlFilter] :filter
    #   <p>An optional filter that narrows the results to controls with specific implementation types or identifiers. If you don't provide a filter, the operation returns all available controls.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #     filter: {
    #       implementations: {
    #         types: ["ImplementationType"],
    #         identifiers: ["ImplementationIdentifier"]
    #       },
    #       governed_providers: ["GovernedProvider"]
    #     }
    #   }
    #   options = {}
    #   response = client.list_controls(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     controls: [ # required
    #       {
    #         arn: "ControlArn", # required
    #         aliases: ["ControlAlias"],
    #         name: "String", # required
    #         description: "String", # required
    #         behavior: "PREVENTIVE" # One of: ["PREVENTIVE", "PROACTIVE", "DETECTIVE"],
    #         severity: "LOW" # One of: ["LOW", "MEDIUM", "HIGH", "CRITICAL"],
    #         parameter_requirement_summary: "REQUIRED" # One of: ["REQUIRED", "OPTIONAL", "NONE"],
    #         implementation: {
    #           type: "ImplementationType", # required
    #           identifier: "ImplementationIdentifier"
    #         },
    #         create_time: Time.now,
    #         governed_resources: ["GovernedResource"],
    #         governed_providers: ["GovernedProvider"]
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListControlsResponse]
    def list_controls(params = {}, options = {})
      request = build_request(:list_controls, params)
      request.send_request(options)
    end

    # <p>Returns a paginated list of domains from the Control Catalog.</p>
    # @param [Hash, Types::ListDomainsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results on a page or for an API request call.</p>
    # @option params [String] :next_token
    #   <p>The pagination token that's used to fetch the next set of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_domains(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domains: [ # required
    #       {
    #         arn: "DomainArn", # required
    #         name: "String", # required
    #         description: "String", # required
    #         create_time: Time.now, # required
    #         last_update_time: Time.now, # required
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListDomainsResponse]
    def list_domains(params = {}, options = {})
      request = build_request(:list_domains, params)
      request.send_request(options)
    end

    # <p>Returns a paginated list of objectives from the Control Catalog.</p> <p>You can apply an optional filter to see the objectives that belong to a specific domain. If you don’t provide a filter, the operation returns all objectives. </p>
    # @param [Hash, Types::ListObjectivesRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results on a page or for an API request call.</p>
    # @option params [String] :next_token
    #   <p>The pagination token that's used to fetch the next set of results.</p>
    # @option params [Types::ObjectiveFilter] :objective_filter
    #   <p>An optional filter that narrows the results to a specific domain.</p> <p>This filter allows you to specify one domain ARN at a time. Passing multiple ARNs in the <code>ObjectiveFilter</code> isn’t supported.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     objective_filter: {
    #       domains: [
    #         {
    #           arn: "DomainArn"
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.list_objectives(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     objectives: [ # required
    #       {
    #         arn: "ObjectiveArn", # required
    #         name: "String", # required
    #         description: "String", # required
    #         domain: { # required
    #           arn: "DomainArn",
    #           name: "String"
    #         },
    #         create_time: Time.now, # required
    #         last_update_time: Time.now, # required
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListObjectivesResponse]
    def list_objectives(params = {}, options = {})
      request = build_request(:list_objectives, params)
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
      context[:gem_name] = 'aws-sdk-controlcatalog'
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

      # @api private
      def protocols
        {
          rest_json: Aws::Core::RestJson
        }
      end
    end
  end
end
