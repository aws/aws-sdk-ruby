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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:workspacesweb)

module Aws::WorkSpacesWeb
  # An API client for Aws::WorkSpacesWeb.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AWSErmineControlPlaneService
    @identifier = :workspacesweb

    add_plugin(::Aws::WorkSpacesWeb::Plugins::Endpoint)
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
    #  and returns a {Aws::Core::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  The endpoint to send requests to.
    #  The endpoint should be a URI formatted like "http://example.com:123"'
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::WorkSpacesWeb::EndpointProvider)
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
    #  `#transmit(request)` (returning a stream) to swap the transport, or a
    #  directly-constructed `NetHTTP::Transport` to set Net::HTTP-specific knobs. A
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

    # <p>Associates a browser settings resource with a web portal.</p>
    # @param [Hash, Types::AssociateBrowserSettingsRequest] params
    # @option params [String] :portal_arn
    #   <p>The ARN of the web portal.</p>
    # @option params [String] :browser_settings_arn
    #   <p>The ARN of the browser settings.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     portal_arn: "ARN", # required
    #     browser_settings_arn: "ARN", # required
    #   }
    #   options = {}
    #   response = client.associate_browser_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     portal_arn: "ARN", # required
    #     browser_settings_arn: "ARN", # required
    #   }
    # @return [Types::AssociateBrowserSettingsResponse]
    def associate_browser_settings(params = {}, options = {})
      request = build_request(:associate_browser_settings, params)
      request.send_request(options)
    end

    # <p>Associates a data protection settings resource with a web portal.</p>
    # @param [Hash, Types::AssociateDataProtectionSettingsRequest] params
    # @option params [String] :portal_arn
    #   <p>The ARN of the web portal.</p>
    # @option params [String] :data_protection_settings_arn
    #   <p>The ARN of the data protection settings.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     portal_arn: "ARN", # required
    #     data_protection_settings_arn: "ARN", # required
    #   }
    #   options = {}
    #   response = client.associate_data_protection_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     portal_arn: "ARN", # required
    #     data_protection_settings_arn: "ARN", # required
    #   }
    # @return [Types::AssociateDataProtectionSettingsResponse]
    def associate_data_protection_settings(params = {}, options = {})
      request = build_request(:associate_data_protection_settings, params)
      request.send_request(options)
    end

    # <p>Associates an IP access settings resource with a web portal.</p>
    # @param [Hash, Types::AssociateIpAccessSettingsRequest] params
    # @option params [String] :portal_arn
    #   <p>The ARN of the web portal.</p>
    # @option params [String] :ip_access_settings_arn
    #   <p>The ARN of the IP access settings.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     portal_arn: "ARN", # required
    #     ip_access_settings_arn: "ARN", # required
    #   }
    #   options = {}
    #   response = client.associate_ip_access_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     portal_arn: "ARN", # required
    #     ip_access_settings_arn: "ARN", # required
    #   }
    # @return [Types::AssociateIpAccessSettingsResponse]
    def associate_ip_access_settings(params = {}, options = {})
      request = build_request(:associate_ip_access_settings, params)
      request.send_request(options)
    end

    # <p>Associates a network settings resource with a web portal.</p>
    # @param [Hash, Types::AssociateNetworkSettingsRequest] params
    # @option params [String] :portal_arn
    #   <p>The ARN of the web portal.</p>
    # @option params [String] :network_settings_arn
    #   <p>The ARN of the network settings.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     portal_arn: "ARN", # required
    #     network_settings_arn: "ARN", # required
    #   }
    #   options = {}
    #   response = client.associate_network_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     portal_arn: "ARN", # required
    #     network_settings_arn: "ARN", # required
    #   }
    # @return [Types::AssociateNetworkSettingsResponse]
    def associate_network_settings(params = {}, options = {})
      request = build_request(:associate_network_settings, params)
      request.send_request(options)
    end

    # <p>Associates a session logger with a portal.</p>
    # @param [Hash, Types::AssociateSessionLoggerRequest] params
    # @option params [String] :portal_arn
    #   <p>The ARN of the portal to associate to the session logger ARN.</p>
    # @option params [String] :session_logger_arn
    #   <p>The ARN of the session logger to associate to the portal ARN.</p>
    # @example Associate Session Logger with Portal
    #   # Associates a session logger with a portal
    #   params = {
    #     portal_arn: "arn:aws:workspaces-web:us-west-2:123456789012:portal/12345678-1234-1234-1234-123456789012",
    #     session_logger_arn: "arn:aws:workspaces-web:us-west-2:123456789012:sessionLogger/11111111-1111-1111-1111-111111111111"
    #   }
    #   options = {}
    #   response = client.associate_session_logger(params, options)
    #   response.to_h #=>
    #   {
    #     portal_arn: "arn:aws:workspaces-web:us-west-2:123456789012:portal/12345678-1234-1234-1234-123456789012",
    #     session_logger_arn: "arn:aws:workspaces-web:us-west-2:123456789012:sessionLogger/11111111-1111-1111-1111-111111111111"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     portal_arn: "ARN", # required
    #     session_logger_arn: "ARN", # required
    #   }
    #   options = {}
    #   response = client.associate_session_logger(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     portal_arn: "ARN", # required
    #     session_logger_arn: "ARN", # required
    #   }
    # @return [Types::AssociateSessionLoggerResponse]
    def associate_session_logger(params = {}, options = {})
      request = build_request(:associate_session_logger, params)
      request.send_request(options)
    end

    # <p>Associates a trust store with a web portal.</p>
    # @param [Hash, Types::AssociateTrustStoreRequest] params
    # @option params [String] :portal_arn
    #   <p>The ARN of the web portal.</p>
    # @option params [String] :trust_store_arn
    #   <p>The ARN of the trust store.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     portal_arn: "ARN", # required
    #     trust_store_arn: "ARN", # required
    #   }
    #   options = {}
    #   response = client.associate_trust_store(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     portal_arn: "ARN", # required
    #     trust_store_arn: "ARN", # required
    #   }
    # @return [Types::AssociateTrustStoreResponse]
    def associate_trust_store(params = {}, options = {})
      request = build_request(:associate_trust_store, params)
      request.send_request(options)
    end

    # <p>Associates a user access logging settings resource with a web portal.</p>
    # @param [Hash, Types::AssociateUserAccessLoggingSettingsRequest] params
    # @option params [String] :portal_arn
    #   <p>The ARN of the web portal.</p>
    # @option params [String] :user_access_logging_settings_arn
    #   <p>The ARN of the user access logging settings.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     portal_arn: "ARN", # required
    #     user_access_logging_settings_arn: "ARN", # required
    #   }
    #   options = {}
    #   response = client.associate_user_access_logging_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     portal_arn: "ARN", # required
    #     user_access_logging_settings_arn: "ARN", # required
    #   }
    # @return [Types::AssociateUserAccessLoggingSettingsResponse]
    def associate_user_access_logging_settings(params = {}, options = {})
      request = build_request(:associate_user_access_logging_settings, params)
      request.send_request(options)
    end

    # <p>Associates a user settings resource with a web portal.</p>
    # @param [Hash, Types::AssociateUserSettingsRequest] params
    # @option params [String] :portal_arn
    #   <p>The ARN of the web portal.</p>
    # @option params [String] :user_settings_arn
    #   <p>The ARN of the user settings.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     portal_arn: "ARN", # required
    #     user_settings_arn: "ARN", # required
    #   }
    #   options = {}
    #   response = client.associate_user_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     portal_arn: "ARN", # required
    #     user_settings_arn: "ARN", # required
    #   }
    # @return [Types::AssociateUserSettingsResponse]
    def associate_user_settings(params = {}, options = {})
      request = build_request(:associate_user_settings, params)
      request.send_request(options)
    end

    # <p>Creates a browser settings resource that can be associated with a web portal. Once
    #          associated with a web portal, browser settings control how the browser will behave once a
    #          user starts a streaming session for the web portal. </p>
    # @param [Hash, Types::CreateBrowserSettingsRequest] params
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags to add to the browser settings resource. A tag is a key-value pair.</p>
    # @option params [String] :customer_managed_key
    #   <p>The custom managed key of the browser settings.</p>
    # @option params [Hash<String, String>] :additional_encryption_context
    #   <p>Additional encryption context of the browser settings.</p>
    # @option params [String] :browser_policy
    #   <p>A JSON string containing Chrome Enterprise policies that will be applied to all
    #            streaming sessions.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request. Idempotency ensures that an API request completes only once. With an idempotent
    #            request, if the original request completes successfully, subsequent retries with the same
    #            client token returns the result from the original successful request.</p>
    #            <p>If you do not specify a client token, one is automatically generated by the Amazon Web Services SDK.
    #         </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     customer_managed_key: "keyArn",
    #     additional_encryption_context: {
    #       "StringType" => "StringType"
    #     },
    #     browser_policy: "BrowserPolicy", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_browser_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     browser_settings_arn: "ARN", # required
    #   }
    # @return [Types::CreateBrowserSettingsResponse]
    def create_browser_settings(params = {}, options = {})
      request = build_request(:create_browser_settings, params)
      request.send_request(options)
    end

    # <p>Creates a data protection settings resource that can be associated with a web portal.</p>
    # @param [Hash, Types::CreateDataProtectionSettingsRequest] params
    # @option params [String] :display_name
    #   <p>The display name of the data protection settings.</p>
    # @option params [String] :description
    #   <p>The description of the data protection settings.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags to add to the data protection settings resource. A tag is a key-value pair.</p>
    # @option params [String] :customer_managed_key
    #   <p>The custom managed key of the data protection settings.</p>
    # @option params [Hash<String, String>] :additional_encryption_context
    #   <p>Additional encryption context of the data protection settings.</p>
    # @option params [Types::InlineRedactionConfiguration] :inline_redaction_configuration
    #   <p>The inline redaction configuration of the data protection settings that will be applied to all sessions.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request. Idempotency ensures that an API request completes only once. With an idempotent
    #            request, if the original request completes successfully, subsequent retries with the same
    #            client token returns the result from the original successful request. </p>
    #            <p>If you do not specify a client token, one is automatically generated by the Amazon Web Services
    #            SDK.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     display_name: "DisplayNameSafe",
    #     description: "DescriptionSafe",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     customer_managed_key: "keyArn",
    #     additional_encryption_context: {
    #       "StringType" => "StringType"
    #     },
    #     inline_redaction_configuration: {
    #       inline_redaction_patterns: [ # required
    #         {
    #           built_in_pattern_id: "BuiltInPatternId",
    #           custom_pattern: {
    #             pattern_name: "PatternName", # required
    #             pattern_regex: "Regex", # required
    #             pattern_description: "DescriptionSafe",
    #             keyword_regex: "Regex"
    #           },
    #           redaction_place_holder: { # required
    #             redaction_place_holder_type: "RedactionPlaceHolderType", # required
    #             redaction_place_holder_text: "RedactionPlaceHolderText"
    #           },
    #           enforced_urls: ["InlineRedactionUrl"],
    #           exempt_urls: ["InlineRedactionUrl"],
    #           confidence_level: 1
    #         }
    #       ],
    #       global_enforced_urls: ["InlineRedactionUrl"],
    #       global_exempt_urls: ["InlineRedactionUrl"],
    #       global_confidence_level: 1
    #     },
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_data_protection_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     data_protection_settings_arn: "ARN", # required
    #   }
    # @return [Types::CreateDataProtectionSettingsResponse]
    def create_data_protection_settings(params = {}, options = {})
      request = build_request(:create_data_protection_settings, params)
      request.send_request(options)
    end

    # <p>Creates an identity provider resource that is then associated with a web portal.</p>
    # @param [Hash, Types::CreateIdentityProviderRequest] params
    # @option params [String] :portal_arn
    #   <p>The ARN of the web portal.</p>
    # @option params [String] :identity_provider_name
    #   <p>The identity provider name.</p>
    # @option params [String] :identity_provider_type
    #   <p>The identity provider type.</p>
    # @option params [Hash<String, String>] :identity_provider_details
    #   <p>The identity provider details. The following list describes the provider detail keys for
    #            each identity provider type. </p>
    #            <ul>
    #               <li>
    #                  <p>For Google and Login with Amazon:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>client_id</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>client_secret</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>authorize_scopes</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>For Facebook:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>client_id</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>client_secret</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>authorize_scopes</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>api_version</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>For Sign in with Apple:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>client_id</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>team_id</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>key_id</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>private_key</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>authorize_scopes</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>For OIDC providers:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>client_id</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>client_secret</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>attributes_request_method</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>oidc_issuer</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>authorize_scopes</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>authorize_url</code>
    #                           <i>if not available from discovery URL specified by
    #                              <code>oidc_issuer</code> key</i>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>token_url</code>
    #                           <i>if not available from discovery URL specified by
    #                              <code>oidc_issuer</code> key</i>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>attributes_url</code>
    #                           <i>if not available from discovery URL specified by
    #                              <code>oidc_issuer</code> key</i>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>jwks_uri</code>
    #                           <i>if not available from discovery URL specified by
    #                              <code>oidc_issuer</code> key</i>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>For SAML providers:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>MetadataFile</code> OR <code>MetadataURL</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>IDPSignout</code> (boolean) <i>optional</i>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>IDPInit</code> (boolean) <i>optional</i>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>RequestSigningAlgorithm</code> (string) <i>optional</i>
    #                        - Only accepts <code>rsa-sha256</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>EncryptedResponses</code> (boolean) <i>optional</i>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request. Idempotency ensures that an API request completes only once. With an idempotent
    #            request, if the original request completes successfully, subsequent retries with the same
    #            client token returns the result from the original successful request.</p>
    #            <p>If you do not specify a client token, one is automatically generated by the Amazon Web Services
    #            SDK.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags to add to the identity provider resource. A tag is a key-value pair.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     portal_arn: "ARN", # required
    #     identity_provider_name: "IdentityProviderName", # required
    #     identity_provider_type: "IdentityProviderType", # required
    #     identity_provider_details: { # required
    #       "StringType" => "StringType"
    #     },
    #     client_token: "ClientToken",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_identity_provider(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     identity_provider_arn: "SubresourceARN", # required
    #   }
    # @return [Types::CreateIdentityProviderResponse]
    def create_identity_provider(params = {}, options = {})
      request = build_request(:create_identity_provider, params)
      request.send_request(options)
    end

    # <p>Creates an IP access settings resource that can be associated with a web portal.</p>
    # @param [Hash, Types::CreateIpAccessSettingsRequest] params
    # @option params [String] :display_name
    #   <p>The display name of the IP access settings.</p>
    # @option params [String] :description
    #   <p>The description of the IP access settings.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags to add to the IP access settings resource. A tag is a key-value pair.</p>
    # @option params [String] :customer_managed_key
    #   <p>The custom managed key of the IP access settings.</p>
    # @option params [Hash<String, String>] :additional_encryption_context
    #   <p>Additional encryption context of the IP access settings.</p>
    # @option params [Array<Types::IpRule>] :ip_rules
    #   <p>The IP rules of the IP access settings.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request. Idempotency ensures that an API request completes only once. With an idempotent
    #            request, if the original request completes successfully, subsequent retries with the same
    #            client token returns the result from the original successful request. </p>
    #            <p>If you do not specify a client token, one is automatically generated by the Amazon Web Services
    #            SDK.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     display_name: "DisplayName",
    #     description: "Description",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     customer_managed_key: "keyArn",
    #     additional_encryption_context: {
    #       "StringType" => "StringType"
    #     },
    #     ip_rules: [ # required
    #       {
    #         ip_range: "IpRange", # required
    #         description: "Description"
    #       }
    #     ],
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_ip_access_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ip_access_settings_arn: "ARN", # required
    #   }
    # @return [Types::CreateIpAccessSettingsResponse]
    def create_ip_access_settings(params = {}, options = {})
      request = build_request(:create_ip_access_settings, params)
      request.send_request(options)
    end

    # <p>Creates a network settings resource that can be associated with a web portal. Once
    #          associated with a web portal, network settings define how streaming instances will connect
    #          with your specified VPC. </p>
    # @param [Hash, Types::CreateNetworkSettingsRequest] params
    # @option params [String] :vpc_id
    #   <p>The VPC that streaming instances will connect to.</p>
    # @option params [Array<String>] :subnet_ids
    #   <p>The subnets in which network interfaces are created to connect streaming instances to
    #            your VPC. At least two of these subnets must be in different availability zones.</p>
    # @option params [Array<String>] :security_group_ids
    #   <p>One or more security groups used to control access from streaming instances to your
    #            VPC.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags to add to the network settings resource. A tag is a key-value pair.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request. Idempotency ensures that an API request completes only once. With an idempotent
    #            request, if the original request completes successfully, subsequent retries with the same
    #            client token returns the result from the original successful request. </p>
    #            <p>If you do not specify a client token, one is automatically generated by the Amazon Web Services
    #            SDK.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     vpc_id: "VpcId", # required
    #     subnet_ids: ["SubnetId"], # required
    #     security_group_ids: ["SecurityGroupId"], # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_network_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     network_settings_arn: "ARN", # required
    #   }
    # @return [Types::CreateNetworkSettingsResponse]
    def create_network_settings(params = {}, options = {})
      request = build_request(:create_network_settings, params)
      request.send_request(options)
    end

    # <p>Creates a web portal.</p>
    # @param [Hash, Types::CreatePortalRequest] params
    # @option params [String] :display_name
    #   <p>The name of the web portal. This is not visible to users who log into the web
    #            portal.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags to add to the web portal. A tag is a key-value pair.</p>
    # @option params [String] :customer_managed_key
    #   <p>The customer managed key of the web portal.</p>
    # @option params [Hash<String, String>] :additional_encryption_context
    #   <p>The additional encryption context of the portal.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request. Idempotency ensures that an API request completes only once. With an idempotent
    #            request, if the original request completes successfully, subsequent retries with the same
    #            client token returns the result from the original successful request. </p>
    #            <p>If you do not specify a client token, one is automatically generated by the Amazon Web Services
    #            SDK.</p>
    # @option params [String] :authentication_type
    #   <p>The type of authentication integration points used when signing into the web portal.
    #            Defaults to <code>Standard</code>.</p>
    #            <p>
    #               <code>Standard</code> web portals are authenticated directly through your identity
    #            provider. You need to call <code>CreateIdentityProvider</code> to integrate your identity
    #            provider with your web portal. User and group access to your web portal is controlled
    #            through your identity provider.</p>
    #            <p>
    #               <code>IAM Identity Center</code> web portals are authenticated through IAM Identity Center. Identity sources
    #            (including external identity provider integration), plus user and group access to your web
    #            portal, can be configured in the IAM Identity Center.</p>
    # @option params [String] :instance_type
    #   <p>The type and resources of the underlying instance.</p>
    # @option params [Integer] :max_concurrent_sessions
    #   <p>The maximum number of concurrent sessions for the portal.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     display_name: "DisplayName",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     customer_managed_key: "keyArn",
    #     additional_encryption_context: {
    #       "StringType" => "StringType"
    #     },
    #     client_token: "ClientToken",
    #     authentication_type: "AuthenticationType",
    #     instance_type: "InstanceType",
    #     max_concurrent_sessions: 1
    #   }
    #   options = {}
    #   response = client.create_portal(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     portal_arn: "ARN", # required
    #     portal_endpoint: "PortalEndpoint", # required
    #   }
    # @return [Types::CreatePortalResponse]
    def create_portal(params = {}, options = {})
      request = build_request(:create_portal, params)
      request.send_request(options)
    end

    # <p>Creates a session logger.</p>
    # @param [Hash, Types::CreateSessionLoggerRequest] params
    # @option params [Types::EventFilter] :event_filter
    #   <p>The filter that specifies the events to monitor.</p>
    # @option params [Types::LogConfiguration] :log_configuration
    #   <p>The configuration that specifies where logs are delivered.</p>
    # @option params [String] :display_name
    #   <p>The human-readable display name for the session logger resource.</p>
    # @option params [String] :customer_managed_key
    #   <p>The custom managed key of the session logger.</p>
    # @option params [Hash<String, String>] :additional_encryption_context
    #   <p>The additional encryption context of the session logger.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags to add to the session logger.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. Idempotency ensures that an API request completes only once. With an idempotent request, if the original request completes successfully, subsequent retries with the same client token returns the result from the original successful request. If you do not specify a client token, one is automatically generated by the AWS SDK.</p>
    # @example Create Session Logger with All Events
    #   # Creates a session logger that captures all events and stores them in S3 with JSON format and flat folder structure
    #   params = {
    #     event_filter: {
    #     "all" => {}
    #   },
    #     log_configuration: {
    #       s3: {
    #         bucket: "my-session-logs-bucket",
    #         key_prefix: "session-logs/all/events",
    #         bucket_owner: "123456789012",
    #         log_file_format: Json,
    #         folder_structure: Flat
    #       }
    #     },
    #     display_name: "Session Logger with All Events"
    #   }
    #   options = {}
    #   response = client.create_session_logger(params, options)
    #   response.to_h #=>
    #   {
    #     session_logger_arn: "arn:aws:workspaces-web:us-west-2:123456789012:sessionLogger/12345678-1234-1234-1234-123456789012"
    #   }
    # @example Create Session Logger with Specific Events
    #   # Creates a session logger that captures only specific events with JSONLines format and nested folder structure
    #   params = {
    #     event_filter: {
    #     "include" => [
    #       SessionStart,
    #       SessionEnd,
    #       UrlLoad,
    #       WebsiteInteract
    #     ]
    #   },
    #     log_configuration: {
    #       s3: {
    #         bucket: "my-session-logs-bucket",
    #         key_prefix: "session-logs/each/event",
    #         bucket_owner: "123456789012",
    #         log_file_format: JSONLines,
    #         folder_structure: NestedByDate
    #       }
    #     },
    #     display_name: "Session Logger with Each Events",
    #     customer_managed_key: "arn:aws:kms:us-west-2:123456789012:key/12345678-1234-1234-1234-123456789012",
    #     additional_encryption_context: {
    #       "EncryptionContextKey" => "EncryptionContextValue"
    #     },
    #     tags: [
    #       {
    #         key: "KEY-1",
    #         value: "VALUE-1"
    #       },
    #       {
    #         key: "KEY-2",
    #         value: "VALUE-2"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_session_logger(params, options)
    #   response.to_h #=>
    #   {
    #     session_logger_arn: "arn:aws:workspaces-web:us-west-2:123456789012:sessionLogger/87654321-4321-4321-4321-210987654321"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     event_filter: { # required
    #       # One of:
    #       all: {
    #       },
    #       include: ["WebsiteInteract" # One of: ["WebsiteInteract", "FileDownloadFromSecureBrowserToRemoteDisk", "FileTransferFromRemoteToLocalDisk", "FileTransferFromLocalToRemoteDisk", "FileUploadFromRemoteDiskToSecureBrowser", "ContentPasteToWebsite", "ContentTransferFromLocalToRemoteClipboard", "ContentCopyFromWebsite", "UrlLoad", "TabOpen", "TabClose", "PrintJobSubmit", "SessionConnect", "SessionStart", "SessionDisconnect", "SessionEnd"]]
    #     },
    #     log_configuration: { # required
    #       s3: {
    #         bucket: "S3Bucket", # required
    #         key_prefix: "S3KeyPrefix",
    #         bucket_owner: "S3BucketOwner",
    #         log_file_format: "JSONLines" # One of: ["JSONLines", "Json"], # required
    #         folder_structure: "Flat" # One of: ["Flat", "NestedByDate"], # required
    #       }
    #     },
    #     display_name: "DisplayNameSafe",
    #     customer_managed_key: "keyArn",
    #     additional_encryption_context: {
    #       "StringType" => "StringType"
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_session_logger(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     session_logger_arn: "ARN", # required
    #   }
    # @return [Types::CreateSessionLoggerResponse]
    def create_session_logger(params = {}, options = {})
      request = build_request(:create_session_logger, params)
      request.send_request(options)
    end

    # <p>Creates a trust store that can be associated with a web portal. A trust store contains
    #          certificate authority (CA) certificates. Once associated with a web portal, the browser in
    #          a streaming session will recognize certificates that have been issued using any of the CAs
    #          in the trust store. If your organization has internal websites that use certificates issued
    #          by private CAs, you should add the private CA certificate to the trust store. </p>
    # @param [Hash, Types::CreateTrustStoreRequest] params
    # @option params [Array<String>] :certificate_list
    #   <p>A list of CA certificates to be added to the trust store.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags to add to the trust store. A tag is a key-value pair.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request. Idempotency ensures that an API request completes only once. With an idempotent
    #            request, if the original request completes successfully, subsequent retries with the same
    #            client token returns the result from the original successful request. </p>
    #            <p>If you do not specify a client token, one is automatically generated by the Amazon Web Services
    #            SDK.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     certificate_list: ["data"], # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_trust_store(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     trust_store_arn: "ARN", # required
    #   }
    # @return [Types::CreateTrustStoreResponse]
    def create_trust_store(params = {}, options = {})
      request = build_request(:create_trust_store, params)
      request.send_request(options)
    end

    # <p>Creates a user access logging settings resource that can be associated with a web
    #          portal.</p>
    # @param [Hash, Types::CreateUserAccessLoggingSettingsRequest] params
    # @option params [String] :kinesis_stream_arn
    #   <p>The ARN of the Kinesis stream.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags to add to the user settings resource. A tag is a key-value pair.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request. Idempotency ensures that an API request completes only once. With an idempotent
    #            request, if the original request completes successfully, subsequent retries with the same
    #            client token returns the result from the original successful request. </p>
    #            <p>If you do not specify a client token, one is automatically generated by the Amazon Web Services
    #            SDK.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     kinesis_stream_arn: "KinesisStreamArn", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_user_access_logging_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     user_access_logging_settings_arn: "ARN", # required
    #   }
    # @return [Types::CreateUserAccessLoggingSettingsResponse]
    def create_user_access_logging_settings(params = {}, options = {})
      request = build_request(:create_user_access_logging_settings, params)
      request.send_request(options)
    end

    # <p>Creates a user settings resource that can be associated with a web portal. Once
    #          associated with a web portal, user settings control how users can transfer data between a
    #          streaming session and the their local devices. </p>
    # @param [Hash, Types::CreateUserSettingsRequest] params
    # @option params [String] :copy_allowed
    #   <p>Specifies whether the user can copy text from the streaming session to the local
    #            device.</p>
    # @option params [String] :paste_allowed
    #   <p>Specifies whether the user can paste text from the local device to the streaming
    #            session.</p>
    # @option params [String] :download_allowed
    #   <p>Specifies whether the user can download files from the streaming session to the local
    #            device.</p>
    # @option params [String] :upload_allowed
    #   <p>Specifies whether the user can upload files from the local device to the streaming
    #            session.</p>
    # @option params [String] :print_allowed
    #   <p>Specifies whether the user can print to the local device.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags to add to the user settings resource. A tag is a key-value pair.</p>
    # @option params [Integer] :disconnect_timeout_in_minutes
    #   <p>The amount of time that a streaming session remains active after users
    #            disconnect.</p>
    # @option params [Integer] :idle_disconnect_timeout_in_minutes
    #   <p>The amount of time that users can be idle (inactive) before they are disconnected from
    #            their streaming session and the disconnect timeout interval begins.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request. Idempotency ensures that an API request completes only once. With an idempotent
    #            request, if the original request completes successfully, subsequent retries with the same
    #            client token returns the result from the original successful request. </p>
    #            <p>If you do not specify a client token, one is automatically generated by the Amazon Web Services
    #            SDK.</p>
    # @option params [Types::CookieSynchronizationConfiguration] :cookie_synchronization_configuration
    #   <p>The configuration that specifies which cookies should be synchronized from the end
    #            user's local browser to the remote browser.</p>
    # @option params [String] :customer_managed_key
    #   <p>The customer managed key used to encrypt sensitive information in the user
    #            settings.</p>
    # @option params [Hash<String, String>] :additional_encryption_context
    #   <p>The additional encryption context of the user settings.</p>
    # @option params [String] :deep_link_allowed
    #   <p>Specifies whether the user can use deep links that open automatically when connecting to
    #            a session.</p>
    # @option params [Types::ToolbarConfiguration] :toolbar_configuration
    #   <p>The configuration of the toolbar. This allows administrators to select the toolbar type and visual mode, set maximum display resolution for sessions, and choose which items are visible to end users during their sessions. If administrators do not modify these settings, end users retain control over their toolbar preferences.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     copy_allowed: "EnabledType", # required
    #     paste_allowed: "EnabledType", # required
    #     download_allowed: "EnabledType", # required
    #     upload_allowed: "EnabledType", # required
    #     print_allowed: "EnabledType", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     disconnect_timeout_in_minutes: 1,
    #     idle_disconnect_timeout_in_minutes: 1,
    #     client_token: "ClientToken",
    #     cookie_synchronization_configuration: {
    #       allowlist: [ # required
    #         {
    #           domain: "CookieDomain", # required
    #           name: "CookieName",
    #           path: "CookiePath"
    #         }
    #       ],
    #       blocklist: [
    #         {
    #           domain: "CookieDomain", # required
    #           name: "CookieName",
    #           path: "CookiePath"
    #         }
    #       ]
    #     },
    #     customer_managed_key: "keyArn",
    #     additional_encryption_context: {
    #       "StringType" => "StringType"
    #     },
    #     deep_link_allowed: "EnabledType",
    #     toolbar_configuration: {
    #       toolbar_type: "ToolbarType",
    #       visual_mode: "VisualMode",
    #       hidden_toolbar_items: ["ToolbarItem"],
    #       max_display_resolution: "MaxDisplayResolution"
    #     }
    #   }
    #   options = {}
    #   response = client.create_user_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     user_settings_arn: "ARN", # required
    #   }
    # @return [Types::CreateUserSettingsResponse]
    def create_user_settings(params = {}, options = {})
      request = build_request(:create_user_settings, params)
      request.send_request(options)
    end

    # <p>Deletes browser settings.</p>
    # @param [Hash, Types::DeleteBrowserSettingsRequest] params
    # @option params [String] :browser_settings_arn
    #   <p>The ARN of the browser settings.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     browser_settings_arn: "ARN", # required
    #   }
    #   options = {}
    #   response = client.delete_browser_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteBrowserSettingsResponse]
    def delete_browser_settings(params = {}, options = {})
      request = build_request(:delete_browser_settings, params)
      request.send_request(options)
    end

    # <p>Deletes data protection settings.</p>
    # @param [Hash, Types::DeleteDataProtectionSettingsRequest] params
    # @option params [String] :data_protection_settings_arn
    #   <p>The ARN of the data protection settings.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     data_protection_settings_arn: "ARN", # required
    #   }
    #   options = {}
    #   response = client.delete_data_protection_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteDataProtectionSettingsResponse]
    def delete_data_protection_settings(params = {}, options = {})
      request = build_request(:delete_data_protection_settings, params)
      request.send_request(options)
    end

    # <p>Deletes the identity provider.</p>
    # @param [Hash, Types::DeleteIdentityProviderRequest] params
    # @option params [String] :identity_provider_arn
    #   <p>The ARN of the identity provider.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identity_provider_arn: "SubresourceARN", # required
    #   }
    #   options = {}
    #   response = client.delete_identity_provider(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteIdentityProviderResponse]
    def delete_identity_provider(params = {}, options = {})
      request = build_request(:delete_identity_provider, params)
      request.send_request(options)
    end

    # <p>Deletes IP access settings.</p>
    # @param [Hash, Types::DeleteIpAccessSettingsRequest] params
    # @option params [String] :ip_access_settings_arn
    #   <p>The ARN of the IP access settings.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     ip_access_settings_arn: "ARN", # required
    #   }
    #   options = {}
    #   response = client.delete_ip_access_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteIpAccessSettingsResponse]
    def delete_ip_access_settings(params = {}, options = {})
      request = build_request(:delete_ip_access_settings, params)
      request.send_request(options)
    end

    # <p>Deletes network settings.</p>
    # @param [Hash, Types::DeleteNetworkSettingsRequest] params
    # @option params [String] :network_settings_arn
    #   <p>The ARN of the network settings.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     network_settings_arn: "ARN", # required
    #   }
    #   options = {}
    #   response = client.delete_network_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteNetworkSettingsResponse]
    def delete_network_settings(params = {}, options = {})
      request = build_request(:delete_network_settings, params)
      request.send_request(options)
    end

    # <p>Deletes a web portal.</p>
    # @param [Hash, Types::DeletePortalRequest] params
    # @option params [String] :portal_arn
    #   <p>The ARN of the web portal.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     portal_arn: "ARN", # required
    #   }
    #   options = {}
    #   response = client.delete_portal(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeletePortalResponse]
    def delete_portal(params = {}, options = {})
      request = build_request(:delete_portal, params)
      request.send_request(options)
    end

    # <p>Deletes a session logger resource.</p>
    # @param [Hash, Types::DeleteSessionLoggerRequest] params
    # @option params [String] :session_logger_arn
    #   <p>The ARN of the session logger.</p>
    # @example Delete Session Logger
    #   # Deletes a session logger resource
    #   params = {
    #     session_logger_arn: "arn:aws:workspaces-web:us-west-2:123456789012:sessionLogger/12345678-1234-1234-1234-123456789012"
    #   }
    #   options = {}
    #   response = client.delete_session_logger(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     session_logger_arn: "ARN", # required
    #   }
    #   options = {}
    #   response = client.delete_session_logger(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteSessionLoggerResponse]
    def delete_session_logger(params = {}, options = {})
      request = build_request(:delete_session_logger, params)
      request.send_request(options)
    end

    # <p>Deletes the trust store.</p>
    # @param [Hash, Types::DeleteTrustStoreRequest] params
    # @option params [String] :trust_store_arn
    #   <p>The ARN of the trust store.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     trust_store_arn: "ARN", # required
    #   }
    #   options = {}
    #   response = client.delete_trust_store(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteTrustStoreResponse]
    def delete_trust_store(params = {}, options = {})
      request = build_request(:delete_trust_store, params)
      request.send_request(options)
    end

    # <p>Deletes user access logging settings.</p>
    # @param [Hash, Types::DeleteUserAccessLoggingSettingsRequest] params
    # @option params [String] :user_access_logging_settings_arn
    #   <p>The ARN of the user access logging settings.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_access_logging_settings_arn: "ARN", # required
    #   }
    #   options = {}
    #   response = client.delete_user_access_logging_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteUserAccessLoggingSettingsResponse]
    def delete_user_access_logging_settings(params = {}, options = {})
      request = build_request(:delete_user_access_logging_settings, params)
      request.send_request(options)
    end

    # <p>Deletes user settings.</p>
    # @param [Hash, Types::DeleteUserSettingsRequest] params
    # @option params [String] :user_settings_arn
    #   <p>The ARN of the user settings.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_settings_arn: "ARN", # required
    #   }
    #   options = {}
    #   response = client.delete_user_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteUserSettingsResponse]
    def delete_user_settings(params = {}, options = {})
      request = build_request(:delete_user_settings, params)
      request.send_request(options)
    end

    # <p>Disassociates browser settings from a web portal.</p>
    # @param [Hash, Types::DisassociateBrowserSettingsRequest] params
    # @option params [String] :portal_arn
    #   <p>The ARN of the web portal.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     portal_arn: "ARN", # required
    #   }
    #   options = {}
    #   response = client.disassociate_browser_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisassociateBrowserSettingsResponse]
    def disassociate_browser_settings(params = {}, options = {})
      request = build_request(:disassociate_browser_settings, params)
      request.send_request(options)
    end

    # <p>Disassociates data protection settings from a web portal.</p>
    # @param [Hash, Types::DisassociateDataProtectionSettingsRequest] params
    # @option params [String] :portal_arn
    #   <p>The ARN of the web portal.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     portal_arn: "ARN", # required
    #   }
    #   options = {}
    #   response = client.disassociate_data_protection_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisassociateDataProtectionSettingsResponse]
    def disassociate_data_protection_settings(params = {}, options = {})
      request = build_request(:disassociate_data_protection_settings, params)
      request.send_request(options)
    end

    # <p>Disassociates IP access settings from a web portal.</p>
    # @param [Hash, Types::DisassociateIpAccessSettingsRequest] params
    # @option params [String] :portal_arn
    #   <p>The ARN of the web portal.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     portal_arn: "ARN", # required
    #   }
    #   options = {}
    #   response = client.disassociate_ip_access_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisassociateIpAccessSettingsResponse]
    def disassociate_ip_access_settings(params = {}, options = {})
      request = build_request(:disassociate_ip_access_settings, params)
      request.send_request(options)
    end

    # <p>Disassociates network settings from a web portal.</p>
    # @param [Hash, Types::DisassociateNetworkSettingsRequest] params
    # @option params [String] :portal_arn
    #   <p>The ARN of the web portal.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     portal_arn: "ARN", # required
    #   }
    #   options = {}
    #   response = client.disassociate_network_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisassociateNetworkSettingsResponse]
    def disassociate_network_settings(params = {}, options = {})
      request = build_request(:disassociate_network_settings, params)
      request.send_request(options)
    end

    # <p>Disassociates a session logger from a portal.</p>
    # @param [Hash, Types::DisassociateSessionLoggerRequest] params
    # @option params [String] :portal_arn
    #   <p>The ARN of the portal to disassociate from the a session logger.</p>
    # @example Disassociate Session Logger from Portal
    #   # Removes the association between a session logger and a portal
    #   params = {
    #     portal_arn: "arn:aws:workspaces-web:us-west-2:123456789012:portal/12345678-1234-1234-1234-123456789012"
    #   }
    #   options = {}
    #   response = client.disassociate_session_logger(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     portal_arn: "ARN", # required
    #   }
    #   options = {}
    #   response = client.disassociate_session_logger(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisassociateSessionLoggerResponse]
    def disassociate_session_logger(params = {}, options = {})
      request = build_request(:disassociate_session_logger, params)
      request.send_request(options)
    end

    # <p>Disassociates a trust store from a web portal.</p>
    # @param [Hash, Types::DisassociateTrustStoreRequest] params
    # @option params [String] :portal_arn
    #   <p>The ARN of the web portal.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     portal_arn: "ARN", # required
    #   }
    #   options = {}
    #   response = client.disassociate_trust_store(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisassociateTrustStoreResponse]
    def disassociate_trust_store(params = {}, options = {})
      request = build_request(:disassociate_trust_store, params)
      request.send_request(options)
    end

    # <p>Disassociates user access logging settings from a web portal.</p>
    # @param [Hash, Types::DisassociateUserAccessLoggingSettingsRequest] params
    # @option params [String] :portal_arn
    #   <p>The ARN of the web portal.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     portal_arn: "ARN", # required
    #   }
    #   options = {}
    #   response = client.disassociate_user_access_logging_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisassociateUserAccessLoggingSettingsResponse]
    def disassociate_user_access_logging_settings(params = {}, options = {})
      request = build_request(:disassociate_user_access_logging_settings, params)
      request.send_request(options)
    end

    # <p>Disassociates user settings from a web portal.</p>
    # @param [Hash, Types::DisassociateUserSettingsRequest] params
    # @option params [String] :portal_arn
    #   <p>The ARN of the web portal.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     portal_arn: "ARN", # required
    #   }
    #   options = {}
    #   response = client.disassociate_user_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisassociateUserSettingsResponse]
    def disassociate_user_settings(params = {}, options = {})
      request = build_request(:disassociate_user_settings, params)
      request.send_request(options)
    end

    # <p>Expires an active secure browser session.</p>
    # @param [Hash, Types::ExpireSessionRequest] params
    # @option params [String] :portal_id
    #   <p>The ID of the web portal for the session.</p>
    # @option params [String] :session_id
    #   <p>The ID of the session to expire.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     portal_id: "PortalId", # required
    #     session_id: "SessionId", # required
    #   }
    #   options = {}
    #   response = client.expire_session(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::ExpireSessionResponse]
    def expire_session(params = {}, options = {})
      request = build_request(:expire_session, params)
      request.send_request(options)
    end

    # <p>Gets browser settings.</p>
    # @param [Hash, Types::GetBrowserSettingsRequest] params
    # @option params [String] :browser_settings_arn
    #   <p>The ARN of the browser settings.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     browser_settings_arn: "ARN", # required
    #   }
    #   options = {}
    #   response = client.get_browser_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     browser_settings: {
    #       browser_settings_arn: "ARN", # required
    #       associated_portal_arns: ["ARN"],
    #       browser_policy: "BrowserPolicy",
    #       customer_managed_key: "keyArn",
    #       additional_encryption_context: {
    #         "StringType" => "StringType"
    #       }
    #     }
    #   }
    # @return [Types::GetBrowserSettingsResponse]
    def get_browser_settings(params = {}, options = {})
      request = build_request(:get_browser_settings, params)
      request.send_request(options)
    end

    # <p>Gets the data protection settings.</p>
    # @param [Hash, Types::GetDataProtectionSettingsRequest] params
    # @option params [String] :data_protection_settings_arn
    #   <p>The ARN of the data protection settings.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     data_protection_settings_arn: "ARN", # required
    #   }
    #   options = {}
    #   response = client.get_data_protection_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     data_protection_settings: {
    #       data_protection_settings_arn: "ARN", # required
    #       inline_redaction_configuration: {
    #         inline_redaction_patterns: [ # required
    #           {
    #             built_in_pattern_id: "BuiltInPatternId",
    #             custom_pattern: {
    #               pattern_name: "PatternName", # required
    #               pattern_regex: "Regex", # required
    #               pattern_description: "DescriptionSafe",
    #               keyword_regex: "Regex"
    #             },
    #             redaction_place_holder: { # required
    #               redaction_place_holder_type: "RedactionPlaceHolderType", # required
    #               redaction_place_holder_text: "RedactionPlaceHolderText"
    #             },
    #             enforced_urls: ["InlineRedactionUrl"],
    #             exempt_urls: ["InlineRedactionUrl"],
    #             confidence_level: 1
    #           }
    #         ],
    #         global_enforced_urls: ["InlineRedactionUrl"],
    #         global_exempt_urls: ["InlineRedactionUrl"],
    #         global_confidence_level: 1
    #       },
    #       associated_portal_arns: ["ARN"],
    #       display_name: "DisplayNameSafe",
    #       description: "DescriptionSafe",
    #       creation_date: Time.now,
    #       customer_managed_key: "keyArn",
    #       additional_encryption_context: {
    #         "StringType" => "StringType"
    #       }
    #     }
    #   }
    # @return [Types::GetDataProtectionSettingsResponse]
    def get_data_protection_settings(params = {}, options = {})
      request = build_request(:get_data_protection_settings, params)
      request.send_request(options)
    end

    # <p>Gets the identity provider.</p>
    # @param [Hash, Types::GetIdentityProviderRequest] params
    # @option params [String] :identity_provider_arn
    #   <p>The ARN of the identity provider.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identity_provider_arn: "SubresourceARN", # required
    #   }
    #   options = {}
    #   response = client.get_identity_provider(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     identity_provider: {
    #       identity_provider_arn: "SubresourceARN", # required
    #       identity_provider_name: "IdentityProviderName",
    #       identity_provider_type: "IdentityProviderType",
    #       identity_provider_details: {
    #         "StringType" => "StringType"
    #       }
    #     }
    #   }
    # @return [Types::GetIdentityProviderResponse]
    def get_identity_provider(params = {}, options = {})
      request = build_request(:get_identity_provider, params)
      request.send_request(options)
    end

    # <p>Gets the IP access settings.</p>
    # @param [Hash, Types::GetIpAccessSettingsRequest] params
    # @option params [String] :ip_access_settings_arn
    #   <p>The ARN of the IP access settings.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     ip_access_settings_arn: "ARN", # required
    #   }
    #   options = {}
    #   response = client.get_ip_access_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ip_access_settings: {
    #       ip_access_settings_arn: "ARN", # required
    #       associated_portal_arns: ["ARN"],
    #       ip_rules: [
    #         {
    #           ip_range: "IpRange", # required
    #           description: "Description"
    #         }
    #       ],
    #       display_name: "DisplayName",
    #       description: "Description",
    #       creation_date: Time.now,
    #       customer_managed_key: "keyArn",
    #       additional_encryption_context: {
    #         "StringType" => "StringType"
    #       }
    #     }
    #   }
    # @return [Types::GetIpAccessSettingsResponse]
    def get_ip_access_settings(params = {}, options = {})
      request = build_request(:get_ip_access_settings, params)
      request.send_request(options)
    end

    # <p>Gets the network settings.</p>
    # @param [Hash, Types::GetNetworkSettingsRequest] params
    # @option params [String] :network_settings_arn
    #   <p>The ARN of the network settings.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     network_settings_arn: "ARN", # required
    #   }
    #   options = {}
    #   response = client.get_network_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     network_settings: {
    #       network_settings_arn: "ARN", # required
    #       associated_portal_arns: ["ARN"],
    #       vpc_id: "VpcId",
    #       subnet_ids: ["SubnetId"],
    #       security_group_ids: ["SecurityGroupId"]
    #     }
    #   }
    # @return [Types::GetNetworkSettingsResponse]
    def get_network_settings(params = {}, options = {})
      request = build_request(:get_network_settings, params)
      request.send_request(options)
    end

    # <p>Gets the web portal.</p>
    # @param [Hash, Types::GetPortalRequest] params
    # @option params [String] :portal_arn
    #   <p>The ARN of the web portal.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     portal_arn: "ARN", # required
    #   }
    #   options = {}
    #   response = client.get_portal(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     portal: {
    #       portal_arn: "ARN", # required
    #       renderer_type: "RendererType",
    #       browser_type: "BrowserType",
    #       portal_status: "PortalStatus",
    #       portal_endpoint: "PortalEndpoint",
    #       display_name: "DisplayName",
    #       creation_date: Time.now,
    #       browser_settings_arn: "ARN",
    #       data_protection_settings_arn: "ARN",
    #       user_settings_arn: "ARN",
    #       network_settings_arn: "ARN",
    #       session_logger_arn: "ARN",
    #       trust_store_arn: "ARN",
    #       status_reason: "StatusReason",
    #       user_access_logging_settings_arn: "ARN",
    #       authentication_type: "AuthenticationType",
    #       ip_access_settings_arn: "ARN",
    #       customer_managed_key: "keyArn",
    #       additional_encryption_context: {
    #         "StringType" => "StringType"
    #       },
    #       instance_type: "InstanceType",
    #       max_concurrent_sessions: 1
    #     }
    #   }
    # @return [Types::GetPortalResponse]
    def get_portal(params = {}, options = {})
      request = build_request(:get_portal, params)
      request.send_request(options)
    end

    # <p>Gets the service provider metadata.</p>
    # @param [Hash, Types::GetPortalServiceProviderMetadataRequest] params
    # @option params [String] :portal_arn
    #   <p>The ARN of the web portal.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     portal_arn: "ARN", # required
    #   }
    #   options = {}
    #   response = client.get_portal_service_provider_metadata(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     portal_arn: "ARN", # required
    #     service_provider_saml_metadata: "SamlMetadata"
    #   }
    # @return [Types::GetPortalServiceProviderMetadataResponse]
    def get_portal_service_provider_metadata(params = {}, options = {})
      request = build_request(:get_portal_service_provider_metadata, params)
      request.send_request(options)
    end

    # <p>Gets information for a secure browser session.</p>
    # @param [Hash, Types::GetSessionRequest] params
    # @option params [String] :portal_id
    #   <p>The ID of the web portal for the session.</p>
    # @option params [String] :session_id
    #   <p>The ID of the session.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     portal_id: "PortalId", # required
    #     session_id: "SessionId", # required
    #   }
    #   options = {}
    #   response = client.get_session(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     session: {
    #       portal_arn: "ARN",
    #       session_id: "StringType",
    #       username: "Username",
    #       client_ip_addresses: ["IpAddress"],
    #       status: "Active" # One of: ["Active", "Terminated"],
    #       start_time: Time.now,
    #       end_time: Time.now
    #     }
    #   }
    # @return [Types::GetSessionResponse]
    def get_session(params = {}, options = {})
      request = build_request(:get_session, params)
      request.send_request(options)
    end

    # <p>Gets details about a specific session logger resource.</p>
    # @param [Hash, Types::GetSessionLoggerRequest] params
    # @option params [String] :session_logger_arn
    #   <p>The ARN of the session logger.</p>
    # @example Get Session Logger with All Events
    #   # Retrieves a session logger configured for all events
    #   params = {
    #     session_logger_arn: "arn:aws:workspaces-web:us-west-2:123456789012:sessionLogger/12345678-1234-1234-1234-123456789012"
    #   }
    #   options = {}
    #   response = client.get_session_logger(params, options)
    #   response.to_h #=>
    #   {
    #     session_logger: {
    #       session_logger_arn: "arn:aws:workspaces-web:us-west-2:123456789012:sessionLogger/12345678-1234-1234-1234-123456789012",
    #       event_filter: {
    #     "all" => {}
    #   },
    #       log_configuration: {
    #         s3: {
    #           bucket: "my-session-logs-bucket-1",
    #           key_prefix: "session-logs/all/events",
    #           bucket_owner: "123456789012",
    #           log_file_format: Json,
    #           folder_structure: Flat
    #         }
    #       },
    #       display_name: "Session Logger with All Events",
    #       creation_date: Time.parse("2024-01-15T10:30:00Z"),
    #       associated_portal_arns: [
    #         "arn:aws:workspaces-web:us-west-2:123456789012:portal/87654321-4321-4321-4321-210987654321"
    #       ]
    #     }
    #   }
    # @example Get Session Logger with Specific Events
    #   # Retrieves a session logger configured for specific events
    #   params = {
    #     session_logger_arn: "arn:aws:workspaces-web:us-west-2:123456789012:sessionLogger/87654321-4321-4321-4321-210987654321"
    #   }
    #   options = {}
    #   response = client.get_session_logger(params, options)
    #   response.to_h #=>
    #   {
    #     session_logger: {
    #       session_logger_arn: "arn:aws:workspaces-web:us-west-2:123456789012:sessionLogger/87654321-4321-4321-4321-210987654321",
    #       event_filter: {
    #     "include" => [
    #       SessionStart,
    #       SessionEnd,
    #       UrlLoad,
    #       WebsiteInteract
    #     ]
    #   },
    #       log_configuration: {
    #         s3: {
    #           bucket: "my-session-logs-bucket-2",
    #           key_prefix: "session-logs/each/event",
    #           bucket_owner: "123456789012",
    #           log_file_format: JSONLines,
    #           folder_structure: NestedByDate
    #         }
    #       },
    #       display_name: "Session Logger with Each Events",
    #       customer_managed_key: "arn:aws:kms:us-west-2:123456789012:key/12345678-1234-1234-1234-123456789012",
    #       additional_encryption_context: {
    #         "EncryptionContextKey" => "EncryptionContextValue"
    #       },
    #       creation_date: Time.parse("2024-01-15T14:45:00Z")
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     session_logger_arn: "ARN", # required
    #   }
    #   options = {}
    #   response = client.get_session_logger(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     session_logger: {
    #       session_logger_arn: "ARN", # required
    #       event_filter: {
    #         # One of:
    #         all: {
    #         },
    #         include: ["WebsiteInteract" # One of: ["WebsiteInteract", "FileDownloadFromSecureBrowserToRemoteDisk", "FileTransferFromRemoteToLocalDisk", "FileTransferFromLocalToRemoteDisk", "FileUploadFromRemoteDiskToSecureBrowser", "ContentPasteToWebsite", "ContentTransferFromLocalToRemoteClipboard", "ContentCopyFromWebsite", "UrlLoad", "TabOpen", "TabClose", "PrintJobSubmit", "SessionConnect", "SessionStart", "SessionDisconnect", "SessionEnd"]]
    #       },
    #       log_configuration: {
    #         s3: {
    #           bucket: "S3Bucket", # required
    #           key_prefix: "S3KeyPrefix",
    #           bucket_owner: "S3BucketOwner",
    #           log_file_format: "JSONLines" # One of: ["JSONLines", "Json"], # required
    #           folder_structure: "Flat" # One of: ["Flat", "NestedByDate"], # required
    #         }
    #       },
    #       customer_managed_key: "keyArn",
    #       additional_encryption_context: {
    #         "StringType" => "StringType"
    #       },
    #       associated_portal_arns: ["ARN"],
    #       display_name: "DisplayNameSafe",
    #       creation_date: Time.now
    #     }
    #   }
    # @return [Types::GetSessionLoggerResponse]
    def get_session_logger(params = {}, options = {})
      request = build_request(:get_session_logger, params)
      request.send_request(options)
    end

    # <p>Gets the trust store.</p>
    # @param [Hash, Types::GetTrustStoreRequest] params
    # @option params [String] :trust_store_arn
    #   <p>The ARN of the trust store.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     trust_store_arn: "ARN", # required
    #   }
    #   options = {}
    #   response = client.get_trust_store(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     trust_store: {
    #       associated_portal_arns: ["ARN"],
    #       trust_store_arn: "ARN", # required
    #     }
    #   }
    # @return [Types::GetTrustStoreResponse]
    def get_trust_store(params = {}, options = {})
      request = build_request(:get_trust_store, params)
      request.send_request(options)
    end

    # <p>Gets the trust store certificate.</p>
    # @param [Hash, Types::GetTrustStoreCertificateRequest] params
    # @option params [String] :trust_store_arn
    #   <p>The ARN of the trust store certificate.</p>
    # @option params [String] :thumbprint
    #   <p>The thumbprint of the trust store certificate.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     trust_store_arn: "ARN", # required
    #     thumbprint: "CertificateThumbprint", # required
    #   }
    #   options = {}
    #   response = client.get_trust_store_certificate(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     trust_store_arn: "ARN", # required
    #     certificate: {
    #       thumbprint: "CertificateThumbprint",
    #       subject: "CertificatePrincipal",
    #       issuer: "CertificatePrincipal",
    #       not_valid_before: Time.now,
    #       not_valid_after: Time.now,
    #       body: "data"
    #     }
    #   }
    # @return [Types::GetTrustStoreCertificateResponse]
    def get_trust_store_certificate(params = {}, options = {})
      request = build_request(:get_trust_store_certificate, params)
      request.send_request(options)
    end

    # <p>Gets user access logging settings.</p>
    # @param [Hash, Types::GetUserAccessLoggingSettingsRequest] params
    # @option params [String] :user_access_logging_settings_arn
    #   <p>The ARN of the user access logging settings.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_access_logging_settings_arn: "ARN", # required
    #   }
    #   options = {}
    #   response = client.get_user_access_logging_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     user_access_logging_settings: {
    #       user_access_logging_settings_arn: "ARN", # required
    #       associated_portal_arns: ["ARN"],
    #       kinesis_stream_arn: "KinesisStreamArn"
    #     }
    #   }
    # @return [Types::GetUserAccessLoggingSettingsResponse]
    def get_user_access_logging_settings(params = {}, options = {})
      request = build_request(:get_user_access_logging_settings, params)
      request.send_request(options)
    end

    # <p>Gets user settings.</p>
    # @param [Hash, Types::GetUserSettingsRequest] params
    # @option params [String] :user_settings_arn
    #   <p>The ARN of the user settings.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_settings_arn: "ARN", # required
    #   }
    #   options = {}
    #   response = client.get_user_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     user_settings: {
    #       user_settings_arn: "ARN", # required
    #       associated_portal_arns: ["ARN"],
    #       copy_allowed: "EnabledType",
    #       paste_allowed: "EnabledType",
    #       download_allowed: "EnabledType",
    #       upload_allowed: "EnabledType",
    #       print_allowed: "EnabledType",
    #       disconnect_timeout_in_minutes: 1,
    #       idle_disconnect_timeout_in_minutes: 1,
    #       cookie_synchronization_configuration: {
    #         allowlist: [ # required
    #           {
    #             domain: "CookieDomain", # required
    #             name: "CookieName",
    #             path: "CookiePath"
    #           }
    #         ],
    #         blocklist: [
    #           {
    #             domain: "CookieDomain", # required
    #             name: "CookieName",
    #             path: "CookiePath"
    #           }
    #         ]
    #       },
    #       customer_managed_key: "keyArn",
    #       additional_encryption_context: {
    #         "StringType" => "StringType"
    #       },
    #       deep_link_allowed: "EnabledType",
    #       toolbar_configuration: {
    #         toolbar_type: "ToolbarType",
    #         visual_mode: "VisualMode",
    #         hidden_toolbar_items: ["ToolbarItem"],
    #         max_display_resolution: "MaxDisplayResolution"
    #       }
    #     }
    #   }
    # @return [Types::GetUserSettingsResponse]
    def get_user_settings(params = {}, options = {})
      request = build_request(:get_user_settings, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of browser settings.</p>
    # @param [Hash, Types::ListBrowserSettingsRequest] params
    # @option params [String] :next_token
    #   <p>The pagination token used to retrieve the next page of results for this
    #            operation.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be included in the next page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_browser_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     browser_settings: [
    #       {
    #         browser_settings_arn: "ARN", # required
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListBrowserSettingsResponse]
    def list_browser_settings(params = {}, options = {})
      request = build_request(:list_browser_settings, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of data protection settings.</p>
    # @param [Hash, Types::ListDataProtectionSettingsRequest] params
    # @option params [String] :next_token
    #   <p>The pagination token used to retrieve the next page of results for this
    #            operation.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be included in the next page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_data_protection_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     data_protection_settings: [
    #       {
    #         data_protection_settings_arn: "ARN", # required
    #         display_name: "DisplayNameSafe",
    #         description: "DescriptionSafe",
    #         creation_date: Time.now
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListDataProtectionSettingsResponse]
    def list_data_protection_settings(params = {}, options = {})
      request = build_request(:list_data_protection_settings, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of identity providers for a specific web portal.</p>
    # @param [Hash, Types::ListIdentityProvidersRequest] params
    # @option params [String] :next_token
    #   <p>The pagination token used to retrieve the next page of results for this
    #            operation.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be included in the next page.</p>
    # @option params [String] :portal_arn
    #   <p>The ARN of the web portal.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #     portal_arn: "ARN", # required
    #   }
    #   options = {}
    #   response = client.list_identity_providers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "PaginationToken",
    #     identity_providers: [
    #       {
    #         identity_provider_arn: "SubresourceARN", # required
    #         identity_provider_name: "IdentityProviderName",
    #         identity_provider_type: "IdentityProviderType"
    #       }
    #     ]
    #   }
    # @return [Types::ListIdentityProvidersResponse]
    def list_identity_providers(params = {}, options = {})
      request = build_request(:list_identity_providers, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of IP access settings.</p>
    # @param [Hash, Types::ListIpAccessSettingsRequest] params
    # @option params [String] :next_token
    #   <p>The pagination token used to retrieve the next page of results for this
    #            operation.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be included in the next page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_ip_access_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ip_access_settings: [
    #       {
    #         ip_access_settings_arn: "ARN", # required
    #         display_name: "DisplayName",
    #         description: "Description",
    #         creation_date: Time.now
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListIpAccessSettingsResponse]
    def list_ip_access_settings(params = {}, options = {})
      request = build_request(:list_ip_access_settings, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of network settings.</p>
    # @param [Hash, Types::ListNetworkSettingsRequest] params
    # @option params [String] :next_token
    #   <p>The pagination token used to retrieve the next page of results for this
    #            operation.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be included in the next page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_network_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     network_settings: [
    #       {
    #         network_settings_arn: "ARN", # required
    #         vpc_id: "VpcId"
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListNetworkSettingsResponse]
    def list_network_settings(params = {}, options = {})
      request = build_request(:list_network_settings, params)
      request.send_request(options)
    end

    # <p>Retrieves a list or web portals.</p>
    # @param [Hash, Types::ListPortalsRequest] params
    # @option params [String] :next_token
    #   <p>The pagination token used to retrieve the next page of results for this operation.
    #         </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be included in the next page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_portals(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     portals: [
    #       {
    #         portal_arn: "ARN", # required
    #         renderer_type: "RendererType",
    #         browser_type: "BrowserType",
    #         portal_status: "PortalStatus",
    #         portal_endpoint: "PortalEndpoint",
    #         display_name: "DisplayName",
    #         creation_date: Time.now,
    #         browser_settings_arn: "ARN",
    #         data_protection_settings_arn: "ARN",
    #         user_settings_arn: "ARN",
    #         network_settings_arn: "ARN",
    #         session_logger_arn: "ARN",
    #         trust_store_arn: "ARN",
    #         user_access_logging_settings_arn: "ARN",
    #         authentication_type: "AuthenticationType",
    #         ip_access_settings_arn: "ARN",
    #         instance_type: "InstanceType",
    #         max_concurrent_sessions: 1
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListPortalsResponse]
    def list_portals(params = {}, options = {})
      request = build_request(:list_portals, params)
      request.send_request(options)
    end

    # <p>Lists all available session logger resources.</p>
    # @param [Hash, Types::ListSessionLoggersRequest] params
    # @option params [String] :next_token
    #   <p>The pagination token used to retrieve the next page of results for this operation.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be included in the next page.</p>
    # @example List All Session Loggers
    #   # Lists all session loggers in the account without pagination
    #   params = {}
    #   options = {}
    #   response = client.list_session_loggers(params, options)
    #   response.to_h #=>
    #   {
    #     session_loggers: [
    #       {
    #         session_logger_arn: "arn:aws:workspaces-web:us-west-2:123456789012:sessionLogger/12345678-1234-1234-1234-123456789012",
    #         log_configuration: {
    #           s3: {
    #             bucket: "my-session-logs-bucket-1",
    #             key_prefix: "session-logs/all/events",
    #             bucket_owner: "123456789012",
    #             log_file_format: Json,
    #             folder_structure: Flat
    #           }
    #         },
    #         display_name: "Session Logger with All Events",
    #         creation_date: Time.parse("2024-01-15T10:30:00Z")
    #       },
    #       {
    #         session_logger_arn: "arn:aws:workspaces-web:us-west-2:123456789012:sessionLogger/87654321-4321-4321-4321-210987654321",
    #         log_configuration: {
    #           s3: {
    #             bucket: "my-session-logs-bucket-2",
    #             key_prefix: "session-logs/each/event",
    #             bucket_owner: "123456789012",
    #             log_file_format: JSONLines,
    #             folder_structure: NestedByDate
    #           }
    #         },
    #         display_name: "Session Logger with Each Events",
    #         creation_date: Time.parse("2024-01-15T14:45:00Z")
    #       }
    #     ]
    #   }
    # @example List Session Loggers with Pagination
    #   # Lists session loggers with pagination parameters
    #   params = {
    #     max_results: 1,
    #     next_token: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9"
    #   }
    #   options = {}
    #   response = client.list_session_loggers(params, options)
    #   response.to_h #=>
    #   {
    #     session_loggers: [
    #       {
    #         session_logger_arn: "arn:aws:workspaces-web:us-west-2:123456789012:sessionLogger/11111111-1111-1111-1111-111111111111",
    #         log_configuration: {
    #           s3: {
    #             bucket: "my-session-logs-bucket-3",
    #             key_prefix: "session-logs/pagination/example",
    #             bucket_owner: "123456789012",
    #             log_file_format: JSONLines,
    #             folder_structure: Flat
    #           }
    #         },
    #         display_name: "Session Logger Example with Pagination",
    #         creation_date: Time.parse("2024-03-15T12:45:00Z")
    #       }
    #     ],
    #     next_token: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_session_loggers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     session_loggers: [
    #       {
    #         session_logger_arn: "ARN", # required
    #         log_configuration: {
    #           s3: {
    #             bucket: "S3Bucket", # required
    #             key_prefix: "S3KeyPrefix",
    #             bucket_owner: "S3BucketOwner",
    #             log_file_format: "JSONLines" # One of: ["JSONLines", "Json"], # required
    #             folder_structure: "Flat" # One of: ["Flat", "NestedByDate"], # required
    #           }
    #         },
    #         display_name: "DisplayNameSafe",
    #         creation_date: Time.now
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListSessionLoggersResponse]
    def list_session_loggers(params = {}, options = {})
      request = build_request(:list_session_loggers, params)
      request.send_request(options)
    end

    # <p>Lists information for multiple secure browser sessions from a specific portal.</p>
    # @param [Hash, Types::ListSessionsRequest] params
    # @option params [String] :portal_id
    #   <p>The ID of the web portal for the sessions.</p>
    # @option params [String] :username
    #   <p>The username of the session.</p>
    # @option params [String] :session_id
    #   <p>The ID of the session.</p>
    # @option params [String] :sort_by
    #   <p>The method in which the returned sessions should be sorted.</p>
    # @option params [String] :status
    #   <p>The status of the session.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be included in the next page.</p>
    # @option params [String] :next_token
    #   <p>The pagination token used to retrieve the next page of results for this
    #            operation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     portal_id: "PortalId", # required
    #     username: "Username",
    #     session_id: "SessionId",
    #     sort_by: "StartTimeAscending" # One of: ["StartTimeAscending", "StartTimeDescending"],
    #     status: "Active" # One of: ["Active", "Terminated"],
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_sessions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     sessions: [ # required
    #       {
    #         portal_arn: "ARN",
    #         session_id: "StringType",
    #         username: "Username",
    #         status: "Active" # One of: ["Active", "Terminated"],
    #         start_time: Time.now,
    #         end_time: Time.now
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListSessionsResponse]
    def list_sessions(params = {}, options = {})
      request = build_request(:list_sessions, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of tags for a resource.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ARN", # required
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

    # <p>Retrieves a list of trust store certificates.</p>
    # @param [Hash, Types::ListTrustStoreCertificatesRequest] params
    # @option params [String] :trust_store_arn
    #   <p>The ARN of the trust store</p>
    # @option params [String] :next_token
    #   <p>The pagination token used to retrieve the next page of results for this
    #            operation.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be included in the next page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     trust_store_arn: "ARN", # required
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_trust_store_certificates(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     certificate_list: [
    #       {
    #         thumbprint: "CertificateThumbprint",
    #         subject: "CertificatePrincipal",
    #         issuer: "CertificatePrincipal",
    #         not_valid_before: Time.now,
    #         not_valid_after: Time.now
    #       }
    #     ],
    #     trust_store_arn: "ARN", # required
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListTrustStoreCertificatesResponse]
    def list_trust_store_certificates(params = {}, options = {})
      request = build_request(:list_trust_store_certificates, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of trust stores.</p>
    # @param [Hash, Types::ListTrustStoresRequest] params
    # @option params [String] :next_token
    #   <p>The pagination token used to retrieve the next page of results for this
    #            operation.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be included in the next page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_trust_stores(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     trust_stores: [
    #       {
    #         trust_store_arn: "ARN"
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListTrustStoresResponse]
    def list_trust_stores(params = {}, options = {})
      request = build_request(:list_trust_stores, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of user access logging settings.</p>
    # @param [Hash, Types::ListUserAccessLoggingSettingsRequest] params
    # @option params [String] :next_token
    #   <p>The pagination token used to retrieve the next page of results for this
    #            operation.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be included in the next page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_user_access_logging_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     user_access_logging_settings: [
    #       {
    #         user_access_logging_settings_arn: "ARN", # required
    #         kinesis_stream_arn: "KinesisStreamArn"
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListUserAccessLoggingSettingsResponse]
    def list_user_access_logging_settings(params = {}, options = {})
      request = build_request(:list_user_access_logging_settings, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of user settings.</p>
    # @param [Hash, Types::ListUserSettingsRequest] params
    # @option params [String] :next_token
    #   <p>The pagination token used to retrieve the next page of results for this operation.
    #         </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be included in the next page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_user_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     user_settings: [
    #       {
    #         user_settings_arn: "ARN", # required
    #         copy_allowed: "EnabledType",
    #         paste_allowed: "EnabledType",
    #         download_allowed: "EnabledType",
    #         upload_allowed: "EnabledType",
    #         print_allowed: "EnabledType",
    #         disconnect_timeout_in_minutes: 1,
    #         idle_disconnect_timeout_in_minutes: 1,
    #         cookie_synchronization_configuration: {
    #           allowlist: [ # required
    #             {
    #               domain: "CookieDomain", # required
    #               name: "CookieName",
    #               path: "CookiePath"
    #             }
    #           ],
    #           blocklist: [
    #             {
    #               domain: "CookieDomain", # required
    #               name: "CookieName",
    #               path: "CookiePath"
    #             }
    #           ]
    #         },
    #         deep_link_allowed: "EnabledType",
    #         toolbar_configuration: {
    #           toolbar_type: "ToolbarType",
    #           visual_mode: "VisualMode",
    #           hidden_toolbar_items: ["ToolbarItem"],
    #           max_display_resolution: "MaxDisplayResolution"
    #         }
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListUserSettingsResponse]
    def list_user_settings(params = {}, options = {})
      request = build_request(:list_user_settings, params)
      request.send_request(options)
    end

    # <p>Adds or overwrites one or more tags for the specified resource.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags of the resource.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request. Idempotency ensures that an API request completes only once. With an idempotent
    #            request, if the original request completes successfully, subsequent retries with the same
    #            client token returns the result from the original successful request. </p>
    #            <p>If you do not specify a client token, one is automatically generated by the Amazon Web Services
    #            SDK.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ARN", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     client_token: "ClientToken"
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

    # <p>Removes one or more tags from the specified resource.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The list of tag keys to remove from the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ARN", # required
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

    # <p>Updates browser settings.</p>
    # @param [Hash, Types::UpdateBrowserSettingsRequest] params
    # @option params [String] :browser_settings_arn
    #   <p>The ARN of the browser settings.</p>
    # @option params [String] :browser_policy
    #   <p>A JSON string containing Chrome Enterprise policies that will be applied to all
    #            streaming sessions. </p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request. Idempotency ensures that an API request completes only once. With an idempotent
    #            request, if the original request completes successfully, subsequent retries with the same
    #            client token return the result from the original successful request. </p>
    #            <p>If you do not specify a client token, one is automatically generated by the Amazon Web Services
    #            SDK.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     browser_settings_arn: "ARN", # required
    #     browser_policy: "BrowserPolicy",
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.update_browser_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     browser_settings: { # required
    #       browser_settings_arn: "ARN", # required
    #       associated_portal_arns: ["ARN"],
    #       browser_policy: "BrowserPolicy",
    #       customer_managed_key: "keyArn",
    #       additional_encryption_context: {
    #         "StringType" => "StringType"
    #       }
    #     }
    #   }
    # @return [Types::UpdateBrowserSettingsResponse]
    def update_browser_settings(params = {}, options = {})
      request = build_request(:update_browser_settings, params)
      request.send_request(options)
    end

    # <p>Updates data protection settings.</p>
    # @param [Hash, Types::UpdateDataProtectionSettingsRequest] params
    # @option params [String] :data_protection_settings_arn
    #   <p>The ARN of the data protection settings.</p>
    # @option params [Types::InlineRedactionConfiguration] :inline_redaction_configuration
    #   <p>The inline redaction configuration of the data protection settings that will be applied to all sessions.</p>
    # @option params [String] :display_name
    #   <p>The display name of the data protection settings.</p>
    # @option params [String] :description
    #   <p>The description of the data protection settings.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request. Idempotency ensures that an API request completes only once. With an idempotent
    #            request, if the original request completes successfully, subsequent retries with the same
    #            client token return the result from the original successful request. </p>
    #            <p>If you do not specify a client token, one is automatically generated by the Amazon Web Services
    #            SDK.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     data_protection_settings_arn: "ARN", # required
    #     inline_redaction_configuration: {
    #       inline_redaction_patterns: [ # required
    #         {
    #           built_in_pattern_id: "BuiltInPatternId",
    #           custom_pattern: {
    #             pattern_name: "PatternName", # required
    #             pattern_regex: "Regex", # required
    #             pattern_description: "DescriptionSafe",
    #             keyword_regex: "Regex"
    #           },
    #           redaction_place_holder: { # required
    #             redaction_place_holder_type: "RedactionPlaceHolderType", # required
    #             redaction_place_holder_text: "RedactionPlaceHolderText"
    #           },
    #           enforced_urls: ["InlineRedactionUrl"],
    #           exempt_urls: ["InlineRedactionUrl"],
    #           confidence_level: 1
    #         }
    #       ],
    #       global_enforced_urls: ["InlineRedactionUrl"],
    #       global_exempt_urls: ["InlineRedactionUrl"],
    #       global_confidence_level: 1
    #     },
    #     display_name: "DisplayNameSafe",
    #     description: "DescriptionSafe",
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.update_data_protection_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     data_protection_settings: { # required
    #       data_protection_settings_arn: "ARN", # required
    #       inline_redaction_configuration: {
    #         inline_redaction_patterns: [ # required
    #           {
    #             built_in_pattern_id: "BuiltInPatternId",
    #             custom_pattern: {
    #               pattern_name: "PatternName", # required
    #               pattern_regex: "Regex", # required
    #               pattern_description: "DescriptionSafe",
    #               keyword_regex: "Regex"
    #             },
    #             redaction_place_holder: { # required
    #               redaction_place_holder_type: "RedactionPlaceHolderType", # required
    #               redaction_place_holder_text: "RedactionPlaceHolderText"
    #             },
    #             enforced_urls: ["InlineRedactionUrl"],
    #             exempt_urls: ["InlineRedactionUrl"],
    #             confidence_level: 1
    #           }
    #         ],
    #         global_enforced_urls: ["InlineRedactionUrl"],
    #         global_exempt_urls: ["InlineRedactionUrl"],
    #         global_confidence_level: 1
    #       },
    #       associated_portal_arns: ["ARN"],
    #       display_name: "DisplayNameSafe",
    #       description: "DescriptionSafe",
    #       creation_date: Time.now,
    #       customer_managed_key: "keyArn",
    #       additional_encryption_context: {
    #         "StringType" => "StringType"
    #       }
    #     }
    #   }
    # @return [Types::UpdateDataProtectionSettingsResponse]
    def update_data_protection_settings(params = {}, options = {})
      request = build_request(:update_data_protection_settings, params)
      request.send_request(options)
    end

    # <p>Updates the identity provider. </p>
    # @param [Hash, Types::UpdateIdentityProviderRequest] params
    # @option params [String] :identity_provider_arn
    #   <p>The ARN of the identity provider.</p>
    # @option params [String] :identity_provider_name
    #   <p>The name of the identity provider.</p>
    # @option params [String] :identity_provider_type
    #   <p>The type of the identity provider.</p>
    # @option params [Hash<String, String>] :identity_provider_details
    #   <p>The details of the identity provider. The following list describes the provider detail
    #            keys for each identity provider type. </p>
    #            <ul>
    #               <li>
    #                  <p>For Google and Login with Amazon:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>client_id</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>client_secret</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>authorize_scopes</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>For Facebook:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>client_id</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>client_secret</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>authorize_scopes</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>api_version</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>For Sign in with Apple:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>client_id</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>team_id</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>key_id</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>private_key</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>authorize_scopes</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>For OIDC providers:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>client_id</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>client_secret</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>attributes_request_method</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>oidc_issuer</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>authorize_scopes</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>authorize_url</code>
    #                           <i>if not available from discovery URL specified by
    #                              <code>oidc_issuer</code> key</i>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>token_url</code>
    #                           <i>if not available from discovery URL specified by
    #                              <code>oidc_issuer</code> key</i>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>attributes_url</code>
    #                           <i>if not available from discovery URL specified by
    #                              <code>oidc_issuer</code> key</i>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>jwks_uri</code>
    #                           <i>if not available from discovery URL specified by
    #                              <code>oidc_issuer</code> key</i>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>For SAML providers:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>MetadataFile</code> OR <code>MetadataURL</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>IDPSignout</code> (boolean) <i>optional</i>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>IDPInit</code> (boolean) <i>optional</i>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>RequestSigningAlgorithm</code> (string) <i>optional</i>
    #                        - Only accepts <code>rsa-sha256</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>EncryptedResponses</code> (boolean) <i>optional</i>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request. Idempotency ensures that an API request completes only once. With an idempotent
    #            request, if the original request completes successfully, subsequent retries with the same
    #            client token return the result from the original successful request. </p>
    #            <p>If you do not specify a client token, one is automatically generated by the Amazon Web Services
    #            SDK.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identity_provider_arn: "SubresourceARN", # required
    #     identity_provider_name: "IdentityProviderName",
    #     identity_provider_type: "IdentityProviderType",
    #     identity_provider_details: {
    #       "StringType" => "StringType"
    #     },
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.update_identity_provider(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     identity_provider: { # required
    #       identity_provider_arn: "SubresourceARN", # required
    #       identity_provider_name: "IdentityProviderName",
    #       identity_provider_type: "IdentityProviderType",
    #       identity_provider_details: {
    #         "StringType" => "StringType"
    #       }
    #     }
    #   }
    # @return [Types::UpdateIdentityProviderResponse]
    def update_identity_provider(params = {}, options = {})
      request = build_request(:update_identity_provider, params)
      request.send_request(options)
    end

    # <p>Updates IP access settings.</p>
    # @param [Hash, Types::UpdateIpAccessSettingsRequest] params
    # @option params [String] :ip_access_settings_arn
    #   <p>The ARN of the IP access settings.</p>
    # @option params [String] :display_name
    #   <p>The display name of the IP access settings.</p>
    # @option params [String] :description
    #   <p>The description of the IP access settings.</p>
    # @option params [Array<Types::IpRule>] :ip_rules
    #   <p>The updated IP rules of the IP access settings.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request. Idempotency ensures that an API request completes only once. With an idempotent
    #            request, if the original request completes successfully, subsequent retries with the same
    #            client token return the result from the original successful request. </p>
    #            <p>If you do not specify a client token, one is automatically generated by the Amazon Web Services
    #            SDK.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     ip_access_settings_arn: "ARN", # required
    #     display_name: "DisplayName",
    #     description: "Description",
    #     ip_rules: [
    #       {
    #         ip_range: "IpRange", # required
    #         description: "Description"
    #       }
    #     ],
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.update_ip_access_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ip_access_settings: { # required
    #       ip_access_settings_arn: "ARN", # required
    #       associated_portal_arns: ["ARN"],
    #       ip_rules: [
    #         {
    #           ip_range: "IpRange", # required
    #           description: "Description"
    #         }
    #       ],
    #       display_name: "DisplayName",
    #       description: "Description",
    #       creation_date: Time.now,
    #       customer_managed_key: "keyArn",
    #       additional_encryption_context: {
    #         "StringType" => "StringType"
    #       }
    #     }
    #   }
    # @return [Types::UpdateIpAccessSettingsResponse]
    def update_ip_access_settings(params = {}, options = {})
      request = build_request(:update_ip_access_settings, params)
      request.send_request(options)
    end

    # <p>Updates network settings.</p>
    # @param [Hash, Types::UpdateNetworkSettingsRequest] params
    # @option params [String] :network_settings_arn
    #   <p>The ARN of the network settings.</p>
    # @option params [String] :vpc_id
    #   <p>The VPC that streaming instances will connect to.</p>
    # @option params [Array<String>] :subnet_ids
    #   <p>The subnets in which network interfaces are created to connect streaming instances to
    #            your VPC. At least two of these subnets must be in different availability zones.</p>
    # @option params [Array<String>] :security_group_ids
    #   <p>One or more security groups used to control access from streaming instances to your
    #            VPC.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request. Idempotency ensures that an API request completes only once. With an idempotent
    #            request, if the original request completes successfully, subsequent retries with the same
    #            client token return the result from the original successful request. </p>
    #            <p>If you do not specify a client token, one is automatically generated by the Amazon Web Services
    #            SDK.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     network_settings_arn: "ARN", # required
    #     vpc_id: "VpcId",
    #     subnet_ids: ["SubnetId"],
    #     security_group_ids: ["SecurityGroupId"],
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.update_network_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     network_settings: { # required
    #       network_settings_arn: "ARN", # required
    #       associated_portal_arns: ["ARN"],
    #       vpc_id: "VpcId",
    #       subnet_ids: ["SubnetId"],
    #       security_group_ids: ["SecurityGroupId"]
    #     }
    #   }
    # @return [Types::UpdateNetworkSettingsResponse]
    def update_network_settings(params = {}, options = {})
      request = build_request(:update_network_settings, params)
      request.send_request(options)
    end

    # <p>Updates a web portal.</p>
    # @param [Hash, Types::UpdatePortalRequest] params
    # @option params [String] :portal_arn
    #   <p>The ARN of the web portal.</p>
    # @option params [String] :display_name
    #   <p>The name of the web portal. This is not visible to users who log into the web
    #            portal.</p>
    # @option params [String] :authentication_type
    #   <p>The type of authentication integration points used when signing into the web portal.
    #            Defaults to <code>Standard</code>.</p>
    #            <p>
    #               <code>Standard</code> web portals are authenticated directly through your identity
    #            provider. You need to call <code>CreateIdentityProvider</code> to integrate your identity
    #            provider with your web portal. User and group access to your web portal is controlled
    #            through your identity provider.</p>
    #            <p>
    #               <code>IAM Identity Center</code> web portals are authenticated through IAM Identity Center. Identity sources
    #            (including external identity provider integration), plus user and group access to your web
    #            portal, can be configured in the IAM Identity Center.</p>
    # @option params [String] :instance_type
    #   <p>The type and resources of the underlying instance.</p>
    # @option params [Integer] :max_concurrent_sessions
    #   <p>The maximum number of concurrent sessions for the portal.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     portal_arn: "ARN", # required
    #     display_name: "DisplayName",
    #     authentication_type: "AuthenticationType",
    #     instance_type: "InstanceType",
    #     max_concurrent_sessions: 1
    #   }
    #   options = {}
    #   response = client.update_portal(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     portal: {
    #       portal_arn: "ARN", # required
    #       renderer_type: "RendererType",
    #       browser_type: "BrowserType",
    #       portal_status: "PortalStatus",
    #       portal_endpoint: "PortalEndpoint",
    #       display_name: "DisplayName",
    #       creation_date: Time.now,
    #       browser_settings_arn: "ARN",
    #       data_protection_settings_arn: "ARN",
    #       user_settings_arn: "ARN",
    #       network_settings_arn: "ARN",
    #       session_logger_arn: "ARN",
    #       trust_store_arn: "ARN",
    #       status_reason: "StatusReason",
    #       user_access_logging_settings_arn: "ARN",
    #       authentication_type: "AuthenticationType",
    #       ip_access_settings_arn: "ARN",
    #       customer_managed_key: "keyArn",
    #       additional_encryption_context: {
    #         "StringType" => "StringType"
    #       },
    #       instance_type: "InstanceType",
    #       max_concurrent_sessions: 1
    #     }
    #   }
    # @return [Types::UpdatePortalResponse]
    def update_portal(params = {}, options = {})
      request = build_request(:update_portal, params)
      request.send_request(options)
    end

    # <p>Updates the details of a session logger.</p>
    # @param [Hash, Types::UpdateSessionLoggerRequest] params
    # @option params [String] :session_logger_arn
    #   <p>The ARN of the session logger to update.</p>
    # @option params [Types::EventFilter] :event_filter
    #   <p>The updated eventFilter.</p>
    # @option params [Types::LogConfiguration] :log_configuration
    #   <p>The updated logConfiguration.</p>
    # @option params [String] :display_name
    #   <p>The updated display name.</p>
    # @example Update Session Logger Event Filter
    #   # Updates a session logger to capture specific events instead of all events
    #   params = {
    #     session_logger_arn: "arn:aws:workspaces-web:us-west-2:123456789012:sessionLogger/12345678-1234-1234-1234-123456789012",
    #     event_filter: {
    #     "include" => [
    #       SessionStart,
    #       SessionEnd,
    #       UrlLoad,
    #       WebsiteInteract
    #     ]
    #   }
    #   }
    #   options = {}
    #   response = client.update_session_logger(params, options)
    #   response.to_h #=>
    #   {
    #     session_logger: {
    #       session_logger_arn: "arn:aws:workspaces-web:us-west-2:123456789012:sessionLogger/12345678-1234-1234-1234-123456789012",
    #       event_filter: {
    #     "include" => [
    #       SessionStart,
    #       SessionEnd,
    #       UrlLoad,
    #       WebsiteInteract
    #     ]
    #   },
    #       log_configuration: {
    #         s3: {
    #           bucket: "my-session-logs-bucket",
    #           key_prefix: "updated/session-logs/each/event",
    #           bucket_owner: "123456789012",
    #           log_file_format: Json,
    #           folder_structure: Flat
    #         }
    #       },
    #       display_name: "Updated Session Logger with Specific Events",
    #       creation_date: Time.parse("2024-01-15T10:30:00Z")
    #     }
    #   }
    # @example Update Session Logger Configuration
    #   # Updates the log configuration of a session logger
    #   params = {
    #     session_logger_arn: "arn:aws:workspaces-web:us-west-2:123456789012:sessionLogger/87654321-4321-4321-4321-210987654321",
    #     log_configuration: {
    #       s3: {
    #         bucket: "updated-my-session-logs-bucket-2",
    #         key_prefix: "updated/key/prefix",
    #         bucket_owner: "123456789012",
    #         log_file_format: Json,
    #         folder_structure: Flat
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_session_logger(params, options)
    #   response.to_h #=>
    #   {
    #     session_logger: {
    #       session_logger_arn: "arn:aws:workspaces-web:us-west-2:123456789012:sessionLogger/87654321-4321-4321-4321-210987654321",
    #       event_filter: {
    #     "all" => {}
    #   },
    #       log_configuration: {
    #         s3: {
    #           bucket: "updated-my-session-logs-bucket-2",
    #           key_prefix: "updated/key/prefix",
    #           bucket_owner: "123456789012",
    #           log_file_format: Json,
    #           folder_structure: Flat
    #         }
    #       },
    #       display_name: "Updated Session Logger with Log Config",
    #       customer_managed_key: "arn:aws:kms:us-west-2:123456789012:key/12345678-1234-1234-1234-123456789012",
    #       additional_encryption_context: {
    #         "EncryptionContextKey" => "EncryptionContextValue"
    #       },
    #       creation_date: Time.parse("2024-01-15T14:45:00Z")
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     session_logger_arn: "ARN", # required
    #     event_filter: {
    #       # One of:
    #       all: {
    #       },
    #       include: ["WebsiteInteract" # One of: ["WebsiteInteract", "FileDownloadFromSecureBrowserToRemoteDisk", "FileTransferFromRemoteToLocalDisk", "FileTransferFromLocalToRemoteDisk", "FileUploadFromRemoteDiskToSecureBrowser", "ContentPasteToWebsite", "ContentTransferFromLocalToRemoteClipboard", "ContentCopyFromWebsite", "UrlLoad", "TabOpen", "TabClose", "PrintJobSubmit", "SessionConnect", "SessionStart", "SessionDisconnect", "SessionEnd"]]
    #     },
    #     log_configuration: {
    #       s3: {
    #         bucket: "S3Bucket", # required
    #         key_prefix: "S3KeyPrefix",
    #         bucket_owner: "S3BucketOwner",
    #         log_file_format: "JSONLines" # One of: ["JSONLines", "Json"], # required
    #         folder_structure: "Flat" # One of: ["Flat", "NestedByDate"], # required
    #       }
    #     },
    #     display_name: "DisplayNameSafe"
    #   }
    #   options = {}
    #   response = client.update_session_logger(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     session_logger: { # required
    #       session_logger_arn: "ARN", # required
    #       event_filter: {
    #         # One of:
    #         all: {
    #         },
    #         include: ["WebsiteInteract" # One of: ["WebsiteInteract", "FileDownloadFromSecureBrowserToRemoteDisk", "FileTransferFromRemoteToLocalDisk", "FileTransferFromLocalToRemoteDisk", "FileUploadFromRemoteDiskToSecureBrowser", "ContentPasteToWebsite", "ContentTransferFromLocalToRemoteClipboard", "ContentCopyFromWebsite", "UrlLoad", "TabOpen", "TabClose", "PrintJobSubmit", "SessionConnect", "SessionStart", "SessionDisconnect", "SessionEnd"]]
    #       },
    #       log_configuration: {
    #         s3: {
    #           bucket: "S3Bucket", # required
    #           key_prefix: "S3KeyPrefix",
    #           bucket_owner: "S3BucketOwner",
    #           log_file_format: "JSONLines" # One of: ["JSONLines", "Json"], # required
    #           folder_structure: "Flat" # One of: ["Flat", "NestedByDate"], # required
    #         }
    #       },
    #       customer_managed_key: "keyArn",
    #       additional_encryption_context: {
    #         "StringType" => "StringType"
    #       },
    #       associated_portal_arns: ["ARN"],
    #       display_name: "DisplayNameSafe",
    #       creation_date: Time.now
    #     }
    #   }
    # @return [Types::UpdateSessionLoggerResponse]
    def update_session_logger(params = {}, options = {})
      request = build_request(:update_session_logger, params)
      request.send_request(options)
    end

    # <p>Updates the trust store.</p>
    # @param [Hash, Types::UpdateTrustStoreRequest] params
    # @option params [String] :trust_store_arn
    #   <p>The ARN of the trust store.</p>
    # @option params [Array<String>] :certificates_to_add
    #   <p>A list of CA certificates to add to the trust store.</p>
    # @option params [Array<String>] :certificates_to_delete
    #   <p>A list of CA certificates to delete from a trust store.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request. Idempotency ensures that an API request completes only once. With an idempotent
    #            request, if the original request completes successfully, subsequent retries with the same
    #            client token return the result from the original successful request. </p>
    #            <p>If you do not specify a client token, one is automatically generated by the Amazon Web Services
    #            SDK.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     trust_store_arn: "ARN", # required
    #     certificates_to_add: ["data"],
    #     certificates_to_delete: ["CertificateThumbprint"],
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.update_trust_store(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     trust_store_arn: "ARN", # required
    #   }
    # @return [Types::UpdateTrustStoreResponse]
    def update_trust_store(params = {}, options = {})
      request = build_request(:update_trust_store, params)
      request.send_request(options)
    end

    # <p>Updates the user access logging settings.</p>
    # @param [Hash, Types::UpdateUserAccessLoggingSettingsRequest] params
    # @option params [String] :user_access_logging_settings_arn
    #   <p>The ARN of the user access logging settings.</p>
    # @option params [String] :kinesis_stream_arn
    #   <p>The ARN of the Kinesis stream.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request. Idempotency ensures that an API request completes only once. With an idempotent
    #            request, if the original request completes successfully, subsequent retries with the same
    #            client token return the result from the original successful request. </p>
    #            <p>If you do not specify a client token, one is automatically generated by the Amazon Web Services
    #            SDK.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_access_logging_settings_arn: "ARN", # required
    #     kinesis_stream_arn: "KinesisStreamArn",
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.update_user_access_logging_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     user_access_logging_settings: { # required
    #       user_access_logging_settings_arn: "ARN", # required
    #       associated_portal_arns: ["ARN"],
    #       kinesis_stream_arn: "KinesisStreamArn"
    #     }
    #   }
    # @return [Types::UpdateUserAccessLoggingSettingsResponse]
    def update_user_access_logging_settings(params = {}, options = {})
      request = build_request(:update_user_access_logging_settings, params)
      request.send_request(options)
    end

    # <p>Updates the user settings.</p>
    # @param [Hash, Types::UpdateUserSettingsRequest] params
    # @option params [String] :user_settings_arn
    #   <p>The ARN of the user settings.</p>
    # @option params [String] :copy_allowed
    #   <p>Specifies whether the user can copy text from the streaming session to the local
    #            device.</p>
    # @option params [String] :paste_allowed
    #   <p>Specifies whether the user can paste text from the local device to the streaming
    #            session.</p>
    # @option params [String] :download_allowed
    #   <p>Specifies whether the user can download files from the streaming session to the local
    #            device.</p>
    # @option params [String] :upload_allowed
    #   <p>Specifies whether the user can upload files from the local device to the streaming
    #            session.</p>
    # @option params [String] :print_allowed
    #   <p>Specifies whether the user can print to the local device.</p>
    # @option params [Integer] :disconnect_timeout_in_minutes
    #   <p>The amount of time that a streaming session remains active after users
    #            disconnect.</p>
    # @option params [Integer] :idle_disconnect_timeout_in_minutes
    #   <p>The amount of time that users can be idle (inactive) before they are disconnected from
    #            their streaming session and the disconnect timeout interval begins.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request. Idempotency ensures that an API request completes only once. With an idempotent
    #            request, if the original request completes successfully, subsequent retries with the same
    #            client token return the result from the original successful request. </p>
    #            <p>If you do not specify a client token, one is automatically generated by the Amazon Web Services
    #            SDK.</p>
    # @option params [Types::CookieSynchronizationConfiguration] :cookie_synchronization_configuration
    #   <p>The configuration that specifies which cookies should be synchronized from the end
    #            user's local browser to the remote browser.</p>
    #            <p>If the allowlist and blocklist are empty, the configuration becomes null.</p>
    # @option params [String] :deep_link_allowed
    #   <p>Specifies whether the user can use deep links that open automatically when connecting to
    #            a session.</p>
    # @option params [Types::ToolbarConfiguration] :toolbar_configuration
    #   <p>The configuration of the toolbar. This allows administrators to select the toolbar type and visual mode, set maximum display resolution for sessions, and choose which items are visible to end users during their sessions. If administrators do not modify these settings, end users retain control over their toolbar preferences.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_settings_arn: "ARN", # required
    #     copy_allowed: "EnabledType",
    #     paste_allowed: "EnabledType",
    #     download_allowed: "EnabledType",
    #     upload_allowed: "EnabledType",
    #     print_allowed: "EnabledType",
    #     disconnect_timeout_in_minutes: 1,
    #     idle_disconnect_timeout_in_minutes: 1,
    #     client_token: "ClientToken",
    #     cookie_synchronization_configuration: {
    #       allowlist: [ # required
    #         {
    #           domain: "CookieDomain", # required
    #           name: "CookieName",
    #           path: "CookiePath"
    #         }
    #       ],
    #       blocklist: [
    #         {
    #           domain: "CookieDomain", # required
    #           name: "CookieName",
    #           path: "CookiePath"
    #         }
    #       ]
    #     },
    #     deep_link_allowed: "EnabledType",
    #     toolbar_configuration: {
    #       toolbar_type: "ToolbarType",
    #       visual_mode: "VisualMode",
    #       hidden_toolbar_items: ["ToolbarItem"],
    #       max_display_resolution: "MaxDisplayResolution"
    #     }
    #   }
    #   options = {}
    #   response = client.update_user_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     user_settings: { # required
    #       user_settings_arn: "ARN", # required
    #       associated_portal_arns: ["ARN"],
    #       copy_allowed: "EnabledType",
    #       paste_allowed: "EnabledType",
    #       download_allowed: "EnabledType",
    #       upload_allowed: "EnabledType",
    #       print_allowed: "EnabledType",
    #       disconnect_timeout_in_minutes: 1,
    #       idle_disconnect_timeout_in_minutes: 1,
    #       cookie_synchronization_configuration: {
    #         allowlist: [ # required
    #           {
    #             domain: "CookieDomain", # required
    #             name: "CookieName",
    #             path: "CookiePath"
    #           }
    #         ],
    #         blocklist: [
    #           {
    #             domain: "CookieDomain", # required
    #             name: "CookieName",
    #             path: "CookiePath"
    #           }
    #         ]
    #       },
    #       customer_managed_key: "keyArn",
    #       additional_encryption_context: {
    #         "StringType" => "StringType"
    #       },
    #       deep_link_allowed: "EnabledType",
    #       toolbar_configuration: {
    #         toolbar_type: "ToolbarType",
    #         visual_mode: "VisualMode",
    #         hidden_toolbar_items: ["ToolbarItem"],
    #         max_display_resolution: "MaxDisplayResolution"
    #       }
    #     }
    #   }
    # @return [Types::UpdateUserSettingsResponse]
    def update_user_settings(params = {}, options = {})
      request = build_request(:update_user_settings, params)
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
      context[:gem_name] = 'aws-sdk-workspacesweb'
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
