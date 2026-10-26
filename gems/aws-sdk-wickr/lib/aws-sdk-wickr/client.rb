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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:wickr)

module Aws::Wickr
  # An API client for Aws::Wickr.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::WickrAdminApi
    @identifier = :wickr

    add_plugin(::Aws::Wickr::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::Wickr::EndpointProvider)
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

    # <p>Creates multiple users in a specified Wickr network. This operation allows you to provision multiple user accounts simultaneously, optionally specifying security groups, and validation requirements for each user.</p> <note> <p> <code>codeValidation</code>, <code>inviteCode</code>, and <code>inviteCodeTtl</code> are restricted to networks under preview only.</p> </note>
    # @param [Hash, Types::BatchCreateUserRequest] params
    # @option params [String] :network_id
    #   <p>The ID of the Wickr network where users will be created.</p>
    # @option params [Array<Types::BatchCreateUserRequestItem>] :users
    #   <p>A list of user objects containing the details for each user to be created, including username, name, security groups, and optional invite codes. Maximum 50 users per batch request.</p>
    # @option params [String] :client_token
    #   <p>A unique identifier for this request to ensure idempotency. If you retry a request with the same client token, the service will return the same response without creating duplicate users.</p>
    # @example Create multiple users
    #   # Example operation for batch_create_user
    #   params = {
    #     network_id: "12345678",
    #     users: [
    #       {
    #         first_name: "John",
    #         last_name: "Doe",
    #         username: "john.doe@example.com",
    #         security_group_ids: [
    #           "BCTY8Qhe"
    #         ],
    #         invite_code: "INVITE123",
    #         invite_code_ttl: 7,
    #         code_validation: true
    #       },
    #       {
    #         first_name: "Jane",
    #         last_name: "Smith",
    #         username: "jane.smith@example.com",
    #         security_group_ids: [
    #           "BCTY8Qhe"
    #         ]
    #       }
    #     ],
    #     client_token: "550e8400-e29b-41d4-a716-446655440000"
    #   }
    #   options = {}
    #   response = client.batch_create_user(params, options)
    #   response.to_h #=>
    #   {
    #     successful: [
    #       {
    #         user_id: "123",
    #         username: "john.doe@example.com",
    #         first_name: "John",
    #         last_name: "Doe",
    #         status: 1,
    #         invite_code: "INVITE123",
    #         is_invite_expired: false,
    #         code_validation: true
    #       },
    #       {
    #         user_id: "456",
    #         username: "jane.smith@example.com",
    #         first_name: "Jane",
    #         last_name: "Smith",
    #         status: 1,
    #         invite_code: "AUTOGEN456",
    #         is_invite_expired: false,
    #         code_validation: false
    #       }
    #     ],
    #     failed: [
    #     ]
    #   }
    # @example Partial failure - duplicate user
    #   # Example operation for batch_create_user
    #   params = {
    #     network_id: "12345678",
    #     users: [
    #       {
    #         first_name: "Alice",
    #         last_name: "Johnson",
    #         username: "alice.johnson@example.com",
    #         security_group_ids: [
    #           "BCTY8Qhe"
    #         ]
    #       },
    #       {
    #         first_name: "Bob",
    #         last_name: "Wilson",
    #         username: "existing.user@example.com",
    #         security_group_ids: [
    #           "BCTY8Qhe"
    #         ]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_create_user(params, options)
    #   response.to_h #=>
    #   {
    #     successful: [
    #       {
    #         user_id: "678",
    #         username: "alice.johnson@example.com",
    #         first_name: "Alice",
    #         last_name: "Johnson",
    #         status: 1,
    #         invite_code: "AUTOGEN789",
    #         is_invite_expired: false,
    #         code_validation: false
    #       }
    #     ],
    #     failed: [
    #       {
    #         user_id: "0",
    #         field: "username",
    #         reason: "User already exists"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     network_id: "NetworkId", # required
    #     users: [ # required
    #       {
    #         first_name: "SensitiveString",
    #         last_name: "SensitiveString",
    #         security_group_ids: ["SecurityGroupId"], # required
    #         username: "GenericString", # required
    #         invite_code: "GenericString",
    #         invite_code_ttl: 1,
    #         code_validation: false
    #       }
    #     ],
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.batch_create_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     message: "GenericString",
    #     successful: [
    #       {
    #         user_id: "UserId",
    #         first_name: "SensitiveString",
    #         last_name: "SensitiveString",
    #         username: "GenericString",
    #         security_groups: ["SecurityGroupId"],
    #         is_admin: false,
    #         suspended: false,
    #         status: 1,
    #         otp_enabled: false,
    #         scim_id: "GenericString",
    #         type: "GenericString",
    #         cell: "GenericString",
    #         country_code: "GenericString",
    #         challenge_failures: 1,
    #         is_invite_expired: false,
    #         is_user: false,
    #         invite_code: "GenericString",
    #         code_validation: false,
    #         uname: "GenericString"
    #       }
    #     ],
    #     failed: [
    #       {
    #         field: "GenericString",
    #         reason: "GenericString",
    #         user_id: "UserId", # required
    #       }
    #     ]
    #   }
    # @return [Types::BatchCreateUserResponse]
    def batch_create_user(params = {}, options = {})
      request = build_request(:batch_create_user, params)
      request.send_request(options)
    end

    # <p>Deletes multiple users from a specified Wickr network. This operation permanently removes user accounts and their associated data from the network.</p>
    # @param [Hash, Types::BatchDeleteUserRequest] params
    # @option params [String] :network_id
    #   <p>The ID of the Wickr network from which users will be deleted.</p>
    # @option params [Array<String>] :user_ids
    #   <p>A list of user IDs identifying the users to be deleted from the network. Maximum 50 users per batch request.</p>
    # @option params [String] :client_token
    #   <p>A unique identifier for this request to ensure idempotency. If you retry a request with the same client token, the service will return the same response without attempting to delete users again.</p>
    # @example Delete multiple users
    #   # Example operation for batch_delete_user
    #   params = {
    #     network_id: "12345678",
    #     user_ids: [
    #       "123",
    #       "456"
    #     ],
    #     client_token: "6ba7b814-9dad-11d1-80b4-00c04fd430c8"
    #   }
    #   options = {}
    #   response = client.batch_delete_user(params, options)
    #   response.to_h #=>
    #   {
    #     message: "success",
    #     successful: [
    #       {
    #         user_id: "123"
    #       },
    #       {
    #         user_id: "456"
    #       }
    #     ],
    #     failed: [
    #     ]
    #   }
    # @example Partial failure - user not found
    #   # Example operation for batch_delete_user
    #   params = {
    #     network_id: "12345678",
    #     user_ids: [
    #       "123",
    #       "456"
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_delete_user(params, options)
    #   response.to_h #=>
    #   {
    #     message: "partial success",
    #     successful: [
    #       {
    #         user_id: "123"
    #       }
    #     ],
    #     failed: [
    #       {
    #         user_id: "456",
    #         field: "username",
    #         reason: "User not found"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     network_id: "NetworkId", # required
    #     user_ids: ["UserId"], # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.batch_delete_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     message: "GenericString",
    #     successful: [
    #       {
    #         user_id: "UserId", # required
    #       }
    #     ],
    #     failed: [
    #       {
    #         field: "GenericString",
    #         reason: "GenericString",
    #         user_id: "UserId", # required
    #       }
    #     ]
    #   }
    # @return [Types::BatchDeleteUserResponse]
    def batch_delete_user(params = {}, options = {})
      request = build_request(:batch_delete_user, params)
      request.send_request(options)
    end

    # <p>Looks up multiple user usernames from their unique username hashes (unames). This operation allows you to retrieve the email addresses associated with a list of username hashes.</p>
    # @param [Hash, Types::BatchLookupUserUnameRequest] params
    # @option params [String] :network_id
    #   <p>The ID of the Wickr network where the users will be looked up.</p>
    # @option params [Array<String>] :unames
    #   <p>A list of username hashes (unames) to look up. Each uname is a unique identifier for a user's username. Maximum 50 unames per batch request.</p>
    # @option params [String] :client_token
    #   <p>A unique identifier for this request to ensure idempotency.</p>
    # @example Lookup multiple user unames
    #   # Example operation for batch_lookup_user_uname
    #   params = {
    #     network_id: "12345678",
    #     unames: [
    #       "a1b2c3d4e5f6",
    #       "g7h8i9j0k1l2"
    #     ],
    #     client_token: "f47ac10b-58cc-4372-a567-0e02b2c3d479"
    #   }
    #   options = {}
    #   response = client.batch_lookup_user_uname(params, options)
    #   response.to_h #=>
    #   {
    #     message: "success",
    #     successful: [
    #       {
    #         uname: "a1b2c3d4e5f6",
    #         username: "john.doe@example.com"
    #       },
    #       {
    #         uname: "g7h8i9j0k1l2",
    #         username: "john.doe2@example.com"
    #       }
    #     ],
    #     failed: [
    #     ]
    #   }
    # @example Partial failure - uname not found
    #   # Example operation for batch_lookup_user_uname
    #   params = {
    #     network_id: "12345678",
    #     unames: [
    #       "a1b2c3d4e5f6",
    #       "invaliduname"
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_lookup_user_uname(params, options)
    #   response.to_h #=>
    #   {
    #     message: "partial success",
    #     successful: [
    #       {
    #         uname: "a1b2c3d4e5f6",
    #         username: "john.doe@example.com"
    #       }
    #     ],
    #     failed: [
    #       {
    #         uname: "invaliduname",
    #         field: "uname",
    #         reason: "Uname not found"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     network_id: "NetworkId", # required
    #     unames: ["GenericString"], # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.batch_lookup_user_uname(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     message: "GenericString",
    #     successful: [
    #       {
    #         uname: "Uname", # required
    #         username: "GenericString", # required
    #       }
    #     ],
    #     failed: [
    #       {
    #         field: "GenericString",
    #         reason: "GenericString",
    #         uname: "Uname", # required
    #       }
    #     ]
    #   }
    # @return [Types::BatchLookupUserUnameResponse]
    def batch_lookup_user_uname(params = {}, options = {})
      request = build_request(:batch_lookup_user_uname, params)
      request.send_request(options)
    end

    # <p>Resends invitation codes to multiple users who have pending invitations in a Wickr network. This operation is useful when users haven't accepted their initial invitations or when invitations have expired.</p>
    # @param [Hash, Types::BatchReinviteUserRequest] params
    # @option params [String] :network_id
    #   <p>The ID of the Wickr network where users will be reinvited.</p>
    # @option params [Array<String>] :user_ids
    #   <p>A list of user IDs identifying the users to be reinvited to the network. Maximum 50 users per batch request.</p>
    # @option params [String] :client_token
    #   <p>A unique identifier for this request to ensure idempotency.</p>
    # @example Batch reinvite users successfully
    #   # Example operation for batch_reinvite_user
    #   params = {
    #     network_id: "12345678",
    #     user_ids: [
    #       "12345",
    #       "67890"
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_reinvite_user(params, options)
    #   response.to_h #=>
    #   {
    #     successful: [
    #       {
    #         user_id: "12345"
    #       },
    #       {
    #         user_id: "67890"
    #       }
    #     ],
    #     failed: [
    #     ]
    #   }
    # @example Batch reinvite users - partial success
    #   # Example operation for batch_reinvite_user
    #   params = {
    #     network_id: "12345678",
    #     user_ids: [
    #       "12345",
    #       "99999"
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_reinvite_user(params, options)
    #   response.to_h #=>
    #   {
    #     successful: [
    #       {
    #         user_id: "12345"
    #       }
    #     ],
    #     failed: [
    #       {
    #         user_id: "99999",
    #         reason: "user not found in current network"
    #       }
    #     ]
    #   }
    # @example Batch reinvite users - cannot reinvite
    #   # Example operation for batch_reinvite_user
    #   params = {
    #     network_id: "12345678",
    #     user_ids: [
    #       "54321"
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_reinvite_user(params, options)
    #   response.to_h #=>
    #   {
    #     successful: [
    #     ],
    #     failed: [
    #       {
    #         user_id: "54321",
    #         reason: "user cannot be reinvited"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     network_id: "NetworkId", # required
    #     user_ids: ["UserId"], # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.batch_reinvite_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     message: "GenericString",
    #     successful: [
    #       {
    #         user_id: "UserId", # required
    #       }
    #     ],
    #     failed: [
    #       {
    #         field: "GenericString",
    #         reason: "GenericString",
    #         user_id: "UserId", # required
    #       }
    #     ]
    #   }
    # @return [Types::BatchReinviteUserResponse]
    def batch_reinvite_user(params = {}, options = {})
      request = build_request(:batch_reinvite_user, params)
      request.send_request(options)
    end

    # <p>Resets multiple devices for a specific user in a Wickr network. This operation forces the selected devices to log out and requires users to re-authenticate, which is useful for security purposes or when devices need to be revoked.</p>
    # @param [Hash, Types::BatchResetDevicesForUserRequest] params
    # @option params [String] :network_id
    #   <p>The ID of the Wickr network containing the user whose devices will be reset.</p>
    # @option params [String] :user_id
    #   <p>The ID of the user whose devices will be reset.</p>
    # @option params [Array<String>] :app_ids
    #   <p>A list of application IDs identifying the specific devices to be reset for the user. Maximum 50 devices per batch request.</p>
    # @option params [String] :client_token
    #   <p>A unique identifier for this request to ensure idempotency.</p>
    # @example Successful device reset
    #   # Example operation for batch_reset_devices_for_user
    #   params = {
    #     network_id: "12345678",
    #     user_id: "12345",
    #     app_ids: [
    #       "d3135a42dcb6437780b16c3ca9581fe64e6822773cd6b965d25fc9929c89aca6",
    #       "e4246b53edc7548891c27d4da0692fe75f7933884de7c076e36gca030d90bdb7"
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_reset_devices_for_user(params, options)
    #   response.to_h #=>
    #   {
    #     message: "success",
    #     successful: [
    #       {
    #         app_id: "d3135a42dcb6437780b16c3ca9581fe64e6822773cd6b965d25fc9929c89aca6"
    #       },
    #       {
    #         app_id: "e4246b53edc7548891c27d4da0692fe75f7933884de7c076e36gca030d90bdb7"
    #       }
    #     ],
    #     failed: [
    #     ]
    #   }
    # @example Partial failure device reset
    #   # Example operation for batch_reset_devices_for_user
    #   params = {
    #     network_id: "12345678",
    #     user_id: "12345",
    #     app_ids: [
    #       "d3135a42dcb6437780b16c3ca9581fe64e6822773cd6b965d25fc9929c89aca6",
    #       "invalid-app-id"
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_reset_devices_for_user(params, options)
    #   response.to_h #=>
    #   {
    #     message: "partial success",
    #     successful: [
    #       {
    #         app_id: "d3135a42dcb6437780b16c3ca9581fe64e6822773cd6b965d25fc9929c89aca6"
    #       }
    #     ],
    #     failed: [
    #       {
    #         app_id: "invalid-app-id",
    #         field: "appId",
    #         reason: "Invalid app ID."
    #       }
    #     ]
    #   }
    # @example Invalid network ID error
    #   # Example operation for batch_reset_devices_for_user
    #   params = {
    #     network_id: "00000000",
    #     user_id: "12345",
    #     app_ids: [
    #       "d3135a42dcb6437780b16c3ca9581fe64e6822773cd6b965d25fc9929c89aca6"
    #     ]
    #   }
    #   options = {}
    #   begin
    #     response = client.batch_reset_devices_for_user(params, options)
    #   rescue Smithy::Client::ServiceError => e
    #     puts e.class #=> ForbiddenError
    #     puts e.data.to_h #=>
    #     {
    #       message: "Invalid networkId."
    #     }
    #   end
    # @example Request syntax with placeholder values
    #   params = {
    #     network_id: "NetworkId", # required
    #     user_id: "UserId", # required
    #     app_ids: ["GenericString"], # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.batch_reset_devices_for_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     message: "GenericString",
    #     successful: [
    #       {
    #         app_id: "GenericString", # required
    #       }
    #     ],
    #     failed: [
    #       {
    #         field: "GenericString",
    #         reason: "GenericString",
    #         app_id: "GenericString", # required
    #       }
    #     ]
    #   }
    # @return [Types::BatchResetDevicesForUserResponse]
    def batch_reset_devices_for_user(params = {}, options = {})
      request = build_request(:batch_reset_devices_for_user, params)
      request.send_request(options)
    end

    # <p>Suspends or unsuspends multiple users in a Wickr network. Suspended users cannot access the network until they are unsuspended. This operation is useful for temporarily restricting access without deleting user accounts.</p>
    # @param [Hash, Types::BatchToggleUserSuspendStatusRequest] params
    # @option params [String] :network_id
    #   <p>The ID of the Wickr network where users will be suspended or unsuspended.</p>
    # @option params [Boolean] :suspend
    #   <p>A boolean value indicating whether to suspend (true) or unsuspend (false) the specified users.</p>
    # @option params [Array<String>] :user_ids
    #   <p>A list of user IDs identifying the users whose suspend status will be toggled. Maximum 50 users per batch request.</p>
    # @option params [String] :client_token
    #   <p>A unique identifier for this request to ensure idempotency.</p>
    # @example Suspend multiple users
    #   # Example operation for batch_toggle_user_suspend_status
    #   params = {
    #     network_id: "12345678",
    #     user_ids: [
    #       "123",
    #       "456"
    #     ],
    #     suspend: true,
    #     client_token: "6ba7b815-9dad-11d1-80b4-00c04fd430c8"
    #   }
    #   options = {}
    #   response = client.batch_toggle_user_suspend_status(params, options)
    #   response.to_h #=>
    #   {
    #     message: "success",
    #     successful: [
    #       {
    #         user_id: "123"
    #       },
    #       {
    #         user_id: "456"
    #       }
    #     ],
    #     failed: [
    #     ]
    #   }
    # @example Unsuspend users with partial failure
    #   # Example operation for batch_toggle_user_suspend_status
    #   params = {
    #     network_id: "12345678",
    #     user_ids: [
    #       "123",
    #       "456"
    #     ],
    #     suspend: false
    #   }
    #   options = {}
    #   response = client.batch_toggle_user_suspend_status(params, options)
    #   response.to_h #=>
    #   {
    #     message: "partial success",
    #     successful: [
    #       {
    #         user_id: "123"
    #       }
    #     ],
    #     failed: [
    #       {
    #         user_id: "456",
    #         field: "username",
    #         reason: "User not found"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     network_id: "NetworkId", # required
    #     suspend: false, # required
    #     user_ids: ["UserId"], # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.batch_toggle_user_suspend_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     message: "GenericString",
    #     successful: [
    #       {
    #         user_id: "UserId", # required
    #       }
    #     ],
    #     failed: [
    #       {
    #         field: "GenericString",
    #         reason: "GenericString",
    #         user_id: "UserId", # required
    #       }
    #     ]
    #   }
    # @return [Types::BatchToggleUserSuspendStatusResponse]
    def batch_toggle_user_suspend_status(params = {}, options = {})
      request = build_request(:batch_toggle_user_suspend_status, params)
      request.send_request(options)
    end

    # <p>Creates a new bot in a specified Wickr network. Bots are automated accounts that can send and receive messages, enabling integration with external systems and automation of tasks.</p>
    # @param [Hash, Types::CreateBotRequest] params
    # @option params [String] :network_id
    #   <p>The ID of the Wickr network where the bot will be created.</p>
    # @option params [String] :username
    #   <p>The username for the bot. This must be unique within the network and follow the network's naming conventions.</p>
    # @option params [String] :display_name
    #   <p>The display name for the bot that will be visible to users in the network.</p>
    # @option params [String] :group_id
    #   <p>The ID of the security group to which the bot will be assigned.</p>
    # @option params [String] :challenge
    #   <p>The password for the bot account.</p>
    # @example Create bot successfully
    #   # Example operation for create_bot
    #   params = {
    #     network_id: "12345678",
    #     username: "analytics_bot",
    #     display_name: "Analytics Bot",
    #     challenge: "SecureP@ssw0rd123",
    #     group_id: "analytics_group"
    #   }
    #   options = {}
    #   response = client.create_bot(params, options)
    #   response.to_h #=>
    #   {
    #     bot_id: "98766",
    #     network_id: "12345678",
    #     username: "analytics_bot",
    #     display_name: "Analytics Bot",
    #     group_id: "analytics_group"
    #   }
    # @example Create bot - username unavailable
    #   # Example operation for create_bot
    #   params = {
    #     network_id: "12345678",
    #     username: "support_bot",
    #     display_name: "Support Bot",
    #     group_id: "default_group",
    #     challenge: "SecureP@ssw0rd123"
    #   }
    #   options = {}
    #   begin
    #     response = client.create_bot(params, options)
    #   rescue Smithy::Client::ServiceError => e
    #     puts e.class #=> ValidationError
    #     puts e.data.to_h #=>
    #     {
    #       reasons: [
    #         {
    #           field: "username",
    #           reason: "username is unavailable"
    #         }
    #       ]
    #     }
    #   end
    # @example Create bot - invalid username format
    #   # Example operation for create_bot
    #   params = {
    #     network_id: "12345678",
    #     username: "bot@invalid",
    #     display_name: "Test Bot",
    #     group_id: "default_group",
    #     challenge: "SecureP@ssw0rd123"
    #   }
    #   options = {}
    #   begin
    #     response = client.create_bot(params, options)
    #   rescue Smithy::Client::ServiceError => e
    #     puts e.class #=> ValidationError
    #     puts e.data.to_h #=>
    #     {
    #       reasons: [
    #         {
    #           field: "username",
    #           reason: "Invalid username format"
    #         }
    #       ]
    #     }
    #   end
    # @example Request syntax with placeholder values
    #   params = {
    #     network_id: "NetworkId", # required
    #     username: "GenericString", # required
    #     display_name: "GenericString",
    #     group_id: "GenericString", # required
    #     challenge: "SensitiveString", # required
    #   }
    #   options = {}
    #   response = client.create_bot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     message: "GenericString",
    #     bot_id: "BotId", # required
    #     network_id: "NetworkId",
    #     username: "GenericString",
    #     display_name: "GenericString",
    #     group_id: "GenericString"
    #   }
    # @return [Types::CreateBotResponse]
    def create_bot(params = {}, options = {})
      request = build_request(:create_bot, params)
      request.send_request(options)
    end

    # <p>Creates a data retention bot in a Wickr network. Data retention bots are specialized bots that handle message archiving and compliance by capturing and storing messages for regulatory or organizational requirements.</p>
    # @param [Hash, Types::CreateDataRetentionBotRequest] params
    # @option params [String] :network_id
    #   <p>The ID of the Wickr network where the data retention bot will be created.</p>
    # @example Create data retention bot successfully
    #   # Example operation for create_data_retention_bot
    #   params = {
    #     network_id: "12345678"
    #   }
    #   options = {}
    #   response = client.create_data_retention_bot(params, options)
    #   response.to_h #=>
    #   {
    #     message: "successfully provisioned data retention bot"
    #   }
    # @example Create data retention bot - users already exist
    #   # Example operation for create_data_retention_bot
    #   params = {
    #     network_id: "12345678"
    #   }
    #   options = {}
    #   begin
    #     response = client.create_data_retention_bot(params, options)
    #   rescue Smithy::Client::ServiceError => e
    #     puts e.class #=> BadRequestError
    #     puts e.data.to_h #=>
    #     {
    #       message: "Users already exist in this network."
    #     }
    #   end
    # @example Request syntax with placeholder values
    #   params = {
    #     network_id: "NetworkId", # required
    #   }
    #   options = {}
    #   response = client.create_data_retention_bot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     message: "GenericString"
    #   }
    # @return [Types::CreateDataRetentionBotResponse]
    def create_data_retention_bot(params = {}, options = {})
      request = build_request(:create_data_retention_bot, params)
      request.send_request(options)
    end

    # <p>Creates a new challenge password for the data retention bot. This password is used for authentication when the bot connects to the network.</p>
    # @param [Hash, Types::CreateDataRetentionBotChallengeRequest] params
    # @option params [String] :network_id
    #   <p>The ID of the Wickr network containing the data retention bot.</p>
    # @example Create data retention bot challenge successfully
    #   # Example operation for create_data_retention_bot_challenge
    #   params = {
    #     network_id: "12345678"
    #   }
    #   options = {}
    #   response = client.create_data_retention_bot_challenge(params, options)
    #   response.to_h #=>
    #   {
    #     challenge: "a1b2c3d4e5f6"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     network_id: "NetworkId", # required
    #   }
    #   options = {}
    #   response = client.create_data_retention_bot_challenge(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     challenge: "SensitiveString", # required
    #   }
    # @return [Types::CreateDataRetentionBotChallengeResponse]
    def create_data_retention_bot_challenge(params = {}, options = {})
      request = build_request(:create_data_retention_bot_challenge, params)
      request.send_request(options)
    end

    # <p>Creates a new Wickr network with specified access level and configuration. This operation provisions a new communication network for your organization.</p>
    # @param [Hash, Types::CreateNetworkRequest] params
    # @option params [String] :network_name
    #   <p>The name for the new network. Must be between 1 and 20 characters.</p>
    # @option params [String] :access_level
    #   <p>The access level for the network. Valid values are STANDARD or PREMIUM, which determine the features and capabilities available to network members.</p>
    # @option params [Boolean] :enable_premium_free_trial
    #   <p>Specifies whether to enable a premium free trial for the network. It is optional and has a default value as false. When set to true, the network starts with premium features for a limited trial period. </p>
    # @option params [String] :encryption_key_arn
    #   <p>The ARN of the Amazon Web Services KMS customer managed key to use for encrypting sensitive data in the network.</p>
    # @example Create network successfully
    #   # Example operation for create_network
    #   params = {
    #     network_name: "Production Network",
    #     access_level: PREMIUM,
    #     enable_premium_free_trial: false
    #   }
    #   options = {}
    #   response = client.create_network(params, options)
    #   response.to_h #=>
    #   {
    #     network_id: "12345678",
    #     network_name: "Production Network"
    #   }
    # @example Create network with free trial
    #   # Example operation for create_network
    #   params = {
    #     network_name: "Trial Network",
    #     access_level: PREMIUM,
    #     enable_premium_free_trial: true
    #   }
    #   options = {}
    #   response = client.create_network(params, options)
    #   response.to_h #=>
    #   {
    #     network_id: "87654321",
    #     network_name: "Trial Network"
    #   }
    # @example Create network - invalid name
    #   # Example operation for create_network
    #   params = {
    #     network_name: "This network name is way too long",
    #     access_level: STANDARD
    #   }
    #   options = {}
    #   begin
    #     response = client.create_network(params, options)
    #   rescue Smithy::Client::ServiceError => e
    #     puts e.class #=> ValidationError
    #     puts e.data.to_h #=>
    #     {
    #       reasons: [
    #         {
    #           field: "networkName",
    #           reason: "Network name must be between 1 and 20 characters"
    #         }
    #       ]
    #     }
    #   end
    # @example Request syntax with placeholder values
    #   params = {
    #     network_name: "GenericString", # required
    #     access_level: "STANDARD" # One of: ["STANDARD", "PREMIUM"], # required
    #     enable_premium_free_trial: false,
    #     encryption_key_arn: "GenericString"
    #   }
    #   options = {}
    #   response = client.create_network(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     network_id: "NetworkId",
    #     network_name: "GenericString",
    #     encryption_key_arn: "GenericString"
    #   }
    # @return [Types::CreateNetworkResponse]
    def create_network(params = {}, options = {})
      request = build_request(:create_network, params)
      request.send_request(options)
    end

    # <p>Creates a new security group in a Wickr network. Security groups allow you to organize users and control their permissions, features, and security settings.</p>
    # @param [Hash, Types::CreateSecurityGroupRequest] params
    # @option params [String] :network_id
    #   <p>The ID of the Wickr network where the security group will be created.</p>
    # @option params [String] :name
    #   <p>The name for the new security group.</p>
    # @option params [Types::SecurityGroupSettingsRequest] :security_group_settings
    #   <p>The configuration settings for the security group, including permissions, federation settings, and feature controls.</p>
    # @option params [String] :client_token
    #   <p>A unique identifier for this request to ensure idempotency.</p>
    # @example Create security group successfully
    #   # Example operation for create_security_group
    #   params = {
    #     network_id: "12345678",
    #     name: "engineering",
    #     security_group_settings: {
    #       federation_mode: 1,
    #       lockout_threshold: 10
    #     }
    #   }
    #   options = {}
    #   response = client.create_security_group(params, options)
    #   response.to_h #=>
    #   {
    #     security_group: {
    #       id: "def67890",
    #       name: "engineering",
    #       is_default: false,
    #       active_members: 0,
    #       bot_members: 0,
    #       modified: 1638360000,
    #       security_group_settings: {
    #         federation_mode: 1,
    #         lockout_threshold: 10
    #       }
    #     }
    #   }
    # @example Create security group - missing name
    #   # Example operation for create_security_group
    #   params = {
    #     network_id: "12345678",
    #     name: "",
    #     security_group_settings: {
    #       federation_mode: 1
    #     }
    #   }
    #   options = {}
    #   begin
    #     response = client.create_security_group(params, options)
    #   rescue Smithy::Client::ServiceError => e
    #     puts e.class #=> ValidationError
    #     puts e.data.to_h #=>
    #     {
    #       reasons: [
    #         {
    #           field: "name",
    #           reason: "name is required"
    #         }
    #       ]
    #     }
    #   end
    # @example Request syntax with placeholder values
    #   params = {
    #     network_id: "NetworkId", # required
    #     name: "GenericString", # required
    #     security_group_settings: { # required
    #       lockout_threshold: 1,
    #       permitted_networks: ["NetworkId"],
    #       enable_guest_federation: false,
    #       global_federation: false,
    #       federation_mode: 1,
    #       enable_restricted_global_federation: false,
    #       permitted_wickr_aws_networks: [
    #         {
    #           region: "GenericString", # required
    #           network_id: "NetworkId", # required
    #         }
    #       ],
    #       permitted_wickr_enterprise_networks: [
    #         {
    #           domain: "GenericString", # required
    #           network_id: "NetworkId", # required
    #         }
    #       ]
    #     },
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_security_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     security_group: { # required
    #       active_members: 1, # required
    #       bot_members: 1, # required
    #       active_directory_guid: "GenericString",
    #       id: "GenericString", # required
    #       is_default: false, # required
    #       name: "GenericString", # required
    #       modified: 1, # required
    #       security_group_settings: { # required
    #         always_reauthenticate: false,
    #         atak_package_values: ["GenericString"],
    #         calling: {
    #           can_start11_call: false,
    #           can_video_call: false,
    #           force_tcp_call: false
    #         },
    #         check_for_updates: false,
    #         enable_atak: false,
    #         enable_crash_reports: false,
    #         enable_file_download: false,
    #         enable_guest_federation: false,
    #         enable_notification_preview: false,
    #         enable_open_access_option: false,
    #         enable_restricted_global_federation: false,
    #         files_enabled: false,
    #         force_device_lockout: 1,
    #         force_open_access: false,
    #         force_read_receipts: false,
    #         global_federation: false,
    #         is_ato_enabled: false,
    #         is_link_preview_enabled: false,
    #         location_allow_maps: false,
    #         location_enabled: false,
    #         max_auto_download_size: 1,
    #         max_bor: 1,
    #         max_ttl: 1,
    #         message_forwarding_enabled: false,
    #         password_requirements: {
    #           lowercase: 1,
    #           min_length: 1,
    #           numbers: 1,
    #           symbols: 1,
    #           uppercase: 1
    #         },
    #         presence_enabled: false,
    #         quick_responses: ["GenericString"],
    #         show_master_recovery_key: false,
    #         shredder: {
    #           can_process_manually: false,
    #           intensity: 1
    #         },
    #         sso_max_idle_minutes: 1,
    #         max_non_sso_session_minutes: 1,
    #         federation_mode: 1,
    #         lockout_threshold: 1,
    #         permitted_networks: ["NetworkId"],
    #         permitted_wickr_aws_networks: [
    #           {
    #             region: "GenericString", # required
    #             network_id: "NetworkId", # required
    #           }
    #         ],
    #         permitted_wickr_enterprise_networks: [
    #           {
    #             domain: "GenericString", # required
    #             network_id: "NetworkId", # required
    #           }
    #         ]
    #       }
    #     }
    #   }
    # @return [Types::CreateSecurityGroupResponse]
    def create_security_group(params = {}, options = {})
      request = build_request(:create_security_group, params)
      request.send_request(options)
    end

    # <p>Deletes a bot from a specified Wickr network. This operation permanently removes the bot account and its associated data from the network.</p>
    # @param [Hash, Types::DeleteBotRequest] params
    # @option params [String] :network_id
    #   <p>The ID of the Wickr network from which the bot will be deleted.</p>
    # @option params [String] :bot_id
    #   <p>The unique identifier of the bot to be deleted.</p>
    # @example Delete bot successfully
    #   # Example operation for delete_bot
    #   params = {
    #     network_id: "12345678",
    #     bot_id: "98765"
    #   }
    #   options = {}
    #   response = client.delete_bot(params, options)
    #   response.to_h #=>
    #   {
    #     message: "success"
    #   }
    # @example Delete bot - bot not found
    #   # Example operation for delete_bot
    #   params = {
    #     network_id: "12345678",
    #     bot_id: "99999"
    #   }
    #   options = {}
    #   begin
    #     response = client.delete_bot(params, options)
    #   rescue Smithy::Client::ServiceError => e
    #     puts e.class #=> ResourceNotFoundError
    #     puts e.data.to_h #=>
    #     {
    #       message: "Bot not found"
    #     }
    #   end
    # @example Request syntax with placeholder values
    #   params = {
    #     network_id: "NetworkId", # required
    #     bot_id: "BotId", # required
    #   }
    #   options = {}
    #   response = client.delete_bot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     message: "GenericString"
    #   }
    # @return [Types::DeleteBotResponse]
    def delete_bot(params = {}, options = {})
      request = build_request(:delete_bot, params)
      request.send_request(options)
    end

    # <p>Deletes the data retention bot from a Wickr network. This operation permanently removes the bot and all its associated data from the database.</p>
    # @param [Hash, Types::DeleteDataRetentionBotRequest] params
    # @option params [String] :network_id
    #   <p>The ID of the Wickr network from which the data retention bot will be deleted.</p>
    # @example Delete data retention bot successfully
    #   # Example operation for delete_data_retention_bot
    #   params = {
    #     network_id: "12345678"
    #   }
    #   options = {}
    #   response = client.delete_data_retention_bot(params, options)
    #   response.to_h #=>
    #   {
    #     message: "deleted data retention bot and all associated data from the database"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     network_id: "NetworkId", # required
    #   }
    #   options = {}
    #   response = client.delete_data_retention_bot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     message: "GenericString"
    #   }
    # @return [Types::DeleteDataRetentionBotResponse]
    def delete_data_retention_bot(params = {}, options = {})
      request = build_request(:delete_data_retention_bot, params)
      request.send_request(options)
    end

    # <p>Deletes a Wickr network and all its associated resources, including users, bots, security groups, and settings. This operation is permanent and cannot be undone.</p>
    # @param [Hash, Types::DeleteNetworkRequest] params
    # @option params [String] :network_id
    #   <p>The ID of the Wickr network to delete.</p>
    # @option params [String] :client_token
    #   <p>A unique identifier for this request to ensure idempotency. If you retry a request with the same client token, the service will return the same response without attempting to delete the network again.</p>
    # @example Delete network successfully
    #   # Example operation for delete_network
    #   params = {
    #     network_id: "12345678"
    #   }
    #   options = {}
    #   response = client.delete_network(params, options)
    #   response.to_h #=>
    #   {
    #     message: "Network deletion initiated successfully"
    #   }
    # @example Delete network - not found
    #   # Example operation for delete_network
    #   params = {
    #     network_id: "99999999"
    #   }
    #   options = {}
    #   begin
    #     response = client.delete_network(params, options)
    #   rescue Smithy::Client::ServiceError => e
    #     puts e.class #=> ResourceNotFoundError
    #     puts e.data.to_h #=>
    #     {
    #       message: "Network not found"
    #     }
    #   end
    # @example Request syntax with placeholder values
    #   params = {
    #     network_id: "NetworkId", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.delete_network(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     message: "GenericString"
    #   }
    # @return [Types::DeleteNetworkResponse]
    def delete_network(params = {}, options = {})
      request = build_request(:delete_network, params)
      request.send_request(options)
    end

    # <p>Deletes a security group from a Wickr network. This operation cannot be performed on the default security group.</p>
    # @param [Hash, Types::DeleteSecurityGroupRequest] params
    # @option params [String] :network_id
    #   <p>The ID of the Wickr network from which the security group will be deleted.</p>
    # @option params [String] :group_id
    #   <p>The unique identifier of the security group to delete.</p>
    # @example Delete security group successfully
    #   # Example operation for delete_security_group
    #   params = {
    #     network_id: "12345678",
    #     group_id: "def67890"
    #   }
    #   options = {}
    #   response = client.delete_security_group(params, options)
    #   response.to_h #=>
    #   {
    #     message: "success",
    #     network_id: "12345678",
    #     group_id: "def67890"
    #   }
    # @example Delete security group - not found
    #   # Example operation for delete_security_group
    #   params = {
    #     network_id: "12345678",
    #     group_id: "invalid99"
    #   }
    #   options = {}
    #   begin
    #     response = client.delete_security_group(params, options)
    #   rescue Smithy::Client::ServiceError => e
    #     puts e.class #=> ResourceNotFoundError
    #     puts e.data.to_h #=>
    #     {
    #       message: "Security group not found"
    #     }
    #   end
    # @example Request syntax with placeholder values
    #   params = {
    #     network_id: "NetworkId", # required
    #     group_id: "GenericString", # required
    #   }
    #   options = {}
    #   response = client.delete_security_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     message: "GenericString",
    #     network_id: "NetworkId",
    #     group_id: "GenericString"
    #   }
    # @return [Types::DeleteSecurityGroupResponse]
    def delete_security_group(params = {}, options = {})
      request = build_request(:delete_security_group, params)
      request.send_request(options)
    end

    # <p>Retrieves detailed information about a specific bot in a Wickr network, including its status, group membership, and authentication details.</p>
    # @param [Hash, Types::GetBotRequest] params
    # @option params [String] :network_id
    #   <p>The ID of the Wickr network containing the bot.</p>
    # @option params [String] :bot_id
    #   <p>The unique identifier of the bot to retrieve.</p>
    # @example Get bot successfully
    #   # Example operation for get_bot
    #   params = {
    #     network_id: "12345678",
    #     bot_id: "98765"
    #   }
    #   options = {}
    #   response = client.get_bot(params, options)
    #   response.to_h #=>
    #   {
    #     bot_id: "98765",
    #     display_name: "Support Bot",
    #     username: "support_bot",
    #     uname: "abc123def456",
    #     pubkey: "LS0tLS1CRUdJTiBQVUJMSUMgS0VZLS0tLS0KTUlJQklqQU5CZ2txaGtpRzl3MEJBUUVGQUFPQ0FROEFNSUlCQ2dLQ0FRRUF4",
    #     status: 2,
    #     group_id: "default_group",
    #     has_challenge: true,
    #     suspended: false,
    #     last_login: "1704067200"
    #   }
    # @example Get bot - bot not found
    #   # Example operation for get_bot
    #   params = {
    #     network_id: "12345678",
    #     bot_id: "99999"
    #   }
    #   options = {}
    #   begin
    #     response = client.get_bot(params, options)
    #   rescue Smithy::Client::ServiceError => e
    #     puts e.class #=> ResourceNotFoundError
    #     puts e.data.to_h #=>
    #     {
    #       message: "Bot not found"
    #     }
    #   end
    # @example Request syntax with placeholder values
    #   params = {
    #     network_id: "NetworkId", # required
    #     bot_id: "BotId", # required
    #   }
    #   options = {}
    #   response = client.get_bot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     bot_id: "GenericString",
    #     display_name: "GenericString",
    #     username: "GenericString",
    #     uname: "GenericString",
    #     pubkey: "GenericString",
    #     status: 1 # One of: [1, 2],
    #     group_id: "GenericString",
    #     has_challenge: false,
    #     suspended: false,
    #     last_login: "GenericString"
    #   }
    # @return [Types::GetBotResponse]
    def get_bot(params = {}, options = {})
      request = build_request(:get_bot, params)
      request.send_request(options)
    end

    # <p>Retrieves the count of bots in a Wickr network, categorized by their status (pending, active, and total).</p>
    # @param [Hash, Types::GetBotsCountRequest] params
    # @option params [String] :network_id
    #   <p>The ID of the Wickr network for which to retrieve bot counts.</p>
    # @example Get bots count successfully
    #   # Example operation for get_bots_count
    #   params = {
    #     network_id: "12345678"
    #   }
    #   options = {}
    #   response = client.get_bots_count(params, options)
    #   response.to_h #=>
    #   {
    #     total: 15,
    #     active: 12,
    #     pending: 2
    #   }
    # @example Get bots count with filters
    #   # Example operation for get_bots_count
    #   params = {
    #     network_id: "12345678"
    #   }
    #   options = {}
    #   response = client.get_bots_count(params, options)
    #   response.to_h #=>
    #   {
    #     total: 12,
    #     active: 12,
    #     pending: 0
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     network_id: "NetworkId", # required
    #   }
    #   options = {}
    #   response = client.get_bots_count(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     pending: 1, # required
    #     active: 1, # required
    #     total: 1, # required
    #   }
    # @return [Types::GetBotsCountResponse]
    def get_bots_count(params = {}, options = {})
      request = build_request(:get_bots_count, params)
      request.send_request(options)
    end

    # <p>Retrieves information about the data retention bot in a Wickr network, including its status and whether the data retention service is enabled.</p>
    # @param [Hash, Types::GetDataRetentionBotRequest] params
    # @option params [String] :network_id
    #   <p>The ID of the Wickr network containing the data retention bot.</p>
    # @example Get data retention bot successfully
    #   # Example operation for get_data_retention_bot
    #   params = {
    #     network_id: "12345678"
    #   }
    #   options = {}
    #   response = client.get_data_retention_bot(params, options)
    #   response.to_h #=>
    #   {
    #     bot_name: "compliance_12345678_bot",
    #     bot_exists: true,
    #     is_bot_active: true,
    #     is_data_retention_bot_registered: true,
    #     is_data_retention_service_enabled: true,
    #     is_pubkey_msg_acked: false
    #   }
    # @example Get data retention bot - not provisioned
    #   # Example operation for get_data_retention_bot
    #   params = {
    #     network_id: "12345678"
    #   }
    #   options = {}
    #   response = client.get_data_retention_bot(params, options)
    #   response.to_h #=>
    #   {
    #     bot_name: "compliance_12345678_bot",
    #     bot_exists: false,
    #     is_bot_active: false,
    #     is_data_retention_bot_registered: false,
    #     is_data_retention_service_enabled: false,
    #     is_pubkey_msg_acked: false
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     network_id: "NetworkId", # required
    #   }
    #   options = {}
    #   response = client.get_data_retention_bot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     bot_name: "GenericString",
    #     bot_exists: false,
    #     is_bot_active: false,
    #     is_data_retention_bot_registered: false,
    #     is_data_retention_service_enabled: false,
    #     is_pubkey_msg_acked: false
    #   }
    # @return [Types::GetDataRetentionBotResponse]
    def get_data_retention_bot(params = {}, options = {})
      request = build_request(:get_data_retention_bot, params)
      request.send_request(options)
    end

    # <p>Retrieves historical guest user count data for a Wickr network, showing the number of guest users per billing period over the past 90 days.</p>
    # @param [Hash, Types::GetGuestUserHistoryCountRequest] params
    # @option params [String] :network_id
    #   <p>The ID of the Wickr network for which to retrieve guest user history.</p>
    # @example Get guest user history count
    #   # Example operation for get_guest_user_history_count
    #   params = {
    #     network_id: "12345678"
    #   }
    #   options = {}
    #   response = client.get_guest_user_history_count(params, options)
    #   response.to_h #=>
    #   {
    #     history: [
    #       {
    #         month: "2024_01",
    #         count: "32"
    #       },
    #       {
    #         month: "2023_12",
    #         count: "28"
    #       },
    #       {
    #         month: "2023_11",
    #         count: "35"
    #       },
    #       {
    #         month: "2023_10",
    #         count: "22"
    #       },
    #       {
    #         month: "2023_09",
    #         count: "18"
    #       },
    #       {
    #         month: "2023_08",
    #         count: "15"
    #       }
    #     ]
    #   }
    # @example Empty response for network with no guest user history
    #   # Example operation for get_guest_user_history_count
    #   params = {
    #     network_id: "87654321"
    #   }
    #   options = {}
    #   response = client.get_guest_user_history_count(params, options)
    #   response.to_h #=>
    #   {
    #     history: [
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     network_id: "NetworkId", # required
    #   }
    #   options = {}
    #   response = client.get_guest_user_history_count(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     history: [ # required
    #       {
    #         month: "GenericString", # required
    #         count: "GenericString", # required
    #       }
    #     ]
    #   }
    # @return [Types::GetGuestUserHistoryCountResponse]
    def get_guest_user_history_count(params = {}, options = {})
      request = build_request(:get_guest_user_history_count, params)
      request.send_request(options)
    end

    # <p>Retrieves detailed information about a specific Wickr network, including its configuration, access level, and status.</p>
    # @param [Hash, Types::GetNetworkRequest] params
    # @option params [String] :network_id
    #   <p>The ID of the Wickr network to retrieve.</p>
    # @example Get network successfully
    #   # Example operation for get_network
    #   params = {
    #     network_id: "12345678"
    #   }
    #   options = {}
    #   response = client.get_network(params, options)
    #   response.to_h #=>
    #   {
    #     network_id: "12345678",
    #     network_name: "Production Network",
    #     access_level: PREMIUM,
    #     aws_account_id: "123456789012",
    #     network_arn: "arn:aws:wickr:us-east-1:123456789012:network/12345678",
    #     standing: 1,
    #     migration_state: 0
    #   }
    # @example Get network - not found
    #   # Example operation for get_network
    #   params = {
    #     network_id: "99999999"
    #   }
    #   options = {}
    #   begin
    #     response = client.get_network(params, options)
    #   rescue Smithy::Client::ServiceError => e
    #     puts e.class #=> ResourceNotFoundError
    #     puts e.data.to_h #=>
    #     {
    #       message: "Network not found"
    #     }
    #   end
    # @example Request syntax with placeholder values
    #   params = {
    #     network_id: "NetworkId", # required
    #   }
    #   options = {}
    #   response = client.get_network(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     network_id: "NetworkId", # required
    #     network_name: "GenericString", # required
    #     access_level: "STANDARD" # One of: ["STANDARD", "PREMIUM"], # required
    #     aws_account_id: "GenericString", # required
    #     network_arn: "GenericString", # required
    #     standing: 1,
    #     free_trial_expiration: "GenericString",
    #     migration_state: 1,
    #     encryption_key_arn: "GenericString"
    #   }
    # @return [Types::GetNetworkResponse]
    def get_network(params = {}, options = {})
      request = build_request(:get_network, params)
      request.send_request(options)
    end

    # <p>Retrieves all network-level settings for a Wickr network, including client metrics, data retention, and other configuration options.</p>
    # @param [Hash, Types::GetNetworkSettingsRequest] params
    # @option params [String] :network_id
    #   <p>The ID of the Wickr network whose settings will be retrieved.</p>
    # @example Get network settings with mixed value types
    #   # Example operation for get_network_settings
    #   params = {
    #     network_id: "12345678"
    #   }
    #   options = {}
    #   response = client.get_network_settings(params, options)
    #   response.to_h #=>
    #   {
    #     settings: [
    #       {
    #         option_name: "enableClientMetrics",
    #         value: "true",
    #         type: "boolean"
    #       },
    #       {
    #         option_name: "dataRetention",
    #         value: "true",
    #         type: "boolean"
    #       }
    #     ]
    #   }
    # @example Get settings for network with defaults only
    #   # Example operation for get_network_settings
    #   params = {
    #     network_id: "87654321"
    #   }
    #   options = {}
    #   response = client.get_network_settings(params, options)
    #   response.to_h #=>
    #   {
    #     settings: [
    #       {
    #         option_name: "enableClientMetrics",
    #         value: "false",
    #         type: "boolean"
    #       },
    #       {
    #         option_name: "dataRetention",
    #         value: "false",
    #         type: "boolean"
    #       }
    #     ]
    #   }
    # @example Network not found error
    #   # Example operation for get_network_settings
    #   params = {
    #     network_id: "99999999"
    #   }
    #   options = {}
    #   begin
    #     response = client.get_network_settings(params, options)
    #   rescue Smithy::Client::ServiceError => e
    #     puts e.class #=> ResourceNotFoundError
    #     puts e.data.to_h #=>
    #     {
    #       message: "Network not found"
    #     }
    #   end
    # @example Request syntax with placeholder values
    #   params = {
    #     network_id: "NetworkId", # required
    #   }
    #   options = {}
    #   response = client.get_network_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     settings: [ # required
    #       {
    #         option_name: "GenericString", # required
    #         value: "GenericString", # required
    #         type: "GenericString", # required
    #       }
    #     ]
    #   }
    # @return [Types::GetNetworkSettingsResponse]
    def get_network_settings(params = {}, options = {})
      request = build_request(:get_network_settings, params)
      request.send_request(options)
    end

    # <p>Retrieves the OpenID Connect (OIDC) configuration for a Wickr network, including SSO settings and optional token information if access token parameters are provided.</p>
    # @param [Hash, Types::GetOidcInfoRequest] params
    # @option params [String] :network_id
    #   <p>The ID of the Wickr network whose OIDC configuration will be retrieved.</p>
    # @option params [String] :client_id
    #   <p>The OAuth client ID for retrieving access tokens (optional).</p>
    # @option params [String] :code
    #   <p>The authorization code for retrieving access tokens (optional).</p>
    # @option params [String] :grant_type
    #   <p>The OAuth grant type for retrieving access tokens (optional).</p>
    # @option params [String] :redirect_uri
    #   <p>The redirect URI for the OAuth flow (optional).</p>
    # @option params [String] :url
    #   <p>The URL for the OIDC provider (optional).</p>
    # @option params [String] :client_secret
    #   <p>The OAuth client secret for retrieving access tokens (optional).</p>
    # @option params [String] :code_verifier
    #   <p>The PKCE code verifier for enhanced security in the OAuth flow (optional).</p>
    # @option params [String] :certificate
    #   <p>The CA certificate for secure communication with the OIDC provider (optional).</p>
    # @example Get OIDC info successfully
    #   # Example operation for get_oidc_info
    #   params = {
    #     network_id: "12345678"
    #   }
    #   options = {}
    #   response = client.get_oidc_info(params, options)
    #   response.to_h #=>
    #   {
    #     openid_connect_info: {
    #       company_id: "us-east-1-company123",
    #       issuer: "https://login.example.com",
    #       scopes: "openid profile email",
    #       client_id: "client123",
    #       redirect_url: "https://app.wickr.com/callback",
    #       user_id: "email",
    #       sso_token_buffer_minutes: 5
    #     }
    #   }
    # @example Get OIDC info - not configured
    #   # Example operation for get_oidc_info
    #   params = {
    #     network_id: "12345678"
    #   }
    #   options = {}
    #   response = client.get_oidc_info(params, options)
    #   response.to_h #=>
    #   {
    #     openid_connect_info: {
    #       company_id: "",
    #       issuer: "",
    #       scopes: ""
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     network_id: "NetworkId", # required
    #     client_id: "GenericString",
    #     code: "GenericString",
    #     grant_type: "GenericString",
    #     redirect_uri: "GenericString",
    #     url: "GenericString",
    #     client_secret: "SensitiveString",
    #     code_verifier: "GenericString",
    #     certificate: "GenericString"
    #   }
    #   options = {}
    #   response = client.get_oidc_info(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     openid_connect_info: {
    #       application_name: "GenericString",
    #       client_id: "GenericString",
    #       company_id: "GenericString", # required
    #       scopes: "GenericString", # required
    #       issuer: "GenericString", # required
    #       client_secret: "SensitiveString",
    #       secret: "SensitiveString",
    #       redirect_url: "GenericString",
    #       user_id: "GenericString",
    #       custom_username: "GenericString",
    #       ca_certificate: "GenericString",
    #       application_id: 1,
    #       sso_token_buffer_minutes: 1,
    #       extra_auth_params: "GenericString"
    #     },
    #     token_info: {
    #       code_verifier: "GenericString",
    #       code_challenge: "GenericString",
    #       access_token: "GenericString",
    #       id_token: "GenericString",
    #       refresh_token: "GenericString",
    #       token_type: "GenericString",
    #       expires_in: 1
    #     }
    #   }
    # @return [Types::GetOidcInfoResponse]
    def get_oidc_info(params = {}, options = {})
      request = build_request(:get_oidc_info, params)
      request.send_request(options)
    end

    # <p>Retrieves the OpenTDF integration configuration for a Wickr network.</p>
    # @param [Hash, Types::GetOpentdfConfigRequest] params
    # @option params [String] :network_id
    #   <p>The ID of the Wickr network for which OpenTDF integration will be retrieved.</p>
    # @example Get OpenTDF info successfully
    #   # Example operation for get_opentdf_config
    #   params = {
    #     network_id: "12345678"
    #   }
    #   options = {}
    #   response = client.get_opentdf_config(params, options)
    #   response.to_h #=>
    #   {
    #     client_id: "client123",
    #     client_secret: "secret456",
    #     domain: "https://api.sample.com",
    #     provider: "virtru"
    #   }
    # @example Get OpenTDF info - not configured
    #   # Example operation for get_opentdf_config
    #   params = {
    #     network_id: "12345678"
    #   }
    #   options = {}
    #   response = client.get_opentdf_config(params, options)
    #   response.to_h #=>
    #   {
    #     client_id: "",
    #     client_secret: "",
    #     domain: "",
    #     provider: ""
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     network_id: "NetworkId", # required
    #   }
    #   options = {}
    #   response = client.get_opentdf_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     client_id: "GenericString", # required
    #     domain: "GenericString", # required
    #     client_secret: "SensitiveString", # required
    #     provider: "GenericString", # required
    #   }
    # @return [Types::GetOpentdfConfigResponse]
    def get_opentdf_config(params = {}, options = {})
      request = build_request(:get_opentdf_config, params)
      request.send_request(options)
    end

    # <p>Retrieves detailed information about a specific security group in a Wickr network, including its settings, member counts, and configuration.</p>
    # @param [Hash, Types::GetSecurityGroupRequest] params
    # @option params [String] :network_id
    #   <p>The ID of the Wickr network containing the security group.</p>
    # @option params [String] :group_id
    #   <p>The unique identifier of the security group to retrieve.</p>
    # @example Get security group successfully
    #   # Example operation for get_security_group
    #   params = {
    #     network_id: "12345678",
    #     group_id: "abc12345"
    #   }
    #   options = {}
    #   response = client.get_security_group(params, options)
    #   response.to_h #=>
    #   {
    #     security_group: {
    #       id: "abc12345",
    #       name: "default",
    #       is_default: true,
    #       active_members: 50,
    #       bot_members: 5,
    #       modified: 1638360000,
    #       security_group_settings: {
    #         federation_mode: 1,
    #         lockout_threshold: 10
    #       }
    #     }
    #   }
    # @example Get security group - not found
    #   # Example operation for get_security_group
    #   params = {
    #     network_id: "12345678",
    #     group_id: "invalid99"
    #   }
    #   options = {}
    #   begin
    #     response = client.get_security_group(params, options)
    #   rescue Smithy::Client::ServiceError => e
    #     puts e.class #=> ResourceNotFoundError
    #     puts e.data.to_h #=>
    #     {
    #       message: "Security group not found"
    #     }
    #   end
    # @example Request syntax with placeholder values
    #   params = {
    #     network_id: "NetworkId", # required
    #     group_id: "GenericString", # required
    #   }
    #   options = {}
    #   response = client.get_security_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     security_group: { # required
    #       active_members: 1, # required
    #       bot_members: 1, # required
    #       active_directory_guid: "GenericString",
    #       id: "GenericString", # required
    #       is_default: false, # required
    #       name: "GenericString", # required
    #       modified: 1, # required
    #       security_group_settings: { # required
    #         always_reauthenticate: false,
    #         atak_package_values: ["GenericString"],
    #         calling: {
    #           can_start11_call: false,
    #           can_video_call: false,
    #           force_tcp_call: false
    #         },
    #         check_for_updates: false,
    #         enable_atak: false,
    #         enable_crash_reports: false,
    #         enable_file_download: false,
    #         enable_guest_federation: false,
    #         enable_notification_preview: false,
    #         enable_open_access_option: false,
    #         enable_restricted_global_federation: false,
    #         files_enabled: false,
    #         force_device_lockout: 1,
    #         force_open_access: false,
    #         force_read_receipts: false,
    #         global_federation: false,
    #         is_ato_enabled: false,
    #         is_link_preview_enabled: false,
    #         location_allow_maps: false,
    #         location_enabled: false,
    #         max_auto_download_size: 1,
    #         max_bor: 1,
    #         max_ttl: 1,
    #         message_forwarding_enabled: false,
    #         password_requirements: {
    #           lowercase: 1,
    #           min_length: 1,
    #           numbers: 1,
    #           symbols: 1,
    #           uppercase: 1
    #         },
    #         presence_enabled: false,
    #         quick_responses: ["GenericString"],
    #         show_master_recovery_key: false,
    #         shredder: {
    #           can_process_manually: false,
    #           intensity: 1
    #         },
    #         sso_max_idle_minutes: 1,
    #         max_non_sso_session_minutes: 1,
    #         federation_mode: 1,
    #         lockout_threshold: 1,
    #         permitted_networks: ["NetworkId"],
    #         permitted_wickr_aws_networks: [
    #           {
    #             region: "GenericString", # required
    #             network_id: "NetworkId", # required
    #           }
    #         ],
    #         permitted_wickr_enterprise_networks: [
    #           {
    #             domain: "GenericString", # required
    #             network_id: "NetworkId", # required
    #           }
    #         ]
    #       }
    #     }
    #   }
    # @return [Types::GetSecurityGroupResponse]
    def get_security_group(params = {}, options = {})
      request = build_request(:get_security_group, params)
      request.send_request(options)
    end

    # <p>Retrieves detailed information about a specific user in a Wickr network, including their profile, status, and activity history.</p>
    # @param [Hash, Types::GetUserRequest] params
    # @option params [String] :network_id
    #   <p>The ID of the Wickr network containing the user.</p>
    # @option params [String] :user_id
    #   <p>The unique identifier of the user to retrieve.</p>
    # @option params [Time] :start_time
    #   <p>The start time for filtering the user's last activity. Only activity after this timestamp will be considered. Time is specified in epoch seconds.</p>
    # @option params [Time] :end_time
    #   <p>The end time for filtering the user's last activity. Only activity before this timestamp will be considered. Time is specified in epoch seconds.</p>
    # @example Get user information
    #   # Example operation for get_user
    #   params = {
    #     network_id: "12345678",
    #     user_id: "12345"
    #   }
    #   options = {}
    #   response = client.get_user(params, options)
    #   response.to_h #=>
    #   {
    #     user_id: "12345",
    #     first_name: "John",
    #     last_name: "Doe",
    #     username: "john.doe@example.com",
    #     is_admin: false,
    #     suspended: false,
    #     status: 2,
    #     last_activity: 1705500000,
    #     last_login: 1705499000,
    #     security_group_ids: [
    #       "BCTY8Qhe"
    #     ]
    #   }
    # @example Get user info with activity time range
    #   # Example operation for get_user
    #   params = {
    #     network_id: "12345678",
    #     user_id: "12345",
    #     start_time: Time.parse(1704067200),
    #     end_time: Time.parse(1705500000)
    #   }
    #   options = {}
    #   response = client.get_user(params, options)
    #   response.to_h #=>
    #   {
    #     user_id: "12345",
    #     first_name: "Jane",
    #     last_name: "Admin",
    #     username: "jane.admin@example.com",
    #     is_admin: true,
    #     suspended: false,
    #     status: 2,
    #     last_activity: 1705400000,
    #     last_login: 1705350000,
    #     security_group_ids: [
    #       "BCTY8Qhe",
    #       "ADMIN001"
    #     ]
    #   }
    # @example User not found error
    #   # Example operation for get_user
    #   params = {
    #     network_id: "12345678",
    #     user_id: "99999"
    #   }
    #   options = {}
    #   begin
    #     response = client.get_user(params, options)
    #   rescue Smithy::Client::ServiceError => e
    #     puts e.class #=> ResourceNotFoundError
    #     puts e.data.to_h #=>
    #     {
    #       message: "User not found."
    #     }
    #   end
    # @example Invalid userId error
    #   # Example operation for get_user
    #   params = {
    #     network_id: "12345678",
    #     user_id: "99999"
    #   }
    #   options = {}
    #   begin
    #     response = client.get_user(params, options)
    #   rescue Smithy::Client::ServiceError => e
    #     puts e.class #=> BadRequestError
    #     puts e.data.to_h #=>
    #     {
    #       message: "Invalid userId."
    #     }
    #   end
    # @example Request syntax with placeholder values
    #   params = {
    #     network_id: "NetworkId", # required
    #     user_id: "UserId", # required
    #     start_time: Time.now,
    #     end_time: Time.now
    #   }
    #   options = {}
    #   response = client.get_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     user_id: "UserId", # required
    #     first_name: "SensitiveString",
    #     last_name: "SensitiveString",
    #     username: "GenericString",
    #     is_admin: false,
    #     suspended: false,
    #     status: 1,
    #     last_activity: 1,
    #     last_login: 1,
    #     security_group_ids: ["SecurityGroupId"]
    #   }
    # @return [Types::GetUserResponse]
    def get_user(params = {}, options = {})
      request = build_request(:get_user, params)
      request.send_request(options)
    end

    # <p>Retrieves the count of users in a Wickr network, categorized by their status (pending, active, rejected) and showing how many users can still be added.</p>
    # @param [Hash, Types::GetUsersCountRequest] params
    # @option params [String] :network_id
    #   <p>The ID of the Wickr network for which to retrieve user counts.</p>
    # @example Get user counts for network
    #   # Example operation for get_users_count
    #   params = {
    #     network_id: "12345678"
    #   }
    #   options = {}
    #   response = client.get_users_count(params, options)
    #   response.to_h #=>
    #   {
    #     pending: 5,
    #     active: 25,
    #     rejected: 2,
    #     remaining: 15,
    #     total: 32
    #   }
    # @example Network with no users
    #   # Example operation for get_users_count
    #   params = {
    #     network_id: "87654321"
    #   }
    #   options = {}
    #   response = client.get_users_count(params, options)
    #   response.to_h #=>
    #   {
    #     pending: 0,
    #     active: 0,
    #     rejected: 0,
    #     remaining: 50,
    #     total: 0
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     network_id: "NetworkId", # required
    #   }
    #   options = {}
    #   response = client.get_users_count(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     pending: 1, # required
    #     active: 1, # required
    #     rejected: 1, # required
    #     remaining: 1, # required
    #     total: 1, # required
    #   }
    # @return [Types::GetUsersCountResponse]
    def get_users_count(params = {}, options = {})
      request = build_request(:get_users_count, params)
      request.send_request(options)
    end

    # <p>Retrieves a paginated list of guest users who have been blocked from a Wickr network. You can filter and sort the results.</p>
    # @param [Hash, Types::ListBlockedGuestUsersRequest] params
    # @option params [String] :network_id
    #   <p>The ID of the Wickr network from which to list blocked guest users.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of blocked guest users to return in a single page. Valid range is 1-100. Default is 10.</p>
    # @option params [String] :sort_direction
    #   <p>The direction to sort results. Valid values are 'ASC' (ascending) or 'DESC' (descending). Default is 'DESC'.</p>
    # @option params [String] :sort_fields
    #   <p>The field to sort blocked guest users by. Accepted values include 'username', 'admin', and 'modified'.</p>
    # @option params [String] :username
    #   <p>Filter results to only include blocked guest users with usernames matching this value.</p>
    # @option params [String] :admin
    #   <p>Filter results to only include blocked guest users that were blocked by this administrator.</p>
    # @option params [String] :next_token
    #   <p>The token for retrieving the next page of results. This is returned from a previous request when there are more results available.</p>
    # @example Get paginated list of blocked guest users
    #   # Example operation for list_blocked_guest_users
    #   params = {
    #     network_id: "12345678",
    #     max_results: 10,
    #     sort_direction: DESC,
    #     sort_fields: "modified"
    #   }
    #   options = {}
    #   response = client.list_blocked_guest_users(params, options)
    #   response.to_h #=>
    #   {
    #     next_token: "v1:pagination:f47ac10b-58cc-4372-a567-0e02b2c3d479",
    #     blocklist: [
    #       {
    #         username: "blocked.user1@example.com",
    #         admin: "admin@company.com",
    #         modified: "2024-01-15 10:30:00",
    #         username_hash: "032c36d5623781204592a69269ed9480d604484269c8a4c2d39528885a56470d"
    #       },
    #       {
    #         username: "blocked.user2@example.com",
    #         admin: "admin@company.com",
    #         modified: "2024-01-10 14:20:00",
    #         username_hash: "032c36d5623781204592a69269ed9480d604484269c8a4c2d39528885a56470d"
    #       },
    #       {
    #         username: "blocked.user3@example.com",
    #         admin: "security@company.com",
    #         modified: "2024-01-05 09:15:00",
    #         username_hash: "032c36d5623781204592a69269ed9480d604484269c8a4c2d39528885a56470d"
    #       }
    #     ]
    #   }
    # @example Filter by username
    #   # Example operation for list_blocked_guest_users
    #   params = {
    #     network_id: "12345678",
    #     username: "john.doe@example.com"
    #   }
    #   options = {}
    #   response = client.list_blocked_guest_users(params, options)
    #   response.to_h #=>
    #   {
    #     blocklist: [
    #       {
    #         username: "john.doe@example.com",
    #         admin: "admin@company.com",
    #         modified: "2023-12-20 16:45:00",
    #         username_hash: "032c36d5623781204592a69269ed9480d604484269c8a4c2d39528885a56470d"
    #       }
    #     ]
    #   }
    # @example Empty blocklist
    #   # Example operation for list_blocked_guest_users
    #   params = {
    #     network_id: "12345678"
    #   }
    #   options = {}
    #   response = client.list_blocked_guest_users(params, options)
    #   response.to_h #=>
    #   {
    #     blocklist: [
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     network_id: "NetworkId", # required
    #     max_results: 1,
    #     sort_direction: "ASC" # One of: ["ASC", "DESC"],
    #     sort_fields: "GenericString",
    #     username: "GenericString",
    #     admin: "GenericString",
    #     next_token: "GenericString"
    #   }
    #   options = {}
    #   response = client.list_blocked_guest_users(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "GenericString",
    #     blocklist: [ # required
    #       {
    #         username: "GenericString", # required
    #         admin: "GenericString", # required
    #         modified: "GenericString", # required
    #         username_hash: "GenericString", # required
    #       }
    #     ]
    #   }
    # @return [Types::ListBlockedGuestUsersResponse]
    def list_blocked_guest_users(params = {}, options = {})
      request = build_request(:list_blocked_guest_users, params)
      request.send_request(options)
    end

    # <p>Retrieves a paginated list of bots in a specified Wickr network. You can filter and sort the results based on various criteria.</p>
    # @param [Hash, Types::ListBotsRequest] params
    # @option params [String] :network_id
    #   <p>The ID of the Wickr network from which to list bots.</p>
    # @option params [String] :next_token
    #   <p>The token for retrieving the next page of results. This is returned from a previous request when there are more results available.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of bots to return in a single page. Valid range is 1-100. Default is 10.</p>
    # @option params [String] :sort_fields
    #   <p>The fields to sort bots by. Multiple fields can be specified by separating them with '+'. Accepted values include 'username', 'firstName', 'displayName', 'status', and 'groupId'.</p>
    # @option params [String] :sort_direction
    #   <p>The direction to sort results. Valid values are 'ASC' (ascending) or 'DESC' (descending). Default is 'DESC'.</p>
    # @option params [String] :display_name
    #   <p>Filter results to only include bots with display names matching this value.</p>
    # @option params [String] :username
    #   <p>Filter results to only include bots with usernames matching this value.</p>
    # @option params [Integer] :status
    #   <p>Filter results to only include bots with this status (1 for pending, 2 for active).</p>
    # @option params [String] :group_id
    #   <p>Filter results to only include bots belonging to this security group.</p>
    # @example List bots with pagination
    #   # Example operation for list_bots
    #   params = {
    #     network_id: "12345678",
    #     max_results: 10,
    #     sort_fields: "username",
    #     sort_direction: ASC
    #   }
    #   options = {}
    #   response = client.list_bots(params, options)
    #   response.to_h #=>
    #   {
    #     bots: [
    #       {
    #         bot_id: "98765",
    #         display_name: "Analytics Bot",
    #         username: "analytics_bot",
    #         uname: "abc123def456",
    #         pubkey: "LS0tLS1CRUdJTiBQVUJMSUMgS0VZLS0tLS0KTUlJQklqQU5CZ2txaGtpRzl3MEJBUUVGQUFPQ0FROEFNSUlCQ2dLQ0FRRUF4",
    #         status: 2,
    #         group_id: "analytics_group",
    #         has_challenge: true,
    #         suspended: false,
    #         last_login: "1704067200"
    #       },
    #       {
    #         bot_id: "98766",
    #         display_name: "Support Bot",
    #         username: "support_bot",
    #         uname: "def456ghi789",
    #         pubkey: "LS0tLS1CRUdJTiBQVUJMSUMgS0VZLS0tLS0KTUlJQklqQU5CZ2txaGtpRzl3MEJBUUVGQUFPQ0FROEFNSUlCQ2dLQ0FRRUF5",
    #         status: 2,
    #         group_id: "support_group",
    #         has_challenge: true,
    #         suspended: false,
    #         last_login: "1704153600"
    #       }
    #     ],
    #     next_token: "eyJzdGFydEluZGV4IjoxMH0="
    #   }
    # @example List bots with filters
    #   # Example operation for list_bots
    #   params = {
    #     network_id: "12345678",
    #     max_results: 10,
    #     display_name: "Support",
    #     status: 2
    #   }
    #   options = {}
    #   response = client.list_bots(params, options)
    #   response.to_h #=>
    #   {
    #     bots: [
    #       {
    #         bot_id: "98766",
    #         display_name: "Support Bot",
    #         username: "support_bot",
    #         uname: "def456ghi789",
    #         pubkey: "LS0tLS1CRUdJTiBQVUJMSUMgS0VZLS0tLS0KTUlJQklqQU5CZ2txaGtpRzl3MEJBUUVGQUFPQ0FROEFNSUlCQ2dLQ0FRRUF5",
    #         status: 2,
    #         group_id: "support_group",
    #         has_challenge: true,
    #         suspended: false,
    #         last_login: "1704153600"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     network_id: "NetworkId", # required
    #     next_token: "GenericString",
    #     max_results: 1,
    #     sort_fields: "GenericString",
    #     sort_direction: "ASC" # One of: ["ASC", "DESC"],
    #     display_name: "GenericString",
    #     username: "GenericString",
    #     status: 1 # One of: [1, 2],
    #     group_id: "GenericString"
    #   }
    #   options = {}
    #   response = client.list_bots(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     bots: [ # required
    #       {
    #         bot_id: "GenericString",
    #         display_name: "GenericString",
    #         username: "GenericString",
    #         uname: "GenericString",
    #         pubkey: "GenericString",
    #         status: 1 # One of: [1, 2],
    #         group_id: "GenericString",
    #         has_challenge: false,
    #         suspended: false,
    #         last_login: "GenericString"
    #       }
    #     ],
    #     next_token: "GenericString"
    #   }
    # @return [Types::ListBotsResponse]
    def list_bots(params = {}, options = {})
      request = build_request(:list_bots, params)
      request.send_request(options)
    end

    # <p>Retrieves a paginated list of devices associated with a specific user in a Wickr network. This operation returns information about all devices where the user has logged into Wickr.</p>
    # @param [Hash, Types::ListDevicesForUserRequest] params
    # @option params [String] :network_id
    #   <p>The ID of the Wickr network containing the user.</p>
    # @option params [String] :user_id
    #   <p>The unique identifier of the user whose devices will be listed.</p>
    # @option params [String] :next_token
    #   <p>The token for retrieving the next page of results. This is returned from a previous request when there are more results available.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of devices to return in a single page. Valid range is 1-100. Default is 10.</p>
    # @option params [String] :sort_fields
    #   <p>The fields to sort devices by. Multiple fields can be specified by separating them with '+'. Accepted values include 'lastlogin', 'type', 'suspend', and 'created'.</p>
    # @option params [String] :sort_direction
    #   <p>The direction to sort results. Valid values are 'ASC' (ascending) or 'DESC' (descending). Default is 'DESC'.</p>
    # @example Successful device list retrieval
    #   # Example operation for list_devices_for_user
    #   params = {
    #     network_id: "12345678",
    #     user_id: "12345",
    #     max_results: 10,
    #     sort_fields: "appId",
    #     sort_direction: DESC
    #   }
    #   options = {}
    #   response = client.list_devices_for_user(params, options)
    #   response.to_h #=>
    #   {
    #     devices: [
    #       {
    #         app_id: "d3135a42dcb6437780b16c3ca9581fe64e6822773cd6b965d25fc9929c89aca6",
    #         type: "mobile",
    #         suspend: false,
    #         status_text: "Active",
    #         created: "January 15th 2024, 2:30:45 pm",
    #         last_login: "January 20th 2024, 9:15:30 am"
    #       },
    #       {
    #         app_id: "e4246b53edc7548891c27d4da0692fe75f7933884de7c076e36gca030d90bdb7",
    #         type: "desktop",
    #         suspend: true,
    #         status_text: "Suspended",
    #         created: "December 10th 2023, 11:45:20 am",
    #         last_login: "January 18th 2024, 4:20:15 pm"
    #       }
    #     ]
    #   }
    # @example Retrieving subsequent page of devices
    #   # Example operation for list_devices_for_user
    #   params = {
    #     network_id: "12345678",
    #     user_id: "12345",
    #     max_results: 10,
    #     next_token: "v1:pagination:6ba7b810-9dad-11d1-80b4-00c04fd430c8"
    #   }
    #   options = {}
    #   response = client.list_devices_for_user(params, options)
    #   response.to_h #=>
    #   {
    #     next_token: "v1:pagination:7cb8c921-aebe-22e2-91c5-11d05fe541d9",
    #     devices: [
    #       {
    #         app_id: "f5357c64fde8659002c38e5db1804gf86g8044995ef8d187f47hdb141e01dce8",
    #         type: "web",
    #         suspend: false,
    #         status_text: "Active",
    #         created: "January 1st 2024, 12:00:00 pm",
    #         last_login: "January 21st 2024, 8:22:00 am"
    #       },
    #       {
    #         app_id: "g6468d75gef9760113d49f6ec2915hg97h9155aa6fg9e298g58iec252f12edf9",
    #         type: "mobile",
    #         suspend: false,
    #         status_text: "Active",
    #         created: "December 24th 2023, 4:00:00 pm",
    #         last_login: "January 20th 2024, 9:15:30 am"
    #       }
    #     ]
    #   }
    # @example Invalid userId error
    #   # Example operation for list_devices_for_user
    #   params = {
    #     network_id: "12345678",
    #     user_id: "99999",
    #     max_results: 10
    #   }
    #   options = {}
    #   begin
    #     response = client.list_devices_for_user(params, options)
    #   rescue Smithy::Client::ServiceError => e
    #     puts e.class #=> BadRequestError
    #     puts e.data.to_h #=>
    #     {
    #       message: "Invalid userId."
    #     }
    #   end
    # @example Request syntax with placeholder values
    #   params = {
    #     network_id: "NetworkId", # required
    #     user_id: "UserId", # required
    #     next_token: "GenericString",
    #     max_results: 1,
    #     sort_fields: "GenericString",
    #     sort_direction: "ASC" # One of: ["ASC", "DESC"]
    #   }
    #   options = {}
    #   response = client.list_devices_for_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "GenericString",
    #     devices: [ # required
    #       {
    #         app_id: "GenericString",
    #         created: "GenericString",
    #         last_login: "GenericString",
    #         status_text: "GenericString",
    #         suspend: false,
    #         type: "GenericString"
    #       }
    #     ]
    #   }
    # @return [Types::ListDevicesForUserResponse]
    def list_devices_for_user(params = {}, options = {})
      request = build_request(:list_devices_for_user, params)
      request.send_request(options)
    end

    # <p>Retrieves a paginated list of guest users who have communicated with your Wickr network. Guest users are external users from federated networks who can communicate with network members.</p>
    # @param [Hash, Types::ListGuestUsersRequest] params
    # @option params [String] :network_id
    #   <p>The ID of the Wickr network from which to list guest users.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of guest users to return in a single page. Valid range is 1-100. Default is 10.</p>
    # @option params [String] :sort_direction
    #   <p>The direction to sort results. Valid values are 'ASC' (ascending) or 'DESC' (descending). Default is 'DESC'.</p>
    # @option params [String] :sort_fields
    #   <p>The field to sort guest users by. Accepted values include 'username' and 'billingPeriod'.</p>
    # @option params [String] :username
    #   <p>Filter results to only include guest users with usernames matching this value.</p>
    # @option params [String] :billing_period
    #   <p>Filter results to only include guest users from this billing period (e.g., '2024-01').</p>
    # @option params [String] :next_token
    #   <p>The token for retrieving the next page of results. This is returned from a previous request when there are more results available.</p>
    # @example Get paginated list of guest users
    #   # Example operation for list_guest_users
    #   params = {
    #     network_id: "12345678",
    #     max_results: 20,
    #     sort_direction: DESC,
    #     sort_fields: "billingPeriod"
    #   }
    #   options = {}
    #   response = client.list_guest_users(params, options)
    #   response.to_h #=>
    #   {
    #     next_token: "v1:pagination:550e8400-e29b-41d4-a716-446655440000",
    #     guestlist: [
    #       {
    #         billing_period: "2024-01",
    #         username: "guest1@example.com",
    #         username_hash: "e8e55b924aee6554edb87816c66704564504d25fbb95fc4dbc944feb977cbc26"
    #       },
    #       {
    #         billing_period: "2024-01",
    #         username: "guest2@example.com",
    #         username_hash: "a9e55b924aee6554edb87816c66704564504d25fbb95fc4dbc944feb977cbc26"
    #       },
    #       {
    #         billing_period: "2023-12",
    #         username: "guest3@example.com",
    #         username_hash: "c3e55b924aee6554edb87816c66704564504d25fbb95fc4dbc944feb977cbc26"
    #       },
    #       {
    #         billing_period: "2023-12",
    #         username: "guest4@example.com",
    #         username_hash: "k2e55b924aee6554edb87816c66704564504d25fbb95fc4dbc944feb977cbc26"
    #       }
    #     ]
    #   }
    # @example Filter by billing period
    #   # Example operation for list_guest_users
    #   params = {
    #     network_id: "12345678",
    #     billing_period: "2024-01",
    #     max_results: 10
    #   }
    #   options = {}
    #   response = client.list_guest_users(params, options)
    #   response.to_h #=>
    #   {
    #     next_token: "v1:pagination:6ba7b810-9dad-11d1-80b4-00c04fd430c8",
    #     guestlist: [
    #       {
    #         billing_period: "2024-01",
    #         username: "guest1@example.com",
    #         username_hash: "e8e55b924aee6554edb87816c66704564504d25fbb95fc4dbc944feb977cbc26"
    #       },
    #       {
    #         billing_period: "2024-01",
    #         username: "guest2@example.com",
    #         username_hash: "a9e55b924aee6554edb87816c66704564504d25fbb95fc4dbc944feb977cbc26"
    #       }
    #     ]
    #   }
    # @example Empty guest list
    #   # Example operation for list_guest_users
    #   params = {
    #     network_id: "87654321"
    #   }
    #   options = {}
    #   response = client.list_guest_users(params, options)
    #   response.to_h #=>
    #   {
    #     guestlist: [
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     network_id: "NetworkId", # required
    #     max_results: 1,
    #     sort_direction: "ASC" # One of: ["ASC", "DESC"],
    #     sort_fields: "GenericString",
    #     username: "GenericString",
    #     billing_period: "GenericString",
    #     next_token: "GenericString"
    #   }
    #   options = {}
    #   response = client.list_guest_users(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "GenericString",
    #     guestlist: [ # required
    #       {
    #         billing_period: "GenericString", # required
    #         username: "GenericString", # required
    #         username_hash: "GenericString", # required
    #       }
    #     ]
    #   }
    # @return [Types::ListGuestUsersResponse]
    def list_guest_users(params = {}, options = {})
      request = build_request(:list_guest_users, params)
      request.send_request(options)
    end

    # <p>Retrieves a paginated list of all Wickr networks associated with your Amazon Web Services account. You can sort the results by network ID or name.</p>
    # @param [Hash, Types::ListNetworksRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of networks to return in a single page. Valid range is 1-100. Default is 10.</p>
    # @option params [String] :sort_fields
    #   <p>The field to sort networks by. Accepted values are 'networkId' and 'networkName'. Default is 'networkId'.</p>
    # @option params [String] :sort_direction
    #   <p>The direction to sort results. Valid values are 'ASC' (ascending) or 'DESC' (descending). Default is 'DESC'.</p>
    # @option params [String] :next_token
    #   <p>The token for retrieving the next page of results. This is returned from a previous request when there are more results available.</p>
    # @example List networks with pagination
    #   # Example operation for list_networks
    #   params = {
    #     max_results: 10,
    #     sort_fields: "networkName",
    #     sort_direction: ASC
    #   }
    #   options = {}
    #   response = client.list_networks(params, options)
    #   response.to_h #=>
    #   {
    #     networks: [
    #       {
    #         network_id: "12345678",
    #         network_name: "Dev Network",
    #         access_level: STANDARD,
    #         aws_account_id: "123456789012",
    #         network_arn: "arn:aws:wickr:us-east-1:123456789012:network/12345678",
    #         standing: 1
    #       },
    #       {
    #         network_id: "87654321",
    #         network_name: "Prod Network",
    #         access_level: PREMIUM,
    #         aws_account_id: "123456789012",
    #         network_arn: "arn:aws:wickr:us-east-1:123456789012:network/87654321",
    #         standing: 1
    #       }
    #     ],
    #     next_token: "eyJvZmZzZXQiOjEwfQ=="
    #   }
    # @example List networks - first page
    #   # Example operation for list_networks
    #   params = {
    #     max_results: 10
    #   }
    #   options = {}
    #   response = client.list_networks(params, options)
    #   response.to_h #=>
    #   {
    #     networks: [
    #       {
    #         network_id: "12345678",
    #         network_name: "Production Network",
    #         access_level: PREMIUM,
    #         aws_account_id: "123456789012",
    #         network_arn: "arn:aws:wickr:us-east-1:123456789012:network/12345678",
    #         standing: 1
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     sort_fields: "GenericString",
    #     sort_direction: "ASC" # One of: ["ASC", "DESC"],
    #     next_token: "GenericString"
    #   }
    #   options = {}
    #   response = client.list_networks(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     networks: [ # required
    #       {
    #         network_id: "NetworkId", # required
    #         network_name: "GenericString", # required
    #         access_level: "STANDARD" # One of: ["STANDARD", "PREMIUM"], # required
    #         aws_account_id: "GenericString", # required
    #         network_arn: "GenericString", # required
    #         standing: 1,
    #         free_trial_expiration: "GenericString",
    #         migration_state: 1,
    #         encryption_key_arn: "GenericString"
    #       }
    #     ],
    #     next_token: "GenericString"
    #   }
    # @return [Types::ListNetworksResponse]
    def list_networks(params = {}, options = {})
      request = build_request(:list_networks, params)
      request.send_request(options)
    end

    # <p>Retrieves a paginated list of users who belong to a specific security group in a Wickr network.</p>
    # @param [Hash, Types::ListSecurityGroupUsersRequest] params
    # @option params [String] :network_id
    #   <p>The ID of the Wickr network containing the security group.</p>
    # @option params [String] :group_id
    #   <p>The unique identifier of the security group whose users will be listed.</p>
    # @option params [String] :next_token
    #   <p>The token for retrieving the next page of results. This is returned from a previous request when there are more results available.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of users to return in a single page. Valid range is 1-100. Default is 10.</p>
    # @option params [String] :sort_fields
    #   <p>The field to sort users by. Multiple fields can be specified by separating them with '+'. Accepted values include 'username', 'firstName', and 'lastName'.</p>
    # @option params [String] :sort_direction
    #   <p>The direction to sort results. Valid values are 'ASC' (ascending) or 'DESC' (descending). Default is 'DESC'.</p>
    # @example List security group users with pagination
    #   # Example operation for list_security_group_users
    #   params = {
    #     network_id: "12345678",
    #     group_id: "abc12345",
    #     max_results: 10,
    #     sort_fields: "username",
    #     sort_direction: ASC
    #   }
    #   options = {}
    #   response = client.list_security_group_users(params, options)
    #   response.to_h #=>
    #   {
    #     users: [
    #       {
    #         username: "alice@example.com",
    #         first_name: "Alice",
    #         last_name: "Smith"
    #       },
    #       {
    #         username: "bob@example.com",
    #         first_name: "Bob",
    #         last_name: "Jones"
    #       }
    #     ],
    #     next_token: "eyJvZmZzZXQiOjEwfQ=="
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     network_id: "NetworkId", # required
    #     group_id: "GenericString", # required
    #     next_token: "GenericString",
    #     max_results: 1,
    #     sort_fields: "GenericString",
    #     sort_direction: "ASC" # One of: ["ASC", "DESC"]
    #   }
    #   options = {}
    #   response = client.list_security_group_users(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     users: [ # required
    #       {
    #         user_id: "UserId",
    #         first_name: "SensitiveString",
    #         last_name: "SensitiveString",
    #         username: "GenericString",
    #         security_groups: ["SecurityGroupId"],
    #         is_admin: false,
    #         suspended: false,
    #         status: 1,
    #         otp_enabled: false,
    #         scim_id: "GenericString",
    #         type: "GenericString",
    #         cell: "GenericString",
    #         country_code: "GenericString",
    #         challenge_failures: 1,
    #         is_invite_expired: false,
    #         is_user: false,
    #         invite_code: "GenericString",
    #         code_validation: false,
    #         uname: "GenericString"
    #       }
    #     ],
    #     next_token: "GenericString"
    #   }
    # @return [Types::ListSecurityGroupUsersResponse]
    def list_security_group_users(params = {}, options = {})
      request = build_request(:list_security_group_users, params)
      request.send_request(options)
    end

    # <p>Retrieves a paginated list of security groups in a specified Wickr network. You can sort the results by various criteria.</p>
    # @param [Hash, Types::ListSecurityGroupsRequest] params
    # @option params [String] :network_id
    #   <p>The ID of the Wickr network from which to list security groups.</p>
    # @option params [String] :next_token
    #   <p>The token for retrieving the next page of results. This is returned from a previous request when there are more results available.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of security groups to return in a single page. Valid range is 1-100. Default is 10.</p>
    # @option params [String] :sort_fields
    #   <p>The field to sort security groups by. Accepted values include 'id' and 'name'.</p>
    # @option params [String] :sort_direction
    #   <p>The direction to sort results. Valid values are 'ASC' (ascending) or 'DESC' (descending). Default is 'DESC'.</p>
    # @example List security groups with pagination
    #   # Example operation for list_security_groups
    #   params = {
    #     network_id: "12345678",
    #     max_results: 10,
    #     sort_fields: "name",
    #     sort_direction: ASC
    #   }
    #   options = {}
    #   response = client.list_security_groups(params, options)
    #   response.to_h #=>
    #   {
    #     security_groups: [
    #       {
    #         id: "abc12345",
    #         name: "default",
    #         is_default: true,
    #         active_members: 25,
    #         bot_members: 0,
    #         modified: 1638360000,
    #         security_group_settings: {
    #           lockout_threshold: 10
    #         }
    #       },
    #       {
    #         id: "def67890",
    #         name: "engineering",
    #         is_default: false,
    #         active_members: 10,
    #         bot_members: 2,
    #         modified: 1638360000,
    #         security_group_settings: {
    #           lockout_threshold: 15
    #         }
    #       }
    #     ],
    #     next_token: "eyJvZmZzZXQiOjEwfQ=="
    #   }
    # @example List security groups - first page
    #   # Example operation for list_security_groups
    #   params = {
    #     network_id: "12345678",
    #     max_results: 10
    #   }
    #   options = {}
    #   response = client.list_security_groups(params, options)
    #   response.to_h #=>
    #   {
    #     security_groups: [
    #       {
    #         id: "abc12345",
    #         name: "default",
    #         is_default: true,
    #         active_members: 25,
    #         bot_members: 0,
    #         modified: 1638360000,
    #         security_group_settings: {
    #           lockout_threshold: 10
    #         }
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     network_id: "NetworkId", # required
    #     next_token: "GenericString",
    #     max_results: 1,
    #     sort_fields: "GenericString",
    #     sort_direction: "ASC" # One of: ["ASC", "DESC"]
    #   }
    #   options = {}
    #   response = client.list_security_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     security_groups: [
    #       {
    #         active_members: 1, # required
    #         bot_members: 1, # required
    #         active_directory_guid: "GenericString",
    #         id: "GenericString", # required
    #         is_default: false, # required
    #         name: "GenericString", # required
    #         modified: 1, # required
    #         security_group_settings: { # required
    #           always_reauthenticate: false,
    #           atak_package_values: ["GenericString"],
    #           calling: {
    #             can_start11_call: false,
    #             can_video_call: false,
    #             force_tcp_call: false
    #           },
    #           check_for_updates: false,
    #           enable_atak: false,
    #           enable_crash_reports: false,
    #           enable_file_download: false,
    #           enable_guest_federation: false,
    #           enable_notification_preview: false,
    #           enable_open_access_option: false,
    #           enable_restricted_global_federation: false,
    #           files_enabled: false,
    #           force_device_lockout: 1,
    #           force_open_access: false,
    #           force_read_receipts: false,
    #           global_federation: false,
    #           is_ato_enabled: false,
    #           is_link_preview_enabled: false,
    #           location_allow_maps: false,
    #           location_enabled: false,
    #           max_auto_download_size: 1,
    #           max_bor: 1,
    #           max_ttl: 1,
    #           message_forwarding_enabled: false,
    #           password_requirements: {
    #             lowercase: 1,
    #             min_length: 1,
    #             numbers: 1,
    #             symbols: 1,
    #             uppercase: 1
    #           },
    #           presence_enabled: false,
    #           quick_responses: ["GenericString"],
    #           show_master_recovery_key: false,
    #           shredder: {
    #             can_process_manually: false,
    #             intensity: 1
    #           },
    #           sso_max_idle_minutes: 1,
    #           max_non_sso_session_minutes: 1,
    #           federation_mode: 1,
    #           lockout_threshold: 1,
    #           permitted_networks: ["NetworkId"],
    #           permitted_wickr_aws_networks: [
    #             {
    #               region: "GenericString", # required
    #               network_id: "NetworkId", # required
    #             }
    #           ],
    #           permitted_wickr_enterprise_networks: [
    #             {
    #               domain: "GenericString", # required
    #               network_id: "NetworkId", # required
    #             }
    #           ]
    #         }
    #       }
    #     ],
    #     next_token: "GenericString"
    #   }
    # @return [Types::ListSecurityGroupsResponse]
    def list_security_groups(params = {}, options = {})
      request = build_request(:list_security_groups, params)
      request.send_request(options)
    end

    # <p>Retrieves a paginated list of users in a specified Wickr network. You can filter and sort the results based on various criteria such as name, status, or security group membership.</p>
    # @param [Hash, Types::ListUsersRequest] params
    # @option params [String] :network_id
    #   <p>The ID of the Wickr network from which to list users.</p>
    # @option params [String] :next_token
    #   <p>The token for retrieving the next page of results. This is returned from a previous request when there are more results available.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of users to return in a single page. Valid range is 1-100. Default is 10.</p>
    # @option params [String] :sort_fields
    #   <p>The fields to sort users by. Multiple fields can be specified by separating them with '+'. Accepted values include 'username', 'firstName', 'lastName', 'status', and 'groupId'.</p>
    # @option params [String] :sort_direction
    #   <p>The direction to sort results. Valid values are 'ASC' (ascending) or 'DESC' (descending). Default is 'DESC'.</p>
    # @option params [String] :first_name
    #   <p>Filter results to only include users with first names matching this value.</p>
    # @option params [String] :last_name
    #   <p>Filter results to only include users with last names matching this value.</p>
    # @option params [String] :username
    #   <p>Filter results to only include users with usernames matching this value.</p>
    # @option params [Integer] :status
    #   <p>Filter results to only include users with this status (1 for pending, 2 for active).</p>
    # @option params [String] :group_id
    #   <p>Filter results to only include users belonging to this security group.</p>
    # @example Get paginated list of users
    #   # Example operation for list_users
    #   params = {
    #     network_id: "12345678",
    #     max_results: 20,
    #     sort_fields: "username",
    #     sort_direction: ASC
    #   }
    #   options = {}
    #   response = client.list_users(params, options)
    #   response.to_h #=>
    #   {
    #     next_token: "v1:pagination:6ba7b810-9dad-11d1-80b4-00c04fd430c8",
    #     users: [
    #       {
    #         first_name: "Alice",
    #         last_name: "Anderson",
    #         username: "alice.anderson@example.com",
    #         is_admin: false,
    #         suspended: false,
    #         status: 2,
    #         type: "user"
    #       },
    #       {
    #         first_name: "Bob",
    #         last_name: "Brown",
    #         username: "bob.brown@example.com",
    #         is_admin: false,
    #         suspended: false,
    #         status: 2,
    #         type: "user"
    #       },
    #       {
    #         first_name: "Charlie",
    #         last_name: "Chen",
    #         username: "charlie.chen@example.com",
    #         is_admin: true,
    #         suspended: false,
    #         status: 2,
    #         type: "user"
    #       }
    #     ]
    #   }
    # @example Filter by status and group
    #   # Example operation for list_users
    #   params = {
    #     network_id: "12345678",
    #     status: 1,
    #     group_id: "BCTY8Qhe",
    #     max_results: 10
    #   }
    #   options = {}
    #   response = client.list_users(params, options)
    #   response.to_h #=>
    #   {
    #     users: [
    #       {
    #         first_name: "David",
    #         last_name: "Davis",
    #         username: "david.davis@example.com",
    #         is_admin: false,
    #         suspended: false,
    #         status: 1,
    #         type: "user",
    #         invite_code: "INVITE789",
    #         is_invite_expired: false
    #       }
    #     ]
    #   }
    # @example Empty user list for network with no users
    #   # Example operation for list_users
    #   params = {
    #     network_id: "12345678"
    #   }
    #   options = {}
    #   response = client.list_users(params, options)
    #   response.to_h #=>
    #   {
    #     users: [
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     network_id: "NetworkId", # required
    #     next_token: "GenericString",
    #     max_results: 1,
    #     sort_fields: "GenericString",
    #     sort_direction: "ASC" # One of: ["ASC", "DESC"],
    #     first_name: "SensitiveString",
    #     last_name: "SensitiveString",
    #     username: "GenericString",
    #     status: 1 # One of: [1, 2],
    #     group_id: "GenericString"
    #   }
    #   options = {}
    #   response = client.list_users(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "GenericString",
    #     users: [
    #       {
    #         user_id: "UserId",
    #         first_name: "SensitiveString",
    #         last_name: "SensitiveString",
    #         username: "GenericString",
    #         security_groups: ["SecurityGroupId"],
    #         is_admin: false,
    #         suspended: false,
    #         status: 1,
    #         otp_enabled: false,
    #         scim_id: "GenericString",
    #         type: "GenericString",
    #         cell: "GenericString",
    #         country_code: "GenericString",
    #         challenge_failures: 1,
    #         is_invite_expired: false,
    #         is_user: false,
    #         invite_code: "GenericString",
    #         code_validation: false,
    #         uname: "GenericString"
    #       }
    #     ]
    #   }
    # @return [Types::ListUsersResponse]
    def list_users(params = {}, options = {})
      request = build_request(:list_users, params)
      request.send_request(options)
    end

    # <p>Registers and saves an OpenID Connect (OIDC) configuration for a Wickr network, enabling Single Sign-On (SSO) authentication through an identity provider.</p>
    # @param [Hash, Types::RegisterOidcConfigRequest] params
    # @option params [String] :network_id
    #   <p>The ID of the Wickr network for which OIDC will be configured.</p>
    # @option params [String] :company_id
    #   <p>Custom identifier your end users will use to sign in with SSO.</p>
    # @option params [String] :custom_username
    #   <p>A custom field mapping to extract the username from the OIDC token (optional). </p> <note> <p>The customUsername is only required if you use something other than email as the username field.</p> </note>
    # @option params [String] :extra_auth_params
    #   <p>Additional authentication parameters to include in the OIDC flow (optional).</p>
    # @option params [String] :issuer
    #   <p>The issuer URL of the OIDC provider (e.g., 'https://login.example.com').</p>
    # @option params [String] :scopes
    #   <p>The OAuth scopes to request from the OIDC provider (e.g., 'openid profile email').</p>
    # @option params [String] :secret
    #   <p>The client secret for authenticating with the OIDC provider (optional).</p>
    # @option params [Integer] :sso_token_buffer_minutes
    #   <p>The buffer time in minutes before the SSO token expires to refresh it (optional).</p>
    # @option params [String] :user_id
    #   <p>Unique identifier provided by your identity provider to authenticate the access request. Also referred to as clientID.</p>
    # @example Save OIDC config successfully
    #   # Example operation for register_oidc_config
    #   params = {
    #     network_id: "12345678",
    #     company_id: "us-east-1-company123",
    #     issuer: "https://login.example.com",
    #     scopes: "openid profile email",
    #     user_id: "email",
    #     sso_token_buffer_minutes: 5
    #   }
    #   options = {}
    #   response = client.register_oidc_config(params, options)
    #   response.to_h #=>
    #   {
    #     company_id: "us-east-1-company123",
    #     issuer: "https://login.example.com",
    #     scopes: "openid profile email",
    #     client_id: "client123",
    #     redirect_url: "https://app.wickr.com/callback",
    #     user_id: "email",
    #     sso_token_buffer_minutes: 5
    #   }
    # @example Save OIDC config - missing company ID
    #   # Example operation for register_oidc_config
    #   params = {
    #     network_id: "12345678",
    #     company_id: "",
    #     issuer: "https://login.example.com",
    #     scopes: "openid profile email"
    #   }
    #   options = {}
    #   begin
    #     response = client.register_oidc_config(params, options)
    #   rescue Smithy::Client::ServiceError => e
    #     puts e.class #=> BadRequestError
    #     puts e.data.to_h #=>
    #     {
    #       message: "Company ID is required"
    #     }
    #   end
    # @example Save OIDC config - invalid company ID prefix
    #   # Example operation for register_oidc_config
    #   params = {
    #     network_id: "12345678",
    #     company_id: "invalid-company123",
    #     issuer: "https://login.example.com",
    #     scopes: "openid profile email"
    #   }
    #   options = {}
    #   begin
    #     response = client.register_oidc_config(params, options)
    #   rescue Smithy::Client::ServiceError => e
    #     puts e.class #=> BadRequestError
    #     puts e.data.to_h #=>
    #     {
    #       message: "Invalid companyId"
    #     }
    #   end
    # @example Request syntax with placeholder values
    #   params = {
    #     network_id: "NetworkId", # required
    #     company_id: "GenericString", # required
    #     custom_username: "GenericString",
    #     extra_auth_params: "GenericString",
    #     issuer: "GenericString", # required
    #     scopes: "GenericString", # required
    #     secret: "SensitiveString",
    #     sso_token_buffer_minutes: 1,
    #     user_id: "GenericString"
    #   }
    #   options = {}
    #   response = client.register_oidc_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_name: "GenericString",
    #     client_id: "GenericString",
    #     company_id: "GenericString", # required
    #     scopes: "GenericString", # required
    #     issuer: "GenericString", # required
    #     client_secret: "SensitiveString",
    #     secret: "SensitiveString",
    #     redirect_url: "GenericString",
    #     user_id: "GenericString",
    #     custom_username: "GenericString",
    #     ca_certificate: "GenericString",
    #     application_id: 1,
    #     sso_token_buffer_minutes: 1,
    #     extra_auth_params: "GenericString"
    #   }
    # @return [Types::RegisterOidcConfigResponse]
    def register_oidc_config(params = {}, options = {})
      request = build_request(:register_oidc_config, params)
      request.send_request(options)
    end

    # <p>Tests an OpenID Connect (OIDC) configuration for a Wickr network by validating the connection to the identity provider and retrieving its supported capabilities.</p>
    # @param [Hash, Types::RegisterOidcConfigTestRequest] params
    # @option params [String] :network_id
    #   <p>The ID of the Wickr network for which the OIDC configuration will be tested.</p>
    # @option params [String] :extra_auth_params
    #   <p>Additional authentication parameters to include in the test (optional).</p>
    # @option params [String] :issuer
    #   <p>The issuer URL of the OIDC provider to test.</p>
    # @option params [String] :scopes
    #   <p>The OAuth scopes to test with the OIDC provider.</p>
    # @option params [String] :certificate
    #   <p>The CA certificate for secure communication with the OIDC provider (optional).</p>
    # @example Test OIDC config successfully
    #   # Example operation for register_oidc_config_test
    #   params = {
    #     network_id: "12345678",
    #     issuer: "https://login.example.com",
    #     scopes: "openid profile email"
    #   }
    #   options = {}
    #   response = client.register_oidc_config_test(params, options)
    #   response.to_h #=>
    #   {
    #     issuer: "https://login.example.com",
    #     token_endpoint: "https://login.example.com/oauth/token",
    #     userinfo_endpoint: "https://login.example.com/userinfo",
    #     authorization_endpoint: "https://login.example.com/authorize"
    #   }
    # @example Test OIDC config - missing issuer
    #   # Example operation for register_oidc_config_test
    #   params = {
    #     network_id: "12345678",
    #     issuer: "",
    #     scopes: "openid profile email"
    #   }
    #   options = {}
    #   begin
    #     response = client.register_oidc_config_test(params, options)
    #   rescue Smithy::Client::ServiceError => e
    #     puts e.class #=> BadRequestError
    #     puts e.data.to_h #=>
    #     {
    #       message: "issuer is a required field"
    #     }
    #   end
    # @example Test OIDC config - invalid endpoint
    #   # Example operation for register_oidc_config_test
    #   params = {
    #     network_id: "12345678",
    #     issuer: "https://blocked-endpoint.com",
    #     scopes: "openid profile email"
    #   }
    #   options = {}
    #   begin
    #     response = client.register_oidc_config_test(params, options)
    #   rescue Smithy::Client::ServiceError => e
    #     puts e.class #=> BadRequestError
    #     puts e.data.to_h #=>
    #     {
    #       message: "issuer contains an invalid endpoint"
    #     }
    #   end
    # @example Request syntax with placeholder values
    #   params = {
    #     network_id: "NetworkId", # required
    #     extra_auth_params: "GenericString",
    #     issuer: "GenericString", # required
    #     scopes: "GenericString", # required
    #     certificate: "GenericString"
    #   }
    #   options = {}
    #   response = client.register_oidc_config_test(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     token_endpoint: "GenericString",
    #     userinfo_endpoint: "GenericString",
    #     response_types_supported: ["GenericString"],
    #     scopes_supported: ["GenericString"],
    #     issuer: "GenericString",
    #     authorization_endpoint: "GenericString",
    #     end_session_endpoint: "GenericString",
    #     logout_endpoint: "GenericString",
    #     grant_types_supported: ["GenericString"],
    #     revocation_endpoint: "GenericString",
    #     token_endpoint_auth_methods_supported: ["GenericString"],
    #     microsoft_multi_refresh_token: false
    #   }
    # @return [Types::RegisterOidcConfigTestResponse]
    def register_oidc_config_test(params = {}, options = {})
      request = build_request(:register_oidc_config_test, params)
      request.send_request(options)
    end

    # <p>Registers and saves OpenTDF configuration for a Wickr network, enabling attribute-based access control for Wickr through an OpenTDF provider.</p>
    # @param [Hash, Types::RegisterOpentdfConfigRequest] params
    # @option params [String] :network_id
    #   <p>The ID of the Wickr network for which OpenTDF integration will be configured.</p>
    # @option params [String] :client_id
    #   <p>The OIDC client ID used for authenticating with the OpenTDF provider.</p>
    # @option params [String] :client_secret
    #   <p>The OIDC client secret used for authenticating with the OpenTDF provider</p>
    # @option params [String] :domain
    #   <p>The domain of the OpenTDF server.</p>
    # @option params [String] :provider
    #   <p>The provider of the OpenTDF platform.</p> <note> <p>Currently only Virtru is supported as the OpenTDF provider.</p> </note>
    # @option params [Boolean] :dry_run
    #   <p>Perform dry-run test connection of OpenTDF configuration (optional).</p>
    # @example Save OpenTDF config successfully
    #   # Example operation for register_opentdf_config
    #   params = {
    #     network_id: "12345678",
    #     client_id: "client123",
    #     client_secret: "secret456",
    #     domain: "https://api.sample.com",
    #     provider: "virtru"
    #   }
    #   options = {}
    #   response = client.register_opentdf_config(params, options)
    #   response.to_h #=>
    #   {
    #     client_id: "client123",
    #     client_secret: "secret456",
    #     domain: "https://api.sample.com",
    #     provider: "virtru"
    #   }
    # @example Dry run saving OpenTDF config
    #   # Example operation for register_opentdf_config
    #   params = {
    #     network_id: "12345678",
    #     client_id: "client123",
    #     client_secret: "secret456",
    #     domain: "https://api.sample.com",
    #     provider: "virtru",
    #     dry_run: true
    #   }
    #   options = {}
    #   response = client.register_opentdf_config(params, options)
    #   response.to_h #=>
    #   {
    #     client_id: "client123",
    #     client_secret: "secret456",
    #     domain: "https://api.sample.com",
    #     provider: "virtru"
    #   }
    # @example Dry run saving OpenTDF config - failed test
    #   # Example operation for register_opentdf_config
    #   params = {
    #     network_id: "12345678",
    #     client_id: "client123",
    #     client_secret: "secret456",
    #     domain: "https://api.sample.com",
    #     provider: "virtru",
    #     dry_run: true
    #   }
    #   options = {}
    #   begin
    #     response = client.register_opentdf_config(params, options)
    #   rescue Smithy::Client::ServiceError => e
    #     puts e.class #=> ValidationError
    #     puts e.data.to_h #=>
    #     {
    #       message: "Failed to communicate with OpenTDF service"
    #     }
    #   end
    # @example Save OpenTDF config - invalid provider
    #   # Example operation for register_opentdf_config
    #   params = {
    #     network_id: "12345678",
    #     client_id: "client123",
    #     client_secret: "secret456",
    #     domain: "https://api.sample.com",
    #     provider: "invalid provider"
    #   }
    #   options = {}
    #   begin
    #     response = client.register_opentdf_config(params, options)
    #   rescue Smithy::Client::ServiceError => e
    #     puts e.class #=> ValidationError
    #     puts e.data.to_h #=>
    #     {
    #       message: "Invalid input provided"
    #     }
    #   end
    # @example Save OpenTDF config - network not found
    #   # Example operation for register_opentdf_config
    #   params = {
    #     network_id: "99999999",
    #     client_id: "client123",
    #     client_secret: "secret456",
    #     domain: "https://api.sample.com",
    #     provider: "virtru"
    #   }
    #   options = {}
    #   begin
    #     response = client.register_opentdf_config(params, options)
    #   rescue Smithy::Client::ServiceError => e
    #     puts e.class #=> ResourceNotFoundError
    #     puts e.data.to_h #=>
    #     {
    #       message: "Network not found"
    #     }
    #   end
    # @example Request syntax with placeholder values
    #   params = {
    #     network_id: "NetworkId", # required
    #     client_id: "GenericString", # required
    #     client_secret: "SensitiveString", # required
    #     domain: "GenericString", # required
    #     provider: "GenericString", # required
    #     dry_run: false
    #   }
    #   options = {}
    #   response = client.register_opentdf_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     client_id: "GenericString", # required
    #     domain: "GenericString", # required
    #     client_secret: "SensitiveString", # required
    #     provider: "GenericString", # required
    #   }
    # @return [Types::RegisterOpentdfConfigResponse]
    def register_opentdf_config(params = {}, options = {})
      request = build_request(:register_opentdf_config, params)
      request.send_request(options)
    end

    # <p>Updates the properties of an existing bot in a Wickr network. This operation allows you to modify the bot's display name, security group, password, or suspension status.</p>
    # @param [Hash, Types::UpdateBotRequest] params
    # @option params [String] :network_id
    #   <p>The ID of the Wickr network containing the bot to update.</p>
    # @option params [String] :bot_id
    #   <p>The unique identifier of the bot to update.</p>
    # @option params [String] :display_name
    #   <p>The new display name for the bot.</p>
    # @option params [String] :group_id
    #   <p>The ID of the new security group to assign the bot to.</p>
    # @option params [String] :challenge
    #   <p>The new password for the bot account.</p>
    # @option params [Boolean] :suspend
    #   <p>Set to true to suspend the bot or false to unsuspend it. Omit this field for standard updates that don't affect suspension status.</p>
    # @example Update bot successfully
    #   # Example operation for update_bot
    #   params = {
    #     network_id: "12345678",
    #     bot_id: "98765",
    #     display_name: "Updated Support Bot",
    #     group_id: "support_group"
    #   }
    #   options = {}
    #   response = client.update_bot(params, options)
    #   response.to_h #=>
    #   {
    #     message: "success"
    #   }
    # @example Update bot - bot not found
    #   # Example operation for update_bot
    #   params = {
    #     network_id: "12345678",
    #     bot_id: "99999",
    #     display_name: "Updated Bot"
    #   }
    #   options = {}
    #   begin
    #     response = client.update_bot(params, options)
    #   rescue Smithy::Client::ServiceError => e
    #     puts e.class #=> ResourceNotFoundError
    #     puts e.data.to_h #=>
    #     {
    #       message: "Bot not found"
    #     }
    #   end
    # @example Request syntax with placeholder values
    #   params = {
    #     network_id: "NetworkId", # required
    #     bot_id: "BotId", # required
    #     display_name: "GenericString",
    #     group_id: "GenericString",
    #     challenge: "SensitiveString",
    #     suspend: false
    #   }
    #   options = {}
    #   response = client.update_bot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     message: "GenericString"
    #   }
    # @return [Types::UpdateBotResponse]
    def update_bot(params = {}, options = {})
      request = build_request(:update_bot, params)
      request.send_request(options)
    end

    # <p>Updates the data retention bot settings, allowing you to enable or disable the data retention service, or acknowledge the public key message.</p>
    # @param [Hash, Types::UpdateDataRetentionRequest] params
    # @option params [String] :network_id
    #   <p>The ID of the Wickr network containing the data retention bot.</p>
    # @option params [String] :action_type
    #   <p>The action to perform. Valid values are 'ENABLE' (to enable the data retention service), 'DISABLE' (to disable the service), or 'PUBKEY_MSG_ACK' (to acknowledge the public key message).</p>
    # @example Update data retention - enable service
    #   # Example operation for update_data_retention
    #   params = {
    #     network_id: "12345678",
    #     action_type: ENABLE
    #   }
    #   options = {}
    #   response = client.update_data_retention(params, options)
    #   response.to_h #=>
    #   {
    #     message: "data retention service enabled"
    #   }
    # @example Update data retention - disable service
    #   # Example operation for update_data_retention
    #   params = {
    #     network_id: "12345678",
    #     action_type: DISABLE
    #   }
    #   options = {}
    #   response = client.update_data_retention(params, options)
    #   response.to_h #=>
    #   {
    #     message: "data retention service disabled"
    #   }
    # @example Update data retention - acknowledge pubkey message
    #   # Example operation for update_data_retention
    #   params = {
    #     network_id: "12345678",
    #     action_type: PUBKEY_MSG_ACK
    #   }
    #   options = {}
    #   response = client.update_data_retention(params, options)
    #   response.to_h #=>
    #   {
    #     message: "pubkey message was acknowledged"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     network_id: "NetworkId", # required
    #     action_type: "ENABLE" # One of: ["ENABLE", "DISABLE", "PUBKEY_MSG_ACK"], # required
    #   }
    #   options = {}
    #   response = client.update_data_retention(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     message: "GenericString"
    #   }
    # @return [Types::UpdateDataRetentionResponse]
    def update_data_retention(params = {}, options = {})
      request = build_request(:update_data_retention, params)
      request.send_request(options)
    end

    # <p>Updates the block status of a guest user in a Wickr network. This operation allows you to block or unblock a guest user from accessing the network.</p>
    # @param [Hash, Types::UpdateGuestUserRequest] params
    # @option params [String] :network_id
    #   <p>The ID of the Wickr network where the guest user's status will be updated.</p>
    # @option params [String] :username_hash
    #   <p>The username hash (unique identifier) of the guest user to update.</p>
    # @option params [Boolean] :block
    #   <p>Set to true to block the guest user or false to unblock them.</p>
    # @example Block a guest user
    #   # Example operation for update_guest_user
    #   params = {
    #     network_id: "12345678",
    #     username_hash: "032c36d5623781204592a69269ed9480d604484269c8a4c2d39528885a56470d",
    #     block: true
    #   }
    #   options = {}
    #   response = client.update_guest_user(params, options)
    #   response.to_h #=>
    #   {
    #     message: "success"
    #   }
    # @example Unblock a guest user
    #   # Example operation for update_guest_user
    #   params = {
    #     network_id: "12345678",
    #     username_hash: "032c36d5623781204592a69269ed9480d604484269c8a4c2d39528885a56470d",
    #     block: false
    #   }
    #   options = {}
    #   response = client.update_guest_user(params, options)
    #   response.to_h #=>
    #   {
    #     message: "success"
    #   }
    # @example User already blocked error
    #   # Example operation for update_guest_user
    #   params = {
    #     network_id: "12345678",
    #     username_hash: "032c36d5623781204592a69269ed9480d604484269c8a4c2d39528885a56470d",
    #     block: true
    #   }
    #   options = {}
    #   begin
    #     response = client.update_guest_user(params, options)
    #   rescue Smithy::Client::ServiceError => e
    #     puts e.class #=> BadRequestError
    #     puts e.data.to_h #=>
    #     {
    #       message: "This user is already blocked in your network"
    #     }
    #   end
    # @example Request syntax with placeholder values
    #   params = {
    #     network_id: "NetworkId", # required
    #     username_hash: "GenericString", # required
    #     block: false, # required
    #   }
    #   options = {}
    #   response = client.update_guest_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     message: "GenericString"
    #   }
    # @return [Types::UpdateGuestUserResponse]
    def update_guest_user(params = {}, options = {})
      request = build_request(:update_guest_user, params)
      request.send_request(options)
    end

    # <p>Updates the properties of an existing Wickr network, such as its name or encryption key configuration.</p>
    # @param [Hash, Types::UpdateNetworkRequest] params
    # @option params [String] :network_id
    #   <p>The ID of the Wickr network to update.</p>
    # @option params [String] :network_name
    #   <p>The new name for the network. Must be between 1 and 20 characters.</p>
    # @option params [String] :client_token
    #   <p>A unique identifier for this request to ensure idempotency.</p>
    # @option params [String] :encryption_key_arn
    #   <p>The ARN of the Amazon Web Services KMS customer managed key to use for encrypting sensitive data in the network.</p>
    # @example Update network name successfully
    #   # Example operation for update_network
    #   params = {
    #     network_id: "12345678",
    #     network_name: "Updated Network Name"
    #   }
    #   options = {}
    #   response = client.update_network(params, options)
    #   response.to_h #=>
    #   {
    #     message: "Network updated successfully"
    #   }
    # @example Update network - invalid name
    #   # Example operation for update_network
    #   params = {
    #     network_id: "12345678",
    #     network_name: "This name is way too long for a network"
    #   }
    #   options = {}
    #   begin
    #     response = client.update_network(params, options)
    #   rescue Smithy::Client::ServiceError => e
    #     puts e.class #=> ValidationError
    #     puts e.data.to_h #=>
    #     {
    #       reasons: [
    #         {
    #           field: "networkName",
    #           reason: "Network name must be between 1 and 20 characters"
    #         }
    #       ]
    #     }
    #   end
    # @example Update network - not found
    #   # Example operation for update_network
    #   params = {
    #     network_id: "99999999",
    #     network_name: "New Name"
    #   }
    #   options = {}
    #   begin
    #     response = client.update_network(params, options)
    #   rescue Smithy::Client::ServiceError => e
    #     puts e.class #=> ResourceNotFoundError
    #     puts e.data.to_h #=>
    #     {
    #       message: "Network not found"
    #     }
    #   end
    # @example Request syntax with placeholder values
    #   params = {
    #     network_id: "NetworkId", # required
    #     network_name: "GenericString", # required
    #     client_token: "ClientToken",
    #     encryption_key_arn: "GenericString"
    #   }
    #   options = {}
    #   response = client.update_network(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     message: "GenericString"
    #   }
    # @return [Types::UpdateNetworkResponse]
    def update_network(params = {}, options = {})
      request = build_request(:update_network, params)
      request.send_request(options)
    end

    # <p>Updates network-level settings for a Wickr network. You can modify settings such as client metrics, data retention, and other network-wide options.</p>
    # @param [Hash, Types::UpdateNetworkSettingsRequest] params
    # @option params [String] :network_id
    #   <p>The ID of the Wickr network whose settings will be updated.</p>
    # @option params [Types::NetworkSettings] :settings
    #   <p>A map of setting names to their new values. Each setting should be provided with its appropriate type (boolean, string, number, etc.).</p>
    # @example Update multiple network settings
    #   # Example operation for update_network_settings
    #   params = {
    #     network_id: "12345678",
    #     settings: {
    #       enable_client_metrics: true,
    #       data_retention: true
    #     }
    #   }
    #   options = {}
    #   response = client.update_network_settings(params, options)
    #   response.to_h #=>
    #   {
    #     settings: [
    #       {
    #         option_name: "enableClientMetrics",
    #         value: "true",
    #         type: "boolean"
    #       },
    #       {
    #         option_name: "dataRetention",
    #         value: "true",
    #         type: "boolean"
    #       }
    #     ]
    #   }
    # @example Update single boolean setting
    #   # Example operation for update_network_settings
    #   params = {
    #     network_id: "12345678",
    #     settings: {
    #       enable_client_metrics: false
    #     }
    #   }
    #   options = {}
    #   response = client.update_network_settings(params, options)
    #   response.to_h #=>
    #   {
    #     settings: [
    #       {
    #         option_name: "enableClientMetrics",
    #         value: "false",
    #         type: "boolean"
    #       }
    #     ]
    #   }
    # @example Update client metrics settings
    #   # Example operation for update_network_settings
    #   params = {
    #     network_id: "12345678",
    #     settings: {
    #       enable_client_metrics: true
    #     }
    #   }
    #   options = {}
    #   response = client.update_network_settings(params, options)
    #   response.to_h #=>
    #   {
    #     settings: [
    #       {
    #         option_name: "enableClientMetrics",
    #         value: "true",
    #         type: "boolean"
    #       }
    #     ]
    #   }
    # @example Invalid setting name error
    #   # Example operation for update_network_settings
    #   params = {
    #     network_id: "12345678",
    #     settings: {
    #       enable_client_metrics: false
    #     }
    #   }
    #   options = {}
    #   begin
    #     response = client.update_network_settings(params, options)
    #   rescue Smithy::Client::ServiceError => e
    #     puts e.class #=> BadRequestError
    #     puts e.data.to_h #=>
    #     {
    #       message: "Invalid setting name: enableClientMetrics"
    #     }
    #   end
    # @example Network not found error
    #   # Example operation for update_network_settings
    #   params = {
    #     network_id: "99999999",
    #     settings: {
    #       enable_client_metrics: true
    #     }
    #   }
    #   options = {}
    #   begin
    #     response = client.update_network_settings(params, options)
    #   rescue Smithy::Client::ServiceError => e
    #     puts e.class #=> ResourceNotFoundError
    #     puts e.data.to_h #=>
    #     {
    #       message: "Network not found"
    #     }
    #   end
    # @example Invalid value type error
    #   # Example operation for update_network_settings
    #   params = {
    #     network_id: "12345678",
    #     settings: {
    #       data_retention: true
    #     }
    #   }
    #   options = {}
    #   begin
    #     response = client.update_network_settings(params, options)
    #   rescue Smithy::Client::ServiceError => e
    #     puts e.class #=> ValidationError
    #     puts e.data.to_h #=>
    #     {
    #       reasons: [
    #         {
    #           field: "dataRetention",
    #           reason: "Invalid value for setting dataRetention: expected number"
    #         }
    #       ]
    #     }
    #   end
    # @example Request syntax with placeholder values
    #   params = {
    #     network_id: "NetworkId", # required
    #     settings: { # required
    #       enable_client_metrics: false,
    #       read_receipt_config: {
    #         status: "DISABLED" # One of: ["DISABLED", "ENABLED", "FORCE_ENABLED"]
    #       },
    #       data_retention: false,
    #       enable_trusted_data_format: false,
    #       consent_popup: {
    #         enabled: false, # required
    #         header: "GenericString",
    #         content: "GenericString",
    #         close_button_label: "GenericString"
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_network_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     settings: [ # required
    #       {
    #         option_name: "GenericString", # required
    #         value: "GenericString", # required
    #         type: "GenericString", # required
    #       }
    #     ]
    #   }
    # @return [Types::UpdateNetworkSettingsResponse]
    def update_network_settings(params = {}, options = {})
      request = build_request(:update_network_settings, params)
      request.send_request(options)
    end

    # <p>Updates the properties of an existing security group in a Wickr network, such as its name or settings.</p>
    # @param [Hash, Types::UpdateSecurityGroupRequest] params
    # @option params [String] :network_id
    #   <p>The ID of the Wickr network containing the security group to update.</p>
    # @option params [String] :group_id
    #   <p>The unique identifier of the security group to update.</p>
    # @option params [String] :name
    #   <p>The new name for the security group.</p>
    # @option params [Types::SecurityGroupSettings] :security_group_settings
    #   <p>The updated configuration settings for the security group.</p> <p>Federation mode - 0 (Local federation), 1 (Restricted federation), 2 (Global federation) </p>
    # @example Update security group successfully
    #   # Example operation for update_security_group
    #   params = {
    #     network_id: "12345678",
    #     group_id: "abc12345",
    #     name: "Updated Group Name",
    #     security_group_settings: {
    #       lockout_threshold: 15
    #     }
    #   }
    #   options = {}
    #   response = client.update_security_group(params, options)
    #   response.to_h #=>
    #   {
    #     security_group: {
    #       id: "abc12345",
    #       name: "Updated Group Name",
    #       is_default: false,
    #       active_members: 10,
    #       bot_members: 2,
    #       modified: 1638360000,
    #       security_group_settings: {
    #         lockout_threshold: 15
    #       }
    #     }
    #   }
    # @example Update security group - not found
    #   # Example operation for update_security_group
    #   params = {
    #     network_id: "12345678",
    #     group_id: "invalid99",
    #     name: "New Name"
    #   }
    #   options = {}
    #   begin
    #     response = client.update_security_group(params, options)
    #   rescue Smithy::Client::ServiceError => e
    #     puts e.class #=> ResourceNotFoundError
    #     puts e.data.to_h #=>
    #     {
    #       message: "Security group not found."
    #     }
    #   end
    # @example Request syntax with placeholder values
    #   params = {
    #     network_id: "NetworkId", # required
    #     group_id: "GenericString", # required
    #     name: "GenericString",
    #     security_group_settings: {
    #       always_reauthenticate: false,
    #       atak_package_values: ["GenericString"],
    #       calling: {
    #         can_start11_call: false,
    #         can_video_call: false,
    #         force_tcp_call: false
    #       },
    #       check_for_updates: false,
    #       enable_atak: false,
    #       enable_crash_reports: false,
    #       enable_file_download: false,
    #       enable_guest_federation: false,
    #       enable_notification_preview: false,
    #       enable_open_access_option: false,
    #       enable_restricted_global_federation: false,
    #       files_enabled: false,
    #       force_device_lockout: 1,
    #       force_open_access: false,
    #       force_read_receipts: false,
    #       global_federation: false,
    #       is_ato_enabled: false,
    #       is_link_preview_enabled: false,
    #       location_allow_maps: false,
    #       location_enabled: false,
    #       max_auto_download_size: 1,
    #       max_bor: 1,
    #       max_ttl: 1,
    #       message_forwarding_enabled: false,
    #       password_requirements: {
    #         lowercase: 1,
    #         min_length: 1,
    #         numbers: 1,
    #         symbols: 1,
    #         uppercase: 1
    #       },
    #       presence_enabled: false,
    #       quick_responses: ["GenericString"],
    #       show_master_recovery_key: false,
    #       shredder: {
    #         can_process_manually: false,
    #         intensity: 1
    #       },
    #       sso_max_idle_minutes: 1,
    #       max_non_sso_session_minutes: 1,
    #       federation_mode: 1,
    #       lockout_threshold: 1,
    #       permitted_networks: ["NetworkId"],
    #       permitted_wickr_aws_networks: [
    #         {
    #           region: "GenericString", # required
    #           network_id: "NetworkId", # required
    #         }
    #       ],
    #       permitted_wickr_enterprise_networks: [
    #         {
    #           domain: "GenericString", # required
    #           network_id: "NetworkId", # required
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.update_security_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     security_group: { # required
    #       active_members: 1, # required
    #       bot_members: 1, # required
    #       active_directory_guid: "GenericString",
    #       id: "GenericString", # required
    #       is_default: false, # required
    #       name: "GenericString", # required
    #       modified: 1, # required
    #       security_group_settings: { # required
    #         always_reauthenticate: false,
    #         atak_package_values: ["GenericString"],
    #         calling: {
    #           can_start11_call: false,
    #           can_video_call: false,
    #           force_tcp_call: false
    #         },
    #         check_for_updates: false,
    #         enable_atak: false,
    #         enable_crash_reports: false,
    #         enable_file_download: false,
    #         enable_guest_federation: false,
    #         enable_notification_preview: false,
    #         enable_open_access_option: false,
    #         enable_restricted_global_federation: false,
    #         files_enabled: false,
    #         force_device_lockout: 1,
    #         force_open_access: false,
    #         force_read_receipts: false,
    #         global_federation: false,
    #         is_ato_enabled: false,
    #         is_link_preview_enabled: false,
    #         location_allow_maps: false,
    #         location_enabled: false,
    #         max_auto_download_size: 1,
    #         max_bor: 1,
    #         max_ttl: 1,
    #         message_forwarding_enabled: false,
    #         password_requirements: {
    #           lowercase: 1,
    #           min_length: 1,
    #           numbers: 1,
    #           symbols: 1,
    #           uppercase: 1
    #         },
    #         presence_enabled: false,
    #         quick_responses: ["GenericString"],
    #         show_master_recovery_key: false,
    #         shredder: {
    #           can_process_manually: false,
    #           intensity: 1
    #         },
    #         sso_max_idle_minutes: 1,
    #         max_non_sso_session_minutes: 1,
    #         federation_mode: 1,
    #         lockout_threshold: 1,
    #         permitted_networks: ["NetworkId"],
    #         permitted_wickr_aws_networks: [
    #           {
    #             region: "GenericString", # required
    #             network_id: "NetworkId", # required
    #           }
    #         ],
    #         permitted_wickr_enterprise_networks: [
    #           {
    #             domain: "GenericString", # required
    #             network_id: "NetworkId", # required
    #           }
    #         ]
    #       }
    #     }
    #   }
    # @return [Types::UpdateSecurityGroupResponse]
    def update_security_group(params = {}, options = {})
      request = build_request(:update_security_group, params)
      request.send_request(options)
    end

    # <p>Updates the properties of an existing user in a Wickr network. This operation allows you to modify the user's name, password, security group membership, and invite code settings.</p> <note> <p> <code>codeValidation</code>, <code>inviteCode</code>, and <code>inviteCodeTtl</code> are restricted to networks under preview only.</p> </note>
    # @param [Hash, Types::UpdateUserRequest] params
    # @option params [String] :network_id
    #   <p>The ID of the Wickr network containing the user to update.</p>
    # @option params [String] :user_id
    #   <p>The unique identifier of the user to update.</p>
    # @option params [Types::UpdateUserDetails] :user_details
    #   <p>An object containing the user details to be updated, such as name, password, security groups, and invite code settings.</p>
    # @example Update user information
    #   # Example operation for update_user
    #   params = {
    #     network_id: "12345678",
    #     user_id: "12345",
    #     user_details: {
    #       first_name: "Jonathan",
    #       last_name: "Doe",
    #       username: "john.doe@example.com",
    #       security_group_ids: [
    #         "BCTY8Qhe",
    #         "DEPT001"
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.update_user(params, options)
    #   response.to_h #=>
    #   {
    #     user_id: "12345",
    #     network_id: "12345678",
    #     security_group_ids: [
    #       "BCTY8Qhe",
    #       "DEPT001"
    #     ],
    #     first_name: "Jonathan",
    #     last_name: "Doe",
    #     suspended: false,
    #     modified: 1705500000,
    #     status: 2
    #   }
    # @example Update user with invite code
    #   # Example operation for update_user
    #   params = {
    #     network_id: "12345678",
    #     user_id: "12345",
    #     user_details: {
    #       first_name: "Jane",
    #       last_name: "Smith",
    #       username: "jane.smith@example.com",
    #       invite_code: "NEWINVITE789",
    #       invite_code_ttl: 14,
    #       code_validation: true
    #     }
    #   }
    #   options = {}
    #   response = client.update_user(params, options)
    #   response.to_h #=>
    #   {
    #     user_id: "12345",
    #     network_id: "12345678",
    #     first_name: "Jane",
    #     last_name: "Smith",
    #     suspended: false,
    #     modified: 1705500100,
    #     status: 2,
    #     invite_code: "NEWINVITE789",
    #     invite_expiration: 1706709600,
    #     code_validation: true
    #   }
    # @example User not found error
    #   # Example operation for update_user
    #   params = {
    #     network_id: "12345678",
    #     user_id: "99999",
    #     user_details: {
    #       first_name: "Non",
    #       last_name: "Existent",
    #       username: "nonexistent@example.com"
    #     }
    #   }
    #   options = {}
    #   begin
    #     response = client.update_user(params, options)
    #   rescue Smithy::Client::ServiceError => e
    #     puts e.class #=> ResourceNotFoundError
    #     puts e.data.to_h #=>
    #     {
    #       message: "User not found."
    #     }
    #   end
    # @example Invalid userId error
    #   # Example operation for update_user
    #   params = {
    #     network_id: "12345678",
    #     user_id: "99999",
    #     user_details: {
    #       first_name: "John",
    #       last_name: "Doe",
    #       username: "john.doe@example.com",
    #       security_group_ids: [
    #         "BCTY8Qhe"
    #       ]
    #     }
    #   }
    #   options = {}
    #   begin
    #     response = client.update_user(params, options)
    #   rescue Smithy::Client::ServiceError => e
    #     puts e.class #=> BadRequestError
    #     puts e.data.to_h #=>
    #     {
    #       message: "Invalid userId."
    #     }
    #   end
    # @example Request syntax with placeholder values
    #   params = {
    #     network_id: "NetworkId", # required
    #     user_id: "UserId", # required
    #     user_details: {
    #       first_name: "SensitiveString",
    #       last_name: "SensitiveString",
    #       username: "GenericString",
    #       security_group_ids: ["SecurityGroupId"],
    #       invite_code: "GenericString",
    #       invite_code_ttl: 1,
    #       code_validation: false
    #     }
    #   }
    #   options = {}
    #   response = client.update_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     user_id: "UserId", # required
    #     network_id: "NetworkId", # required
    #     security_group_ids: ["SecurityGroupId"],
    #     first_name: "SensitiveString",
    #     last_name: "SensitiveString",
    #     middle_name: "GenericString",
    #     suspended: false, # required
    #     modified: 1,
    #     status: 1,
    #     invite_code: "GenericString",
    #     invite_expiration: 1,
    #     code_validation: false
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
      context[:gem_name] = 'aws-sdk-wickr'
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
