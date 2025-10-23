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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:directoryservicedata)

module Aws::DirectoryServiceData
  # An API client for Aws::DirectoryServiceData.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::DirectoryServiceData
    @identifier = :directoryservicedata

    add_plugin(::Aws::DirectoryServiceData::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::DirectoryServiceData::EndpointProvider)
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
    #  to return or errors to raise by calling {Smithy::Client::Stubs#stub_responses}.
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

    # <p>Adds an existing user, group, or computer as a group member.</p>
    # @param [Hash, Types::AddGroupMemberRequest] params
    # @option params [String] :directory_id
    #   <p> The identifier (ID) of the directory that's associated with the group. </p>
    # @option params [String] :group_name
    #   <p> The name of the group. </p>
    # @option params [String] :member_name
    #   <p> The <code>SAMAccountName</code> of the user, group, or computer to add as a group member.
    #       </p>
    # @option params [String] :member_realm
    #   <p> The domain name that's associated with the group member. This parameter is required only
    #         when adding a member outside of your Managed Microsoft AD domain to a group inside of your
    #         Managed Microsoft AD domain. This parameter defaults to the Managed Microsoft AD domain. </p>
    #            <note>
    #               <p> This parameter is case insensitive. </p>
    #            </note>
    # @option params [String] :client_token
    #   <p> A unique and case-sensitive identifier that you provide to make sure the idempotency of
    #         the request, so multiple identical calls have the same effect as one single call. </p>
    #            <p> A client token is valid for 8 hours after the first request that uses it completes. After
    #         8 hours, any request with the same client token is treated as a new request. If the request
    #         succeeds, any future uses of that token will be idempotent for another 8 hours. </p>
    #            <p> If you submit a request with the same client token but change one of the other parameters
    #         within the 8-hour idempotency window, Directory Service Data returns an <code>ConflictException</code>. </p>
    #            <note>
    #               <p> This parameter is optional when using the CLI or SDK. </p>
    #            </note>
    # @example To add a member to the Marketing group
    #   # The following command adds an existing user to the Marketing group in the europe.example.com domain.
    #   params = {
    #     client_token: "550e8400-e29b-41d4-a716-446655440000",
    #     directory_id: "d-12233abcde",
    #     group_name: "Marketing",
    #     member_name: "Pat Candella",
    #     member_realm: "europe.example.com"
    #   }
    #   options = {}
    #   response = client.add_group_member(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_id: "DirectoryId", # required
    #     group_name: "GroupName", # required
    #     member_name: "MemberName", # required
    #     member_realm: "Realm",
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.add_group_member(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AddGroupMemberResult]
    def add_group_member(params = {}, options = {})
      request = build_request(:add_group_member, params)
      request.send_request(options)
    end

    # <p>Creates a new group.</p>
    # @param [Hash, Types::CreateGroupRequest] params
    # @option params [String] :directory_id
    #   <p> The identifier (ID) of the directory that's associated with the group. </p>
    # @option params [String] :sam_account_name
    #   <p> The name of the group. </p>
    # @option params [String] :group_type
    #   <p> The AD group type. For details, see <a href="https://learn.microsoft.com/en-us/windows-server/identity/ad-ds/manage/understand-security-groups#how-active-directory-security-groups-work">Active Directory security group type</a>.</p>
    # @option params [String] :group_scope
    #   <p> The scope of the AD group. For details, see <a href="https://learn.microsoft.com/en-us/windows-server/identity/ad-ds/manage/understand-security-groups#group-scope">Active Directory security group scope</a>. </p>
    # @option params [Hash<String, Types::AttributeValue>] :other_attributes
    #   <p> An expression that defines one or more attributes with the data type and value of each
    #         attribute. </p>
    # @option params [String] :client_token
    #   <p> A unique and case-sensitive identifier that you provide to make sure the idempotency of
    #         the request, so multiple identical calls have the same effect as one single call. </p>
    #            <p> A client token is valid for 8 hours after the first request that uses it completes. After
    #         8 hours, any request with the same client token is treated as a new request. If the request
    #         succeeds, any future uses of that token will be idempotent for another 8 hours. </p>
    #            <p> If you submit a request with the same client token but change one of the other parameters
    #         within the 8-hour idempotency window, Directory Service Data returns an <code>ConflictException</code>. </p>
    #            <note>
    #               <p> This parameter is optional when using the CLI or SDK. </p>
    #            </note>
    # @example To create a group
    #   # The following command creates a distribution list group named AcctngMail.
    #   params = {
    #     client_token: "550e8400-e29b-41d4-a716-446655440000",
    #     directory_id: "d-12233abcde",
    #     group_scope: DomainLocal,
    #     group_type: Distribution,
    #     other_attributes: {
    #       "displayName" => {
    #     "S" => Acctng-mailing-list
    #   },
    #       "description" => {
    #     "S" => Accounting dept mailing list
    #   }
    #     },
    #     sam_account_name: "AcctngMail"
    #   }
    #   options = {}
    #   response = client.create_group(params, options)
    #   response.to_h #=>
    #   {
    #     directory_id: "d-12233abcde",
    #     sam_account_name: "AcctngMail",
    #     sid: "S-1-5-33-123"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_id: "DirectoryId", # required
    #     sam_account_name: "GroupName", # required
    #     group_type: "Distribution" # One of: ["Distribution", "Security"],
    #     group_scope: "DomainLocal" # One of: ["DomainLocal", "Global", "Universal", "BuiltinLocal"],
    #     other_attributes: {
    #       "LdapDisplayName" => {
    #         # One of:
    #         s: "StringAttributeValue",
    #         n: 1,
    #         bool: false,
    #         ss: ["StringAttributeValue"]
    #       }
    #     },
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     directory_id: "DirectoryId",
    #     sam_account_name: "GroupName",
    #     sid: "SID"
    #   }
    # @return [Types::CreateGroupResult]
    def create_group(params = {}, options = {})
      request = build_request(:create_group, params)
      request.send_request(options)
    end

    # <p>Creates a new user.</p>
    # @param [Hash, Types::CreateUserRequest] params
    # @option params [String] :directory_id
    #   <p> The identifier (ID) of the directory that’s associated with the user. </p>
    # @option params [String] :sam_account_name
    #   <p> The name of the user. </p>
    # @option params [String] :email_address
    #   <p> The email address of the user. </p>
    # @option params [String] :given_name
    #   <p> The first name of the user. </p>
    # @option params [String] :surname
    #   <p> The last name of the user. </p>
    # @option params [Hash<String, Types::AttributeValue>] :other_attributes
    #   <p> An expression that defines one or more attribute names with the data type and value of
    #         each attribute. A key is an attribute name, and the value is a list of maps. For a list of
    #         supported attributes, see <a href="https://docs.aws.amazon.com/directoryservice/latest/admin-guide/ad_data_attributes.html">Directory Service Data Attributes</a>. </p>
    #            <note>
    #               <p> Attribute names are case insensitive. </p>
    #            </note>
    # @option params [String] :client_token
    #   <p> A unique and case-sensitive identifier that you provide to make sure the idempotency of
    #         the request, so multiple identical calls have the same effect as one single call. </p>
    #            <p> A client token is valid for 8 hours after the first request that uses it completes. After
    #         8 hours, any request with the same client token is treated as a new request. If the request
    #         succeeds, any future uses of that token will be idempotent for another 8 hours. </p>
    #            <p> If you submit a request with the same client token but change one of the other parameters
    #         within the 8-hour idempotency window, Directory Service Data returns an <code>ConflictException</code>. </p>
    #            <note>
    #               <p> This parameter is optional when using the CLI or SDK. </p>
    #            </note>
    # @example To create a new user in the directory
    #   # The following command
    #   params = {
    #     client_token: "550e8400-e29b-41d4-a716-446655440000",
    #     directory_id: "d-12233abcde",
    #     email_address: "pcandella@exampledomain.com",
    #     given_name: "Pat Candella",
    #     other_attributes: {
    #       "department" => {
    #     "S" => HR
    #   },
    #       "homePhone" => {
    #     "S" => 212-555-0100
    #   }
    #     },
    #     sam_account_name: "pcandella",
    #     surname: "Candella"
    #   }
    #   options = {}
    #   response = client.create_user(params, options)
    #   response.to_h #=>
    #   {
    #     directory_id: "d-12233abcde",
    #     sam_account_name: "pcandella",
    #     sid: "S-1-5-99-789"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_id: "DirectoryId", # required
    #     sam_account_name: "UserName", # required
    #     email_address: "EmailAddress",
    #     given_name: "GivenName",
    #     surname: "Surname",
    #     other_attributes: {
    #       "LdapDisplayName" => {
    #         # One of:
    #         s: "StringAttributeValue",
    #         n: 1,
    #         bool: false,
    #         ss: ["StringAttributeValue"]
    #       }
    #     },
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     directory_id: "DirectoryId",
    #     sid: "SID",
    #     sam_account_name: "UserName"
    #   }
    # @return [Types::CreateUserResult]
    def create_user(params = {}, options = {})
      request = build_request(:create_user, params)
      request.send_request(options)
    end

    # <p>Deletes a group.</p>
    # @param [Hash, Types::DeleteGroupRequest] params
    # @option params [String] :directory_id
    #   <p> The identifier (ID) of the directory that's associated with the group. </p>
    # @option params [String] :sam_account_name
    #   <p> The name of the group. </p>
    # @option params [String] :client_token
    #   <p> A unique and case-sensitive identifier that you provide to make sure the idempotency of
    #         the request, so multiple identical calls have the same effect as one single call. </p>
    #            <p> A client token is valid for 8 hours after the first request that uses it completes. After
    #         8 hours, any request with the same client token is treated as a new request. If the request
    #         succeeds, any future uses of that token will be idempotent for another 8 hours. </p>
    #            <p> If you submit a request with the same client token but change one of the other parameters
    #         within the 8-hour idempotency window, Directory Service Data returns an <code>ConflictException</code>. </p>
    #            <note>
    #               <p> This parameter is optional when using the CLI or SDK. </p>
    #            </note>
    # @example To delete a group
    #   # The following command deletes the marketing group from the specified directory.
    #   params = {
    #     client_token: "550e8400-e29b-41d4-a716-446655440000",
    #     directory_id: "d-12233abcde",
    #     sam_account_name: "marketing"
    #   }
    #   options = {}
    #   response = client.delete_group(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_id: "DirectoryId", # required
    #     sam_account_name: "GroupName", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.delete_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteGroupResult]
    def delete_group(params = {}, options = {})
      request = build_request(:delete_group, params)
      request.send_request(options)
    end

    # <p>Deletes a user.</p>
    # @param [Hash, Types::DeleteUserRequest] params
    # @option params [String] :directory_id
    #   <p> The identifier (ID) of the directory that's associated with the user. </p>
    # @option params [String] :sam_account_name
    #   <p> The name of the user. </p>
    # @option params [String] :client_token
    #   <p> A unique and case-sensitive identifier that you provide to make sure the idempotency of
    #         the request, so multiple identical calls have the same effect as one single call. </p>
    #            <p> A client token is valid for 8 hours after the first request that uses it completes. After
    #         8 hours, any request with the same client token is treated as a new request. If the request
    #         succeeds, any future uses of that token will be idempotent for another 8 hours. </p>
    #            <p> If you submit a request with the same client token but change one of the other parameters
    #         within the 8-hour idempotency window, Directory Service Data returns an <code>ConflictException</code>. </p>
    #            <note>
    #               <p> This parameter is optional when using the CLI or SDK. </p>
    #            </note>
    # @example To delete a user
    #   # The following command deletes a group from the directory.
    #   params = {
    #     client_token: "550e8400-e29b-41d4-a716-446655440000",
    #     directory_id: "d-12233abcde",
    #     sam_account_name: "pcandella"
    #   }
    #   options = {}
    #   response = client.delete_user(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_id: "DirectoryId", # required
    #     sam_account_name: "UserName", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.delete_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteUserResult]
    def delete_user(params = {}, options = {})
      request = build_request(:delete_user, params)
      request.send_request(options)
    end

    # <p>Returns information about a specific group.</p>
    # @param [Hash, Types::DescribeGroupRequest] params
    # @option params [String] :directory_id
    #   <p>The Identifier (ID) of the directory associated with the group.</p>
    # @option params [String] :realm
    #   <p> The domain name that's associated with the group. </p>
    #            <note>
    #               <p> This parameter is optional, so you can return groups outside of your Managed Microsoft AD
    #           domain. When no value is defined, only your Managed Microsoft AD groups are returned. </p>
    #               <p> This value is case insensitive. </p>
    #            </note>
    # @option params [String] :sam_account_name
    #   <p> The name of the group. </p>
    # @option params [Array<String>] :other_attributes
    #   <p> One or more attributes to be returned for the group. For a list of supported attributes,
    #         see <a href="https://docs.aws.amazon.com/directoryservice/latest/admin-guide/ad_data_attributes.html">Directory Service Data Attributes</a>.
    #       </p>
    # @example To return the attributes of a group
    #   # The following command returns the mapped attributes for a group along with the display name, description, and GUID for the group.
    #   params = {
    #     directory_id: "d-12233abcde",
    #     other_attributes: [
    #       "displayName",
    #       "description",
    #       "objectGUID"
    #     ],
    #     realm: "example.domain.com",
    #     sam_account_name: "DevOpsMail"
    #   }
    #   options = {}
    #   response = client.describe_group(params, options)
    #   response.to_h #=>
    #   {
    #     directory_id: "d-12233abcde",
    #     distinguished_name: "DevOpsmail",
    #     group_scope: Global,
    #     group_type: Distribution,
    #     other_attributes: {
    #       "displayName" => {
    #     "S" => DevOps mailing list
    #   },
    #       "description" => {
    #     "S" => A group for DevOps email.
    #   },
    #       "objectGUID" => {
    #     "S" => 123456789
    #   }
    #     },
    #     sam_account_name: "DevOpsMail",
    #     sid: "S-1-5-55-678"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_id: "DirectoryId", # required
    #     realm: "Realm",
    #     sam_account_name: "GroupName", # required
    #     other_attributes: ["LdapDisplayName"]
    #   }
    #   options = {}
    #   response = client.describe_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     directory_id: "DirectoryId",
    #     realm: "Realm",
    #     sid: "SID",
    #     sam_account_name: "GroupName",
    #     distinguished_name: "DistinguishedName",
    #     group_type: "Distribution" # One of: ["Distribution", "Security"],
    #     group_scope: "DomainLocal" # One of: ["DomainLocal", "Global", "Universal", "BuiltinLocal"],
    #     other_attributes: {
    #       "LdapDisplayName" => {
    #         # One of:
    #         s: "StringAttributeValue",
    #         n: 1,
    #         bool: false,
    #         ss: ["StringAttributeValue"]
    #       }
    #     }
    #   }
    # @return [Types::DescribeGroupResult]
    def describe_group(params = {}, options = {})
      request = build_request(:describe_group, params)
      request.send_request(options)
    end

    # <p>Returns information about a specific user.</p>
    # @param [Hash, Types::DescribeUserRequest] params
    # @option params [String] :directory_id
    #   <p> The identifier (ID) of the directory that's associated with the user. </p>
    # @option params [String] :sam_account_name
    #   <p> The name of the user. </p>
    # @option params [Array<String>] :other_attributes
    #   <p> One or more attribute names to be returned for the user. A key is an attribute name, and
    #         the value is a list of maps. For a list of supported attributes, see <a href="https://docs.aws.amazon.com/directoryservice/latest/admin-guide/ad_data_attributes.html">Directory Service Data Attributes</a>. </p>
    # @option params [String] :realm
    #   <p> The domain name that's associated with the user. </p>
    #            <note>
    #               <p> This parameter is optional, so you can return users outside your Managed Microsoft AD domain.
    #           When no value is defined, only your Managed Microsoft AD users are returned. </p>
    #               <p> This value is case insensitive. </p>
    #            </note>
    # @example To return the attributes of a user
    #   # The following command returns the mapped attributes for a user along with the department, manager, IP phone, and date the user last set a password.
    #   params = {
    #     directory_id: "d-12233abcde",
    #     other_attributes: [
    #       "department",
    #       "manager",
    #       "ipPhone",
    #       "pwdLastSet"
    #     ],
    #     realm: "examplecorp.com",
    #     sam_account_name: "twhitlock"
    #   }
    #   options = {}
    #   response = client.describe_user(params, options)
    #   response.to_h #=>
    #   {
    #     directory_id: "d-12233abcde",
    #     distinguished_name: "Terry Whitlock",
    #     email_address: "terry.whitlock@examplecorp.com",
    #     enabled: true,
    #     given_name: "Terry Whitlock",
    #     other_attributes: {
    #       "department" => {
    #     "S" => communications
    #   },
    #       "manager" => {
    #     "S" => OU=Users,DC=mmajors
    #   },
    #       "ipPhone" => {
    #     "S" => 111.111.111.111
    #   },
    #       "pwdLastSet" => {
    #     "N" => 0
    #   }
    #     },
    #     sam_account_name: "twhitlock",
    #     sid: "123-456-7890",
    #     surname: "Whitlock",
    #     user_principal_name: "terry.whitlock"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_id: "DirectoryId", # required
    #     sam_account_name: "UserName", # required
    #     other_attributes: ["LdapDisplayName"],
    #     realm: "Realm"
    #   }
    #   options = {}
    #   response = client.describe_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     directory_id: "DirectoryId",
    #     realm: "Realm",
    #     sid: "SID",
    #     sam_account_name: "UserName",
    #     distinguished_name: "DistinguishedName",
    #     user_principal_name: "UserPrincipalName",
    #     email_address: "EmailAddress",
    #     given_name: "GivenName",
    #     surname: "Surname",
    #     enabled: false,
    #     other_attributes: {
    #       "LdapDisplayName" => {
    #         # One of:
    #         s: "StringAttributeValue",
    #         n: 1,
    #         bool: false,
    #         ss: ["StringAttributeValue"]
    #       }
    #     }
    #   }
    # @return [Types::DescribeUserResult]
    def describe_user(params = {}, options = {})
      request = build_request(:describe_user, params)
      request.send_request(options)
    end

    # <p> Deactivates an active user account. For information about how to enable an inactive user
    #       account, see <a href="https://docs.aws.amazon.com/directoryservice/latest/devguide/API_ResetUserPassword.html">ResetUserPassword</a>
    #       in the <i>Directory Service API Reference</i>.</p>
    # @param [Hash, Types::DisableUserRequest] params
    # @option params [String] :directory_id
    #   <p> The identifier (ID) of the directory that's associated with the user. </p>
    # @option params [String] :sam_account_name
    #   <p> The name of the user. </p>
    # @option params [String] :client_token
    #   <p> A unique and case-sensitive identifier that you provide to make sure the idempotency of
    #         the request, so multiple identical calls have the same effect as one single call. </p>
    #            <p> A client token is valid for 8 hours after the first request that uses it completes. After
    #         8 hours, any request with the same client token is treated as a new request. If the request
    #         succeeds, any future uses of that token will be idempotent for another 8 hours. </p>
    #            <p> If you submit a request with the same client token but change one of the other parameters
    #         within the 8-hour idempotency window, Directory Service Data returns an <code>ConflictException</code>. </p>
    #            <note>
    #               <p> This parameter is optional when using the CLI or SDK. </p>
    #            </note>
    # @example To disable a user account
    #   # The following command disables the account for twhitlock.
    #   params = {
    #     client_token: "550e8400-e29b-41d4-a716-446655440000",
    #     directory_id: "d-12233abcde",
    #     sam_account_name: "twhitlock"
    #   }
    #   options = {}
    #   response = client.disable_user(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_id: "DirectoryId", # required
    #     sam_account_name: "UserName", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.disable_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisableUserResult]
    def disable_user(params = {}, options = {})
      request = build_request(:disable_user, params)
      request.send_request(options)
    end

    # <p> Returns member information for the specified group. </p>
    #          <p> This operation supports pagination with the use of the <code>NextToken</code> request and
    #       response parameters. If more results are available, the
    #         <code>ListGroupMembers.NextToken</code> member contains a token that you pass in the next
    #       call to <code>ListGroupMembers</code>. This retrieves the next set of items. </p>
    #          <p> You can also specify a maximum number of return results with the <code>MaxResults</code>
    #       parameter. </p>
    # @param [Hash, Types::ListGroupMembersRequest] params
    # @option params [String] :directory_id
    #   <p> The identifier (ID) of the directory that's associated with the group. </p>
    # @option params [String] :realm
    #   <p> The domain name that's associated with the group. </p>
    #            <note>
    #               <p> This parameter is optional, so you can return members from a group outside of your
    #           Managed Microsoft AD domain. When no value is defined, only members of your Managed Microsoft AD groups are
    #           returned. </p>
    #               <p> This value is case insensitive. </p>
    #            </note>
    # @option params [String] :member_realm
    #   <p> The domain name that's associated with the group member. This parameter defaults to the
    #         Managed Microsoft AD domain. </p>
    #            <note>
    #               <p> This parameter is optional and case insensitive. </p>
    #            </note>
    # @option params [String] :sam_account_name
    #   <p> The name of the group. </p>
    # @option params [String] :next_token
    #   <p>An encoded paging token for paginated calls that can be passed back to retrieve the next
    #         page.</p>
    # @option params [Integer] :max_results
    #   <p> The maximum number of results to be returned per request. </p>
    # @example To list members of a group
    #   # The following command lists Marketing users in the trusted domain example.local.
    #   params = {
    #     directory_id: "d-12233abcde",
    #     sam_account_name: "marketing",
    #     member_realm: "example.local",
    #     realm: "examplecorp.com"
    #   }
    #   options = {}
    #   response = client.list_group_members(params, options)
    #   response.to_h #=>
    #   {
    #     directory_id: "d-12233abcde",
    #     members: [
    #       {
    #         sid: "S-1-5-11-111",
    #         sam_account_name: "twhitlock",
    #         member_type: USER
    #       },
    #       {
    #         sid: "S-1-5-11-112",
    #         sam_account_name: "pcandella",
    #         member_type: USER
    #       },
    #       {
    #         sid: "S-1-5-11-113",
    #         sam_account_name: "jstiles",
    #         member_type: USER
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_id: "DirectoryId", # required
    #     realm: "Realm",
    #     member_realm: "Realm",
    #     sam_account_name: "GroupName", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_group_members(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     directory_id: "DirectoryId",
    #     realm: "Realm",
    #     member_realm: "Realm",
    #     members: [
    #       {
    #         sid: "SID", # required
    #         sam_account_name: "MemberName", # required
    #         member_type: "USER" # One of: ["USER", "GROUP", "COMPUTER"], # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListGroupMembersResult]
    def list_group_members(params = {}, options = {})
      request = build_request(:list_group_members, params)
      request.send_request(options)
    end

    # <p> Returns group information for the specified directory. </p>
    #          <p> This operation supports pagination with the use of the <code>NextToken</code> request and
    #       response parameters. If more results are available, the <code>ListGroups.NextToken</code>
    #       member contains a token that you pass in the next call to <code>ListGroups</code>. This
    #       retrieves the next set of items. </p>
    #          <p> You can also specify a maximum number of return results with the <code>MaxResults</code>
    #       parameter. </p>
    # @param [Hash, Types::ListGroupsRequest] params
    # @option params [String] :directory_id
    #   <p> The identifier (ID) of the directory that's associated with the group. </p>
    # @option params [String] :realm
    #   <p> The domain name associated with the directory. </p>
    #            <note>
    #               <p> This parameter is optional, so you can return groups outside of your Managed Microsoft AD
    #           domain. When no value is defined, only your Managed Microsoft AD groups are returned. </p>
    #               <p> This value is case insensitive. </p>
    #            </note>
    # @option params [String] :next_token
    #   <p> An encoded paging token for paginated calls that can be passed back to retrieve the next
    #         page. </p>
    # @option params [Integer] :max_results
    #   <p> The maximum number of results to be returned per request. </p>
    # @example To list domain groups
    #   # The following command lists the name and default attributes for groups on the examplecorp.com domain.
    #   params = {
    #     directory_id: "d-12233abcde",
    #     max_results: 123,
    #     next_token: "123456",
    #     realm: "examplecorp.com"
    #   }
    #   options = {}
    #   response = client.list_groups(params, options)
    #   response.to_h #=>
    #   {
    #     directory_id: "d-12233abcde",
    #     groups: [
    #       {
    #         group_scope: BuiltinLocal,
    #         group_type: Security,
    #         sam_account_name: "Administrators",
    #         sid: "S-1-5-32-544"
    #       },
    #       {
    #         group_scope: BuiltinLocal,
    #         group_type: Security,
    #         sam_account_name: "Users",
    #         sid: "S-1-5-32-545"
    #       }
    #     ],
    #     next_token: "223456"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_id: "DirectoryId", # required
    #     realm: "Realm",
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     directory_id: "DirectoryId",
    #     realm: "Realm",
    #     groups: [
    #       {
    #         sid: "SID", # required
    #         sam_account_name: "GroupName", # required
    #         group_type: "Distribution" # One of: ["Distribution", "Security"], # required
    #         group_scope: "DomainLocal" # One of: ["DomainLocal", "Global", "Universal", "BuiltinLocal"], # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListGroupsResult]
    def list_groups(params = {}, options = {})
      request = build_request(:list_groups, params)
      request.send_request(options)
    end

    # <p> Returns group information for the specified member. </p>
    #          <p> This operation supports pagination with the use of the <code>NextToken</code> request and
    #       response parameters. If more results are available, the
    #         <code>ListGroupsForMember.NextToken</code> member contains a token that you pass in the next
    #       call to <code>ListGroupsForMember</code>. This retrieves the next set of items. </p>
    #          <p> You can also specify a maximum number of return results with the <code>MaxResults</code>
    #       parameter. </p>
    # @param [Hash, Types::ListGroupsForMemberRequest] params
    # @option params [String] :directory_id
    #   <p> The identifier (ID) of the directory that's associated with the member. </p>
    # @option params [String] :realm
    #   <p> The domain name that's associated with the group. </p>
    #            <note>
    #               <p> This parameter is optional, so you can return groups outside of your Managed Microsoft AD
    #           domain. When no value is defined, only your Managed Microsoft AD groups are returned. </p>
    #               <p> This value is case insensitive and defaults to your Managed Microsoft AD domain. </p>
    #            </note>
    # @option params [String] :member_realm
    #   <p> The domain name that's associated with the group member. </p>
    #            <note>
    #               <p> This parameter is optional, so you can limit your results to the group members in a
    #           specific domain. </p>
    #               <p> This parameter is case insensitive and defaults to <code>Realm</code>
    #               </p>
    #            </note>
    # @option params [String] :sam_account_name
    #   <p> The <code>SAMAccountName</code> of the user, group, or computer that's a member of the
    #         group. </p>
    # @option params [String] :next_token
    #   <p> An encoded paging token for paginated calls that can be passed back to retrieve the next
    #         page. </p>
    # @option params [Integer] :max_results
    #   <p> The maximum number of results to be returned per request. </p>
    # @example To list groups for a member
    #   # The following command
    #   params = {
    #     directory_id: "d-12233abcde",
    #     sam_account_name: "twhitlock",
    #     member_realm: "example.local",
    #     realm: "examplecorp.com"
    #   }
    #   options = {}
    #   response = client.list_groups_for_member(params, options)
    #   response.to_h #=>
    #   {
    #     directory_id: "d-12233abcde",
    #     groups: [
    #       {
    #         group_scope: BuiltinLocal,
    #         group_type: Security,
    #         sam_account_name: "Administrators",
    #         sid: "S-1-5-32-544"
    #       },
    #       {
    #         group_scope: BuiltinLocal,
    #         group_type: Security,
    #         sam_account_name: "Users",
    #         sid: "S-1-5-32-545"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_id: "DirectoryId", # required
    #     realm: "Realm",
    #     member_realm: "Realm",
    #     sam_account_name: "MemberName", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_groups_for_member(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     directory_id: "DirectoryId",
    #     realm: "Realm",
    #     member_realm: "Realm",
    #     groups: [
    #       {
    #         sid: "SID", # required
    #         sam_account_name: "GroupName", # required
    #         group_type: "Distribution" # One of: ["Distribution", "Security"], # required
    #         group_scope: "DomainLocal" # One of: ["DomainLocal", "Global", "Universal", "BuiltinLocal"], # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListGroupsForMemberResult]
    def list_groups_for_member(params = {}, options = {})
      request = build_request(:list_groups_for_member, params)
      request.send_request(options)
    end

    # <p> Returns user information for the specified directory. </p>
    #          <p> This operation supports pagination with the use of the <code>NextToken</code> request and
    #       response parameters. If more results are available, the <code>ListUsers.NextToken</code>
    #       member contains a token that you pass in the next call to <code>ListUsers</code>. This
    #       retrieves the next set of items. </p>
    #          <p> You can also specify a maximum number of return results with the <code>MaxResults</code>
    #       parameter. </p>
    # @param [Hash, Types::ListUsersRequest] params
    # @option params [String] :directory_id
    #   <p> The identifier (ID) of the directory that's associated with the user. </p>
    # @option params [String] :realm
    #   <p> The domain name that's associated with the user. </p>
    #            <note>
    #               <p> This parameter is optional, so you can return users outside of your Managed Microsoft AD
    #           domain. When no value is defined, only your Managed Microsoft AD users are returned. </p>
    #               <p> This value is case insensitive. </p>
    #            </note>
    # @option params [String] :next_token
    #   <p> An encoded paging token for paginated calls that can be passed back to retrieve the next
    #         page. </p>
    # @option params [Integer] :max_results
    #   <p> The maximum number of results to be returned per request. </p>
    # @example To list users in a realm
    #   # The following command lists users on the examplecorp.com domain.
    #   params = {
    #     directory_id: "d-12233abcde",
    #     realm: "examplecorp.com"
    #   }
    #   options = {}
    #   response = client.list_users(params, options)
    #   response.to_h #=>
    #   {
    #     directory_id: "d-12233abcde",
    #     users: [
    #       {
    #         sid: "S-1-5-11-111",
    #         sam_account_name: "twhitlock",
    #         enabled: true
    #       },
    #       {
    #         sid: "S-1-5-11-112",
    #         sam_account_name: "pcandella",
    #         enabled: true
    #       },
    #       {
    #         sid: "S-1-5-11-113",
    #         sam_account_name: "jstiles",
    #         enabled: true
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_id: "DirectoryId", # required
    #     realm: "Realm",
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_users(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     directory_id: "DirectoryId",
    #     realm: "Realm",
    #     users: [
    #       {
    #         sid: "SID", # required
    #         sam_account_name: "UserName", # required
    #         given_name: "GivenName",
    #         surname: "Surname",
    #         enabled: false, # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListUsersResult]
    def list_users(params = {}, options = {})
      request = build_request(:list_users, params)
      request.send_request(options)
    end

    # <p> Removes a member from a group. </p>
    # @param [Hash, Types::RemoveGroupMemberRequest] params
    # @option params [String] :directory_id
    #   <p> The identifier (ID) of the directory that's associated with the member. </p>
    # @option params [String] :group_name
    #   <p> The name of the group. </p>
    # @option params [String] :member_name
    #   <p> The <code>SAMAccountName</code> of the user, group, or computer to remove from the group.
    #       </p>
    # @option params [String] :member_realm
    #   <p> The domain name that's associated with the group member. This parameter defaults to the
    #         Managed Microsoft AD domain. </p>
    #            <note>
    #               <p> This parameter is optional and case insensitive. </p>
    #            </note>
    # @option params [String] :client_token
    #   <p> A unique and case-sensitive identifier that you provide to make sure the idempotency of
    #         the request, so multiple identical calls have the same effect as one single call. </p>
    #            <p> A client token is valid for 8 hours after the first request that uses it completes. After
    #         8 hours, any request with the same client token is treated as a new request. If the request
    #         succeeds, any future uses of that token will be idempotent for another 8 hours. </p>
    #            <p> If you submit a request with the same client token but change one of the other parameters
    #         within the 8-hour idempotency window, Directory Service Data returns an <code>ConflictException</code>. </p>
    #            <note>
    #               <p> This parameter is optional when using the CLI or SDK. </p>
    #            </note>
    # @example To remove a member from a group
    #   # The following command removes the specified member from the example.local domain.
    #   params = {
    #     client_token: "550e8400-e29b-41d4-a716-446655440000",
    #     directory_id: "d-12233abcde",
    #     group_name: "DevOps",
    #     member_name: "Pat Candella",
    #     member_realm: "example.local"
    #   }
    #   options = {}
    #   response = client.remove_group_member(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_id: "DirectoryId", # required
    #     group_name: "GroupName", # required
    #     member_name: "MemberName", # required
    #     member_realm: "Realm",
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.remove_group_member(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::RemoveGroupMemberResult]
    def remove_group_member(params = {}, options = {})
      request = build_request(:remove_group_member, params)
      request.send_request(options)
    end

    # <p> Searches the specified directory for a group. You can find groups that match the
    #         <code>SearchString</code> parameter with the value of their attributes included in the
    #         <code>SearchString</code> parameter. </p>
    #          <p> This operation supports pagination with the use of the <code>NextToken</code> request and
    #       response parameters. If more results are available, the <code>SearchGroups.NextToken</code>
    #       member contains a token that you pass in the next call to <code>SearchGroups</code>. This
    #       retrieves the next set of items. </p>
    #          <p> You can also specify a maximum number of return results with the <code>MaxResults</code>
    #       parameter. </p>
    # @param [Hash, Types::SearchGroupsRequest] params
    # @option params [String] :directory_id
    #   <p> The identifier (ID) of the directory that's associated with the group. </p>
    # @option params [String] :search_string
    #   <p> The attribute value that you want to search for. </p>
    #            <note>
    #               <p> Wildcard <code>(*)</code> searches aren't supported. For a list of supported
    #           attributes, see <a href="https://docs.aws.amazon.com/directoryservice/latest/admin-guide/ad_data_attributes.html">Directory Service Data
    #             Attributes</a>. </p>
    #            </note>
    # @option params [Array<String>] :search_attributes
    #   <p> One or more data attributes that are used to search for a group. For a list of supported
    #         attributes, see <a href="https://docs.aws.amazon.com/directoryservice/latest/admin-guide/ad_data_attributes.html">Directory Service Data Attributes</a>.
    #       </p>
    # @option params [String] :realm
    #   <p> The domain name that's associated with the group. </p>
    #            <note>
    #               <p> This parameter is optional, so you can return groups outside of your Managed Microsoft AD
    #           domain. When no value is defined, only your Managed Microsoft AD groups are returned. </p>
    #               <p> This value is case insensitive. </p>
    #            </note>
    # @option params [String] :next_token
    #   <p> An encoded paging token for paginated calls that can be passed back to retrieve the next
    #         page. </p>
    # @option params [Integer] :max_results
    #   <p> The maximum number of results to be returned per request. </p>
    # @example To search for groups
    #   # The following command searches the examplecorp.com domain for groups with the GroupType security.
    #   params = {
    #     directory_id: "d-12233abcde",
    #     max_results: 123,
    #     next_token: "123456",
    #     realm: "examplecorp.com",
    #     search_attributes: [
    #       "GroupScope"
    #     ],
    #     search_string: "Security"
    #   }
    #   options = {}
    #   response = client.search_groups(params, options)
    #   response.to_h #=>
    #   {
    #     directory_id: "d-12233abcde",
    #     groups: [
    #       {
    #         group_scope: BuiltinLocal,
    #         group_type: Security,
    #         sam_account_name: "Administrators",
    #         sid: "S-1-5-32-544"
    #       },
    #       {
    #         group_scope: BuiltinLocal,
    #         group_type: Security,
    #         sam_account_name: "Users",
    #         sid: "S-1-5-32-545"
    #       }
    #     ],
    #     next_token: "223456"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_id: "DirectoryId", # required
    #     search_string: "SearchString", # required
    #     search_attributes: ["LdapDisplayName"], # required
    #     realm: "Realm",
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.search_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     directory_id: "DirectoryId",
    #     realm: "Realm",
    #     groups: [
    #       {
    #         sid: "SID",
    #         sam_account_name: "GroupName", # required
    #         distinguished_name: "DistinguishedName",
    #         group_type: "Distribution" # One of: ["Distribution", "Security"],
    #         group_scope: "DomainLocal" # One of: ["DomainLocal", "Global", "Universal", "BuiltinLocal"],
    #         other_attributes: {
    #           "LdapDisplayName" => {
    #             # One of:
    #             s: "StringAttributeValue",
    #             n: 1,
    #             bool: false,
    #             ss: ["StringAttributeValue"]
    #           }
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::SearchGroupsResult]
    def search_groups(params = {}, options = {})
      request = build_request(:search_groups, params)
      request.send_request(options)
    end

    # <p> Searches the specified directory for a user. You can find users that match the
    #         <code>SearchString</code> parameter with the value of their attributes included in the
    #         <code>SearchString</code> parameter.</p>
    #          <p> This operation supports pagination with the use of the <code>NextToken</code> request and
    #       response parameters. If more results are available, the <code>SearchUsers.NextToken</code>
    #       member contains a token that you pass in the next call to <code>SearchUsers</code>. This
    #       retrieves the next set of items. </p>
    #          <p> You can also specify a maximum number of return results with the <code>MaxResults</code>
    #       parameter. </p>
    # @param [Hash, Types::SearchUsersRequest] params
    # @option params [String] :directory_id
    #   <p> The identifier (ID) of the directory that's associated with the user. </p>
    # @option params [String] :realm
    #   <p> The domain name that's associated with the user. </p>
    #            <note>
    #               <p> This parameter is optional, so you can return users outside of your Managed Microsoft AD
    #           domain. When no value is defined, only your Managed Microsoft AD users are returned. </p>
    #               <p> This value is case insensitive. </p>
    #            </note>
    # @option params [String] :search_string
    #   <p> The attribute value that you want to search for. </p>
    #            <note>
    #               <p> Wildcard <code>(*)</code> searches aren't supported. For a list of supported
    #           attributes, see <a href="https://docs.aws.amazon.com/directoryservice/latest/admin-guide/ad_data_attributes.html">Directory Service Data
    #             Attributes</a>. </p>
    #            </note>
    # @option params [Array<String>] :search_attributes
    #   <p> One or more data attributes that are used to search for a user. For a list of supported
    #         attributes, see <a href="https://docs.aws.amazon.com/directoryservice/latest/admin-guide/ad_data_attributes.html">Directory Service Data Attributes</a>.
    #       </p>
    # @option params [String] :next_token
    #   <p> An encoded paging token for paginated calls that can be passed back to retrieve the next
    #         page. </p>
    # @option params [Integer] :max_results
    #   <p> The maximum number of results to be returned per request. </p>
    # @example To search for users
    #   # The following command searches for users in the domain based on the SearchAttributes.
    #   params = {
    #     directory_id: "d-12233abcde",
    #     realm: "examplecorp.com",
    #     search_attributes: [
    #       "department"
    #     ],
    #     search_string: "DevOps"
    #   }
    #   options = {}
    #   response = client.search_users(params, options)
    #   response.to_h #=>
    #   {
    #     directory_id: "d-12233abcde",
    #     next_token: "223456",
    #     users: [
    #       {
    #         sid: "S-1-5-11-111",
    #         sam_account_name: "twhitlock",
    #         email_address: "twhitlock@examplecorp.com"
    #       },
    #       {
    #         sid: "S-1-5-11-112",
    #         sam_account_name: "pcandella",
    #         email_address: "pcandella@examplecorp.com"
    #       },
    #       {
    #         sid: "S-1-5-11-113",
    #         sam_account_name: "jstiles",
    #         email_address: "jstiles@examplecorp.com"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_id: "DirectoryId", # required
    #     realm: "Realm",
    #     search_string: "SearchString", # required
    #     search_attributes: ["LdapDisplayName"], # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.search_users(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     directory_id: "DirectoryId",
    #     realm: "Realm",
    #     users: [
    #       {
    #         sid: "SID",
    #         sam_account_name: "UserName", # required
    #         distinguished_name: "DistinguishedName",
    #         user_principal_name: "UserPrincipalName",
    #         email_address: "EmailAddress",
    #         given_name: "GivenName",
    #         surname: "Surname",
    #         enabled: false,
    #         other_attributes: {
    #           "LdapDisplayName" => {
    #             # One of:
    #             s: "StringAttributeValue",
    #             n: 1,
    #             bool: false,
    #             ss: ["StringAttributeValue"]
    #           }
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::SearchUsersResult]
    def search_users(params = {}, options = {})
      request = build_request(:search_users, params)
      request.send_request(options)
    end

    # <p> Updates group information. </p>
    # @param [Hash, Types::UpdateGroupRequest] params
    # @option params [String] :directory_id
    #   <p> The identifier (ID) of the directory that's associated with the group. </p>
    # @option params [String] :sam_account_name
    #   <p> The name of the group. </p>
    # @option params [String] :group_type
    #   <p> The AD group type. For details, see <a href="https://learn.microsoft.com/en-us/windows-server/identity/ad-ds/manage/understand-security-groups#how-active-directory-security-groups-work">Active Directory security group type</a>. </p>
    # @option params [String] :group_scope
    #   <p> The scope of the AD group. For details, see <a href="https://learn.microsoft.com/en-us/windows-server/identity/ad-ds/manage/understand-security-groups#group-scope">Active Directory security groups</a>. </p>
    # @option params [Hash<String, Types::AttributeValue>] :other_attributes
    #   <p> An expression that defines one or more attributes with the data type and the value of
    #         each attribute. </p>
    # @option params [String] :update_type
    #   <p> The type of update to be performed. If no value exists for the attribute, use
    #           <code>ADD</code>. Otherwise, use <code>REPLACE</code> to change an attribute value or
    #           <code>REMOVE</code> to clear the attribute value. </p>
    # @option params [String] :client_token
    #   <p> A unique and case-sensitive identifier that you provide to make sure the idempotency of
    #         the request, so multiple identical calls have the same effect as one single call. </p>
    #            <p> A client token is valid for 8 hours after the first request that uses it completes. After
    #         8 hours, any request with the same client token is treated as a new request. If the request
    #         succeeds, any future uses of that token will be idempotent for another 8 hours. </p>
    #            <p> If you submit a request with the same client token but change one of the other parameters
    #         within the 8-hour idempotency window, Directory Service Data returns an <code>ConflictException</code>. </p>
    #            <note>
    #               <p> This parameter is optional when using the CLI or SDK. </p>
    #            </note>
    # @example To update a group
    #   # The following command updates the preferred language and country attributes for the GuestsLocal group.
    #   params = {
    #     client_token: "550e8400-e29b-41d4-a716-446655440000",
    #     directory_id: "d-12233abcde",
    #     group_scope: Global,
    #     group_type: Security,
    #     other_attributes: {
    #       "preferredLanguage" => {
    #     "S" => English
    #   },
    #       "co" => {
    #     "S" => US
    #   }
    #     },
    #     sam_account_name: "GuestsLocal",
    #     update_type: REPLACE
    #   }
    #   options = {}
    #   response = client.update_group(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_id: "DirectoryId", # required
    #     sam_account_name: "GroupName", # required
    #     group_type: "Distribution" # One of: ["Distribution", "Security"],
    #     group_scope: "DomainLocal" # One of: ["DomainLocal", "Global", "Universal", "BuiltinLocal"],
    #     other_attributes: {
    #       "LdapDisplayName" => {
    #         # One of:
    #         s: "StringAttributeValue",
    #         n: 1,
    #         bool: false,
    #         ss: ["StringAttributeValue"]
    #       }
    #     },
    #     update_type: "ADD" # One of: ["ADD", "REPLACE", "REMOVE"],
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.update_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateGroupResult]
    def update_group(params = {}, options = {})
      request = build_request(:update_group, params)
      request.send_request(options)
    end

    # <p> Updates user information. </p>
    # @param [Hash, Types::UpdateUserRequest] params
    # @option params [String] :directory_id
    #   <p> The identifier (ID) of the directory that's associated with the user. </p>
    # @option params [String] :sam_account_name
    #   <p> The name of the user. </p>
    # @option params [String] :email_address
    #   <p> The email address of the user. </p>
    # @option params [String] :given_name
    #   <p> The first name of the user. </p>
    # @option params [String] :surname
    #   <p> The last name of the user. </p>
    # @option params [Hash<String, Types::AttributeValue>] :other_attributes
    #   <p> An expression that defines one or more attribute names with the data type and value of
    #         each attribute. A key is an attribute name, and the value is a list of maps. For a list of
    #         supported attributes, see <a href="https://docs.aws.amazon.com/directoryservice/latest/admin-guide/ad_data_attributes.html">Directory Service Data Attributes</a>. </p>
    #            <note>
    #               <p> Attribute names are case insensitive. </p>
    #            </note>
    # @option params [String] :update_type
    #   <p> The type of update to be performed. If no value exists for the attribute, use
    #           <code>ADD</code>. Otherwise, use <code>REPLACE</code> to change an attribute value or
    #           <code>REMOVE</code> to clear the attribute value. </p>
    # @option params [String] :client_token
    #   <p> A unique and case-sensitive identifier that you provide to make sure the idempotency of
    #         the request, so multiple identical calls have the same effect as one single call. </p>
    #            <p> A client token is valid for 8 hours after the first request that uses it completes. After
    #         8 hours, any request with the same client token is treated as a new request. If the request
    #         succeeds, any future uses of that token will be idempotent for another 8 hours. </p>
    #            <p> If you submit a request with the same client token but change one of the other parameters
    #         within the 8-hour idempotency window, Directory Service Data returns an <code>ConflictException</code>. </p>
    #            <note>
    #               <p> This parameter is optional when using the CLI or SDK. </p>
    #            </note>
    # @example To update user attributes
    #   # The following command
    #   params = {
    #     client_token: "550e8400-e29b-41d4-a716-446655440000",
    #     directory_id: "d-12233abcde",
    #     email_address: "twhitlock@examplecorp.com",
    #     given_name: "Terry",
    #     other_attributes: {
    #       "telephoneNumber" => {
    #     "S" => 212-555-1111
    #   },
    #       "homePhone" => {
    #     "S" => 333-333-3333
    #   },
    #       "physicalDeliveryOfficeName" => {
    #     "S" => Example Company
    #   },
    #       "streetAddress" => {
    #     "S" => 123 Any Street
    #   },
    #       "postalCode" => {
    #     "S" => 54321
    #   },
    #       "st" => {
    #     "S" => WA
    #   },
    #       "co" => {
    #     "S" => US
    #   }
    #     },
    #     sam_account_name: "twhitlock",
    #     surname: "Whitlock",
    #     update_type: ADD
    #   }
    #   options = {}
    #   response = client.update_user(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_id: "DirectoryId", # required
    #     sam_account_name: "UserName", # required
    #     email_address: "EmailAddress",
    #     given_name: "GivenName",
    #     surname: "Surname",
    #     other_attributes: {
    #       "LdapDisplayName" => {
    #         # One of:
    #         s: "StringAttributeValue",
    #         n: 1,
    #         bool: false,
    #         ss: ["StringAttributeValue"]
    #       }
    #     },
    #     update_type: "ADD" # One of: ["ADD", "REPLACE", "REMOVE"],
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.update_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateUserResult]
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
      context[:gem_name] = 'aws-sdk-directoryservicedata'
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
