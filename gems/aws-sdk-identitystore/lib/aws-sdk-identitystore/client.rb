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
require 'aws-sdk-core/json_rpc'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:identitystore)

module Aws::Identitystore
  # An API client for Aws::Identitystore.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AWSIdentityStore
    @identifier = :identitystore

    add_plugin(::Aws::Identitystore::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::Identitystore::EndpointProvider)
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
    #  Supported protocols: +:json_rpc+ (defaults to +:json_rpc+).
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

    # <p>Creates a group within the specified identity store.</p>
    # @param [Hash, Types::CreateGroupRequest] params
    # @option params [String] :identity_store_id
    #   <p>The globally unique identifier for the identity store.</p> <p>You can specify the identity store by ID or by Amazon Resource Name (ARN). For example, identity store ID <code>d-1234567890</code> or identity store ARN <code>arn:aws:identitystore::111122223333:identitystore/d-1234567890</code>.</p>
    # @option params [String] :display_name
    #   <p>A string containing the name of the group. This value is commonly displayed when the group is referenced. <code>Administrator</code> and <code>AWSAdministrators</code> are reserved names and can't be used for users or groups.</p>
    # @option params [String] :description
    #   <p>A string containing the description of the group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identity_store_id: "IdentityStoreId", # required
    #     display_name: "GroupDisplayName",
    #     description: "SensitiveStringType"
    #   }
    #   options = {}
    #   response = client.create_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     identity_store_id: "IdentityStoreId", # required
    #     group_id: "ResourceId", # required
    #     group_arn: "ResourceArn", # required
    #     revision: "ResourceRevision", # required
    #   }
    # @return [Types::CreateGroupResponse]
    def create_group(params = {}, options = {})
      request = build_request(:create_group, params)
      request.send_request(options)
    end

    # <p>Creates a relationship between a member and a group. The following identifiers must be specified: <code>GroupId</code>, <code>IdentityStoreId</code>, and <code>MemberId</code>.</p>
    # @param [Hash, Types::CreateGroupMembershipRequest] params
    # @option params [String] :identity_store_id
    #   <p>The globally unique identifier for the identity store.</p> <p>You can specify the identity store by ID or by Amazon Resource Name (ARN). For example, identity store ID <code>d-1234567890</code> or identity store ARN <code>arn:aws:identitystore::111122223333:identitystore/d-1234567890</code>.</p>
    # @option params [String] :group_id
    #   <p>The identifier for a group in the identity store.</p> <p>You can specify the group by ID or by Amazon Resource Name (ARN). For example, group ID <code>a1b2c3d4-5678-90ab-cdef-EXAMPLE22222</code> or group ARN <code>arn:aws:identitystore:::group/a1b2c3d4-5678-90ab-cdef-EXAMPLE22222</code>.</p>
    # @option params [Types::MemberId] :member_id
    #   <p>An object that contains the identifier of a group member. Setting the <code>UserID</code> field to the specific identifier for a user indicates that the user is a member of the group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identity_store_id: "IdentityStoreId", # required
    #     group_id: "ResourceId", # required
    #     member_id: { # required
    #       # One of:
    #       user_id: "ResourceId"
    #     }
    #   }
    #   options = {}
    #   response = client.create_group_membership(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     identity_store_id: "IdentityStoreId", # required
    #     membership_id: "ResourceId", # required
    #     membership_arn: "ResourceArn", # required
    #   }
    # @return [Types::CreateGroupMembershipResponse]
    def create_group_membership(params = {}, options = {})
      request = build_request(:create_group_membership, params)
      request.send_request(options)
    end

    # <p>Creates a user within the specified identity store.</p>
    # @param [Hash, Types::CreateUserRequest] params
    # @option params [String] :identity_store_id
    #   <p>The globally unique identifier for the identity store.</p> <p>You can specify the identity store by ID or by Amazon Resource Name (ARN). For example, identity store ID <code>d-1234567890</code> or identity store ARN <code>arn:aws:identitystore::111122223333:identitystore/d-1234567890</code>.</p>
    # @option params [String] :user_name
    #   <p>A unique string used to identify the user. The length limit is 128 characters. This value can consist of letters, accented characters, symbols, numbers, and punctuation. This value is specified at the time the user is created and stored as an attribute of the user object in the identity store. <code>Administrator</code> and <code>AWSAdministrators</code> are reserved names and can't be used for users or groups.</p>
    # @option params [Types::Name] :name
    #   <p>An object containing the name of the user. When used in IAM Identity Center, this parameter is required.</p>
    # @option params [String] :display_name
    #   <p>A string containing the name of the user. This value is typically formatted for display when the user is referenced. For example, "John Doe." When used in IAM Identity Center, this parameter is required.</p>
    # @option params [String] :nick_name
    #   <p>A string containing an alternate name for the user.</p>
    # @option params [String] :profile_url
    #   <p>A string containing a URL that might be associated with the user.</p>
    # @option params [Array<Types::Email>] :emails
    #   <p>A list of <code>Email</code> objects containing email addresses associated with the user.</p>
    # @option params [Array<Types::Address>] :addresses
    #   <p>A list of <code>Address</code> objects containing addresses associated with the user.</p>
    # @option params [Array<Types::PhoneNumber>] :phone_numbers
    #   <p>A list of <code>PhoneNumber</code> objects containing phone numbers associated with the user.</p>
    # @option params [String] :user_type
    #   <p>A string indicating the type of user. Possible values are left unspecified. The value can vary based on your specific use case.</p>
    # @option params [String] :title
    #   <p>A string containing the title of the user. Possible values are left unspecified. The value can vary based on your specific use case.</p>
    # @option params [String] :preferred_language
    #   <p>A string containing the preferred language of the user. For example, "American English" or "en-us."</p>
    # @option params [String] :locale
    #   <p>A string containing the geographical region or location of the user.</p>
    # @option params [String] :timezone
    #   <p>A string containing the time zone of the user.</p>
    # @option params [Array<Types::Photo>] :photos
    #   <p>A list of photos associated with the user. You can add up to 3 photos per user. Each photo can include a value, type, display name, and primary designation.</p>
    # @option params [String] :website
    #   <p>The user's personal website or blog URL. This field allows users to provide a link to their personal or professional website.</p>
    # @option params [String] :birthdate
    #   <p>The user's birthdate in YYYY-MM-DD format. This field supports standard date format for storing personal information.</p>
    # @option params [Array<Types::Role>] :roles
    #   <p>A list of <code>Role</code> objects containing roles associated with the user.</p>
    # @option params [Hash<String, JSON>] :extensions
    #   <p>A map with additional attribute extensions for the user. Each map key corresponds to an extension name, while map values represent extension data in <code>Document</code> type (not supported by Java V1, Go V1 and older versions of the CLI). <code>aws:identitystore:enterprise</code> is the only supported extension name.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identity_store_id: "IdentityStoreId", # required
    #     user_name: "UserName",
    #     name: {
    #       formatted: "SensitiveStringType",
    #       family_name: "SensitiveStringType",
    #       given_name: "SensitiveStringType",
    #       middle_name: "SensitiveStringType",
    #       honorific_prefix: "SensitiveStringType",
    #       honorific_suffix: "SensitiveStringType"
    #     },
    #     display_name: "SensitiveStringType",
    #     nick_name: "SensitiveStringType",
    #     profile_url: "SensitiveStringType",
    #     emails: [
    #       {
    #         value: "SensitiveStringType",
    #         type: "SensitiveStringType",
    #         primary: false
    #       }
    #     ],
    #     addresses: [
    #       {
    #         street_address: "SensitiveStringType",
    #         locality: "SensitiveStringType",
    #         region: "SensitiveStringType",
    #         postal_code: "SensitiveStringType",
    #         country: "SensitiveStringType",
    #         formatted: "SensitiveStringType",
    #         type: "SensitiveStringType",
    #         primary: false
    #       }
    #     ],
    #     phone_numbers: [
    #       {
    #         value: "SensitiveStringType",
    #         type: "SensitiveStringType",
    #         primary: false
    #       }
    #     ],
    #     user_type: "SensitiveStringType",
    #     title: "SensitiveStringType",
    #     preferred_language: "SensitiveStringType",
    #     locale: "SensitiveStringType",
    #     timezone: "SensitiveStringType",
    #     photos: [
    #       {
    #         value: "SensitiveStringType", # required
    #         type: "SensitiveStringType",
    #         display: "SensitiveStringType",
    #         primary: false
    #       }
    #     ],
    #     website: "SensitiveStringType",
    #     birthdate: "SensitiveStringType",
    #     roles: [
    #       {
    #         value: "SensitiveStringType",
    #         type: "SensitiveStringType",
    #         primary: false
    #       }
    #     ],
    #     extensions: {
    #       "ExtensionName" => ""null""
    #     }
    #   }
    #   options = {}
    #   response = client.create_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     identity_store_id: "IdentityStoreId", # required
    #     user_id: "ResourceId", # required
    #     user_arn: "ResourceArn", # required
    #     revision: "ResourceRevision", # required
    #   }
    # @return [Types::CreateUserResponse]
    def create_user(params = {}, options = {})
      request = build_request(:create_user, params)
      request.send_request(options)
    end

    # <p>Delete a group within an identity store given <code>GroupId</code>.</p>
    # @param [Hash, Types::DeleteGroupRequest] params
    # @option params [String] :identity_store_id
    #   <p>The globally unique identifier for the identity store.</p> <p>You can specify the identity store by ID or by Amazon Resource Name (ARN). For example, identity store ID <code>d-1234567890</code> or identity store ARN <code>arn:aws:identitystore::111122223333:identitystore/d-1234567890</code>.</p>
    # @option params [String] :group_id
    #   <p>The identifier for a group in the identity store.</p> <p>You can specify the group by ID or by Amazon Resource Name (ARN). For example, group ID <code>a1b2c3d4-5678-90ab-cdef-EXAMPLE22222</code> or group ARN <code>arn:aws:identitystore:::group/a1b2c3d4-5678-90ab-cdef-EXAMPLE22222</code>.</p>
    # @option params [String] :revision
    #   <p>The expected current revision of the group. When you provide this value, the group is deleted only if it matches the current revision of the group in the identity store. If the value doesn't match, the operation fails with a <code>ConflictException</code>. If you don't provide this value, the group is deleted regardless of its current revision.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identity_store_id: "IdentityStoreId", # required
    #     group_id: "ResourceId", # required
    #     revision: "ResourceRevision"
    #   }
    #   options = {}
    #   response = client.delete_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteGroupResponse]
    def delete_group(params = {}, options = {})
      request = build_request(:delete_group, params)
      request.send_request(options)
    end

    # <p>Delete a membership within a group given <code>MembershipId</code>.</p>
    # @param [Hash, Types::DeleteGroupMembershipRequest] params
    # @option params [String] :identity_store_id
    #   <p>The globally unique identifier for the identity store.</p> <p>You can specify the identity store by ID or by Amazon Resource Name (ARN). For example, identity store ID <code>d-1234567890</code> or identity store ARN <code>arn:aws:identitystore::111122223333:identitystore/d-1234567890</code>.</p>
    # @option params [String] :membership_id
    #   <p>The identifier for a <code>GroupMembership</code> in an identity store.</p> <p>You can specify the group membership by ID or by Amazon Resource Name (ARN). For example, membership ID <code>a1b2c3d4-5678-90ab-cdef-EXAMPLE33333</code> or membership ARN <code>arn:aws:identitystore:::membership/a1b2c3d4-5678-90ab-cdef-EXAMPLE33333</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identity_store_id: "IdentityStoreId", # required
    #     membership_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.delete_group_membership(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteGroupMembershipResponse]
    def delete_group_membership(params = {}, options = {})
      request = build_request(:delete_group_membership, params)
      request.send_request(options)
    end

    # <p>Deletes a user within an identity store given <code>UserId</code>.</p>
    # @param [Hash, Types::DeleteUserRequest] params
    # @option params [String] :identity_store_id
    #   <p>The globally unique identifier for the identity store.</p> <p>You can specify the identity store by ID or by Amazon Resource Name (ARN). For example, identity store ID <code>d-1234567890</code> or identity store ARN <code>arn:aws:identitystore::111122223333:identitystore/d-1234567890</code>.</p>
    # @option params [String] :user_id
    #   <p>The identifier for a user in the identity store.</p> <p>You can specify the user by ID or by Amazon Resource Name (ARN). For example, user ID <code>a1b2c3d4-5678-90ab-cdef-EXAMPLE11111</code> or user ARN <code>arn:aws:identitystore:::user/a1b2c3d4-5678-90ab-cdef-EXAMPLE11111</code>.</p>
    # @option params [String] :revision
    #   <p>The expected current revision of the user. When you provide this value, the user is deleted only if it matches the current revision of the user in the identity store. If the value doesn't match, the operation fails with a <code>ConflictException</code>. If you don't provide this value, the user is deleted regardless of its current revision.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identity_store_id: "IdentityStoreId", # required
    #     user_id: "ResourceId", # required
    #     revision: "ResourceRevision"
    #   }
    #   options = {}
    #   response = client.delete_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteUserResponse]
    def delete_user(params = {}, options = {})
      request = build_request(:delete_user, params)
      request.send_request(options)
    end

    # <p>Retrieves the group metadata and attributes from <code>GroupId</code> in an identity store.</p> <note> <p>If you have access to a member account, you can use this API operation from the member account. For more information, see <a href="https://docs.aws.amazon.com/singlesignon/latest/userguide/manage-your-accounts.html#limiting-access-from-member-accounts">Limiting access to the identity store from member accounts</a> in the <i> IAM Identity Center User Guide</i>.</p> </note>
    # @param [Hash, Types::DescribeGroupRequest] params
    # @option params [String] :identity_store_id
    #   <p>The globally unique identifier for the identity store, such as <code>d-1234567890</code>. In this example, <code>d-</code> is a fixed prefix, and <code>1234567890</code> is a randomly generated string that contains numbers and lower case letters. This value is generated at the time that a new identity store is created.</p> <p>You can specify the identity store by ID or by Amazon Resource Name (ARN). For example, identity store ID <code>d-1234567890</code> or identity store ARN <code>arn:aws:identitystore::111122223333:identitystore/d-1234567890</code>.</p>
    # @option params [String] :group_id
    #   <p>The identifier for a group in the identity store.</p> <p>You can specify the group by ID or by Amazon Resource Name (ARN). For example, group ID <code>a1b2c3d4-5678-90ab-cdef-EXAMPLE22222</code> or group ARN <code>arn:aws:identitystore:::group/a1b2c3d4-5678-90ab-cdef-EXAMPLE22222</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identity_store_id: "IdentityStoreId", # required
    #     group_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.describe_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     identity_store_id: "IdentityStoreId", # required
    #     group_id: "ResourceId", # required
    #     group_arn: "ResourceArn", # required
    #     revision: "ResourceRevision", # required
    #     display_name: "GroupDisplayName",
    #     external_ids: [
    #       {
    #         issuer: "ExternalIdIssuer", # required
    #         id: "ExternalIdIdentifier", # required
    #       }
    #     ],
    #     description: "SensitiveStringType",
    #     created_at: Time.now,
    #     updated_at: Time.now,
    #     created_by: "StringType",
    #     updated_by: "StringType"
    #   }
    # @return [Types::DescribeGroupResponse]
    def describe_group(params = {}, options = {})
      request = build_request(:describe_group, params)
      request.send_request(options)
    end

    # <p>Retrieves membership metadata and attributes from <code>MembershipId</code> in an identity store.</p> <note> <p>If you have access to a member account, you can use this API operation from the member account. For more information, see <a href="https://docs.aws.amazon.com/singlesignon/latest/userguide/manage-your-accounts.html#limiting-access-from-member-accounts">Limiting access to the identity store from member accounts</a> in the <i> IAM Identity Center User Guide</i>.</p> </note>
    # @param [Hash, Types::DescribeGroupMembershipRequest] params
    # @option params [String] :identity_store_id
    #   <p>The globally unique identifier for the identity store.</p> <p>You can specify the identity store by ID or by Amazon Resource Name (ARN). For example, identity store ID <code>d-1234567890</code> or identity store ARN <code>arn:aws:identitystore::111122223333:identitystore/d-1234567890</code>.</p>
    # @option params [String] :membership_id
    #   <p>The identifier for a <code>GroupMembership</code> in an identity store.</p> <p>You can specify the group membership by ID or by Amazon Resource Name (ARN). For example, membership ID <code>a1b2c3d4-5678-90ab-cdef-EXAMPLE33333</code> or membership ARN <code>arn:aws:identitystore:::membership/a1b2c3d4-5678-90ab-cdef-EXAMPLE33333</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identity_store_id: "IdentityStoreId", # required
    #     membership_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.describe_group_membership(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     identity_store_id: "IdentityStoreId", # required
    #     membership_id: "ResourceId", # required
    #     membership_arn: "ResourceArn", # required
    #     group_id: "ResourceId", # required
    #     member_id: { # required
    #       # One of:
    #       user_id: "ResourceId"
    #     },
    #     created_at: Time.now,
    #     updated_at: Time.now,
    #     created_by: "StringType",
    #     updated_by: "StringType"
    #   }
    # @return [Types::DescribeGroupMembershipResponse]
    def describe_group_membership(params = {}, options = {})
      request = build_request(:describe_group_membership, params)
      request.send_request(options)
    end

    # <p>Retrieves details about the specified identity store, including its Amazon Resource Name (ARN) and network configuration.</p>
    # @param [Hash, Types::DescribeIdentityStoreRequest] params
    # @option params [String] :identity_store_id
    #   <p>The globally unique identifier for the identity store.</p> <p>You can specify the identity store by ID or by Amazon Resource Name (ARN). For example, identity store ID <code>d-1234567890</code> or identity store ARN <code>arn:aws:identitystore::111122223333:identitystore/d-1234567890</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identity_store_id: "IdentityStoreId", # required
    #   }
    #   options = {}
    #   response = client.describe_identity_store(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     identity_store_id: "IdentityStoreId", # required
    #     identity_store_arn: "IdentityStoreArn", # required
    #     network_configuration: {
    #       vpce_access_required: false, # required
    #       api_restrict_source_vpcs: ["VpcIdType"],
    #       api_allow_source_ips: ["IpCidrType"],
    #       scim_allow_source_ips: ["IpCidrType"]
    #     }
    #   }
    # @return [Types::DescribeIdentityStoreResponse]
    def describe_identity_store(params = {}, options = {})
      request = build_request(:describe_identity_store, params)
      request.send_request(options)
    end

    # <p>Retrieves the user metadata and attributes from the <code>UserId</code> in an identity store.</p> <note> <p>If you have access to a member account, you can use this API operation from the member account. For more information, see <a href="https://docs.aws.amazon.com/singlesignon/latest/userguide/manage-your-accounts.html#limiting-access-from-member-accounts">Limiting access to the identity store from member accounts</a> in the <i> IAM Identity Center User Guide</i>.</p> </note>
    # @param [Hash, Types::DescribeUserRequest] params
    # @option params [String] :identity_store_id
    #   <p>The globally unique identifier for the identity store, such as <code>d-1234567890</code>. In this example, <code>d-</code> is a fixed prefix, and <code>1234567890</code> is a randomly generated string that contains numbers and lower case letters. This value is generated at the time that a new identity store is created.</p> <p>You can specify the identity store by ID or by Amazon Resource Name (ARN). For example, identity store ID <code>d-1234567890</code> or identity store ARN <code>arn:aws:identitystore::111122223333:identitystore/d-1234567890</code>.</p>
    # @option params [String] :user_id
    #   <p>The identifier for a user in the identity store.</p> <p>You can specify the user by ID or by Amazon Resource Name (ARN). For example, user ID <code>a1b2c3d4-5678-90ab-cdef-EXAMPLE11111</code> or user ARN <code>arn:aws:identitystore:::user/a1b2c3d4-5678-90ab-cdef-EXAMPLE11111</code>.</p>
    # @option params [Array<String>] :extensions
    #   <p>A collection of extension names indicating what extensions the service should retrieve alongside other user attributes. <code>aws:identitystore:enterprise</code> is the only supported extension name.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identity_store_id: "IdentityStoreId", # required
    #     user_id: "ResourceId", # required
    #     extensions: ["ExtensionName"]
    #   }
    #   options = {}
    #   response = client.describe_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     identity_store_id: "IdentityStoreId", # required
    #     user_id: "ResourceId", # required
    #     user_arn: "ResourceArn", # required
    #     revision: "ResourceRevision", # required
    #     user_name: "UserName",
    #     external_ids: [
    #       {
    #         issuer: "ExternalIdIssuer", # required
    #         id: "ExternalIdIdentifier", # required
    #       }
    #     ],
    #     name: {
    #       formatted: "SensitiveStringType",
    #       family_name: "SensitiveStringType",
    #       given_name: "SensitiveStringType",
    #       middle_name: "SensitiveStringType",
    #       honorific_prefix: "SensitiveStringType",
    #       honorific_suffix: "SensitiveStringType"
    #     },
    #     display_name: "SensitiveStringType",
    #     nick_name: "SensitiveStringType",
    #     profile_url: "SensitiveStringType",
    #     emails: [
    #       {
    #         value: "SensitiveStringType",
    #         type: "SensitiveStringType",
    #         primary: false
    #       }
    #     ],
    #     addresses: [
    #       {
    #         street_address: "SensitiveStringType",
    #         locality: "SensitiveStringType",
    #         region: "SensitiveStringType",
    #         postal_code: "SensitiveStringType",
    #         country: "SensitiveStringType",
    #         formatted: "SensitiveStringType",
    #         type: "SensitiveStringType",
    #         primary: false
    #       }
    #     ],
    #     phone_numbers: [
    #       {
    #         value: "SensitiveStringType",
    #         type: "SensitiveStringType",
    #         primary: false
    #       }
    #     ],
    #     user_type: "SensitiveStringType",
    #     title: "SensitiveStringType",
    #     preferred_language: "SensitiveStringType",
    #     locale: "SensitiveStringType",
    #     timezone: "SensitiveStringType",
    #     user_status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     photos: [
    #       {
    #         value: "SensitiveStringType", # required
    #         type: "SensitiveStringType",
    #         display: "SensitiveStringType",
    #         primary: false
    #       }
    #     ],
    #     website: "SensitiveStringType",
    #     birthdate: "SensitiveStringType",
    #     roles: [
    #       {
    #         value: "SensitiveStringType",
    #         type: "SensitiveStringType",
    #         primary: false
    #       }
    #     ],
    #     created_at: Time.now,
    #     created_by: "StringType",
    #     updated_at: Time.now,
    #     updated_by: "StringType",
    #     extensions: {
    #       "ExtensionName" => ""null""
    #     }
    #   }
    # @return [Types::DescribeUserResponse]
    def describe_user(params = {}, options = {})
      request = build_request(:describe_user, params)
      request.send_request(options)
    end

    # <p>Retrieves <code>GroupId</code> in an identity store.</p> <note> <p>If you have access to a member account, you can use this API operation from the member account. For more information, see <a href="https://docs.aws.amazon.com/singlesignon/latest/userguide/manage-your-accounts.html#limiting-access-from-member-accounts">Limiting access to the identity store from member accounts</a> in the <i> IAM Identity Center User Guide</i>.</p> </note>
    # @param [Hash, Types::GetGroupIdRequest] params
    # @option params [String] :identity_store_id
    #   <p>The globally unique identifier for the identity store.</p> <p>You can specify the identity store by ID or by Amazon Resource Name (ARN). For example, identity store ID <code>d-1234567890</code> or identity store ARN <code>arn:aws:identitystore::111122223333:identitystore/d-1234567890</code>.</p>
    # @option params [Types::AlternateIdentifier] :alternate_identifier
    #   <p>A unique identifier for a user or group that is not the primary identifier. This value can be an identifier from an external identity provider (IdP) that is associated with the user, the group, or a unique attribute. For the unique attribute, the only valid path is <code> displayName</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identity_store_id: "IdentityStoreId", # required
    #     alternate_identifier: { # required
    #       # One of:
    #       external_id: {
    #         issuer: "ExternalIdIssuer", # required
    #         id: "ExternalIdIdentifier", # required
    #       },
    #       unique_attribute: {
    #         attribute_path: "AttributePath", # required
    #         attribute_value: ""null"", # required
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.get_group_id(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     identity_store_id: "IdentityStoreId", # required
    #     group_id: "ResourceId", # required
    #     group_arn: "ResourceArn", # required
    #   }
    # @return [Types::GetGroupIdResponse]
    def get_group_id(params = {}, options = {})
      request = build_request(:get_group_id, params)
      request.send_request(options)
    end

    # <p>Retrieves the <code>MembershipId</code> in an identity store.</p> <note> <p>If you have access to a member account, you can use this API operation from the member account. For more information, see <a href="https://docs.aws.amazon.com/singlesignon/latest/userguide/manage-your-accounts.html#limiting-access-from-member-accounts">Limiting access to the identity store from member accounts</a> in the <i> IAM Identity Center User Guide</i>.</p> </note>
    # @param [Hash, Types::GetGroupMembershipIdRequest] params
    # @option params [String] :identity_store_id
    #   <p>The globally unique identifier for the identity store.</p> <p>You can specify the identity store by ID or by Amazon Resource Name (ARN). For example, identity store ID <code>d-1234567890</code> or identity store ARN <code>arn:aws:identitystore::111122223333:identitystore/d-1234567890</code>.</p>
    # @option params [String] :group_id
    #   <p>The identifier for a group in the identity store.</p> <p>You can specify the group by ID or by Amazon Resource Name (ARN). For example, group ID <code>a1b2c3d4-5678-90ab-cdef-EXAMPLE22222</code> or group ARN <code>arn:aws:identitystore:::group/a1b2c3d4-5678-90ab-cdef-EXAMPLE22222</code>.</p>
    # @option params [Types::MemberId] :member_id
    #   <p>An object that contains the identifier of a group member. Setting the <code>UserID</code> field to the specific identifier for a user indicates that the user is a member of the group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identity_store_id: "IdentityStoreId", # required
    #     group_id: "ResourceId", # required
    #     member_id: { # required
    #       # One of:
    #       user_id: "ResourceId"
    #     }
    #   }
    #   options = {}
    #   response = client.get_group_membership_id(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     identity_store_id: "IdentityStoreId", # required
    #     membership_id: "ResourceId", # required
    #     membership_arn: "ResourceArn", # required
    #   }
    # @return [Types::GetGroupMembershipIdResponse]
    def get_group_membership_id(params = {}, options = {})
      request = build_request(:get_group_membership_id, params)
      request.send_request(options)
    end

    # <p>Retrieves the <code>UserId</code> in an identity store.</p> <note> <p>If you have access to a member account, you can use this API operation from the member account. For more information, see <a href="https://docs.aws.amazon.com/singlesignon/latest/userguide/manage-your-accounts.html#limiting-access-from-member-accounts">Limiting access to the identity store from member accounts</a> in the <i> IAM Identity Center User Guide</i>.</p> </note>
    # @param [Hash, Types::GetUserIdRequest] params
    # @option params [String] :identity_store_id
    #   <p>The globally unique identifier for the identity store.</p> <p>You can specify the identity store by ID or by Amazon Resource Name (ARN). For example, identity store ID <code>d-1234567890</code> or identity store ARN <code>arn:aws:identitystore::111122223333:identitystore/d-1234567890</code>.</p>
    # @option params [Types::AlternateIdentifier] :alternate_identifier
    #   <p>A unique identifier for a user or group that is not the primary identifier. This value can be an identifier from an external identity provider (IdP) that is associated with the user, the group, or a unique attribute. For the unique attribute, the only valid paths are <code> userName</code> and <code>emails.value</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identity_store_id: "IdentityStoreId", # required
    #     alternate_identifier: { # required
    #       # One of:
    #       external_id: {
    #         issuer: "ExternalIdIssuer", # required
    #         id: "ExternalIdIdentifier", # required
    #       },
    #       unique_attribute: {
    #         attribute_path: "AttributePath", # required
    #         attribute_value: ""null"", # required
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.get_user_id(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     identity_store_id: "IdentityStoreId", # required
    #     user_id: "ResourceId", # required
    #     user_arn: "ResourceArn", # required
    #   }
    # @return [Types::GetUserIdResponse]
    def get_user_id(params = {}, options = {})
      request = build_request(:get_user_id, params)
      request.send_request(options)
    end

    # <p>Checks the user's membership in all requested groups and returns if the member exists in all queried groups.</p> <note> <p>If you have access to a member account, you can use this API operation from the member account. For more information, see <a href="https://docs.aws.amazon.com/singlesignon/latest/userguide/manage-your-accounts.html#limiting-access-from-member-accounts">Limiting access to the identity store from member accounts</a> in the <i> IAM Identity Center User Guide</i>.</p> </note>
    # @param [Hash, Types::IsMemberInGroupsRequest] params
    # @option params [String] :identity_store_id
    #   <p>The globally unique identifier for the identity store.</p> <p>You can specify the identity store by ID or by Amazon Resource Name (ARN). For example, identity store ID <code>d-1234567890</code> or identity store ARN <code>arn:aws:identitystore::111122223333:identitystore/d-1234567890</code>.</p>
    # @option params [Types::MemberId] :member_id
    #   <p>An object containing the identifier of a group member.</p>
    # @option params [Array<String>] :group_ids
    #   <p>A list of identifiers for groups in the identity store.</p> <p>You can specify each group by ID or by Amazon Resource Name (ARN). For example, group ID <code>a1b2c3d4-5678-90ab-cdef-EXAMPLE22222</code> or group ARN <code>arn:aws:identitystore:::group/a1b2c3d4-5678-90ab-cdef-EXAMPLE22222</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identity_store_id: "IdentityStoreId", # required
    #     member_id: { # required
    #       # One of:
    #       user_id: "ResourceId"
    #     },
    #     group_ids: ["ResourceId"], # required
    #   }
    #   options = {}
    #   response = client.is_member_in_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     results: [ # required
    #       {
    #         group_id: "ResourceId",
    #         member_id: {
    #           # One of:
    #           user_id: "ResourceId"
    #         },
    #         membership_exists: false
    #       }
    #     ]
    #   }
    # @return [Types::IsMemberInGroupsResponse]
    def is_member_in_groups(params = {}, options = {})
      request = build_request(:is_member_in_groups, params)
      request.send_request(options)
    end

    # <p>For the specified group in the specified identity store, returns the list of all <code> GroupMembership</code> objects and returns results in paginated form.</p> <note> <p>If you have access to a member account, you can use this API operation from the member account. For more information, see <a href="https://docs.aws.amazon.com/singlesignon/latest/userguide/manage-your-accounts.html#limiting-access-from-member-accounts">Limiting access to the identity store from member accounts</a> in the <i> IAM Identity Center User Guide</i>.</p> </note>
    # @param [Hash, Types::ListGroupMembershipsRequest] params
    # @option params [String] :identity_store_id
    #   <p>The globally unique identifier for the identity store.</p> <p>You can specify the identity store by ID or by Amazon Resource Name (ARN). For example, identity store ID <code>d-1234567890</code> or identity store ARN <code>arn:aws:identitystore::111122223333:identitystore/d-1234567890</code>.</p>
    # @option params [String] :group_id
    #   <p>The identifier for a group in the identity store.</p> <p>You can specify the group by ID or by Amazon Resource Name (ARN). For example, group ID <code>a1b2c3d4-5678-90ab-cdef-EXAMPLE22222</code> or group ARN <code>arn:aws:identitystore:::group/a1b2c3d4-5678-90ab-cdef-EXAMPLE22222</code>.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned per request. This parameter is used in all <code> List</code> requests to specify how many results to return in one page.</p>
    # @option params [String] :next_token
    #   <p>The pagination token used for the <code>ListUsers</code>, <code>ListGroups</code> and <code> ListGroupMemberships</code> API operations. This value is generated by the identity store service. It is returned in the API response if the total results are more than the size of one page. This token is also returned when it is used in the API request to retrieve the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identity_store_id: "IdentityStoreId", # required
    #     group_id: "ResourceId", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_group_memberships(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     group_memberships: [ # required
    #       {
    #         identity_store_id: "IdentityStoreId", # required
    #         membership_id: "ResourceId", # required
    #         membership_arn: "ResourceArn", # required
    #         group_id: "ResourceId",
    #         member_id: {
    #           # One of:
    #           user_id: "ResourceId"
    #         },
    #         created_at: Time.now,
    #         updated_at: Time.now,
    #         created_by: "StringType",
    #         updated_by: "StringType"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListGroupMembershipsResponse]
    def list_group_memberships(params = {}, options = {})
      request = build_request(:list_group_memberships, params)
      request.send_request(options)
    end

    # <p>For the specified member in the specified identity store, returns the list of all <code> GroupMembership</code> objects and returns results in paginated form.</p> <note> <p>If you have access to a member account, you can use this API operation from the member account. For more information, see <a href="https://docs.aws.amazon.com/singlesignon/latest/userguide/manage-your-accounts.html#limiting-access-from-member-accounts">Limiting access to the identity store from member accounts</a> in the <i> IAM Identity Center User Guide</i>.</p> </note>
    # @param [Hash, Types::ListGroupMembershipsForMemberRequest] params
    # @option params [String] :identity_store_id
    #   <p>The globally unique identifier for the identity store.</p> <p>You can specify the identity store by ID or by Amazon Resource Name (ARN). For example, identity store ID <code>d-1234567890</code> or identity store ARN <code>arn:aws:identitystore::111122223333:identitystore/d-1234567890</code>.</p>
    # @option params [Types::MemberId] :member_id
    #   <p>An object that contains the identifier of a group member. Setting the <code>UserID</code> field to the specific identifier for a user indicates that the user is a member of the group.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned per request. This parameter is used in all <code>List</code> requests to specify how many results to return in one page.</p>
    # @option params [String] :next_token
    #   <p>The pagination token used for the <code>ListUsers</code>, <code>ListGroups</code>, and <code> ListGroupMemberships</code> API operations. This value is generated by the identity store service. It is returned in the API response if the total results are more than the size of one page. This token is also returned when it is used in the API request to retrieve the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identity_store_id: "IdentityStoreId", # required
    #     member_id: { # required
    #       # One of:
    #       user_id: "ResourceId"
    #     },
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_group_memberships_for_member(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     group_memberships: [ # required
    #       {
    #         identity_store_id: "IdentityStoreId", # required
    #         membership_id: "ResourceId", # required
    #         membership_arn: "ResourceArn", # required
    #         group_id: "ResourceId",
    #         member_id: {
    #           # One of:
    #           user_id: "ResourceId"
    #         },
    #         created_at: Time.now,
    #         updated_at: Time.now,
    #         created_by: "StringType",
    #         updated_by: "StringType"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListGroupMembershipsForMemberResponse]
    def list_group_memberships_for_member(params = {}, options = {})
      request = build_request(:list_group_memberships_for_member, params)
      request.send_request(options)
    end

    # <p>Lists all groups in the identity store. Returns a paginated list of complete <code>Group</code> objects. Filtering for a <code>Group</code> by the <code>DisplayName</code> attribute is deprecated. Instead, use the <code>GetGroupId</code> API action.</p> <note> <p>If you have access to a member account, you can use this API operation from the member account. For more information, see <a href="https://docs.aws.amazon.com/singlesignon/latest/userguide/manage-your-accounts.html#limiting-access-from-member-accounts">Limiting access to the identity store from member accounts</a> in the <i> IAM Identity Center User Guide</i>.</p> </note>
    # @param [Hash, Types::ListGroupsRequest] params
    # @option params [String] :identity_store_id
    #   <p>The globally unique identifier for the identity store, such as <code>d-1234567890</code>. In this example, <code>d-</code> is a fixed prefix, and <code>1234567890</code> is a randomly generated string that contains numbers and lower case letters. This value is generated at the time that a new identity store is created.</p> <p>You can specify the identity store by ID or by Amazon Resource Name (ARN). For example, identity store ID <code>d-1234567890</code> or identity store ARN <code>arn:aws:identitystore::111122223333:identitystore/d-1234567890</code>.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned per request. This parameter is used in all <code>List</code> requests to specify how many results to return in one page.</p>
    # @option params [String] :next_token
    #   <p>The pagination token used for the <code>ListUsers</code> and <code>ListGroups</code> API operations. This value is generated by the identity store service. It is returned in the API response if the total results are more than the size of one page. This token is also returned when it is used in the API request to retrieve the next page of results.</p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>A list of <code>Filter</code> objects, which is used in the <code>ListUsers</code> and <code> ListGroups</code> requests.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identity_store_id: "IdentityStoreId", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #     filters: [
    #       {
    #         attribute_path: "AttributePath", # required
    #         attribute_value: "SensitiveStringType", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.list_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     groups: [ # required
    #       {
    #         identity_store_id: "IdentityStoreId", # required
    #         group_id: "ResourceId", # required
    #         group_arn: "ResourceArn", # required
    #         revision: "ResourceRevision", # required
    #         display_name: "GroupDisplayName",
    #         external_ids: [
    #           {
    #             issuer: "ExternalIdIssuer", # required
    #             id: "ExternalIdIdentifier", # required
    #           }
    #         ],
    #         description: "SensitiveStringType",
    #         created_at: Time.now,
    #         updated_at: Time.now,
    #         created_by: "StringType",
    #         updated_by: "StringType"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListGroupsResponse]
    def list_groups(params = {}, options = {})
      request = build_request(:list_groups, params)
      request.send_request(options)
    end

    # <p>Lists the identity stores that you have access to. This operation returns only the identity store ID and Amazon Resource Name (ARN) of each identity store. To obtain additional information about an identity store, call <code>DescribeIdentityStore</code>.</p> <p>This operation returns results in paginated form. Use the <code>NextToken</code> parameter to retrieve additional pages of results.</p>
    # @param [Hash, Types::ListIdentityStoresRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per request. This parameter is used in all <code> List</code> operations to specify how many results to return on one page. If you don't specify a value, the operation uses a default page size.</p>
    # @option params [String] :next_token
    #   <p>The pagination token used for the <code>ListIdentityStores</code> API operation. This value is generated by the identity store service. It is returned in the API response if the total results are more than the size of one page. This token is also returned when it is used in the API request to retrieve the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_identity_stores(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     identity_stores: [ # required
    #       {
    #         identity_store_id: "IdentityStoreId", # required
    #         identity_store_arn: "IdentityStoreArn", # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListIdentityStoresResponse]
    def list_identity_stores(params = {}, options = {})
      request = build_request(:list_identity_stores, params)
      request.send_request(options)
    end

    # <p>Lists all users in the identity store. Returns a paginated list of complete <code>User</code> objects. Filtering for a <code>User</code> by the <code>UserName</code> attribute is deprecated. Instead, use the <code>GetUserId</code> API action.</p> <note> <p>If you have access to a member account, you can use this API operation from the member account. For more information, see <a href="https://docs.aws.amazon.com/singlesignon/latest/userguide/manage-your-accounts.html#limiting-access-from-member-accounts">Limiting access to the identity store from member accounts</a> in the <i> IAM Identity Center User Guide</i>.</p> </note>
    # @param [Hash, Types::ListUsersRequest] params
    # @option params [String] :identity_store_id
    #   <p>The globally unique identifier for the identity store, such as <code>d-1234567890</code>. In this example, <code>d-</code> is a fixed prefix, and <code>1234567890</code> is a randomly generated string that contains numbers and lower case letters. This value is generated at the time that a new identity store is created.</p> <p>You can specify the identity store by ID or by Amazon Resource Name (ARN). For example, identity store ID <code>d-1234567890</code> or identity store ARN <code>arn:aws:identitystore::111122223333:identitystore/d-1234567890</code>.</p>
    # @option params [Array<String>] :extensions
    #   <p>A collection of extension names indicating what extensions the service should retrieve alongside other user attributes. <code>aws:identitystore:enterprise</code> is the only supported extension name.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned per request. This parameter is used in all <code>List</code> requests to specify how many results to return in one page.</p>
    # @option params [String] :next_token
    #   <p>The pagination token used for the <code>ListUsers</code> and <code>ListGroups</code> API operations. This value is generated by the identity store service. It is returned in the API response if the total results are more than the size of one page. This token is also returned when it is used in the API request to retrieve the next page of results.</p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>A list of <code>Filter</code> objects, which is used in the <code>ListUsers</code> and <code> ListGroups</code> requests. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identity_store_id: "IdentityStoreId", # required
    #     extensions: ["ExtensionName"],
    #     max_results: 1,
    #     next_token: "NextToken",
    #     filters: [
    #       {
    #         attribute_path: "AttributePath", # required
    #         attribute_value: "SensitiveStringType", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.list_users(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     users: [ # required
    #       {
    #         identity_store_id: "IdentityStoreId", # required
    #         user_id: "ResourceId", # required
    #         user_arn: "ResourceArn", # required
    #         revision: "ResourceRevision", # required
    #         user_name: "UserName",
    #         external_ids: [
    #           {
    #             issuer: "ExternalIdIssuer", # required
    #             id: "ExternalIdIdentifier", # required
    #           }
    #         ],
    #         name: {
    #           formatted: "SensitiveStringType",
    #           family_name: "SensitiveStringType",
    #           given_name: "SensitiveStringType",
    #           middle_name: "SensitiveStringType",
    #           honorific_prefix: "SensitiveStringType",
    #           honorific_suffix: "SensitiveStringType"
    #         },
    #         display_name: "SensitiveStringType",
    #         nick_name: "SensitiveStringType",
    #         profile_url: "SensitiveStringType",
    #         emails: [
    #           {
    #             value: "SensitiveStringType",
    #             type: "SensitiveStringType",
    #             primary: false
    #           }
    #         ],
    #         addresses: [
    #           {
    #             street_address: "SensitiveStringType",
    #             locality: "SensitiveStringType",
    #             region: "SensitiveStringType",
    #             postal_code: "SensitiveStringType",
    #             country: "SensitiveStringType",
    #             formatted: "SensitiveStringType",
    #             type: "SensitiveStringType",
    #             primary: false
    #           }
    #         ],
    #         phone_numbers: [
    #           {
    #             value: "SensitiveStringType",
    #             type: "SensitiveStringType",
    #             primary: false
    #           }
    #         ],
    #         user_type: "SensitiveStringType",
    #         title: "SensitiveStringType",
    #         preferred_language: "SensitiveStringType",
    #         locale: "SensitiveStringType",
    #         timezone: "SensitiveStringType",
    #         user_status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #         photos: [
    #           {
    #             value: "SensitiveStringType", # required
    #             type: "SensitiveStringType",
    #             display: "SensitiveStringType",
    #             primary: false
    #           }
    #         ],
    #         website: "SensitiveStringType",
    #         birthdate: "SensitiveStringType",
    #         roles: [
    #           {
    #             value: "SensitiveStringType",
    #             type: "SensitiveStringType",
    #             primary: false
    #           }
    #         ],
    #         created_at: Time.now,
    #         created_by: "StringType",
    #         updated_at: Time.now,
    #         updated_by: "StringType",
    #         extensions: {
    #           "ExtensionName" => ""null""
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListUsersResponse]
    def list_users(params = {}, options = {})
      request = build_request(:list_users, params)
      request.send_request(options)
    end

    # <p>Updates the specified group metadata and attributes in the specified identity store.</p>
    # @param [Hash, Types::UpdateGroupRequest] params
    # @option params [String] :identity_store_id
    #   <p>The globally unique identifier for the identity store.</p> <p>You can specify the identity store by ID or by Amazon Resource Name (ARN). For example, identity store ID <code>d-1234567890</code> or identity store ARN <code>arn:aws:identitystore::111122223333:identitystore/d-1234567890</code>.</p>
    # @option params [String] :group_id
    #   <p>The identifier for a group in the identity store.</p> <p>You can specify the group by ID or by Amazon Resource Name (ARN). For example, group ID <code>a1b2c3d4-5678-90ab-cdef-EXAMPLE22222</code> or group ARN <code>arn:aws:identitystore:::group/a1b2c3d4-5678-90ab-cdef-EXAMPLE22222</code>.</p>
    # @option params [Array<Types::AttributeOperation>] :operations
    #   <p>A list of <code>AttributeOperation</code> objects to apply to the requested group. These operations might add, replace, or remove an attribute. For more information on the attributes that can be added, replaced, or removed, see <a href="https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_Group.html">Group</a>.</p>
    # @option params [String] :revision
    #   <p>The expected current revision of the group. When you provide this value, the update is applied only if it matches the current revision of the group in the identity store, which prevents you from overwriting concurrent changes. If the value doesn't match, the operation fails with a <code>ConflictException</code>. If you don't provide this value, the update is applied unconditionally.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identity_store_id: "IdentityStoreId", # required
    #     group_id: "ResourceId", # required
    #     operations: [ # required
    #       {
    #         attribute_path: "AttributePath", # required
    #         attribute_value: ""null""
    #       }
    #     ],
    #     revision: "ResourceRevision"
    #   }
    #   options = {}
    #   response = client.update_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     identity_store_id: "IdentityStoreId", # required
    #     group_id: "ResourceId", # required
    #     group_arn: "ResourceArn", # required
    #     revision: "ResourceRevision", # required
    #   }
    # @return [Types::UpdateGroupResponse]
    def update_group(params = {}, options = {})
      request = build_request(:update_group, params)
      request.send_request(options)
    end

    # <p>Updates the configuration of the specified identity store, including its network configuration.</p>
    # @param [Hash, Types::UpdateIdentityStoreRequest] params
    # @option params [String] :identity_store_id
    #   <p>The globally unique identifier for the identity store.</p> <p>You can specify the identity store by ID or by Amazon Resource Name (ARN). For example, identity store ID <code>d-1234567890</code> or identity store ARN <code>arn:aws:identitystore::111122223333:identitystore/d-1234567890</code>.</p>
    # @option params [Types::NetworkConfiguration] :network_configuration
    #   <p>The network configuration to apply to the identity store. This controls whether access through a virtual private cloud (VPC) endpoint is required and the source VPCs and IP addresses that are allowed to access the identity store.</p> <p>When you provide <code>NetworkConfiguration</code> in a request, the service performs a full replacement of the identity store's current network configuration with the values you specify. Any values that you omit are cleared. To preserve or change the allowed source VPCs or IP address ranges, include the complete set of values that you want in the request. To clear a list, omit it; an empty list is not accepted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identity_store_id: "IdentityStoreId", # required
    #     network_configuration: {
    #       vpce_access_required: false, # required
    #       api_restrict_source_vpcs: ["VpcIdType"],
    #       api_allow_source_ips: ["IpCidrType"],
    #       scim_allow_source_ips: ["IpCidrType"]
    #     }
    #   }
    #   options = {}
    #   response = client.update_identity_store(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     identity_store_id: "IdentityStoreId", # required
    #     identity_store_arn: "IdentityStoreArn", # required
    #   }
    # @return [Types::UpdateIdentityStoreResponse]
    def update_identity_store(params = {}, options = {})
      request = build_request(:update_identity_store, params)
      request.send_request(options)
    end

    # <p>Updates the specified user metadata and attributes in the specified identity store.</p>
    # @param [Hash, Types::UpdateUserRequest] params
    # @option params [String] :identity_store_id
    #   <p>The globally unique identifier for the identity store.</p> <p>You can specify the identity store by ID or by Amazon Resource Name (ARN). For example, identity store ID <code>d-1234567890</code> or identity store ARN <code>arn:aws:identitystore::111122223333:identitystore/d-1234567890</code>.</p>
    # @option params [String] :user_id
    #   <p>The identifier for a user in the identity store.</p> <p>You can specify the user by ID or by Amazon Resource Name (ARN). For example, user ID <code>a1b2c3d4-5678-90ab-cdef-EXAMPLE11111</code> or user ARN <code>arn:aws:identitystore:::user/a1b2c3d4-5678-90ab-cdef-EXAMPLE11111</code>.</p>
    # @option params [Array<Types::AttributeOperation>] :operations
    #   <p>A list of <code>AttributeOperation</code> objects to apply to the requested user. These operations might add, replace, or remove an attribute. For more information on the attributes that can be added, replaced, or removed, see <a href="https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_User.html">User</a>.</p>
    # @option params [String] :revision
    #   <p>The expected current revision of the user. When you provide this value, the update is applied only if it matches the current revision of the user in the identity store, which prevents you from overwriting concurrent changes. If the value doesn't match, the operation fails with a <code>ConflictException</code>. If you don't provide this value, the update is applied unconditionally.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identity_store_id: "IdentityStoreId", # required
    #     user_id: "ResourceId", # required
    #     operations: [ # required
    #       {
    #         attribute_path: "AttributePath", # required
    #         attribute_value: ""null""
    #       }
    #     ],
    #     revision: "ResourceRevision"
    #   }
    #   options = {}
    #   response = client.update_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     identity_store_id: "IdentityStoreId", # required
    #     user_id: "ResourceId", # required
    #     user_arn: "ResourceArn", # required
    #     revision: "ResourceRevision", # required
    #   }
    # @return [Types::UpdateUserResponse]
    def update_user(params = {}, options = {})
      request = build_request(:update_user, params)
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
      context[:gem_name] = 'aws-sdk-identitystore'
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
          json_rpc: Aws::Core::JsonRpc
        }
      end
    end
  end
end
