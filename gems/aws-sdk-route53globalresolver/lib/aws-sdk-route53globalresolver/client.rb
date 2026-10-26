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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:route53globalresolver)

module Aws::Route53GlobalResolver
  # An API client for Aws::Route53GlobalResolver.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::EC2DNSGlobalResolverCustomerAPI
    @identifier = :route53globalresolver

    add_plugin(::Aws::Route53GlobalResolver::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::Route53GlobalResolver::EndpointProvider)
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

    # <p>Associates a Route 53 private hosted zone with a Route 53 Global Resolver resource. This allows the resolver to resolve DNS queries for the private hosted zone from anywhere globally.</p> <important> <p>Route 53 Global Resolver is a global service that supports resolvers in multiple Amazon Web Services Regions but you must specify the US East (Ohio) Region to create, update, or otherwise work with Route 53 Global Resolver resources. That is, for example, specify <code>--region us-east-2</code> on Amazon Web Services CLI commands.</p> </important>
    # @param [Hash, Types::AssociateHostedZoneInput] params
    # @option params [String] :hosted_zone_id
    #   <p>The ID of the Route 53 private hosted zone to associate with the Route 53 Global Resolver resource.</p>
    # @option params [String] :resource_arn
    #   <p>An Amazon Resource Name (ARN) of the Route 53 Global Resolver the private hosted zone will be associated to.</p>
    # @option params [String] :name
    #   <p>Name for the private hosted zone association.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     hosted_zone_id: "HostedZoneId", # required
    #     resource_arn: "ResourceArn", # required
    #     name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.associate_hosted_zone(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ResourceId", # required
    #     resource_arn: "ResourceArn", # required
    #     hosted_zone_id: "HostedZoneId", # required
    #     hosted_zone_name: "HostedZoneName", # required
    #     name: "ResourceName", # required
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #     status: "CREATING" # One of: ["CREATING", "OPERATIONAL", "DELETING"], # required
    #   }
    # @return [Types::AssociateHostedZoneOutput]
    def associate_hosted_zone(params = {}, options = {})
      request = build_request(:associate_hosted_zone, params)
      request.send_request(options)
    end

    # <p>Creates multiple DNS firewall rules in a single operation. This is more efficient than creating rules individually when you need to set up multiple rules at once.</p> <important> <p>Route 53 Global Resolver is a global service that supports resolvers in multiple Amazon Web Services Regions but you must specify the US East (Ohio) Region to create, update, or otherwise work with Route 53 Global Resolver resources. That is, for example, specify <code>--region us-east-2</code> on Amazon Web Services CLI commands.</p> </important>
    # @param [Hash, Types::BatchCreateFirewallRuleInput] params
    # @option params [Array<Types::BatchCreateFirewallRuleInputItem>] :firewall_rules
    #   <p>The <code>BatchCreateFirewallRuleInputItem</code> objects contain the information for each Firewall rule.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     firewall_rules: [ # required
    #       {
    #         action: "ALLOW" # One of: ["ALLOW", "ALERT", "BLOCK"], # required
    #         block_override_dns_type: "CNAME" # One of: ["CNAME"],
    #         block_override_domain: "Domain",
    #         block_override_ttl: 1,
    #         block_response: "NODATA" # One of: ["NODATA", "NXDOMAIN", "OVERRIDE"],
    #         client_token: "ClientToken", # required
    #         confidence_threshold: "LOW" # One of: ["LOW", "MEDIUM", "HIGH"],
    #         description: "ResourceDescription",
    #         dns_advanced_protection: "DGA" # One of: ["DGA", "DNS_TUNNELING", "DICTIONARY_DGA"],
    #         firewall_domain_list_id: "ResourceId",
    #         name: "ResourceName", # required
    #         priority: 1,
    #         dns_view_id: "ResourceId", # required
    #         q_type: "DnsQueryType"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_create_firewall_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     failures: [ # required
    #       {
    #         firewall_rule: { # required
    #           action: "ALLOW" # One of: ["ALLOW", "ALERT", "BLOCK"], # required
    #           block_override_dns_type: "CNAME" # One of: ["CNAME"],
    #           block_override_domain: "Domain",
    #           block_override_ttl: 1,
    #           block_response: "NODATA" # One of: ["NODATA", "NXDOMAIN", "OVERRIDE"],
    #           client_token: "ClientToken", # required
    #           confidence_threshold: "LOW" # One of: ["LOW", "MEDIUM", "HIGH"],
    #           created_at: Time.now,
    #           description: "ResourceDescription",
    #           dns_advanced_protection: "DGA" # One of: ["DGA", "DNS_TUNNELING", "DICTIONARY_DGA"],
    #           firewall_domain_list_id: "ResourceId",
    #           id: "ResourceId",
    #           managed_domain_list_name: "ResourceName",
    #           name: "ResourceName", # required
    #           priority: 1,
    #           dns_view_id: "ResourceId", # required
    #           query_type: "DnsQueryType",
    #           status: "CREATING" # One of: ["CREATING", "OPERATIONAL", "UPDATING", "DELETING"],
    #           updated_at: Time.now
    #         },
    #         code: 1, # required
    #         message: "String"
    #       }
    #     ],
    #     successes: [ # required
    #       {
    #         firewall_rule: { # required
    #           action: "ALLOW" # One of: ["ALLOW", "ALERT", "BLOCK"], # required
    #           block_override_dns_type: "CNAME" # One of: ["CNAME"],
    #           block_override_domain: "Domain",
    #           block_override_ttl: 1,
    #           block_response: "NODATA" # One of: ["NODATA", "NXDOMAIN", "OVERRIDE"],
    #           client_token: "ClientToken", # required
    #           confidence_threshold: "LOW" # One of: ["LOW", "MEDIUM", "HIGH"],
    #           created_at: Time.now,
    #           description: "ResourceDescription",
    #           dns_advanced_protection: "DGA" # One of: ["DGA", "DNS_TUNNELING", "DICTIONARY_DGA"],
    #           firewall_domain_list_id: "ResourceId",
    #           id: "ResourceId",
    #           managed_domain_list_name: "ResourceName",
    #           name: "ResourceName", # required
    #           priority: 1,
    #           dns_view_id: "ResourceId", # required
    #           query_type: "DnsQueryType",
    #           status: "CREATING" # One of: ["CREATING", "OPERATIONAL", "UPDATING", "DELETING"],
    #           updated_at: Time.now
    #         },
    #         code: 1, # required
    #         message: "String"
    #       }
    #     ]
    #   }
    # @return [Types::BatchCreateFirewallRuleOutput]
    def batch_create_firewall_rule(params = {}, options = {})
      request = build_request(:batch_create_firewall_rule, params)
      request.send_request(options)
    end

    # <p>Deletes multiple DNS firewall rules in a single operation. This is more efficient than deleting rules individually.</p> <important> <p>Route 53 Global Resolver is a global service that supports resolvers in multiple Amazon Web Services Regions but you must specify the US East (Ohio) Region to create, update, or otherwise work with Route 53 Global Resolver resources. That is, for example, specify <code>--region us-east-2</code> on Amazon Web Services CLI commands.</p> </important>
    # @param [Hash, Types::BatchDeleteFirewallRuleInput] params
    # @option params [Array<Types::BatchDeleteFirewallRuleInputItem>] :firewall_rules
    #   <p>An array of the DNS Firewall IDs to be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     firewall_rules: [ # required
    #       {
    #         firewall_rule_id: "ResourceId", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_delete_firewall_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     failures: [ # required
    #       {
    #         firewall_rule: { # required
    #           client_token: "ClientToken",
    #           id: "ResourceId", # required
    #           name: "ResourceName",
    #           status: "CREATING" # One of: ["CREATING", "OPERATIONAL", "UPDATING", "DELETING"]
    #         },
    #         code: 1, # required
    #         message: "String"
    #       }
    #     ],
    #     successes: [ # required
    #       {
    #         firewall_rule: { # required
    #           client_token: "ClientToken",
    #           id: "ResourceId", # required
    #           name: "ResourceName",
    #           status: "CREATING" # One of: ["CREATING", "OPERATIONAL", "UPDATING", "DELETING"]
    #         },
    #         code: 1, # required
    #         message: "String"
    #       }
    #     ]
    #   }
    # @return [Types::BatchDeleteFirewallRuleOutput]
    def batch_delete_firewall_rule(params = {}, options = {})
      request = build_request(:batch_delete_firewall_rule, params)
      request.send_request(options)
    end

    # <p>Updates multiple DNS firewall rules in a single operation. This is more efficient than updating rules individually.</p> <important> <p>Route 53 Global Resolver is a global service that supports resolvers in multiple Amazon Web Services Regions but you must specify the US East (Ohio) Region to create, update, or otherwise work with Route 53 Global Resolver resources. That is, for example, specify <code>--region us-east-2</code> on Amazon Web Services CLI commands.</p> </important>
    # @param [Hash, Types::BatchUpdateFirewallRuleInput] params
    # @option params [Array<Types::BatchUpdateFirewallRuleInputItem>] :firewall_rules
    #   <p>The DNS Firewall rule IDs to be updated.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     firewall_rules: [ # required
    #       {
    #         action: "ALLOW" # One of: ["ALLOW", "ALERT", "BLOCK"],
    #         block_override_dns_type: "CNAME" # One of: ["CNAME"],
    #         block_override_domain: "Domain",
    #         block_override_ttl: 1,
    #         block_response: "NODATA" # One of: ["NODATA", "NXDOMAIN", "OVERRIDE"],
    #         confidence_threshold: "LOW" # One of: ["LOW", "MEDIUM", "HIGH"],
    #         description: "ResourceDescription",
    #         dns_advanced_protection: "DGA" # One of: ["DGA", "DNS_TUNNELING", "DICTIONARY_DGA"],
    #         firewall_rule_id: "ResourceId", # required
    #         name: "ResourceName",
    #         priority: 1
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_update_firewall_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     failures: [ # required
    #       {
    #         firewall_rule: { # required
    #           action: "ALLOW" # One of: ["ALLOW", "ALERT", "BLOCK"],
    #           block_override_dns_type: "CNAME" # One of: ["CNAME"],
    #           block_override_domain: "Domain",
    #           block_override_ttl: 1,
    #           block_response: "NODATA" # One of: ["NODATA", "NXDOMAIN", "OVERRIDE"],
    #           client_token: "ClientToken",
    #           confidence_threshold: "LOW" # One of: ["LOW", "MEDIUM", "HIGH"],
    #           created_at: Time.now,
    #           description: "ResourceDescription",
    #           dns_advanced_protection: "DGA" # One of: ["DGA", "DNS_TUNNELING", "DICTIONARY_DGA"],
    #           firewall_domain_list_id: "ResourceId",
    #           id: "ResourceId", # required
    #           name: "ResourceName",
    #           priority: 1,
    #           dns_view_id: "ResourceId",
    #           query_type: "DnsQueryType",
    #           status: "CREATING" # One of: ["CREATING", "OPERATIONAL", "UPDATING", "DELETING"],
    #           updated_at: Time.now
    #         },
    #         code: 1, # required
    #         message: "String"
    #       }
    #     ],
    #     successes: [ # required
    #       {
    #         firewall_rule: { # required
    #           action: "ALLOW" # One of: ["ALLOW", "ALERT", "BLOCK"],
    #           block_override_dns_type: "CNAME" # One of: ["CNAME"],
    #           block_override_domain: "Domain",
    #           block_override_ttl: 1,
    #           block_response: "NODATA" # One of: ["NODATA", "NXDOMAIN", "OVERRIDE"],
    #           client_token: "ClientToken",
    #           confidence_threshold: "LOW" # One of: ["LOW", "MEDIUM", "HIGH"],
    #           created_at: Time.now,
    #           description: "ResourceDescription",
    #           dns_advanced_protection: "DGA" # One of: ["DGA", "DNS_TUNNELING", "DICTIONARY_DGA"],
    #           firewall_domain_list_id: "ResourceId",
    #           id: "ResourceId", # required
    #           name: "ResourceName",
    #           priority: 1,
    #           dns_view_id: "ResourceId",
    #           query_type: "DnsQueryType",
    #           status: "CREATING" # One of: ["CREATING", "OPERATIONAL", "UPDATING", "DELETING"],
    #           updated_at: Time.now
    #         },
    #         code: 1, # required
    #         message: "String"
    #       }
    #     ]
    #   }
    # @return [Types::BatchUpdateFirewallRuleOutput]
    def batch_update_firewall_rule(params = {}, options = {})
      request = build_request(:batch_update_firewall_rule, params)
      request.send_request(options)
    end

    # <p>Creates an access source for a DNS view. Access sources define IP addresses or CIDR ranges that are allowed to send DNS queries to the Route 53 Global Resolver, along with the permitted DNS protocols.</p> <important> <p>Route 53 Global Resolver is a global service that supports resolvers in multiple Amazon Web Services Regions but you must specify the US East (Ohio) Region to create, update, or otherwise work with Route 53 Global Resolver resources. That is, for example, specify <code>--region us-east-2</code> on Amazon Web Services CLI commands.</p> </important>
    # @param [Hash, Types::CreateAccessSourceInput] params
    # @option params [String] :cidr
    #   <p>The IP address or CIDR range that is allowed to send DNS queries to the Route 53 Global Resolver.</p>
    # @option params [String] :client_token
    #   <p>A unique string that identifies the request and ensures idempotency.</p>
    # @option params [String] :ip_address_type
    #   <p>The IP address type for this access source. Valid values are IPv4 and IPv6 (if the Route 53 Global Resolver supports dual-stack).</p>
    # @option params [String] :name
    #   <p>A descriptive name for the access source.</p>
    # @option params [String] :dns_view_id
    #   <p>The ID of the DNS view to associate with this access source.</p>
    # @option params [String] :protocol
    #   <p>The DNS protocol that is permitted for this access source. Valid values are Do53 (DNS over port 53), DoT (DNS over TLS), and DoH (DNS over HTTPS).</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Tags to associate with the access source.</p>
    # @example CreateAccessSource example
    #   # Example operation for create_access_source
    #   params = {
    #     cidr: "85.90.183.3/30",
    #     client_token: "9fas9-9usdfa-xbi8-kco",
    #     dns_view_id: "dnsv-123456789",
    #     ip_address_type: IPV4,
    #     name: "My Access Source",
    #     protocol: DO53,
    #     tags: {
    #       "Key1" => "Value1"
    #     }
    #   }
    #   options = {}
    #   response = client.create_access_source(params, options)
    #   response.to_h #=>
    #   {
    #     arn: "arn:aws:route53globalresolver::123456789012:access-source/as-823as9d9831",
    #     cidr: "85.90.183.3/30",
    #     created_at: Time.parse("2025-10-16T14:07:45.934184715Z"),
    #     dns_view_id: "dnsv-123456789",
    #     id: "as-123456789",
    #     ip_address_type: IPV4,
    #     name: "My Access Source",
    #     protocol: DO53,
    #     status: CREATING,
    #     updated_at: Time.parse("2025-10-16T14:07:45.934184715Z")
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     cidr: "Cidr", # required
    #     client_token: "ClientToken",
    #     ip_address_type: "IPV4" # One of: ["IPV4", "IPV6"],
    #     name: "ResourceNameShort",
    #     dns_view_id: "ResourceId", # required
    #     protocol: "DO53" # One of: ["DO53", "DOH", "DOT"], # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_access_source(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "ResourceArn", # required
    #     cidr: "Cidr", # required
    #     created_at: Time.now, # required
    #     id: "ResourceId", # required
    #     ip_address_type: "IPV4" # One of: ["IPV4", "IPV6"], # required
    #     name: "ResourceNameShort",
    #     dns_view_id: "ResourceId", # required
    #     protocol: "DO53" # One of: ["DO53", "DOH", "DOT"], # required
    #     status: "CREATING" # One of: ["CREATING", "OPERATIONAL", "UPDATING", "DELETING"], # required
    #     updated_at: Time.now, # required
    #   }
    # @return [Types::CreateAccessSourceOutput]
    def create_access_source(params = {}, options = {})
      request = build_request(:create_access_source, params)
      request.send_request(options)
    end

    # <p>Creates an access token for a DNS view. Access tokens provide token-based authentication for DNS-over-HTTPS (DoH) and DNS-over-TLS (DoT) connections to the Route 53 Global Resolver.</p> <important> <p>Route 53 Global Resolver is a global service that supports resolvers in multiple Amazon Web Services Regions but you must specify the US East (Ohio) Region to create, update, or otherwise work with Route 53 Global Resolver resources. That is, for example, specify <code>--region us-east-2</code> on Amazon Web Services CLI commands.</p> </important>
    # @param [Hash, Types::CreateAccessTokenInput] params
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure idempotency. This means that making the same request multiple times with the same <code>clientToken</code> has the same result every time.</p>
    # @option params [String] :dns_view_id
    #   <p>The ID of the DNS view to associate with this token.</p>
    # @option params [Time] :expires_at
    #   <p>The date and time when the token expires. Tokens can have a minimum expiration of 30 days and maximum of 365 days from creation.</p>
    # @option params [String] :name
    #   <p>A descriptive name for the access token.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>An array of user-defined keys and optional values. These tags can be used for categorization and organization.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientToken",
    #     dns_view_id: "ResourceId", # required
    #     expires_at: Time.now,
    #     name: "ResourceNameShort",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_access_token(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ResourceId", # required
    #     arn: "ResourceArn", # required
    #     client_token: "ClientToken",
    #     created_at: Time.now, # required
    #     dns_view_id: "ResourceId", # required
    #     expires_at: Time.now, # required
    #     name: "ResourceNameShort",
    #     status: "CREATING" # One of: ["CREATING", "OPERATIONAL", "DELETING"], # required
    #     value: "AccessTokenValue", # required
    #   }
    # @return [Types::CreateAccessTokenOutput]
    def create_access_token(params = {}, options = {})
      request = build_request(:create_access_token, params)
      request.send_request(options)
    end

    # <p>Creates a DNS view within a Route 53 Global Resolver. A DNS view models end users, user groups, networks, and devices, and serves as a parent resource that holds configurations controlling access, authorization, DNS firewall rules, and forwarding rules.</p> <important> <p>Route 53 Global Resolver is a global service that supports resolvers in multiple Amazon Web Services Regions but you must specify the US East (Ohio) Region to create, update, or otherwise work with Route 53 Global Resolver resources. That is, for example, specify <code>--region us-east-2</code> on Amazon Web Services CLI commands.</p> </important>
    # @param [Hash, Types::CreateDNSViewInput] params
    # @option params [String] :global_resolver_id
    #   <p>The ID of the Route 53 Global Resolver to associate with this DNS view.</p>
    # @option params [String] :client_token
    #   <p>A unique string that identifies the request and ensures idempotency.</p>
    # @option params [String] :name
    #   <p>A descriptive name for the DNS view.</p>
    # @option params [String] :dnssec_validation
    #   <p>Whether to enable DNSSEC validation for DNS queries in this DNS view. When enabled, the resolver verifies the authenticity and integrity of DNS responses from public name servers for DNSSEC-signed domains.</p>
    # @option params [String] :edns_client_subnet
    #   <p>Whether to enable EDNS Client Subnet injection for DNS queries in this DNS view. When enabled, client subnet information is forwarded to provide more accurate geographic-based DNS responses.</p>
    # @option params [String] :firewall_rules_fail_open
    #   <p>Determines the behavior when Route 53 Global Resolver cannot apply DNS firewall rules due to service impairment. When enabled, DNS queries are allowed through; when disabled, queries are blocked.</p>
    # @option params [String] :description
    #   <p>An optional description for the DNS view.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Tags to associate with the DNS view.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     global_resolver_id: "ResourceId", # required
    #     client_token: "ClientToken",
    #     name: "ResourceName", # required
    #     dnssec_validation: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     edns_client_subnet: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     firewall_rules_fail_open: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     description: "ResourceDescription",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_dns_view(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ResourceId", # required
    #     arn: "ResourceArn", # required
    #     client_token: "ClientToken",
    #     dnssec_validation: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #     edns_client_subnet: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #     firewall_rules_fail_open: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #     name: "ResourceName", # required
    #     description: "ResourceDescription",
    #     global_resolver_id: "ResourceId", # required
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #     status: "CREATING" # One of: ["CREATING", "OPERATIONAL", "UPDATING", "ENABLING", "DISABLING", "DISABLED", "DELETING"], # required
    #   }
    # @return [Types::CreateDNSViewOutput]
    def create_dns_view(params = {}, options = {})
      request = build_request(:create_dns_view, params)
      request.send_request(options)
    end

    # <p>Creates a firewall domain list. Domain lists are reusable sets of domain specifications that you use in DNS firewall rules to allow, block, or alert on DNS queries to specific domains.</p> <important> <p>Route 53 Global Resolver is a global service that supports resolvers in multiple Amazon Web Services Regions but you must specify the US East (Ohio) Region to create, update, or otherwise work with Route 53 Global Resolver resources. That is, for example, specify <code>--region us-east-2</code> on Amazon Web Services CLI commands.</p> </important>
    # @param [Hash, Types::CreateFirewallDomainListInput] params
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure idempotency. This means that making the same request multiple times with the same <code>clientToken</code> has the same result every time.</p>
    # @option params [String] :global_resolver_id
    #   <p>The ID of the Route 53 Global Resolver that the domain list will be associated with.</p>
    # @option params [String] :description
    #   <p>An optional description for the firewall domain list.</p>
    # @option params [String] :name
    #   <p>A descriptive name for the firewall domain list.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>An array of user-defined keys and optional values. These tags can be used for categorization and organization.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientToken",
    #     global_resolver_id: "ResourceId", # required
    #     description: "ResourceDescription",
    #     name: "ResourceName", # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_firewall_domain_list(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "ResourceArn", # required
    #     global_resolver_id: "ResourceId", # required
    #     created_at: Time.now, # required
    #     description: "ResourceDescription",
    #     domain_count: 1, # required
    #     id: "ResourceId", # required
    #     name: "ResourceName", # required
    #     status: "CREATING" # One of: ["CREATING", "OPERATIONAL", "UPDATING", "DELETING"], # required
    #     updated_at: Time.now, # required
    #   }
    # @return [Types::CreateFirewallDomainListOutput]
    def create_firewall_domain_list(params = {}, options = {})
      request = build_request(:create_firewall_domain_list, params)
      request.send_request(options)
    end

    # <p>Creates a DNS firewall rule. Firewall rules define actions (ALLOW, BLOCK, or ALERT) to take on DNS queries that match specified domain lists, managed domain lists, or advanced threat protections.</p> <important> <p>Route 53 Global Resolver is a global service that supports resolvers in multiple Amazon Web Services Regions but you must specify the US East (Ohio) Region to create, update, or otherwise work with Route 53 Global Resolver resources. That is, for example, specify <code>--region us-east-2</code> on Amazon Web Services CLI commands.</p> </important>
    # @param [Hash, Types::CreateFirewallRuleInput] params
    # @option params [String] :action
    #   <p>The action that DNS Firewall should take on a DNS query when it matches one of the domains in the rule's domain list:</p> <ul> <li> <p> <code>ALLOW</code> - Permit the request to go through.</p> </li> <li> <p> <code>ALERT</code> - Permit the request and send metrics and logs to CloudWatch.</p> </li> <li> <p> <code>BLOCK</code> - Disallow the request. This option requires additional details in the rule's <code>BlockResponse</code>.</p> </li> </ul>
    # @option params [String] :block_override_dns_type
    #   <p>The DNS record's type. This determines the format of the record value that you provided in <code>BlockOverrideDomain</code>. Used for the rule action <code>BLOCK</code> with a <code>BlockResponse</code> setting of <code>OVERRIDE</code>.</p> <p>This setting is required if the <code>BlockResponse</code> setting is <code>OVERRIDE</code>.</p>
    # @option params [String] :block_override_domain
    #   <p>The custom DNS record to send back in response to the query. Used for the rule action <code>BLOCK</code> with a <code>BlockResponse</code> setting of <code>OVERRIDE</code>.</p> <p>This setting is required if the <code>BlockResponse</code> setting is <code>OVERRIDE</code>.</p>
    # @option params [Integer] :block_override_ttl
    #   <p>The recommended amount of time, in seconds, for the DNS resolver or web browser to cache the provided override record. Used for the rule action <code>BLOCK</code> with a <code>BlockResponse</code> setting of <code>OVERRIDE</code>.</p> <p>This setting is required if the <code>BlockResponse</code> setting is <code>OVERRIDE</code>.</p>
    # @option params [String] :block_response
    #   <p>The response to return when the action is BLOCK. Valid values are NXDOMAIN (domain does not exist), NODATA (domain exists but no records), or OVERRIDE (return custom response).</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure idempotency. This means that making the same request multiple times with the same <code>clientToken</code> has the same result every time.</p>
    # @option params [String] :confidence_threshold
    #   <p>The confidence threshold for advanced threat detection. Valid values are HIGH, MEDIUM, or LOW, indicating the accuracy level required for threat detection.</p>
    # @option params [String] :description
    #   <p>An optional description for the firewall rule.</p>
    # @option params [String] :dns_advanced_protection
    #   <p>Whether to enable advanced DNS threat protection for this rule. Advanced protection can detect and block DNS tunneling and Domain Generation Algorithm (DGA) threats.</p>
    # @option params [String] :firewall_domain_list_id
    #   <p>The ID of the firewall domain list to use in this rule.</p>
    # @option params [String] :name
    #   <p>A descriptive name for the firewall rule.</p>
    # @option params [Integer] :priority
    #   <p>The priority of this rule. Rules are evaluated in priority order, with lower numbers having higher priority. When a DNS query matches multiple rules, the rule with the highest priority (lowest number) is applied.</p>
    # @option params [String] :dns_view_id
    #   <p>The ID of the DNS view to associate with this firewall rule.</p>
    # @option params [String] :q_type
    #   <p>The DNS query type to match for this rule. Examples include A (IPv4 address), AAAA (IPv6 address), MX (mail exchange), or TXT (text record).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     action: "ALLOW" # One of: ["ALLOW", "ALERT", "BLOCK"], # required
    #     block_override_dns_type: "CNAME" # One of: ["CNAME"],
    #     block_override_domain: "Domain",
    #     block_override_ttl: 1,
    #     block_response: "NODATA" # One of: ["NODATA", "NXDOMAIN", "OVERRIDE"],
    #     client_token: "ClientToken",
    #     confidence_threshold: "LOW" # One of: ["LOW", "MEDIUM", "HIGH"],
    #     description: "ResourceDescription",
    #     dns_advanced_protection: "DGA" # One of: ["DGA", "DNS_TUNNELING", "DICTIONARY_DGA"],
    #     firewall_domain_list_id: "ResourceId",
    #     name: "ResourceName", # required
    #     priority: 1,
    #     dns_view_id: "ResourceId", # required
    #     q_type: "DnsQueryType"
    #   }
    #   options = {}
    #   response = client.create_firewall_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     action: "ALLOW" # One of: ["ALLOW", "ALERT", "BLOCK"], # required
    #     block_override_dns_type: "CNAME" # One of: ["CNAME"],
    #     block_override_domain: "Domain",
    #     block_override_ttl: 1,
    #     block_response: "NODATA" # One of: ["NODATA", "NXDOMAIN", "OVERRIDE"],
    #     confidence_threshold: "LOW" # One of: ["LOW", "MEDIUM", "HIGH"],
    #     created_at: Time.now, # required
    #     description: "ResourceDescription",
    #     dns_advanced_protection: "DGA" # One of: ["DGA", "DNS_TUNNELING", "DICTIONARY_DGA"],
    #     firewall_domain_list_id: "ResourceId",
    #     id: "ResourceId", # required
    #     name: "ResourceName", # required
    #     priority: 1, # required
    #     dns_view_id: "ResourceId", # required
    #     query_type: "DnsQueryType",
    #     status: "CREATING" # One of: ["CREATING", "OPERATIONAL", "UPDATING", "DELETING"], # required
    #     updated_at: Time.now, # required
    #   }
    # @return [Types::CreateFirewallRuleOutput]
    def create_firewall_rule(params = {}, options = {})
      request = build_request(:create_firewall_rule, params)
      request.send_request(options)
    end

    # <p>Creates a new Route 53 Global Resolver instance. A Route 53 Global Resolver is a global, internet-accessible DNS resolver that provides secure DNS resolution for both public and private domains through global anycast IP addresses.</p> <important> <p>Route 53 Global Resolver is a global service that supports resolvers in multiple Amazon Web Services Regions but you must specify the US East (Ohio) Region to create, update, or otherwise work with Route 53 Global Resolver resources. That is, for example, specify <code>--region us-east-2</code> on Amazon Web Services CLI commands.</p> </important>
    # @param [Hash, Types::CreateGlobalResolverInput] params
    # @option params [String] :client_token
    #   <p>A unique string that identifies the request and ensures idempotency. If you make multiple requests with the same client token, only one Route 53 Global Resolver is created.</p>
    # @option params [String] :description
    #   <p>An optional description for the Route 53 Global Resolver instance. Maximum length of 1024 characters.</p>
    # @option params [String] :ip_address_type
    #   <p>The IP address type for the Route 53 Global Resolver. Valid values are IPV4 (default) or DUAL_STACK for both IPv4 and IPv6 support.</p>
    # @option params [String] :name
    #   <p>A descriptive name for the Route 53 Global Resolver instance. Maximum length of 64 characters.</p>
    # @option params [String] :observability_region
    #   <p>The Amazon Web Services Region where query resolution logs and metrics will be aggregated and delivered. If not specified, logging is not enabled.</p>
    # @option params [Array<String>] :regions
    #   <p>List of Amazon Web Services Regions where the Route 53 Global Resolver will operate. The resolver will be distributed across these Regions to provide global availability and low-latency DNS resolution.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Tags to associate with the Route 53 Global Resolver. Tags are key-value pairs that help you organize and identify your resources.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientToken",
    #     description: "ResourceDescription",
    #     ip_address_type: "IPV4" # One of: ["IPV4", "DUAL_STACK"],
    #     name: "ResourceName", # required
    #     observability_region: "Region",
    #     regions: ["Region"], # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_global_resolver(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ResourceId", # required
    #     arn: "ResourceArn", # required
    #     client_token: "ClientToken", # required
    #     created_at: Time.now, # required
    #     description: "ResourceDescription",
    #     dns_name: "Sni", # required
    #     ip_address_type: "IPV4" # One of: ["IPV4", "DUAL_STACK"],
    #     ipv4_addresses: ["IPv4Address"], # required
    #     ipv6_addresses: ["IPv6Address"],
    #     name: "ResourceName", # required
    #     observability_region: "Region",
    #     regions: ["Region"], # required
    #     status: "CREATING" # One of: ["CREATING", "OPERATIONAL", "UPDATING", "DELETING"], # required
    #     updated_at: Time.now, # required
    #   }
    # @return [Types::CreateGlobalResolverOutput]
    def create_global_resolver(params = {}, options = {})
      request = build_request(:create_global_resolver, params)
      request.send_request(options)
    end

    # <p>Deletes an access source. This operation cannot be undone.</p> <important> <p>Route 53 Global Resolver is a global service that supports resolvers in multiple Amazon Web Services Regions but you must specify the US East (Ohio) Region to create, update, or otherwise work with Route 53 Global Resolver resources. That is, for example, specify <code>--region us-east-2</code> on Amazon Web Services CLI commands.</p> </important>
    # @param [Hash, Types::DeleteAccessSourceInput] params
    # @option params [String] :access_source_id
    #   <p>The unique identifier of the access source to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     access_source_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.delete_access_source(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "ResourceArn", # required
    #     cidr: "Cidr", # required
    #     created_at: Time.now, # required
    #     id: "ResourceId", # required
    #     ip_address_type: "IPV4" # One of: ["IPV4", "IPV6"], # required
    #     name: "ResourceNameShort",
    #     dns_view_id: "ResourceId", # required
    #     protocol: "DO53" # One of: ["DO53", "DOH", "DOT"], # required
    #     status: "CREATING" # One of: ["CREATING", "OPERATIONAL", "UPDATING", "DELETING"], # required
    #     updated_at: Time.now, # required
    #   }
    # @return [Types::DeleteAccessSourceOutput]
    def delete_access_source(params = {}, options = {})
      request = build_request(:delete_access_source, params)
      request.send_request(options)
    end

    # <p>Deletes an access token. This operation cannot be undone.</p> <important> <p>Route 53 Global Resolver is a global service that supports resolvers in multiple Amazon Web Services Regions but you must specify the US East (Ohio) Region to create, update, or otherwise work with Route 53 Global Resolver resources. That is, for example, specify <code>--region us-east-2</code> on Amazon Web Services CLI commands.</p> </important>
    # @param [Hash, Types::DeleteAccessTokenInput] params
    # @option params [String] :access_token_id
    #   <p>The unique identifier of the access token to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     access_token_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.delete_access_token(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ResourceId", # required
    #     status: "CREATING" # One of: ["CREATING", "OPERATIONAL", "DELETING"], # required
    #     deleted_at: Time.now, # required
    #   }
    # @return [Types::DeleteAccessTokenOutput]
    def delete_access_token(params = {}, options = {})
      request = build_request(:delete_access_token, params)
      request.send_request(options)
    end

    # <p>Deletes a DNS view. This operation cannot be undone.</p> <important> <p>Route 53 Global Resolver is a global service that supports resolvers in multiple Amazon Web Services Regions but you must specify the US East (Ohio) Region to create, update, or otherwise work with Route 53 Global Resolver resources. That is, for example, specify <code>--region us-east-2</code> on Amazon Web Services CLI commands.</p> </important>
    # @param [Hash, Types::DeleteDNSViewInput] params
    # @option params [String] :dns_view_id
    #   <p>The unique identifier of the DNS view to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     dns_view_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.delete_dns_view(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ResourceId", # required
    #     arn: "ResourceArn", # required
    #     client_token: "ClientToken",
    #     dnssec_validation: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #     edns_client_subnet: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #     firewall_rules_fail_open: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #     name: "ResourceName", # required
    #     description: "ResourceDescription",
    #     global_resolver_id: "ResourceId", # required
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #     status: "CREATING" # One of: ["CREATING", "OPERATIONAL", "UPDATING", "ENABLING", "DISABLING", "DISABLED", "DELETING"], # required
    #   }
    # @return [Types::DeleteDNSViewOutput]
    def delete_dns_view(params = {}, options = {})
      request = build_request(:delete_dns_view, params)
      request.send_request(options)
    end

    # <p>Deletes a firewall domain list. This operation cannot be undone.</p> <important> <p>Route 53 Global Resolver is a global service that supports resolvers in multiple Amazon Web Services Regions but you must specify the US East (Ohio) Region to create, update, or otherwise work with Route 53 Global Resolver resources. That is, for example, specify <code>--region us-east-2</code> on Amazon Web Services CLI commands.</p> </important>
    # @param [Hash, Types::DeleteFirewallDomainListInput] params
    # @option params [String] :firewall_domain_list_id
    #   <p>The unique identifier of the firewall domain list to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     firewall_domain_list_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.delete_firewall_domain_list(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "ResourceArn", # required
    #     id: "ResourceId", # required
    #     name: "ResourceName", # required
    #     status: "CREATING" # One of: ["CREATING", "OPERATIONAL", "UPDATING", "DELETING"], # required
    #   }
    # @return [Types::DeleteFirewallDomainListOutput]
    def delete_firewall_domain_list(params = {}, options = {})
      request = build_request(:delete_firewall_domain_list, params)
      request.send_request(options)
    end

    # <p>Deletes a DNS firewall rule. This operation cannot be undone.</p> <important> <p>Route 53 Global Resolver is a global service that supports resolvers in multiple Amazon Web Services Regions but you must specify the US East (Ohio) Region to create, update, or otherwise work with Route 53 Global Resolver resources. That is, for example, specify <code>--region us-east-2</code> on Amazon Web Services CLI commands.</p> </important>
    # @param [Hash, Types::DeleteFirewallRuleInput] params
    # @option params [String] :firewall_rule_id
    #   <p>The unique identifier of the firewall rule to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     firewall_rule_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.delete_firewall_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     action: "ALLOW" # One of: ["ALLOW", "ALERT", "BLOCK"], # required
    #     block_override_dns_type: "CNAME" # One of: ["CNAME"],
    #     block_override_domain: "Domain",
    #     block_override_ttl: 1,
    #     block_response: "NODATA" # One of: ["NODATA", "NXDOMAIN", "OVERRIDE"],
    #     confidence_threshold: "LOW" # One of: ["LOW", "MEDIUM", "HIGH"],
    #     created_at: Time.now, # required
    #     description: "ResourceDescription",
    #     dns_advanced_protection: "DGA" # One of: ["DGA", "DNS_TUNNELING", "DICTIONARY_DGA"],
    #     firewall_domain_list_id: "ResourceId",
    #     id: "ResourceId", # required
    #     name: "ResourceName", # required
    #     priority: 1, # required
    #     dns_view_id: "ResourceId", # required
    #     query_type: "DnsQueryType",
    #     status: "CREATING" # One of: ["CREATING", "OPERATIONAL", "UPDATING", "DELETING"], # required
    #     updated_at: Time.now, # required
    #   }
    # @return [Types::DeleteFirewallRuleOutput]
    def delete_firewall_rule(params = {}, options = {})
      request = build_request(:delete_firewall_rule, params)
      request.send_request(options)
    end

    # <p>Deletes a Route 53 Global Resolver instance. This operation cannot be undone. All associated DNS views, access sources, tokens, and firewall rules are also deleted.</p> <important> <p>Route 53 Global Resolver is a global service that supports resolvers in multiple Amazon Web Services Regions but you must specify the US East (Ohio) Region to create, update, or otherwise work with Route 53 Global Resolver resources. That is, for example, specify <code>--region us-east-2</code> on Amazon Web Services CLI commands.</p> </important>
    # @param [Hash, Types::DeleteGlobalResolverInput] params
    # @option params [String] :global_resolver_id
    #   <p>The unique identifier of the Route 53 Global Resolver to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     global_resolver_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.delete_global_resolver(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ResourceId", # required
    #     arn: "ResourceArn", # required
    #     client_token: "ClientToken", # required
    #     dns_name: "Sni", # required
    #     observability_region: "Region",
    #     name: "ResourceName", # required
    #     description: "ResourceDescription",
    #     regions: ["Region"], # required
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #     status: "CREATING" # One of: ["CREATING", "OPERATIONAL", "UPDATING", "DELETING"], # required
    #     ipv4_addresses: ["IPv4Address"], # required
    #     ipv6_addresses: ["IPv6Address"],
    #     ip_address_type: "IPV4" # One of: ["IPV4", "DUAL_STACK"]
    #   }
    # @return [Types::DeleteGlobalResolverOutput]
    def delete_global_resolver(params = {}, options = {})
      request = build_request(:delete_global_resolver, params)
      request.send_request(options)
    end

    # <p>Disables a DNS view, preventing it from serving DNS queries.</p> <important> <p>Route 53 Global Resolver is a global service that supports resolvers in multiple Amazon Web Services Regions but you must specify the US East (Ohio) Region to create, update, or otherwise work with Route 53 Global Resolver resources. That is, for example, specify <code>--region us-east-2</code> on Amazon Web Services CLI commands.</p> </important>
    # @param [Hash, Types::DisableDNSViewInput] params
    # @option params [String] :dns_view_id
    #   <p>The unique identifier of the DNS view to disable.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     dns_view_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.disable_dns_view(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ResourceId", # required
    #     arn: "ResourceArn", # required
    #     client_token: "ClientToken",
    #     dnssec_validation: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #     edns_client_subnet: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #     firewall_rules_fail_open: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #     name: "ResourceName", # required
    #     description: "ResourceDescription",
    #     global_resolver_id: "ResourceId", # required
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #     status: "CREATING" # One of: ["CREATING", "OPERATIONAL", "UPDATING", "ENABLING", "DISABLING", "DISABLED", "DELETING"], # required
    #   }
    # @return [Types::DisableDNSViewOutput]
    def disable_dns_view(params = {}, options = {})
      request = build_request(:disable_dns_view, params)
      request.send_request(options)
    end

    # <p>Disassociates a Route 53 private hosted zone from a Route 53 Global Resolver resource.</p> <important> <p>Route 53 Global Resolver is a global service that supports resolvers in multiple Amazon Web Services Regions but you must specify the US East (Ohio) Region to create, update, or otherwise work with Route 53 Global Resolver resources. That is, for example, specify <code>--region us-east-2</code> on Amazon Web Services CLI commands.</p> </important>
    # @param [Hash, Types::DisassociateHostedZoneInput] params
    # @option params [String] :hosted_zone_id
    #   <p>The ID of the Route 53 private hosted zone to disassociate.</p>
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Route 53 Global Resolver resource to disassociate the hosted zone from.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     hosted_zone_id: "HostedZoneId", # required
    #     resource_arn: "ResourceArn", # required
    #   }
    #   options = {}
    #   response = client.disassociate_hosted_zone(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ResourceId", # required
    #     resource_arn: "ResourceArn", # required
    #     hosted_zone_id: "HostedZoneId", # required
    #     hosted_zone_name: "HostedZoneName", # required
    #     name: "ResourceName", # required
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #     status: "CREATING" # One of: ["CREATING", "OPERATIONAL", "DELETING"], # required
    #   }
    # @return [Types::DisassociateHostedZoneOutput]
    def disassociate_hosted_zone(params = {}, options = {})
      request = build_request(:disassociate_hosted_zone, params)
      request.send_request(options)
    end

    # <p>Enables a disabled DNS view, allowing it to serve DNS queries again.</p> <important> <p>Route 53 Global Resolver is a global service that supports resolvers in multiple Amazon Web Services Regions but you must specify the US East (Ohio) Region to create, update, or otherwise work with Route 53 Global Resolver resources. That is, for example, specify <code>--region us-east-2</code> on Amazon Web Services CLI commands.</p> </important>
    # @param [Hash, Types::EnableDNSViewInput] params
    # @option params [String] :dns_view_id
    #   <p>The unique identifier of the DNS view to enable.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     dns_view_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.enable_dns_view(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ResourceId", # required
    #     arn: "ResourceArn", # required
    #     client_token: "ClientToken",
    #     dnssec_validation: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #     edns_client_subnet: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #     firewall_rules_fail_open: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #     name: "ResourceName", # required
    #     description: "ResourceDescription",
    #     global_resolver_id: "ResourceId", # required
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #     status: "CREATING" # One of: ["CREATING", "OPERATIONAL", "UPDATING", "ENABLING", "DISABLING", "DISABLED", "DELETING"], # required
    #   }
    # @return [Types::EnableDNSViewOutput]
    def enable_dns_view(params = {}, options = {})
      request = build_request(:enable_dns_view, params)
      request.send_request(options)
    end

    # <p>Retrieves information about an access source.</p> <important> <p>Route 53 Global Resolver is a global service that supports resolvers in multiple Amazon Web Services Regions but you must specify the US East (Ohio) Region to create, update, or otherwise work with Route 53 Global Resolver resources. That is, for example, specify <code>--region us-east-2</code> on Amazon Web Services CLI commands.</p> </important>
    # @param [Hash, Types::GetAccessSourceInput] params
    # @option params [String] :access_source_id
    #   <p>The unique identifier of the access source to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     access_source_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.get_access_source(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "ResourceArn", # required
    #     cidr: "Cidr", # required
    #     created_at: Time.now, # required
    #     id: "ResourceId", # required
    #     ip_address_type: "IPV4" # One of: ["IPV4", "IPV6"], # required
    #     name: "ResourceNameShort",
    #     dns_view_id: "ResourceId", # required
    #     protocol: "DO53" # One of: ["DO53", "DOH", "DOT"], # required
    #     status: "CREATING" # One of: ["CREATING", "OPERATIONAL", "UPDATING", "DELETING"], # required
    #     updated_at: Time.now, # required
    #   }
    # @return [Types::GetAccessSourceOutput]
    def get_access_source(params = {}, options = {})
      request = build_request(:get_access_source, params)
      request.send_request(options)
    end

    # <p>Retrieves information about an access token.</p> <important> <p>Route 53 Global Resolver is a global service that supports resolvers in multiple Amazon Web Services Regions but you must specify the US East (Ohio) Region to create, update, or otherwise work with Route 53 Global Resolver resources. That is, for example, specify <code>--region us-east-2</code> on Amazon Web Services CLI commands.</p> </important>
    # @param [Hash, Types::GetAccessTokenInput] params
    # @option params [String] :access_token_id
    #   <p>ID of the token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     access_token_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.get_access_token(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ResourceId", # required
    #     arn: "ResourceArn", # required
    #     client_token: "ClientToken",
    #     created_at: Time.now, # required
    #     dns_view_id: "ResourceId", # required
    #     expires_at: Time.now, # required
    #     global_resolver_id: "ResourceId", # required
    #     name: "ResourceNameShort",
    #     status: "CREATING" # One of: ["CREATING", "OPERATIONAL", "DELETING"], # required
    #     updated_at: Time.now, # required
    #     value: "AccessTokenValue", # required
    #   }
    # @return [Types::GetAccessTokenOutput]
    def get_access_token(params = {}, options = {})
      request = build_request(:get_access_token, params)
      request.send_request(options)
    end

    # <p>Retrieves information about a DNS view.</p> <important> <p>Route 53 Global Resolver is a global service that supports resolvers in multiple Amazon Web Services Regions but you must specify the US East (Ohio) Region to create, update, or otherwise work with Route 53 Global Resolver resources. That is, for example, specify <code>--region us-east-2</code> on Amazon Web Services CLI commands.</p> </important>
    # @param [Hash, Types::GetDNSViewInput] params
    # @option params [String] :dns_view_id
    #   <p>The ID of the DNS view to retrieve information about.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     dns_view_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.get_dns_view(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ResourceId", # required
    #     arn: "ResourceArn", # required
    #     client_token: "ClientToken",
    #     dnssec_validation: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #     edns_client_subnet: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #     firewall_rules_fail_open: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #     name: "ResourceName", # required
    #     description: "ResourceDescription",
    #     global_resolver_id: "ResourceId", # required
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #     status: "CREATING" # One of: ["CREATING", "OPERATIONAL", "UPDATING", "ENABLING", "DISABLING", "DISABLED", "DELETING"], # required
    #   }
    # @return [Types::GetDNSViewOutput]
    def get_dns_view(params = {}, options = {})
      request = build_request(:get_dns_view, params)
      request.send_request(options)
    end

    # <p>Retrieves information about a firewall domain list.</p> <important> <p>Route 53 Global Resolver is a global service that supports resolvers in multiple Amazon Web Services Regions but you must specify the US East (Ohio) Region to create, update, or otherwise work with Route 53 Global Resolver resources. That is, for example, specify <code>--region us-east-2</code> on Amazon Web Services CLI commands.</p> </important>
    # @param [Hash, Types::GetFirewallDomainListInput] params
    # @option params [String] :firewall_domain_list_id
    #   <p>ID of the domain list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     firewall_domain_list_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.get_firewall_domain_list(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "ResourceArn", # required
    #     global_resolver_id: "ResourceId", # required
    #     client_token: "ClientToken",
    #     created_at: Time.now, # required
    #     description: "ResourceDescription",
    #     domain_count: 1, # required
    #     id: "ResourceId", # required
    #     name: "ResourceName", # required
    #     status: "CREATING" # One of: ["CREATING", "OPERATIONAL", "UPDATING", "DELETING"], # required
    #     status_message: "String",
    #     updated_at: Time.now, # required
    #   }
    # @return [Types::GetFirewallDomainListOutput]
    def get_firewall_domain_list(params = {}, options = {})
      request = build_request(:get_firewall_domain_list, params)
      request.send_request(options)
    end

    # <p>Retrieves information about a DNS firewall rule.</p> <important> <p>Route 53 Global Resolver is a global service that supports resolvers in multiple Amazon Web Services Regions but you must specify the US East (Ohio) Region to create, update, or otherwise work with Route 53 Global Resolver resources. That is, for example, specify <code>--region us-east-2</code> on Amazon Web Services CLI commands.</p> </important>
    # @param [Hash, Types::GetFirewallRuleInput] params
    # @option params [String] :firewall_rule_id
    #   <p>ID of the DNS Firewall rule.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     firewall_rule_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.get_firewall_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     action: "ALLOW" # One of: ["ALLOW", "ALERT", "BLOCK"], # required
    #     block_override_dns_type: "CNAME" # One of: ["CNAME"],
    #     block_override_domain: "Domain",
    #     block_override_ttl: 1,
    #     block_response: "NODATA" # One of: ["NODATA", "NXDOMAIN", "OVERRIDE"],
    #     confidence_threshold: "LOW" # One of: ["LOW", "MEDIUM", "HIGH"],
    #     created_at: Time.now, # required
    #     description: "ResourceDescription",
    #     dns_advanced_protection: "DGA" # One of: ["DGA", "DNS_TUNNELING", "DICTIONARY_DGA"],
    #     firewall_domain_list_id: "ResourceId",
    #     id: "ResourceId", # required
    #     name: "ResourceName", # required
    #     priority: 1, # required
    #     dns_view_id: "ResourceId", # required
    #     query_type: "DnsQueryType",
    #     status: "CREATING" # One of: ["CREATING", "OPERATIONAL", "UPDATING", "DELETING"], # required
    #     updated_at: Time.now, # required
    #   }
    # @return [Types::GetFirewallRuleOutput]
    def get_firewall_rule(params = {}, options = {})
      request = build_request(:get_firewall_rule, params)
      request.send_request(options)
    end

    # <p>Retrieves information about a Route 53 Global Resolver instance.</p> <important> <p>Route 53 Global Resolver is a global service that supports resolvers in multiple Amazon Web Services Regions but you must specify the US East (Ohio) Region to create, update, or otherwise work with Route 53 Global Resolver resources. That is, for example, specify <code>--region us-east-2</code> on Amazon Web Services CLI commands.</p> </important>
    # @param [Hash, Types::GetGlobalResolverInput] params
    # @option params [String] :global_resolver_id
    #   <p>The ID of the Route 53 Global Resolver to retrieve information about.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     global_resolver_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.get_global_resolver(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ResourceId", # required
    #     arn: "ResourceArn", # required
    #     client_token: "ClientToken", # required
    #     dns_name: "Sni", # required
    #     observability_region: "Region",
    #     name: "ResourceName", # required
    #     description: "ResourceDescription",
    #     regions: ["Region"], # required
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #     status: "CREATING" # One of: ["CREATING", "OPERATIONAL", "UPDATING", "DELETING"], # required
    #     ipv4_addresses: ["IPv4Address"], # required
    #     ipv6_addresses: ["IPv6Address"],
    #     ip_address_type: "IPV4" # One of: ["IPV4", "DUAL_STACK"]
    #   }
    # @return [Types::GetGlobalResolverOutput]
    def get_global_resolver(params = {}, options = {})
      request = build_request(:get_global_resolver, params)
      request.send_request(options)
    end

    # <p>Retrieves information about a hosted zone association.</p> <important> <p>Route 53 Global Resolver is a global service that supports resolvers in multiple Amazon Web Services Regions but you must specify the US East (Ohio) Region to create, update, or otherwise work with Route 53 Global Resolver resources. That is, for example, specify <code>--region us-east-2</code> on Amazon Web Services CLI commands.</p> </important>
    # @param [Hash, Types::GetHostedZoneAssociationInput] params
    # @option params [String] :hosted_zone_association_id
    #   <p>ID of the private hosted zone association.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     hosted_zone_association_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.get_hosted_zone_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ResourceId", # required
    #     resource_arn: "ResourceArn", # required
    #     hosted_zone_id: "HostedZoneId", # required
    #     hosted_zone_name: "HostedZoneName", # required
    #     name: "ResourceName", # required
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #     status: "CREATING" # One of: ["CREATING", "OPERATIONAL", "DELETING"], # required
    #   }
    # @return [Types::GetHostedZoneAssociationOutput]
    def get_hosted_zone_association(params = {}, options = {})
      request = build_request(:get_hosted_zone_association, params)
      request.send_request(options)
    end

    # <p>Retrieves information about an Amazon Web Services-managed firewall domain list. Managed domain lists contain domains associated with malicious activity, content categories, or specific threats.</p> <important> <p>Route 53 Global Resolver is a global service that supports resolvers in multiple Amazon Web Services Regions but you must specify the US East (Ohio) Region to create, update, or otherwise work with Route 53 Global Resolver resources. That is, for example, specify <code>--region us-east-2</code> on Amazon Web Services CLI commands.</p> </important>
    # @param [Hash, Types::GetManagedFirewallDomainListInput] params
    # @option params [String] :managed_firewall_domain_list_id
    #   <p>ID of the Managed Domain List.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     managed_firewall_domain_list_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.get_managed_firewall_domain_list(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     description: "ResourceDescription",
    #     id: "ResourceId", # required
    #     name: "ResourceName", # required
    #     managed_list_type: "String", # required
    #   }
    # @return [Types::GetManagedFirewallDomainListOutput]
    def get_managed_firewall_domain_list(params = {}, options = {})
      request = build_request(:get_managed_firewall_domain_list, params)
      request.send_request(options)
    end

    # <p>Imports a list of domains from an Amazon S3 file into a firewall domain list. The file should contain one domain per line.</p> <important> <p>Route 53 Global Resolver is a global service that supports resolvers in multiple Amazon Web Services Regions but you must specify the US East (Ohio) Region to create, update, or otherwise work with Route 53 Global Resolver resources. That is, for example, specify <code>--region us-east-2</code> on Amazon Web Services CLI commands.</p> </important>
    # @param [Hash, Types::ImportFirewallDomainsInput] params
    # @option params [String] :domain_file_url
    #   <p>The fully qualified URL of the file in Amazon S3 that contains the list of domains to import. The file should contain one domain per line.</p>
    # @option params [String] :firewall_domain_list_id
    #   <p>ID of the DNS Firewall domain list that you want to import the domain list to.</p>
    # @option params [String] :operation
    #   <p>This value is <code>REPLACE</code>, and it updates the domain list to match the list of domains in the imported file.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_file_url: "String", # required
    #     firewall_domain_list_id: "ResourceId", # required
    #     operation: "String", # required
    #   }
    #   options = {}
    #   response = client.import_firewall_domains(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ResourceId", # required
    #     name: "ResourceName", # required
    #     status: "CREATING" # One of: ["CREATING", "OPERATIONAL", "UPDATING", "DELETING"], # required
    #   }
    # @return [Types::ImportFirewallDomainsOutput]
    def import_firewall_domains(params = {}, options = {})
      request = build_request(:import_firewall_domains, params)
      request.send_request(options)
    end

    # <p>Lists all access sources with pagination support.</p> <important> <p>Route 53 Global Resolver is a global service that supports resolvers in multiple Amazon Web Services Regions but you must specify the US East (Ohio) Region to create, update, or otherwise work with Route 53 Global Resolver resources. That is, for example, specify <code>--region us-east-2</code> on Amazon Web Services CLI commands.</p> </important>
    # @param [Hash, Types::ListAccessSourcesInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to retrieve in a single call.</p>
    # @option params [String] :next_token
    #   <p>A pagination token used for large sets of results that can't be returned in a single response.</p>
    # @option params [Hash<String, Array<String>>] :filters
    #   <p>Values to filter the results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "String",
    #     filters: {
    #       "String" => ["String"]
    #     }
    #   }
    #   options = {}
    #   response = client.list_access_sources(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     access_sources: [ # required
    #       {
    #         arn: "ResourceArn", # required
    #         cidr: "Cidr", # required
    #         created_at: Time.now, # required
    #         id: "ResourceId", # required
    #         ip_address_type: "IPV4" # One of: ["IPV4", "IPV6"], # required
    #         name: "ResourceNameShort",
    #         dns_view_id: "ResourceId", # required
    #         protocol: "DO53" # One of: ["DO53", "DOH", "DOT"], # required
    #         status: "CREATING" # One of: ["CREATING", "OPERATIONAL", "UPDATING", "DELETING"], # required
    #         updated_at: Time.now, # required
    #       }
    #     ]
    #   }
    # @return [Types::ListAccessSourcesOutput]
    def list_access_sources(params = {}, options = {})
      request = build_request(:list_access_sources, params)
      request.send_request(options)
    end

    # <p>Lists all access tokens for a DNS view with pagination support.</p> <important> <p>Route 53 Global Resolver is a global service that supports resolvers in multiple Amazon Web Services Regions but you must specify the US East (Ohio) Region to create, update, or otherwise work with Route 53 Global Resolver resources. That is, for example, specify <code>--region us-east-2</code> on Amazon Web Services CLI commands.</p> </important>
    # @param [Hash, Types::ListAccessTokensInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to retrieve in a single call.</p>
    # @option params [String] :next_token
    #   <p>A pagination token used for large sets of results that can't be returned in a single response.</p>
    # @option params [String] :dns_view_id
    #   <p>The ID of the DNS view to list the tokens for.</p>
    # @option params [Hash<String, Array<String>>] :filters
    #   <p>Filtering parameters.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "String",
    #     dns_view_id: "ResourceId", # required
    #     filters: {
    #       "String" => ["String"]
    #     }
    #   }
    #   options = {}
    #   response = client.list_access_tokens(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     access_tokens: [
    #       {
    #         id: "ResourceId", # required
    #         arn: "ResourceArn", # required
    #         created_at: Time.now, # required
    #         dns_view_id: "ResourceId", # required
    #         expires_at: Time.now, # required
    #         global_resolver_id: "ResourceId", # required
    #         name: "ResourceNameShort",
    #         status: "CREATING" # One of: ["CREATING", "OPERATIONAL", "DELETING"], # required
    #         updated_at: Time.now, # required
    #       }
    #     ]
    #   }
    # @return [Types::ListAccessTokensOutput]
    def list_access_tokens(params = {}, options = {})
      request = build_request(:list_access_tokens, params)
      request.send_request(options)
    end

    # <p>Lists all DNS views for a Route 53 Global Resolver with pagination support.</p> <important> <p>Route 53 Global Resolver is a global service that supports resolvers in multiple Amazon Web Services Regions but you must specify the US East (Ohio) Region to create, update, or otherwise work with Route 53 Global Resolver resources. That is, for example, specify <code>--region us-east-2</code> on Amazon Web Services CLI commands.</p> </important>
    # @param [Hash, Types::ListDNSViewsInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to retrieve in a single call.</p>
    # @option params [String] :next_token
    #   <p>A pagination token used for large sets of results that can't be returned in a single response.</p>
    # @option params [String] :global_resolver_id
    #   <p>The Global Resolver ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "String",
    #     global_resolver_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.list_dns_views(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     dns_views: [ # required
    #       {
    #         id: "ResourceId", # required
    #         arn: "ResourceArn", # required
    #         client_token: "ClientToken", # required
    #         dnssec_validation: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #         edns_client_subnet: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #         firewall_rules_fail_open: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #         name: "ResourceName", # required
    #         description: "ResourceDescription",
    #         global_resolver_id: "ResourceId", # required
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #         status: "CREATING" # One of: ["CREATING", "OPERATIONAL", "UPDATING", "ENABLING", "DISABLING", "DISABLED", "DELETING"], # required
    #       }
    #     ]
    #   }
    # @return [Types::ListDNSViewsOutput]
    def list_dns_views(params = {}, options = {})
      request = build_request(:list_dns_views, params)
      request.send_request(options)
    end

    # <p>Lists all firewall domain lists for a Route 53 Global Resolver with pagination support.</p> <important> <p>Route 53 Global Resolver is a global service that supports resolvers in multiple Amazon Web Services Regions but you must specify the US East (Ohio) Region to create, update, or otherwise work with Route 53 Global Resolver resources. That is, for example, specify <code>--region us-east-2</code> on Amazon Web Services CLI commands.</p> </important>
    # @param [Hash, Types::ListFirewallDomainListsInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to retrieve in a single call.</p>
    # @option params [String] :next_token
    #   <p>A pagination token used for large sets of results that can't be returned in a single response.</p>
    # @option params [String] :global_resolver_id
    #   <p>The ID of the Global Resolver that contains the DNS view the domain lists are associated to.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "String",
    #     global_resolver_id: "ResourceId"
    #   }
    #   options = {}
    #   response = client.list_firewall_domain_lists(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     firewall_domain_lists: [ # required
    #       {
    #         arn: "ResourceArn", # required
    #         global_resolver_id: "ResourceId", # required
    #         created_at: Time.now, # required
    #         description: "ResourceDescription",
    #         id: "ResourceId", # required
    #         name: "ResourceName", # required
    #         status: "CREATING" # One of: ["CREATING", "OPERATIONAL", "UPDATING", "DELETING"], # required
    #         updated_at: Time.now, # required
    #       }
    #     ]
    #   }
    # @return [Types::ListFirewallDomainListsOutput]
    def list_firewall_domain_lists(params = {}, options = {})
      request = build_request(:list_firewall_domain_lists, params)
      request.send_request(options)
    end

    # <p>Lists all the domains in DNS Firewall domain list you have created.</p> <important> <p>Route 53 Global Resolver is a global service that supports resolvers in multiple Amazon Web Services Regions but you must specify the US East (Ohio) Region to create, update, or otherwise work with Route 53 Global Resolver resources. That is, for example, specify <code>--region us-east-2</code> on Amazon Web Services CLI commands.</p> </important>
    # @param [Hash, Types::ListFirewallDomainsInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to retrieve in a single call.</p>
    # @option params [String] :next_token
    #   <p>A pagination token used for large sets of results that can't be returned in a single response.</p>
    # @option params [String] :firewall_domain_list_id
    #   <p>ID of the DNS Firewall domain list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "String",
    #     firewall_domain_list_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.list_firewall_domains(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     domains: ["Domain"], # required
    #   }
    # @return [Types::ListFirewallDomainsOutput]
    def list_firewall_domains(params = {}, options = {})
      request = build_request(:list_firewall_domains, params)
      request.send_request(options)
    end

    # <p>Lists all DNS firewall rules for a DNS view with pagination support.</p> <important> <p>Route 53 Global Resolver is a global service that supports resolvers in multiple Amazon Web Services Regions but you must specify the US East (Ohio) Region to create, update, or otherwise work with Route 53 Global Resolver resources. That is, for example, specify <code>--region us-east-2</code> on Amazon Web Services CLI commands.</p> </important>
    # @param [Hash, Types::ListFirewallRulesInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to retrieve in a single call.</p>
    # @option params [String] :next_token
    #   <p>A pagination token used for large sets of results that can't be returned in a single response.</p>
    # @option params [String] :dns_view_id
    #   <p>ID of the DNS view.</p>
    # @option params [Hash<String, Array<String>>] :filters
    #   <p>Values to filter the results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "String",
    #     dns_view_id: "ResourceId", # required
    #     filters: {
    #       "String" => ["String"]
    #     }
    #   }
    #   options = {}
    #   response = client.list_firewall_rules(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     firewall_rules: [ # required
    #       {
    #         action: "ALLOW" # One of: ["ALLOW", "ALERT", "BLOCK"], # required
    #         block_override_dns_type: "CNAME" # One of: ["CNAME"],
    #         block_override_domain: "Domain",
    #         block_override_ttl: 1,
    #         block_response: "NODATA" # One of: ["NODATA", "NXDOMAIN", "OVERRIDE"],
    #         confidence_threshold: "LOW" # One of: ["LOW", "MEDIUM", "HIGH"],
    #         created_at: Time.now, # required
    #         description: "ResourceDescription",
    #         dns_advanced_protection: "DGA" # One of: ["DGA", "DNS_TUNNELING", "DICTIONARY_DGA"],
    #         firewall_domain_list_id: "ResourceId",
    #         id: "ResourceId", # required
    #         name: "ResourceName", # required
    #         priority: 1, # required
    #         dns_view_id: "ResourceId", # required
    #         query_type: "DnsQueryType",
    #         status: "CREATING" # One of: ["CREATING", "OPERATIONAL", "UPDATING", "DELETING"], # required
    #         updated_at: Time.now, # required
    #       }
    #     ]
    #   }
    # @return [Types::ListFirewallRulesOutput]
    def list_firewall_rules(params = {}, options = {})
      request = build_request(:list_firewall_rules, params)
      request.send_request(options)
    end

    # <p>Lists all Route 53 Global Resolver instances in your account with pagination support.</p> <important> <p>Route 53 Global Resolver is a global service that supports resolvers in multiple Amazon Web Services Regions but you must specify the US East (Ohio) Region to create, update, or otherwise work with Route 53 Global Resolver resources. That is, for example, specify <code>--region us-east-2</code> on Amazon Web Services CLI commands.</p> </important>
    # @param [Hash, Types::ListGlobalResolversInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of Route 53 Global Resolver instances to return in the response. Valid range is 1-100.</p>
    # @option params [String] :next_token
    #   <p>The token for the next page of results. This value is returned in the response if there are more results to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_global_resolvers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     global_resolvers: [ # required
    #       {
    #         id: "ResourceId", # required
    #         arn: "ResourceArn", # required
    #         client_token: "ClientToken", # required
    #         dns_name: "Sni", # required
    #         observability_region: "Region",
    #         name: "ResourceName", # required
    #         description: "ResourceDescription",
    #         regions: ["Region"], # required
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #         status: "CREATING" # One of: ["CREATING", "OPERATIONAL", "UPDATING", "DELETING"], # required
    #         ipv4_addresses: ["IPv4Address"], # required
    #         ipv6_addresses: ["IPv6Address"],
    #         ip_address_type: "IPV4" # One of: ["IPV4", "DUAL_STACK"]
    #       }
    #     ]
    #   }
    # @return [Types::ListGlobalResolversOutput]
    def list_global_resolvers(params = {}, options = {})
      request = build_request(:list_global_resolvers, params)
      request.send_request(options)
    end

    # <p>Lists hosted zone associations with pagination support. Specify a DNS view through the <code>resourceArn</code> parameter to list the hosted zone associations for that DNS view, or omit it to list all hosted zone associations in your Amazon Web Services account.</p> <important> <p>Route 53 Global Resolver is a global service that supports resolvers in multiple Amazon Web Services Regions but you must specify the US East (Ohio) Region to create, update, or otherwise work with Route 53 Global Resolver resources. That is, for example, specify <code>--region us-east-2</code> on Amazon Web Services CLI commands.</p> </important>
    # @param [Hash, Types::ListHostedZoneAssociationsInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to retrieve in a single call.</p>
    # @option params [String] :next_token
    #   <p>A pagination token used for large sets of results that can't be returned in a single response.</p>
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the DNS view to list hosted zone associations for. This parameter is optional; if you omit it, all hosted zone associations in your Amazon Web Services account are returned.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "String",
    #     resource_arn: "ResourceArn"
    #   }
    #   options = {}
    #   response = client.list_hosted_zone_associations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     hosted_zone_associations: [ # required
    #       {
    #         id: "ResourceId", # required
    #         resource_arn: "ResourceArn", # required
    #         hosted_zone_id: "HostedZoneId", # required
    #         hosted_zone_name: "HostedZoneName", # required
    #         name: "ResourceName", # required
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #         status: "CREATING" # One of: ["CREATING", "OPERATIONAL", "DELETING"], # required
    #       }
    #     ]
    #   }
    # @return [Types::ListHostedZoneAssociationsOutput]
    def list_hosted_zone_associations(params = {}, options = {})
      request = build_request(:list_hosted_zone_associations, params)
      request.send_request(options)
    end

    # <p>Returns a paginated list of the Amazon Web Services Managed DNS Lists and the categories for DNS Firewall. The categories are either <code>THREAT</code> or <code>CONTENT</code>.</p> <important> <p>Route 53 Global Resolver is a global service that supports resolvers in multiple Amazon Web Services Regions but you must specify the US East (Ohio) Region to create, update, or otherwise work with Route 53 Global Resolver resources. That is, for example, specify <code>--region us-east-2</code> on Amazon Web Services CLI commands.</p> </important>
    # @param [Hash, Types::ListManagedFirewallDomainListsInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to retrieve in a single call.</p>
    # @option params [String] :next_token
    #   <p>A pagination token used for large sets of results that can't be returned in a single response.</p>
    # @option params [String] :managed_firewall_domain_list_type
    #   <p>The category of the Manage DNS list either <code>THREAT</code> or <code>CONTENT</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "String",
    #     managed_firewall_domain_list_type: "String", # required
    #   }
    #   options = {}
    #   response = client.list_managed_firewall_domain_lists(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     managed_firewall_domain_lists: [ # required
    #       {
    #         description: "ResourceDescription",
    #         id: "ResourceId", # required
    #         name: "ResourceName", # required
    #         managed_list_type: "String", # required
    #       }
    #     ]
    #   }
    # @return [Types::ListManagedFirewallDomainListsOutput]
    def list_managed_firewall_domain_lists(params = {}, options = {})
      request = build_request(:list_managed_firewall_domain_lists, params)
      request.send_request(options)
    end

    # <p>Lists the DNS views that have been shared with your Amazon Web Services account through Amazon Web Services Resource Access Manager (Amazon Web Services RAM), with pagination support.</p> <important> <p>Route 53 Global Resolver is a global service that supports resolvers in multiple Amazon Web Services Regions but you must specify the US East (Ohio) Region to create, update, or otherwise work with Route 53 Global Resolver resources. That is, for example, specify <code>--region us-east-2</code> on Amazon Web Services CLI commands.</p> </important>
    # @param [Hash, Types::ListSharedDNSViewsInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to retrieve in a single call.</p>
    # @option params [String] :next_token
    #   <p>A pagination token used for large sets of results that can't be returned in a single response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_shared_dns_views(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     dns_views: [ # required
    #       {
    #         id: "ResourceId", # required
    #         arn: "ResourceArn", # required
    #         client_token: "ClientToken", # required
    #         dnssec_validation: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #         edns_client_subnet: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #         firewall_rules_fail_open: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #         name: "ResourceName", # required
    #         description: "ResourceDescription",
    #         global_resolver_id: "ResourceId", # required
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #         status: "CREATING" # One of: ["CREATING", "OPERATIONAL", "UPDATING", "ENABLING", "DISABLING", "DISABLED", "DELETING"], # required
    #         owner_account_id: "AccountId", # required
    #       }
    #     ]
    #   }
    # @return [Types::ListSharedDNSViewsOutput]
    def list_shared_dns_views(params = {}, options = {})
      request = build_request(:list_shared_dns_views, params)
      request.send_request(options)
    end

    # <p>Lists the tags associated with a Route 53 Global Resolver resource.</p> <important> <p>Route 53 Global Resolver is a global service that supports resolvers in multiple Amazon Web Services Regions but you must specify the US East (Ohio) Region to create, update, or otherwise work with Route 53 Global Resolver resources. That is, for example, specify <code>--region us-east-2</code> on Amazon Web Services CLI commands.</p> </important>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>Amazon Resource Name (ARN) for the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
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

    # <p>Adds or updates tags for a Route 53 Global Resolver resource. Tags are key-value pairs that help you organize and identify your resources.</p> <important> <p>Route 53 Global Resolver is a global service that supports resolvers in multiple Amazon Web Services Regions but you must specify the US East (Ohio) Region to create, update, or otherwise work with Route 53 Global Resolver resources. That is, for example, specify <code>--region us-east-2</code> on Amazon Web Services CLI commands.</p> </important>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>Amazon Resource Name (ARN) of the resource to be tagged.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>An array of user-defined keys and optional values. These tags can be used for categorization and organization.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
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

    # <p>Removes tags from a Route 53 Global Resolver resource.</p> <important> <p>Route 53 Global Resolver is a global service that supports resolvers in multiple Amazon Web Services Regions but you must specify the US East (Ohio) Region to create, update, or otherwise work with Route 53 Global Resolver resources. That is, for example, specify <code>--region us-east-2</code> on Amazon Web Services CLI commands.</p> </important>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>Amazon Resource Name (ARN) of the resource.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The tag keys associated with the resource.</p>
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

    # <p>Updates the configuration of an access source.</p> <important> <p>Route 53 Global Resolver is a global service that supports resolvers in multiple Amazon Web Services Regions but you must specify the US East (Ohio) Region to create, update, or otherwise work with Route 53 Global Resolver resources. That is, for example, specify <code>--region us-east-2</code> on Amazon Web Services CLI commands.</p> </important>
    # @param [Hash, Types::UpdateAccessSourceInput] params
    # @option params [String] :access_source_id
    #   <p>The unique identifier of the access source to update.</p>
    # @option params [String] :cidr
    #   <p>The CIDR block for the access source.</p>
    # @option params [String] :ip_address_type
    #   <p>The IP address type for the access source.</p>
    # @option params [String] :name
    #   <p>The name of the access source.</p>
    # @option params [String] :protocol
    #   <p>The protocol for the access source.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     access_source_id: "ResourceId", # required
    #     cidr: "Cidr",
    #     ip_address_type: "IPV4" # One of: ["IPV4", "IPV6"],
    #     name: "ResourceNameShort",
    #     protocol: "DO53" # One of: ["DO53", "DOH", "DOT"]
    #   }
    #   options = {}
    #   response = client.update_access_source(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "ResourceArn", # required
    #     cidr: "Cidr", # required
    #     created_at: Time.now, # required
    #     id: "ResourceId", # required
    #     ip_address_type: "IPV4" # One of: ["IPV4", "IPV6"], # required
    #     name: "ResourceNameShort",
    #     dns_view_id: "ResourceId", # required
    #     protocol: "DO53" # One of: ["DO53", "DOH", "DOT"], # required
    #     status: "CREATING" # One of: ["CREATING", "OPERATIONAL", "UPDATING", "DELETING"], # required
    #     updated_at: Time.now, # required
    #   }
    # @return [Types::UpdateAccessSourceOutput]
    def update_access_source(params = {}, options = {})
      request = build_request(:update_access_source, params)
      request.send_request(options)
    end

    # <p>Updates the configuration of an access token.</p> <important> <p>Route 53 Global Resolver is a global service that supports resolvers in multiple Amazon Web Services Regions but you must specify the US East (Ohio) Region to create, update, or otherwise work with Route 53 Global Resolver resources. That is, for example, specify <code>--region us-east-2</code> on Amazon Web Services CLI commands.</p> </important>
    # @param [Hash, Types::UpdateAccessTokenInput] params
    # @option params [String] :access_token_id
    #   <p>The ID of the token.</p>
    # @option params [String] :name
    #   <p>The new name of the token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     access_token_id: "ResourceId", # required
    #     name: "ResourceNameShort", # required
    #   }
    #   options = {}
    #   response = client.update_access_token(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ResourceId", # required
    #     name: "ResourceNameShort", # required
    #   }
    # @return [Types::UpdateAccessTokenOutput]
    def update_access_token(params = {}, options = {})
      request = build_request(:update_access_token, params)
      request.send_request(options)
    end

    # <p>Updates the configuration of a DNS view.</p> <important> <p>Route 53 Global Resolver is a global service that supports resolvers in multiple Amazon Web Services Regions but you must specify the US East (Ohio) Region to create, update, or otherwise work with Route 53 Global Resolver resources. That is, for example, specify <code>--region us-east-2</code> on Amazon Web Services CLI commands.</p> </important>
    # @param [Hash, Types::UpdateDNSViewInput] params
    # @option params [String] :dns_view_id
    #   <p>The unique identifier of the DNS view to update.</p>
    # @option params [String] :name
    #   <p>The name of the DNS view.</p>
    # @option params [String] :description
    #   <p>A description of the DNS view.</p>
    # @option params [String] :dnssec_validation
    #   <p>Whether to enable DNSSEC validation for the DNS view.</p>
    # @option params [String] :edns_client_subnet
    #   <p>Whether to enable EDNS Client Subnet injection for the DNS view.</p>
    # @option params [String] :firewall_rules_fail_open
    #   <p>Whether firewall rules should fail open when they cannot be evaluated.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     dns_view_id: "ResourceId", # required
    #     name: "ResourceName",
    #     description: "ResourceDescription",
    #     dnssec_validation: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     edns_client_subnet: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     firewall_rules_fail_open: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #   }
    #   options = {}
    #   response = client.update_dns_view(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ResourceId", # required
    #     arn: "ResourceArn", # required
    #     client_token: "ClientToken",
    #     dnssec_validation: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #     edns_client_subnet: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #     firewall_rules_fail_open: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #     name: "ResourceName", # required
    #     description: "ResourceDescription",
    #     global_resolver_id: "ResourceId", # required
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #     status: "CREATING" # One of: ["CREATING", "OPERATIONAL", "UPDATING", "ENABLING", "DISABLING", "DISABLED", "DELETING"], # required
    #   }
    # @return [Types::UpdateDNSViewOutput]
    def update_dns_view(params = {}, options = {})
      request = build_request(:update_dns_view, params)
      request.send_request(options)
    end

    # <p>Updates a DNS Firewall domain list from an array of specified domains.</p> <important> <p>Route 53 Global Resolver is a global service that supports resolvers in multiple Amazon Web Services Regions but you must specify the US East (Ohio) Region to create, update, or otherwise work with Route 53 Global Resolver resources. That is, for example, specify <code>--region us-east-2</code> on Amazon Web Services CLI commands.</p> </important>
    # @param [Hash, Types::UpdateFirewallDomainsInput] params
    # @option params [Array<String>] :domains
    #   <p>A list of the domains. You can add up to 1000 domains per request.</p>
    # @option params [String] :firewall_domain_list_id
    #   <p>The ID of the DNS Firewall domain list to which you want to add the domains.</p>
    # @option params [String] :operation
    #   <p>The operation for updating the domain list. The allowed values are ADD, REMOVE, and REPLACE.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domains: ["Domain"], # required
    #     firewall_domain_list_id: "ResourceId", # required
    #     operation: "String", # required
    #   }
    #   options = {}
    #   response = client.update_firewall_domains(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ResourceId", # required
    #     name: "ResourceName", # required
    #     status: "CREATING" # One of: ["CREATING", "OPERATIONAL", "UPDATING", "DELETING"], # required
    #   }
    # @return [Types::UpdateFirewallDomainsOutput]
    def update_firewall_domains(params = {}, options = {})
      request = build_request(:update_firewall_domains, params)
      request.send_request(options)
    end

    # <p>Updates the configuration of a DNS firewall rule.</p> <important> <p>Route 53 Global Resolver is a global service that supports resolvers in multiple Amazon Web Services Regions but you must specify the US East (Ohio) Region to create, update, or otherwise work with Route 53 Global Resolver resources. That is, for example, specify <code>--region us-east-2</code> on Amazon Web Services CLI commands.</p> </important>
    # @param [Hash, Types::UpdateFirewallRuleInput] params
    # @option params [String] :action
    #   <p>The action that DNS Firewall should take on a DNS query when it matches one of the domains in the rule's domain list, or a threat in a DNS Firewall Advanced rule.</p>
    # @option params [String] :block_override_dns_type
    #   <p>The DNS record's type. This determines the format of the record value that you provided in <code>BlockOverrideDomain</code>. Used for the rule action <code>BLOCK</code> with a <code>BlockResponse</code> setting of <code>OVERRIDE</code>.</p>
    # @option params [String] :block_override_domain
    #   <p>The custom DNS record to send back in response to the query. Used for the rule action <code>BLOCK</code> with a <code>BlockResponse</code> setting of <code>OVERRIDE</code>.</p>
    # @option params [Integer] :block_override_ttl
    #   <p>The recommended amount of time, in seconds, for the DNS resolver or web browser to cache the provided override record. Used for the rule action <code>BLOCK</code> with a <code>BlockResponse</code> setting of <code>OVERRIDE</code>.</p>
    # @option params [String] :block_response
    #   <p>The way that you want DNS Firewall to block the request. Used for the rule action setting <code>BLOCK</code>.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure idempotency. This means that making the same request multiple times with the same <code>clientToken</code> has the same result every time.</p>
    # @option params [String] :confidence_threshold
    #   <p>The confidence threshold for DNS Firewall Advanced. You must provide this value when you create a DNS Firewall Advanced rule.</p>
    # @option params [String] :description
    #   <p>The description for the Firewall rule.</p>
    # @option params [String] :dns_advanced_protection
    #   <p>The type of the DNS Firewall Advanced rule. Valid values are DGA, DNS_TUNNELING, and DICTIONARY_DGA.</p>
    # @option params [String] :firewall_rule_id
    #   <p>The ID of the DNS Firewall rule.</p>
    # @option params [String] :name
    #   <p>The name of the DNS Firewall rule.</p>
    # @option params [Integer] :priority
    #   <p>The setting that determines the processing order of the rule in the rule group. DNS Firewall processes the rules in a rule group by order of priority, starting from the lowest setting.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     action: "ALLOW" # One of: ["ALLOW", "ALERT", "BLOCK"],
    #     block_override_dns_type: "CNAME" # One of: ["CNAME"],
    #     block_override_domain: "Domain",
    #     block_override_ttl: 1,
    #     block_response: "NODATA" # One of: ["NODATA", "NXDOMAIN", "OVERRIDE"],
    #     client_token: "ClientToken", # required
    #     confidence_threshold: "LOW" # One of: ["LOW", "MEDIUM", "HIGH"],
    #     description: "ResourceDescription",
    #     dns_advanced_protection: "DGA" # One of: ["DGA", "DNS_TUNNELING", "DICTIONARY_DGA"],
    #     firewall_rule_id: "ResourceId", # required
    #     name: "ResourceName",
    #     priority: 1
    #   }
    #   options = {}
    #   response = client.update_firewall_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     action: "ALLOW" # One of: ["ALLOW", "ALERT", "BLOCK"], # required
    #     block_override_dns_type: "CNAME" # One of: ["CNAME"],
    #     block_override_domain: "Domain",
    #     block_override_ttl: 1,
    #     block_response: "NODATA" # One of: ["NODATA", "NXDOMAIN", "OVERRIDE"],
    #     confidence_threshold: "LOW" # One of: ["LOW", "MEDIUM", "HIGH"],
    #     created_at: Time.now, # required
    #     description: "ResourceDescription",
    #     dns_advanced_protection: "DGA" # One of: ["DGA", "DNS_TUNNELING", "DICTIONARY_DGA"],
    #     firewall_domain_list_id: "ResourceId",
    #     id: "ResourceId", # required
    #     name: "ResourceName", # required
    #     priority: 1, # required
    #     dns_view_id: "ResourceId", # required
    #     query_type: "DnsQueryType",
    #     status: "CREATING" # One of: ["CREATING", "OPERATIONAL", "UPDATING", "DELETING"], # required
    #     updated_at: Time.now, # required
    #   }
    # @return [Types::UpdateFirewallRuleOutput]
    def update_firewall_rule(params = {}, options = {})
      request = build_request(:update_firewall_rule, params)
      request.send_request(options)
    end

    # <p>Updates the configuration of a Route 53 Global Resolver instance. You can modify the name, description, and observability Region.</p> <important> <p>Route 53 Global Resolver is a global service that supports resolvers in multiple Amazon Web Services Regions but you must specify the US East (Ohio) Region to create, update, or otherwise work with Route 53 Global Resolver resources. That is, for example, specify <code>--region us-east-2</code> on Amazon Web Services CLI commands.</p> </important>
    # @param [Hash, Types::UpdateGlobalResolverInput] params
    # @option params [String] :global_resolver_id
    #   <p>The ID of the Global Resolver.</p>
    # @option params [String] :name
    #   <p>The name of the Global Resolver.</p>
    # @option params [String] :observability_region
    #   <p>The Amazon Web Services Regions in which the users' Global Resolver query resolution logs will be propagated.</p>
    # @option params [String] :description
    #   <p>The description of the Global Resolver.</p>
    # @option params [String] :ip_address_type
    #   <p>The IP address type for the Global Resolver. Valid values are IPV4 or DUAL_STACK for both IPv4 and IPv6 support.</p>
    # @option params [Array<String>] :regions
    #   <p>The list of Amazon Web Services Regions where the Global Resolver will operate. The resolver will be distributed across these Regions to provide global availability and low-latency DNS resolution.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     global_resolver_id: "ResourceId", # required
    #     name: "ResourceName",
    #     observability_region: "Region",
    #     description: "ResourceDescription",
    #     ip_address_type: "IPV4" # One of: ["IPV4", "DUAL_STACK"],
    #     regions: ["Region"]
    #   }
    #   options = {}
    #   response = client.update_global_resolver(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ResourceId", # required
    #     arn: "ResourceArn", # required
    #     client_token: "ClientToken", # required
    #     dns_name: "Sni", # required
    #     observability_region: "Region",
    #     name: "ResourceName", # required
    #     description: "ResourceDescription",
    #     regions: ["Region"], # required
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #     status: "CREATING" # One of: ["CREATING", "OPERATIONAL", "UPDATING", "DELETING"], # required
    #     ipv4_addresses: ["IPv4Address"], # required
    #     ipv6_addresses: ["IPv6Address"],
    #     ip_address_type: "IPV4" # One of: ["IPV4", "DUAL_STACK"]
    #   }
    # @return [Types::UpdateGlobalResolverOutput]
    def update_global_resolver(params = {}, options = {})
      request = build_request(:update_global_resolver, params)
      request.send_request(options)
    end

    # <p>Updates the configuration of a hosted zone association.</p> <important> <p>Route 53 Global Resolver is a global service that supports resolvers in multiple Amazon Web Services Regions but you must specify the US East (Ohio) Region to create, update, or otherwise work with Route 53 Global Resolver resources. That is, for example, specify <code>--region us-east-2</code> on Amazon Web Services CLI commands.</p> </important>
    # @param [Hash, Types::UpdateHostedZoneAssociationInput] params
    # @option params [String] :hosted_zone_association_id
    #   <p>The ID of the private hosted zone association.</p>
    # @option params [String] :name
    #   <p>The name you want to update the hosted zone association to.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     hosted_zone_association_id: "ResourceId", # required
    #     name: "ResourceName"
    #   }
    #   options = {}
    #   response = client.update_hosted_zone_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ResourceId", # required
    #     resource_arn: "ResourceArn", # required
    #     hosted_zone_id: "HostedZoneId", # required
    #     hosted_zone_name: "HostedZoneName", # required
    #     name: "ResourceName", # required
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #     status: "CREATING" # One of: ["CREATING", "OPERATIONAL", "DELETING"], # required
    #   }
    # @return [Types::UpdateHostedZoneAssociationOutput]
    def update_hosted_zone_association(params = {}, options = {})
      request = build_request(:update_hosted_zone_association, params)
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
      context[:gem_name] = 'aws-sdk-route53globalresolver'
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
