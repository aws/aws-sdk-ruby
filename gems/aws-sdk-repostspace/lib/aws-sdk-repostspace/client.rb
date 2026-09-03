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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:repostspace)

module Aws::Repostspace
  # An API client for Aws::Repostspace.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::RepostSpace
    @identifier = :repostspace

    add_plugin(::Aws::Repostspace::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::Repostspace::EndpointProvider)
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

    # <p>Add role to multiple users or groups in a private re:Post channel.</p>
    # @param [Hash, Types::BatchAddChannelRoleToAccessorsInput] params
    # @option params [String] :space_id
    #   <p>The unique ID of the private re:Post.</p>
    # @option params [String] :channel_id
    #   <p>The unique ID of the private re:Post channel.</p>
    # @option params [Array<String>] :accessor_ids
    #   <p>The user or group identifiers to add the role to.</p>
    # @option params [String] :channel_role
    #   <p>The channel role to add to the users or groups.</p>
    # @example BatchAddChannelRoleToAccessors
    #   # Example operation for batch_add_channel_role_to_accessors
    #   params = {
    #     space_id: "SP1234567890abcdefghijkl",
    #     channel_id: "WS1234567890abcdefghijkl",
    #     accessor_ids: [
    #       "12345678-1234-1234-1234-1234567890ab"
    #     ],
    #     channel_role: MODERATOR
    #   }
    #   options = {}
    #   response = client.batch_add_channel_role_to_accessors(params, options)
    #   response.to_h #=>
    #   {
    #     added_accessor_ids: [
    #       "12345678-1234-1234-1234-1234567890ab"
    #     ],
    #     errors: [
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     space_id: "SpaceId", # required
    #     channel_id: "ChannelId", # required
    #     accessor_ids: ["AccessorId"], # required
    #     channel_role: "ASKER" # One of: ["ASKER", "EXPERT", "MODERATOR", "SUPPORTREQUESTOR"], # required
    #   }
    #   options = {}
    #   response = client.batch_add_channel_role_to_accessors(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     added_accessor_ids: ["AccessorId"], # required
    #     errors: [ # required
    #       {
    #         accessor_id: "AccessorId", # required
    #         error: 1, # required
    #         message: "ErrorMessage", # required
    #       }
    #     ]
    #   }
    # @return [Types::BatchAddChannelRoleToAccessorsOutput]
    def batch_add_channel_role_to_accessors(params = {}, options = {})
      request = build_request(:batch_add_channel_role_to_accessors, params)
      request.send_request(options)
    end

    # <p>Add a role to multiple users or groups in a private re:Post.</p>
    # @param [Hash, Types::BatchAddRoleInput] params
    # @option params [String] :space_id
    #   <p>The unique ID of the private re:Post.</p>
    # @option params [Array<String>] :accessor_ids
    #   <p>The user or group accessor identifiers to add the role to.</p>
    # @option params [String] :role
    #   <p>The role to add to the users or groups.</p>
    # @example BatchAddRole
    #   # Example operation for batch_add_role
    #   params = {
    #     space_id: "SP1234567890abcdefghijkl",
    #     accessor_ids: [
    #       "12345678-1234-1234-1234-1234567890ab"
    #     ],
    #     role: EXPERT
    #   }
    #   options = {}
    #   response = client.batch_add_role(params, options)
    #   response.to_h #=>
    #   {
    #     added_accessor_ids: [
    #       "12345678-1234-1234-1234-1234567890ab"
    #     ],
    #     errors: [
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     space_id: "SpaceId", # required
    #     accessor_ids: ["AccessorId"], # required
    #     role: "EXPERT" # One of: ["EXPERT", "MODERATOR", "ADMINISTRATOR", "SUPPORTREQUESTOR"], # required
    #   }
    #   options = {}
    #   response = client.batch_add_role(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     added_accessor_ids: ["AccessorId"], # required
    #     errors: [ # required
    #       {
    #         accessor_id: "AccessorId", # required
    #         error: 1, # required
    #         message: "ErrorMessage", # required
    #       }
    #     ]
    #   }
    # @return [Types::BatchAddRoleOutput]
    def batch_add_role(params = {}, options = {})
      request = build_request(:batch_add_role, params)
      request.send_request(options)
    end

    # <p>Remove a role from multiple users or groups in a private re:Post channel.</p>
    # @param [Hash, Types::BatchRemoveChannelRoleFromAccessorsInput] params
    # @option params [String] :space_id
    #   <p>The unique ID of the private re:Post.</p>
    # @option params [String] :channel_id
    #   <p>The unique ID of the private re:Post channel.</p>
    # @option params [Array<String>] :accessor_ids
    #   <p>The users or groups identifiers to remove the role from.</p>
    # @option params [String] :channel_role
    #   <p>The channel role to remove from the users or groups.</p>
    # @example BatchRemoveChannelRoleFromAccessors
    #   # Example operation for batch_remove_channel_role_from_accessors
    #   params = {
    #     space_id: "SP1234567890abcdefghijkl",
    #     channel_id: "WS1234567890abcdefghijkl",
    #     accessor_ids: [
    #       "12345678-1234-1234-1234-1234567890ab"
    #     ],
    #     channel_role: MODERATOR
    #   }
    #   options = {}
    #   response = client.batch_remove_channel_role_from_accessors(params, options)
    #   response.to_h #=>
    #   {
    #     removed_accessor_ids: [
    #       "12345678-1234-1234-1234-1234567890ab"
    #     ],
    #     errors: [
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     space_id: "SpaceId", # required
    #     channel_id: "ChannelId", # required
    #     accessor_ids: ["AccessorId"], # required
    #     channel_role: "ASKER" # One of: ["ASKER", "EXPERT", "MODERATOR", "SUPPORTREQUESTOR"], # required
    #   }
    #   options = {}
    #   response = client.batch_remove_channel_role_from_accessors(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     removed_accessor_ids: ["AccessorId"], # required
    #     errors: [ # required
    #       {
    #         accessor_id: "AccessorId", # required
    #         error: 1, # required
    #         message: "ErrorMessage", # required
    #       }
    #     ]
    #   }
    # @return [Types::BatchRemoveChannelRoleFromAccessorsOutput]
    def batch_remove_channel_role_from_accessors(params = {}, options = {})
      request = build_request(:batch_remove_channel_role_from_accessors, params)
      request.send_request(options)
    end

    # <p>Remove a role from multiple users or groups in a private re:Post.</p>
    # @param [Hash, Types::BatchRemoveRoleInput] params
    # @option params [String] :space_id
    #   <p>The unique ID of the private re:Post.</p>
    # @option params [Array<String>] :accessor_ids
    #   <p>The user or group accessor identifiers to remove the role from.</p>
    # @option params [String] :role
    #   <p>The role to remove from the users or groups.</p>
    # @example BatchRemoveRole
    #   # Example operation for batch_remove_role
    #   params = {
    #     space_id: "SP1234567890abcdefghijkl",
    #     accessor_ids: [
    #       "12345678-1234-1234-1234-1234567890ab"
    #     ],
    #     role: EXPERT
    #   }
    #   options = {}
    #   response = client.batch_remove_role(params, options)
    #   response.to_h #=>
    #   {
    #     removed_accessor_ids: [
    #       "12345678-1234-1234-1234-1234567890ab"
    #     ],
    #     errors: [
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     space_id: "SpaceId", # required
    #     accessor_ids: ["AccessorId"], # required
    #     role: "EXPERT" # One of: ["EXPERT", "MODERATOR", "ADMINISTRATOR", "SUPPORTREQUESTOR"], # required
    #   }
    #   options = {}
    #   response = client.batch_remove_role(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     removed_accessor_ids: ["AccessorId"], # required
    #     errors: [ # required
    #       {
    #         accessor_id: "AccessorId", # required
    #         error: 1, # required
    #         message: "ErrorMessage", # required
    #       }
    #     ]
    #   }
    # @return [Types::BatchRemoveRoleOutput]
    def batch_remove_role(params = {}, options = {})
      request = build_request(:batch_remove_role, params)
      request.send_request(options)
    end

    # <p>Creates a channel in an AWS re:Post Private private re:Post.</p>
    # @param [Hash, Types::CreateChannelInput] params
    # @option params [String] :space_id
    #   <p>The unique ID of the private re:Post.</p>
    # @option params [String] :channel_name
    #   <p>The name for the channel. This must be unique per private re:Post.</p>
    # @option params [String] :channel_description
    #   <p>A description for the channel. This is used only to help you identify this channel.</p>
    # @example CreateChannel
    #   # Example operation for create_channel
    #   params = {
    #     space_id: "SP1234567890abcdefghijkl",
    #     channel_name: "My First Channel",
    #     channel_description: "Useful channel description"
    #   }
    #   options = {}
    #   response = client.create_channel(params, options)
    #   response.to_h #=>
    #   {
    #     channel_id: "WS1234567890abcdefghijkl"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     space_id: "SpaceId", # required
    #     channel_name: "ChannelName", # required
    #     channel_description: "ChannelDescription"
    #   }
    #   options = {}
    #   response = client.create_channel(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     channel_id: "ChannelId", # required
    #   }
    # @return [Types::CreateChannelOutput]
    def create_channel(params = {}, options = {})
      request = build_request(:create_channel, params)
      request.send_request(options)
    end

    # <p>Creates an AWS re:Post Private private re:Post.</p>
    # @param [Hash, Types::CreateSpaceInput] params
    # @option params [String] :name
    #   <p>The name for the private re:Post. This must be unique in your account.</p>
    # @option params [String] :subdomain
    #   <p>The subdomain that you use to access your AWS re:Post Private private re:Post. All custom subdomains must be approved by AWS before use. In addition to your custom subdomain, all private re:Posts are issued an AWS generated subdomain for immediate use.</p>
    # @option params [String] :tier
    #   <p>The pricing tier for the private re:Post.</p>
    # @option params [String] :description
    #   <p>A description for the private re:Post. This is used only to help you identify this private re:Post.</p>
    # @option params [String] :user_kms_key
    #   <p>The AWS KMS key ARN that’s used for the AWS KMS encryption. If you don't provide a key, your data is encrypted by default with a key that AWS owns and manages for you.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The list of tags associated with the private re:Post.</p>
    # @option params [String] :role_arn
    #   <p>The IAM role that grants permissions to the private re:Post to convert unanswered questions into AWS support tickets.</p>
    # @option params [Types::SupportedEmailDomainsParameters] :supported_email_domains
    #   <p/>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "SpaceName", # required
    #     subdomain: "SpaceSubdomain", # required
    #     tier: "BASIC" # One of: ["BASIC", "STANDARD"], # required
    #     description: "SpaceDescription",
    #     user_kms_key: "KMSKey",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     role_arn: "Arn",
    #     supported_email_domains: {
    #       enabled: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #       allowed_domains: ["EmailDomain"]
    #     }
    #   }
    #   options = {}
    #   response = client.create_space(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     space_id: "SpaceId", # required
    #   }
    # @return [Types::CreateSpaceOutput]
    def create_space(params = {}, options = {})
      request = build_request(:create_space, params)
      request.send_request(options)
    end

    # <p>Deletes an AWS re:Post Private private re:Post.</p>
    # @param [Hash, Types::DeleteSpaceInput] params
    # @option params [String] :space_id
    #   <p>The unique ID of the private re:Post.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     space_id: "SpaceId", # required
    #   }
    #   options = {}
    #   response = client.delete_space(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_space(params = {}, options = {})
      request = build_request(:delete_space, params)
      request.send_request(options)
    end

    # <p>Removes the user or group from the list of administrators of the private re:Post.</p>
    # @param [Hash, Types::DeregisterAdminInput] params
    # @option params [String] :space_id
    #   <p>The ID of the private re:Post to remove the admin from.</p>
    # @option params [String] :admin_id
    #   <p>The ID of the admin to remove.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     space_id: "SpaceId", # required
    #     admin_id: "AdminId", # required
    #   }
    #   options = {}
    #   response = client.deregister_admin(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def deregister_admin(params = {}, options = {})
      request = build_request(:deregister_admin, params)
      request.send_request(options)
    end

    # <p>Displays information about a channel in a private re:Post.</p>
    # @param [Hash, Types::GetChannelInput] params
    # @option params [String] :space_id
    #   <p>The unique ID of the private re:Post.</p>
    # @option params [String] :channel_id
    #   <p>The unique ID of the private re:Post channel.</p>
    # @example GetChannel
    #   # Example operation for get_channel
    #   params = {
    #     space_id: "SP1234567890abcdefghijkl",
    #     channel_id: "WS1234567890abcdefghijkl"
    #   }
    #   options = {}
    #   response = client.get_channel(params, options)
    #   response.to_h #=>
    #   {
    #     space_id: "SP1234567890abcdefghijkl",
    #     channel_id: "WS1234567890abcdefghijkl",
    #     channel_name: "My First Channel",
    #     channel_description: "Useful channel description",
    #     create_date_time: Time.parse("2025-02-13T18:49:13.713Z"),
    #     channel_roles: {
    #       "12345678-1234-1234-1234-1234567890ab" => [
    #         ASKER
    #       ]
    #     },
    #     channel_status: CREATED
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     space_id: "SpaceId", # required
    #     channel_id: "ChannelId", # required
    #   }
    #   options = {}
    #   response = client.get_channel(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     space_id: "SpaceId", # required
    #     channel_id: "ChannelId", # required
    #     channel_name: "ChannelName", # required
    #     channel_description: "ChannelDescription",
    #     create_date_time: Time.now, # required
    #     delete_date_time: Time.now,
    #     channel_roles: {
    #       "AccessorId" => ["ASKER" # One of: ["ASKER", "EXPERT", "MODERATOR", "SUPPORTREQUESTOR"]]
    #     },
    #     channel_status: "CREATED" # One of: ["CREATED", "CREATING", "CREATE_FAILED", "DELETED", "DELETING", "DELETE_FAILED"], # required
    #   }
    # @return [Types::GetChannelOutput]
    def get_channel(params = {}, options = {})
      request = build_request(:get_channel, params)
      request.send_request(options)
    end

    # <p>Displays information about the AWS re:Post Private private re:Post.</p>
    # @param [Hash, Types::GetSpaceInput] params
    # @option params [String] :space_id
    #   <p>The ID of the private re:Post.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     space_id: "SpaceId", # required
    #   }
    #   options = {}
    #   response = client.get_space(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     space_id: "SpaceId", # required
    #     arn: "Arn", # required
    #     name: "SpaceName", # required
    #     status: "ProvisioningStatus", # required
    #     configuration_status: "CONFIGURED" # One of: ["CONFIGURED", "UNCONFIGURED"], # required
    #     client_id: "ClientId", # required
    #     identity_store_id: "IdentityStoreId",
    #     application_arn: "Arn",
    #     description: "SpaceDescription",
    #     vanity_domain_status: "PENDING" # One of: ["PENDING", "APPROVED", "UNAPPROVED"], # required
    #     vanity_domain: "Url", # required
    #     random_domain: "Url", # required
    #     customer_role_arn: "Arn",
    #     create_date_time: Time.now, # required
    #     delete_date_time: Time.now,
    #     tier: "BASIC" # One of: ["BASIC", "STANDARD"], # required
    #     storage_limit: 1, # required
    #     user_admins: ["AdminId"],
    #     group_admins: ["AdminId"],
    #     roles: {
    #       "AccessorId" => ["EXPERT" # One of: ["EXPERT", "MODERATOR", "ADMINISTRATOR", "SUPPORTREQUESTOR"]]
    #     },
    #     user_kms_key: "KMSKey",
    #     user_count: 1,
    #     content_size: 1,
    #     supported_email_domains: {
    #       enabled: "ENABLED" # One of: ["ENABLED", "DISABLED", "NOT_ALLOWED"],
    #       allowed_domains: ["EmailDomain"]
    #     }
    #   }
    # @return [Types::GetSpaceOutput]
    def get_space(params = {}, options = {})
      request = build_request(:get_space, params)
      request.send_request(options)
    end

    # <p>Returns the list of channel within a private re:Post with some information about each channel.</p>
    # @param [Hash, Types::ListChannelsInput] params
    # @option params [String] :space_id
    #   <p>The unique ID of the private re:Post.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of channel to return. You receive this token from a previous ListChannels operation.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of channels to include in the results.</p>
    # @example ListChannels
    #   # Example operation for list_channels
    #   params = {
    #     space_id: "SP1234567890abcdefghijkl"
    #   }
    #   options = {}
    #   response = client.list_channels(params, options)
    #   response.to_h #=>
    #   {
    #     channels: [
    #       {
    #         space_id: "SP1234567890abcdefghijkl",
    #         channel_id: "WS1234567890abcdefghijkl",
    #         channel_name: "My First Channel",
    #         channel_description: "Useful channel description",
    #         create_date_time: Time.parse("2020-02-20T20:20:20.420Z"),
    #         channel_status: CREATED,
    #         user_count: 5,
    #         group_count: 1
    #       },
    #       {
    #         space_id: "SP1234567890abcdefghijkl",
    #         channel_id: "WSabcdefghijkl1234567890",
    #         channel_name: "Better Channel",
    #         channel_description: "Better channel description",
    #         create_date_time: Time.parse("2025-06-20T14:43:34.201Z"),
    #         channel_status: CREATED,
    #         user_count: 1,
    #         group_count: 0
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     space_id: "SpaceId", # required
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_channels(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     channels: [ # required
    #       {
    #         space_id: "SpaceId", # required
    #         channel_id: "ChannelId", # required
    #         channel_name: "ChannelName", # required
    #         channel_description: "ChannelDescription",
    #         create_date_time: Time.now, # required
    #         delete_date_time: Time.now,
    #         channel_status: "CREATED" # One of: ["CREATED", "CREATING", "CREATE_FAILED", "DELETED", "DELETING", "DELETE_FAILED"], # required
    #         user_count: 1, # required
    #         group_count: 1, # required
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListChannelsOutput]
    def list_channels(params = {}, options = {})
      request = build_request(:list_channels, params)
      request.send_request(options)
    end

    # <p>Returns a list of AWS re:Post Private private re:Posts in the account with some information about each private re:Post.</p>
    # @param [Hash, Types::ListSpacesInput] params
    # @option params [String] :next_token
    #   <p>The token for the next set of private re:Posts to return. You receive this token from a previous ListSpaces operation.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of private re:Posts to include in the results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_spaces(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     spaces: [ # required
    #       {
    #         space_id: "SpaceId", # required
    #         arn: "Arn", # required
    #         name: "SpaceName", # required
    #         description: "SpaceDescription",
    #         status: "ProvisioningStatus", # required
    #         configuration_status: "CONFIGURED" # One of: ["CONFIGURED", "UNCONFIGURED"], # required
    #         vanity_domain_status: "PENDING" # One of: ["PENDING", "APPROVED", "UNAPPROVED"], # required
    #         vanity_domain: "Url", # required
    #         random_domain: "Url", # required
    #         tier: "BASIC" # One of: ["BASIC", "STANDARD"], # required
    #         storage_limit: 1, # required
    #         create_date_time: Time.now, # required
    #         delete_date_time: Time.now,
    #         user_kms_key: "KMSKey",
    #         user_count: 1,
    #         content_size: 1,
    #         supported_email_domains: {
    #           enabled: "ENABLED" # One of: ["ENABLED", "DISABLED", "NOT_ALLOWED"],
    #           allowed_domains: ["EmailDomain"]
    #         }
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListSpacesOutput]
    def list_spaces(params = {}, options = {})
      request = build_request(:list_spaces, params)
      request.send_request(options)
    end

    # <p>Returns the tags that are associated with the AWS re:Post Private resource specified by the resourceArn. The only resource that can be tagged is a private re:Post.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource that the tags are associated with.</p>
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
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Adds a user or group to the list of administrators of the private re:Post.</p>
    # @param [Hash, Types::RegisterAdminInput] params
    # @option params [String] :space_id
    #   <p>The ID of the private re:Post.</p>
    # @option params [String] :admin_id
    #   <p>The ID of the administrator.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     space_id: "SpaceId", # required
    #     admin_id: "AdminId", # required
    #   }
    #   options = {}
    #   response = client.register_admin(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def register_admin(params = {}, options = {})
      request = build_request(:register_admin, params)
      request.send_request(options)
    end

    # <p>Sends an invitation email to selected users and groups.</p>
    # @param [Hash, Types::SendInvitesInput] params
    # @option params [String] :space_id
    #   <p>The ID of the private re:Post.</p>
    # @option params [Array<String>] :accessor_ids
    #   <p>The array of identifiers for the users and groups.</p>
    # @option params [String] :title
    #   <p>The title of the invite.</p>
    # @option params [String] :body
    #   <p>The body of the invite.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     space_id: "SpaceId", # required
    #     accessor_ids: ["AccessorId"], # required
    #     title: "InviteTitle", # required
    #     body: "InviteBody", # required
    #   }
    #   options = {}
    #   response = client.send_invites(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def send_invites(params = {}, options = {})
      request = build_request(:send_invites, params)
      request.send_request(options)
    end

    # <p>Associates tags with an AWS re:Post Private resource. Currently, the only resource that can be tagged is the private re:Post. If you specify a new tag key for the resource, the tag is appended to the list of tags that are associated with the resource. If you specify a tag key that’s already associated with the resource, the new tag value that you specify replaces the previous value for that tag.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource that the tag is associated with.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The list of tag keys and values that must be associated with the resource. You can associate tag keys only, tags (key and values) only, or a combination of tag keys and tags.</p>
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
    # @return [Types::TagResourceResponse]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Removes the association of the tag with the AWS re:Post Private resource.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The key values of the tag.</p>
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

    # <p>Modifies an existing channel.</p>
    # @param [Hash, Types::UpdateChannelInput] params
    # @option params [String] :space_id
    #   <p>The unique ID of the private re:Post.</p>
    # @option params [String] :channel_id
    #   <p>The unique ID of the private re:Post channel.</p>
    # @option params [String] :channel_name
    #   <p>The name for the channel. This must be unique per private re:Post.</p>
    # @option params [String] :channel_description
    #   <p>A description for the channel. This is used only to help you identify this channel.</p>
    # @example UpdateChannel
    #   # Example operation for update_channel
    #   params = {
    #     space_id: "SP1234567890abcdefghijkl",
    #     channel_id: "WS1234567890abcdefghijkl",
    #     channel_name: "Better Channel",
    #     channel_description: "Better channel description"
    #   }
    #   options = {}
    #   response = client.update_channel(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     space_id: "SpaceId", # required
    #     channel_id: "ChannelId", # required
    #     channel_name: "ChannelName", # required
    #     channel_description: "ChannelDescription"
    #   }
    #   options = {}
    #   response = client.update_channel(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateChannelOutput]
    def update_channel(params = {}, options = {})
      request = build_request(:update_channel, params)
      request.send_request(options)
    end

    # <p>Modifies an existing AWS re:Post Private private re:Post.</p>
    # @param [Hash, Types::UpdateSpaceInput] params
    # @option params [String] :space_id
    #   <p>The unique ID of this private re:Post.</p>
    # @option params [String] :description
    #   <p>A description for the private re:Post. This is used only to help you identify this private re:Post.</p>
    # @option params [String] :tier
    #   <p>The pricing tier of this private re:Post.</p>
    # @option params [String] :role_arn
    #   <p>The IAM role that grants permissions to the private re:Post to convert unanswered questions into AWS support tickets.</p>
    # @option params [Types::SupportedEmailDomainsParameters] :supported_email_domains
    #   <p/>
    # @example Request syntax with placeholder values
    #   params = {
    #     space_id: "SpaceId", # required
    #     description: "SpaceDescription",
    #     tier: "BASIC" # One of: ["BASIC", "STANDARD"],
    #     role_arn: "Arn",
    #     supported_email_domains: {
    #       enabled: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #       allowed_domains: ["EmailDomain"]
    #     }
    #   }
    #   options = {}
    #   response = client.update_space(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_space(params = {}, options = {})
      request = build_request(:update_space, params)
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
      context[:gem_name] = 'aws-sdk-repostspace'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Request.new(handlers: handlers, context: context)
    end

    private

    def waiters
      {
        channel_created: Waiters::ChannelCreated,
        channel_deleted: Waiters::ChannelDeleted,
        space_created: Waiters::SpaceCreated,
        space_deleted: Waiters::SpaceDeleted
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
