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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:rtbfabric)

module Aws::RTBFabric
  # An API client for Aws::RTBFabric.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::RTBFabric
    @identifier = :rtbfabric

    add_plugin(::Aws::RTBFabric::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::RTBFabric::EndpointProvider)
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

    # <p>Accepts a link request between gateways.</p> <p>When a requester gateway requests to link with a responder gateway, the responder can use this operation to accept the link request and establish the connection.</p>
    # @param [Hash, Types::AcceptLinkRequest] params
    # @option params [String] :gateway_id
    #   <p>The unique identifier of the gateway.</p>
    # @option params [String] :link_id
    #   <p>The unique identifier of the link.</p>
    # @option params [Types::LinkAttributes] :attributes
    #   <p>Attributes of the link.</p>
    # @option params [Types::LinkLogSettings] :log_settings
    #   <p>Settings for the application logs.</p>
    # @option params [Integer] :timeout_in_millis
    #   <p>The timeout value in milliseconds.</p>
    # @example Accept a link request
    #   # Accepts a link request from requester gateway
    #   params = {
    #     gateway_id: "rtb-gw-12345678",
    #     link_id: "link-87654321",
    #     log_settings: {
    #       application_logs: {
    #         sampling: {
    #           error_log: 100.0,
    #           filter_log: 0.0
    #         }
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.accept_link(params, options)
    #   response.to_h #=>
    #   {
    #     link_id: "link-87654321",
    #     gateway_id: "rtb-gw-12345678",
    #     peer_gateway_id: "rtb-gw-87654321",
    #     status: ACCEPTED,
    #     created_at: Time.parse("2024-01-15T10:30:00Z"),
    #     updated_at: Time.parse("2024-01-15T10:35:00Z")
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_id: "GatewayId", # required
    #     link_id: "LinkId", # required
    #     attributes: {
    #       responder_error_masking: [
    #         {
    #           http_code: "String", # required
    #           action: "NO_BID" # One of: ["NO_BID", "PASSTHROUGH"], # required
    #           logging_types: ["NONE" # One of: ["NONE", "METRIC", "RESPONSE"]], # required
    #           response_logging_percentage: 1.0
    #         }
    #       ],
    #       customer_provided_id: "CustomerProvidedId"
    #     },
    #     log_settings: { # required
    #       application_logs: { # required
    #         sampling: { # required
    #           error_log: 1.0, # required
    #           filter_log: 1.0, # required
    #         }
    #       }
    #     },
    #     timeout_in_millis: 1
    #   }
    #   options = {}
    #   response = client.accept_link(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     gateway_id: "GatewayId", # required
    #     peer_gateway_id: "GatewayId", # required
    #     status: "PENDING_CREATION" # One of: ["PENDING_CREATION", "PENDING_REQUEST", "REQUESTED", "ACCEPTED", "ACTIVE", "REJECTED", "FAILED", "PENDING_DELETION", "DELETED", "PENDING_UPDATE", "PENDING_ISOLATION", "ISOLATED", "PENDING_RESTORATION"], # required
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #     direction: "RESPONSE" # One of: ["RESPONSE", "REQUEST"],
    #     flow_modules: [
    #       {
    #         version: "Version",
    #         name: "FlowModuleName", # required
    #         depends_on: ["FlowModuleName"],
    #         module_parameters: {
    #           # One of:
    #           no_bid: {
    #             reason: "String",
    #             reason_code: 1,
    #             pass_through_percentage: 1.0
    #           },
    #           open_rtb_attribute: {
    #             filter_type: "INCLUDE" # One of: ["INCLUDE", "EXCLUDE"], # required
    #             filter_configuration: [ # required
    #               {
    #                 criteria: [ # required
    #                   {
    #                     path: "String", # required
    #                     values: ["String"], # required
    #                   }
    #                 ]
    #               }
    #             ],
    #             action: { # required
    #               # One of:
    #               no_bid: {
    #                 no_bid_reason_code: 1
    #               },
    #               header_tag: {
    #                 name: "String", # required
    #                 value: "String", # required
    #               }
    #             },
    #             holdback_percentage: 1.0, # required
    #           },
    #           rate_limiter: {
    #             tps: 1.0
    #           }
    #         }
    #       }
    #     ],
    #     pending_flow_modules: [
    #       {
    #         version: "Version",
    #         name: "FlowModuleName", # required
    #         depends_on: ["FlowModuleName"],
    #         module_parameters: {
    #           # One of:
    #           no_bid: {
    #             reason: "String",
    #             reason_code: 1,
    #             pass_through_percentage: 1.0
    #           },
    #           open_rtb_attribute: {
    #             filter_type: "INCLUDE" # One of: ["INCLUDE", "EXCLUDE"], # required
    #             filter_configuration: [ # required
    #               {
    #                 criteria: [ # required
    #                   {
    #                     path: "String", # required
    #                     values: ["String"], # required
    #                   }
    #                 ]
    #               }
    #             ],
    #             action: { # required
    #               # One of:
    #               no_bid: {
    #                 no_bid_reason_code: 1
    #               },
    #               header_tag: {
    #                 name: "String", # required
    #                 value: "String", # required
    #               }
    #             },
    #             holdback_percentage: 1.0, # required
    #           },
    #           rate_limiter: {
    #             tps: 1.0
    #           }
    #         }
    #       }
    #     ],
    #     attributes: {
    #       responder_error_masking: [
    #         {
    #           http_code: "String", # required
    #           action: "NO_BID" # One of: ["NO_BID", "PASSTHROUGH"], # required
    #           logging_types: ["NONE" # One of: ["NONE", "METRIC", "RESPONSE"]], # required
    #           response_logging_percentage: 1.0
    #         }
    #       ],
    #       customer_provided_id: "CustomerProvidedId"
    #     },
    #     log_settings: {
    #       application_logs: { # required
    #         sampling: { # required
    #           error_log: 1.0, # required
    #           filter_log: 1.0, # required
    #         }
    #       }
    #     },
    #     connectivity_type: "DEFAULT" # One of: ["DEFAULT", "PUBLIC_INGRESS", "PUBLIC_EGRESS", "EXTERNAL_INBOUND"],
    #     link_id: "LinkId", # required
    #   }
    # @return [Types::AcceptLinkResponse]
    def accept_link(params = {}, options = {})
      request = build_request(:accept_link, params)
      request.send_request(options)
    end

    # <p>Associates an ACM certificate with a responder gateway.</p>
    # @param [Hash, Types::AssociateCertificateRequest] params
    # @option params [String] :gateway_id
    #   <p>The unique identifier of the gateway.</p>
    # @option params [String] :acm_certificate_arn
    #   <p>The Amazon Resource Name (ARN) of the ACM certificate to associate.</p>
    # @option params [String] :client_token
    #   <p>Specifies a unique, case-sensitive identifier that you provide to ensure the idempotency of the request. This lets you safely retry the request without accidentally performing the same operation a second time. Passing the same value to a later call to an operation requires that you also pass the same value for all other parameters. We recommend that you use a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID type of value</a>.</p> <p>If you don't provide this value, then Amazon Web Services generates a random one for you.</p> <p>If you retry the operation with the same <code>clientToken</code>, but with different parameters, the retry fails with an <code>IdempotentParameterMismatch</code> error.</p>
    # @example Associate a certificate with a responder gateway
    #   # Associate an ACM certificate with a responder gateway
    #   params = {
    #     gateway_id: "rtb-gw-12345678",
    #     acm_certificate_arn: "arn:aws:acm:us-east-1:123456789012:certificate/12345678-1234-1234-1234-123456789012",
    #     client_token: "550e8400-e29b-41d4-a716-446655440000"
    #   }
    #   options = {}
    #   response = client.associate_certificate(params, options)
    #   response.to_h #=>
    #   {
    #     gateway_id: "rtb-gw-12345678",
    #     acm_certificate_arn: "arn:aws:acm:us-east-1:123456789012:certificate/12345678-1234-1234-1234-123456789012",
    #     status: PENDING_ASSOCIATION
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_id: "GatewayId", # required
    #     acm_certificate_arn: "AcmCertificateArn", # required
    #     client_token: "String", # required
    #   }
    #   options = {}
    #   response = client.associate_certificate(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     gateway_id: "GatewayId", # required
    #     acm_certificate_arn: "AcmCertificateArn", # required
    #     status: "PENDING_ASSOCIATION" # One of: ["PENDING_ASSOCIATION", "ASSOCIATED", "PENDING_DISASSOCIATION", "DISASSOCIATED", "FAILED"], # required
    #   }
    # @return [Types::AssociateCertificateResponse]
    def associate_certificate(params = {}, options = {})
      request = build_request(:associate_certificate, params)
      request.send_request(options)
    end

    # <p>Creates an inbound external link.</p>
    # @param [Hash, Types::CreateInboundExternalLinkRequest] params
    # @option params [String] :client_token
    #   <p>Specifies a unique, case-sensitive identifier that you provide to ensure the idempotency of the request. This lets you safely retry the request without accidentally performing the same operation a second time. Passing the same value to a later call to an operation requires that you also pass the same value for all other parameters. We recommend that you use a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID type of value</a>.</p> <p>If you don't provide this value, then Amazon Web Services generates a random one for you.</p> <p>If you retry the operation with the same <code>clientToken</code>, but with different parameters, the retry fails with an <code>IdempotentParameterMismatch</code> error.</p>
    # @option params [String] :gateway_id
    #   <p>The unique identifier of the gateway.</p>
    # @option params [Types::LinkAttributes] :attributes
    #   <p>Attributes of the link.</p>
    # @option params [Types::LinkLogSettings] :log_settings
    #   <p>Settings for the application logs.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A map of the key-value pairs of the tag or tags to assign to the resource.</p>
    # @example Create an inbound external link
    #   # Create an inbound external link for a responder gateway
    #   params = {
    #     gateway_id: "rtb-gw-12345678",
    #     client_token: "randomClientToken",
    #     log_settings: {
    #       application_logs: {
    #         sampling: {
    #           error_log: 100.0,
    #           filter_log: 0.0
    #         }
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.create_inbound_external_link(params, options)
    #   response.to_h #=>
    #   {
    #     gateway_id: "rtb-gw-12345678",
    #     link_id: "link-87654321",
    #     status: ACTIVE,
    #     domain_name: "rtb-gw-12345678.example.com"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "String", # required
    #     gateway_id: "GatewayId", # required
    #     attributes: {
    #       responder_error_masking: [
    #         {
    #           http_code: "String", # required
    #           action: "NO_BID" # One of: ["NO_BID", "PASSTHROUGH"], # required
    #           logging_types: ["NONE" # One of: ["NONE", "METRIC", "RESPONSE"]], # required
    #           response_logging_percentage: 1.0
    #         }
    #       ],
    #       customer_provided_id: "CustomerProvidedId"
    #     },
    #     log_settings: { # required
    #       application_logs: { # required
    #         sampling: { # required
    #           error_log: 1.0, # required
    #           filter_log: 1.0, # required
    #         }
    #       }
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_inbound_external_link(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     gateway_id: "GatewayId", # required
    #     link_id: "LinkId", # required
    #     status: "PENDING_CREATION" # One of: ["PENDING_CREATION", "PENDING_REQUEST", "REQUESTED", "ACCEPTED", "ACTIVE", "REJECTED", "FAILED", "PENDING_DELETION", "DELETED", "PENDING_UPDATE", "PENDING_ISOLATION", "ISOLATED", "PENDING_RESTORATION"], # required
    #     domain_name: "DomainName", # required
    #   }
    # @return [Types::CreateInboundExternalLinkResponse]
    def create_inbound_external_link(params = {}, options = {})
      request = build_request(:create_inbound_external_link, params)
      request.send_request(options)
    end

    # <p>Creates a new link between gateways.</p> <p>Establishes a connection that allows gateways to communicate and exchange bid requests and responses.</p>
    # @param [Hash, Types::CreateLinkRequest] params
    # @option params [String] :gateway_id
    #   <p>The unique identifier of the gateway.</p>
    # @option params [String] :peer_gateway_id
    #   <p>The unique identifier of the peer gateway.</p>
    # @option params [Types::LinkAttributes] :attributes
    #   <p>Attributes of the link.</p>
    # @option params [Boolean] :http_responder_allowed
    #   <p>Boolean to specify if an HTTP responder is allowed.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A map of the key-value pairs of the tag or tags to assign to the resource.</p>
    # @option params [Types::LinkLogSettings] :log_settings
    #   <p>Application log settings for the link. This value is required. Under <code>applicationLogs.sampling</code>, the <code>errorLog</code> and <code>filterLog</code> fields set the percentage of eligible events to log. Valid values range from <code>0</code> through <code>100</code>. To turn off application logs, set both fields to <code>0</code>, as in <code>{"applicationLogs":{"sampling":{"errorLog":0,"filterLog":0}}}</code>.</p>
    # @option params [Integer] :timeout_in_millis
    #   <p>The timeout value in milliseconds.</p>
    # @example Create a standard link between gateways
    #   # Creates a new link between two RTB applications. Requires peerGatewayId to specify the target gateway.
    #   params = {
    #     gateway_id: "rtb-gw-12345678",
    #     peer_gateway_id: "rtb-gw-87654321",
    #     log_settings: {
    #       application_logs: {
    #         sampling: {
    #           error_log: 100.0,
    #           filter_log: 0.0
    #         }
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.create_link(params, options)
    #   response.to_h #=>
    #   {
    #     link_id: "link-87654321",
    #     gateway_id: "rtb-gw-12345678",
    #     peer_gateway_id: "rtb-gw-87654321",
    #     status: PENDING_REQUEST,
    #     created_at: Time.parse("2024-01-15T10:30:00Z"),
    #     updated_at: Time.parse("2024-01-15T10:30:00Z")
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_id: "GatewayId", # required
    #     peer_gateway_id: "GatewayId", # required
    #     attributes: {
    #       responder_error_masking: [
    #         {
    #           http_code: "String", # required
    #           action: "NO_BID" # One of: ["NO_BID", "PASSTHROUGH"], # required
    #           logging_types: ["NONE" # One of: ["NONE", "METRIC", "RESPONSE"]], # required
    #           response_logging_percentage: 1.0
    #         }
    #       ],
    #       customer_provided_id: "CustomerProvidedId"
    #     },
    #     http_responder_allowed: false,
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     log_settings: { # required
    #       application_logs: { # required
    #         sampling: { # required
    #           error_log: 1.0, # required
    #           filter_log: 1.0, # required
    #         }
    #       }
    #     },
    #     timeout_in_millis: 1
    #   }
    #   options = {}
    #   response = client.create_link(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     gateway_id: "GatewayId", # required
    #     peer_gateway_id: "GatewayId", # required
    #     status: "PENDING_CREATION" # One of: ["PENDING_CREATION", "PENDING_REQUEST", "REQUESTED", "ACCEPTED", "ACTIVE", "REJECTED", "FAILED", "PENDING_DELETION", "DELETED", "PENDING_UPDATE", "PENDING_ISOLATION", "ISOLATED", "PENDING_RESTORATION"], # required
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #     direction: "RESPONSE" # One of: ["RESPONSE", "REQUEST"],
    #     flow_modules: [
    #       {
    #         version: "Version",
    #         name: "FlowModuleName", # required
    #         depends_on: ["FlowModuleName"],
    #         module_parameters: {
    #           # One of:
    #           no_bid: {
    #             reason: "String",
    #             reason_code: 1,
    #             pass_through_percentage: 1.0
    #           },
    #           open_rtb_attribute: {
    #             filter_type: "INCLUDE" # One of: ["INCLUDE", "EXCLUDE"], # required
    #             filter_configuration: [ # required
    #               {
    #                 criteria: [ # required
    #                   {
    #                     path: "String", # required
    #                     values: ["String"], # required
    #                   }
    #                 ]
    #               }
    #             ],
    #             action: { # required
    #               # One of:
    #               no_bid: {
    #                 no_bid_reason_code: 1
    #               },
    #               header_tag: {
    #                 name: "String", # required
    #                 value: "String", # required
    #               }
    #             },
    #             holdback_percentage: 1.0, # required
    #           },
    #           rate_limiter: {
    #             tps: 1.0
    #           }
    #         }
    #       }
    #     ],
    #     pending_flow_modules: [
    #       {
    #         version: "Version",
    #         name: "FlowModuleName", # required
    #         depends_on: ["FlowModuleName"],
    #         module_parameters: {
    #           # One of:
    #           no_bid: {
    #             reason: "String",
    #             reason_code: 1,
    #             pass_through_percentage: 1.0
    #           },
    #           open_rtb_attribute: {
    #             filter_type: "INCLUDE" # One of: ["INCLUDE", "EXCLUDE"], # required
    #             filter_configuration: [ # required
    #               {
    #                 criteria: [ # required
    #                   {
    #                     path: "String", # required
    #                     values: ["String"], # required
    #                   }
    #                 ]
    #               }
    #             ],
    #             action: { # required
    #               # One of:
    #               no_bid: {
    #                 no_bid_reason_code: 1
    #               },
    #               header_tag: {
    #                 name: "String", # required
    #                 value: "String", # required
    #               }
    #             },
    #             holdback_percentage: 1.0, # required
    #           },
    #           rate_limiter: {
    #             tps: 1.0
    #           }
    #         }
    #       }
    #     ],
    #     attributes: {
    #       responder_error_masking: [
    #         {
    #           http_code: "String", # required
    #           action: "NO_BID" # One of: ["NO_BID", "PASSTHROUGH"], # required
    #           logging_types: ["NONE" # One of: ["NONE", "METRIC", "RESPONSE"]], # required
    #           response_logging_percentage: 1.0
    #         }
    #       ],
    #       customer_provided_id: "CustomerProvidedId"
    #     },
    #     log_settings: {
    #       application_logs: { # required
    #         sampling: { # required
    #           error_log: 1.0, # required
    #           filter_log: 1.0, # required
    #         }
    #       }
    #     },
    #     connectivity_type: "DEFAULT" # One of: ["DEFAULT", "PUBLIC_INGRESS", "PUBLIC_EGRESS", "EXTERNAL_INBOUND"],
    #     link_id: "LinkId", # required
    #     customer_provided_id: "String"
    #   }
    # @return [Types::CreateLinkResponse]
    def create_link(params = {}, options = {})
      request = build_request(:create_link, params)
      request.send_request(options)
    end

    # <p>Creates a routing rule for a link.</p> <p>Routing rules use priority-based evaluation where lower priority numbers are evaluated first. Each rule specifies conditions that must all match for the rule to apply.</p>
    # @param [Hash, Types::CreateLinkRoutingRuleRequest] params
    # @option params [String] :client_token
    #   <p>Specifies a unique, case-sensitive identifier that you provide to ensure the idempotency of the request. This lets you safely retry the request without accidentally performing the same operation a second time. Passing the same value to a later call to an operation requires that you also pass the same value for all other parameters. We recommend that you use a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID type of value</a>.</p> <p>If you don't provide this value, then Amazon Web Services generates a random one for you.</p> <p>If you retry the operation with the same <code>clientToken</code>, but with different parameters, the retry fails with an <code>IdempotentParameterMismatch</code> error.</p>
    # @option params [String] :gateway_id
    #   <p>The unique identifier of the gateway.</p>
    # @option params [String] :link_id
    #   <p>The unique identifier of the link.</p>
    # @option params [Integer] :priority
    #   <p>The priority of the routing rule. Lower numbers are evaluated first. Valid values are 1 to 1000. Priority must be unique among non-deleted rules within a link.</p>
    # @option params [Types::RuleCondition] :conditions
    #   <p>The conditions for the routing rule. All specified fields must match for the rule to apply. At least one condition field must be set.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A map of the key-value pairs of the tag or tags to assign to the resource.</p>
    # @example Create a link routing rule
    #   # Create a routing rule with host header and path prefix conditions
    #   params = {
    #     gateway_id: "rtb-gw-12345678",
    #     link_id: "link-87654321",
    #     priority: 10,
    #     conditions: {
    #       host_header: "api.customer.com",
    #       path_prefix: "/openrtb/"
    #     },
    #     client_token: "550e8400-e29b-41d4-a716-446655440000"
    #   }
    #   options = {}
    #   response = client.create_link_routing_rule(params, options)
    #   response.to_h #=>
    #   {
    #     rule_id: "rule-abc123def456",
    #     status: CREATION_IN_PROGRESS,
    #     created_at: Time.parse("2024-01-01T12:00:00Z")
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "String", # required
    #     gateway_id: "GatewayId", # required
    #     link_id: "LinkId", # required
    #     priority: 1, # required
    #     conditions: { # required
    #       host_header: "String",
    #       host_header_wildcard: "String",
    #       path_prefix: "String",
    #       path_exact: "String",
    #       query_string_equals: {
    #         key: "String", # required
    #         value: "String", # required
    #       },
    #       query_string_exists: "String"
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_link_routing_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rule_id: "RuleId", # required
    #     status: "CREATION_IN_PROGRESS" # One of: ["CREATION_IN_PROGRESS", "ACTIVE", "UPDATE_IN_PROGRESS", "DELETION_IN_PROGRESS", "DELETED", "FAILED"], # required
    #     created_at: Time.now, # required
    #   }
    # @return [Types::CreateLinkRoutingRuleResponse]
    def create_link_routing_rule(params = {}, options = {})
      request = build_request(:create_link_routing_rule, params)
      request.send_request(options)
    end

    # <p>Creates an outbound external link.</p>
    # @param [Hash, Types::CreateOutboundExternalLinkRequest] params
    # @option params [String] :client_token
    #   <p>Specifies a unique, case-sensitive identifier that you provide to ensure the idempotency of the request. This lets you safely retry the request without accidentally performing the same operation a second time. Passing the same value to a later call to an operation requires that you also pass the same value for all other parameters. We recommend that you use a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID type of value</a>.</p> <p>If you don't provide this value, then Amazon Web Services generates a random one for you.</p> <p>If you retry the operation with the same <code>clientToken</code>, but with different parameters, the retry fails with an <code>IdempotentParameterMismatch</code> error.</p>
    # @option params [String] :gateway_id
    #   <p>The unique identifier of the gateway.</p>
    # @option params [Types::LinkAttributes] :attributes
    #   <p>Attributes of the link.</p>
    # @option params [String] :public_endpoint
    #   <p>The public endpoint of the link.</p>
    # @option params [Types::LinkLogSettings] :log_settings
    #   <p>Settings for the application logs.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A map of the key-value pairs of the tag or tags to assign to the resource.</p>
    # @example Create an outbound external link
    #   # Create an outbound external link for a requester gateway to connect to external public responder endpoints
    #   params = {
    #     gateway_id: "rtb-gw-12345678",
    #     public_endpoint: "https://external-responder.example.com",
    #     client_token: "12345678-1234-1234-1234-123456789012",
    #     log_settings: {
    #       application_logs: {
    #         sampling: {
    #           error_log: 100.0,
    #           filter_log: 0.0
    #         }
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.create_outbound_external_link(params, options)
    #   response.to_h #=>
    #   {
    #     gateway_id: "rtb-gw-12345678",
    #     link_id: "link-87654321",
    #     status: ACTIVE
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "String", # required
    #     gateway_id: "GatewayId", # required
    #     attributes: {
    #       responder_error_masking: [
    #         {
    #           http_code: "String", # required
    #           action: "NO_BID" # One of: ["NO_BID", "PASSTHROUGH"], # required
    #           logging_types: ["NONE" # One of: ["NONE", "METRIC", "RESPONSE"]], # required
    #           response_logging_percentage: 1.0
    #         }
    #       ],
    #       customer_provided_id: "CustomerProvidedId"
    #     },
    #     public_endpoint: "URL", # required
    #     log_settings: { # required
    #       application_logs: { # required
    #         sampling: { # required
    #           error_log: 1.0, # required
    #           filter_log: 1.0, # required
    #         }
    #       }
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_outbound_external_link(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     gateway_id: "GatewayId", # required
    #     link_id: "LinkId", # required
    #     status: "PENDING_CREATION" # One of: ["PENDING_CREATION", "PENDING_REQUEST", "REQUESTED", "ACCEPTED", "ACTIVE", "REJECTED", "FAILED", "PENDING_DELETION", "DELETED", "PENDING_UPDATE", "PENDING_ISOLATION", "ISOLATED", "PENDING_RESTORATION"], # required
    #   }
    # @return [Types::CreateOutboundExternalLinkResponse]
    def create_outbound_external_link(params = {}, options = {})
      request = build_request(:create_outbound_external_link, params)
      request.send_request(options)
    end

    # <p>Creates a requester gateway.</p>
    # @param [Hash, Types::CreateRequesterGatewayRequest] params
    # @option params [String] :vpc_id
    #   <p>The unique identifier of the Virtual Private Cloud (VPC).</p>
    # @option params [Array<String>] :subnet_ids
    #   <p>The unique identifiers of the subnets.</p>
    # @option params [Array<String>] :security_group_ids
    #   <p>The unique identifiers of the security groups.</p>
    # @option params [String] :client_token
    #   <p>Specifies a unique, case-sensitive identifier that you provide to ensure the idempotency of the request. This lets you safely retry the request without accidentally performing the same operation a second time. Passing the same value to a later call to an operation requires that you also pass the same value for all other parameters. We recommend that you use a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID type of value</a>.</p> <p>If you don't provide this value, then Amazon Web Services generates a random one for you.</p> <p>If you retry the operation with the same <code>clientToken</code>, but with different parameters, the retry fails with an <code>IdempotentParameterMismatch</code> error.</p>
    # @option params [String] :description
    #   <p>An optional description for the requester gateway.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A map of the key-value pairs of the tag or tags to assign to the resource.</p>
    # @example Create a requester gateway
    #   # Create requester gateway
    #   params = {
    #     description: "My requester gateway",
    #     vpc_id: "vpc-12345678",
    #     subnet_ids: [
    #       "subnet-12345678",
    #       "subnet-87654321"
    #     ],
    #     security_group_ids: [
    #       "sg-12345678"
    #     ],
    #     client_token: "12345678-1234-1234-1234-123456789012"
    #   }
    #   options = {}
    #   response = client.create_requester_gateway(params, options)
    #   response.to_h #=>
    #   {
    #     gateway_id: "rtb-gw-12345678",
    #     domain_name: "rtb-gw-12345678.example.com",
    #     status: ACTIVE
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     vpc_id: "VpcId", # required
    #     subnet_ids: ["SubnetId"], # required
    #     security_group_ids: ["SecurityGroupId"], # required
    #     client_token: "String", # required
    #     description: "String",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_requester_gateway(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     gateway_id: "GatewayId", # required
    #     domain_name: "DomainName", # required
    #     status: "PENDING_CREATION" # One of: ["PENDING_CREATION", "ACTIVE", "PENDING_DELETION", "DELETED", "ERROR", "PENDING_UPDATE", "ISOLATED", "PENDING_ISOLATION", "PENDING_RESTORATION"], # required
    #   }
    # @return [Types::CreateRequesterGatewayResponse]
    def create_requester_gateway(params = {}, options = {})
      request = build_request(:create_requester_gateway, params)
      request.send_request(options)
    end

    # <p>Creates a responder gateway.</p> <important> <p>A domain name or managed endpoint is required.</p> </important>
    # @param [Hash, Types::CreateResponderGatewayRequest] params
    # @option params [String] :vpc_id
    #   <p>The unique identifier of the Virtual Private Cloud (VPC).</p>
    # @option params [Array<String>] :subnet_ids
    #   <p>Unique identifiers of the subnets. A service quota for your account sets the number of Availability Zones that your subnets can span. By default, this quota is one Availability Zone. To span more Availability Zones, request a quota increase.</p>
    # @option params [Array<String>] :security_group_ids
    #   <p>The unique identifiers of the security groups.</p>
    # @option params [String] :domain_name
    #   <p>The domain name for the responder gateway.</p>
    # @option params [Integer] :port
    #   <p>The networking port to use.</p>
    # @option params [String] :protocol
    #   <p>The networking protocol to use.</p>
    # @option params [Types::ListenerConfig] :listener_config
    #   <p>Listener configuration for the protocols (HTTP, HTTPS, or both) accepted by the gateway.</p>
    # @option params [Types::TrustStoreConfiguration] :trust_store_configuration
    #   <p>The configuration of the trust store.</p>
    # @option params [Types::ManagedEndpointConfiguration] :managed_endpoint_configuration
    #   <p>The configuration for the managed endpoint.</p>
    # @option params [String] :client_token
    #   <p>Specifies a unique, case-sensitive identifier that you provide to ensure the idempotency of the request. This lets you safely retry the request without accidentally performing the same operation a second time. Passing the same value to a later call to an operation requires that you also pass the same value for all other parameters. We recommend that you use a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID type of value</a>.</p> <p>If you don't provide this value, then Amazon Web Services generates a random one for you.</p> <p>If you retry the operation with the same <code>clientToken</code>, but with different parameters, the retry fails with an <code>IdempotentParameterMismatch</code> error.</p>
    # @option params [String] :description
    #   <p>An optional description for the responder gateway.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A map of the key-value pairs of the tag or tags to assign to the resource.</p>
    # @option params [String] :gateway_type
    #   <p>The type of gateway. Valid values are <code>EXTERNAL</code> or <code>INTERNAL</code>.</p>
    # @option params [String] :client_routing_policy
    #   <p>The client routing policy of the gateway. This policy controls which Availability Zones RTB Fabric uses to reach the gateway for the requester gateways that send traffic to it. Valid values are the following:</p> <ul> <li> <p> <code>AVAILABILITY_ZONE_AFFINITY</code>: RTB Fabric routes each requester's traffic to gateway capacity in the requester's own Availability Zone when the gateway has capacity available there. Otherwise, RTB Fabric routes the traffic to gateway capacity in the other Availability Zones of the gateway.</p> </li> <li> <p> <code>ANY_AVAILABILITY_ZONE</code>: RTB Fabric routes each requester's traffic to gateway capacity in every Availability Zone that the subnets of the gateway span. The Availability Zone that the requester is in does not change this.</p> </li> </ul> <p>If you don't specify a value, RTB Fabric uses <code>AVAILABILITY_ZONE_AFFINITY</code>. To get the behavior of <code>ANY_AVAILABILITY_ZONE</code>, create the gateway with subnets in more than one Availability Zone. RTB Fabric does not support partial Availability Zone affinity, so <code>PARTIAL_AVAILABILITY_ZONE_AFFINITY</code> is not a valid value. For more information, see <a href="https://docs.aws.amazon.com/rtb-fabric/latest/userguide/working-with-responder-gateways.html#configuring-availability-zone-affinity">Configuring Availability Zone affinity</a> in the <i>Amazon Web Services RTB Fabric User Guide</i>.</p>
    # @example Create a responder gateway
    #   # Create responder gateway
    #   params = {
    #     description: "My responder gateway",
    #     vpc_id: "vpc-12345678",
    #     subnet_ids: [
    #       "subnet-12345678",
    #       "subnet-87654321"
    #     ],
    #     security_group_ids: [
    #       "sg-12345678"
    #     ],
    #     port: 443,
    #     protocol: HTTPS,
    #     client_token: "12345678-1234-1234-1234-123456789012"
    #   }
    #   options = {}
    #   response = client.create_responder_gateway(params, options)
    #   response.to_h #=>
    #   {
    #     gateway_id: "rtb-gw-12345678",
    #     status: ACTIVE
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     vpc_id: "VpcId", # required
    #     subnet_ids: ["SubnetId"], # required
    #     security_group_ids: ["SecurityGroupId"], # required
    #     domain_name: "DomainName",
    #     port: 1, # required
    #     protocol: "HTTP" # One of: ["HTTP", "HTTPS"], # required
    #     listener_config: {
    #       protocols: ["HTTP" # One of: ["HTTP", "HTTPS"]], # required
    #     },
    #     trust_store_configuration: {
    #       certificate_authority_certificates: ["Base64EncodedCertificateChain"], # required
    #     },
    #     managed_endpoint_configuration: {
    #       # One of:
    #       auto_scaling_groups: {
    #         auto_scaling_group_names: ["AutoScalingGroupName"], # required
    #         role_arn: "String", # required
    #         health_check_config: {
    #           port: 1, # required
    #           path: "String", # required
    #           protocol: "HTTP" # One of: ["HTTP", "HTTPS"],
    #           timeout_ms: 1,
    #           interval_seconds: 1,
    #           status_code_matcher: "StatusCodeMatcher",
    #           healthy_threshold_count: 1,
    #           unhealthy_threshold_count: 1
    #         }
    #       },
    #       eks_endpoints: {
    #         endpoints_resource_name: "KubernetesEndpointsResourceName", # required
    #         endpoints_resource_namespace: "KubernetesNamespace", # required
    #         cluster_api_server_endpoint_uri: "URI", # required
    #         cluster_api_server_ca_certificate_chain: "Base64EncodedCertificateChain", # required
    #         cluster_name: "KubernetesClusterName", # required
    #         role_arn: "String", # required
    #       }
    #     },
    #     client_token: "String", # required
    #     description: "String",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     gateway_type: "EXTERNAL" # One of: ["EXTERNAL", "INTERNAL"],
    #     client_routing_policy: "AVAILABILITY_ZONE_AFFINITY" # One of: ["AVAILABILITY_ZONE_AFFINITY", "ANY_AVAILABILITY_ZONE"]
    #   }
    #   options = {}
    #   response = client.create_responder_gateway(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     gateway_id: "GatewayId", # required
    #     status: "PENDING_CREATION" # One of: ["PENDING_CREATION", "ACTIVE", "PENDING_DELETION", "DELETED", "ERROR", "PENDING_UPDATE", "ISOLATED", "PENDING_ISOLATION", "PENDING_RESTORATION"], # required
    #     listener_config: {
    #       protocols: ["HTTP" # One of: ["HTTP", "HTTPS"]], # required
    #     },
    #     external_inbound_endpoint: "DomainName",
    #     client_routing_policy: "AVAILABILITY_ZONE_AFFINITY" # One of: ["AVAILABILITY_ZONE_AFFINITY", "ANY_AVAILABILITY_ZONE"]
    #   }
    # @return [Types::CreateResponderGatewayResponse]
    def create_responder_gateway(params = {}, options = {})
      request = build_request(:create_responder_gateway, params)
      request.send_request(options)
    end

    # <p>Deletes an inbound external link.</p>
    # @param [Hash, Types::DeleteInboundExternalLinkRequest] params
    # @option params [String] :gateway_id
    #   <p>The unique identifier of the gateway.</p>
    # @option params [String] :link_id
    #   <p>The unique identifier of the link.</p>
    # @example Delete an inbound external link
    #   # Delete an inbound external link
    #   params = {
    #     gateway_id: "rtb-gw-12345678",
    #     link_id: "link-87654321"
    #   }
    #   options = {}
    #   response = client.delete_inbound_external_link(params, options)
    #   response.to_h #=>
    #   {
    #     link_id: "link-87654321",
    #     status: DELETED
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_id: "GatewayId", # required
    #     link_id: "LinkId", # required
    #   }
    #   options = {}
    #   response = client.delete_inbound_external_link(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     link_id: "LinkId", # required
    #     status: "PENDING_CREATION" # One of: ["PENDING_CREATION", "PENDING_REQUEST", "REQUESTED", "ACCEPTED", "ACTIVE", "REJECTED", "FAILED", "PENDING_DELETION", "DELETED", "PENDING_UPDATE", "PENDING_ISOLATION", "ISOLATED", "PENDING_RESTORATION"], # required
    #   }
    # @return [Types::DeleteInboundExternalLinkResponse]
    def delete_inbound_external_link(params = {}, options = {})
      request = build_request(:delete_inbound_external_link, params)
      request.send_request(options)
    end

    # <p>Deletes a link between gateways.</p> <p>Permanently removes the connection between gateways. This action cannot be undone.</p>
    # @param [Hash, Types::DeleteLinkRequest] params
    # @option params [String] :gateway_id
    #   <p>The unique identifier of the gateway.</p>
    # @option params [String] :link_id
    #   <p>The unique identifier of the link.</p>
    # @example Delete a link
    #   # Deletes an existing link
    #   params = {
    #     gateway_id: "rtb-gw-12345678",
    #     link_id: "link-87654321"
    #   }
    #   options = {}
    #   response = client.delete_link(params, options)
    #   response.to_h #=>
    #   {
    #     link_id: "link-87654321",
    #     status: PENDING_DELETION
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_id: "GatewayId", # required
    #     link_id: "LinkId", # required
    #   }
    #   options = {}
    #   response = client.delete_link(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     link_id: "LinkId", # required
    #     status: "PENDING_CREATION" # One of: ["PENDING_CREATION", "PENDING_REQUEST", "REQUESTED", "ACCEPTED", "ACTIVE", "REJECTED", "FAILED", "PENDING_DELETION", "DELETED", "PENDING_UPDATE", "PENDING_ISOLATION", "ISOLATED", "PENDING_RESTORATION"], # required
    #   }
    # @return [Types::DeleteLinkResponse]
    def delete_link(params = {}, options = {})
      request = build_request(:delete_link, params)
      request.send_request(options)
    end

    # <p>Deletes a routing rule from a link.</p>
    # @param [Hash, Types::DeleteLinkRoutingRuleRequest] params
    # @option params [String] :gateway_id
    #   <p>The unique identifier of the gateway.</p>
    # @option params [String] :link_id
    #   <p>The unique identifier of the link.</p>
    # @option params [String] :rule_id
    #   <p>The unique identifier of the routing rule.</p>
    # @example Delete a link routing rule
    #   # Delete a link routing rule
    #   params = {
    #     gateway_id: "rtb-gw-12345678",
    #     link_id: "link-87654321",
    #     rule_id: "rule-abc123def456"
    #   }
    #   options = {}
    #   response = client.delete_link_routing_rule(params, options)
    #   response.to_h #=>
    #   {
    #     rule_id: "rule-abc123def456",
    #     status: DELETION_IN_PROGRESS
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_id: "GatewayId", # required
    #     link_id: "LinkId", # required
    #     rule_id: "RuleId", # required
    #   }
    #   options = {}
    #   response = client.delete_link_routing_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rule_id: "RuleId", # required
    #     status: "CREATION_IN_PROGRESS" # One of: ["CREATION_IN_PROGRESS", "ACTIVE", "UPDATE_IN_PROGRESS", "DELETION_IN_PROGRESS", "DELETED", "FAILED"], # required
    #   }
    # @return [Types::DeleteLinkRoutingRuleResponse]
    def delete_link_routing_rule(params = {}, options = {})
      request = build_request(:delete_link_routing_rule, params)
      request.send_request(options)
    end

    # <p>Deletes an outbound external link.</p>
    # @param [Hash, Types::DeleteOutboundExternalLinkRequest] params
    # @option params [String] :gateway_id
    #   <p>The unique identifier of the gateway.</p>
    # @option params [String] :link_id
    #   <p>The unique identifier of the link.</p>
    # @example Delete an outbound external link
    #   # Delete an outbound external link
    #   params = {
    #     gateway_id: "rtb-gw-12345678",
    #     link_id: "link-87654321"
    #   }
    #   options = {}
    #   response = client.delete_outbound_external_link(params, options)
    #   response.to_h #=>
    #   {
    #     link_id: "link-87654321",
    #     status: DELETED
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_id: "GatewayId", # required
    #     link_id: "LinkId", # required
    #   }
    #   options = {}
    #   response = client.delete_outbound_external_link(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     link_id: "LinkId", # required
    #     status: "PENDING_CREATION" # One of: ["PENDING_CREATION", "PENDING_REQUEST", "REQUESTED", "ACCEPTED", "ACTIVE", "REJECTED", "FAILED", "PENDING_DELETION", "DELETED", "PENDING_UPDATE", "PENDING_ISOLATION", "ISOLATED", "PENDING_RESTORATION"], # required
    #   }
    # @return [Types::DeleteOutboundExternalLinkResponse]
    def delete_outbound_external_link(params = {}, options = {})
      request = build_request(:delete_outbound_external_link, params)
      request.send_request(options)
    end

    # <p>Deletes a requester gateway.</p>
    # @param [Hash, Types::DeleteRequesterGatewayRequest] params
    # @option params [String] :gateway_id
    #   <p>The unique identifier of the gateway.</p>
    # @example Delete a requester gateway
    #   # Delete requester gateway
    #   params = {
    #     gateway_id: "rtb-gw-12345678"
    #   }
    #   options = {}
    #   response = client.delete_requester_gateway(params, options)
    #   response.to_h #=>
    #   {
    #     gateway_id: "rtb-gw-12345678",
    #     status: PENDING_DELETION
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_id: "GatewayId", # required
    #   }
    #   options = {}
    #   response = client.delete_requester_gateway(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     gateway_id: "GatewayId", # required
    #     status: "PENDING_CREATION" # One of: ["PENDING_CREATION", "ACTIVE", "PENDING_DELETION", "DELETED", "ERROR", "PENDING_UPDATE", "ISOLATED", "PENDING_ISOLATION", "PENDING_RESTORATION"], # required
    #   }
    # @return [Types::DeleteRequesterGatewayResponse]
    def delete_requester_gateway(params = {}, options = {})
      request = build_request(:delete_requester_gateway, params)
      request.send_request(options)
    end

    # <p>Deletes a responder gateway.</p>
    # @param [Hash, Types::DeleteResponderGatewayRequest] params
    # @option params [String] :gateway_id
    #   <p>The unique identifier of the gateway.</p>
    # @example Delete a responder gateway
    #   # Delete responder gateway
    #   params = {
    #     gateway_id: "rtb-gw-12345678"
    #   }
    #   options = {}
    #   response = client.delete_responder_gateway(params, options)
    #   response.to_h #=>
    #   {
    #     gateway_id: "rtb-gw-12345678",
    #     status: PENDING_DELETION
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_id: "GatewayId", # required
    #   }
    #   options = {}
    #   response = client.delete_responder_gateway(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     gateway_id: "GatewayId", # required
    #     status: "PENDING_CREATION" # One of: ["PENDING_CREATION", "ACTIVE", "PENDING_DELETION", "DELETED", "ERROR", "PENDING_UPDATE", "ISOLATED", "PENDING_ISOLATION", "PENDING_RESTORATION"], # required
    #   }
    # @return [Types::DeleteResponderGatewayResponse]
    def delete_responder_gateway(params = {}, options = {})
      request = build_request(:delete_responder_gateway, params)
      request.send_request(options)
    end

    # <p>Removes a certificate association from a responder gateway.</p>
    # @param [Hash, Types::DisassociateCertificateRequest] params
    # @option params [String] :gateway_id
    #   <p>The unique identifier of the gateway.</p>
    # @option params [String] :acm_certificate_arn
    #   <p>The Amazon Resource Name (ARN) of the ACM certificate to disassociate.</p>
    # @example Disassociate a certificate from a responder gateway
    #   # Remove an ACM certificate association from a responder gateway
    #   params = {
    #     gateway_id: "rtb-gw-12345678",
    #     acm_certificate_arn: "arn:aws:acm:us-east-1:123456789012:certificate/12345678-1234-1234-1234-123456789012"
    #   }
    #   options = {}
    #   response = client.disassociate_certificate(params, options)
    #   response.to_h #=>
    #   {
    #     gateway_id: "rtb-gw-12345678",
    #     acm_certificate_arn: "arn:aws:acm:us-east-1:123456789012:certificate/12345678-1234-1234-1234-123456789012",
    #     status: PENDING_DISASSOCIATION
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_id: "GatewayId", # required
    #     acm_certificate_arn: "AcmCertificateArn", # required
    #   }
    #   options = {}
    #   response = client.disassociate_certificate(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     gateway_id: "GatewayId", # required
    #     acm_certificate_arn: "AcmCertificateArn", # required
    #     status: "PENDING_ASSOCIATION" # One of: ["PENDING_ASSOCIATION", "ASSOCIATED", "PENDING_DISASSOCIATION", "DISASSOCIATED", "FAILED"], # required
    #   }
    # @return [Types::DisassociateCertificateResponse]
    def disassociate_certificate(params = {}, options = {})
      request = build_request(:disassociate_certificate, params)
      request.send_request(options)
    end

    # <p>Retrieves the details of a certificate association with a responder gateway.</p>
    # @param [Hash, Types::GetCertificateAssociationRequest] params
    # @option params [String] :gateway_id
    #   <p>The unique identifier of the gateway.</p>
    # @option params [String] :acm_certificate_arn
    #   <p>The Amazon Resource Name (ARN) of the ACM certificate.</p>
    # @example Get certificate association details from a responder gateway
    #   # Retrieve details of an ACM certificate association with a responder gateway
    #   params = {
    #     gateway_id: "rtb-gw-12345678",
    #     acm_certificate_arn: "arn:aws:acm:us-east-1:123456789012:certificate/12345678-1234-1234-1234-123456789012"
    #   }
    #   options = {}
    #   response = client.get_certificate_association(params, options)
    #   response.to_h #=>
    #   {
    #     gateway_id: "rtb-gw-12345678",
    #     acm_certificate_arn: "arn:aws:acm:us-east-1:123456789012:certificate/12345678-1234-1234-1234-123456789012",
    #     status: ASSOCIATED,
    #     associated_at: Time.parse(1704067200),
    #     updated_at: Time.parse(1704067200)
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_id: "GatewayId", # required
    #     acm_certificate_arn: "AcmCertificateArn", # required
    #   }
    #   options = {}
    #   response = client.get_certificate_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     gateway_id: "GatewayId", # required
    #     acm_certificate_arn: "AcmCertificateArn", # required
    #     status: "PENDING_ASSOCIATION" # One of: ["PENDING_ASSOCIATION", "ASSOCIATED", "PENDING_DISASSOCIATION", "DISASSOCIATED", "FAILED"], # required
    #     associated_at: Time.now,
    #     updated_at: Time.now
    #   }
    # @return [Types::GetCertificateAssociationResponse]
    def get_certificate_association(params = {}, options = {})
      request = build_request(:get_certificate_association, params)
      request.send_request(options)
    end

    # <p>Retrieves information about an inbound external link.</p>
    # @param [Hash, Types::GetInboundExternalLinkRequest] params
    # @option params [String] :gateway_id
    #   <p>The unique identifier of the gateway.</p>
    # @option params [String] :link_id
    #   <p>The unique identifier of the link.</p>
    # @example Get inbound external link details
    #   # Get details of an inbound external link
    #   params = {
    #     gateway_id: "rtb-gw-12345678",
    #     link_id: "link-87654321"
    #   }
    #   options = {}
    #   response = client.get_inbound_external_link(params, options)
    #   response.to_h #=>
    #   {
    #     gateway_id: "rtb-gw-12345678",
    #     link_id: "link-87654321",
    #     status: ACTIVE,
    #     domain_name: "rtb-gw-12345678.123456789012.gateway.rtbfabric.us-east-1.amazonaws.com",
    #     created_at: Time.parse("2024-01-15T10:30:00Z"),
    #     updated_at: Time.parse("2024-01-15T10:35:00Z")
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_id: "GatewayId", # required
    #     link_id: "LinkId", # required
    #   }
    #   options = {}
    #   response = client.get_inbound_external_link(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     gateway_id: "GatewayId", # required
    #     link_id: "LinkId", # required
    #     status: "PENDING_CREATION" # One of: ["PENDING_CREATION", "PENDING_REQUEST", "REQUESTED", "ACCEPTED", "ACTIVE", "REJECTED", "FAILED", "PENDING_DELETION", "DELETED", "PENDING_UPDATE", "PENDING_ISOLATION", "ISOLATED", "PENDING_RESTORATION"], # required
    #     domain_name: "DomainName", # required
    #     flow_modules: [
    #       {
    #         version: "Version",
    #         name: "FlowModuleName", # required
    #         depends_on: ["FlowModuleName"],
    #         module_parameters: {
    #           # One of:
    #           no_bid: {
    #             reason: "String",
    #             reason_code: 1,
    #             pass_through_percentage: 1.0
    #           },
    #           open_rtb_attribute: {
    #             filter_type: "INCLUDE" # One of: ["INCLUDE", "EXCLUDE"], # required
    #             filter_configuration: [ # required
    #               {
    #                 criteria: [ # required
    #                   {
    #                     path: "String", # required
    #                     values: ["String"], # required
    #                   }
    #                 ]
    #               }
    #             ],
    #             action: { # required
    #               # One of:
    #               no_bid: {
    #                 no_bid_reason_code: 1
    #               },
    #               header_tag: {
    #                 name: "String", # required
    #                 value: "String", # required
    #               }
    #             },
    #             holdback_percentage: 1.0, # required
    #           },
    #           rate_limiter: {
    #             tps: 1.0
    #           }
    #         }
    #       }
    #     ],
    #     pending_flow_modules: [
    #       {
    #         version: "Version",
    #         name: "FlowModuleName", # required
    #         depends_on: ["FlowModuleName"],
    #         module_parameters: {
    #           # One of:
    #           no_bid: {
    #             reason: "String",
    #             reason_code: 1,
    #             pass_through_percentage: 1.0
    #           },
    #           open_rtb_attribute: {
    #             filter_type: "INCLUDE" # One of: ["INCLUDE", "EXCLUDE"], # required
    #             filter_configuration: [ # required
    #               {
    #                 criteria: [ # required
    #                   {
    #                     path: "String", # required
    #                     values: ["String"], # required
    #                   }
    #                 ]
    #               }
    #             ],
    #             action: { # required
    #               # One of:
    #               no_bid: {
    #                 no_bid_reason_code: 1
    #               },
    #               header_tag: {
    #                 name: "String", # required
    #                 value: "String", # required
    #               }
    #             },
    #             holdback_percentage: 1.0, # required
    #           },
    #           rate_limiter: {
    #             tps: 1.0
    #           }
    #         }
    #       }
    #     ],
    #     attributes: {
    #       responder_error_masking: [
    #         {
    #           http_code: "String", # required
    #           action: "NO_BID" # One of: ["NO_BID", "PASSTHROUGH"], # required
    #           logging_types: ["NONE" # One of: ["NONE", "METRIC", "RESPONSE"]], # required
    #           response_logging_percentage: 1.0
    #         }
    #       ],
    #       customer_provided_id: "CustomerProvidedId"
    #     },
    #     created_at: Time.now,
    #     updated_at: Time.now,
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     log_settings: {
    #       application_logs: { # required
    #         sampling: { # required
    #           error_log: 1.0, # required
    #           filter_log: 1.0, # required
    #         }
    #       }
    #     },
    #     connectivity_type: "DEFAULT" # One of: ["DEFAULT", "PUBLIC_INGRESS", "PUBLIC_EGRESS", "EXTERNAL_INBOUND"]
    #   }
    # @return [Types::GetInboundExternalLinkResponse]
    def get_inbound_external_link(params = {}, options = {})
      request = build_request(:get_inbound_external_link, params)
      request.send_request(options)
    end

    # <p>Retrieves information about a link between gateways.</p> <p>Returns detailed information about the link configuration, status, and associated gateways.</p>
    # @param [Hash, Types::GetLinkRequest] params
    # @option params [String] :gateway_id
    #   <p>The unique identifier of the gateway.</p>
    # @option params [String] :link_id
    #   <p>The unique identifier of the link.</p>
    # @example Get link details
    #   # Retrieves details of a specific link
    #   params = {
    #     gateway_id: "rtb-gw-12345678",
    #     link_id: "link-87654321"
    #   }
    #   options = {}
    #   response = client.get_link(params, options)
    #   response.to_h #=>
    #   {
    #     link_id: "link-87654321",
    #     gateway_id: "rtb-gw-12345678",
    #     peer_gateway_id: "rtb-gw-87654321",
    #     status: ACTIVE,
    #     created_at: Time.parse("2024-01-15T10:30:00Z"),
    #     updated_at: Time.parse("2024-01-15T10:35:00Z")
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_id: "GatewayId", # required
    #     link_id: "LinkId", # required
    #   }
    #   options = {}
    #   response = client.get_link(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     gateway_id: "GatewayId", # required
    #     peer_gateway_id: "GatewayId", # required
    #     status: "PENDING_CREATION" # One of: ["PENDING_CREATION", "PENDING_REQUEST", "REQUESTED", "ACCEPTED", "ACTIVE", "REJECTED", "FAILED", "PENDING_DELETION", "DELETED", "PENDING_UPDATE", "PENDING_ISOLATION", "ISOLATED", "PENDING_RESTORATION"], # required
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #     direction: "RESPONSE" # One of: ["RESPONSE", "REQUEST"],
    #     flow_modules: [
    #       {
    #         version: "Version",
    #         name: "FlowModuleName", # required
    #         depends_on: ["FlowModuleName"],
    #         module_parameters: {
    #           # One of:
    #           no_bid: {
    #             reason: "String",
    #             reason_code: 1,
    #             pass_through_percentage: 1.0
    #           },
    #           open_rtb_attribute: {
    #             filter_type: "INCLUDE" # One of: ["INCLUDE", "EXCLUDE"], # required
    #             filter_configuration: [ # required
    #               {
    #                 criteria: [ # required
    #                   {
    #                     path: "String", # required
    #                     values: ["String"], # required
    #                   }
    #                 ]
    #               }
    #             ],
    #             action: { # required
    #               # One of:
    #               no_bid: {
    #                 no_bid_reason_code: 1
    #               },
    #               header_tag: {
    #                 name: "String", # required
    #                 value: "String", # required
    #               }
    #             },
    #             holdback_percentage: 1.0, # required
    #           },
    #           rate_limiter: {
    #             tps: 1.0
    #           }
    #         }
    #       }
    #     ],
    #     pending_flow_modules: [
    #       {
    #         version: "Version",
    #         name: "FlowModuleName", # required
    #         depends_on: ["FlowModuleName"],
    #         module_parameters: {
    #           # One of:
    #           no_bid: {
    #             reason: "String",
    #             reason_code: 1,
    #             pass_through_percentage: 1.0
    #           },
    #           open_rtb_attribute: {
    #             filter_type: "INCLUDE" # One of: ["INCLUDE", "EXCLUDE"], # required
    #             filter_configuration: [ # required
    #               {
    #                 criteria: [ # required
    #                   {
    #                     path: "String", # required
    #                     values: ["String"], # required
    #                   }
    #                 ]
    #               }
    #             ],
    #             action: { # required
    #               # One of:
    #               no_bid: {
    #                 no_bid_reason_code: 1
    #               },
    #               header_tag: {
    #                 name: "String", # required
    #                 value: "String", # required
    #               }
    #             },
    #             holdback_percentage: 1.0, # required
    #           },
    #           rate_limiter: {
    #             tps: 1.0
    #           }
    #         }
    #       }
    #     ],
    #     attributes: {
    #       responder_error_masking: [
    #         {
    #           http_code: "String", # required
    #           action: "NO_BID" # One of: ["NO_BID", "PASSTHROUGH"], # required
    #           logging_types: ["NONE" # One of: ["NONE", "METRIC", "RESPONSE"]], # required
    #           response_logging_percentage: 1.0
    #         }
    #       ],
    #       customer_provided_id: "CustomerProvidedId"
    #     },
    #     log_settings: {
    #       application_logs: { # required
    #         sampling: { # required
    #           error_log: 1.0, # required
    #           filter_log: 1.0, # required
    #         }
    #       }
    #     },
    #     connectivity_type: "DEFAULT" # One of: ["DEFAULT", "PUBLIC_INGRESS", "PUBLIC_EGRESS", "EXTERNAL_INBOUND"],
    #     link_id: "LinkId", # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     http_responder_allowed: false,
    #     timeout_in_millis: 1
    #   }
    # @return [Types::GetLinkResponse]
    def get_link(params = {}, options = {})
      request = build_request(:get_link, params)
      request.send_request(options)
    end

    # <p>Retrieves the details of a routing rule for a link.</p>
    # @param [Hash, Types::GetLinkRoutingRuleRequest] params
    # @option params [String] :gateway_id
    #   <p>The unique identifier of the gateway.</p>
    # @option params [String] :link_id
    #   <p>The unique identifier of the link.</p>
    # @option params [String] :rule_id
    #   <p>The unique identifier of the routing rule.</p>
    # @example Get link routing rule details
    #   # Get details of a link routing rule
    #   params = {
    #     gateway_id: "rtb-gw-12345678",
    #     link_id: "link-87654321",
    #     rule_id: "rule-abc123def456"
    #   }
    #   options = {}
    #   response = client.get_link_routing_rule(params, options)
    #   response.to_h #=>
    #   {
    #     gateway_id: "rtb-gw-12345678",
    #     link_id: "link-87654321",
    #     rule_id: "rule-abc123def456",
    #     priority: 10,
    #     conditions: {
    #       host_header: "api.customer.com",
    #       path_prefix: "/openrtb/"
    #     },
    #     status: ACTIVE,
    #     created_at: Time.parse("2024-01-01T12:00:00Z"),
    #     updated_at: Time.parse("2024-01-01T12:00:00Z")
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_id: "GatewayId", # required
    #     link_id: "LinkId", # required
    #     rule_id: "RuleId", # required
    #   }
    #   options = {}
    #   response = client.get_link_routing_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     gateway_id: "GatewayId", # required
    #     link_id: "LinkId", # required
    #     rule_id: "RuleId", # required
    #     priority: 1, # required
    #     conditions: { # required
    #       host_header: "String",
    #       host_header_wildcard: "String",
    #       path_prefix: "String",
    #       path_exact: "String",
    #       query_string_equals: {
    #         key: "String", # required
    #         value: "String", # required
    #       },
    #       query_string_exists: "String"
    #     },
    #     status: "CREATION_IN_PROGRESS" # One of: ["CREATION_IN_PROGRESS", "ACTIVE", "UPDATE_IN_PROGRESS", "DELETION_IN_PROGRESS", "DELETED", "FAILED"], # required
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::GetLinkRoutingRuleResponse]
    def get_link_routing_rule(params = {}, options = {})
      request = build_request(:get_link_routing_rule, params)
      request.send_request(options)
    end

    # <p>Retrieves information about an outbound external link.</p>
    # @param [Hash, Types::GetOutboundExternalLinkRequest] params
    # @option params [String] :gateway_id
    #   <p>The unique identifier of the gateway.</p>
    # @option params [String] :link_id
    #   <p>The unique identifier of the link.</p>
    # @example Get outbound external link details
    #   # Get details of a specific outbound external link
    #   params = {
    #     gateway_id: "rtb-gw-12345678",
    #     link_id: "link-87654321"
    #   }
    #   options = {}
    #   response = client.get_outbound_external_link(params, options)
    #   response.to_h #=>
    #   {
    #     gateway_id: "rtb-gw-12345678",
    #     link_id: "link-87654321",
    #     status: ACTIVE,
    #     public_endpoint: "https://external-responder.example.com",
    #     created_at: Time.parse("2024-01-15T10:30:00Z"),
    #     updated_at: Time.parse("2024-01-15T10:35:00Z")
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_id: "GatewayId", # required
    #     link_id: "LinkId", # required
    #   }
    #   options = {}
    #   response = client.get_outbound_external_link(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     gateway_id: "GatewayId", # required
    #     link_id: "LinkId", # required
    #     status: "PENDING_CREATION" # One of: ["PENDING_CREATION", "PENDING_REQUEST", "REQUESTED", "ACCEPTED", "ACTIVE", "REJECTED", "FAILED", "PENDING_DELETION", "DELETED", "PENDING_UPDATE", "PENDING_ISOLATION", "ISOLATED", "PENDING_RESTORATION"], # required
    #     public_endpoint: "URL", # required
    #     flow_modules: [
    #       {
    #         version: "Version",
    #         name: "FlowModuleName", # required
    #         depends_on: ["FlowModuleName"],
    #         module_parameters: {
    #           # One of:
    #           no_bid: {
    #             reason: "String",
    #             reason_code: 1,
    #             pass_through_percentage: 1.0
    #           },
    #           open_rtb_attribute: {
    #             filter_type: "INCLUDE" # One of: ["INCLUDE", "EXCLUDE"], # required
    #             filter_configuration: [ # required
    #               {
    #                 criteria: [ # required
    #                   {
    #                     path: "String", # required
    #                     values: ["String"], # required
    #                   }
    #                 ]
    #               }
    #             ],
    #             action: { # required
    #               # One of:
    #               no_bid: {
    #                 no_bid_reason_code: 1
    #               },
    #               header_tag: {
    #                 name: "String", # required
    #                 value: "String", # required
    #               }
    #             },
    #             holdback_percentage: 1.0, # required
    #           },
    #           rate_limiter: {
    #             tps: 1.0
    #           }
    #         }
    #       }
    #     ],
    #     pending_flow_modules: [
    #       {
    #         version: "Version",
    #         name: "FlowModuleName", # required
    #         depends_on: ["FlowModuleName"],
    #         module_parameters: {
    #           # One of:
    #           no_bid: {
    #             reason: "String",
    #             reason_code: 1,
    #             pass_through_percentage: 1.0
    #           },
    #           open_rtb_attribute: {
    #             filter_type: "INCLUDE" # One of: ["INCLUDE", "EXCLUDE"], # required
    #             filter_configuration: [ # required
    #               {
    #                 criteria: [ # required
    #                   {
    #                     path: "String", # required
    #                     values: ["String"], # required
    #                   }
    #                 ]
    #               }
    #             ],
    #             action: { # required
    #               # One of:
    #               no_bid: {
    #                 no_bid_reason_code: 1
    #               },
    #               header_tag: {
    #                 name: "String", # required
    #                 value: "String", # required
    #               }
    #             },
    #             holdback_percentage: 1.0, # required
    #           },
    #           rate_limiter: {
    #             tps: 1.0
    #           }
    #         }
    #       }
    #     ],
    #     attributes: {
    #       responder_error_masking: [
    #         {
    #           http_code: "String", # required
    #           action: "NO_BID" # One of: ["NO_BID", "PASSTHROUGH"], # required
    #           logging_types: ["NONE" # One of: ["NONE", "METRIC", "RESPONSE"]], # required
    #           response_logging_percentage: 1.0
    #         }
    #       ],
    #       customer_provided_id: "CustomerProvidedId"
    #     },
    #     created_at: Time.now,
    #     updated_at: Time.now,
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     log_settings: {
    #       application_logs: { # required
    #         sampling: { # required
    #           error_log: 1.0, # required
    #           filter_log: 1.0, # required
    #         }
    #       }
    #     },
    #     connectivity_type: "DEFAULT" # One of: ["DEFAULT", "PUBLIC_INGRESS", "PUBLIC_EGRESS", "EXTERNAL_INBOUND"]
    #   }
    # @return [Types::GetOutboundExternalLinkResponse]
    def get_outbound_external_link(params = {}, options = {})
      request = build_request(:get_outbound_external_link, params)
      request.send_request(options)
    end

    # <p>Retrieves information about a requester gateway.</p>
    # @param [Hash, Types::GetRequesterGatewayRequest] params
    # @option params [String] :gateway_id
    #   <p>The unique identifier of the gateway.</p>
    # @example Get requester gateway details
    #   # Get requester gateway
    #   params = {
    #     gateway_id: "rtb-gw-12345678"
    #   }
    #   options = {}
    #   response = client.get_requester_gateway(params, options)
    #   response.to_h #=>
    #   {
    #     gateway_id: "rtb-gw-12345678",
    #     status: ACTIVE,
    #     domain_name: "rtb-gw-12345678.example.com",
    #     description: "My requester gateway",
    #     vpc_id: "vpc-12345678",
    #     subnet_ids: [
    #       "subnet-12345678",
    #       "subnet-87654321"
    #     ],
    #     security_group_ids: [
    #       "sg-12345678"
    #     ],
    #     created_at: Time.parse("2024-01-15T10:30:00Z"),
    #     updated_at: Time.parse("2024-01-15T10:35:00Z"),
    #     active_links_count: 2,
    #     total_links_count: 5
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_id: "GatewayId", # required
    #   }
    #   options = {}
    #   response = client.get_requester_gateway(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "PENDING_CREATION" # One of: ["PENDING_CREATION", "ACTIVE", "PENDING_DELETION", "DELETED", "ERROR", "PENDING_UPDATE", "ISOLATED", "PENDING_ISOLATION", "PENDING_RESTORATION"], # required
    #     domain_name: "DomainName", # required
    #     description: "String",
    #     created_at: Time.now,
    #     updated_at: Time.now,
    #     vpc_id: "VpcId", # required
    #     subnet_ids: ["SubnetId"], # required
    #     security_group_ids: ["SecurityGroupId"], # required
    #     gateway_id: "GatewayId", # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     active_links_count: 1,
    #     total_links_count: 1
    #   }
    # @return [Types::GetRequesterGatewayResponse]
    def get_requester_gateway(params = {}, options = {})
      request = build_request(:get_requester_gateway, params)
      request.send_request(options)
    end

    # <p>Retrieves information about a responder gateway.</p>
    # @param [Hash, Types::GetResponderGatewayRequest] params
    # @option params [String] :gateway_id
    #   <p>The unique identifier of the gateway.</p>
    # @example Get responder gateway details
    #   # Get responder gateway
    #   params = {
    #     gateway_id: "rtb-gw-12345678"
    #   }
    #   options = {}
    #   response = client.get_responder_gateway(params, options)
    #   response.to_h #=>
    #   {
    #     gateway_id: "rtb-gw-12345678",
    #     status: ACTIVE,
    #     description: "My responder gateway",
    #     vpc_id: "vpc-12345678",
    #     subnet_ids: [
    #       "subnet-12345678",
    #       "subnet-87654321"
    #     ],
    #     security_group_ids: [
    #       "sg-12345678"
    #     ],
    #     port: 443,
    #     protocol: HTTPS,
    #     created_at: Time.parse("2024-01-15T10:30:00Z"),
    #     updated_at: Time.parse("2024-01-15T10:35:00Z"),
    #     active_links_count: 2,
    #     total_links_count: 5,
    #     links_requested_count: 3
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_id: "GatewayId", # required
    #   }
    #   options = {}
    #   response = client.get_responder_gateway(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     vpc_id: "VpcId", # required
    #     subnet_ids: ["SubnetId"], # required
    #     security_group_ids: ["SecurityGroupId"], # required
    #     status: "PENDING_CREATION" # One of: ["PENDING_CREATION", "ACTIVE", "PENDING_DELETION", "DELETED", "ERROR", "PENDING_UPDATE", "ISOLATED", "PENDING_ISOLATION", "PENDING_RESTORATION"], # required
    #     description: "String",
    #     created_at: Time.now,
    #     updated_at: Time.now,
    #     domain_name: "DomainName",
    #     port: 1, # required
    #     protocol: "HTTP" # One of: ["HTTP", "HTTPS"], # required
    #     listener_config: {
    #       protocols: ["HTTP" # One of: ["HTTP", "HTTPS"]], # required
    #     },
    #     trust_store_configuration: {
    #       certificate_authority_certificates: ["Base64EncodedCertificateChain"], # required
    #     },
    #     managed_endpoint_configuration: {
    #       # One of:
    #       auto_scaling_groups: {
    #         auto_scaling_group_names: ["AutoScalingGroupName"], # required
    #         role_arn: "String", # required
    #         health_check_config: {
    #           port: 1, # required
    #           path: "String", # required
    #           protocol: "HTTP" # One of: ["HTTP", "HTTPS"],
    #           timeout_ms: 1,
    #           interval_seconds: 1,
    #           status_code_matcher: "StatusCodeMatcher",
    #           healthy_threshold_count: 1,
    #           unhealthy_threshold_count: 1
    #         }
    #       },
    #       eks_endpoints: {
    #         endpoints_resource_name: "KubernetesEndpointsResourceName", # required
    #         endpoints_resource_namespace: "KubernetesNamespace", # required
    #         cluster_api_server_endpoint_uri: "URI", # required
    #         cluster_api_server_ca_certificate_chain: "Base64EncodedCertificateChain", # required
    #         cluster_name: "KubernetesClusterName", # required
    #         role_arn: "String", # required
    #       }
    #     },
    #     gateway_id: "GatewayId", # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     active_links_count: 1,
    #     total_links_count: 1,
    #     links_requested_count: 1,
    #     gateway_type: "EXTERNAL" # One of: ["EXTERNAL", "INTERNAL"],
    #     external_inbound_endpoint: "DomainName",
    #     client_routing_policy: "AVAILABILITY_ZONE_AFFINITY" # One of: ["AVAILABILITY_ZONE_AFFINITY", "ANY_AVAILABILITY_ZONE"]
    #   }
    # @return [Types::GetResponderGatewayResponse]
    def get_responder_gateway(params = {}, options = {})
      request = build_request(:get_responder_gateway, params)
      request.send_request(options)
    end

    # <p>Lists the certificate associations for a responder gateway.</p>
    # @param [Hash, Types::ListCertificateAssociationsRequest] params
    # @option params [String] :gateway_id
    #   <p>The unique identifier of the gateway.</p>
    # @option params [String] :next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken error</i>.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that are returned per call. You can use <code>nextToken</code> to obtain further pages of results.</p> <p>This is only an upper limit. The actual number of results returned per call might be fewer than the specified maximum.</p>
    # @example List certificate associations for a responder gateway
    #   # Retrieve all certificate associations for a responder gateway
    #   params = {
    #     gateway_id: "rtb-gw-12345678",
    #     max_results: 5
    #   }
    #   options = {}
    #   response = client.list_certificate_associations(params, options)
    #   response.to_h #=>
    #   {
    #     certificate_associations: [
    #       {
    #         acm_certificate_arn: "arn:aws:acm:us-east-1:123456789012:certificate/12345678-1234-1234-1234-123456789012",
    #         status: ASSOCIATED,
    #         associated_at: Time.parse(1704067200),
    #         updated_at: Time.parse(1704067200)
    #       }
    #     ],
    #     next_token: "token123"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_id: "GatewayId", # required
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_certificate_associations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     certificate_associations: [ # required
    #       {
    #         acm_certificate_arn: "AcmCertificateArn", # required
    #         status: "PENDING_ASSOCIATION" # One of: ["PENDING_ASSOCIATION", "ASSOCIATED", "PENDING_DISASSOCIATION", "DISASSOCIATED", "FAILED"], # required
    #         associated_at: Time.now,
    #         updated_at: Time.now
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListCertificateAssociationsResponse]
    def list_certificate_associations(params = {}, options = {})
      request = build_request(:list_certificate_associations, params)
      request.send_request(options)
    end

    # <p>Lists the routing rules for a link.</p>
    # @param [Hash, Types::ListLinkRoutingRulesRequest] params
    # @option params [String] :gateway_id
    #   <p>The unique identifier of the gateway.</p>
    # @option params [String] :link_id
    #   <p>The unique identifier of the link.</p>
    # @option params [String] :next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken error</i>.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that are returned per call. You can use <code>nextToken</code> to obtain further pages of results.</p> <p>This is only an upper limit. The actual number of results returned per call might be fewer than the specified maximum.</p>
    # @example List link routing rules
    #   # List all routing rules for a link
    #   params = {
    #     gateway_id: "rtb-gw-12345678",
    #     link_id: "link-87654321",
    #     max_results: 10
    #   }
    #   options = {}
    #   response = client.list_link_routing_rules(params, options)
    #   response.to_h #=>
    #   {
    #     rules: [
    #       {
    #         rule_id: "rule-abc123def456",
    #         priority: 10,
    #         conditions: {
    #           host_header: "api.customer.com"
    #         },
    #         status: ACTIVE,
    #         created_at: Time.parse("2024-01-01T12:00:00Z"),
    #         updated_at: Time.parse("2024-01-01T12:00:00Z")
    #       }
    #     ],
    #     next_token: "token123"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_id: "GatewayId", # required
    #     link_id: "LinkId", # required
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_link_routing_rules(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rules: [
    #       {
    #         rule_id: "RuleId", # required
    #         priority: 1, # required
    #         conditions: { # required
    #           host_header: "String",
    #           host_header_wildcard: "String",
    #           path_prefix: "String",
    #           path_exact: "String",
    #           query_string_equals: {
    #             key: "String", # required
    #             value: "String", # required
    #           },
    #           query_string_exists: "String"
    #         },
    #         status: "CREATION_IN_PROGRESS" # One of: ["CREATION_IN_PROGRESS", "ACTIVE", "UPDATE_IN_PROGRESS", "DELETION_IN_PROGRESS", "DELETED", "FAILED"], # required
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListLinkRoutingRulesResponse]
    def list_link_routing_rules(params = {}, options = {})
      request = build_request(:list_link_routing_rules, params)
      request.send_request(options)
    end

    # <p>Lists links associated with gateways.</p> <p>Returns a list of all links for the specified gateways, including their status and configuration details.</p>
    # @param [Hash, Types::ListLinksRequest] params
    # @option params [String] :gateway_id
    #   <p>The unique identifier of the gateway.</p>
    # @option params [String] :next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken error</i>.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that are returned per call. You can use <code>nextToken</code> to obtain further pages of results.</p> <p>This is only an upper limit. The actual number of results returned per call might be fewer than the specified maximum.</p>
    # @example List links for a gateway
    #   # Lists all links for the specified gateway
    #   params = {
    #     gateway_id: "rtb-gw-12345678",
    #     max_results: 10
    #   }
    #   options = {}
    #   response = client.list_links(params, options)
    #   response.to_h #=>
    #   {
    #     links: [
    #       {
    #         link_id: "link-87654321",
    #         gateway_id: "rtb-gw-12345678",
    #         peer_gateway_id: "rtb-gw-87654321",
    #         status: ACTIVE,
    #         created_at: Time.parse("2024-01-15T10:30:00Z"),
    #         updated_at: Time.parse("2024-01-15T10:35:00Z")
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_id: "GatewayId", # required
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_links(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     links: [
    #       {
    #         gateway_id: "GatewayId", # required
    #         peer_gateway_id: "GatewayId", # required
    #         status: "PENDING_CREATION" # One of: ["PENDING_CREATION", "PENDING_REQUEST", "REQUESTED", "ACCEPTED", "ACTIVE", "REJECTED", "FAILED", "PENDING_DELETION", "DELETED", "PENDING_UPDATE", "PENDING_ISOLATION", "ISOLATED", "PENDING_RESTORATION"], # required
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #         direction: "RESPONSE" # One of: ["RESPONSE", "REQUEST"],
    #         flow_modules: [
    #           {
    #             version: "Version",
    #             name: "FlowModuleName", # required
    #             depends_on: ["FlowModuleName"],
    #             module_parameters: {
    #               # One of:
    #               no_bid: {
    #                 reason: "String",
    #                 reason_code: 1,
    #                 pass_through_percentage: 1.0
    #               },
    #               open_rtb_attribute: {
    #                 filter_type: "INCLUDE" # One of: ["INCLUDE", "EXCLUDE"], # required
    #                 filter_configuration: [ # required
    #                   {
    #                     criteria: [ # required
    #                       {
    #                         path: "String", # required
    #                         values: ["String"], # required
    #                       }
    #                     ]
    #                   }
    #                 ],
    #                 action: { # required
    #                   # One of:
    #                   no_bid: {
    #                     no_bid_reason_code: 1
    #                   },
    #                   header_tag: {
    #                     name: "String", # required
    #                     value: "String", # required
    #                   }
    #                 },
    #                 holdback_percentage: 1.0, # required
    #               },
    #               rate_limiter: {
    #                 tps: 1.0
    #               }
    #             }
    #           }
    #         ],
    #         pending_flow_modules: [
    #           {
    #             version: "Version",
    #             name: "FlowModuleName", # required
    #             depends_on: ["FlowModuleName"],
    #             module_parameters: {
    #               # One of:
    #               no_bid: {
    #                 reason: "String",
    #                 reason_code: 1,
    #                 pass_through_percentage: 1.0
    #               },
    #               open_rtb_attribute: {
    #                 filter_type: "INCLUDE" # One of: ["INCLUDE", "EXCLUDE"], # required
    #                 filter_configuration: [ # required
    #                   {
    #                     criteria: [ # required
    #                       {
    #                         path: "String", # required
    #                         values: ["String"], # required
    #                       }
    #                     ]
    #                   }
    #                 ],
    #                 action: { # required
    #                   # One of:
    #                   no_bid: {
    #                     no_bid_reason_code: 1
    #                   },
    #                   header_tag: {
    #                     name: "String", # required
    #                     value: "String", # required
    #                   }
    #                 },
    #                 holdback_percentage: 1.0, # required
    #               },
    #               rate_limiter: {
    #                 tps: 1.0
    #               }
    #             }
    #           }
    #         ],
    #         attributes: {
    #           responder_error_masking: [
    #             {
    #               http_code: "String", # required
    #               action: "NO_BID" # One of: ["NO_BID", "PASSTHROUGH"], # required
    #               logging_types: ["NONE" # One of: ["NONE", "METRIC", "RESPONSE"]], # required
    #               response_logging_percentage: 1.0
    #             }
    #           ],
    #           customer_provided_id: "CustomerProvidedId"
    #         },
    #         log_settings: {
    #           application_logs: { # required
    #             sampling: { # required
    #               error_log: 1.0, # required
    #               filter_log: 1.0, # required
    #             }
    #           }
    #         },
    #         connectivity_type: "DEFAULT" # One of: ["DEFAULT", "PUBLIC_INGRESS", "PUBLIC_EGRESS", "EXTERNAL_INBOUND"],
    #         link_id: "LinkId", # required
    #         tags: {
    #           "TagKey" => "TagValue"
    #         },
    #         public_endpoint: "URL"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListLinksResponse]
    def list_links(params = {}, options = {})
      request = build_request(:list_links, params)
      request.send_request(options)
    end

    # <p>Lists requester gateways.</p>
    # @param [Hash, Types::ListRequesterGatewaysRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that are returned per call. You can use <code>nextToken</code> to obtain further pages of results.</p> <p>This is only an upper limit. The actual number of results returned per call might be fewer than the specified maximum.</p>
    # @option params [String] :next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken error</i>.</p>
    # @example List requester gateways with default pagination
    #   # Lists requester gateways using default pagination settings
    #   params = {
    #     max_results: 10
    #   }
    #   options = {}
    #   response = client.list_requester_gateways(params, options)
    #   response.to_h #=>
    #   {
    #     gateway_ids: [
    #       "rtb-gw-12345",
    #       "rtb-gw-67890"
    #     ]
    #   }
    # @example List requester gateways with pagination token
    #   # Lists requester gateways using a pagination token to get the next page
    #   params = {
    #     max_results: 5,
    #     next_token: "eyJsYXN0RXZhbHVhdGVkS2V5Ijp7ImlkIjp7IlMiOiJydGJhcHAtcmVxLTEyMzQ1In19fQ=="
    #   }
    #   options = {}
    #   response = client.list_requester_gateways(params, options)
    #   response.to_h #=>
    #   {
    #     gateway_ids: [
    #       "rtb-gw-12345",
    #       "rtb-gw-09876"
    #     ],
    #     next_token: "eyJsYXN0RXZhbHVhdGVkS2V5Ijp7ImlkIjp7IlMiOiJydGJhcHAtcmVxLWZnaGlqIn19fQ=="
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_requester_gateways(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     gateway_ids: ["GatewayId"],
    #     next_token: "String"
    #   }
    # @return [Types::ListRequesterGatewaysResponse]
    def list_requester_gateways(params = {}, options = {})
      request = build_request(:list_requester_gateways, params)
      request.send_request(options)
    end

    # <p>Lists reponder gateways.</p>
    # @param [Hash, Types::ListResponderGatewaysRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that are returned per call. You can use <code>nextToken</code> to obtain further pages of results.</p> <p>This is only an upper limit. The actual number of results returned per call might be fewer than the specified maximum.</p>
    # @option params [String] :next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken error</i>.</p>
    # @example List responder gateways with default pagination
    #   # Lists responder gateways using default pagination settings
    #   params = {
    #     max_results: 10
    #   }
    #   options = {}
    #   response = client.list_responder_gateways(params, options)
    #   response.to_h #=>
    #   {
    #     gateway_ids: [
    #       "rtb-gw-54321",
    #       "rtb-gw-09876"
    #     ]
    #   }
    # @example List responder gateways with pagination token
    #   # Lists responder gateways using a pagination token to get the next page
    #   params = {
    #     max_results: 3,
    #     next_token: "eyJsYXN0RXZhbHVhdGVkS2V5Ijp7ImlkIjp7IlMiOiJydGJhcHAtcmVzcC01NDMyMSJ9fX0="
    #   }
    #   options = {}
    #   response = client.list_responder_gateways(params, options)
    #   response.to_h #=>
    #   {
    #     gateway_ids: [
    #       "rtb-gw-12345",
    #       "rtb-gw-09876"
    #     ],
    #     next_token: "eyJsYXN0RXZhbHVhdGVkS2V5Ijp7ImlkIjp7IlMiOiJydGJhcHAtcmVzcC1hYmMzNCJ9fX0="
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_responder_gateways(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     gateway_ids: ["GatewayId"],
    #     next_token: "String"
    #   }
    # @return [Types::ListResponderGatewaysResponse]
    def list_responder_gateways(params = {}, options = {})
      request = build_request(:list_responder_gateways, params)
      request.send_request(options)
    end

    # <p>Lists tags for a resource.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource for which you want to retrieve tags.</p>
    # @example List tags for a resource
    #   # Lists tags for a resource
    #   params = {
    #     resource_arn: "arn:aws:rtbfabric:us-east-1:123456789012:gateway/rtb-gw-12345678"
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    #   response.to_h #=>
    #   {
    #     tags: {
    #       "Environment" => "Production",
    #       "Team" => "RTB"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "RtbTaggableResourceArn", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Rejects a link request between gateways.</p> <p>When a requester gateway requests to link with a responder gateway, the responder can use this operation to decline the link request.</p>
    # @param [Hash, Types::RejectLinkRequest] params
    # @option params [String] :gateway_id
    #   <p>The unique identifier of the gateway.</p>
    # @option params [String] :link_id
    #   <p>The unique identifier of the link.</p>
    # @example Reject a link request
    #   # Rejects a requested link request
    #   params = {
    #     gateway_id: "rtb-gw-12345678",
    #     link_id: "link-87654321"
    #   }
    #   options = {}
    #   response = client.reject_link(params, options)
    #   response.to_h #=>
    #   {
    #     link_id: "link-87654321",
    #     gateway_id: "rtb-gw-12345678",
    #     peer_gateway_id: "rtb-gw-87654321",
    #     status: REJECTED,
    #     created_at: Time.parse("2024-01-15T10:30:00Z"),
    #     updated_at: Time.parse("2024-01-15T10:35:00Z")
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_id: "GatewayId", # required
    #     link_id: "LinkId", # required
    #   }
    #   options = {}
    #   response = client.reject_link(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     gateway_id: "GatewayId", # required
    #     peer_gateway_id: "GatewayId", # required
    #     status: "PENDING_CREATION" # One of: ["PENDING_CREATION", "PENDING_REQUEST", "REQUESTED", "ACCEPTED", "ACTIVE", "REJECTED", "FAILED", "PENDING_DELETION", "DELETED", "PENDING_UPDATE", "PENDING_ISOLATION", "ISOLATED", "PENDING_RESTORATION"], # required
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #     direction: "RESPONSE" # One of: ["RESPONSE", "REQUEST"],
    #     flow_modules: [
    #       {
    #         version: "Version",
    #         name: "FlowModuleName", # required
    #         depends_on: ["FlowModuleName"],
    #         module_parameters: {
    #           # One of:
    #           no_bid: {
    #             reason: "String",
    #             reason_code: 1,
    #             pass_through_percentage: 1.0
    #           },
    #           open_rtb_attribute: {
    #             filter_type: "INCLUDE" # One of: ["INCLUDE", "EXCLUDE"], # required
    #             filter_configuration: [ # required
    #               {
    #                 criteria: [ # required
    #                   {
    #                     path: "String", # required
    #                     values: ["String"], # required
    #                   }
    #                 ]
    #               }
    #             ],
    #             action: { # required
    #               # One of:
    #               no_bid: {
    #                 no_bid_reason_code: 1
    #               },
    #               header_tag: {
    #                 name: "String", # required
    #                 value: "String", # required
    #               }
    #             },
    #             holdback_percentage: 1.0, # required
    #           },
    #           rate_limiter: {
    #             tps: 1.0
    #           }
    #         }
    #       }
    #     ],
    #     pending_flow_modules: [
    #       {
    #         version: "Version",
    #         name: "FlowModuleName", # required
    #         depends_on: ["FlowModuleName"],
    #         module_parameters: {
    #           # One of:
    #           no_bid: {
    #             reason: "String",
    #             reason_code: 1,
    #             pass_through_percentage: 1.0
    #           },
    #           open_rtb_attribute: {
    #             filter_type: "INCLUDE" # One of: ["INCLUDE", "EXCLUDE"], # required
    #             filter_configuration: [ # required
    #               {
    #                 criteria: [ # required
    #                   {
    #                     path: "String", # required
    #                     values: ["String"], # required
    #                   }
    #                 ]
    #               }
    #             ],
    #             action: { # required
    #               # One of:
    #               no_bid: {
    #                 no_bid_reason_code: 1
    #               },
    #               header_tag: {
    #                 name: "String", # required
    #                 value: "String", # required
    #               }
    #             },
    #             holdback_percentage: 1.0, # required
    #           },
    #           rate_limiter: {
    #             tps: 1.0
    #           }
    #         }
    #       }
    #     ],
    #     attributes: {
    #       responder_error_masking: [
    #         {
    #           http_code: "String", # required
    #           action: "NO_BID" # One of: ["NO_BID", "PASSTHROUGH"], # required
    #           logging_types: ["NONE" # One of: ["NONE", "METRIC", "RESPONSE"]], # required
    #           response_logging_percentage: 1.0
    #         }
    #       ],
    #       customer_provided_id: "CustomerProvidedId"
    #     },
    #     log_settings: {
    #       application_logs: { # required
    #         sampling: { # required
    #           error_log: 1.0, # required
    #           filter_log: 1.0, # required
    #         }
    #       }
    #     },
    #     connectivity_type: "DEFAULT" # One of: ["DEFAULT", "PUBLIC_INGRESS", "PUBLIC_EGRESS", "EXTERNAL_INBOUND"],
    #     link_id: "LinkId", # required
    #   }
    # @return [Types::RejectLinkResponse]
    def reject_link(params = {}, options = {})
      request = build_request(:reject_link, params)
      request.send_request(options)
    end

    # <p>Assigns one or more tags (key-value pairs) to the specified resource.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to tag.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A map of the key-value pairs of the tag or tags to assign to the resource.</p>
    # @example Add tags to a resource
    #   # Adds tags to a resource
    #   params = {
    #     resource_arn: "arn:aws:rtbfabric:us-east-1:123456789012:gateway/rtb-gw-12345678",
    #     tags: {
    #       "Environment" => "Production",
    #       "Team" => "RTB"
    #     }
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "RtbTaggableResourceArn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue"
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

    # <p>Removes a tag or tags from a resource.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to untag.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The keys of the key-value pairs for the tag or tags you want to remove from the specified resource.</p>
    # @example Remove tags from a resource
    #   # Removes tags from a resource
    #   params = {
    #     resource_arn: "arn:aws:rtbfabric:us-east-1:123456789012:gateway/rtb-gw-12345678",
    #     tag_keys: [
    #       "Environment",
    #       "Team"
    #     ]
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "RtbTaggableResourceArn", # required
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

    # <p>Updates the configuration of a link between gateways.</p> <p>Allows you to modify settings and parameters for an existing link.</p>
    # @param [Hash, Types::UpdateLinkRequest] params
    # @option params [String] :gateway_id
    #   <p>The unique identifier of the gateway.</p>
    # @option params [String] :link_id
    #   <p>The unique identifier of the link.</p>
    # @option params [Types::LinkLogSettings] :log_settings
    #   <p>Settings for the application logs.</p>
    # @option params [Integer] :timeout_in_millis
    #   <p>The timeout value in milliseconds.</p>
    # @example Update link settings
    #   # Updates configuration settings for an existing link
    #   params = {
    #     gateway_id: "rtb-gw-12345678",
    #     link_id: "link-87654321",
    #     log_settings: {
    #       application_logs: {
    #         sampling: {
    #           error_log: 100.0,
    #           filter_log: 10.0
    #         }
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_link(params, options)
    #   response.to_h #=>
    #   {
    #     link_id: "link-87654321",
    #     status: ACTIVE
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_id: "GatewayId", # required
    #     link_id: "LinkId", # required
    #     log_settings: {
    #       application_logs: { # required
    #         sampling: { # required
    #           error_log: 1.0, # required
    #           filter_log: 1.0, # required
    #         }
    #       }
    #     },
    #     timeout_in_millis: 1
    #   }
    #   options = {}
    #   response = client.update_link(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     link_id: "LinkId", # required
    #     status: "PENDING_CREATION" # One of: ["PENDING_CREATION", "PENDING_REQUEST", "REQUESTED", "ACCEPTED", "ACTIVE", "REJECTED", "FAILED", "PENDING_DELETION", "DELETED", "PENDING_UPDATE", "PENDING_ISOLATION", "ISOLATED", "PENDING_RESTORATION"], # required
    #   }
    # @return [Types::UpdateLinkResponse]
    def update_link(params = {}, options = {})
      request = build_request(:update_link, params)
      request.send_request(options)
    end

    # <p>Updates a link module flow.</p>
    # @param [Hash, Types::UpdateLinkModuleFlowRequest] params
    # @option params [String] :client_token
    #   <p>Specifies a unique, case-sensitive identifier that you provide to ensure the idempotency of the request. This lets you safely retry the request without accidentally performing the same operation a second time. Passing the same value to a later call to an operation requires that you also pass the same value for all other parameters. We recommend that you use a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID type of value</a>.</p> <p>If you don't provide this value, then Amazon Web Services generates a random one for you.</p> <p>If you retry the operation with the same <code>clientToken</code>, but with different parameters, the retry fails with an <code>IdempotentParameterMismatch</code> error.</p>
    # @option params [String] :gateway_id
    #   <p>The unique identifier of the gateway.</p>
    # @option params [String] :link_id
    #   <p>The unique identifier of the link.</p>
    # @option params [Array<Types::ModuleConfiguration>] :modules
    #   <p>The configuration of a module.</p>
    # @example Update link module flow
    #   # Update link module flow for link
    #   params = {
    #     gateway_id: "rtb-gw-12345678",
    #     link_id: "link-87654321",
    #     client_token: "randomClientToken",
    #     modules: [
    #       {
    #         name: "noBidModule",
    #         version: "1dot0dot0",
    #         depends_on: [
    #         ],
    #         module_parameters: {
    #     "noBid" => {
    #       "reason" => test,
    #       "reasonCode" => 1,
    #       "passThroughPercentage" => 50.0
    #     }
    #   }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_link_module_flow(params, options)
    #   response.to_h #=>
    #   {
    #     gateway_id: "rtb-gw-12345678",
    #     link_id: "link-87654321",
    #     status: ACTIVE
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "String", # required
    #     gateway_id: "GatewayId", # required
    #     link_id: "LinkId", # required
    #     modules: [ # required
    #       {
    #         version: "Version",
    #         name: "FlowModuleName", # required
    #         depends_on: ["FlowModuleName"],
    #         module_parameters: {
    #           # One of:
    #           no_bid: {
    #             reason: "String",
    #             reason_code: 1,
    #             pass_through_percentage: 1.0
    #           },
    #           open_rtb_attribute: {
    #             filter_type: "INCLUDE" # One of: ["INCLUDE", "EXCLUDE"], # required
    #             filter_configuration: [ # required
    #               {
    #                 criteria: [ # required
    #                   {
    #                     path: "String", # required
    #                     values: ["String"], # required
    #                   }
    #                 ]
    #               }
    #             ],
    #             action: { # required
    #               # One of:
    #               no_bid: {
    #                 no_bid_reason_code: 1
    #               },
    #               header_tag: {
    #                 name: "String", # required
    #                 value: "String", # required
    #               }
    #             },
    #             holdback_percentage: 1.0, # required
    #           },
    #           rate_limiter: {
    #             tps: 1.0
    #           }
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_link_module_flow(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     gateway_id: "GatewayId", # required
    #     link_id: "LinkId", # required
    #     status: "PENDING_CREATION" # One of: ["PENDING_CREATION", "PENDING_REQUEST", "REQUESTED", "ACCEPTED", "ACTIVE", "REJECTED", "FAILED", "PENDING_DELETION", "DELETED", "PENDING_UPDATE", "PENDING_ISOLATION", "ISOLATED", "PENDING_RESTORATION"], # required
    #   }
    # @return [Types::UpdateLinkModuleFlowResponse]
    def update_link_module_flow(params = {}, options = {})
      request = build_request(:update_link_module_flow, params)
      request.send_request(options)
    end

    # <p>Updates a routing rule for a link.</p>
    # @param [Hash, Types::UpdateLinkRoutingRuleRequest] params
    # @option params [String] :gateway_id
    #   <p>The unique identifier of the gateway.</p>
    # @option params [String] :link_id
    #   <p>The unique identifier of the link.</p>
    # @option params [String] :rule_id
    #   <p>The unique identifier of the routing rule.</p>
    # @option params [Integer] :priority
    #   <p>The updated priority of the routing rule. Lower numbers are evaluated first. Valid values are 1 to 1000. Priority must be unique among non-deleted rules within a link.</p>
    # @option params [Types::RuleCondition] :conditions
    #   <p>The updated conditions for the routing rule. All specified fields must match for the rule to apply. At least one condition field must be set.</p>
    # @example Update a link routing rule
    #   # Update the conditions of a routing rule
    #   params = {
    #     gateway_id: "rtb-gw-12345678",
    #     link_id: "link-87654321",
    #     rule_id: "rule-abc123def456",
    #     priority: 20,
    #     conditions: {
    #       host_header: "api.customer.com",
    #       path_prefix: "/openrtb/"
    #     }
    #   }
    #   options = {}
    #   response = client.update_link_routing_rule(params, options)
    #   response.to_h #=>
    #   {
    #     rule_id: "rule-abc123def456",
    #     status: UPDATE_IN_PROGRESS,
    #     updated_at: Time.parse("2024-01-01T12:30:00Z")
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_id: "GatewayId", # required
    #     link_id: "LinkId", # required
    #     rule_id: "RuleId", # required
    #     priority: 1, # required
    #     conditions: { # required
    #       host_header: "String",
    #       host_header_wildcard: "String",
    #       path_prefix: "String",
    #       path_exact: "String",
    #       query_string_equals: {
    #         key: "String", # required
    #         value: "String", # required
    #       },
    #       query_string_exists: "String"
    #     }
    #   }
    #   options = {}
    #   response = client.update_link_routing_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rule_id: "RuleId", # required
    #     status: "CREATION_IN_PROGRESS" # One of: ["CREATION_IN_PROGRESS", "ACTIVE", "UPDATE_IN_PROGRESS", "DELETION_IN_PROGRESS", "DELETED", "FAILED"], # required
    #     updated_at: Time.now, # required
    #   }
    # @return [Types::UpdateLinkRoutingRuleResponse]
    def update_link_routing_rule(params = {}, options = {})
      request = build_request(:update_link_routing_rule, params)
      request.send_request(options)
    end

    # <p>Updates a requester gateway.</p>
    # @param [Hash, Types::UpdateRequesterGatewayRequest] params
    # @option params [String] :client_token
    #   <p>Specifies a unique, case-sensitive identifier that you provide to ensure the idempotency of the request. This lets you safely retry the request without accidentally performing the same operation a second time. Passing the same value to a later call to an operation requires that you also pass the same value for all other parameters. We recommend that you use a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID type of value</a>.</p> <p>If you don't provide this value, then Amazon Web Services generates a random one for you.</p> <p>If you retry the operation with the same <code>clientToken</code>, but with different parameters, the retry fails with an <code>IdempotentParameterMismatch</code> error.</p>
    # @option params [String] :gateway_id
    #   <p>The unique identifier of the gateway.</p>
    # @option params [String] :description
    #   <p>An optional description for the requester gateway.</p>
    # @example Update requester gateway
    #   # Update requester gateway
    #   params = {
    #     gateway_id: "rtb-gw-12345678",
    #     description: "Updated requester gateway description",
    #     client_token: "12345678-1234-1234-1234-123456789012"
    #   }
    #   options = {}
    #   response = client.update_requester_gateway(params, options)
    #   response.to_h #=>
    #   {
    #     gateway_id: "rtb-gw-12345678",
    #     status: PENDING_UPDATE
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "String", # required
    #     gateway_id: "GatewayId", # required
    #     description: "String"
    #   }
    #   options = {}
    #   response = client.update_requester_gateway(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     gateway_id: "GatewayId", # required
    #     status: "PENDING_CREATION" # One of: ["PENDING_CREATION", "ACTIVE", "PENDING_DELETION", "DELETED", "ERROR", "PENDING_UPDATE", "ISOLATED", "PENDING_ISOLATION", "PENDING_RESTORATION"], # required
    #   }
    # @return [Types::UpdateRequesterGatewayResponse]
    def update_requester_gateway(params = {}, options = {})
      request = build_request(:update_requester_gateway, params)
      request.send_request(options)
    end

    # <p>Updates the description, Auto Scaling group managed endpoint configuration, trust store configuration, and client routing policy of a responder gateway. This operation also updates the <code>protocols</code> list in the listener configuration.</p> <p>You cannot change the <code>domainName</code>, <code>port</code>, and <code>protocol</code> values that you set when you create a responder gateway. To change any of them, delete the gateway and create a new one.</p>
    # @param [Hash, Types::UpdateResponderGatewayRequest] params
    # @option params [String] :domain_name
    #   <p>Domain name for the responder gateway. This operation does not change the domain name of an existing gateway. To use a different domain name, delete the gateway and create a new one.</p>
    # @option params [Integer] :port
    #   <p>Networking port to use. This operation does not change the port of an existing gateway. To use a different port, delete the gateway and create a new one.</p>
    # @option params [String] :protocol
    #   <p>Networking protocol to use. This operation does not change the protocol of an existing gateway. To use a different protocol, delete the gateway and create a new one.</p>
    # @option params [Types::ListenerConfig] :listener_config
    #   <p>The listener configuration for the responder gateway.</p>
    # @option params [Types::TrustStoreConfiguration] :trust_store_configuration
    #   <p>The configuration of the trust store.</p>
    # @option params [Types::ManagedEndpointConfiguration] :managed_endpoint_configuration
    #   <p>The configuration for the managed endpoint.</p>
    # @option params [String] :client_token
    #   <p>Specifies a unique, case-sensitive identifier that you provide to ensure the idempotency of the request. This lets you safely retry the request without accidentally performing the same operation a second time. Passing the same value to a later call to an operation requires that you also pass the same value for all other parameters. We recommend that you use a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID type of value</a>.</p> <p>If you don't provide this value, then Amazon Web Services generates a random one for you.</p> <p>If you retry the operation with the same <code>clientToken</code>, but with different parameters, the retry fails with an <code>IdempotentParameterMismatch</code> error.</p>
    # @option params [String] :gateway_id
    #   <p>The unique identifier of the gateway.</p>
    # @option params [String] :description
    #   <p>An optional description for the responder gateway.</p>
    # @option params [String] :client_routing_policy
    #   <p>The client routing policy of the gateway. This policy controls which Availability Zones RTB Fabric uses to reach the gateway for the requester gateways that send traffic to it. Valid values are the following:</p> <ul> <li> <p> <code>AVAILABILITY_ZONE_AFFINITY</code>: RTB Fabric routes each requester's traffic to gateway capacity in the requester's own Availability Zone when the gateway has capacity available there. Otherwise, RTB Fabric routes the traffic to gateway capacity in the other Availability Zones of the gateway.</p> </li> <li> <p> <code>ANY_AVAILABILITY_ZONE</code>: RTB Fabric routes each requester's traffic to gateway capacity in every Availability Zone that the subnets of the gateway span. The Availability Zone that the requester is in does not change this.</p> </li> </ul> <p>If you don't specify a value, the gateway keeps its current client routing policy. Changing the policy sets the gateway status to <code>PENDING_UPDATE</code> until the change is complete. RTB Fabric does not support partial Availability Zone affinity, so <code>PARTIAL_AVAILABILITY_ZONE_AFFINITY</code> is not a valid value. For more information, see <a href="https://docs.aws.amazon.com/rtb-fabric/latest/userguide/working-with-responder-gateways.html#configuring-availability-zone-affinity">Configuring Availability Zone affinity</a> in the <i>Amazon Web Services RTB Fabric User Guide</i>.</p>
    # @example Update responder gateway
    #   # Update responder gateway
    #   params = {
    #     gateway_id: "rtb-gw-12345678",
    #     description: "Updated responder gateway description",
    #     port: 8080,
    #     protocol: HTTP,
    #     client_token: "12345678-1234-1234-1234-123456789012"
    #   }
    #   options = {}
    #   response = client.update_responder_gateway(params, options)
    #   response.to_h #=>
    #   {
    #     gateway_id: "rtb-gw-12345678",
    #     status: PENDING_UPDATE
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName",
    #     port: 1, # required
    #     protocol: "HTTP" # One of: ["HTTP", "HTTPS"], # required
    #     listener_config: {
    #       protocols: ["HTTP" # One of: ["HTTP", "HTTPS"]], # required
    #     },
    #     trust_store_configuration: {
    #       certificate_authority_certificates: ["Base64EncodedCertificateChain"], # required
    #     },
    #     managed_endpoint_configuration: {
    #       # One of:
    #       auto_scaling_groups: {
    #         auto_scaling_group_names: ["AutoScalingGroupName"], # required
    #         role_arn: "String", # required
    #         health_check_config: {
    #           port: 1, # required
    #           path: "String", # required
    #           protocol: "HTTP" # One of: ["HTTP", "HTTPS"],
    #           timeout_ms: 1,
    #           interval_seconds: 1,
    #           status_code_matcher: "StatusCodeMatcher",
    #           healthy_threshold_count: 1,
    #           unhealthy_threshold_count: 1
    #         }
    #       },
    #       eks_endpoints: {
    #         endpoints_resource_name: "KubernetesEndpointsResourceName", # required
    #         endpoints_resource_namespace: "KubernetesNamespace", # required
    #         cluster_api_server_endpoint_uri: "URI", # required
    #         cluster_api_server_ca_certificate_chain: "Base64EncodedCertificateChain", # required
    #         cluster_name: "KubernetesClusterName", # required
    #         role_arn: "String", # required
    #       }
    #     },
    #     client_token: "String", # required
    #     gateway_id: "GatewayId", # required
    #     description: "String",
    #     client_routing_policy: "AVAILABILITY_ZONE_AFFINITY" # One of: ["AVAILABILITY_ZONE_AFFINITY", "ANY_AVAILABILITY_ZONE"]
    #   }
    #   options = {}
    #   response = client.update_responder_gateway(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     gateway_id: "GatewayId", # required
    #     status: "PENDING_CREATION" # One of: ["PENDING_CREATION", "ACTIVE", "PENDING_DELETION", "DELETED", "ERROR", "PENDING_UPDATE", "ISOLATED", "PENDING_ISOLATION", "PENDING_RESTORATION"], # required
    #     client_routing_policy: "AVAILABILITY_ZONE_AFFINITY" # One of: ["AVAILABILITY_ZONE_AFFINITY", "ANY_AVAILABILITY_ZONE"]
    #   }
    # @return [Types::UpdateResponderGatewayResponse]
    def update_responder_gateway(params = {}, options = {})
      request = build_request(:update_responder_gateway, params)
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
      context[:gem_name] = 'aws-sdk-rtbfabric'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Request.new(handlers: handlers, context: context)
    end

    private

    def waiters
      {
        certificate_associated: Waiters::CertificateAssociated,
        certificate_disassociated: Waiters::CertificateDisassociated,
        inbound_external_link_active: Waiters::InboundExternalLinkActive,
        inbound_external_link_deleted: Waiters::InboundExternalLinkDeleted,
        link_accepted: Waiters::LinkAccepted,
        link_active: Waiters::LinkActive,
        link_deleted: Waiters::LinkDeleted,
        link_routing_rule_active: Waiters::LinkRoutingRuleActive,
        link_routing_rule_deleted: Waiters::LinkRoutingRuleDeleted,
        outbound_external_link_active: Waiters::OutboundExternalLinkActive,
        outbound_external_link_deleted: Waiters::OutboundExternalLinkDeleted,
        requester_gateway_active: Waiters::RequesterGatewayActive,
        requester_gateway_deleted: Waiters::RequesterGatewayDeleted,
        responder_gateway_active: Waiters::ResponderGatewayActive,
        responder_gateway_deleted: Waiters::ResponderGatewayDeleted
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

      # @api private
      def protocols
        {
          rest_json: Aws::Core::RestJson
        }
      end
    end
  end
end
