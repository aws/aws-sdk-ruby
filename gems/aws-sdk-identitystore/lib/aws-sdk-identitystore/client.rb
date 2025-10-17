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
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/json_rpc_protocol'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'

module Aws::Identitystore
  # An API client for Aws::Identitystore.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AWSIdentityStore

    add_plugin(::Aws::Identitystore::Plugins::Endpoint)
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
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::JsonRpcProtocol)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::Identitystore::EndpointProvider)
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

    # <p>Creates a group within the specified identity store.</p>
    # @param [Hash, Types::CreateGroupInput] params
    # @option params [String] :identity_store_id
    #   <p>The globally unique identifier for the identity store.</p>
    # @option params [String] :display_name
    #   <p>A string containing the name of the group. This value is commonly displayed when the
    #            group is referenced. <code>Administrator</code> and <code>AWSAdministrators</code> are
    #            reserved names and can't be used for users or groups.</p>
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
    #     group_id: "ResourceId", # required
    #     identity_store_id: "IdentityStoreId", # required
    #   }
    # @return [Types::CreateGroupOutput]
    def create_group(params = {}, options = {})
      request = build_request(:create_group, params)
      request.send_request(options)
    end

    # <p>Creates a relationship between a member and a group. The following identifiers must be specified: <code>GroupId</code>, <code>IdentityStoreId</code>, and <code>MemberId</code>.</p>
    # @param [Hash, Types::CreateGroupMembershipInput] params
    # @option params [String] :identity_store_id
    #   <p>The globally unique identifier for the identity store.</p>
    # @option params [String] :group_id
    #   <p>The identifier for a group in the identity store.</p>
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
    #     membership_id: "ResourceId", # required
    #     identity_store_id: "IdentityStoreId", # required
    #   }
    # @return [Types::CreateGroupMembershipOutput]
    def create_group_membership(params = {}, options = {})
      request = build_request(:create_group_membership, params)
      request.send_request(options)
    end

    # <p>Creates a user within the specified identity store.</p>
    # @param [Hash, Types::CreateUserInput] params
    # @option params [String] :identity_store_id
    #   <p>The globally unique identifier for the identity store.</p>
    # @option params [String] :user_name
    #   <p>A unique string used to identify the user. The length limit is 128 characters. This
    #            value can consist of letters, accented characters, symbols, numbers, and punctuation. This
    #            value is specified at the time the user is created and stored as an attribute of the user
    #            object in the identity store. <code>Administrator</code> and <code>AWSAdministrators</code>
    #            are reserved names and can't be used for users or groups.</p>
    # @option params [Types::Name] :name
    #   <p>An object containing the name of the user.</p>
    # @option params [String] :display_name
    #   <p>A string containing the name of the user. This value is typically formatted for display
    #            when the user is referenced. For example, "John Doe." </p>
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
    #   <p>A string indicating the type of user. Possible values are left unspecified. The value
    #            can vary based on your specific use case.</p>
    # @option params [String] :title
    #   <p>A string containing the title of the user. Possible values are left unspecified. The
    #            value can vary based on your specific use case.</p>
    # @option params [String] :preferred_language
    #   <p>A string containing the preferred language of the user. For example, "American English"
    #            or "en-us."</p>
    # @option params [String] :locale
    #   <p>A string containing the geographical region or location of the user.</p>
    # @option params [String] :timezone
    #   <p>A string containing the time zone of the user.</p>
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
    #     timezone: "SensitiveStringType"
    #   }
    #   options = {}
    #   response = client.create_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     user_id: "ResourceId", # required
    #     identity_store_id: "IdentityStoreId", # required
    #   }
    # @return [Types::CreateUserOutput]
    def create_user(params = {}, options = {})
      request = build_request(:create_user, params)
      request.send_request(options)
    end

    # <p>Delete a group within an identity store given <code>GroupId</code>.</p>
    # @param [Hash, Types::DeleteGroupInput] params
    # @option params [String] :identity_store_id
    #   <p>The globally unique identifier for the identity store.</p>
    # @option params [String] :group_id
    #   <p>The identifier for a group in the identity store.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identity_store_id: "IdentityStoreId", # required
    #     group_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.delete_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteGroupOutput]
    def delete_group(params = {}, options = {})
      request = build_request(:delete_group, params)
      request.send_request(options)
    end

    # <p>Delete a membership within a group given <code>MembershipId</code>.</p>
    # @param [Hash, Types::DeleteGroupMembershipInput] params
    # @option params [String] :identity_store_id
    #   <p>The globally unique identifier for the identity store.</p>
    # @option params [String] :membership_id
    #   <p>The identifier for a <code>GroupMembership</code> in an identity store.</p>
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
    # @return [Types::DeleteGroupMembershipOutput]
    def delete_group_membership(params = {}, options = {})
      request = build_request(:delete_group_membership, params)
      request.send_request(options)
    end

    # <p>Deletes a user within an identity store given <code>UserId</code>.</p>
    # @param [Hash, Types::DeleteUserInput] params
    # @option params [String] :identity_store_id
    #   <p>The globally unique identifier for the identity store.</p>
    # @option params [String] :user_id
    #   <p>The identifier for a user in the identity store.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identity_store_id: "IdentityStoreId", # required
    #     user_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.delete_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteUserOutput]
    def delete_user(params = {}, options = {})
      request = build_request(:delete_user, params)
      request.send_request(options)
    end

    # <p>Retrieves the group metadata and attributes from <code>GroupId</code> in an identity
    #          store.</p>
    #          <note>
    #             <p>If you have administrator access to a member account, you can use this API from the member account. 
    #          Read about <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_access.html">member accounts</a> in the 
    #          <i>Organizations User Guide</i>. </p>
    #          </note>
    # @param [Hash, Types::DescribeGroupInput] params
    # @option params [String] :identity_store_id
    #   <p>The globally unique identifier for the identity store, such as
    #            <code>d-1234567890</code>. In this example, <code>d-</code> is a fixed prefix, and
    #               <code>1234567890</code> is a randomly generated string that contains numbers and lower
    #            case letters. This value is generated at the time that a new identity store is
    #            created.</p>
    # @option params [String] :group_id
    #   <p>The identifier for a group in the identity store.</p>
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
    #     group_id: "ResourceId", # required
    #     display_name: "GroupDisplayName",
    #     external_ids: [
    #       {
    #         issuer: "ExternalIdIssuer", # required
    #         id: "ExternalIdIdentifier", # required
    #       }
    #     ],
    #     description: "SensitiveStringType",
    #     identity_store_id: "IdentityStoreId", # required
    #   }
    # @return [Types::DescribeGroupOutput]
    def describe_group(params = {}, options = {})
      request = build_request(:describe_group, params)
      request.send_request(options)
    end

    # <p>Retrieves membership metadata and attributes from <code>MembershipId</code> in an identity store.</p>
    #          <note>
    #             <p>If you have administrator access to a member account, you can use this API from the member account. 
    #          Read about <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_access.html">member accounts</a> in the 
    #          <i>Organizations User Guide</i>. </p>
    #          </note>
    # @param [Hash, Types::DescribeGroupMembershipInput] params
    # @option params [String] :identity_store_id
    #   <p>The globally unique identifier for the identity store.</p>
    # @option params [String] :membership_id
    #   <p>The identifier for a <code>GroupMembership</code> in an identity store.</p>
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
    #     group_id: "ResourceId", # required
    #     member_id: { # required
    #       # One of:
    #       user_id: "ResourceId"
    #     }
    #   }
    # @return [Types::DescribeGroupMembershipOutput]
    def describe_group_membership(params = {}, options = {})
      request = build_request(:describe_group_membership, params)
      request.send_request(options)
    end

    # <p>Retrieves the user metadata and attributes from the <code>UserId</code> in an identity store.</p>
    #          <note>
    #             <p>If you have administrator access to a member account, you can use this API from the member account. 
    #          Read about <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_access.html">member accounts</a> in the 
    #          <i>Organizations User Guide</i>. </p>
    #          </note>
    # @param [Hash, Types::DescribeUserInput] params
    # @option params [String] :identity_store_id
    #   <p>The globally unique identifier for the identity store, such as
    #            <code>d-1234567890</code>. In this example, <code>d-</code> is a fixed prefix, and
    #               <code>1234567890</code> is a randomly generated string that contains numbers and lower
    #            case letters. This value is generated at the time that a new identity store is
    #            created.</p>
    # @option params [String] :user_id
    #   <p>The identifier for a user in the identity store.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identity_store_id: "IdentityStoreId", # required
    #     user_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.describe_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     user_name: "UserName",
    #     user_id: "ResourceId", # required
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
    #     identity_store_id: "IdentityStoreId", # required
    #   }
    # @return [Types::DescribeUserOutput]
    def describe_user(params = {}, options = {})
      request = build_request(:describe_user, params)
      request.send_request(options)
    end

    # <p>Retrieves <code>GroupId</code> in an identity store.</p>
    #          <note>
    #             <p>If you have administrator access to a member account, you can use this API from the member account. 
    #          Read about <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_access.html">member accounts</a> in the 
    #          <i>Organizations User Guide</i>. </p>
    #          </note>
    # @param [Hash, Types::GetGroupIdInput] params
    # @option params [String] :identity_store_id
    #   <p>The globally unique identifier for the identity store.</p>
    # @option params [Types::AlternateIdentifier] :alternate_identifier
    #   <p>A unique identifier for a user or group that is not the primary identifier. This value can be
    #            an identifier from an external identity provider (IdP) that is associated with the user, the group, or a unique attribute. For the unique attribute, the only valid path is <code>displayName</code>.</p>
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
    #     group_id: "ResourceId", # required
    #     identity_store_id: "IdentityStoreId", # required
    #   }
    # @return [Types::GetGroupIdOutput]
    def get_group_id(params = {}, options = {})
      request = build_request(:get_group_id, params)
      request.send_request(options)
    end

    # <p>Retrieves the <code>MembershipId</code> in an identity store.</p>
    #          <note>
    #             <p>If you have administrator access to a member account, you can use this API from the member account. 
    #          Read about <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_access.html">member accounts</a> in the 
    #          <i>Organizations User Guide</i>. </p>
    #          </note>
    # @param [Hash, Types::GetGroupMembershipIdInput] params
    # @option params [String] :identity_store_id
    #   <p>The globally unique identifier for the identity store.</p>
    # @option params [String] :group_id
    #   <p>The identifier for a group in the identity store.</p>
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
    #     membership_id: "ResourceId", # required
    #     identity_store_id: "IdentityStoreId", # required
    #   }
    # @return [Types::GetGroupMembershipIdOutput]
    def get_group_membership_id(params = {}, options = {})
      request = build_request(:get_group_membership_id, params)
      request.send_request(options)
    end

    # <p>Retrieves the <code>UserId</code> in an identity store.</p>
    #          <note>
    #             <p>If you have administrator access to a member account, you can use this API from the member account. 
    #          Read about <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_access.html">member accounts</a> in the 
    #          <i>Organizations User Guide</i>. </p>
    #          </note>
    # @param [Hash, Types::GetUserIdInput] params
    # @option params [String] :identity_store_id
    #   <p>The globally unique identifier for the identity store.</p>
    # @option params [Types::AlternateIdentifier] :alternate_identifier
    #   <p>A unique identifier for a user or group that is not the primary identifier. This value can be
    #            an identifier from an external identity provider (IdP) that is associated with the user, the group, or a unique attribute. For the unique attribute, the only valid paths are <code>userName</code> and <code>emails.value</code>.</p>
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
    #     user_id: "ResourceId", # required
    #     identity_store_id: "IdentityStoreId", # required
    #   }
    # @return [Types::GetUserIdOutput]
    def get_user_id(params = {}, options = {})
      request = build_request(:get_user_id, params)
      request.send_request(options)
    end

    # <p>Checks the user's membership in all requested groups and returns if the member exists in all queried groups.</p>
    #          <note>
    #             <p>If you have administrator access to a member account, you can use this API from the member account. 
    #          Read about <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_access.html">member accounts</a> in the 
    #          <i>Organizations User Guide</i>. </p>
    #          </note>
    # @param [Hash, Types::IsMemberInGroupsInput] params
    # @option params [String] :identity_store_id
    #   <p>The globally unique identifier for the identity store.</p>
    # @option params [Types::MemberId] :member_id
    #   <p>An object containing the identifier of a group member.</p>
    # @option params [Array<String>] :group_ids
    #   <p>A list of identifiers for groups in the identity store.</p>
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
    # @return [Types::IsMemberInGroupsOutput]
    def is_member_in_groups(params = {}, options = {})
      request = build_request(:is_member_in_groups, params)
      request.send_request(options)
    end

    # <p>For the specified group in the specified identity store, returns the list of all <code>GroupMembership</code> objects and returns results in paginated form.</p>
    #          <note>
    #             <p>If you have administrator access to a member account, you can use this API from the member account. 
    #          Read about <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_access.html">member accounts</a> in the 
    #          <i>Organizations User Guide</i>. </p>
    #          </note>
    # @param [Hash, Types::ListGroupMembershipsInput] params
    # @option params [String] :identity_store_id
    #   <p>The globally unique identifier for the identity store.</p>
    # @option params [String] :group_id
    #   <p>The identifier for a group in the identity store.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned per request. This parameter is used in all
    #               <code>List</code> requests to specify how many results to return in one page.</p>
    # @option params [String] :next_token
    #   <p>The pagination token used for the <code>ListUsers</code>, <code>ListGroups</code> and <code>ListGroupMemberships</code> API operations. This value is generated by the identity store service. It is returned in the API response if the total results are more than the size of one page. This token is also returned when it is used in the API request to search for the next page.</p>
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
    #         membership_id: "ResourceId",
    #         group_id: "ResourceId",
    #         member_id: {
    #           # One of:
    #           user_id: "ResourceId"
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListGroupMembershipsOutput]
    def list_group_memberships(params = {}, options = {})
      request = build_request(:list_group_memberships, params)
      request.send_request(options)
    end

    # <p>For the specified member in the specified identity store, returns the list of all <code>GroupMembership</code> objects and returns results in paginated form.</p>
    #          <note>
    #             <p>If you have administrator access to a member account, you can use this API from the member account. 
    #          Read about <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_access.html">member accounts</a> in the 
    #          <i>Organizations User Guide</i>. </p>
    #          </note>
    # @param [Hash, Types::ListGroupMembershipsForMemberInput] params
    # @option params [String] :identity_store_id
    #   <p>The globally unique identifier for the identity store.</p>
    # @option params [Types::MemberId] :member_id
    #   <p>An object that contains the identifier of a group member. Setting the <code>UserID</code> field to the specific identifier for a user indicates that the user is a member of the group.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned per request. This parameter is used in the <code>ListUsers</code> and <code>ListGroups</code> requests to specify how many results to return in one page. The length limit is 50 characters.</p>
    # @option params [String] :next_token
    #   <p>The pagination token used for the <code>ListUsers</code>, <code>ListGroups</code>, and <code>ListGroupMemberships</code> API operations. This value is generated by the identity store service. It is returned in the API response if the total results are more than the size of one page. This token is also returned when it is used in the API request to search for the next page.</p>
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
    #         membership_id: "ResourceId",
    #         group_id: "ResourceId",
    #         member_id: {
    #           # One of:
    #           user_id: "ResourceId"
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListGroupMembershipsForMemberOutput]
    def list_group_memberships_for_member(params = {}, options = {})
      request = build_request(:list_group_memberships_for_member, params)
      request.send_request(options)
    end

    # <p>Lists all groups in the identity store. Returns a paginated list of complete <code>Group</code> objects. 
    #          Filtering for a <code>Group</code> by the <code>DisplayName</code> attribute is deprecated. Instead, use the <code>GetGroupId</code> API action.</p>
    #          <note>
    #             <p>If you have administrator access to a member account, you can use this API from the member account. 
    #          Read about <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_access.html">member accounts</a> in the 
    #          <i>Organizations User Guide</i>. </p>
    #          </note>
    # @param [Hash, Types::ListGroupsInput] params
    # @option params [String] :identity_store_id
    #   <p>The globally unique identifier for the identity store, such as
    #            <code>d-1234567890</code>. In this example, <code>d-</code> is a fixed prefix, and
    #               <code>1234567890</code> is a randomly generated string that contains numbers and lower
    #            case letters. This value is generated at the time that a new identity store is
    #            created.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned per request. This parameter is used in the
    #               <code>ListUsers</code> and <code>ListGroups</code> requests to specify how many results
    #            to return in one page. The length limit is 50 characters.</p>
    # @option params [String] :next_token
    #   <p>The pagination token used for the <code>ListUsers</code> and <code>ListGroups</code> API
    #            operations. This value is generated by the identity store service. It is returned in the
    #            API response if the total results are more than the size of one page. This token is also
    #            returned when it is used in the API request to search for the next page.</p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>A list of <code>Filter</code> objects, which is used in the <code>ListUsers</code> and
    #               <code>ListGroups</code> requests.</p>
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
    #         group_id: "ResourceId", # required
    #         display_name: "GroupDisplayName",
    #         external_ids: [
    #           {
    #             issuer: "ExternalIdIssuer", # required
    #             id: "ExternalIdIdentifier", # required
    #           }
    #         ],
    #         description: "SensitiveStringType",
    #         identity_store_id: "IdentityStoreId", # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListGroupsOutput]
    def list_groups(params = {}, options = {})
      request = build_request(:list_groups, params)
      request.send_request(options)
    end

    # <p>Lists all users in the identity store. Returns a paginated list of complete <code>User</code> objects. 
    #          Filtering for a <code>User</code> by the <code>UserName</code> attribute is deprecated. Instead, use the <code>GetUserId</code> API action.</p>
    #          <note>
    #             <p>If you have administrator access to a member account, you can use this API from the member account. 
    #          Read about <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_access.html">member accounts</a> in the 
    #          <i>Organizations User Guide</i>.</p>
    #          </note>
    # @param [Hash, Types::ListUsersInput] params
    # @option params [String] :identity_store_id
    #   <p>The globally unique identifier for the identity store, such as
    #            <code>d-1234567890</code>. In this example, <code>d-</code> is a fixed prefix, and
    #               <code>1234567890</code> is a randomly generated string that contains numbers and lower
    #            case letters. This value is generated at the time that a new identity store is
    #            created.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned per request. This parameter is used in the
    #               <code>ListUsers</code> and <code>ListGroups</code> requests to specify how many results
    #            to return in one page. The length limit is 50 characters.</p>
    # @option params [String] :next_token
    #   <p>The pagination token used for the <code>ListUsers</code> and <code>ListGroups</code> API
    #            operations. This value is generated by the identity store service. It is returned in the
    #            API response if the total results are more than the size of one page. This token is also
    #            returned when it is used in the API request to search for the next page.</p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>A list of <code>Filter</code> objects, which is used in the <code>ListUsers</code> and
    #               <code>ListGroups</code> requests. </p>
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
    #   response = client.list_users(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     users: [ # required
    #       {
    #         user_name: "UserName",
    #         user_id: "ResourceId", # required
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
    #         identity_store_id: "IdentityStoreId", # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListUsersOutput]
    def list_users(params = {}, options = {})
      request = build_request(:list_users, params)
      request.send_request(options)
    end

    # <p>For the specified group in the specified identity store, updates the group metadata and attributes.</p>
    # @param [Hash, Types::UpdateGroupInput] params
    # @option params [String] :identity_store_id
    #   <p>The globally unique identifier for the identity store.</p>
    # @option params [String] :group_id
    #   <p>The identifier for a group in the identity store.</p>
    # @option params [Array<Types::AttributeOperation>] :operations
    #   <p>A list of <code>AttributeOperation</code> objects to apply to the requested group. These
    #            operations might add, replace, or remove an attribute.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identity_store_id: "IdentityStoreId", # required
    #     group_id: "ResourceId", # required
    #     operations: [ # required
    #       {
    #         attribute_path: "AttributePath", # required
    #         attribute_value: ""null""
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateGroupOutput]
    def update_group(params = {}, options = {})
      request = build_request(:update_group, params)
      request.send_request(options)
    end

    # <p>For the specified user in the specified identity store, updates the user metadata and attributes.</p>
    # @param [Hash, Types::UpdateUserInput] params
    # @option params [String] :identity_store_id
    #   <p>The globally unique identifier for the identity store.</p>
    # @option params [String] :user_id
    #   <p>The identifier for a user in the identity store.</p>
    # @option params [Array<Types::AttributeOperation>] :operations
    #   <p>A list of <code>AttributeOperation</code> objects to apply to the requested user. These
    #            operations might add, replace, or remove an attribute.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identity_store_id: "IdentityStoreId", # required
    #     user_id: "ResourceId", # required
    #     operations: [ # required
    #       {
    #         attribute_path: "AttributePath", # required
    #         attribute_value: ""null""
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateUserOutput]
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
    end
  end
end
