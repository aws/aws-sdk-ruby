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
require 'smithy-client/plugins/stub_responses'
require 'aws-sdk-core/plugins/sigv4'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/rest_json_protocol'

module Aws::Chime
  # An API client for Aws::Chime.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::UCBuzzConsoleService

    add_plugin(::Aws::Chime::Plugins::Endpoint)
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
    add_plugin(Smithy::Client::Plugins::StubResponses)
    add_plugin(Aws::Core::Plugins::SigV4)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::RestJsonProtocol)

    # @param options [Hash] Client options
    # @option options [String] :access_key_id
    # @option options [String] :account_id
    # @option options [Boolean] :adaptive_retry_wait_to_fill (true)
    #  When true, the request will sleep until there is sufficient client side capacity to retry
    #  the request. When false, the request will raise a `CapacityNotAvailableError` and will
    #  not retry instead of sleeping.
    # @option options [#resolve(context)] :auth_resolver (AuthResolver.new)
    #  An object that resolves authentication schemes for request signing
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
    #  Custom Endpoint
    # @option options [Aws::Chime::EndpointProvider] :endpoint_provider
    #  The endpoint provider used to resolve endpoints. Any object that responds to `#resolve(parameters)`.
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
    #  TODO
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
    # @option options [Boolean] :use_dual_stack_endpoint
    #  TODO
    # @option options [Boolean] :use_fips_endpoint
    #  TODO
    # @option options [Boolean] :validate_params (true)
    #  When `true`, request parameters are validated before sending the request.
    def initialize(*options)
      super
    end

    # <p>Associates a phone number with the specified Amazon Chime user.</p>
    # @param [Hash, Types::AssociatePhoneNumberWithUserRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Chime account ID.</p>
    # @option params [String] :user_id
    #   <p>The user ID.</p>
    # @option params [String] :e164_phone_number
    #   <p>The phone number, in E.164 format.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "String", # required
    #     user_id: "String", # required
    #     e164_phone_number: "E164PhoneNumber", # required
    #   }
    #   options = {}
    #   response = client.associate_phone_number_with_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AssociatePhoneNumberWithUserResponse]
    def associate_phone_number_with_user(params = {}, options = {})
      request = build_request(:associate_phone_number_with_user, params)
      request.send_request(options)
    end

    # <p>Associates the specified sign-in delegate groups with the specified Amazon Chime account.</p>
    # @param [Hash, Types::AssociateSigninDelegateGroupsWithAccountRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Chime account ID.</p>
    # @option params [Array<Types::SigninDelegateGroup>] :signin_delegate_groups
    #   <p>The sign-in delegate groups.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "NonEmptyString", # required
    #     signin_delegate_groups: [ # required
    #       {
    #         group_name: "NonEmptyString"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.associate_signin_delegate_groups_with_account(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AssociateSigninDelegateGroupsWithAccountResponse]
    def associate_signin_delegate_groups_with_account(params = {}, options = {})
      request = build_request(:associate_signin_delegate_groups_with_account, params)
      request.send_request(options)
    end

    # <p>Adds up to 50 members to a chat room in an Amazon Chime Enterprise account. Members can be users or bots. The member role designates whether the member is a 
    #     chat room administrator or a general chat room member.</p>
    # @param [Hash, Types::BatchCreateRoomMembershipRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Chime account ID.</p>
    # @option params [String] :room_id
    #   <p>The room ID.</p>
    # @option params [Array<Types::MembershipItem>] :membership_item_list
    #   <p>The list of membership items.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "NonEmptyString", # required
    #     room_id: "NonEmptyString", # required
    #     membership_item_list: [ # required
    #       {
    #         member_id: "NonEmptyString",
    #         role: "Administrator" # One of: ["Administrator", "Member"]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_create_room_membership(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     errors: [
    #       {
    #         member_id: "NonEmptyString",
    #         error_code: "BadRequest" # One of: ["BadRequest", "Conflict", "Forbidden", "NotFound", "PreconditionFailed", "ResourceLimitExceeded", "ServiceFailure", "AccessDenied", "ServiceUnavailable", "Throttled", "Throttling", "Unauthorized", "Unprocessable", "VoiceConnectorGroupAssociationsExist", "PhoneNumberAssociationsExist"],
    #         error_message: "String"
    #       }
    #     ]
    #   }
    # @return [Types::BatchCreateRoomMembershipResponse]
    def batch_create_room_membership(params = {}, options = {})
      request = build_request(:batch_create_room_membership, params)
      request.send_request(options)
    end

    # <p>
    # Moves phone numbers into the 
    # <b>Deletion queue</b>. Phone numbers must be disassociated from any users or Amazon Chime Voice Connectors before they can be deleted.
    # </p>
    #          <p>
    # Phone numbers remain in the 
    # <b>Deletion queue</b> for 7 days before they are deleted permanently.
    # </p>
    # @param [Hash, Types::BatchDeletePhoneNumberRequest] params
    # @option params [Array<String>] :phone_number_ids
    #   <p>List of phone number IDs.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     phone_number_ids: ["String"], # required
    #   }
    #   options = {}
    #   response = client.batch_delete_phone_number(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     phone_number_errors: [
    #       {
    #         phone_number_id: "NonEmptyString",
    #         error_code: "BadRequest" # One of: ["BadRequest", "Conflict", "Forbidden", "NotFound", "PreconditionFailed", "ResourceLimitExceeded", "ServiceFailure", "AccessDenied", "ServiceUnavailable", "Throttled", "Throttling", "Unauthorized", "Unprocessable", "VoiceConnectorGroupAssociationsExist", "PhoneNumberAssociationsExist"],
    #         error_message: "String"
    #       }
    #     ]
    #   }
    # @return [Types::BatchDeletePhoneNumberResponse]
    def batch_delete_phone_number(params = {}, options = {})
      request = build_request(:batch_delete_phone_number, params)
      request.send_request(options)
    end

    # <p>Suspends up to 50 users from a <code>Team</code> or <code>EnterpriseLWA</code> Amazon Chime
    #             account. For more information about different account types, see <a href="https://docs.aws.amazon.com/chime/latest/ag/manage-chime-account.html">Managing Your Amazon Chime Accounts</a> in the <i>Amazon Chime Administration
    #                 Guide</i>.</p>
    #          <p>Users suspended from a <code>Team</code> account are disassociated from the account,but they
    #             can continue to use Amazon Chime as free users. To remove the suspension from suspended
    #                 <code>Team</code> account users, invite them to the <code>Team</code> account again.
    #             You can use the <a>InviteUsers</a> action to do so.</p>
    #          <p>Users suspended from an <code>EnterpriseLWA</code> account are immediately signed out of
    #             Amazon Chime and can no longer sign in. To remove the suspension from suspended <code>EnterpriseLWA</code> account users, use the 
    #     <a>BatchUnsuspendUser</a> action.</p>
    #          <p>
    # To sign out users without suspending them, use the 
    # <a>LogoutUser</a> action.</p>
    # @param [Hash, Types::BatchSuspendUserRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Chime account ID.</p>
    # @option params [Array<String>] :user_id_list
    #   <p>The request containing the user IDs to suspend.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "NonEmptyString", # required
    #     user_id_list: ["NonEmptyString"], # required
    #   }
    #   options = {}
    #   response = client.batch_suspend_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     user_errors: [
    #       {
    #         user_id: "NonEmptyString",
    #         error_code: "BadRequest" # One of: ["BadRequest", "Conflict", "Forbidden", "NotFound", "PreconditionFailed", "ResourceLimitExceeded", "ServiceFailure", "AccessDenied", "ServiceUnavailable", "Throttled", "Throttling", "Unauthorized", "Unprocessable", "VoiceConnectorGroupAssociationsExist", "PhoneNumberAssociationsExist"],
    #         error_message: "String"
    #       }
    #     ]
    #   }
    # @return [Types::BatchSuspendUserResponse]
    def batch_suspend_user(params = {}, options = {})
      request = build_request(:batch_suspend_user, params)
      request.send_request(options)
    end

    # <p>Removes the suspension from up to 50 previously suspended users for the specified Amazon
    #             Chime <code>EnterpriseLWA</code> account. Only users on <code>EnterpriseLWA</code>
    #             accounts can be unsuspended using this action. For more information about different account types, see 
    #     <a href="https://docs.aws.amazon.com/chime/latest/ag/manage-chime-account.html">
    #         Managing Your Amazon Chime Accounts
    #     </a> in the account types, in the <i>Amazon Chime Administration Guide</i>.
    # </p>
    #          <p>Previously suspended users who are unsuspended using this action are returned to 
    # <code>Registered</code>
    # status. Users who are not previously suspended are ignored.</p>
    # @param [Hash, Types::BatchUnsuspendUserRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Chime account ID.</p>
    # @option params [Array<String>] :user_id_list
    #   <p>The request containing the user IDs to unsuspend.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "NonEmptyString", # required
    #     user_id_list: ["NonEmptyString"], # required
    #   }
    #   options = {}
    #   response = client.batch_unsuspend_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     user_errors: [
    #       {
    #         user_id: "NonEmptyString",
    #         error_code: "BadRequest" # One of: ["BadRequest", "Conflict", "Forbidden", "NotFound", "PreconditionFailed", "ResourceLimitExceeded", "ServiceFailure", "AccessDenied", "ServiceUnavailable", "Throttled", "Throttling", "Unauthorized", "Unprocessable", "VoiceConnectorGroupAssociationsExist", "PhoneNumberAssociationsExist"],
    #         error_message: "String"
    #       }
    #     ]
    #   }
    # @return [Types::BatchUnsuspendUserResponse]
    def batch_unsuspend_user(params = {}, options = {})
      request = build_request(:batch_unsuspend_user, params)
      request.send_request(options)
    end

    # <p>Updates phone number product types or calling names. You can update one attribute at a time for each <code>UpdatePhoneNumberRequestItem</code>. For example, you can update the product type or the calling name.</p>
    #          <p>For toll-free numbers, you cannot use the Amazon Chime Business Calling product type. For numbers outside the U.S., you must use the Amazon Chime SIP Media Application Dial-In product type.</p>
    #          <p>Updates to outbound calling names can take up to 72 hours to complete. Pending updates to outbound calling names must be complete before you can request another update.</p>
    # @param [Hash, Types::BatchUpdatePhoneNumberRequest] params
    # @option params [Array<Types::UpdatePhoneNumberRequestItem>] :update_phone_number_request_items
    #   <p>The request containing the phone number IDs and product types or calling names to update.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     update_phone_number_request_items: [ # required
    #       {
    #         phone_number_id: "NonEmptyString", # required
    #         product_type: "BusinessCalling" # One of: ["BusinessCalling", "VoiceConnector", "SipMediaApplicationDialIn"],
    #         calling_name: "CallingName"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_update_phone_number(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     phone_number_errors: [
    #       {
    #         phone_number_id: "NonEmptyString",
    #         error_code: "BadRequest" # One of: ["BadRequest", "Conflict", "Forbidden", "NotFound", "PreconditionFailed", "ResourceLimitExceeded", "ServiceFailure", "AccessDenied", "ServiceUnavailable", "Throttled", "Throttling", "Unauthorized", "Unprocessable", "VoiceConnectorGroupAssociationsExist", "PhoneNumberAssociationsExist"],
    #         error_message: "String"
    #       }
    #     ]
    #   }
    # @return [Types::BatchUpdatePhoneNumberResponse]
    def batch_update_phone_number(params = {}, options = {})
      request = build_request(:batch_update_phone_number, params)
      request.send_request(options)
    end

    # <p>Updates user details within the <a>UpdateUserRequestItem</a> object for up to 20 users for the specified Amazon Chime account. Currently, only <code>LicenseType</code> updates are supported for this action.</p>
    # @param [Hash, Types::BatchUpdateUserRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Chime account ID.</p>
    # @option params [Array<Types::UpdateUserRequestItem>] :update_user_request_items
    #   <p>The request containing the user IDs and details to update.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "NonEmptyString", # required
    #     update_user_request_items: [ # required
    #       {
    #         user_id: "NonEmptyString", # required
    #         license_type: "Basic" # One of: ["Basic", "Plus", "Pro", "ProTrial"],
    #         user_type: "PrivateUser" # One of: ["PrivateUser", "SharedDevice"],
    #         alexa_for_business_metadata: {
    #           is_alexa_for_business_enabled: false,
    #           alexa_for_business_room_arn: "SensitiveString"
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_update_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     user_errors: [
    #       {
    #         user_id: "NonEmptyString",
    #         error_code: "BadRequest" # One of: ["BadRequest", "Conflict", "Forbidden", "NotFound", "PreconditionFailed", "ResourceLimitExceeded", "ServiceFailure", "AccessDenied", "ServiceUnavailable", "Throttled", "Throttling", "Unauthorized", "Unprocessable", "VoiceConnectorGroupAssociationsExist", "PhoneNumberAssociationsExist"],
    #         error_message: "String"
    #       }
    #     ]
    #   }
    # @return [Types::BatchUpdateUserResponse]
    def batch_update_user(params = {}, options = {})
      request = build_request(:batch_update_user, params)
      request.send_request(options)
    end

    # <p>Creates an Amazon Chime account under the administrator's AWS account. Only <code>Team</code>
    #             account types are currently supported for this action. For more information about different account types, see 
    #     <a href="https://docs.aws.amazon.com/chime/latest/ag/manage-chime-account.html">Managing Your Amazon Chime Accounts</a> in the <i>Amazon Chime 
    #         Administration Guide</i>.</p>
    # @param [Hash, Types::CreateAccountRequest] params
    # @option params [String] :name
    #   <p>The name of the Amazon Chime account.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "AccountName", # required
    #   }
    #   options = {}
    #   response = client.create_account(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     account: {
    #       aws_account_id: "String", # required
    #       account_id: "String", # required
    #       name: "String", # required
    #       account_type: "Team" # One of: ["Team", "EnterpriseDirectory", "EnterpriseLWA", "EnterpriseOIDC"],
    #       created_timestamp: Time.now,
    #       default_license: "Basic" # One of: ["Basic", "Plus", "Pro", "ProTrial"],
    #       supported_licenses: ["Basic" # One of: ["Basic", "Plus", "Pro", "ProTrial"]],
    #       account_status: "Suspended" # One of: ["Suspended", "Active"],
    #       signin_delegate_groups: [
    #         {
    #           group_name: "NonEmptyString"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::CreateAccountResponse]
    def create_account(params = {}, options = {})
      request = build_request(:create_account, params)
      request.send_request(options)
    end

    # <p>Creates a bot for an Amazon Chime Enterprise account.</p>
    # @param [Hash, Types::CreateBotRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Chime account ID.</p>
    # @option params [String] :display_name
    #   <p>The bot display name.</p>
    # @option params [String] :domain
    #   <p>The domain of the Amazon Chime Enterprise account.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "NonEmptyString", # required
    #     display_name: "SensitiveString", # required
    #     domain: "NonEmptyString"
    #   }
    #   options = {}
    #   response = client.create_bot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     bot: {
    #       bot_id: "String",
    #       user_id: "String",
    #       display_name: "SensitiveString",
    #       bot_type: "ChatBot" # One of: ["ChatBot"],
    #       disabled: false,
    #       created_timestamp: Time.now,
    #       updated_timestamp: Time.now,
    #       bot_email: "SensitiveString",
    #       security_token: "SensitiveString"
    #     }
    #   }
    # @return [Types::CreateBotResponse]
    def create_bot(params = {}, options = {})
      request = build_request(:create_bot, params)
      request.send_request(options)
    end

    # <p>Uses the join token and call metadata in a meeting request (From number, To number, and so forth) to initiate an outbound call to a public 
    #     switched telephone network (PSTN) and join them into a Chime meeting. Also ensures that the From number belongs to the customer.</p>
    #          <p>To play welcome audio or implement an interactive voice response (IVR), use the 
    # <code>CreateSipMediaApplicationCall</code> action with the corresponding SIP media application ID.</p>
    #          <important>
    #             <p>
    #                <b>This API is not available in a dedicated namespace.</b>
    #             </p>
    #          </important>
    # @param [Hash, Types::CreateMeetingDialOutRequest] params
    # @option params [String] :meeting_id
    #   <p>The Amazon Chime SDK meeting ID.</p>
    # @option params [String] :from_phone_number
    #   <p>Phone number used as the caller ID when the remote party receives a call.</p>
    # @option params [String] :to_phone_number
    #   <p>Phone number called when inviting someone to a meeting.</p>
    # @option params [String] :join_token
    #   <p>Token used by the Amazon Chime SDK attendee. Call the <a href="https://docs.aws.amazon.com/chime/latest/APIReference/API_CreateAttendee.html">CreateAttendee</a> action to get a join token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     meeting_id: "GuidString", # required
    #     from_phone_number: "E164PhoneNumber", # required
    #     to_phone_number: "E164PhoneNumber", # required
    #     join_token: "JoinTokenString", # required
    #   }
    #   options = {}
    #   response = client.create_meeting_dial_out(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     transaction_id: "GuidString"
    #   }
    # @return [Types::CreateMeetingDialOutResponse]
    def create_meeting_dial_out(params = {}, options = {})
      request = build_request(:create_meeting_dial_out, params)
      request.send_request(options)
    end

    # <p>Creates an order for phone numbers to be provisioned. For toll-free numbers, you cannot use the Amazon Chime Business Calling product type. 
    #         For numbers outside the U.S., you must use the Amazon Chime SIP Media Application Dial-In product type.</p>
    # @param [Hash, Types::CreatePhoneNumberOrderRequest] params
    # @option params [String] :product_type
    #   <p>The phone number product type.</p>
    # @option params [Array<String>] :e164_phone_numbers
    #   <p>List of phone numbers, in E.164 format.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     product_type: "BusinessCalling" # One of: ["BusinessCalling", "VoiceConnector", "SipMediaApplicationDialIn"], # required
    #     e164_phone_numbers: ["E164PhoneNumber"], # required
    #   }
    #   options = {}
    #   response = client.create_phone_number_order(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     phone_number_order: {
    #       phone_number_order_id: "GuidString",
    #       product_type: "BusinessCalling" # One of: ["BusinessCalling", "VoiceConnector", "SipMediaApplicationDialIn"],
    #       status: "Processing" # One of: ["Processing", "Successful", "Failed", "Partial"],
    #       ordered_phone_numbers: [
    #         {
    #           e164_phone_number: "E164PhoneNumber",
    #           status: "Processing" # One of: ["Processing", "Acquired", "Failed"]
    #         }
    #       ],
    #       created_timestamp: Time.now,
    #       updated_timestamp: Time.now
    #     }
    #   }
    # @return [Types::CreatePhoneNumberOrderResponse]
    def create_phone_number_order(params = {}, options = {})
      request = build_request(:create_phone_number_order, params)
      request.send_request(options)
    end

    # <p>Creates a chat room for the specified Amazon Chime Enterprise account.</p>
    # @param [Hash, Types::CreateRoomRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Chime account ID.</p>
    # @option params [String] :name
    #   <p>The room name.</p>
    # @option params [String] :client_request_token
    #   <p>The idempotency token for the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "NonEmptyString", # required
    #     name: "SensitiveString", # required
    #     client_request_token: "ClientRequestToken"
    #   }
    #   options = {}
    #   response = client.create_room(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     room: {
    #       room_id: "NonEmptyString",
    #       name: "SensitiveString",
    #       account_id: "NonEmptyString",
    #       created_by: "NonEmptyString",
    #       created_timestamp: Time.now,
    #       updated_timestamp: Time.now
    #     }
    #   }
    # @return [Types::CreateRoomResponse]
    def create_room(params = {}, options = {})
      request = build_request(:create_room, params)
      request.send_request(options)
    end

    # <p>Adds a member to a chat room in an Amazon Chime Enterprise account. A member can be either a user or a bot. The member role designates whether the member is a chat room administrator or a general chat room member.</p>
    # @param [Hash, Types::CreateRoomMembershipRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Chime account ID.</p>
    # @option params [String] :room_id
    #   <p>The room ID.</p>
    # @option params [String] :member_id
    #   <p>The Amazon Chime member ID (user ID or bot ID).</p>
    # @option params [String] :role
    #   <p>The role of the member.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "NonEmptyString", # required
    #     room_id: "NonEmptyString", # required
    #     member_id: "NonEmptyString", # required
    #     role: "Administrator" # One of: ["Administrator", "Member"]
    #   }
    #   options = {}
    #   response = client.create_room_membership(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     room_membership: {
    #       room_id: "NonEmptyString",
    #       member: {
    #         member_id: "NonEmptyString",
    #         member_type: "User" # One of: ["User", "Bot", "Webhook"],
    #         email: "SensitiveString",
    #         full_name: "SensitiveString",
    #         account_id: "NonEmptyString"
    #       },
    #       role: "Administrator" # One of: ["Administrator", "Member"],
    #       invited_by: "NonEmptyString",
    #       updated_timestamp: Time.now
    #     }
    #   }
    # @return [Types::CreateRoomMembershipResponse]
    def create_room_membership(params = {}, options = {})
      request = build_request(:create_room_membership, params)
      request.send_request(options)
    end

    # <p>Creates a user under the specified Amazon Chime account.</p>
    # @param [Hash, Types::CreateUserRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Chime account ID.</p>
    # @option params [String] :username
    #   <p>The user name.</p>
    # @option params [String] :email
    #   <p>The user's email address.</p>
    # @option params [String] :user_type
    #   <p>The user type.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "NonEmptyString", # required
    #     username: "String",
    #     email: "EmailAddress",
    #     user_type: "PrivateUser" # One of: ["PrivateUser", "SharedDevice"]
    #   }
    #   options = {}
    #   response = client.create_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     user: {
    #       user_id: "String", # required
    #       account_id: "String",
    #       primary_email: "EmailAddress",
    #       primary_provisioned_number: "SensitiveString",
    #       display_name: "SensitiveString",
    #       license_type: "Basic" # One of: ["Basic", "Plus", "Pro", "ProTrial"],
    #       user_type: "PrivateUser" # One of: ["PrivateUser", "SharedDevice"],
    #       user_registration_status: "Unregistered" # One of: ["Unregistered", "Registered", "Suspended"],
    #       user_invitation_status: "Pending" # One of: ["Pending", "Accepted", "Failed"],
    #       registered_on: Time.now,
    #       invited_on: Time.now,
    #       alexa_for_business_metadata: {
    #         is_alexa_for_business_enabled: false,
    #         alexa_for_business_room_arn: "SensitiveString"
    #       },
    #       personal_pin: "String"
    #     }
    #   }
    # @return [Types::CreateUserResponse]
    def create_user(params = {}, options = {})
      request = build_request(:create_user, params)
      request.send_request(options)
    end

    # <p>Deletes the specified Amazon Chime account. You must suspend all users before deleting
    #                 <code>Team</code> account. You can use the <a>BatchSuspendUser</a> action
    #             to dodo.</p>
    #          <p>For <code>EnterpriseLWA</code> and <code>EnterpriseAD</code> accounts, you must release the
    #             claimed domains for your Amazon Chime account before deletion. As soon as you release
    #             the domain, all users under that account are suspended.</p>
    #          <p>Deleted accounts appear in your <code>Disabled</code> accounts list for 90 days. To restore
    #             deleted account from your <code>Disabled</code> accounts list, you must contact AWS
    #             Support.</p>
    #          <p>After 90 days, deleted accounts are permanently removed from your 
    # <code>Disabled</code> accounts list.</p>
    # @param [Hash, Types::DeleteAccountRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Chime account ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "NonEmptyString", # required
    #   }
    #   options = {}
    #   response = client.delete_account(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteAccountResponse]
    def delete_account(params = {}, options = {})
      request = build_request(:delete_account, params)
      request.send_request(options)
    end

    # <p>Deletes the events configuration that allows a bot to receive outgoing events.</p>
    # @param [Hash, Types::DeleteEventsConfigurationRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Chime account ID.</p>
    # @option params [String] :bot_id
    #   <p>The bot ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "NonEmptyString", # required
    #     bot_id: "NonEmptyString", # required
    #   }
    #   options = {}
    #   response = client.delete_events_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_events_configuration(params = {}, options = {})
      request = build_request(:delete_events_configuration, params)
      request.send_request(options)
    end

    # <p>Moves the specified phone number into the <b>Deletion queue</b>. A
    #             phone number must be disassociated from any users or Amazon Chime Voice Connectors
    #             before it can be deleted.</p>
    #          <p>Deleted phone numbers remain in the 
    # <b>Deletion queue</b>
    # for 7 days before they are deleted permanently.</p>
    # @param [Hash, Types::DeletePhoneNumberRequest] params
    # @option params [String] :phone_number_id
    #   <p>The phone number ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     phone_number_id: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_phone_number(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_phone_number(params = {}, options = {})
      request = build_request(:delete_phone_number, params)
      request.send_request(options)
    end

    # <p>Deletes a chat room in an Amazon Chime Enterprise account.</p>
    # @param [Hash, Types::DeleteRoomRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Chime account ID.</p>
    # @option params [String] :room_id
    #   <p>The chat room ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "NonEmptyString", # required
    #     room_id: "NonEmptyString", # required
    #   }
    #   options = {}
    #   response = client.delete_room(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_room(params = {}, options = {})
      request = build_request(:delete_room, params)
      request.send_request(options)
    end

    # <p>Removes a member from a chat room in an Amazon Chime Enterprise account.</p>
    # @param [Hash, Types::DeleteRoomMembershipRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Chime account ID.</p>
    # @option params [String] :room_id
    #   <p>The room ID.</p>
    # @option params [String] :member_id
    #   <p>The member ID (user ID or bot ID).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "NonEmptyString", # required
    #     room_id: "NonEmptyString", # required
    #     member_id: "NonEmptyString", # required
    #   }
    #   options = {}
    #   response = client.delete_room_membership(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_room_membership(params = {}, options = {})
      request = build_request(:delete_room_membership, params)
      request.send_request(options)
    end

    # <p>Disassociates the primary provisioned phone number from the specified Amazon Chime user.</p>
    # @param [Hash, Types::DisassociatePhoneNumberFromUserRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Chime account ID.</p>
    # @option params [String] :user_id
    #   <p>The user ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "String", # required
    #     user_id: "String", # required
    #   }
    #   options = {}
    #   response = client.disassociate_phone_number_from_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisassociatePhoneNumberFromUserResponse]
    def disassociate_phone_number_from_user(params = {}, options = {})
      request = build_request(:disassociate_phone_number_from_user, params)
      request.send_request(options)
    end

    # <p>Disassociates the specified sign-in delegate groups from the specified Amazon Chime account.</p>
    # @param [Hash, Types::DisassociateSigninDelegateGroupsFromAccountRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Chime account ID.</p>
    # @option params [Array<String>] :group_names
    #   <p>The sign-in delegate group names.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "NonEmptyString", # required
    #     group_names: ["String"], # required
    #   }
    #   options = {}
    #   response = client.disassociate_signin_delegate_groups_from_account(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisassociateSigninDelegateGroupsFromAccountResponse]
    def disassociate_signin_delegate_groups_from_account(params = {}, options = {})
      request = build_request(:disassociate_signin_delegate_groups_from_account, params)
      request.send_request(options)
    end

    # <p>Retrieves details for the specified Amazon Chime account, such as account type and supported
    #             licenses.</p>
    # @param [Hash, Types::GetAccountRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Chime account ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "NonEmptyString", # required
    #   }
    #   options = {}
    #   response = client.get_account(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     account: {
    #       aws_account_id: "String", # required
    #       account_id: "String", # required
    #       name: "String", # required
    #       account_type: "Team" # One of: ["Team", "EnterpriseDirectory", "EnterpriseLWA", "EnterpriseOIDC"],
    #       created_timestamp: Time.now,
    #       default_license: "Basic" # One of: ["Basic", "Plus", "Pro", "ProTrial"],
    #       supported_licenses: ["Basic" # One of: ["Basic", "Plus", "Pro", "ProTrial"]],
    #       account_status: "Suspended" # One of: ["Suspended", "Active"],
    #       signin_delegate_groups: [
    #         {
    #           group_name: "NonEmptyString"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetAccountResponse]
    def get_account(params = {}, options = {})
      request = build_request(:get_account, params)
      request.send_request(options)
    end

    # <p>Retrieves account settings for the specified Amazon Chime account ID, such as remote control
    #             and dialout settings. For more information about these settings, see 
    #     <a href="https://docs.aws.amazon.com/chime/latest/ag/policies.html">Use the Policies Page</a> in the <i>Amazon Chime Administration Guide</i>.
    # </p>
    # @param [Hash, Types::GetAccountSettingsRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Chime account ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "NonEmptyString", # required
    #   }
    #   options = {}
    #   response = client.get_account_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     account_settings: {
    #       disable_remote_control: false,
    #       enable_dial_out: false
    #     }
    #   }
    # @return [Types::GetAccountSettingsResponse]
    def get_account_settings(params = {}, options = {})
      request = build_request(:get_account_settings, params)
      request.send_request(options)
    end

    # <p>Retrieves details for the specified bot, such as bot email address, bot type, status, and display name.</p>
    # @param [Hash, Types::GetBotRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Chime account ID.</p>
    # @option params [String] :bot_id
    #   <p>The bot ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "NonEmptyString", # required
    #     bot_id: "NonEmptyString", # required
    #   }
    #   options = {}
    #   response = client.get_bot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     bot: {
    #       bot_id: "String",
    #       user_id: "String",
    #       display_name: "SensitiveString",
    #       bot_type: "ChatBot" # One of: ["ChatBot"],
    #       disabled: false,
    #       created_timestamp: Time.now,
    #       updated_timestamp: Time.now,
    #       bot_email: "SensitiveString",
    #       security_token: "SensitiveString"
    #     }
    #   }
    # @return [Types::GetBotResponse]
    def get_bot(params = {}, options = {})
      request = build_request(:get_bot, params)
      request.send_request(options)
    end

    # <p>Gets details for an events configuration that allows a bot to receive outgoing events, such as an HTTPS endpoint or Lambda function ARN.</p>
    # @param [Hash, Types::GetEventsConfigurationRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Chime account ID.</p>
    # @option params [String] :bot_id
    #   <p>The bot ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "NonEmptyString", # required
    #     bot_id: "NonEmptyString", # required
    #   }
    #   options = {}
    #   response = client.get_events_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     events_configuration: {
    #       bot_id: "String",
    #       outbound_events_https_endpoint: "SensitiveString",
    #       lambda_function_arn: "SensitiveString"
    #     }
    #   }
    # @return [Types::GetEventsConfigurationResponse]
    def get_events_configuration(params = {}, options = {})
      request = build_request(:get_events_configuration, params)
      request.send_request(options)
    end

    # <p>Retrieves global settings for the administrator's AWS account, such as Amazon Chime Business
    #             Calling and Amazon Chime Voice Connector settings.</p>
    # @param [Hash, Smithy::Schema::EmptyStructure] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_global_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     business_calling: {
    #       cdr_bucket: "String"
    #     },
    #     voice_connector: {
    #       cdr_bucket: "String"
    #     }
    #   }
    # @return [Types::GetGlobalSettingsResponse]
    def get_global_settings(params = {}, options = {})
      request = build_request(:get_global_settings, params)
      request.send_request(options)
    end

    # <p>Retrieves details for the specified phone number ID, such as associations, capabilities, and product type.</p>
    # @param [Hash, Types::GetPhoneNumberRequest] params
    # @option params [String] :phone_number_id
    #   <p>The phone number ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     phone_number_id: "String", # required
    #   }
    #   options = {}
    #   response = client.get_phone_number(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     phone_number: {
    #       phone_number_id: "String",
    #       e164_phone_number: "E164PhoneNumber",
    #       country: "Alpha2CountryCode",
    #       type: "Local" # One of: ["Local", "TollFree"],
    #       product_type: "BusinessCalling" # One of: ["BusinessCalling", "VoiceConnector", "SipMediaApplicationDialIn"],
    #       status: "AcquireInProgress" # One of: ["AcquireInProgress", "AcquireFailed", "Unassigned", "Assigned", "ReleaseInProgress", "DeleteInProgress", "ReleaseFailed", "DeleteFailed"],
    #       capabilities: {
    #         inbound_call: false,
    #         outbound_call: false,
    #         inbound_sms: false,
    #         outbound_sms: false,
    #         inbound_mms: false,
    #         outbound_mms: false
    #       },
    #       associations: [
    #         {
    #           value: "String",
    #           name: "AccountId" # One of: ["AccountId", "UserId", "VoiceConnectorId", "VoiceConnectorGroupId", "SipRuleId"],
    #           associated_timestamp: Time.now
    #         }
    #       ],
    #       calling_name: "CallingName",
    #       calling_name_status: "Unassigned" # One of: ["Unassigned", "UpdateInProgress", "UpdateSucceeded", "UpdateFailed"],
    #       created_timestamp: Time.now,
    #       updated_timestamp: Time.now,
    #       deletion_timestamp: Time.now
    #     }
    #   }
    # @return [Types::GetPhoneNumberResponse]
    def get_phone_number(params = {}, options = {})
      request = build_request(:get_phone_number, params)
      request.send_request(options)
    end

    # <p>Retrieves details for the specified phone number order, such as the order creation timestamp, phone
    #             numbers in E.164 format, product type, and order status.</p>
    # @param [Hash, Types::GetPhoneNumberOrderRequest] params
    # @option params [String] :phone_number_order_id
    #   <p>The ID for the phone number order.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     phone_number_order_id: "GuidString", # required
    #   }
    #   options = {}
    #   response = client.get_phone_number_order(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     phone_number_order: {
    #       phone_number_order_id: "GuidString",
    #       product_type: "BusinessCalling" # One of: ["BusinessCalling", "VoiceConnector", "SipMediaApplicationDialIn"],
    #       status: "Processing" # One of: ["Processing", "Successful", "Failed", "Partial"],
    #       ordered_phone_numbers: [
    #         {
    #           e164_phone_number: "E164PhoneNumber",
    #           status: "Processing" # One of: ["Processing", "Acquired", "Failed"]
    #         }
    #       ],
    #       created_timestamp: Time.now,
    #       updated_timestamp: Time.now
    #     }
    #   }
    # @return [Types::GetPhoneNumberOrderResponse]
    def get_phone_number_order(params = {}, options = {})
      request = build_request(:get_phone_number_order, params)
      request.send_request(options)
    end

    # <p>Retrieves the phone number settings for the administrator's AWS account, such as the default outbound calling name.</p>
    # @param [Hash, Smithy::Schema::EmptyStructure] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_phone_number_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     calling_name: "CallingName",
    #     calling_name_updated_timestamp: Time.now
    #   }
    # @return [Types::GetPhoneNumberSettingsResponse]
    def get_phone_number_settings(params = {}, options = {})
      request = build_request(:get_phone_number_settings, params)
      request.send_request(options)
    end

    # <p>
    # Gets the retention settings for the specified Amazon Chime Enterprise account. For more information about retention settings, see 
    # <a href="https://docs.aws.amazon.com/chime/latest/ag/chat-retention.html">Managing Chat Retention Policies</a> in the <i>Amazon Chime Administration Guide</i>.
    # </p>
    # @param [Hash, Types::GetRetentionSettingsRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Chime account ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "NonEmptyString", # required
    #   }
    #   options = {}
    #   response = client.get_retention_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     retention_settings: {
    #       room_retention_settings: {
    #         retention_days: 1
    #       },
    #       conversation_retention_settings: {
    #         retention_days: 1
    #       }
    #     },
    #     initiate_deletion_timestamp: Time.now
    #   }
    # @return [Types::GetRetentionSettingsResponse]
    def get_retention_settings(params = {}, options = {})
      request = build_request(:get_retention_settings, params)
      request.send_request(options)
    end

    # <p>Retrieves room details, such as the room name, for a room in an Amazon Chime Enterprise account.</p>
    # @param [Hash, Types::GetRoomRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Chime account ID.</p>
    # @option params [String] :room_id
    #   <p>The room ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "NonEmptyString", # required
    #     room_id: "NonEmptyString", # required
    #   }
    #   options = {}
    #   response = client.get_room(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     room: {
    #       room_id: "NonEmptyString",
    #       name: "SensitiveString",
    #       account_id: "NonEmptyString",
    #       created_by: "NonEmptyString",
    #       created_timestamp: Time.now,
    #       updated_timestamp: Time.now
    #     }
    #   }
    # @return [Types::GetRoomResponse]
    def get_room(params = {}, options = {})
      request = build_request(:get_room, params)
      request.send_request(options)
    end

    # <p>Retrieves details for the specified user ID, such as primary email address, license type,and personal meeting PIN.</p>
    #          <p>
    # To retrieve user details with an email address instead of a user ID, use the 
    # <a>ListUsers</a> action, and then filter by email address.
    # </p>
    # @param [Hash, Types::GetUserRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Chime account ID.</p>
    # @option params [String] :user_id
    #   <p>The user ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "NonEmptyString", # required
    #     user_id: "NonEmptyString", # required
    #   }
    #   options = {}
    #   response = client.get_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     user: {
    #       user_id: "String", # required
    #       account_id: "String",
    #       primary_email: "EmailAddress",
    #       primary_provisioned_number: "SensitiveString",
    #       display_name: "SensitiveString",
    #       license_type: "Basic" # One of: ["Basic", "Plus", "Pro", "ProTrial"],
    #       user_type: "PrivateUser" # One of: ["PrivateUser", "SharedDevice"],
    #       user_registration_status: "Unregistered" # One of: ["Unregistered", "Registered", "Suspended"],
    #       user_invitation_status: "Pending" # One of: ["Pending", "Accepted", "Failed"],
    #       registered_on: Time.now,
    #       invited_on: Time.now,
    #       alexa_for_business_metadata: {
    #         is_alexa_for_business_enabled: false,
    #         alexa_for_business_room_arn: "SensitiveString"
    #       },
    #       personal_pin: "String"
    #     }
    #   }
    # @return [Types::GetUserResponse]
    def get_user(params = {}, options = {})
      request = build_request(:get_user, params)
      request.send_request(options)
    end

    # <p>Retrieves settings for the specified user ID, such as any associated phone number settings.</p>
    # @param [Hash, Types::GetUserSettingsRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Chime account ID.</p>
    # @option params [String] :user_id
    #   <p>The user ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "String", # required
    #     user_id: "String", # required
    #   }
    #   options = {}
    #   response = client.get_user_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     user_settings: {
    #       telephony: { # required
    #         inbound_calling: false, # required
    #         outbound_calling: false, # required
    #         sms: false, # required
    #       }
    #     }
    #   }
    # @return [Types::GetUserSettingsResponse]
    def get_user_settings(params = {}, options = {})
      request = build_request(:get_user_settings, params)
      request.send_request(options)
    end

    # <p>Sends email to a maximum of 50 users, inviting them to the specified Amazon Chime
    #                 <code>Team</code> account. Only <code>Team</code> account types are currently
    #             supported for this action.</p>
    # @param [Hash, Types::InviteUsersRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Chime account ID.</p>
    # @option params [Array<String>] :user_email_list
    #   <p>The user email addresses to which to send the email invitation.</p>
    # @option params [String] :user_type
    #   <p>The user type.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "NonEmptyString", # required
    #     user_email_list: ["EmailAddress"], # required
    #     user_type: "PrivateUser" # One of: ["PrivateUser", "SharedDevice"]
    #   }
    #   options = {}
    #   response = client.invite_users(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     invites: [
    #       {
    #         invite_id: "String",
    #         status: "Pending" # One of: ["Pending", "Accepted", "Failed"],
    #         email_address: "EmailAddress",
    #         email_status: "NotSent" # One of: ["NotSent", "Sent", "Failed"]
    #       }
    #     ]
    #   }
    # @return [Types::InviteUsersResponse]
    def invite_users(params = {}, options = {})
      request = build_request(:invite_users, params)
      request.send_request(options)
    end

    # <p>Lists the Amazon Chime accounts under the administrator's AWS account. You can filter accounts
    #             by account name prefix. To find out which Amazon Chime account a user belongs to, you can
    #             filter by the user's email address, which returns one account result.</p>
    # @param [Hash, Types::ListAccountsRequest] params
    # @option params [String] :name
    #   <p>Amazon Chime account name prefix with which to filter results.</p>
    # @option params [String] :user_email
    #   <p>User email address with which to filter results.</p>
    # @option params [String] :next_token
    #   <p>The token to use to retrieve the next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call. Defaults to 100.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "AccountName",
    #     user_email: "EmailAddress",
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_accounts(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     accounts: [
    #       {
    #         aws_account_id: "String", # required
    #         account_id: "String", # required
    #         name: "String", # required
    #         account_type: "Team" # One of: ["Team", "EnterpriseDirectory", "EnterpriseLWA", "EnterpriseOIDC"],
    #         created_timestamp: Time.now,
    #         default_license: "Basic" # One of: ["Basic", "Plus", "Pro", "ProTrial"],
    #         supported_licenses: ["Basic" # One of: ["Basic", "Plus", "Pro", "ProTrial"]],
    #         account_status: "Suspended" # One of: ["Suspended", "Active"],
    #         signin_delegate_groups: [
    #           {
    #             group_name: "NonEmptyString"
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListAccountsResponse]
    def list_accounts(params = {}, options = {})
      request = build_request(:list_accounts, params)
      request.send_request(options)
    end

    # <p>Lists the bots associated with the administrator's Amazon Chime Enterprise account ID.</p>
    # @param [Hash, Types::ListBotsRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Chime account ID.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call. The default is 10.</p>
    # @option params [String] :next_token
    #   <p>The token to use to retrieve the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "NonEmptyString", # required
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_bots(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     bots: [
    #       {
    #         bot_id: "String",
    #         user_id: "String",
    #         display_name: "SensitiveString",
    #         bot_type: "ChatBot" # One of: ["ChatBot"],
    #         disabled: false,
    #         created_timestamp: Time.now,
    #         updated_timestamp: Time.now,
    #         bot_email: "SensitiveString",
    #         security_token: "SensitiveString"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListBotsResponse]
    def list_bots(params = {}, options = {})
      request = build_request(:list_bots, params)
      request.send_request(options)
    end

    # <p>Lists the phone number orders for the administrator's Amazon Chime account.</p>
    # @param [Hash, Types::ListPhoneNumberOrdersRequest] params
    # @option params [String] :next_token
    #   <p>The token to use to retrieve the next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_phone_number_orders(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     phone_number_orders: [
    #       {
    #         phone_number_order_id: "GuidString",
    #         product_type: "BusinessCalling" # One of: ["BusinessCalling", "VoiceConnector", "SipMediaApplicationDialIn"],
    #         status: "Processing" # One of: ["Processing", "Successful", "Failed", "Partial"],
    #         ordered_phone_numbers: [
    #           {
    #             e164_phone_number: "E164PhoneNumber",
    #             status: "Processing" # One of: ["Processing", "Acquired", "Failed"]
    #           }
    #         ],
    #         created_timestamp: Time.now,
    #         updated_timestamp: Time.now
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListPhoneNumberOrdersResponse]
    def list_phone_number_orders(params = {}, options = {})
      request = build_request(:list_phone_number_orders, params)
      request.send_request(options)
    end

    # <p>Lists the phone numbers for the specified Amazon Chime account, Amazon Chime user, Amazon Chime Voice Connector, or Amazon Chime Voice Connector group.</p>
    # @param [Hash, Types::ListPhoneNumbersRequest] params
    # @option params [String] :status
    #   <p>The phone number status.</p>
    # @option params [String] :product_type
    #   <p>The phone number product type.</p>
    # @option params [String] :filter_name
    #   <p>The filter to use to limit the number of results.</p>
    # @option params [String] :filter_value
    #   <p>The value to use for the filter.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call.</p>
    # @option params [String] :next_token
    #   <p>The token to use to retrieve the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     status: "AcquireInProgress" # One of: ["AcquireInProgress", "AcquireFailed", "Unassigned", "Assigned", "ReleaseInProgress", "DeleteInProgress", "ReleaseFailed", "DeleteFailed"],
    #     product_type: "BusinessCalling" # One of: ["BusinessCalling", "VoiceConnector", "SipMediaApplicationDialIn"],
    #     filter_name: "AccountId" # One of: ["AccountId", "UserId", "VoiceConnectorId", "VoiceConnectorGroupId", "SipRuleId"],
    #     filter_value: "String",
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_phone_numbers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     phone_numbers: [
    #       {
    #         phone_number_id: "String",
    #         e164_phone_number: "E164PhoneNumber",
    #         country: "Alpha2CountryCode",
    #         type: "Local" # One of: ["Local", "TollFree"],
    #         product_type: "BusinessCalling" # One of: ["BusinessCalling", "VoiceConnector", "SipMediaApplicationDialIn"],
    #         status: "AcquireInProgress" # One of: ["AcquireInProgress", "AcquireFailed", "Unassigned", "Assigned", "ReleaseInProgress", "DeleteInProgress", "ReleaseFailed", "DeleteFailed"],
    #         capabilities: {
    #           inbound_call: false,
    #           outbound_call: false,
    #           inbound_sms: false,
    #           outbound_sms: false,
    #           inbound_mms: false,
    #           outbound_mms: false
    #         },
    #         associations: [
    #           {
    #             value: "String",
    #             name: "AccountId" # One of: ["AccountId", "UserId", "VoiceConnectorId", "VoiceConnectorGroupId", "SipRuleId"],
    #             associated_timestamp: Time.now
    #           }
    #         ],
    #         calling_name: "CallingName",
    #         calling_name_status: "Unassigned" # One of: ["Unassigned", "UpdateInProgress", "UpdateSucceeded", "UpdateFailed"],
    #         created_timestamp: Time.now,
    #         updated_timestamp: Time.now,
    #         deletion_timestamp: Time.now
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListPhoneNumbersResponse]
    def list_phone_numbers(params = {}, options = {})
      request = build_request(:list_phone_numbers, params)
      request.send_request(options)
    end

    # <p>Lists the membership details for the specified room in an Amazon Chime Enterprise account,
    #             such as the members' IDs, email addresses, and names.</p>
    # @param [Hash, Types::ListRoomMembershipsRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Chime account ID.</p>
    # @option params [String] :room_id
    #   <p>The room ID.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call.</p>
    # @option params [String] :next_token
    #   <p>The token to use to retrieve the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "NonEmptyString", # required
    #     room_id: "NonEmptyString", # required
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_room_memberships(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     room_memberships: [
    #       {
    #         room_id: "NonEmptyString",
    #         member: {
    #           member_id: "NonEmptyString",
    #           member_type: "User" # One of: ["User", "Bot", "Webhook"],
    #           email: "SensitiveString",
    #           full_name: "SensitiveString",
    #           account_id: "NonEmptyString"
    #         },
    #         role: "Administrator" # One of: ["Administrator", "Member"],
    #         invited_by: "NonEmptyString",
    #         updated_timestamp: Time.now
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListRoomMembershipsResponse]
    def list_room_memberships(params = {}, options = {})
      request = build_request(:list_room_memberships, params)
      request.send_request(options)
    end

    # <p>Lists the room details for the specified Amazon Chime Enterprise account. Optionally, filter the results by a member ID (user ID or bot ID) to see a list of rooms that the member belongs to.</p>
    # @param [Hash, Types::ListRoomsRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Chime account ID.</p>
    # @option params [String] :member_id
    #   <p>The member ID (user ID or bot ID).</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call.</p>
    # @option params [String] :next_token
    #   <p>The token to use to retrieve the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "NonEmptyString", # required
    #     member_id: "String",
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_rooms(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rooms: [
    #       {
    #         room_id: "NonEmptyString",
    #         name: "SensitiveString",
    #         account_id: "NonEmptyString",
    #         created_by: "NonEmptyString",
    #         created_timestamp: Time.now,
    #         updated_timestamp: Time.now
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListRoomsResponse]
    def list_rooms(params = {}, options = {})
      request = build_request(:list_rooms, params)
      request.send_request(options)
    end

    # <p>Lists supported phone number countries.</p>
    # @param [Hash, Types::ListSupportedPhoneNumberCountriesRequest] params
    # @option params [String] :product_type
    #   <p>The phone number product type.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     product_type: "BusinessCalling" # One of: ["BusinessCalling", "VoiceConnector", "SipMediaApplicationDialIn"], # required
    #   }
    #   options = {}
    #   response = client.list_supported_phone_number_countries(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     phone_number_countries: [
    #       {
    #         country_code: "Alpha2CountryCode",
    #         supported_phone_number_types: ["Local" # One of: ["Local", "TollFree"]]
    #       }
    #     ]
    #   }
    # @return [Types::ListSupportedPhoneNumberCountriesResponse]
    def list_supported_phone_number_countries(params = {}, options = {})
      request = build_request(:list_supported_phone_number_countries, params)
      request.send_request(options)
    end

    # <p>Lists the users that belong to the specified Amazon Chime account. You can specify an email
    #             address to list only the user that the email address belongs to.</p>
    # @param [Hash, Types::ListUsersRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Chime account ID.</p>
    # @option params [String] :user_email
    #   <p>Optional. The user email address used to filter results. Maximum 1.</p>
    # @option params [String] :user_type
    #   <p>The user type.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call. Defaults to 100.</p>
    # @option params [String] :next_token
    #   <p>The token to use to retrieve the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "NonEmptyString", # required
    #     user_email: "EmailAddress",
    #     user_type: "PrivateUser" # One of: ["PrivateUser", "SharedDevice"],
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_users(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     users: [
    #       {
    #         user_id: "String", # required
    #         account_id: "String",
    #         primary_email: "EmailAddress",
    #         primary_provisioned_number: "SensitiveString",
    #         display_name: "SensitiveString",
    #         license_type: "Basic" # One of: ["Basic", "Plus", "Pro", "ProTrial"],
    #         user_type: "PrivateUser" # One of: ["PrivateUser", "SharedDevice"],
    #         user_registration_status: "Unregistered" # One of: ["Unregistered", "Registered", "Suspended"],
    #         user_invitation_status: "Pending" # One of: ["Pending", "Accepted", "Failed"],
    #         registered_on: Time.now,
    #         invited_on: Time.now,
    #         alexa_for_business_metadata: {
    #           is_alexa_for_business_enabled: false,
    #           alexa_for_business_room_arn: "SensitiveString"
    #         },
    #         personal_pin: "String"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListUsersResponse]
    def list_users(params = {}, options = {})
      request = build_request(:list_users, params)
      request.send_request(options)
    end

    # <p>Logs out the specified user from all of the devices they are currently logged into.</p>
    # @param [Hash, Types::LogoutUserRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Chime account ID.</p>
    # @option params [String] :user_id
    #   <p>The user ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "NonEmptyString", # required
    #     user_id: "NonEmptyString", # required
    #   }
    #   options = {}
    #   response = client.logout_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::LogoutUserResponse]
    def logout_user(params = {}, options = {})
      request = build_request(:logout_user, params)
      request.send_request(options)
    end

    # <p>Creates an events configuration that allows a bot to receive outgoing events sent by Amazon
    #             Chime. Choose either an HTTPS endpoint or a Lambda function ARN. For more information,
    #             see <a>Bot</a>.</p>
    # @param [Hash, Types::PutEventsConfigurationRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Chime account ID.</p>
    # @option params [String] :bot_id
    #   <p>The bot ID.</p>
    # @option params [String] :outbound_events_https_endpoint
    #   <p>HTTPS endpoint that allows the bot to receive outgoing events.</p>
    # @option params [String] :lambda_function_arn
    #   <p>Lambda function ARN that allows the bot to receive outgoing events.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "NonEmptyString", # required
    #     bot_id: "NonEmptyString", # required
    #     outbound_events_https_endpoint: "SensitiveString",
    #     lambda_function_arn: "SensitiveString"
    #   }
    #   options = {}
    #   response = client.put_events_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     events_configuration: {
    #       bot_id: "String",
    #       outbound_events_https_endpoint: "SensitiveString",
    #       lambda_function_arn: "SensitiveString"
    #     }
    #   }
    # @return [Types::PutEventsConfigurationResponse]
    def put_events_configuration(params = {}, options = {})
      request = build_request(:put_events_configuration, params)
      request.send_request(options)
    end

    # <p>
    # Puts retention settings for the specified Amazon Chime Enterprise account. We recommend using AWS CloudTrail to monitor usage of this API for your account. For more information, see 
    # <a href="https://docs.aws.amazon.com/chime/latest/ag/cloudtrail.html">Logging Amazon Chime API Calls with AWS CloudTrail</a>
    # in the <i>Amazon Chime Administration Guide</i>.</p>
    #          <p>
    # To turn off existing retention settings, remove the number of days from the corresponding 
    # <b>RetentionDays</b>
    # field in the 
    # <b>RetentionSettings</b>
    # object. For more information about retention settings, see 
    # <a href="https://docs.aws.amazon.com/chime/latest/ag/chat-retention.html">Managing Chat Retention Policies</a>
    # in the <i>Amazon Chime Administration Guide</i>.</p>
    # @param [Hash, Types::PutRetentionSettingsRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Chime account ID.</p>
    # @option params [Types::RetentionSettings] :retention_settings
    #   <p>The retention settings.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "NonEmptyString", # required
    #     retention_settings: { # required
    #       room_retention_settings: {
    #         retention_days: 1
    #       },
    #       conversation_retention_settings: {
    #         retention_days: 1
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.put_retention_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     retention_settings: {
    #       room_retention_settings: {
    #         retention_days: 1
    #       },
    #       conversation_retention_settings: {
    #         retention_days: 1
    #       }
    #     },
    #     initiate_deletion_timestamp: Time.now
    #   }
    # @return [Types::PutRetentionSettingsResponse]
    def put_retention_settings(params = {}, options = {})
      request = build_request(:put_retention_settings, params)
      request.send_request(options)
    end

    # <p>Redacts the specified message from the specified Amazon Chime conversation.</p>
    # @param [Hash, Types::RedactConversationMessageRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Chime account ID.</p>
    # @option params [String] :conversation_id
    #   <p>The conversation ID.</p>
    # @option params [String] :message_id
    #   <p>The message ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "NonEmptyString", # required
    #     conversation_id: "NonEmptyString", # required
    #     message_id: "NonEmptyString", # required
    #   }
    #   options = {}
    #   response = client.redact_conversation_message(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::RedactConversationMessageResponse]
    def redact_conversation_message(params = {}, options = {})
      request = build_request(:redact_conversation_message, params)
      request.send_request(options)
    end

    # <p>Redacts the specified message from the specified Amazon Chime channel.</p>
    # @param [Hash, Types::RedactRoomMessageRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Chime account ID.</p>
    # @option params [String] :room_id
    #   <p>The room ID.</p>
    # @option params [String] :message_id
    #   <p>The message ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "NonEmptyString", # required
    #     room_id: "NonEmptyString", # required
    #     message_id: "NonEmptyString", # required
    #   }
    #   options = {}
    #   response = client.redact_room_message(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::RedactRoomMessageResponse]
    def redact_room_message(params = {}, options = {})
      request = build_request(:redact_room_message, params)
      request.send_request(options)
    end

    # <p>Regenerates the security token for a bot.</p>
    # @param [Hash, Types::RegenerateSecurityTokenRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Chime account ID.</p>
    # @option params [String] :bot_id
    #   <p>The bot ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "NonEmptyString", # required
    #     bot_id: "NonEmptyString", # required
    #   }
    #   options = {}
    #   response = client.regenerate_security_token(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     bot: {
    #       bot_id: "String",
    #       user_id: "String",
    #       display_name: "SensitiveString",
    #       bot_type: "ChatBot" # One of: ["ChatBot"],
    #       disabled: false,
    #       created_timestamp: Time.now,
    #       updated_timestamp: Time.now,
    #       bot_email: "SensitiveString",
    #       security_token: "SensitiveString"
    #     }
    #   }
    # @return [Types::RegenerateSecurityTokenResponse]
    def regenerate_security_token(params = {}, options = {})
      request = build_request(:regenerate_security_token, params)
      request.send_request(options)
    end

    # <p>Resets the personal meeting PIN for the specified user on an Amazon Chime account. Returns
    #             the <a>User</a> object with the updated personal meeting PIN.</p>
    # @param [Hash, Types::ResetPersonalPINRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Chime account ID.</p>
    # @option params [String] :user_id
    #   <p>The user ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "NonEmptyString", # required
    #     user_id: "NonEmptyString", # required
    #   }
    #   options = {}
    #   response = client.reset_personal_pin(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     user: {
    #       user_id: "String", # required
    #       account_id: "String",
    #       primary_email: "EmailAddress",
    #       primary_provisioned_number: "SensitiveString",
    #       display_name: "SensitiveString",
    #       license_type: "Basic" # One of: ["Basic", "Plus", "Pro", "ProTrial"],
    #       user_type: "PrivateUser" # One of: ["PrivateUser", "SharedDevice"],
    #       user_registration_status: "Unregistered" # One of: ["Unregistered", "Registered", "Suspended"],
    #       user_invitation_status: "Pending" # One of: ["Pending", "Accepted", "Failed"],
    #       registered_on: Time.now,
    #       invited_on: Time.now,
    #       alexa_for_business_metadata: {
    #         is_alexa_for_business_enabled: false,
    #         alexa_for_business_room_arn: "SensitiveString"
    #       },
    #       personal_pin: "String"
    #     }
    #   }
    # @return [Types::ResetPersonalPINResponse]
    def reset_personal_pin(params = {}, options = {})
      request = build_request(:reset_personal_pin, params)
      request.send_request(options)
    end

    # <p>Moves a phone number from the <b>Deletion queue</b> back into the
    #             phone number <b>Inventory</b>.</p>
    # @param [Hash, Types::RestorePhoneNumberRequest] params
    # @option params [String] :phone_number_id
    #   <p>The phone number.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     phone_number_id: "NonEmptyString", # required
    #   }
    #   options = {}
    #   response = client.restore_phone_number(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     phone_number: {
    #       phone_number_id: "String",
    #       e164_phone_number: "E164PhoneNumber",
    #       country: "Alpha2CountryCode",
    #       type: "Local" # One of: ["Local", "TollFree"],
    #       product_type: "BusinessCalling" # One of: ["BusinessCalling", "VoiceConnector", "SipMediaApplicationDialIn"],
    #       status: "AcquireInProgress" # One of: ["AcquireInProgress", "AcquireFailed", "Unassigned", "Assigned", "ReleaseInProgress", "DeleteInProgress", "ReleaseFailed", "DeleteFailed"],
    #       capabilities: {
    #         inbound_call: false,
    #         outbound_call: false,
    #         inbound_sms: false,
    #         outbound_sms: false,
    #         inbound_mms: false,
    #         outbound_mms: false
    #       },
    #       associations: [
    #         {
    #           value: "String",
    #           name: "AccountId" # One of: ["AccountId", "UserId", "VoiceConnectorId", "VoiceConnectorGroupId", "SipRuleId"],
    #           associated_timestamp: Time.now
    #         }
    #       ],
    #       calling_name: "CallingName",
    #       calling_name_status: "Unassigned" # One of: ["Unassigned", "UpdateInProgress", "UpdateSucceeded", "UpdateFailed"],
    #       created_timestamp: Time.now,
    #       updated_timestamp: Time.now,
    #       deletion_timestamp: Time.now
    #     }
    #   }
    # @return [Types::RestorePhoneNumberResponse]
    def restore_phone_number(params = {}, options = {})
      request = build_request(:restore_phone_number, params)
      request.send_request(options)
    end

    # <p>Searches for phone numbers that can be ordered. For US numbers, provide at least one of
    #             the following search filters: <code>AreaCode</code>, <code>City</code>,
    #                 <code>State</code>, or <code>TollFreePrefix</code>. If you provide
    #             <code>City</code>, you must also provide <code>State</code>. Numbers outside the US only
    #             support the <code>PhoneNumberType</code> filter, which you must use.</p>
    # @param [Hash, Types::SearchAvailablePhoneNumbersRequest] params
    # @option params [String] :area_code
    #   <p>The area code used to filter results. Only applies to the US.</p>
    # @option params [String] :city
    #   <p>The city used to filter results. Only applies to the US.</p>
    # @option params [String] :country
    #   <p>The country used to filter results. Defaults to the US Format: ISO 3166-1 alpha-2.</p>
    # @option params [String] :state
    #   <p>The state used to filter results. Required only if you provide <code>City</code>. Only applies to the US.</p>
    # @option params [String] :toll_free_prefix
    #   <p>The toll-free prefix that you use to filter results. Only applies to the US.</p>
    # @option params [String] :phone_number_type
    #   <p>The phone number type used to filter results. Required for non-US numbers.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call.</p>
    # @option params [String] :next_token
    #   <p>The token used to retrieve the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     area_code: "String",
    #     city: "String",
    #     country: "Alpha2CountryCode",
    #     state: "String",
    #     toll_free_prefix: "TollFreePrefix",
    #     phone_number_type: "Local" # One of: ["Local", "TollFree"],
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.search_available_phone_numbers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     e164_phone_numbers: ["E164PhoneNumber"],
    #     next_token: "String"
    #   }
    # @return [Types::SearchAvailablePhoneNumbersResponse]
    def search_available_phone_numbers(params = {}, options = {})
      request = build_request(:search_available_phone_numbers, params)
      request.send_request(options)
    end

    # <p>Updates account details for the specified Amazon Chime account. Currently, only account name and default license updates are supported for this action.</p>
    # @param [Hash, Types::UpdateAccountRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Chime account ID.</p>
    # @option params [String] :name
    #   <p>The new name for the specified Amazon Chime account.</p>
    # @option params [String] :default_license
    #   <p>The default license applied when you add users to an Amazon Chime account.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "NonEmptyString", # required
    #     name: "AccountName",
    #     default_license: "Basic" # One of: ["Basic", "Plus", "Pro", "ProTrial"]
    #   }
    #   options = {}
    #   response = client.update_account(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     account: {
    #       aws_account_id: "String", # required
    #       account_id: "String", # required
    #       name: "String", # required
    #       account_type: "Team" # One of: ["Team", "EnterpriseDirectory", "EnterpriseLWA", "EnterpriseOIDC"],
    #       created_timestamp: Time.now,
    #       default_license: "Basic" # One of: ["Basic", "Plus", "Pro", "ProTrial"],
    #       supported_licenses: ["Basic" # One of: ["Basic", "Plus", "Pro", "ProTrial"]],
    #       account_status: "Suspended" # One of: ["Suspended", "Active"],
    #       signin_delegate_groups: [
    #         {
    #           group_name: "NonEmptyString"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::UpdateAccountResponse]
    def update_account(params = {}, options = {})
      request = build_request(:update_account, params)
      request.send_request(options)
    end

    # <p>Updates the settings for the specified Amazon Chime account. You can update settings for
    #             remote control of shared screens, or for the dial-out option. For more information about
    #             these settings, see <a href="https://docs.aws.amazon.com/chime/latest/ag/policies.html">Use
    #                 the Policies Page</a> in the <i>Amazon Chime Administration
    #                 Guide</i>.</p>
    # @param [Hash, Types::UpdateAccountSettingsRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Chime account ID.</p>
    # @option params [Types::AccountSettings] :account_settings
    #   <p>The Amazon Chime account settings to update.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "NonEmptyString", # required
    #     account_settings: { # required
    #       disable_remote_control: false,
    #       enable_dial_out: false
    #     }
    #   }
    #   options = {}
    #   response = client.update_account_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateAccountSettingsResponse]
    def update_account_settings(params = {}, options = {})
      request = build_request(:update_account_settings, params)
      request.send_request(options)
    end

    # <p>Updates the status of the specified bot, such as starting or stopping the bot from running in your Amazon Chime Enterprise account.</p>
    # @param [Hash, Types::UpdateBotRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Chime account ID.</p>
    # @option params [String] :bot_id
    #   <p>The bot ID.</p>
    # @option params [Boolean] :disabled
    #   <p>When true, stops the specified bot from running in your account.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "NonEmptyString", # required
    #     bot_id: "NonEmptyString", # required
    #     disabled: false
    #   }
    #   options = {}
    #   response = client.update_bot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     bot: {
    #       bot_id: "String",
    #       user_id: "String",
    #       display_name: "SensitiveString",
    #       bot_type: "ChatBot" # One of: ["ChatBot"],
    #       disabled: false,
    #       created_timestamp: Time.now,
    #       updated_timestamp: Time.now,
    #       bot_email: "SensitiveString",
    #       security_token: "SensitiveString"
    #     }
    #   }
    # @return [Types::UpdateBotResponse]
    def update_bot(params = {}, options = {})
      request = build_request(:update_bot, params)
      request.send_request(options)
    end

    # <p>Updates global settings for the administrator's AWS account, such as Amazon Chime Business Calling and Amazon Chime Voice Connector settings.</p>
    # @param [Hash, Types::UpdateGlobalSettingsRequest] params
    # @option params [Types::BusinessCallingSettings] :business_calling
    #   <p>The Amazon Chime Business Calling settings.</p>
    # @option params [Types::VoiceConnectorSettings] :voice_connector
    #   <p>The Amazon Chime Voice Connector settings.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     business_calling: {
    #       cdr_bucket: "String"
    #     },
    #     voice_connector: {
    #       cdr_bucket: "String"
    #     }
    #   }
    #   options = {}
    #   response = client.update_global_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_global_settings(params = {}, options = {})
      request = build_request(:update_global_settings, params)
      request.send_request(options)
    end

    # <p>Updates phone number details, such as product type or calling name, for the specified phone number ID. You can update one phone number detail at a time. For example, you can update either the product type or the calling name in one action.</p>
    #          <p>For toll-free numbers, you cannot use the Amazon Chime Business Calling product type. For numbers outside the U.S., you must use the Amazon Chime SIP Media Application Dial-In product type.</p>
    #          <p>Updates to outbound calling names can take 72 hours to complete. Pending updates to outbound calling names must be complete before you can request another update.</p>
    # @param [Hash, Types::UpdatePhoneNumberRequest] params
    # @option params [String] :phone_number_id
    #   <p>The phone number ID.</p>
    # @option params [String] :product_type
    #   <p>The product type.</p>
    # @option params [String] :calling_name
    #   <p>The outbound calling name associated with the phone number.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     phone_number_id: "String", # required
    #     product_type: "BusinessCalling" # One of: ["BusinessCalling", "VoiceConnector", "SipMediaApplicationDialIn"],
    #     calling_name: "CallingName"
    #   }
    #   options = {}
    #   response = client.update_phone_number(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     phone_number: {
    #       phone_number_id: "String",
    #       e164_phone_number: "E164PhoneNumber",
    #       country: "Alpha2CountryCode",
    #       type: "Local" # One of: ["Local", "TollFree"],
    #       product_type: "BusinessCalling" # One of: ["BusinessCalling", "VoiceConnector", "SipMediaApplicationDialIn"],
    #       status: "AcquireInProgress" # One of: ["AcquireInProgress", "AcquireFailed", "Unassigned", "Assigned", "ReleaseInProgress", "DeleteInProgress", "ReleaseFailed", "DeleteFailed"],
    #       capabilities: {
    #         inbound_call: false,
    #         outbound_call: false,
    #         inbound_sms: false,
    #         outbound_sms: false,
    #         inbound_mms: false,
    #         outbound_mms: false
    #       },
    #       associations: [
    #         {
    #           value: "String",
    #           name: "AccountId" # One of: ["AccountId", "UserId", "VoiceConnectorId", "VoiceConnectorGroupId", "SipRuleId"],
    #           associated_timestamp: Time.now
    #         }
    #       ],
    #       calling_name: "CallingName",
    #       calling_name_status: "Unassigned" # One of: ["Unassigned", "UpdateInProgress", "UpdateSucceeded", "UpdateFailed"],
    #       created_timestamp: Time.now,
    #       updated_timestamp: Time.now,
    #       deletion_timestamp: Time.now
    #     }
    #   }
    # @return [Types::UpdatePhoneNumberResponse]
    def update_phone_number(params = {}, options = {})
      request = build_request(:update_phone_number, params)
      request.send_request(options)
    end

    # <p>Updates the phone number settings for the administrator's AWS account, such as the default
    #             outbound calling name. You can update the default outbound calling name once every seven
    #             days. Outbound calling names can take up to 72 hours to update.</p>
    # @param [Hash, Types::UpdatePhoneNumberSettingsRequest] params
    # @option params [String] :calling_name
    #   <p>The default outbound calling name for the account.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     calling_name: "CallingName", # required
    #   }
    #   options = {}
    #   response = client.update_phone_number_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_phone_number_settings(params = {}, options = {})
      request = build_request(:update_phone_number_settings, params)
      request.send_request(options)
    end

    # <p>Updates room details, such as the room name, for a room in an Amazon Chime Enterprise account.</p>
    # @param [Hash, Types::UpdateRoomRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Chime account ID.</p>
    # @option params [String] :room_id
    #   <p>The room ID.</p>
    # @option params [String] :name
    #   <p>The room name.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "NonEmptyString", # required
    #     room_id: "NonEmptyString", # required
    #     name: "SensitiveString"
    #   }
    #   options = {}
    #   response = client.update_room(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     room: {
    #       room_id: "NonEmptyString",
    #       name: "SensitiveString",
    #       account_id: "NonEmptyString",
    #       created_by: "NonEmptyString",
    #       created_timestamp: Time.now,
    #       updated_timestamp: Time.now
    #     }
    #   }
    # @return [Types::UpdateRoomResponse]
    def update_room(params = {}, options = {})
      request = build_request(:update_room, params)
      request.send_request(options)
    end

    # <p>Updates room membership details, such as the member role, for a room in an Amazon Chime
    #             Enterprise account. The member role designates whether the member is a chat room
    #             administrator or a general chat room member. The member role can be updated only for
    #             user IDs.</p>
    # @param [Hash, Types::UpdateRoomMembershipRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Chime account ID.</p>
    # @option params [String] :room_id
    #   <p>The room ID.</p>
    # @option params [String] :member_id
    #   <p>The member ID.</p>
    # @option params [String] :role
    #   <p>The role of the member.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "NonEmptyString", # required
    #     room_id: "NonEmptyString", # required
    #     member_id: "NonEmptyString", # required
    #     role: "Administrator" # One of: ["Administrator", "Member"]
    #   }
    #   options = {}
    #   response = client.update_room_membership(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     room_membership: {
    #       room_id: "NonEmptyString",
    #       member: {
    #         member_id: "NonEmptyString",
    #         member_type: "User" # One of: ["User", "Bot", "Webhook"],
    #         email: "SensitiveString",
    #         full_name: "SensitiveString",
    #         account_id: "NonEmptyString"
    #       },
    #       role: "Administrator" # One of: ["Administrator", "Member"],
    #       invited_by: "NonEmptyString",
    #       updated_timestamp: Time.now
    #     }
    #   }
    # @return [Types::UpdateRoomMembershipResponse]
    def update_room_membership(params = {}, options = {})
      request = build_request(:update_room_membership, params)
      request.send_request(options)
    end

    # <p>Updates user details for a specified user ID. Currently, only <code>LicenseType</code> updates are supported for this action.</p>
    # @param [Hash, Types::UpdateUserRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Chime account ID.</p>
    # @option params [String] :user_id
    #   <p>The user ID.</p>
    # @option params [String] :license_type
    #   <p>The user license type to update. This must be a supported license type for the Amazon Chime
    #               account that the user belongs to.</p>
    # @option params [String] :user_type
    #   <p>The user type.</p>
    # @option params [Types::AlexaForBusinessMetadata] :alexa_for_business_metadata
    #   <p>The Alexa for Business metadata.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "NonEmptyString", # required
    #     user_id: "NonEmptyString", # required
    #     license_type: "Basic" # One of: ["Basic", "Plus", "Pro", "ProTrial"],
    #     user_type: "PrivateUser" # One of: ["PrivateUser", "SharedDevice"],
    #     alexa_for_business_metadata: {
    #       is_alexa_for_business_enabled: false,
    #       alexa_for_business_room_arn: "SensitiveString"
    #     }
    #   }
    #   options = {}
    #   response = client.update_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     user: {
    #       user_id: "String", # required
    #       account_id: "String",
    #       primary_email: "EmailAddress",
    #       primary_provisioned_number: "SensitiveString",
    #       display_name: "SensitiveString",
    #       license_type: "Basic" # One of: ["Basic", "Plus", "Pro", "ProTrial"],
    #       user_type: "PrivateUser" # One of: ["PrivateUser", "SharedDevice"],
    #       user_registration_status: "Unregistered" # One of: ["Unregistered", "Registered", "Suspended"],
    #       user_invitation_status: "Pending" # One of: ["Pending", "Accepted", "Failed"],
    #       registered_on: Time.now,
    #       invited_on: Time.now,
    #       alexa_for_business_metadata: {
    #         is_alexa_for_business_enabled: false,
    #         alexa_for_business_room_arn: "SensitiveString"
    #       },
    #       personal_pin: "String"
    #     }
    #   }
    # @return [Types::UpdateUserResponse]
    def update_user(params = {}, options = {})
      request = build_request(:update_user, params)
      request.send_request(options)
    end

    # <p>Updates the settings for the specified user, such as phone number settings.</p>
    # @param [Hash, Types::UpdateUserSettingsRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Chime account ID.</p>
    # @option params [String] :user_id
    #   <p>The user ID.</p>
    # @option params [Types::UserSettings] :user_settings
    #   <p>The user settings to update.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "String", # required
    #     user_id: "String", # required
    #     user_settings: { # required
    #       telephony: { # required
    #         inbound_calling: false, # required
    #         outbound_calling: false, # required
    #         sms: false, # required
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_user_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
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
      context[:gem_name] = 'aws-sdk-chime'
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
