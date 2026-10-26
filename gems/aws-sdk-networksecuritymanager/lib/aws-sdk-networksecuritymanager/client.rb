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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:networksecuritymanager)

module Aws::NetworkSecurityManager
  # An API client for Aws::NetworkSecurityManager.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::PiccoloCustomerAPIService
    @identifier = :networksecuritymanager

    add_plugin(::Aws::NetworkSecurityManager::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::NetworkSecurityManager::EndpointProvider)
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

    # <p>Creates a deployment. A deployment applies one or more policies to the accounts and resources selected by a scope. Use <code>isPublished</code> to create the deployment in published (<code>ACTIVE</code>) or draft (<code>DRAFT</code>) state. The response includes coverage information and any warnings about the deployment.</p>
    # @param [Hash, Types::CreateDeploymentInput] params
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive token that you provide to ensure that the operation completes no more than one time. If you retry a request with the same client token and the same parameters, the service returns the result of the original successful request.</p>
    # @option params [String] :deployment_name
    #   <p>The name of the deployment.</p>
    # @option params [String] :deployment_description
    #   <p>A description of the deployment.</p>
    # @option params [Types::DeploymentConfiguration] :deployment_configuration
    #   <p>The configuration settings for the deployment.</p>
    # @option params [Array<Types::PolicyReference>] :associated_policy_list
    #   <p>The policies associated with the deployment.</p>
    # @option params [Array<Types::ScopeReference>] :associated_scope_list
    #   <p>The scope associated with the deployment. A deployment has exactly one scope.</p>
    # @option params [Boolean] :is_published
    #   <p>Specifies whether to publish the resource. When <code>true</code>, the resource is saved in published (<code>ACTIVE</code>) state. When <code>false</code>, it is saved as a draft (<code>DRAFT</code>). Default: <code>true</code>.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to add to the resource when it is created.</p>
    # @example Create a deployment
    #   # Creates a new deployment in draft state.
    #   params = {
    #     client_token: "550e8400-e29b-41d4-a716-446655440003",
    #     deployment_name: "prod-us-east-1-deployment",
    #     deployment_description: "Production deployment for US East 1 region",
    #     associated_policy_list: [
    #       {
    #         policy_identifier: "arn:aws:network-security-manager:us-east-1:123456789012:policy:xyz789"
    #       }
    #     ],
    #     associated_scope_list: [
    #       {
    #         scope_identifier: "arn:aws:network-security-manager:us-east-1:123456789012:scope:abc123"
    #       }
    #     ],
    #     deployment_configuration: {
    #       enable_cross_account_visibility: false
    #     },
    #     is_published: false
    #   }
    #   options = {}
    #   response = client.create_deployment(params, options)
    #   response.to_h #=>
    #   {
    #     deployment_id: "def456",
    #     deployment_arn: "arn:aws:network-security-manager:us-east-1:123456789012:deployment:def456",
    #     deployment_name: "prod-us-east-1-deployment",
    #     deployment_description: "Production deployment for US East 1 region",
    #     status: DRAFT,
    #     deployment_configuration: {
    #       enable_cross_account_visibility: false
    #     },
    #     associated_policy_list: [
    #       {
    #         policy_arn: "arn:aws:network-security-manager:us-east-1:123456789012:policy:xyz789"
    #       }
    #     ],
    #     associated_scope_list: [
    #       {
    #         scope_arn: "arn:aws:network-security-manager:us-east-1:123456789012:scope:abc123"
    #       }
    #     ],
    #     version: "1",
    #     update_token: "f4a5b6c7-7d8e-4f9a-8b1c-1d2e3f4a5b6c",
    #     is_snapshot: false,
    #     has_published_version: false
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "IdempotencyToken",
    #     deployment_name: "DeploymentName", # required
    #     deployment_description: "Description",
    #     deployment_configuration: { # required
    #       enable_cross_account_visibility: false, # required
    #     },
    #     associated_policy_list: [ # required
    #       {
    #         policy_identifier: "PolicyIdentifier", # required
    #       }
    #     ],
    #     associated_scope_list: [ # required
    #       {
    #         scope_identifier: "ScopeIdentifier", # required
    #       }
    #     ],
    #     is_published: false,
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_deployment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     deployment_id: "DeploymentId", # required
    #     deployment_arn: "DeploymentArn", # required
    #     deployment_name: "DeploymentName", # required
    #     deployment_description: "Description",
    #     status: "DRAFT" # One of: ["DRAFT", "ACTIVE", "DISABLED"], # required
    #     deployment_configuration: {
    #       enable_cross_account_visibility: false, # required
    #     },
    #     associated_policy_list: [ # required
    #       {
    #         policy_arn: "PolicyArn", # required
    #       }
    #     ],
    #     associated_scope_list: [ # required
    #       {
    #         scope_arn: "ScopeArn", # required
    #       }
    #     ],
    #     version: "EntityVersion", # required
    #     update_token: "UpdateToken",
    #     is_snapshot: false,
    #     has_published_version: false,
    #     deployment_coverage: [
    #       {
    #         firewall_type: "WAF" # One of: ["WAF", "SHIELD_ADVANCED"], # required
    #         policy_arns: ["PolicyArn"], # required
    #         in_scope_resource_types: ["AWS::ApiGateway::Stage" # One of: ["AWS::ApiGateway::Stage", "AWS::CloudFront::Distribution", "AWS::EC2::EIP", "AWS::ElasticLoadBalancingV2::LoadBalancer::application", "AWS::ElasticLoadBalancing::LoadBalancer"]], # required
    #       }
    #     ],
    #     warnings: [
    #       {
    #         code: "String", # required
    #         policy_arn: "PolicyArn", # required
    #         message: "String", # required
    #       }
    #     ],
    #     updated_at: Time.now
    #   }
    # @return [Types::CreateDeploymentOutput]
    def create_deployment(params = {}, options = {})
      request = build_request(:create_deployment, params)
      request.send_request(options)
    end

    # <p>Creates a snapshot of the current published version of the specified deployment.</p>
    # @param [Hash, Types::CreateDeploymentSnapshotInput] params
    # @option params [String] :deployment_identifier
    #   <p>The identifier of the deployment. This is the deployment's Amazon Resource Name (ARN).</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive token that you provide to ensure that the operation completes no more than one time. If you retry a request with the same client token and the same parameters, the service returns the result of the original successful request.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to add to the snapshot when it is created.</p>
    # @example Create a deployment snapshot
    #   # Creates an immutable snapshot of the current published version of a deployment. The snapshot is addressable by a version-qualified ARN.
    #   params = {
    #     deployment_identifier: "arn:aws:network-security-manager:us-east-1:123456789012:deployment:def456",
    #     client_token: "550e8400-e29b-41d4-a716-446655440014"
    #   }
    #   options = {}
    #   response = client.create_deployment_snapshot(params, options)
    #   response.to_h #=>
    #   {
    #     deployment_id: "def456",
    #     deployment_arn: "arn:aws:network-security-manager:us-east-1:123456789012:deployment:def456:2",
    #     deployment_name: "prod-us-east-1-deployment",
    #     status: ACTIVE,
    #     deployment_configuration: {
    #       enable_cross_account_visibility: true
    #     },
    #     associated_policy_list: [
    #       {
    #         policy_arn: "arn:aws:network-security-manager:us-east-1:123456789012:policy:xyz789"
    #       }
    #     ],
    #     associated_scope_list: [
    #       {
    #         scope_arn: "arn:aws:network-security-manager:us-east-1:123456789012:scope:abc123"
    #       }
    #     ],
    #     version: "2",
    #     is_snapshot: true,
    #     updated_at: Time.parse("2026-08-20T12:00:00Z")
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     deployment_identifier: "DeploymentIdentifier", # required
    #     client_token: "IdempotencyToken",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_deployment_snapshot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     deployment_id: "DeploymentId", # required
    #     deployment_arn: "DeploymentArn", # required
    #     deployment_name: "DeploymentName", # required
    #     deployment_description: "Description",
    #     status: "DRAFT" # One of: ["DRAFT", "ACTIVE", "DISABLED"], # required
    #     deployment_configuration: {
    #       enable_cross_account_visibility: false, # required
    #     },
    #     associated_policy_list: [ # required
    #       {
    #         policy_arn: "PolicyArn", # required
    #       }
    #     ],
    #     associated_scope_list: [ # required
    #       {
    #         scope_arn: "ScopeArn", # required
    #       }
    #     ],
    #     version: "EntityVersion", # required
    #     update_token: "UpdateToken",
    #     is_snapshot: false,
    #     has_published_version: false,
    #     updated_at: Time.now
    #   }
    # @return [Types::CreateDeploymentSnapshotOutput]
    def create_deployment_snapshot(params = {}, options = {})
      request = build_request(:create_deployment_snapshot, params)
      request.send_request(options)
    end

    # <p>Creates a policy. A policy combines templates and rules with enforcement settings for a firewall type, such as AWS WAF or AWS Shield Advanced. Use <code>isPublished</code> to create the policy in published (<code>ACTIVE</code>) or draft (<code>DRAFT</code>) state.</p>
    # @param [Hash, Types::CreatePolicyInput] params
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive token that you provide to ensure that the operation completes no more than one time. If you retry a request with the same client token and the same parameters, the service returns the result of the original successful request.</p>
    # @option params [String] :policy_name
    #   <p>The name of the policy.</p>
    # @option params [String] :policy_description
    #   <p>A description of the policy.</p>
    # @option params [Integer] :priority
    #   <p>The priority of the resource. A lower number indicates a higher priority.</p>
    # @option params [Array<Types::TemplateOrRuleReference>] :associated_template_and_rule_list
    #   <p>The templates and rules to associate with the policy. For AWS WAF policies, specify 1 to 100 templates or rules, of which at most 2 can be templates. For AWS Shield Advanced policies, this list must be empty.</p>
    # @option params [String] :firewall_type
    #   <p>The firewall type associated with the resource.</p>
    # @option params [Types::PolicyConfiguration] :policy_configuration
    #   <p>The configuration settings that control the policy's behavior, including remediation and firewall-type-specific settings.</p>
    # @option params [Boolean] :is_published
    #   <p>Specifies whether to publish the resource. When <code>true</code>, the resource is saved in published (<code>ACTIVE</code>) state. When <code>false</code>, it is saved as a draft (<code>DRAFT</code>). Default: <code>true</code>.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to add to the resource when it is created.</p>
    # @example Create a WAF policy
    #   # Creates a new WAF policy in draft state with a template association.
    #   params = {
    #     client_token: "550e8400-e29b-41d4-a716-446655440002",
    #     policy_name: "web-app-waf-policy",
    #     policy_description: "WAF policy for web application protection",
    #     firewall_type: WAF,
    #     priority: 1,
    #     associated_template_and_rule_list: [
    #       {
    #     "templateIdentifier" => arn:aws:network-security-manager:us-east-1:123456789012:template:xyz789
    #   }
    #     ],
    #     policy_configuration: {
    #       remediation_enabled: false,
    #       resources_clean_up: false,
    #       waf_config: {
    #         existing_customer_web_acl_resolution: NO_REMEDIATION,
    #         conflict_resolution: MERGE_WHERE_APPLICABLE
    #       }
    #     },
    #     is_published: false
    #   }
    #   options = {}
    #   response = client.create_policy(params, options)
    #   response.to_h #=>
    #   {
    #     policy_id: "xyz789",
    #     policy_arn: "arn:aws:network-security-manager:us-east-1:123456789012:policy:xyz789",
    #     policy_name: "web-app-waf-policy",
    #     policy_description: "WAF policy for web application protection",
    #     status: DRAFT,
    #     priority: 1,
    #     associated_template_and_rule_list: [
    #       {
    #     "templateArn" => arn:aws:network-security-manager:us-east-1:123456789012:template:xyz789
    #   }
    #     ],
    #     version: "1",
    #     update_token: "e3f4a5b6-6c7d-4e8f-9a0b-0c1d2e3f4a5b",
    #     is_snapshot: false,
    #     has_published_version: false,
    #     firewall_type: WAF,
    #     policy_configuration: {
    #       remediation_enabled: false,
    #       resources_clean_up: false,
    #       waf_config: {
    #         existing_customer_web_acl_resolution: NO_REMEDIATION,
    #         conflict_resolution: MERGE_WHERE_APPLICABLE
    #       }
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "IdempotencyToken",
    #     policy_name: "PolicyName", # required
    #     policy_description: "Description",
    #     priority: 1, # required
    #     associated_template_and_rule_list: [{
    #       # One of:
    #       template_identifier: "TemplateIdentifier",
    #       rule_identifier: "RuleIdentifier"
    #     }],
    #     firewall_type: "WAF" # One of: ["WAF", "SHIELD_ADVANCED"], # required
    #     policy_configuration: { # required
    #       remediation_enabled: false, # required
    #       resources_clean_up: false, # required
    #       waf_config: {
    #         existing_customer_web_acl_resolution: "RETROFIT" # One of: ["RETROFIT", "OVERRIDE_ASSOCIATION", "NO_REMEDIATION"], # required
    #         conflict_resolution: "MERGE_WHERE_APPLICABLE" # One of: ["MERGE_WHERE_APPLICABLE"], # required
    #       }
    #     },
    #     is_published: false,
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy_id: "PolicyId", # required
    #     policy_arn: "PolicyArn", # required
    #     policy_name: "PolicyName", # required
    #     policy_description: "Description",
    #     status: "DRAFT" # One of: ["DRAFT", "ACTIVE", "DISABLED"], # required
    #     priority: 1, # required
    #     associated_template_and_rule_list: [{ # required
    #       # One of:
    #       template_arn: "TemplateArn",
    #       rule_arn: "RuleArn"
    #     }],
    #     version: "EntityVersion", # required
    #     update_token: "UpdateToken",
    #     is_snapshot: false,
    #     has_published_version: false,
    #     firewall_type: "WAF" # One of: ["WAF", "SHIELD_ADVANCED"], # required
    #     policy_configuration: {
    #       remediation_enabled: false, # required
    #       resources_clean_up: false, # required
    #       waf_config: {
    #         existing_customer_web_acl_resolution: "RETROFIT" # One of: ["RETROFIT", "OVERRIDE_ASSOCIATION", "NO_REMEDIATION"], # required
    #         conflict_resolution: "MERGE_WHERE_APPLICABLE" # One of: ["MERGE_WHERE_APPLICABLE"], # required
    #       }
    #     },
    #     updated_at: Time.now
    #   }
    # @return [Types::CreatePolicyOutput]
    def create_policy(params = {}, options = {})
      request = build_request(:create_policy, params)
      request.send_request(options)
    end

    # <p>Creates a snapshot of the current published version of the specified policy.</p>
    # @param [Hash, Types::CreatePolicySnapshotInput] params
    # @option params [String] :policy_identifier
    #   <p>The identifier of the policy. This is the policy's Amazon Resource Name (ARN).</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive token that you provide to ensure that the operation completes no more than one time. If you retry a request with the same client token and the same parameters, the service returns the result of the original successful request.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to add to the snapshot when it is created.</p>
    # @example Create a policy snapshot
    #   # Creates an immutable snapshot of the current published version of a policy. The snapshot is addressable by a version-qualified ARN.
    #   params = {
    #     policy_identifier: "arn:aws:network-security-manager:us-east-1:123456789012:policy:xyz789",
    #     client_token: "550e8400-e29b-41d4-a716-446655440013"
    #   }
    #   options = {}
    #   response = client.create_policy_snapshot(params, options)
    #   response.to_h #=>
    #   {
    #     policy_id: "xyz789",
    #     policy_arn: "arn:aws:network-security-manager:us-east-1:123456789012:policy:xyz789:2",
    #     policy_name: "web-app-waf-policy",
    #     status: ACTIVE,
    #     priority: 2,
    #     associated_template_and_rule_list: [
    #       {
    #     "templateArn" => arn:aws:network-security-manager:us-east-1:123456789012:template:xyz789
    #   }
    #     ],
    #     version: "2",
    #     is_snapshot: true,
    #     firewall_type: WAF,
    #     policy_configuration: {
    #       remediation_enabled: true,
    #       resources_clean_up: false,
    #       waf_config: {
    #         existing_customer_web_acl_resolution: NO_REMEDIATION,
    #         conflict_resolution: MERGE_WHERE_APPLICABLE
    #       }
    #     },
    #     updated_at: Time.parse("2026-08-20T12:00:00Z")
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_identifier: "PolicyIdentifier", # required
    #     client_token: "IdempotencyToken",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_policy_snapshot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy_id: "PolicyId", # required
    #     policy_arn: "PolicyArn", # required
    #     policy_name: "PolicyName", # required
    #     policy_description: "Description",
    #     status: "DRAFT" # One of: ["DRAFT", "ACTIVE", "DISABLED"], # required
    #     priority: 1, # required
    #     associated_template_and_rule_list: [{ # required
    #       # One of:
    #       template_arn: "TemplateArn",
    #       rule_arn: "RuleArn"
    #     }],
    #     version: "EntityVersion", # required
    #     update_token: "UpdateToken",
    #     is_snapshot: false,
    #     has_published_version: false,
    #     firewall_type: "WAF" # One of: ["WAF", "SHIELD_ADVANCED"], # required
    #     policy_configuration: {
    #       remediation_enabled: false, # required
    #       resources_clean_up: false, # required
    #       waf_config: {
    #         existing_customer_web_acl_resolution: "RETROFIT" # One of: ["RETROFIT", "OVERRIDE_ASSOCIATION", "NO_REMEDIATION"], # required
    #         conflict_resolution: "MERGE_WHERE_APPLICABLE" # One of: ["MERGE_WHERE_APPLICABLE"], # required
    #       }
    #     },
    #     updated_at: Time.now
    #   }
    # @return [Types::CreatePolicySnapshotOutput]
    def create_policy_snapshot(params = {}, options = {})
      request = build_request(:create_policy_snapshot, params)
      request.send_request(options)
    end

    # <p>Creates a rule. A rule defines a network security configuration to enforce, such as an AWS WAF rule group or configuration data. Use <code>isPublished</code> to create the rule in published (<code>ACTIVE</code>) or draft (<code>DRAFT</code>) state.</p>
    # @param [Hash, Types::CreateRuleInput] params
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive token that you provide to ensure that the operation completes no more than one time. If you retry a request with the same client token and the same parameters, the service returns the result of the original successful request.</p>
    # @option params [String] :rule_name
    #   <p>The name of the rule.</p>
    # @option params [String] :firewall_type
    #   <p>The firewall type associated with the resource.</p>
    # @option params [String] :rule_type
    #   <p>The type of the rule. <code>CONFIGURATION</code> rules contain firewall settings, and <code>INSPECTION</code> rules contain rule groups.</p>
    # @option params [String] :rule_description
    #   <p>A description of the rule.</p>
    # @option params [JSON] :configuration
    #   <p>The firewall configuration for the rule, as a JSON document. The structure depends on the rule's firewall type and rule type. For an AWS WAF <code>INSPECTION</code> rule, provide an AWS WAF rule group. For an AWS WAF <code>CONFIGURATION</code> rule, provide a single web ACL setting, such as <code>DefaultAction</code> or <code>VisibilityConfig</code>; use <code>wafConfigDataType</code> to declare which setting the document contains. For the schema of each setting and complete examples, see <a href="https://docs.aws.amazon.com/network-security-manager/latest/devguide/what-is.html">Writing rule configurations</a> in the <i>AWS Network Security Manager Developer Guide</i>.</p>
    # @option params [Boolean] :is_published
    #   <p>Specifies whether to publish the resource. When <code>true</code>, the resource is saved in published (<code>ACTIVE</code>) state. When <code>false</code>, it is saved as a draft (<code>DRAFT</code>). Default: <code>true</code>.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to add to the resource when it is created.</p>
    # @example Create a WAF rule
    #   # Creates a new WAF inspection rule in draft state.
    #   params = {
    #     client_token: "550e8400-e29b-41d4-a716-446655440000",
    #     rule_name: "block-known-bad-ips",
    #     firewall_type: WAF,
    #     rule_type: INSPECTION,
    #     rule_description: "Blocks requests from known malicious IP addresses",
    #     configuration: {},
    #     is_published: false
    #   }
    #   options = {}
    #   response = client.create_rule(params, options)
    #   response.to_h #=>
    #   {
    #     rule_id: "abc123",
    #     rule_arn: "arn:aws:network-security-manager:us-east-1:123456789012:rule:abc123",
    #     rule_name: "block-known-bad-ips",
    #     firewall_type: WAF,
    #     rule_type: INSPECTION,
    #     rule_description: "Blocks requests from known malicious IP addresses",
    #     configuration: {},
    #     status: DRAFT,
    #     version: "1",
    #     update_token: "c1d2e3f4-4a5b-4c6d-9e7f-8a9b0c1d2e3f",
    #     is_snapshot: false,
    #     has_published_version: false
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "IdempotencyToken",
    #     rule_name: "RuleName", # required
    #     firewall_type: "WAF" # One of: ["WAF"], # required
    #     rule_type: "CONFIGURATION" # One of: ["CONFIGURATION", "INSPECTION"], # required
    #     rule_description: "Description",
    #     configuration: ""null"", # required
    #     is_published: false,
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rule_id: "RuleId", # required
    #     rule_arn: "RuleArn", # required
    #     rule_name: "RuleName", # required
    #     firewall_type: "WAF" # One of: ["WAF"], # required
    #     rule_type: "CONFIGURATION" # One of: ["CONFIGURATION", "INSPECTION"],
    #     rule_description: "Description",
    #     configuration: ""null"", # required
    #     status: "DRAFT" # One of: ["DRAFT", "ACTIVE", "DISABLED"], # required
    #     version: "EntityVersion", # required
    #     update_token: "UpdateToken",
    #     is_snapshot: false,
    #     has_published_version: false,
    #     updated_at: Time.now
    #   }
    # @return [Types::CreateRuleOutput]
    def create_rule(params = {}, options = {})
      request = build_request(:create_rule, params)
      request.send_request(options)
    end

    # <p>Creates a snapshot of the current published version of the specified rule. A snapshot is an immutable, versioned copy that other resources can reference.</p>
    # @param [Hash, Types::CreateRuleSnapshotInput] params
    # @option params [String] :rule_identifier
    #   <p>The identifier of the rule. This is the rule's Amazon Resource Name (ARN).</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive token that you provide to ensure that the operation completes no more than one time. If you retry a request with the same client token and the same parameters, the service returns the result of the original successful request.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to add to the snapshot when it is created.</p>
    # @example Create a rule snapshot
    #   # Creates an immutable snapshot of the current published version of a rule. The snapshot is addressable by a version-qualified ARN.
    #   params = {
    #     rule_identifier: "arn:aws:network-security-manager:us-east-1:123456789012:rule:abc123",
    #     client_token: "550e8400-e29b-41d4-a716-446655440011"
    #   }
    #   options = {}
    #   response = client.create_rule_snapshot(params, options)
    #   response.to_h #=>
    #   {
    #     rule_id: "abc123",
    #     rule_arn: "arn:aws:network-security-manager:us-east-1:123456789012:rule:abc123:2",
    #     rule_name: "block-known-bad-ips",
    #     firewall_type: WAF,
    #     rule_type: INSPECTION,
    #     configuration: {},
    #     status: ACTIVE,
    #     version: "2",
    #     is_snapshot: true,
    #     updated_at: Time.parse("2026-08-20T12:00:00Z")
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     rule_identifier: "RuleIdentifier", # required
    #     client_token: "IdempotencyToken",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_rule_snapshot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rule_id: "RuleId", # required
    #     rule_arn: "RuleArn", # required
    #     rule_name: "RuleName", # required
    #     firewall_type: "WAF" # One of: ["WAF"], # required
    #     rule_type: "CONFIGURATION" # One of: ["CONFIGURATION", "INSPECTION"],
    #     rule_description: "Description",
    #     configuration: ""null"", # required
    #     status: "DRAFT" # One of: ["DRAFT", "ACTIVE", "DISABLED"], # required
    #     version: "EntityVersion", # required
    #     update_token: "UpdateToken",
    #     is_snapshot: false,
    #     has_published_version: false,
    #     updated_at: Time.now
    #   }
    # @return [Types::CreateRuleSnapshotOutput]
    def create_rule_snapshot(params = {}, options = {})
      request = build_request(:create_rule_snapshot, params)
      request.send_request(options)
    end

    # <p>Creates a scope. A scope selects the accounts and resources that a deployment applies to. Use <code>isPublished</code> to create the scope in published (<code>ACTIVE</code>) or draft (<code>DRAFT</code>) state.</p>
    # @param [Hash, Types::CreateScopeInput] params
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive token that you provide to ensure that the operation completes no more than one time. If you retry a request with the same client token and the same parameters, the service returns the result of the original successful request.</p>
    # @option params [String] :scope_name
    #   <p>The name of the scope.</p>
    # @option params [String] :scope_description
    #   <p>A description of the scope.</p>
    # @option params [Types::ScopeConfiguration] :scope_configuration
    #   <p>The configuration that defines which accounts and resources are in scope.</p>
    # @option params [Boolean] :is_published
    #   <p>Specifies whether to publish the resource. When <code>true</code>, the resource is saved in published (<code>ACTIVE</code>) state. When <code>false</code>, it is saved as a draft (<code>DRAFT</code>). Default: <code>true</code>.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to add to the resource when it is created.</p>
    # @example Create a scope
    #   # Creates a new scope in published (ACTIVE) state.
    #   params = {
    #     client_token: "550e8400-e29b-41d4-a716-446655440001",
    #     scope_name: "production-web-apps",
    #     scope_description: "Scope covering all production web application resources",
    #     scope_configuration: {
    #       account_filter: {
    #     "includeAll" => {}
    #   },
    #       resource_scopes: {
    #       }
    #     },
    #     is_published: true
    #   }
    #   options = {}
    #   response = client.create_scope(params, options)
    #   response.to_h #=>
    #   {
    #     scope_id: "abc123",
    #     scope_arn: "arn:aws:network-security-manager:us-east-1:123456789012:scope:abc123",
    #     scope_name: "production-web-apps",
    #     scope_description: "Scope covering all production web application resources",
    #     scope_configuration: {
    #       account_filter: {
    #     "includeAll" => {}
    #   },
    #       resource_scopes: {
    #       }
    #     },
    #     status: ACTIVE,
    #     version: "1",
    #     update_token: "b0c4d1e2-3f4a-4b5c-8d6e-7f8a9b0c1d2e",
    #     is_snapshot: false,
    #     has_published_version: true
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "IdempotencyToken",
    #     scope_name: "ScopeName", # required
    #     scope_description: "Description",
    #     scope_configuration: { # required
    #       account_filter: {
    #         # One of:
    #         include_all: {
    #         },
    #         include: {
    #           account_ids: ["AccountId"],
    #           organizational_units: ["OrganizationalUnit"]
    #         },
    #         exclude: {
    #           account_ids: ["AccountId"],
    #           organizational_units: ["OrganizationalUnit"]
    #         }
    #       },
    #       resource_scopes: { # required
    #         "ScopeResourceType" => {
    #           include_all: false,
    #           include: {
    #             explicit_arns: ["Arn"],
    #             expression: {
    #               # One of:
    #               criteria: {
    #                 # One of:
    #                 tags: {
    #                   "String" => "String"
    #                 },
    #                 alb_config: {
    #                   scheme: "internet-facing" # One of: ["internet-facing", "internal"],
    #                   ip_address_type: "ipv4" # One of: ["ipv4", "dualstack", "dualstack-without-public-ipv4"]
    #                 }
    #               },
    #               and: [{
    #                 # recursive ResourceLogicalExpression
    #               }],
    #               or: [{
    #                 # recursive ResourceLogicalExpression
    #               }],
    #               not: {
    #                 # recursive ResourceLogicalExpression
    #               }
    #             }
    #           },
    #           exclude: {
    #             explicit_arns: ["Arn"],
    #             expression: {
    #               # One of:
    #               criteria: {
    #                 # One of:
    #                 tags: {
    #                   "String" => "String"
    #                 },
    #                 alb_config: {
    #                   scheme: "internet-facing" # One of: ["internet-facing", "internal"],
    #                   ip_address_type: "ipv4" # One of: ["ipv4", "dualstack", "dualstack-without-public-ipv4"]
    #                 }
    #               },
    #               and: [{
    #                 # recursive ResourceLogicalExpression
    #               }],
    #               or: [{
    #                 # recursive ResourceLogicalExpression
    #               }],
    #               not: {
    #                 # recursive ResourceLogicalExpression
    #               }
    #             }
    #           }
    #         }
    #       }
    #     },
    #     is_published: false,
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_scope(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     scope_id: "ScopeId", # required
    #     scope_arn: "ScopeArn", # required
    #     scope_name: "ScopeName", # required
    #     scope_description: "Description",
    #     scope_configuration: {
    #       account_filter: {
    #         # One of:
    #         include_all: {
    #         },
    #         include: {
    #           account_ids: ["AccountId"],
    #           organizational_units: ["OrganizationalUnit"]
    #         },
    #         exclude: {
    #           account_ids: ["AccountId"],
    #           organizational_units: ["OrganizationalUnit"]
    #         }
    #       },
    #       resource_scopes: { # required
    #         "ScopeResourceType" => {
    #           include_all: false,
    #           include: {
    #             explicit_arns: ["Arn"],
    #             expression: {
    #               # One of:
    #               criteria: {
    #                 # One of:
    #                 tags: {
    #                   "String" => "String"
    #                 },
    #                 alb_config: {
    #                   scheme: "internet-facing" # One of: ["internet-facing", "internal"],
    #                   ip_address_type: "ipv4" # One of: ["ipv4", "dualstack", "dualstack-without-public-ipv4"]
    #                 }
    #               },
    #               and: [{
    #                 # recursive ResourceLogicalExpression
    #               }],
    #               or: [{
    #                 # recursive ResourceLogicalExpression
    #               }],
    #               not: {
    #                 # recursive ResourceLogicalExpression
    #               }
    #             }
    #           },
    #           exclude: {
    #             explicit_arns: ["Arn"],
    #             expression: {
    #               # One of:
    #               criteria: {
    #                 # One of:
    #                 tags: {
    #                   "String" => "String"
    #                 },
    #                 alb_config: {
    #                   scheme: "internet-facing" # One of: ["internet-facing", "internal"],
    #                   ip_address_type: "ipv4" # One of: ["ipv4", "dualstack", "dualstack-without-public-ipv4"]
    #                 }
    #               },
    #               and: [{
    #                 # recursive ResourceLogicalExpression
    #               }],
    #               or: [{
    #                 # recursive ResourceLogicalExpression
    #               }],
    #               not: {
    #                 # recursive ResourceLogicalExpression
    #               }
    #             }
    #           }
    #         }
    #       }
    #     },
    #     status: "DRAFT" # One of: ["DRAFT", "ACTIVE", "DISABLED"], # required
    #     version: "EntityVersion", # required
    #     update_token: "UpdateToken",
    #     is_snapshot: false,
    #     has_published_version: false,
    #     updated_at: Time.now
    #   }
    # @return [Types::CreateScopeOutput]
    def create_scope(params = {}, options = {})
      request = build_request(:create_scope, params)
      request.send_request(options)
    end

    # <p>Creates a snapshot of the current published version of the specified scope.</p>
    # @param [Hash, Types::CreateScopeSnapshotInput] params
    # @option params [String] :scope_identifier
    #   <p>The identifier of the scope. This is the scope's Amazon Resource Name (ARN).</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive token that you provide to ensure that the operation completes no more than one time. If you retry a request with the same client token and the same parameters, the service returns the result of the original successful request.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to add to the snapshot when it is created.</p>
    # @example Create a scope snapshot
    #   # Creates an immutable snapshot of the current published version of a scope. The snapshot is addressable by a version-qualified ARN.
    #   params = {
    #     scope_identifier: "arn:aws:network-security-manager:us-east-1:123456789012:scope:abc123",
    #     client_token: "550e8400-e29b-41d4-a716-446655440010"
    #   }
    #   options = {}
    #   response = client.create_scope_snapshot(params, options)
    #   response.to_h #=>
    #   {
    #     scope_id: "abc123",
    #     scope_arn: "arn:aws:network-security-manager:us-east-1:123456789012:scope:abc123:2",
    #     scope_name: "production-web-apps",
    #     scope_configuration: {
    #       account_filter: {
    #     "includeAll" => {}
    #   },
    #       resource_scopes: {
    #       }
    #     },
    #     status: ACTIVE,
    #     version: "2",
    #     is_snapshot: true,
    #     updated_at: Time.parse("2026-08-20T12:00:00Z")
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     scope_identifier: "ScopeIdentifier", # required
    #     client_token: "IdempotencyToken",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_scope_snapshot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     scope_id: "ScopeId", # required
    #     scope_arn: "ScopeArn", # required
    #     scope_name: "ScopeName", # required
    #     scope_description: "Description",
    #     scope_configuration: {
    #       account_filter: {
    #         # One of:
    #         include_all: {
    #         },
    #         include: {
    #           account_ids: ["AccountId"],
    #           organizational_units: ["OrganizationalUnit"]
    #         },
    #         exclude: {
    #           account_ids: ["AccountId"],
    #           organizational_units: ["OrganizationalUnit"]
    #         }
    #       },
    #       resource_scopes: { # required
    #         "ScopeResourceType" => {
    #           include_all: false,
    #           include: {
    #             explicit_arns: ["Arn"],
    #             expression: {
    #               # One of:
    #               criteria: {
    #                 # One of:
    #                 tags: {
    #                   "String" => "String"
    #                 },
    #                 alb_config: {
    #                   scheme: "internet-facing" # One of: ["internet-facing", "internal"],
    #                   ip_address_type: "ipv4" # One of: ["ipv4", "dualstack", "dualstack-without-public-ipv4"]
    #                 }
    #               },
    #               and: [{
    #                 # recursive ResourceLogicalExpression
    #               }],
    #               or: [{
    #                 # recursive ResourceLogicalExpression
    #               }],
    #               not: {
    #                 # recursive ResourceLogicalExpression
    #               }
    #             }
    #           },
    #           exclude: {
    #             explicit_arns: ["Arn"],
    #             expression: {
    #               # One of:
    #               criteria: {
    #                 # One of:
    #                 tags: {
    #                   "String" => "String"
    #                 },
    #                 alb_config: {
    #                   scheme: "internet-facing" # One of: ["internet-facing", "internal"],
    #                   ip_address_type: "ipv4" # One of: ["ipv4", "dualstack", "dualstack-without-public-ipv4"]
    #                 }
    #               },
    #               and: [{
    #                 # recursive ResourceLogicalExpression
    #               }],
    #               or: [{
    #                 # recursive ResourceLogicalExpression
    #               }],
    #               not: {
    #                 # recursive ResourceLogicalExpression
    #               }
    #             }
    #           }
    #         }
    #       }
    #     },
    #     status: "DRAFT" # One of: ["DRAFT", "ACTIVE", "DISABLED"], # required
    #     version: "EntityVersion", # required
    #     update_token: "UpdateToken",
    #     is_snapshot: false,
    #     has_published_version: false,
    #     updated_at: Time.now
    #   }
    # @return [Types::CreateScopeSnapshotOutput]
    def create_scope_snapshot(params = {}, options = {})
      request = build_request(:create_scope_snapshot, params)
      request.send_request(options)
    end

    # <p>Creates a template. A template groups one or more rules to simplify reuse across policies. You can also associate rules with a policy directly, without a template. Use <code>isPublished</code> to create the template in published (<code>ACTIVE</code>) or draft (<code>DRAFT</code>) state.</p>
    # @param [Hash, Types::CreateTemplateInput] params
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive token that you provide to ensure that the operation completes no more than one time. If you retry a request with the same client token and the same parameters, the service returns the result of the original successful request.</p>
    # @option params [String] :template_name
    #   <p>The name of the template.</p>
    # @option params [String] :template_description
    #   <p>A description of the template.</p>
    # @option params [Array<Types::RuleReference>] :associated_rule_list
    #   <p>The rules associated with the template.</p>
    # @option params [String] :firewall_type
    #   <p>The firewall type associated with the resource.</p>
    # @option params [Boolean] :is_published
    #   <p>Specifies whether to publish the resource. When <code>true</code>, the resource is saved in published (<code>ACTIVE</code>) state. When <code>false</code>, it is saved as a draft (<code>DRAFT</code>). Default: <code>true</code>.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to add to the resource when it is created.</p>
    # @example Create a WAF template
    #   # Creates a new WAF template in published (ACTIVE) state with an associated rule.
    #   params = {
    #     client_token: "550e8400-e29b-41d4-a716-446655440004",
    #     template_name: "standard-waf-template",
    #     template_description: "Standard WAF template with baseline rule groups",
    #     firewall_type: WAF,
    #     associated_rule_list: [
    #       {
    #         rule_identifier: "arn:aws:network-security-manager:us-east-1:123456789012:rule:abc123"
    #       }
    #     ],
    #     is_published: true
    #   }
    #   options = {}
    #   response = client.create_template(params, options)
    #   response.to_h #=>
    #   {
    #     template_id: "xyz789",
    #     template_arn: "arn:aws:network-security-manager:us-east-1:123456789012:template:xyz789",
    #     template_name: "standard-waf-template",
    #     template_description: "Standard WAF template with baseline rule groups",
    #     status: ACTIVE,
    #     version: "1",
    #     associated_rule_list: [
    #       {
    #         rule_arn: "arn:aws:network-security-manager:us-east-1:123456789012:rule:abc123"
    #       }
    #     ],
    #     update_token: "d2e3f4a5-5b6c-4d7e-8f9a-9b0c1d2e3f4a",
    #     is_snapshot: false,
    #     has_published_version: true,
    #     firewall_type: WAF
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "IdempotencyToken",
    #     template_name: "TemplateName", # required
    #     template_description: "Description",
    #     associated_rule_list: [ # required
    #       {
    #         rule_identifier: "RuleIdentifier", # required
    #       }
    #     ],
    #     firewall_type: "WAF" # One of: ["WAF"], # required
    #     is_published: false,
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     template_id: "TemplateId", # required
    #     template_arn: "TemplateArn", # required
    #     template_name: "TemplateName", # required
    #     template_description: "Description",
    #     status: "DRAFT" # One of: ["DRAFT", "ACTIVE", "DISABLED"], # required
    #     version: "EntityVersion", # required
    #     associated_rule_list: [ # required
    #       {
    #         rule_arn: "RuleArn", # required
    #       }
    #     ],
    #     update_token: "UpdateToken",
    #     is_snapshot: false,
    #     has_published_version: false,
    #     firewall_type: "WAF" # One of: ["WAF"], # required
    #     updated_at: Time.now
    #   }
    # @return [Types::CreateTemplateOutput]
    def create_template(params = {}, options = {})
      request = build_request(:create_template, params)
      request.send_request(options)
    end

    # <p>Creates a snapshot of the current published version of the specified template.</p>
    # @param [Hash, Types::CreateTemplateSnapshotInput] params
    # @option params [String] :template_identifier
    #   <p>The identifier of the template. This is the template's Amazon Resource Name (ARN).</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive token that you provide to ensure that the operation completes no more than one time. If you retry a request with the same client token and the same parameters, the service returns the result of the original successful request.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to add to the snapshot when it is created.</p>
    # @example Create a template snapshot
    #   # Creates an immutable snapshot of the current published version of a template. The snapshot is addressable by a version-qualified ARN.
    #   params = {
    #     template_identifier: "arn:aws:network-security-manager:us-east-1:123456789012:template:xyz789",
    #     client_token: "550e8400-e29b-41d4-a716-446655440012"
    #   }
    #   options = {}
    #   response = client.create_template_snapshot(params, options)
    #   response.to_h #=>
    #   {
    #     template_id: "xyz789",
    #     template_arn: "arn:aws:network-security-manager:us-east-1:123456789012:template:xyz789:2",
    #     template_name: "standard-waf-template",
    #     status: ACTIVE,
    #     version: "2",
    #     associated_rule_list: [
    #       {
    #         rule_arn: "arn:aws:network-security-manager:us-east-1:123456789012:rule:abc123"
    #       }
    #     ],
    #     is_snapshot: true,
    #     firewall_type: WAF,
    #     updated_at: Time.parse("2026-08-20T12:00:00Z")
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     template_identifier: "TemplateIdentifier", # required
    #     client_token: "IdempotencyToken",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_template_snapshot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     template_id: "TemplateId", # required
    #     template_arn: "TemplateArn", # required
    #     template_name: "TemplateName", # required
    #     template_description: "Description",
    #     status: "DRAFT" # One of: ["DRAFT", "ACTIVE", "DISABLED"], # required
    #     version: "EntityVersion", # required
    #     associated_rule_list: [ # required
    #       {
    #         rule_arn: "RuleArn", # required
    #       }
    #     ],
    #     update_token: "UpdateToken",
    #     is_snapshot: false,
    #     has_published_version: false,
    #     firewall_type: "WAF" # One of: ["WAF"], # required
    #     updated_at: Time.now
    #   }
    # @return [Types::CreateTemplateSnapshotOutput]
    def create_template_snapshot(params = {}, options = {})
      request = build_request(:create_template_snapshot, params)
      request.send_request(options)
    end

    # <p>Removes the specified AWS Network Security Manager administrator account.</p>
    # @param [Hash, Types::DeleteAdminAccountRequest] params
    # @option params [String] :account_id
    #   <p>The AWS account ID of the administrator account to remove.</p>
    # @example Remove an administrator account
    #   # Removes an account's Network Security Manager administrator designation.
    #   params = {
    #     account_id: "234567890123"
    #   }
    #   options = {}
    #   response = client.delete_admin_account(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId", # required
    #   }
    #   options = {}
    #   response = client.delete_admin_account(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_admin_account(params = {}, options = {})
      request = build_request(:delete_admin_account, params)
      request.send_request(options)
    end

    # <p>Deletes the specified deployment.</p>
    # @param [Hash, Types::DeleteDeploymentInput] params
    # @option params [String] :deployment_identifier
    #   <p>The identifier of the deployment. This is the deployment's Amazon Resource Name (ARN).</p>
    # @example Delete a deployment
    #   # Deletes a deployment by its ARN. Deleting an active deployment stops enforcement and triggers cleanup of managed firewall resources.
    #   params = {
    #     deployment_identifier: "arn:aws:network-security-manager:us-east-1:123456789012:deployment:def456"
    #   }
    #   options = {}
    #   response = client.delete_deployment(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     deployment_identifier: "DeploymentIdentifier", # required
    #   }
    #   options = {}
    #   response = client.delete_deployment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_deployment(params = {}, options = {})
      request = build_request(:delete_deployment, params)
      request.send_request(options)
    end

    # <p>Deletes the specified policy.</p>
    # @param [Hash, Types::DeletePolicyInput] params
    # @option params [String] :policy_identifier
    #   <p>The identifier of the policy. This is the policy's Amazon Resource Name (ARN).</p>
    # @example Delete a policy
    #   # Deletes a policy by its ARN. The policy must not be associated with any deployment.
    #   params = {
    #     policy_identifier: "arn:aws:network-security-manager:us-east-1:123456789012:policy:xyz789"
    #   }
    #   options = {}
    #   response = client.delete_policy(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_identifier: "PolicyIdentifier", # required
    #   }
    #   options = {}
    #   response = client.delete_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_policy(params = {}, options = {})
      request = build_request(:delete_policy, params)
      request.send_request(options)
    end

    # <p>Deletes the specified rule.</p>
    # @param [Hash, Types::DeleteRuleInput] params
    # @option params [String] :rule_identifier
    #   <p>The identifier of the rule. This is the rule's Amazon Resource Name (ARN).</p>
    # @example Delete a rule
    #   # Deletes a rule by its ARN. The rule must not be associated with any template or policy.
    #   params = {
    #     rule_identifier: "arn:aws:network-security-manager:us-east-1:123456789012:rule:abc123"
    #   }
    #   options = {}
    #   response = client.delete_rule(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     rule_identifier: "RuleIdentifier", # required
    #   }
    #   options = {}
    #   response = client.delete_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_rule(params = {}, options = {})
      request = build_request(:delete_rule, params)
      request.send_request(options)
    end

    # <p>Deletes the specified scope.</p>
    # @param [Hash, Types::DeleteScopeInput] params
    # @option params [String] :scope_identifier
    #   <p>The identifier of the scope. This is the scope's Amazon Resource Name (ARN).</p>
    # @example Delete a scope
    #   # Deletes a scope by its ARN. The scope must not be associated with any deployment.
    #   params = {
    #     scope_identifier: "arn:aws:network-security-manager:us-east-1:123456789012:scope:abc123"
    #   }
    #   options = {}
    #   response = client.delete_scope(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     scope_identifier: "ScopeIdentifier", # required
    #   }
    #   options = {}
    #   response = client.delete_scope(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_scope(params = {}, options = {})
      request = build_request(:delete_scope, params)
      request.send_request(options)
    end

    # <p>Deletes the specified template.</p>
    # @param [Hash, Types::DeleteTemplateInput] params
    # @option params [String] :template_identifier
    #   <p>The identifier of the template. This is the template's Amazon Resource Name (ARN).</p>
    # @example Delete a template
    #   # Deletes a template by its ARN. The template must not be associated with any policy.
    #   params = {
    #     template_identifier: "arn:aws:network-security-manager:us-east-1:123456789012:template:xyz789"
    #   }
    #   options = {}
    #   response = client.delete_template(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     template_identifier: "TemplateIdentifier", # required
    #   }
    #   options = {}
    #   response = client.delete_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_template(params = {}, options = {})
      request = build_request(:delete_template, params)
      request.send_request(options)
    end

    # <p>Generates a rule configuration from a natural-language description. Provide a prompt along with the rule's firewall type and rule type. The service returns a configuration that you can use when you create or update a rule. If you also provide an existing configuration, the service edits that configuration instead of generating a new one.</p>
    # @param [Hash, Types::GenerateRuleConfigurationRequest] params
    # @option params [String] :prompt
    #   <p>A natural-language description of the configuration that you want to generate.</p>
    # @option params [String] :rule_firewall_type
    #   <p>The firewall type of the rule.</p>
    # @option params [String] :rule_type
    #   <p>The type of the rule. <code>CONFIGURATION</code> rules contain firewall settings, and <code>INSPECTION</code> rules contain rule groups.</p>
    # @option params [String] :waf_config_data_type
    #   <p>For AWS WAF configuration rules, the specific AWS WAF configuration variant to generate. This is optional; if you omit it, the service selects the variant.</p>
    # @option params [String] :current_configuration
    #   <p>An existing configuration to edit, as a JSON string. When you provide this value, the operation edits the configuration. When you omit it, the operation generates a new configuration.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive token that you provide to ensure that the operation completes no more than one time. If you retry a request with the same client token and the same parameters, the service returns the result of the original successful request.</p>
    # @example Generate a rule configuration from a description
    #   # Generates a firewall rule configuration from a natural language description. The response contains the generated configuration as a JSON string, ready to use as the configuration of a rule.
    #   params = {
    #     prompt: "Create a rate limiting rule that blocks IP addresses sending more than 2000 requests in 5 minutes",
    #     rule_firewall_type: WAF,
    #     rule_type: INSPECTION,
    #     client_token: "550e8400-e29b-41d4-a716-446655440015"
    #   }
    #   options = {}
    #   response = client.generate_rule_configuration(params, options)
    #   response.to_h #=>
    #   {
    #     configuration: "{\"name\":\"rate-limit-rule\",\"priority\":1,\"statement\":{\"rateBasedStatement\":{\"limit\":2000,\"evaluationWindowSec\":300,\"aggregateKeyType\":\"IP\"}},\"action\":{\"block\":{}}}"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     prompt: "SensitiveString", # required
    #     rule_firewall_type: "WAF" # One of: ["WAF"], # required
    #     rule_type: "CONFIGURATION" # One of: ["CONFIGURATION", "INSPECTION"], # required
    #     waf_config_data_type: "DefaultAction" # One of: ["DefaultAction", "VisibilityConfig", "CaptchaConfig", "ChallengeConfig", "CustomResponseBodies", "LoggingConfiguration", "DataProtectionConfig", "AssociationConfig", "OnSourceDDoSProtectionConfig", "TokenDomains"],
    #     current_configuration: "String",
    #     client_token: "IdempotencyToken"
    #   }
    #   options = {}
    #   response = client.generate_rule_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     configuration: "String", # required
    #     description: "String"
    #   }
    # @return [Types::GenerateRuleConfigurationResponse]
    def generate_rule_configuration(params = {}, options = {})
      request = build_request(:generate_rule_configuration, params)
      request.send_request(options)
    end

    # <p>Retrieves the details of the specified AWS Network Security Manager administrator account.</p>
    # @param [Hash, Types::GetAdminAccountRequest] params
    # @option params [String] :account_id
    #   <p>The AWS account ID of the administrator account to retrieve.</p>
    # @example Get an administrator account
    #   # Retrieves the details and administrative scope of a Network Security Manager administrator account.
    #   params = {
    #     account_id: "234567890123"
    #   }
    #   options = {}
    #   response = client.get_admin_account(params, options)
    #   response.to_h #=>
    #   {
    #     admin_account_details: {
    #       admin_account: "234567890123",
    #       priority: 2,
    #       admin_scope: {
    #         scope_filter: {
    #     "includeOnly" => {
    #       "organizationalUnits" => [{
    #         "ouId" => ou-abcd-12345678,
    #         "name" => Production
    #       }]
    #     }
    #   },
    #         firewall_type_scope: {
    #           all_firewall_types_enabled: false,
    #           firewall_types: [
    #             WAF
    #           ]
    #         }
    #       },
    #       status: ONBOARDED
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId", # required
    #   }
    #   options = {}
    #   response = client.get_admin_account(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     admin_account_details: {
    #       admin_account: "AccountId", # required
    #       priority: 1, # required
    #       admin_scope: {
    #         scope_filter: {
    #           # One of:
    #           include_all: {
    #           },
    #           include_only: {
    #             accounts: [
    #               {
    #                 account_id: "AccountId", # required
    #                 name: "SensitiveAccountName",
    #                 email: "SensitiveAccountEmail"
    #               }
    #             ],
    #             organizational_units: [
    #               {
    #                 ou_id: "OrganizationalUnitId", # required
    #                 name: "String"
    #               }
    #             ]
    #           },
    #           exclude_only: {
    #             accounts: [
    #               {
    #                 account_id: "AccountId", # required
    #                 name: "SensitiveAccountName",
    #                 email: "SensitiveAccountEmail"
    #               }
    #             ],
    #             organizational_units: [
    #               {
    #                 ou_id: "OrganizationalUnitId", # required
    #                 name: "String"
    #               }
    #             ]
    #           }
    #         },
    #         firewall_type_scope: {
    #           all_firewall_types_enabled: false,
    #           firewall_types: ["WAF" # One of: ["WAF", "SHIELD_ADVANCED"]]
    #         }
    #       },
    #       status: "ONBOARDED" # One of: ["ONBOARDED", "OFFBOARDED"]
    #     }
    #   }
    # @return [Types::GetAdminAccountResponse]
    def get_admin_account(params = {}, options = {})
      request = build_request(:get_admin_account, params)
      request.send_request(options)
    end

    # <p>Retrieves the details of the specified deployment, including coverage information and any warnings.</p>
    # @param [Hash, Types::GetDeploymentInput] params
    # @option params [String] :deployment_identifier
    #   <p>The identifier of the deployment. This is the deployment's Amazon Resource Name (ARN).</p>
    # @example Get a deployment
    #   # Retrieves the current published version of a deployment by its base ARN, including per-firewall-type coverage showing which in-scope resource types each policy protects.
    #   params = {
    #     deployment_identifier: "arn:aws:network-security-manager:us-east-1:123456789012:deployment:def456"
    #   }
    #   options = {}
    #   response = client.get_deployment(params, options)
    #   response.to_h #=>
    #   {
    #     deployment_id: "def456",
    #     deployment_arn: "arn:aws:network-security-manager:us-east-1:123456789012:deployment:def456",
    #     deployment_name: "prod-us-east-1-deployment",
    #     deployment_description: "Production deployment for US East 1 region",
    #     status: ACTIVE,
    #     deployment_configuration: {
    #       enable_cross_account_visibility: false
    #     },
    #     associated_policy_list: [
    #       {
    #         policy_arn: "arn:aws:network-security-manager:us-east-1:123456789012:policy:xyz789"
    #       }
    #     ],
    #     associated_scope_list: [
    #       {
    #         scope_arn: "arn:aws:network-security-manager:us-east-1:123456789012:scope:abc123"
    #       }
    #     ],
    #     version: "1",
    #     update_token: "f4a5b6c7-7d8e-4f9a-8b1c-1d2e3f4a5b6c",
    #     is_snapshot: false,
    #     has_published_version: true,
    #     deployment_coverage: [
    #       {
    #         firewall_type: WAF,
    #         policy_arns: [
    #           "arn:aws:network-security-manager:us-east-1:123456789012:policy:xyz789"
    #         ],
    #         in_scope_resource_types: [
    #           AWS::ElasticLoadBalancingV2::LoadBalancer::application,
    #           AWS::CloudFront::Distribution
    #         ]
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     deployment_identifier: "DeploymentIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_deployment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     deployment_id: "DeploymentId", # required
    #     deployment_arn: "DeploymentArn", # required
    #     deployment_name: "DeploymentName", # required
    #     deployment_description: "Description",
    #     status: "DRAFT" # One of: ["DRAFT", "ACTIVE", "DISABLED"], # required
    #     deployment_configuration: {
    #       enable_cross_account_visibility: false, # required
    #     },
    #     associated_policy_list: [ # required
    #       {
    #         policy_arn: "PolicyArn", # required
    #       }
    #     ],
    #     associated_scope_list: [ # required
    #       {
    #         scope_arn: "ScopeArn", # required
    #       }
    #     ],
    #     version: "EntityVersion", # required
    #     update_token: "UpdateToken",
    #     is_snapshot: false,
    #     has_published_version: false,
    #     updated_at: Time.now,
    #     deployment_coverage: [
    #       {
    #         firewall_type: "WAF" # One of: ["WAF", "SHIELD_ADVANCED"], # required
    #         policy_arns: ["PolicyArn"], # required
    #         in_scope_resource_types: ["AWS::ApiGateway::Stage" # One of: ["AWS::ApiGateway::Stage", "AWS::CloudFront::Distribution", "AWS::EC2::EIP", "AWS::ElasticLoadBalancingV2::LoadBalancer::application", "AWS::ElasticLoadBalancing::LoadBalancer"]], # required
    #       }
    #     ],
    #     warnings: [
    #       {
    #         code: "String", # required
    #         policy_arn: "PolicyArn", # required
    #         message: "String", # required
    #       }
    #     ]
    #   }
    # @return [Types::GetDeploymentOutput]
    def get_deployment(params = {}, options = {})
      request = build_request(:get_deployment, params)
      request.send_request(options)
    end

    # <p>Retrieves the details of the specified policy.</p>
    # @param [Hash, Types::GetPolicyInput] params
    # @option params [String] :policy_identifier
    #   <p>The identifier of the policy. This is the policy's Amazon Resource Name (ARN).</p>
    # @example Get a policy
    #   # Retrieves the current published version of a policy by its base ARN, including its associated templates and rules and its enforcement configuration.
    #   params = {
    #     policy_identifier: "arn:aws:network-security-manager:us-east-1:123456789012:policy:xyz789"
    #   }
    #   options = {}
    #   response = client.get_policy(params, options)
    #   response.to_h #=>
    #   {
    #     policy_id: "xyz789",
    #     policy_arn: "arn:aws:network-security-manager:us-east-1:123456789012:policy:xyz789",
    #     policy_name: "web-app-waf-policy",
    #     policy_description: "WAF policy for web application protection",
    #     status: ACTIVE,
    #     priority: 1,
    #     associated_template_and_rule_list: [
    #       {
    #     "templateArn" => arn:aws:network-security-manager:us-east-1:123456789012:template:xyz789
    #   }
    #     ],
    #     version: "1",
    #     update_token: "e3f4a5b6-6c7d-4e8f-9a0b-0c1d2e3f4a5b",
    #     is_snapshot: false,
    #     has_published_version: true,
    #     firewall_type: WAF,
    #     policy_configuration: {
    #       remediation_enabled: true,
    #       resources_clean_up: false,
    #       waf_config: {
    #         existing_customer_web_acl_resolution: NO_REMEDIATION,
    #         conflict_resolution: MERGE_WHERE_APPLICABLE
    #       }
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_identifier: "PolicyIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy_id: "PolicyId", # required
    #     policy_arn: "PolicyArn", # required
    #     policy_name: "PolicyName", # required
    #     policy_description: "Description",
    #     status: "DRAFT" # One of: ["DRAFT", "ACTIVE", "DISABLED"], # required
    #     priority: 1, # required
    #     associated_template_and_rule_list: [{ # required
    #       # One of:
    #       template_arn: "TemplateArn",
    #       rule_arn: "RuleArn"
    #     }],
    #     version: "EntityVersion", # required
    #     update_token: "UpdateToken",
    #     is_snapshot: false,
    #     has_published_version: false,
    #     firewall_type: "WAF" # One of: ["WAF", "SHIELD_ADVANCED"], # required
    #     policy_configuration: {
    #       remediation_enabled: false, # required
    #       resources_clean_up: false, # required
    #       waf_config: {
    #         existing_customer_web_acl_resolution: "RETROFIT" # One of: ["RETROFIT", "OVERRIDE_ASSOCIATION", "NO_REMEDIATION"], # required
    #         conflict_resolution: "MERGE_WHERE_APPLICABLE" # One of: ["MERGE_WHERE_APPLICABLE"], # required
    #       }
    #     },
    #     updated_at: Time.now
    #   }
    # @return [Types::GetPolicyOutput]
    def get_policy(params = {}, options = {})
      request = build_request(:get_policy, params)
      request.send_request(options)
    end

    # <p>Retrieves the details of the specified rule.</p>
    # @param [Hash, Types::GetRuleInput] params
    # @option params [String] :rule_identifier
    #   <p>The identifier of the rule. This is the rule's Amazon Resource Name (ARN).</p>
    # @example Get a rule
    #   # Retrieves the current published version of a rule by its base ARN.
    #   params = {
    #     rule_identifier: "arn:aws:network-security-manager:us-east-1:123456789012:rule:abc123"
    #   }
    #   options = {}
    #   response = client.get_rule(params, options)
    #   response.to_h #=>
    #   {
    #     rule_id: "abc123",
    #     rule_arn: "arn:aws:network-security-manager:us-east-1:123456789012:rule:abc123",
    #     rule_name: "block-known-bad-ips",
    #     firewall_type: WAF,
    #     rule_type: INSPECTION,
    #     rule_description: "Blocks requests from known malicious IP addresses",
    #     configuration: {},
    #     status: ACTIVE,
    #     version: "1",
    #     update_token: "c1d2e3f4-4a5b-4c6d-9e7f-8a9b0c1d2e3f",
    #     is_snapshot: false,
    #     has_published_version: true
    #   }
    # @example Get a specific version of a rule
    #   # Retrieves a specific immutable version (snapshot) of a rule using a version-qualified ARN. The response has isSnapshot set to true. Omitting the version qualifier returns the current published rule instead.
    #   params = {
    #     rule_identifier: "arn:aws:network-security-manager:us-east-1:123456789012:rule:abc123:3"
    #   }
    #   options = {}
    #   response = client.get_rule(params, options)
    #   response.to_h #=>
    #   {
    #     rule_id: "abc123",
    #     rule_arn: "arn:aws:network-security-manager:us-east-1:123456789012:rule:abc123:3",
    #     rule_name: "block-known-bad-ips",
    #     firewall_type: WAF,
    #     rule_type: INSPECTION,
    #     rule_description: "Blocks requests from known malicious IP addresses",
    #     configuration: {},
    #     status: ACTIVE,
    #     version: "3",
    #     is_snapshot: true
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     rule_identifier: "RuleIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rule_id: "RuleId", # required
    #     rule_arn: "RuleArn", # required
    #     rule_name: "RuleName", # required
    #     firewall_type: "WAF" # One of: ["WAF"], # required
    #     rule_type: "CONFIGURATION" # One of: ["CONFIGURATION", "INSPECTION"],
    #     rule_description: "Description",
    #     configuration: ""null"", # required
    #     status: "DRAFT" # One of: ["DRAFT", "ACTIVE", "DISABLED"], # required
    #     version: "EntityVersion", # required
    #     update_token: "UpdateToken",
    #     is_snapshot: false,
    #     has_published_version: false,
    #     updated_at: Time.now
    #   }
    # @return [Types::GetRuleOutput]
    def get_rule(params = {}, options = {})
      request = build_request(:get_rule, params)
      request.send_request(options)
    end

    # <p>Retrieves the details of the specified scope.</p>
    # @param [Hash, Types::GetScopeInput] params
    # @option params [String] :scope_identifier
    #   <p>The identifier of the scope. This is the scope's Amazon Resource Name (ARN).</p>
    # @example Get a scope
    #   # Retrieves the current published version of a scope by its base ARN.
    #   params = {
    #     scope_identifier: "arn:aws:network-security-manager:us-east-1:123456789012:scope:abc123"
    #   }
    #   options = {}
    #   response = client.get_scope(params, options)
    #   response.to_h #=>
    #   {
    #     scope_id: "abc123",
    #     scope_arn: "arn:aws:network-security-manager:us-east-1:123456789012:scope:abc123",
    #     scope_name: "production-web-apps",
    #     scope_description: "Scope covering all production web application resources",
    #     scope_configuration: {
    #       account_filter: {
    #     "includeAll" => {}
    #   },
    #       resource_scopes: {
    #       }
    #     },
    #     status: ACTIVE,
    #     version: "1",
    #     update_token: "b0c4d1e2-3f4a-4b5c-8d6e-7f8a9b0c1d2e",
    #     is_snapshot: false,
    #     has_published_version: true
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     scope_identifier: "ScopeIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_scope(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     scope_id: "ScopeId", # required
    #     scope_arn: "ScopeArn", # required
    #     scope_name: "ScopeName", # required
    #     scope_description: "Description",
    #     scope_configuration: {
    #       account_filter: {
    #         # One of:
    #         include_all: {
    #         },
    #         include: {
    #           account_ids: ["AccountId"],
    #           organizational_units: ["OrganizationalUnit"]
    #         },
    #         exclude: {
    #           account_ids: ["AccountId"],
    #           organizational_units: ["OrganizationalUnit"]
    #         }
    #       },
    #       resource_scopes: { # required
    #         "ScopeResourceType" => {
    #           include_all: false,
    #           include: {
    #             explicit_arns: ["Arn"],
    #             expression: {
    #               # One of:
    #               criteria: {
    #                 # One of:
    #                 tags: {
    #                   "String" => "String"
    #                 },
    #                 alb_config: {
    #                   scheme: "internet-facing" # One of: ["internet-facing", "internal"],
    #                   ip_address_type: "ipv4" # One of: ["ipv4", "dualstack", "dualstack-without-public-ipv4"]
    #                 }
    #               },
    #               and: [{
    #                 # recursive ResourceLogicalExpression
    #               }],
    #               or: [{
    #                 # recursive ResourceLogicalExpression
    #               }],
    #               not: {
    #                 # recursive ResourceLogicalExpression
    #               }
    #             }
    #           },
    #           exclude: {
    #             explicit_arns: ["Arn"],
    #             expression: {
    #               # One of:
    #               criteria: {
    #                 # One of:
    #                 tags: {
    #                   "String" => "String"
    #                 },
    #                 alb_config: {
    #                   scheme: "internet-facing" # One of: ["internet-facing", "internal"],
    #                   ip_address_type: "ipv4" # One of: ["ipv4", "dualstack", "dualstack-without-public-ipv4"]
    #                 }
    #               },
    #               and: [{
    #                 # recursive ResourceLogicalExpression
    #               }],
    #               or: [{
    #                 # recursive ResourceLogicalExpression
    #               }],
    #               not: {
    #                 # recursive ResourceLogicalExpression
    #               }
    #             }
    #           }
    #         }
    #       }
    #     },
    #     status: "DRAFT" # One of: ["DRAFT", "ACTIVE", "DISABLED"], # required
    #     version: "EntityVersion", # required
    #     update_token: "UpdateToken",
    #     is_snapshot: false,
    #     has_published_version: false,
    #     updated_at: Time.now
    #   }
    # @return [Types::GetScopeOutput]
    def get_scope(params = {}, options = {})
      request = build_request(:get_scope, params)
      request.send_request(options)
    end

    # <p>Retrieves the details of the specified template.</p>
    # @param [Hash, Types::GetTemplateInput] params
    # @option params [String] :template_identifier
    #   <p>The identifier of the template. This is the template's Amazon Resource Name (ARN).</p>
    # @example Get a template
    #   # Retrieves the current published version of a template by its base ARN, including its associated rules.
    #   params = {
    #     template_identifier: "arn:aws:network-security-manager:us-east-1:123456789012:template:xyz789"
    #   }
    #   options = {}
    #   response = client.get_template(params, options)
    #   response.to_h #=>
    #   {
    #     template_id: "xyz789",
    #     template_arn: "arn:aws:network-security-manager:us-east-1:123456789012:template:xyz789",
    #     template_name: "standard-waf-template",
    #     template_description: "Standard WAF template with baseline rule groups",
    #     status: ACTIVE,
    #     version: "1",
    #     associated_rule_list: [
    #       {
    #         rule_arn: "arn:aws:network-security-manager:us-east-1:123456789012:rule:abc123"
    #       }
    #     ],
    #     update_token: "d2e3f4a5-5b6c-4d7e-8f9a-9b0c1d2e3f4a",
    #     is_snapshot: false,
    #     has_published_version: true,
    #     firewall_type: WAF
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     template_identifier: "TemplateIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     template_id: "TemplateId", # required
    #     template_arn: "TemplateArn", # required
    #     template_name: "TemplateName", # required
    #     template_description: "Description",
    #     status: "DRAFT" # One of: ["DRAFT", "ACTIVE", "DISABLED"], # required
    #     version: "EntityVersion", # required
    #     associated_rule_list: [ # required
    #       {
    #         rule_arn: "RuleArn", # required
    #       }
    #     ],
    #     update_token: "UpdateToken",
    #     is_snapshot: false,
    #     has_published_version: false,
    #     firewall_type: "WAF" # One of: ["WAF"], # required
    #     updated_at: Time.now
    #   }
    # @return [Types::GetTemplateOutput]
    def get_template(params = {}, options = {})
      request = build_request(:get_template, params)
      request.send_request(options)
    end

    # <p>Lists the AWS Network Security Manager administrator accounts in the organization.</p>
    # @param [Hash, Types::ListAdminAccountsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call. Valid range: 1-100. To retrieve the remaining results, use the returned <code>nextToken</code> value in a subsequent call.</p>
    # @option params [String] :next_token
    #   <p>The token for the next page of results. To retrieve the next page, call the operation again and provide this value. When there are no more results, this value is null.</p>
    # @example List administrator accounts
    #   # Lists the Network Security Manager administrator accounts for the organization.
    #   params = {
    #     max_results: 10
    #   }
    #   options = {}
    #   response = client.list_admin_accounts(params, options)
    #   response.to_h #=>
    #   {
    #     admin_accounts: [
    #       {
    #         account_id: "234567890123",
    #         priority: 2
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_admin_accounts(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     admin_accounts: [ # required
    #       {
    #         account_id: "AccountId", # required
    #         priority: 1,
    #         name: "SensitiveName",
    #         email: "SensitiveEmail"
    #       }
    #     ]
    #   }
    # @return [Types::ListAdminAccountsResponse]
    def list_admin_accounts(params = {}, options = {})
      request = build_request(:list_admin_accounts, params)
      request.send_request(options)
    end

    # <p>Lists the aggregated synchronization statuses of resources across the deployments in your administrator account. You can filter the results by synchronization status and page through them.</p>
    # @param [Hash, Types::ListAggregateResourceSynchronizationStatusesInput] params
    # @option params [String] :synchronization_status
    #   <p>Filters the results by synchronization status, such as <code>IN_SYNC</code> or <code>OUT_OF_SYNC</code>.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call. Valid range: 1-100. To retrieve the remaining results, use the returned <code>nextToken</code> value in a subsequent call.</p>
    # @option params [String] :next_token
    #   <p>The token for the next page of results. To retrieve the next page, call the operation again and provide this value. When there are no more results, this value is null.</p>
    # @example List synchronization statuses across all deployments
    #   # Lists the aggregate synchronization status of resources across all deployments in the account.
    #   params = {
    #     synchronization_status: IN_SYNC,
    #     max_results: 10
    #   }
    #   options = {}
    #   response = client.list_aggregate_resource_synchronization_statuses(params, options)
    #   response.to_h #=>
    #   {
    #     resource_synchronization_statuses: [
    #       {
    #         synchronization_status: IN_SYNC,
    #         account_id: "234567890123",
    #         resource_arn: "arn:aws:elasticloadbalancing:us-east-1:234567890123:loadbalancer/app/my-alb/50dc6c495c0c9188",
    #         resource_type: AWS::ElasticLoadBalancingV2::LoadBalancer::application,
    #         updated_at: Time.parse("2026-08-20T12:00:00Z"),
    #         evaluated_at: Time.parse("2026-08-20T12:00:00Z")
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     synchronization_status: "IN_SYNC" # One of: ["IN_SYNC", "OUT_OF_SYNC", "NOT_APPLICABLE"],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_aggregate_resource_synchronization_statuses(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     resource_synchronization_statuses: [ # required
    #       {
    #         synchronization_status: "IN_SYNC" # One of: ["IN_SYNC", "OUT_OF_SYNC", "NOT_APPLICABLE"], # required
    #         account_id: "AccountId", # required
    #         resource_arn: "Arn", # required
    #         deployment_arn: "DeploymentArn",
    #         resource_type: "AWS::ApiGateway::Stage" # One of: ["AWS::ApiGateway::Stage", "AWS::CloudFront::Distribution", "AWS::EC2::EIP", "AWS::ElasticLoadBalancingV2::LoadBalancer::application", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::WAFv2::WebACL", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection"],
    #         updated_at: Time.now, # required
    #         out_of_sync_reasons: {
    #           # One of:
    #           reasons: {
    #             "PolicyFirewallType" => {
    #               # One of:
    #               missing_firewall: "String",
    #               invalid_firewall: {
    #                 incorrect_single_value_configurations: [
    #                   {
    #                     configuration_name: "String",
    #                     expected_value: "String",
    #                     actual_value: "String"
    #                   }
    #                 ],
    #                 missing_appendable_configuration_values: [
    #                   {
    #                     configuration_name: "String",
    #                     expected_value: "String",
    #                     actual_value: "String"
    #                   }
    #                 ],
    #                 unexpected_appendable_configuration_values: [
    #                   {
    #                     configuration_name: "String",
    #                     expected_value: "String",
    #                     actual_value: "String"
    #                   }
    #                 ],
    #                 incorrect_appendable_configuration_order: [
    #                   {
    #                     configuration_name: "String",
    #                     expected_value: "String",
    #                     actual_value: "String"
    #                   }
    #                 ],
    #                 missing_mergeable_configuration_values: [
    #                   {
    #                     configuration_name: "String",
    #                     expected_value: "String",
    #                     actual_value: "String"
    #                   }
    #                 ],
    #                 unexpected_mergeable_configuration_values: [
    #                   {
    #                     configuration_name: "String",
    #                     expected_value: "String",
    #                     actual_value: "String"
    #                   }
    #                 ]
    #               }
    #             }
    #           },
    #           not_visible: {
    #             reason: "String", # required
    #           }
    #         },
    #         remediation_issues: {
    #           # One of:
    #           issues: {
    #             "PolicyFirewallType" => {
    #               issue_type: "String",
    #               message: "String",
    #               corrective_action: "String"
    #             }
    #           },
    #           not_visible: {
    #             reason: "String", # required
    #           }
    #         },
    #         evaluated_at: Time.now
    #       }
    #     ]
    #   }
    # @return [Types::ListAggregateResourceSynchronizationStatusesOutput]
    def list_aggregate_resource_synchronization_statuses(params = {}, options = {})
      request = build_request(:list_aggregate_resource_synchronization_statuses, params)
      request.send_request(options)
    end

    # <p>Lists the snapshots of the specified deployment.</p>
    # @param [Hash, Types::ListDeploymentSnapshotsInput] params
    # @option params [String] :deployment_identifier
    #   <p>The identifier of the deployment. This is the deployment's Amazon Resource Name (ARN).</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call. Valid range: 1-100. To retrieve the remaining results, use the returned <code>nextToken</code> value in a subsequent call.</p>
    # @option params [String] :next_token
    #   <p>The token for the next page of results. To retrieve the next page, call the operation again and provide this value. When there are no more results, this value is null.</p>
    # @example List the snapshots of a deployment
    #   # Lists the immutable snapshots that have been created for a deployment.
    #   params = {
    #     deployment_identifier: "arn:aws:network-security-manager:us-east-1:123456789012:deployment:def456",
    #     max_results: 10
    #   }
    #   options = {}
    #   response = client.list_deployment_snapshots(params, options)
    #   response.to_h #=>
    #   {
    #     snapshots: [
    #       {
    #         deployment_id: "def456",
    #         deployment_arn: "arn:aws:network-security-manager:us-east-1:123456789012:deployment:def456:2",
    #         deployment_name: "prod-us-east-1-deployment",
    #         status: ACTIVE,
    #         version: "2",
    #         updated_at: Time.parse("2026-08-20T12:00:00Z")
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     deployment_identifier: "DeploymentIdentifier", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_deployment_snapshots(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     snapshots: [ # required
    #       {
    #         deployment_id: "DeploymentId", # required
    #         deployment_arn: "DeploymentArn", # required
    #         deployment_name: "DeploymentName",
    #         status: "DRAFT" # One of: ["DRAFT", "ACTIVE", "DISABLED"],
    #         version: "EntityVersion",
    #         has_published_version: false,
    #         updated_at: Time.now
    #       }
    #     ]
    #   }
    # @return [Types::ListDeploymentSnapshotsOutput]
    def list_deployment_snapshots(params = {}, options = {})
      request = build_request(:list_deployment_snapshots, params)
      request.send_request(options)
    end

    # <p>Lists the deployments in the account. You can filter the results by status and page through them using <code>maxResults</code> and <code>nextToken</code>.</p>
    # @param [Hash, Types::ListDeploymentsInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call. Valid range: 1-100. To retrieve the remaining results, use the returned <code>nextToken</code> value in a subsequent call.</p>
    # @option params [String] :next_token
    #   <p>The token for the next page of results. To retrieve the next page, call the operation again and provide this value. When there are no more results, this value is null.</p>
    # @option params [String] :status
    #   <p>Filters the results by status: <code>ACTIVE</code>, <code>DRAFT</code>, or <code>DISABLED</code>.</p>
    # @example List deployments
    #   # Lists the published deployments in the account, one page at a time.
    #   params = {
    #     max_results: 10,
    #     status: ACTIVE
    #   }
    #   options = {}
    #   response = client.list_deployments(params, options)
    #   response.to_h #=>
    #   {
    #     deployments: [
    #       {
    #         deployment_id: "def456",
    #         deployment_arn: "arn:aws:network-security-manager:us-east-1:123456789012:deployment:def456",
    #         deployment_name: "prod-us-east-1-deployment",
    #         status: ACTIVE,
    #         version: "2",
    #         has_published_version: true,
    #         updated_at: Time.parse("2026-08-20T12:00:00Z")
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken",
    #     status: "ACTIVE" # One of: ["ACTIVE", "DRAFT", "DISABLED"]
    #   }
    #   options = {}
    #   response = client.list_deployments(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     deployments: [ # required
    #       {
    #         deployment_id: "DeploymentId", # required
    #         deployment_arn: "DeploymentArn", # required
    #         deployment_name: "DeploymentName",
    #         status: "DRAFT" # One of: ["DRAFT", "ACTIVE", "DISABLED"],
    #         version: "EntityVersion",
    #         has_published_version: false,
    #         updated_at: Time.now
    #       }
    #     ]
    #   }
    # @return [Types::ListDeploymentsOutput]
    def list_deployments(params = {}, options = {})
      request = build_request(:list_deployments, params)
      request.send_request(options)
    end

    # <p>Lists the policies in the account. You can filter the results by status and page through them using <code>maxResults</code> and <code>nextToken</code>.</p>
    # @param [Hash, Types::ListPoliciesInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call. Valid range: 1-100. To retrieve the remaining results, use the returned <code>nextToken</code> value in a subsequent call.</p>
    # @option params [String] :next_token
    #   <p>The token for the next page of results. To retrieve the next page, call the operation again and provide this value. When there are no more results, this value is null.</p>
    # @option params [String] :status
    #   <p>Filters the results by status, either <code>ACTIVE</code> or <code>DRAFT</code>.</p>
    # @example List policies
    #   # Lists the published policies in the account, one page at a time.
    #   params = {
    #     max_results: 10,
    #     status: ACTIVE
    #   }
    #   options = {}
    #   response = client.list_policies(params, options)
    #   response.to_h #=>
    #   {
    #     policies: [
    #       {
    #         policy_id: "xyz789",
    #         policy_arn: "arn:aws:network-security-manager:us-east-1:123456789012:policy:xyz789",
    #         policy_name: "web-app-waf-policy",
    #         status: ACTIVE,
    #         version: "2",
    #         has_published_version: true,
    #         firewall_type: WAF,
    #         priority: 2,
    #         updated_at: Time.parse("2026-08-20T12:00:00Z")
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken",
    #     status: "ACTIVE" # One of: ["ACTIVE", "DRAFT", "DISABLED"]
    #   }
    #   options = {}
    #   response = client.list_policies(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     policies: [ # required
    #       {
    #         policy_id: "PolicyId", # required
    #         policy_arn: "PolicyArn", # required
    #         policy_name: "PolicyName",
    #         status: "DRAFT" # One of: ["DRAFT", "ACTIVE", "DISABLED"],
    #         version: "EntityVersion",
    #         has_published_version: false,
    #         firewall_type: "WAF" # One of: ["WAF", "SHIELD_ADVANCED"],
    #         priority: 1,
    #         updated_at: Time.now
    #       }
    #     ]
    #   }
    # @return [Types::ListPoliciesOutput]
    def list_policies(params = {}, options = {})
      request = build_request(:list_policies, params)
      request.send_request(options)
    end

    # <p>Lists the snapshots of the specified policy.</p>
    # @param [Hash, Types::ListPolicySnapshotsInput] params
    # @option params [String] :policy_identifier
    #   <p>The identifier of the policy. This is the policy's Amazon Resource Name (ARN).</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call. Valid range: 1-100. To retrieve the remaining results, use the returned <code>nextToken</code> value in a subsequent call.</p>
    # @option params [String] :next_token
    #   <p>The token for the next page of results. To retrieve the next page, call the operation again and provide this value. When there are no more results, this value is null.</p>
    # @example List the snapshots of a policy
    #   # Lists the immutable snapshots that have been created for a policy.
    #   params = {
    #     policy_identifier: "arn:aws:network-security-manager:us-east-1:123456789012:policy:xyz789",
    #     max_results: 10
    #   }
    #   options = {}
    #   response = client.list_policy_snapshots(params, options)
    #   response.to_h #=>
    #   {
    #     snapshots: [
    #       {
    #         policy_id: "xyz789",
    #         policy_arn: "arn:aws:network-security-manager:us-east-1:123456789012:policy:xyz789:2",
    #         policy_name: "web-app-waf-policy",
    #         status: ACTIVE,
    #         version: "2",
    #         firewall_type: WAF,
    #         priority: 2,
    #         updated_at: Time.parse("2026-08-20T12:00:00Z")
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_identifier: "PolicyIdentifier", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_policy_snapshots(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     snapshots: [ # required
    #       {
    #         policy_id: "PolicyId", # required
    #         policy_arn: "PolicyArn", # required
    #         policy_name: "PolicyName",
    #         status: "DRAFT" # One of: ["DRAFT", "ACTIVE", "DISABLED"],
    #         version: "EntityVersion",
    #         has_published_version: false,
    #         firewall_type: "WAF" # One of: ["WAF", "SHIELD_ADVANCED"],
    #         priority: 1,
    #         updated_at: Time.now
    #       }
    #     ]
    #   }
    # @return [Types::ListPolicySnapshotsOutput]
    def list_policy_snapshots(params = {}, options = {})
      request = build_request(:list_policy_snapshots, params)
      request.send_request(options)
    end

    # <p>Lists the resources associated with the specified resource.</p>
    # @param [Hash, Types::ListResourceAssociationsInput] params
    # @option params [String] :resource_identifier
    #   <p>The identifier of the resource to list associations for. This is the resource's Amazon Resource Name (ARN).</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call. Valid range: 1-100. To retrieve the remaining results, use the returned <code>nextToken</code> value in a subsequent call.</p>
    # @option params [String] :next_token
    #   <p>The token for the next page of results. To retrieve the next page, call the operation again and provide this value. When there are no more results, this value is null.</p>
    # @example List what references a rule
    #   # Lists the resources that reference the given rule, such as the templates and policies it is associated with.
    #   params = {
    #     resource_identifier: "arn:aws:network-security-manager:us-east-1:123456789012:rule:abc123",
    #     max_results: 10
    #   }
    #   options = {}
    #   response = client.list_resource_associations(params, options)
    #   response.to_h #=>
    #   {
    #     resource_associations: [
    #       {
    #         arn: "arn:aws:network-security-manager:us-east-1:123456789012:template:xyz789",
    #         resource_type: Template
    #       },
    #       {
    #         arn: "arn:aws:network-security-manager:us-east-1:123456789012:policy:xyz789",
    #         resource_type: Policy
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_identifier: "ResourceIdentifier", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_resource_associations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     resource_associations: [ # required
    #       {
    #         arn: "Arn", # required
    #         resource_type: "Rule" # One of: ["Rule", "Template", "Policy", "Deployment", "Scope"], # required
    #       }
    #     ]
    #   }
    # @return [Types::ListResourceAssociationsOutput]
    def list_resource_associations(params = {}, options = {})
      request = build_request(:list_resource_associations, params)
      request.send_request(options)
    end

    # <p>Lists the synchronization statuses of the resources covered by the specified deployment. You can filter the results by synchronization status and page through them.</p>
    # @param [Hash, Types::ListResourceSynchronizationStatusesInput] params
    # @option params [String] :deployment_identifier
    #   <p>The identifier of the deployment to list synchronization statuses for. This is the deployment's Amazon Resource Name (ARN).</p>
    # @option params [String] :synchronization_status
    #   <p>Filters the results by synchronization status, such as <code>IN_SYNC</code> or <code>OUT_OF_SYNC</code>.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call. Valid range: 1-100. To retrieve the remaining results, use the returned <code>nextToken</code> value in a subsequent call.</p>
    # @option params [String] :next_token
    #   <p>The token for the next page of results. To retrieve the next page, call the operation again and provide this value. When there are no more results, this value is null.</p>
    # @example List out-of-sync resources for a deployment
    #   # Lists the resources tracked by a deployment that are out of sync, including the structured reason. Here a CloudFront distribution has no web ACL where the policy requires one.
    #   params = {
    #     deployment_identifier: "arn:aws:network-security-manager:us-east-1:123456789012:deployment:def456",
    #     synchronization_status: OUT_OF_SYNC,
    #     max_results: 10
    #   }
    #   options = {}
    #   response = client.list_resource_synchronization_statuses(params, options)
    #   response.to_h #=>
    #   {
    #     resource_synchronization_statuses: [
    #       {
    #         synchronization_status: OUT_OF_SYNC,
    #         account_id: "123456789012",
    #         resource_arn: "arn:aws:cloudfront::123456789012:distribution/EDFDVBD6EXAMPLE",
    #         deployment_arn: "arn:aws:network-security-manager:us-east-1:123456789012:deployment:def456",
    #         resource_type: AWS::CloudFront::Distribution,
    #         updated_at: Time.parse("2026-08-20T12:00:00Z"),
    #         out_of_sync_reasons: {
    #     "reasons" => {
    #       "WAF" => {
    #         "missingFirewall" => No web ACL is associated with the resource
    #       }
    #     }
    #   },
    #         evaluated_at: Time.parse("2026-08-20T12:00:00Z")
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     deployment_identifier: "DeploymentIdentifier", # required
    #     synchronization_status: "IN_SYNC" # One of: ["IN_SYNC", "OUT_OF_SYNC", "NOT_APPLICABLE"],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_resource_synchronization_statuses(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     resource_synchronization_statuses: [ # required
    #       {
    #         synchronization_status: "IN_SYNC" # One of: ["IN_SYNC", "OUT_OF_SYNC", "NOT_APPLICABLE"], # required
    #         account_id: "AccountId", # required
    #         resource_arn: "Arn", # required
    #         deployment_arn: "DeploymentArn",
    #         resource_type: "AWS::ApiGateway::Stage" # One of: ["AWS::ApiGateway::Stage", "AWS::CloudFront::Distribution", "AWS::EC2::EIP", "AWS::ElasticLoadBalancingV2::LoadBalancer::application", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::WAFv2::WebACL", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection"],
    #         updated_at: Time.now, # required
    #         out_of_sync_reasons: {
    #           # One of:
    #           reasons: {
    #             "PolicyFirewallType" => {
    #               # One of:
    #               missing_firewall: "String",
    #               invalid_firewall: {
    #                 incorrect_single_value_configurations: [
    #                   {
    #                     configuration_name: "String",
    #                     expected_value: "String",
    #                     actual_value: "String"
    #                   }
    #                 ],
    #                 missing_appendable_configuration_values: [
    #                   {
    #                     configuration_name: "String",
    #                     expected_value: "String",
    #                     actual_value: "String"
    #                   }
    #                 ],
    #                 unexpected_appendable_configuration_values: [
    #                   {
    #                     configuration_name: "String",
    #                     expected_value: "String",
    #                     actual_value: "String"
    #                   }
    #                 ],
    #                 incorrect_appendable_configuration_order: [
    #                   {
    #                     configuration_name: "String",
    #                     expected_value: "String",
    #                     actual_value: "String"
    #                   }
    #                 ],
    #                 missing_mergeable_configuration_values: [
    #                   {
    #                     configuration_name: "String",
    #                     expected_value: "String",
    #                     actual_value: "String"
    #                   }
    #                 ],
    #                 unexpected_mergeable_configuration_values: [
    #                   {
    #                     configuration_name: "String",
    #                     expected_value: "String",
    #                     actual_value: "String"
    #                   }
    #                 ]
    #               }
    #             }
    #           },
    #           not_visible: {
    #             reason: "String", # required
    #           }
    #         },
    #         remediation_issues: {
    #           # One of:
    #           issues: {
    #             "PolicyFirewallType" => {
    #               issue_type: "String",
    #               message: "String",
    #               corrective_action: "String"
    #             }
    #           },
    #           not_visible: {
    #             reason: "String", # required
    #           }
    #         },
    #         evaluated_at: Time.now
    #       }
    #     ]
    #   }
    # @return [Types::ListResourceSynchronizationStatusesOutput]
    def list_resource_synchronization_statuses(params = {}, options = {})
      request = build_request(:list_resource_synchronization_statuses, params)
      request.send_request(options)
    end

    # <p>Lists the snapshots of the specified rule.</p>
    # @param [Hash, Types::ListRuleSnapshotsInput] params
    # @option params [String] :rule_identifier
    #   <p>The identifier of the rule. This is the rule's Amazon Resource Name (ARN).</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call. Valid range: 1-100. To retrieve the remaining results, use the returned <code>nextToken</code> value in a subsequent call.</p>
    # @option params [String] :next_token
    #   <p>The token for the next page of results. To retrieve the next page, call the operation again and provide this value. When there are no more results, this value is null.</p>
    # @example List the snapshots of a rule
    #   # Lists the immutable snapshots that have been created for a rule.
    #   params = {
    #     rule_identifier: "arn:aws:network-security-manager:us-east-1:123456789012:rule:abc123",
    #     max_results: 10
    #   }
    #   options = {}
    #   response = client.list_rule_snapshots(params, options)
    #   response.to_h #=>
    #   {
    #     snapshots: [
    #       {
    #         rule_id: "abc123",
    #         rule_arn: "arn:aws:network-security-manager:us-east-1:123456789012:rule:abc123:2",
    #         rule_name: "block-known-bad-ips",
    #         firewall_type: WAF,
    #         rule_type: INSPECTION,
    #         status: ACTIVE,
    #         version: "2",
    #         updated_at: Time.parse("2026-08-20T12:00:00Z")
    #       },
    #       {
    #         rule_id: "abc123",
    #         rule_arn: "arn:aws:network-security-manager:us-east-1:123456789012:rule:abc123:3",
    #         rule_name: "block-known-bad-ips",
    #         firewall_type: WAF,
    #         rule_type: INSPECTION,
    #         status: ACTIVE,
    #         version: "3",
    #         updated_at: Time.parse("2026-08-21T09:30:00Z")
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     rule_identifier: "RuleIdentifier", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_rule_snapshots(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     snapshots: [ # required
    #       {
    #         rule_id: "RuleId", # required
    #         rule_arn: "RuleArn", # required
    #         rule_name: "RuleName", # required
    #         firewall_type: "WAF" # One of: ["WAF"],
    #         rule_type: "CONFIGURATION" # One of: ["CONFIGURATION", "INSPECTION"],
    #         status: "DRAFT" # One of: ["DRAFT", "ACTIVE", "DISABLED"],
    #         version: "EntityVersion",
    #         has_published_version: false,
    #         updated_at: Time.now
    #       }
    #     ]
    #   }
    # @return [Types::ListRuleSnapshotsOutput]
    def list_rule_snapshots(params = {}, options = {})
      request = build_request(:list_rule_snapshots, params)
      request.send_request(options)
    end

    # <p>Lists the rules in the account. You can filter the results by status and page through them using <code>maxResults</code> and <code>nextToken</code>.</p>
    # @param [Hash, Types::ListRulesInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call. Valid range: 1-100. To retrieve the remaining results, use the returned <code>nextToken</code> value in a subsequent call.</p>
    # @option params [String] :next_token
    #   <p>The token for the next page of results. To retrieve the next page, call the operation again and provide this value. When there are no more results, this value is null.</p>
    # @option params [String] :status
    #   <p>Filters the results by status, either <code>ACTIVE</code> or <code>DRAFT</code>.</p>
    # @example List rules
    #   # Lists the published rules in the account, one page at a time.
    #   params = {
    #     max_results: 10,
    #     status: ACTIVE
    #   }
    #   options = {}
    #   response = client.list_rules(params, options)
    #   response.to_h #=>
    #   {
    #     rules: [
    #       {
    #         rule_id: "abc123",
    #         rule_arn: "arn:aws:network-security-manager:us-east-1:123456789012:rule:abc123",
    #         rule_name: "block-known-bad-ips",
    #         firewall_type: WAF,
    #         rule_type: INSPECTION,
    #         status: ACTIVE,
    #         version: "2",
    #         has_published_version: true,
    #         updated_at: Time.parse("2026-08-20T12:00:00Z")
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken",
    #     status: "ACTIVE" # One of: ["ACTIVE", "DRAFT", "DISABLED"]
    #   }
    #   options = {}
    #   response = client.list_rules(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     rules: [ # required
    #       {
    #         rule_id: "RuleId", # required
    #         rule_arn: "RuleArn", # required
    #         rule_name: "RuleName", # required
    #         firewall_type: "WAF" # One of: ["WAF"],
    #         rule_type: "CONFIGURATION" # One of: ["CONFIGURATION", "INSPECTION"],
    #         status: "DRAFT" # One of: ["DRAFT", "ACTIVE", "DISABLED"],
    #         version: "EntityVersion",
    #         has_published_version: false,
    #         updated_at: Time.now
    #       }
    #     ]
    #   }
    # @return [Types::ListRulesOutput]
    def list_rules(params = {}, options = {})
      request = build_request(:list_rules, params)
      request.send_request(options)
    end

    # <p>Lists the snapshots of the specified scope.</p>
    # @param [Hash, Types::ListScopeSnapshotsInput] params
    # @option params [String] :scope_identifier
    #   <p>The identifier of the scope. This is the scope's Amazon Resource Name (ARN).</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call. Valid range: 1-100. To retrieve the remaining results, use the returned <code>nextToken</code> value in a subsequent call.</p>
    # @option params [String] :next_token
    #   <p>The token for the next page of results. To retrieve the next page, call the operation again and provide this value. When there are no more results, this value is null.</p>
    # @example List the snapshots of a scope
    #   # Lists the immutable snapshots that have been created for a scope.
    #   params = {
    #     scope_identifier: "arn:aws:network-security-manager:us-east-1:123456789012:scope:abc123",
    #     max_results: 10
    #   }
    #   options = {}
    #   response = client.list_scope_snapshots(params, options)
    #   response.to_h #=>
    #   {
    #     snapshots: [
    #       {
    #         scope_id: "abc123",
    #         scope_arn: "arn:aws:network-security-manager:us-east-1:123456789012:scope:abc123:2",
    #         scope_name: "production-web-apps",
    #         status: ACTIVE,
    #         version: "2",
    #         updated_at: Time.parse("2026-08-20T12:00:00Z")
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     scope_identifier: "ScopeIdentifier", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_scope_snapshots(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     snapshots: [ # required
    #       {
    #         scope_id: "ScopeId", # required
    #         scope_arn: "ScopeArn", # required
    #         scope_name: "ScopeName",
    #         status: "DRAFT" # One of: ["DRAFT", "ACTIVE", "DISABLED"],
    #         version: "EntityVersion",
    #         has_published_version: false,
    #         updated_at: Time.now
    #       }
    #     ]
    #   }
    # @return [Types::ListScopeSnapshotsOutput]
    def list_scope_snapshots(params = {}, options = {})
      request = build_request(:list_scope_snapshots, params)
      request.send_request(options)
    end

    # <p>Lists the scopes in the account. You can filter the results by status and page through them using <code>maxResults</code> and <code>nextToken</code>.</p>
    # @param [Hash, Types::ListScopesInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call. Valid range: 1-100. To retrieve the remaining results, use the returned <code>nextToken</code> value in a subsequent call.</p>
    # @option params [String] :next_token
    #   <p>The token for the next page of results. To retrieve the next page, call the operation again and provide this value. When there are no more results, this value is null.</p>
    # @option params [String] :status
    #   <p>Filters the results by status: <code>ACTIVE</code>, <code>DRAFT</code>, or <code>DISABLED</code>.</p>
    # @example List scopes
    #   # Lists the published scopes in the account, one page at a time.
    #   params = {
    #     max_results: 10,
    #     status: ACTIVE
    #   }
    #   options = {}
    #   response = client.list_scopes(params, options)
    #   response.to_h #=>
    #   {
    #     scopes: [
    #       {
    #         scope_id: "abc123",
    #         scope_arn: "arn:aws:network-security-manager:us-east-1:123456789012:scope:abc123",
    #         scope_name: "production-web-apps",
    #         status: ACTIVE,
    #         version: "2",
    #         has_published_version: true,
    #         updated_at: Time.parse("2026-08-20T12:00:00Z")
    #       }
    #     ],
    #     next_token: "eyJsYXN0RXZhbHVhdGVkS2V5IjoiYWJjMTIzIn0="
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken",
    #     status: "ACTIVE" # One of: ["ACTIVE", "DRAFT", "DISABLED"]
    #   }
    #   options = {}
    #   response = client.list_scopes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     scopes: [ # required
    #       {
    #         scope_id: "ScopeId", # required
    #         scope_arn: "ScopeArn", # required
    #         scope_name: "ScopeName",
    #         status: "DRAFT" # One of: ["DRAFT", "ACTIVE", "DISABLED"],
    #         version: "EntityVersion",
    #         has_published_version: false,
    #         updated_at: Time.now
    #       }
    #     ]
    #   }
    # @return [Types::ListScopesOutput]
    def list_scopes(params = {}, options = {})
      request = build_request(:list_scopes, params)
      request.send_request(options)
    end

    # <p>Lists the tags associated with the specified resource.</p>
    # @param [Hash, Types::ListTagsForResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource to list tags for. The ARN must not include a <code>:DRAFT</code> qualifier.</p>
    # @example List the tags on a resource
    #   # Lists the tags associated with a Network Security Manager resource.
    #   params = {
    #     resource_arn: "arn:aws:network-security-manager:us-east-1:123456789012:policy:xyz789"
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    #   response.to_h #=>
    #   {
    #     tags: {
    #       "Environment" => "Production",
    #       "Team" => "NetworkSecurity"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
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
    # @return [Types::ListTagsForResourceOutput]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Lists the snapshots of the specified template.</p>
    # @param [Hash, Types::ListTemplateSnapshotsInput] params
    # @option params [String] :template_identifier
    #   <p>The identifier of the template. This is the template's Amazon Resource Name (ARN).</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call. Valid range: 1-100. To retrieve the remaining results, use the returned <code>nextToken</code> value in a subsequent call.</p>
    # @option params [String] :next_token
    #   <p>The token for the next page of results. To retrieve the next page, call the operation again and provide this value. When there are no more results, this value is null.</p>
    # @example List the snapshots of a template
    #   # Lists the immutable snapshots that have been created for a template.
    #   params = {
    #     template_identifier: "arn:aws:network-security-manager:us-east-1:123456789012:template:xyz789",
    #     max_results: 10
    #   }
    #   options = {}
    #   response = client.list_template_snapshots(params, options)
    #   response.to_h #=>
    #   {
    #     snapshots: [
    #       {
    #         template_id: "xyz789",
    #         template_arn: "arn:aws:network-security-manager:us-east-1:123456789012:template:xyz789:2",
    #         template_name: "standard-waf-template",
    #         status: ACTIVE,
    #         version: "2",
    #         firewall_type: WAF,
    #         updated_at: Time.parse("2026-08-20T12:00:00Z")
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     template_identifier: "TemplateIdentifier", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_template_snapshots(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     snapshots: [ # required
    #       {
    #         template_id: "TemplateId", # required
    #         template_arn: "TemplateArn", # required
    #         template_name: "TemplateName", # required
    #         status: "DRAFT" # One of: ["DRAFT", "ACTIVE", "DISABLED"],
    #         version: "EntityVersion",
    #         has_published_version: false,
    #         firewall_type: "WAF" # One of: ["WAF"],
    #         updated_at: Time.now
    #       }
    #     ]
    #   }
    # @return [Types::ListTemplateSnapshotsOutput]
    def list_template_snapshots(params = {}, options = {})
      request = build_request(:list_template_snapshots, params)
      request.send_request(options)
    end

    # <p>Lists the templates in the account. You can filter the results by status and page through them using <code>maxResults</code> and <code>nextToken</code>.</p>
    # @param [Hash, Types::ListTemplatesInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call. Valid range: 1-100. To retrieve the remaining results, use the returned <code>nextToken</code> value in a subsequent call.</p>
    # @option params [String] :next_token
    #   <p>The token for the next page of results. To retrieve the next page, call the operation again and provide this value. When there are no more results, this value is null.</p>
    # @option params [String] :status
    #   <p>Filters the results by status, either <code>ACTIVE</code> or <code>DRAFT</code>.</p>
    # @example List templates
    #   # Lists the published templates in the account, one page at a time.
    #   params = {
    #     max_results: 10,
    #     status: ACTIVE
    #   }
    #   options = {}
    #   response = client.list_templates(params, options)
    #   response.to_h #=>
    #   {
    #     templates: [
    #       {
    #         template_id: "xyz789",
    #         template_arn: "arn:aws:network-security-manager:us-east-1:123456789012:template:xyz789",
    #         template_name: "standard-waf-template",
    #         status: ACTIVE,
    #         version: "2",
    #         has_published_version: true,
    #         firewall_type: WAF,
    #         updated_at: Time.parse("2026-08-20T12:00:00Z")
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken",
    #     status: "ACTIVE" # One of: ["ACTIVE", "DRAFT", "DISABLED"]
    #   }
    #   options = {}
    #   response = client.list_templates(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     templates: [ # required
    #       {
    #         template_id: "TemplateId", # required
    #         template_arn: "TemplateArn", # required
    #         template_name: "TemplateName", # required
    #         status: "DRAFT" # One of: ["DRAFT", "ACTIVE", "DISABLED"],
    #         version: "EntityVersion",
    #         has_published_version: false,
    #         firewall_type: "WAF" # One of: ["WAF"],
    #         updated_at: Time.now
    #       }
    #     ]
    #   }
    # @return [Types::ListTemplatesOutput]
    def list_templates(params = {}, options = {})
      request = build_request(:list_templates, params)
      request.send_request(options)
    end

    # <p>Sets the AWS account that serves as an AWS Network Security Manager administrator account, and optionally configures the scope of resources that the administrator can manage.</p> <p>You can't set an administrator account again immediately after you remove it, or while the service creates its service-linked role. Retry the request after a few minutes.</p>
    # @param [Hash, Types::PutAdminAccountRequest] params
    # @option params [String] :account_id
    #   <p>The AWS account ID to set as the AWS Network Security Manager administrator account.</p>
    # @option params [Integer] :priority
    #   <p>The priority to assign to the administrator account.</p>
    # @option params [Types::AdminScopeInput] :admin_scope
    #   <p>The scope of accounts, organizational units, and firewall types that the administrator can manage.</p>
    # @example Designate an administrator account
    #   # Designates an account as a Network Security Manager administrator, scoped to a specific organizational unit and the WAF firewall type.
    #   params = {
    #     account_id: "234567890123",
    #     priority: 2,
    #     admin_scope: {
    #       scope_filter: {
    #     "includeOnly" => {
    #       "organizationalUnits" => [ou-abcd-12345678]
    #     }
    #   },
    #       firewall_type_scope: {
    #         all_firewall_types_enabled: false,
    #         firewall_types: [
    #           WAF
    #         ]
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.put_admin_account(params, options)
    #   response.to_h #=>
    #   {
    #     admin_account_details: {
    #       admin_account: "234567890123",
    #       priority: 2,
    #       admin_scope: {
    #         scope_filter: {
    #     "includeOnly" => {
    #       "organizationalUnits" => [{
    #         "ouId" => ou-abcd-12345678,
    #         "name" => Production
    #       }]
    #     }
    #   },
    #         firewall_type_scope: {
    #           all_firewall_types_enabled: false,
    #           firewall_types: [
    #             WAF
    #           ]
    #         }
    #       },
    #       status: ONBOARDED
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId", # required
    #     priority: 1, # required
    #     admin_scope: {
    #       scope_filter: {
    #         # One of:
    #         include_all: {
    #         },
    #         include_only: {
    #           accounts: ["AccountId"],
    #           organizational_units: ["OrganizationalUnitId"]
    #         },
    #         exclude_only: {
    #           accounts: ["AccountId"],
    #           organizational_units: ["OrganizationalUnitId"]
    #         }
    #       },
    #       firewall_type_scope: {
    #         all_firewall_types_enabled: false,
    #         firewall_types: ["WAF" # One of: ["WAF", "SHIELD_ADVANCED"]]
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.put_admin_account(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     admin_account_details: {
    #       admin_account: "AccountId", # required
    #       priority: 1, # required
    #       admin_scope: {
    #         scope_filter: {
    #           # One of:
    #           include_all: {
    #           },
    #           include_only: {
    #             accounts: [
    #               {
    #                 account_id: "AccountId", # required
    #                 name: "SensitiveAccountName",
    #                 email: "SensitiveAccountEmail"
    #               }
    #             ],
    #             organizational_units: [
    #               {
    #                 ou_id: "OrganizationalUnitId", # required
    #                 name: "String"
    #               }
    #             ]
    #           },
    #           exclude_only: {
    #             accounts: [
    #               {
    #                 account_id: "AccountId", # required
    #                 name: "SensitiveAccountName",
    #                 email: "SensitiveAccountEmail"
    #               }
    #             ],
    #             organizational_units: [
    #               {
    #                 ou_id: "OrganizationalUnitId", # required
    #                 name: "String"
    #               }
    #             ]
    #           }
    #         },
    #         firewall_type_scope: {
    #           all_firewall_types_enabled: false,
    #           firewall_types: ["WAF" # One of: ["WAF", "SHIELD_ADVANCED"]]
    #         }
    #       },
    #       status: "ONBOARDED" # One of: ["ONBOARDED", "OFFBOARDED"]
    #     }
    #   }
    # @return [Types::PutAdminAccountResponse]
    def put_admin_account(params = {}, options = {})
      request = build_request(:put_admin_account, params)
      request.send_request(options)
    end

    # <p>Adds or overwrites the specified tags on the given resource.</p>
    # @param [Hash, Types::TagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource to tag. The ARN must not include a <code>:DRAFT</code> qualifier.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to add to the resource.</p>
    # @example Tag a resource
    #   # Adds tags to a Network Security Manager resource.
    #   params = {
    #     resource_arn: "arn:aws:network-security-manager:us-east-1:123456789012:policy:xyz789",
    #     tags: {
    #       "Environment" => "Production",
    #       "Team" => "NetworkSecurity"
    #     }
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::TagResourceOutput]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Removes the specified tags from the given resource.</p>
    # @param [Hash, Types::UntagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource to remove tags from. The ARN must not include a <code>:DRAFT</code> qualifier.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The keys of the tags to remove from the resource.</p>
    # @example Remove tags from a resource
    #   # Removes the specified tag keys from a Network Security Manager resource.
    #   params = {
    #     resource_arn: "arn:aws:network-security-manager:us-east-1:123456789012:policy:xyz789",
    #     tag_keys: [
    #       "Environment"
    #     ]
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    #   response.to_h #=>
    #   {}
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
    # @return [Types::UntagResourceOutput]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <p>Updates the specified deployment. To prevent conflicting concurrent updates, provide the current <code>updateToken</code>. Use <code>isPublished</code> to publish the update or keep the deployment as a draft.</p>
    # @param [Hash, Types::UpdateDeploymentInput] params
    # @option params [String] :deployment_identifier
    #   <p>The identifier of the deployment. This is the deployment's Amazon Resource Name (ARN).</p>
    # @option params [String] :update_token
    #   <p>A token used for optimistic concurrency control. Each read and write returns an <code>updateToken</code>. Provide the most recent value on your next update to detect and prevent conflicting concurrent modifications.</p>
    # @option params [String] :deployment_description
    #   <p>A description of the deployment.</p>
    # @option params [Types::DeploymentConfiguration] :deployment_configuration
    #   <p>The configuration settings for the deployment.</p>
    # @option params [Array<Types::PolicyReference>] :associated_policy_list
    #   <p>The policies associated with the deployment.</p>
    # @option params [Array<Types::ScopeReference>] :associated_scope_list
    #   <p>The scope associated with the deployment. A deployment has exactly one scope.</p>
    # @option params [Boolean] :is_published
    #   <p>Specifies whether to publish the resource. When <code>true</code>, the resource is saved in published (<code>ACTIVE</code>) state. When <code>false</code>, it is saved as a draft (<code>DRAFT</code>).</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive token that you provide to ensure that the operation completes no more than one time. If you retry a request with the same client token and the same parameters, the service returns the result of the original successful request.</p>
    # @example Update a deployment and publish it
    #   # Updates the deployment's associations and publishes the change. The response includes deploymentCoverage showing which resource types the associated policies can protect. The updateToken from the most recent read is required for optimistic locking.
    #   params = {
    #     deployment_identifier: "arn:aws:network-security-manager:us-east-1:123456789012:deployment:def456",
    #     update_token: "f4a5b6c7-7d8e-4f9a-8b1c-1d2e3f4a5b6c",
    #     deployment_description: "Production deployment for US East 1 region - updated",
    #     associated_policy_list: [
    #       {
    #         policy_identifier: "arn:aws:network-security-manager:us-east-1:123456789012:policy:xyz789"
    #       }
    #     ],
    #     associated_scope_list: [
    #       {
    #         scope_identifier: "arn:aws:network-security-manager:us-east-1:123456789012:scope:abc123"
    #       }
    #     ],
    #     deployment_configuration: {
    #       enable_cross_account_visibility: true
    #     },
    #     is_published: true
    #   }
    #   options = {}
    #   response = client.update_deployment(params, options)
    #   response.to_h #=>
    #   {
    #     deployment_id: "def456",
    #     deployment_arn: "arn:aws:network-security-manager:us-east-1:123456789012:deployment:def456",
    #     deployment_name: "prod-us-east-1-deployment",
    #     deployment_description: "Production deployment for US East 1 region - updated",
    #     status: ACTIVE,
    #     deployment_configuration: {
    #       enable_cross_account_visibility: true
    #     },
    #     associated_policy_list: [
    #       {
    #         policy_arn: "arn:aws:network-security-manager:us-east-1:123456789012:policy:xyz789"
    #       }
    #     ],
    #     associated_scope_list: [
    #       {
    #         scope_arn: "arn:aws:network-security-manager:us-east-1:123456789012:scope:abc123"
    #       }
    #     ],
    #     version: "2",
    #     update_token: "a5b6c7d8-8e9f-4a0b-9c1d-2e3f4a5b6c7d",
    #     is_snapshot: false,
    #     has_published_version: true,
    #     deployment_coverage: [
    #       {
    #         firewall_type: WAF,
    #         policy_arns: [
    #           "arn:aws:network-security-manager:us-east-1:123456789012:policy:xyz789"
    #         ],
    #         in_scope_resource_types: [
    #           AWS::ElasticLoadBalancingV2::LoadBalancer::application,
    #           AWS::CloudFront::Distribution
    #         ]
    #       }
    #     ],
    #     updated_at: Time.parse("2026-08-20T12:00:00Z")
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     deployment_identifier: "DeploymentIdentifier", # required
    #     update_token: "UpdateToken", # required
    #     deployment_description: "Description",
    #     deployment_configuration: {
    #       enable_cross_account_visibility: false, # required
    #     },
    #     associated_policy_list: [
    #       {
    #         policy_identifier: "PolicyIdentifier", # required
    #       }
    #     ],
    #     associated_scope_list: [
    #       {
    #         scope_identifier: "ScopeIdentifier", # required
    #       }
    #     ],
    #     is_published: false, # required
    #     client_token: "IdempotencyToken"
    #   }
    #   options = {}
    #   response = client.update_deployment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     deployment_id: "DeploymentId", # required
    #     deployment_arn: "DeploymentArn", # required
    #     deployment_name: "DeploymentName", # required
    #     deployment_description: "Description",
    #     status: "DRAFT" # One of: ["DRAFT", "ACTIVE", "DISABLED"], # required
    #     deployment_configuration: {
    #       enable_cross_account_visibility: false, # required
    #     },
    #     associated_policy_list: [ # required
    #       {
    #         policy_arn: "PolicyArn", # required
    #       }
    #     ],
    #     associated_scope_list: [ # required
    #       {
    #         scope_arn: "ScopeArn", # required
    #       }
    #     ],
    #     version: "EntityVersion", # required
    #     update_token: "UpdateToken",
    #     is_snapshot: false,
    #     has_published_version: false,
    #     deployment_coverage: [
    #       {
    #         firewall_type: "WAF" # One of: ["WAF", "SHIELD_ADVANCED"], # required
    #         policy_arns: ["PolicyArn"], # required
    #         in_scope_resource_types: ["AWS::ApiGateway::Stage" # One of: ["AWS::ApiGateway::Stage", "AWS::CloudFront::Distribution", "AWS::EC2::EIP", "AWS::ElasticLoadBalancingV2::LoadBalancer::application", "AWS::ElasticLoadBalancing::LoadBalancer"]], # required
    #       }
    #     ],
    #     warnings: [
    #       {
    #         code: "String", # required
    #         policy_arn: "PolicyArn", # required
    #         message: "String", # required
    #       }
    #     ],
    #     updated_at: Time.now
    #   }
    # @return [Types::UpdateDeploymentOutput]
    def update_deployment(params = {}, options = {})
      request = build_request(:update_deployment, params)
      request.send_request(options)
    end

    # <p>Updates the specified policy. To prevent conflicting concurrent updates, provide the current <code>updateToken</code>. Use <code>isPublished</code> to publish the update or keep the policy as a draft.</p>
    # @param [Hash, Types::UpdatePolicyInput] params
    # @option params [String] :policy_identifier
    #   <p>The identifier of the policy. This is the policy's Amazon Resource Name (ARN).</p>
    # @option params [String] :update_token
    #   <p>A token used for optimistic concurrency control. Each read and write returns an <code>updateToken</code>. Provide the most recent value on your next update to detect and prevent conflicting concurrent modifications.</p>
    # @option params [String] :policy_description
    #   <p>A description of the policy.</p>
    # @option params [Integer] :priority
    #   <p>The priority of the resource. A lower number indicates a higher priority.</p>
    # @option params [Array<Types::TemplateOrRuleReference>] :associated_template_and_rule_list
    #   <p>The templates and rules to associate with the policy. For AWS WAF policies, specify 1 to 100 templates or rules, of which at most 2 can be templates. For AWS Shield Advanced policies, this list must be empty.</p>
    # @option params [Types::PolicyConfiguration] :policy_configuration
    #   <p>The configuration settings that control the policy's behavior, including remediation and firewall-type-specific settings.</p>
    # @option params [Boolean] :is_published
    #   <p>Specifies whether to publish the resource. When <code>true</code>, the resource is saved in published (<code>ACTIVE</code>) state. When <code>false</code>, it is saved as a draft (<code>DRAFT</code>).</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive token that you provide to ensure that the operation completes no more than one time. If you retry a request with the same client token and the same parameters, the service returns the result of the original successful request.</p>
    # @example Update a policy and publish it
    #   # Updates the policy's description, priority, and configuration and publishes the change. The updateToken from the most recent read is required for optimistic locking.
    #   params = {
    #     policy_identifier: "arn:aws:network-security-manager:us-east-1:123456789012:policy:xyz789",
    #     update_token: "e3f4a5b6-6c7d-4e8f-9a0b-0c1d2e3f4a5b",
    #     policy_description: "WAF policy for web application protection - updated",
    #     priority: 2,
    #     associated_template_and_rule_list: [
    #       {
    #     "templateIdentifier" => arn:aws:network-security-manager:us-east-1:123456789012:template:xyz789
    #   }
    #     ],
    #     policy_configuration: {
    #       remediation_enabled: true,
    #       resources_clean_up: false,
    #       waf_config: {
    #         existing_customer_web_acl_resolution: NO_REMEDIATION,
    #         conflict_resolution: MERGE_WHERE_APPLICABLE
    #       }
    #     },
    #     is_published: true
    #   }
    #   options = {}
    #   response = client.update_policy(params, options)
    #   response.to_h #=>
    #   {
    #     policy_id: "xyz789",
    #     policy_arn: "arn:aws:network-security-manager:us-east-1:123456789012:policy:xyz789",
    #     policy_name: "web-app-waf-policy",
    #     policy_description: "WAF policy for web application protection - updated",
    #     status: ACTIVE,
    #     priority: 2,
    #     associated_template_and_rule_list: [
    #       {
    #     "templateArn" => arn:aws:network-security-manager:us-east-1:123456789012:template:xyz789
    #   }
    #     ],
    #     version: "2",
    #     update_token: "f4a5b6c7-7d8e-4f9a-8b1c-1d2e3f4a5b6c",
    #     is_snapshot: false,
    #     has_published_version: true,
    #     firewall_type: WAF,
    #     policy_configuration: {
    #       remediation_enabled: true,
    #       resources_clean_up: false,
    #       waf_config: {
    #         existing_customer_web_acl_resolution: NO_REMEDIATION,
    #         conflict_resolution: MERGE_WHERE_APPLICABLE
    #       }
    #     },
    #     updated_at: Time.parse("2026-08-20T12:00:00Z")
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_identifier: "PolicyIdentifier", # required
    #     update_token: "UpdateToken", # required
    #     policy_description: "Description",
    #     priority: 1,
    #     associated_template_and_rule_list: [{
    #       # One of:
    #       template_identifier: "TemplateIdentifier",
    #       rule_identifier: "RuleIdentifier"
    #     }],
    #     policy_configuration: {
    #       remediation_enabled: false, # required
    #       resources_clean_up: false, # required
    #       waf_config: {
    #         existing_customer_web_acl_resolution: "RETROFIT" # One of: ["RETROFIT", "OVERRIDE_ASSOCIATION", "NO_REMEDIATION"], # required
    #         conflict_resolution: "MERGE_WHERE_APPLICABLE" # One of: ["MERGE_WHERE_APPLICABLE"], # required
    #       }
    #     },
    #     is_published: false, # required
    #     client_token: "IdempotencyToken"
    #   }
    #   options = {}
    #   response = client.update_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy_id: "PolicyId", # required
    #     policy_arn: "PolicyArn", # required
    #     policy_name: "PolicyName", # required
    #     policy_description: "Description",
    #     status: "DRAFT" # One of: ["DRAFT", "ACTIVE", "DISABLED"], # required
    #     priority: 1, # required
    #     associated_template_and_rule_list: [{ # required
    #       # One of:
    #       template_arn: "TemplateArn",
    #       rule_arn: "RuleArn"
    #     }],
    #     version: "EntityVersion", # required
    #     update_token: "UpdateToken",
    #     is_snapshot: false,
    #     has_published_version: false,
    #     firewall_type: "WAF" # One of: ["WAF", "SHIELD_ADVANCED"], # required
    #     policy_configuration: {
    #       remediation_enabled: false, # required
    #       resources_clean_up: false, # required
    #       waf_config: {
    #         existing_customer_web_acl_resolution: "RETROFIT" # One of: ["RETROFIT", "OVERRIDE_ASSOCIATION", "NO_REMEDIATION"], # required
    #         conflict_resolution: "MERGE_WHERE_APPLICABLE" # One of: ["MERGE_WHERE_APPLICABLE"], # required
    #       }
    #     },
    #     updated_at: Time.now
    #   }
    # @return [Types::UpdatePolicyOutput]
    def update_policy(params = {}, options = {})
      request = build_request(:update_policy, params)
      request.send_request(options)
    end

    # <p>Updates the specified rule. To prevent conflicting concurrent updates, provide the current <code>updateToken</code>. Use <code>isPublished</code> to publish the update or keep the rule as a draft.</p>
    # @param [Hash, Types::UpdateRuleInput] params
    # @option params [String] :rule_identifier
    #   <p>The identifier of the rule. This is the rule's Amazon Resource Name (ARN).</p>
    # @option params [String] :update_token
    #   <p>A token used for optimistic concurrency control. Each read and write returns an <code>updateToken</code>. Provide the most recent value on your next update to detect and prevent conflicting concurrent modifications.</p>
    # @option params [String] :rule_type
    #   <p>The type of the rule. <code>CONFIGURATION</code> rules contain firewall settings, and <code>INSPECTION</code> rules contain rule groups.</p>
    # @option params [String] :rule_description
    #   <p>A description of the rule.</p>
    # @option params [JSON] :configuration
    #   <p>The firewall configuration for the rule, as a JSON document. The structure depends on the rule's firewall type and rule type. For an AWS WAF <code>INSPECTION</code> rule, provide an AWS WAF rule group. For an AWS WAF <code>CONFIGURATION</code> rule, provide a single web ACL setting, such as <code>DefaultAction</code> or <code>VisibilityConfig</code>; use <code>wafConfigDataType</code> to declare which setting the document contains. For the schema of each setting and complete examples, see <a href="https://docs.aws.amazon.com/network-security-manager/latest/devguide/what-is.html">Writing rule configurations</a> in the <i>AWS Network Security Manager Developer Guide</i>.</p>
    # @option params [Boolean] :is_published
    #   <p>Specifies whether to publish the resource. When <code>true</code>, the resource is saved in published (<code>ACTIVE</code>) state. When <code>false</code>, it is saved as a draft (<code>DRAFT</code>).</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive token that you provide to ensure that the operation completes no more than one time. If you retry a request with the same client token and the same parameters, the service returns the result of the original successful request.</p>
    # @example Update a rule and publish it
    #   # Updates the rule's description and configuration and publishes the change. The updateToken from the most recent read is required for optimistic locking.
    #   params = {
    #     rule_identifier: "arn:aws:network-security-manager:us-east-1:123456789012:rule:abc123",
    #     update_token: "c1d2e3f4-4a5b-4c6d-9e7f-8a9b0c1d2e3f",
    #     rule_type: INSPECTION,
    #     rule_description: "Blocks requests from known malicious IP addresses - updated list",
    #     configuration: {},
    #     is_published: true
    #   }
    #   options = {}
    #   response = client.update_rule(params, options)
    #   response.to_h #=>
    #   {
    #     rule_id: "abc123",
    #     rule_arn: "arn:aws:network-security-manager:us-east-1:123456789012:rule:abc123",
    #     rule_name: "block-known-bad-ips",
    #     firewall_type: WAF,
    #     rule_type: INSPECTION,
    #     rule_description: "Blocks requests from known malicious IP addresses - updated list",
    #     configuration: {},
    #     status: ACTIVE,
    #     version: "2",
    #     update_token: "d2e3f4a5-5b6c-4d7e-8f9a-9b0c1d2e3f4a",
    #     is_snapshot: false,
    #     has_published_version: true,
    #     updated_at: Time.parse("2026-08-20T12:00:00Z")
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     rule_identifier: "RuleIdentifier", # required
    #     update_token: "UpdateToken", # required
    #     rule_type: "CONFIGURATION" # One of: ["CONFIGURATION", "INSPECTION"],
    #     rule_description: "Description",
    #     configuration: ""null"",
    #     is_published: false, # required
    #     client_token: "IdempotencyToken"
    #   }
    #   options = {}
    #   response = client.update_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rule_id: "RuleId", # required
    #     rule_arn: "RuleArn", # required
    #     rule_name: "RuleName", # required
    #     firewall_type: "WAF" # One of: ["WAF"], # required
    #     rule_type: "CONFIGURATION" # One of: ["CONFIGURATION", "INSPECTION"],
    #     rule_description: "Description",
    #     configuration: ""null"", # required
    #     status: "DRAFT" # One of: ["DRAFT", "ACTIVE", "DISABLED"], # required
    #     version: "EntityVersion", # required
    #     update_token: "UpdateToken",
    #     is_snapshot: false,
    #     has_published_version: false,
    #     updated_at: Time.now
    #   }
    # @return [Types::UpdateRuleOutput]
    def update_rule(params = {}, options = {})
      request = build_request(:update_rule, params)
      request.send_request(options)
    end

    # <p>Updates the specified scope. To prevent conflicting concurrent updates, provide the current <code>updateToken</code>. Use <code>isPublished</code> to publish the update or keep the scope as a draft.</p>
    # @param [Hash, Types::UpdateScopeInput] params
    # @option params [String] :scope_identifier
    #   <p>The identifier of the scope. This is the scope's Amazon Resource Name (ARN).</p>
    # @option params [String] :update_token
    #   <p>A token used for optimistic concurrency control. Each read and write returns an <code>updateToken</code>. Provide the most recent value on your next update to detect and prevent conflicting concurrent modifications.</p>
    # @option params [String] :scope_description
    #   <p>A description of the scope.</p>
    # @option params [Types::ScopeConfiguration] :scope_configuration
    #   <p>The configuration that defines which accounts and resources are in scope. If you don't include this member, the scope keeps its existing configuration.</p> <p>A new configuration can change which accounts and resources are selected, but it can't add or remove the account filter itself: a scope created for multi-account use stays multi-account, and a scope created for single-account use stays single-account.</p>
    # @option params [Boolean] :is_published
    #   <p>Specifies whether to publish the resource. When <code>true</code>, the resource is saved in published (<code>ACTIVE</code>) state. When <code>false</code>, it is saved as a draft (<code>DRAFT</code>).</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive token that you provide to ensure that the operation completes no more than one time. If you retry a request with the same client token and the same parameters, the service returns the result of the original successful request.</p>
    # @example Update a scope and publish it
    #   # Updates the scope's description and configuration and publishes the change. The updateToken from the most recent read is required for optimistic locking.
    #   params = {
    #     scope_identifier: "arn:aws:network-security-manager:us-east-1:123456789012:scope:abc123",
    #     update_token: "b0c4d1e2-3f4a-4b5c-8d6e-7f8a9b0c1d2e",
    #     scope_description: "Scope covering all production web application resources in US East 1",
    #     scope_configuration: {
    #       account_filter: {
    #     "includeAll" => {}
    #   },
    #       resource_scopes: {
    #       }
    #     },
    #     is_published: true
    #   }
    #   options = {}
    #   response = client.update_scope(params, options)
    #   response.to_h #=>
    #   {
    #     scope_id: "abc123",
    #     scope_arn: "arn:aws:network-security-manager:us-east-1:123456789012:scope:abc123",
    #     scope_name: "production-web-apps",
    #     scope_description: "Scope covering all production web application resources in US East 1",
    #     scope_configuration: {
    #       account_filter: {
    #     "includeAll" => {}
    #   },
    #       resource_scopes: {
    #       }
    #     },
    #     status: ACTIVE,
    #     version: "2",
    #     update_token: "c1d2e3f4-4a5b-4c6d-9e7f-8a9b0c1d2e3f",
    #     is_snapshot: false,
    #     has_published_version: true,
    #     updated_at: Time.parse("2026-08-20T12:00:00Z")
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     scope_identifier: "ScopeIdentifier", # required
    #     update_token: "UpdateToken", # required
    #     scope_description: "Description",
    #     scope_configuration: {
    #       account_filter: {
    #         # One of:
    #         include_all: {
    #         },
    #         include: {
    #           account_ids: ["AccountId"],
    #           organizational_units: ["OrganizationalUnit"]
    #         },
    #         exclude: {
    #           account_ids: ["AccountId"],
    #           organizational_units: ["OrganizationalUnit"]
    #         }
    #       },
    #       resource_scopes: { # required
    #         "ScopeResourceType" => {
    #           include_all: false,
    #           include: {
    #             explicit_arns: ["Arn"],
    #             expression: {
    #               # One of:
    #               criteria: {
    #                 # One of:
    #                 tags: {
    #                   "String" => "String"
    #                 },
    #                 alb_config: {
    #                   scheme: "internet-facing" # One of: ["internet-facing", "internal"],
    #                   ip_address_type: "ipv4" # One of: ["ipv4", "dualstack", "dualstack-without-public-ipv4"]
    #                 }
    #               },
    #               and: [{
    #                 # recursive ResourceLogicalExpression
    #               }],
    #               or: [{
    #                 # recursive ResourceLogicalExpression
    #               }],
    #               not: {
    #                 # recursive ResourceLogicalExpression
    #               }
    #             }
    #           },
    #           exclude: {
    #             explicit_arns: ["Arn"],
    #             expression: {
    #               # One of:
    #               criteria: {
    #                 # One of:
    #                 tags: {
    #                   "String" => "String"
    #                 },
    #                 alb_config: {
    #                   scheme: "internet-facing" # One of: ["internet-facing", "internal"],
    #                   ip_address_type: "ipv4" # One of: ["ipv4", "dualstack", "dualstack-without-public-ipv4"]
    #                 }
    #               },
    #               and: [{
    #                 # recursive ResourceLogicalExpression
    #               }],
    #               or: [{
    #                 # recursive ResourceLogicalExpression
    #               }],
    #               not: {
    #                 # recursive ResourceLogicalExpression
    #               }
    #             }
    #           }
    #         }
    #       }
    #     },
    #     is_published: false, # required
    #     client_token: "IdempotencyToken"
    #   }
    #   options = {}
    #   response = client.update_scope(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     scope_id: "ScopeId", # required
    #     scope_arn: "ScopeArn", # required
    #     scope_name: "ScopeName", # required
    #     scope_description: "Description",
    #     scope_configuration: {
    #       account_filter: {
    #         # One of:
    #         include_all: {
    #         },
    #         include: {
    #           account_ids: ["AccountId"],
    #           organizational_units: ["OrganizationalUnit"]
    #         },
    #         exclude: {
    #           account_ids: ["AccountId"],
    #           organizational_units: ["OrganizationalUnit"]
    #         }
    #       },
    #       resource_scopes: { # required
    #         "ScopeResourceType" => {
    #           include_all: false,
    #           include: {
    #             explicit_arns: ["Arn"],
    #             expression: {
    #               # One of:
    #               criteria: {
    #                 # One of:
    #                 tags: {
    #                   "String" => "String"
    #                 },
    #                 alb_config: {
    #                   scheme: "internet-facing" # One of: ["internet-facing", "internal"],
    #                   ip_address_type: "ipv4" # One of: ["ipv4", "dualstack", "dualstack-without-public-ipv4"]
    #                 }
    #               },
    #               and: [{
    #                 # recursive ResourceLogicalExpression
    #               }],
    #               or: [{
    #                 # recursive ResourceLogicalExpression
    #               }],
    #               not: {
    #                 # recursive ResourceLogicalExpression
    #               }
    #             }
    #           },
    #           exclude: {
    #             explicit_arns: ["Arn"],
    #             expression: {
    #               # One of:
    #               criteria: {
    #                 # One of:
    #                 tags: {
    #                   "String" => "String"
    #                 },
    #                 alb_config: {
    #                   scheme: "internet-facing" # One of: ["internet-facing", "internal"],
    #                   ip_address_type: "ipv4" # One of: ["ipv4", "dualstack", "dualstack-without-public-ipv4"]
    #                 }
    #               },
    #               and: [{
    #                 # recursive ResourceLogicalExpression
    #               }],
    #               or: [{
    #                 # recursive ResourceLogicalExpression
    #               }],
    #               not: {
    #                 # recursive ResourceLogicalExpression
    #               }
    #             }
    #           }
    #         }
    #       }
    #     },
    #     status: "DRAFT" # One of: ["DRAFT", "ACTIVE", "DISABLED"], # required
    #     version: "EntityVersion", # required
    #     update_token: "UpdateToken",
    #     is_snapshot: false,
    #     has_published_version: false,
    #     updated_at: Time.now
    #   }
    # @return [Types::UpdateScopeOutput]
    def update_scope(params = {}, options = {})
      request = build_request(:update_scope, params)
      request.send_request(options)
    end

    # <p>Updates the specified template. To prevent conflicting concurrent updates, provide the current <code>updateToken</code>. Use <code>isPublished</code> to publish the update or keep the template as a draft.</p>
    # @param [Hash, Types::UpdateTemplateInput] params
    # @option params [String] :template_identifier
    #   <p>The identifier of the template. This is the template's Amazon Resource Name (ARN).</p>
    # @option params [String] :update_token
    #   <p>A token used for optimistic concurrency control. Each read and write returns an <code>updateToken</code>. Provide the most recent value on your next update to detect and prevent conflicting concurrent modifications.</p>
    # @option params [String] :template_description
    #   <p>A description of the template.</p>
    # @option params [Array<Types::RuleReference>] :associated_rule_list
    #   <p>The rules associated with the template.</p>
    # @option params [Boolean] :is_published
    #   <p>Specifies whether to publish the resource. When <code>true</code>, the resource is saved in published (<code>ACTIVE</code>) state. When <code>false</code>, it is saved as a draft (<code>DRAFT</code>).</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive token that you provide to ensure that the operation completes no more than one time. If you retry a request with the same client token and the same parameters, the service returns the result of the original successful request.</p>
    # @example Update a template and publish it
    #   # Updates the template's description and rule associations and publishes the change. The updateToken from the most recent read is required for optimistic locking.
    #   params = {
    #     template_identifier: "arn:aws:network-security-manager:us-east-1:123456789012:template:xyz789",
    #     update_token: "d2e3f4a5-5b6c-4d7e-8f9a-9b0c1d2e3f4a",
    #     template_description: "Standard WAF template with baseline rule groups - updated",
    #     associated_rule_list: [
    #       {
    #         rule_identifier: "arn:aws:network-security-manager:us-east-1:123456789012:rule:abc123"
    #       }
    #     ],
    #     is_published: true
    #   }
    #   options = {}
    #   response = client.update_template(params, options)
    #   response.to_h #=>
    #   {
    #     template_id: "xyz789",
    #     template_arn: "arn:aws:network-security-manager:us-east-1:123456789012:template:xyz789",
    #     template_name: "standard-waf-template",
    #     template_description: "Standard WAF template with baseline rule groups - updated",
    #     status: ACTIVE,
    #     version: "2",
    #     associated_rule_list: [
    #       {
    #         rule_arn: "arn:aws:network-security-manager:us-east-1:123456789012:rule:abc123"
    #       }
    #     ],
    #     update_token: "e3f4a5b6-6c7d-4e8f-9a0b-0c1d2e3f4a5b",
    #     is_snapshot: false,
    #     has_published_version: true,
    #     firewall_type: WAF,
    #     updated_at: Time.parse("2026-08-20T12:00:00Z")
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     template_identifier: "TemplateIdentifier", # required
    #     update_token: "UpdateToken", # required
    #     template_description: "Description",
    #     associated_rule_list: [
    #       {
    #         rule_identifier: "RuleIdentifier", # required
    #       }
    #     ],
    #     is_published: false, # required
    #     client_token: "IdempotencyToken"
    #   }
    #   options = {}
    #   response = client.update_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     template_id: "TemplateId", # required
    #     template_arn: "TemplateArn", # required
    #     template_name: "TemplateName", # required
    #     template_description: "Description",
    #     status: "DRAFT" # One of: ["DRAFT", "ACTIVE", "DISABLED"], # required
    #     version: "EntityVersion", # required
    #     associated_rule_list: [ # required
    #       {
    #         rule_arn: "RuleArn", # required
    #       }
    #     ],
    #     update_token: "UpdateToken",
    #     is_snapshot: false,
    #     has_published_version: false,
    #     firewall_type: "WAF" # One of: ["WAF"], # required
    #     updated_at: Time.now
    #   }
    # @return [Types::UpdateTemplateOutput]
    def update_template(params = {}, options = {})
      request = build_request(:update_template, params)
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
      context[:gem_name] = 'aws-sdk-networksecuritymanager'
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
